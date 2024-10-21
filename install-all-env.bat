oc  new-project oc-testenv
oc  new-project oc-uc1
oc  new-project oc-uc2
oc  new-project oc-uc3
oc  new-project oc-uc4
oc  new-project oc-uc5
oc  new-project oc-uc6
oc  new-project oc-uc7
oc  new-project oc-uc8
oc  new-project route-testenv

@REM helm repo add istio https://istio-release.storage.googleapis.com/charts
@REM helm repo update
@REM oc  new-project istio-system
@REM helm install istio-base istio/base -n istio-system --set defaultRevision=default
@REM helm install istiod istio/istiod -n istio-system --set profile=openshift --wait 
oc label namespace oc-testenv istio-injection=enabled
oc label namespace oc-uc1 istio-injection=enabled
oc label namespace oc-uc2 istio-injection=enabled
oc label namespace oc-uc3 istio-injection=enabled
oc label namespace oc-uc4 istio-injection=enabled
oc label namespace oc-uc5 istio-injection=enabled
oc label namespace oc-uc6 istio-injection=enabled
oc label namespace oc-uc7 istio-injection=enabled
oc label namespace oc-uc8 istio-injection=enabled

oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-testenv
oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-uc1
oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-uc2
oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-uc3
oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-uc4
oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-uc5
oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-uc6
oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-uc7
oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-uc8
oc adm policy add-scc-to-user privileged -z my-privileged-sa -n oc-uc8
@REM oc adm policy add-scc-to-user privileged -z istio-ingress -n istio-ingress