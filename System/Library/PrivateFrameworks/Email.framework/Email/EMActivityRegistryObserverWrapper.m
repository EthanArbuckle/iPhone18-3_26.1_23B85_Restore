@interface EMActivityRegistryObserverWrapper
@end

@implementation EMActivityRegistryObserverWrapper

void __64___EMActivityRegistryObserverWrapper__startObservingIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && v5)
  {
    [*(a1 + 32) addCancelable:v6];
    if (([*(a1 + 32) isCanceled] & 1) == 0)
    {
      [*(a1 + 40) setActivities:v5];
    }
  }

  else
  {
    [*(a1 + 40) _resetWithCancelable:*(a1 + 32)];
  }
}

void __75___EMActivityRegistryObserverWrapper_initWithConnection_registry_observer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetWithCancelable:0];
}

void __75___EMActivityRegistryObserverWrapper_initWithConnection_registry_observer___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _recover];
}

@end