@interface HFTemperatureUnitCoordinator
+ (id)sharedCoordinator;
- (HFTemperatureUnitCoordinator)init;
- (void)_updateIsCelsiusNotifyingObservers:(BOOL)observers;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
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
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(HFTemperatureUnitCoordinator *)v2 setObservers:weakObjectsHashTable];

    [(HFTemperatureUnitCoordinator *)v2 _updateIsCelsiusNotifyingObservers:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__temperatureUnitDidChange name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFTemperatureUnitCoordinator *)self observers];
  [observers addObject:observerCopy];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HFTemperatureUnitCoordinator *)self observers];
  [observers removeObject:observerCopy];
}

- (void)_updateIsCelsiusNotifyingObservers:(BOOL)observers
{
  observersCopy = observers;
  v20 = *MEMORY[0x277D85DE8];
  isCelsius = self->_isCelsius;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [currentLocale objectForKey:*MEMORY[0x277CBE700]];
  self->_isCelsius = [v7 isEqualToString:*MEMORY[0x277CBE708]];

  if (observersCopy && isCelsius != self->_isCelsius)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    observers = [(HFTemperatureUnitCoordinator *)self observers];
    allObjects = [observers allObjects];

    v10 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v15 + 1) + 8 * v13++) temperatureUnitObserver:self didChangeTemperatureUnit:self->_isCelsius];
        }

        while (v11 != v13);
        v11 = [allObjects countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end