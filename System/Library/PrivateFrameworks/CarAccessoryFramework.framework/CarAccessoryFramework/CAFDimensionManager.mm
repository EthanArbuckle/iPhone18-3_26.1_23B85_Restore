@interface CAFDimensionManager
- (CAFCar)car;
- (CAFDimensionManager)initWithCar:(id)car;
- (CAFUnitEnergyEfficiency)vehicleEnergyEfficiencyUnit;
- (NSUnitFuelEfficiency)vehicleFuelEfficiencyUnit;
- (NSUnitLength)vehicleRangeUnit;
- (NSUnitPressure)tirePressureUnit;
- (NSUnitSpeed)vehicleSpeedUnit;
- (NSUnitTemperature)unitTemperature;
- (unint64_t)measurementSystem;
- (void)currentLocaleChanged;
- (void)invalidate;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFDimensionManager

- (CAFDimensionManager)initWithCar:(id)car
{
  carCopy = car;
  v18.receiver = self;
  v18.super_class = CAFDimensionManager;
  v5 = [(CAFDimensionManager *)&v18 init];
  if (v5)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    locale = v5->_locale;
    v5->_locale = currentLocale;

    v8 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_2846AD4B0];
    observers = v5->_observers;
    v5->_observers = v8;

    objc_storeWeak(&v5->_car, carCopy);
    objc_initWeak(&location, v5);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v12 = *MEMORY[0x277CBE620];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__CAFDimensionManager_initWithCar___block_invoke;
    v15[3] = &unk_27890D570;
    objc_copyWeak(&v16, &location);
    v13 = [defaultCenter addObserverForName:v12 object:0 queue:mainQueue usingBlock:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __35__CAFDimensionManager_initWithCar___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained currentLocaleChanged];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFDimensionManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CAFDimensionManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (unint64_t)measurementSystem
{
  locale = [(CAFDimensionManager *)self locale];
  v3 = [locale objectForKey:*MEMORY[0x277CBE6D0]];

  if ([v3 isEqualToString:*MEMORY[0x277CBE6D8]])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CBE6E0]])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (NSUnitTemperature)unitTemperature
{
  locale = [(CAFDimensionManager *)self locale];
  v3 = [locale objectForKey:*MEMORY[0x277CBE700]];
  v4 = [v3 isEqualToString:*MEMORY[0x277CBE708]];

  if (v4)
  {
    [MEMORY[0x277CCAE48] celsius];
  }

  else
  {
    [MEMORY[0x277CCAE48] fahrenheit];
  }
  v5 = ;

  return v5;
}

- (NSUnitPressure)tirePressureUnit
{
  measurementSystem = [(CAFDimensionManager *)self measurementSystem];
  if (measurementSystem == 2)
  {
    kilopascals = [MEMORY[0x277CCAE38] kilopascals];
  }

  else
  {
    if (measurementSystem)
    {
      [MEMORY[0x277CCAE38] poundsForcePerSquareInch];
    }

    else
    {
      [MEMORY[0x277CCAE38] bars];
    }
    kilopascals = ;
  }

  return kilopascals;
}

- (NSUnitSpeed)vehicleSpeedUnit
{
  if ([(CAFDimensionManager *)self measurementSystem])
  {
    [MEMORY[0x277CCAE40] milesPerHour];
  }

  else
  {
    [MEMORY[0x277CCAE40] kilometersPerHour];
  }
  v2 = ;

  return v2;
}

- (NSUnitLength)vehicleRangeUnit
{
  if ([(CAFDimensionManager *)self measurementSystem])
  {
    [MEMORY[0x277CCAE20] miles];
  }

  else
  {
    [MEMORY[0x277CCAE20] kilometers];
  }
  v2 = ;

  return v2;
}

- (NSUnitFuelEfficiency)vehicleFuelEfficiencyUnit
{
  measurementSystem = [(CAFDimensionManager *)self measurementSystem];
  if (measurementSystem == 2)
  {
    milesPerImperialGallon = [MEMORY[0x277CCAE08] milesPerImperialGallon];
  }

  else
  {
    if (measurementSystem)
    {
      [MEMORY[0x277CCAE08] milesPerGallon];
    }

    else
    {
      [MEMORY[0x277CCAE08] litersPer100Kilometers];
    }
    milesPerImperialGallon = ;
  }

  return milesPerImperialGallon;
}

- (CAFUnitEnergyEfficiency)vehicleEnergyEfficiencyUnit
{
  if ([(CAFDimensionManager *)self measurementSystem])
  {
    +[CAFUnitEnergyEfficiency milesPerKilowattHour];
  }

  else
  {
    +[CAFUnitEnergyEfficiency kilometersPerKilowattHour];
  }
  v2 = ;

  return v2;
}

- (void)invalidate
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_231618000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ time to invalidate", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)currentLocaleChanged
{
  locale = [(CAFDimensionManager *)self locale];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = *MEMORY[0x277CBE6D0];
  v5 = [locale objectForKey:*MEMORY[0x277CBE6D0]];
  v6 = [currentLocale objectForKey:v4];
  v7 = *MEMORY[0x277CBE700];
  v8 = [locale objectForKey:*MEMORY[0x277CBE700]];
  v9 = [currentLocale objectForKey:v7];
  [(CAFDimensionManager *)self setLocale:currentLocale];
  if (([v5 isEqualToString:v6] & 1) == 0)
  {
    observers = [(CAFDimensionManager *)self observers];
    [observers dimensionManager:self didUpdateMeasurementSystem:{-[CAFDimensionManager measurementSystem](self, "measurementSystem")}];
  }

  if (([v8 isEqualToString:v9] & 1) == 0)
  {
    observers2 = [(CAFDimensionManager *)self observers];
    unitTemperature = [(CAFDimensionManager *)self unitTemperature];
    [observers2 dimensionManager:self didUpdateTemperatureUnit:unitTemperature];
  }
}

- (CAFCar)car
{
  WeakRetained = objc_loadWeakRetained(&self->_car);

  return WeakRetained;
}

@end