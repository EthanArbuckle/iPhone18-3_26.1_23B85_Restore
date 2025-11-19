@interface CAFDimensionManager
- (CAFCar)car;
- (CAFDimensionManager)initWithCar:(id)a3;
- (CAFUnitEnergyEfficiency)vehicleEnergyEfficiencyUnit;
- (NSUnitFuelEfficiency)vehicleFuelEfficiencyUnit;
- (NSUnitLength)vehicleRangeUnit;
- (NSUnitPressure)tirePressureUnit;
- (NSUnitSpeed)vehicleSpeedUnit;
- (NSUnitTemperature)unitTemperature;
- (unint64_t)measurementSystem;
- (void)currentLocaleChanged;
- (void)invalidate;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFDimensionManager

- (CAFDimensionManager)initWithCar:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CAFDimensionManager;
  v5 = [(CAFDimensionManager *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_2846AD4B0];
    observers = v5->_observers;
    v5->_observers = v8;

    objc_storeWeak(&v5->_car, v4);
    objc_initWeak(&location, v5);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = [MEMORY[0x277CCABD8] mainQueue];
    v12 = *MEMORY[0x277CBE620];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __35__CAFDimensionManager_initWithCar___block_invoke;
    v15[3] = &unk_27890D570;
    objc_copyWeak(&v16, &location);
    v13 = [v10 addObserverForName:v12 object:0 queue:v11 usingBlock:v15];

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

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAFDimensionManager *)self observers];
  [v5 registerObserver:v4];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAFDimensionManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (unint64_t)measurementSystem
{
  v2 = [(CAFDimensionManager *)self locale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE6D0]];

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
  v2 = [(CAFDimensionManager *)self locale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE700]];
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
  v2 = [(CAFDimensionManager *)self measurementSystem];
  if (v2 == 2)
  {
    v3 = [MEMORY[0x277CCAE38] kilopascals];
  }

  else
  {
    if (v2)
    {
      [MEMORY[0x277CCAE38] poundsForcePerSquareInch];
    }

    else
    {
      [MEMORY[0x277CCAE38] bars];
    }
    v3 = ;
  }

  return v3;
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
  v2 = [(CAFDimensionManager *)self measurementSystem];
  if (v2 == 2)
  {
    v3 = [MEMORY[0x277CCAE08] milesPerImperialGallon];
  }

  else
  {
    if (v2)
    {
      [MEMORY[0x277CCAE08] milesPerGallon];
    }

    else
    {
      [MEMORY[0x277CCAE08] litersPer100Kilometers];
    }
    v3 = ;
  }

  return v3;
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
  v4 = a1;
  _os_log_debug_impl(&dword_231618000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ time to invalidate", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)currentLocaleChanged
{
  v13 = [(CAFDimensionManager *)self locale];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = *MEMORY[0x277CBE6D0];
  v5 = [v13 objectForKey:*MEMORY[0x277CBE6D0]];
  v6 = [v3 objectForKey:v4];
  v7 = *MEMORY[0x277CBE700];
  v8 = [v13 objectForKey:*MEMORY[0x277CBE700]];
  v9 = [v3 objectForKey:v7];
  [(CAFDimensionManager *)self setLocale:v3];
  if (([v5 isEqualToString:v6] & 1) == 0)
  {
    v10 = [(CAFDimensionManager *)self observers];
    [v10 dimensionManager:self didUpdateMeasurementSystem:{-[CAFDimensionManager measurementSystem](self, "measurementSystem")}];
  }

  if (([v8 isEqualToString:v9] & 1) == 0)
  {
    v11 = [(CAFDimensionManager *)self observers];
    v12 = [(CAFDimensionManager *)self unitTemperature];
    [v11 dimensionManager:self didUpdateTemperatureUnit:v12];
  }
}

- (CAFCar)car
{
  WeakRetained = objc_loadWeakRetained(&self->_car);

  return WeakRetained;
}

@end