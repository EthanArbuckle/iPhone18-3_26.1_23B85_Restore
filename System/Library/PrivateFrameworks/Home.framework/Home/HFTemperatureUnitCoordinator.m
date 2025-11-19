@interface HFTemperatureUnitCoordinator
+ (id)sharedCoordinator;
- (HFTemperatureUnitCoordinator)init;
- (void)_updateIsCelsiusNotifyingObservers:(BOOL)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation HFTemperatureUnitCoordinator

+ (id)sharedCoordinator
{
  if (qword_280E03318 != -1)
  {
    dispatch_once(&qword_280E03318, &__block_literal_global_137);
  }

  v3 = _MergedGlobals_275;

  return v3;
}

void __49__HFTemperatureUnitCoordinator_sharedCoordinator__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_275;
  _MergedGlobals_275 = v0;
}

- (HFTemperatureUnitCoordinator)init
{
  v6.receiver = self;
  v6.super_class = HFTemperatureUnitCoordinator;
  v2 = [(HFTemperatureUnitCoordinator *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFTemperatureUnitCoordinator *)v2 setObservers:v3];

    [(HFTemperatureUnitCoordinator *)v2 _updateIsCelsiusNotifyingObservers:0];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel__temperatureUnitDidChange name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFTemperatureUnitCoordinator *)self observers];
  [v5 addObject:v4];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFTemperatureUnitCoordinator *)self observers];
  [v5 removeObject:v4];
}

- (void)_updateIsCelsiusNotifyingObservers:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  isCelsius = self->_isCelsius;
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v6 objectForKey:*MEMORY[0x277CBE700]];
  self->_isCelsius = [v7 isEqualToString:*MEMORY[0x277CBE708]];

  if (v3 && isCelsius != self->_isCelsius)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(HFTemperatureUnitCoordinator *)self observers];
    v9 = [v8 allObjects];

    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) temperatureUnitObserver:self didChangeTemperatureUnit:self->_isCelsius];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end