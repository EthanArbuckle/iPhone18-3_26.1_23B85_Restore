@interface WDSourceOrderController
- (WDSourceOrderController)init;
- (WDSourceOrderController)initWithHealthStore:(id)a3;
- (void)_notifyObserversForDataType:(id)a3 withProviders:(id)a4;
- (void)getOrderedSourcesForDataType:(id)a3 withCompletion:(id)a4;
- (void)setOrderedSources:(id)a3 dataType:(id)a4;
@end

@implementation WDSourceOrderController

- (WDSourceOrderController)initWithHealthStore:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WDSourceOrderController;
  v5 = [(WDSourceOrderController *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCDA20]) initWithHealthStore:v4];
    sourceStore = v5->_sourceStore;
    v5->_sourceStore = v6;

    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v8;
  }

  return v5;
}

- (WDSourceOrderController)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (void)getOrderedSourcesForDataType:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    sourceStore = self->_sourceStore;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__WDSourceOrderController_getOrderedSourcesForDataType_withCompletion___block_invoke;
    v10[3] = &unk_2796E7C98;
    v12 = v7;
    v11 = v6;
    [(HKSourceStore *)sourceStore fetchOrderedSourcesForObjectType:v11 completion:v10];
  }
}

- (void)setOrderedSources:(id)a3 dataType:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  sourceStore = self->_sourceStore;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__WDSourceOrderController_setOrderedSources_dataType___block_invoke;
  v11[3] = &unk_2796E7CC0;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [(HKSourceStore *)sourceStore updateOrderedSources:v10 forObjectType:v9 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __54__WDSourceOrderController_setOrderedSources_dataType___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __54__WDSourceOrderController_setOrderedSources_dataType___block_invoke_cold_1(v5, v6);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__WDSourceOrderController_setOrderedSources_dataType___block_invoke_298;
    block[3] = &unk_2796E6C00;
    block[4] = WeakRetained;
    v10 = a1[4];
    v11 = a1[5];
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_notifyObserversForDataType:(id)a3 withProviders:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) sourceOrderUpdatedWithOrder:v7 dataType:v6];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __54__WDSourceOrderController_setOrderedSources_dataType___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_251E85000, a2, OS_LOG_TYPE_ERROR, "Error saving source order: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end