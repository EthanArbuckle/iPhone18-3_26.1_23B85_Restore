@interface CAFUnitEnergyEfficiency
+ (CAFUnitEnergyEfficiency)kilometersPerKilowattHour;
+ (CAFUnitEnergyEfficiency)kilowattHoursPer100Kilometers;
+ (CAFUnitEnergyEfficiency)kilowattHoursPer100Miles;
+ (CAFUnitEnergyEfficiency)milesPerKilowattHour;
+ (CAFUnitEnergyEfficiency)milliwattHoursPerKilometer;
+ (CAFUnitEnergyEfficiency)wattHoursPerKilometer;
+ (CAFUnitEnergyEfficiency)wattHoursPerMile;
@end

@implementation CAFUnitEnergyEfficiency

+ (CAFUnitEnergyEfficiency)wattHoursPerKilometer
{
  if (wattHoursPerKilometer_onceToken != -1)
  {
    +[CAFUnitEnergyEfficiency wattHoursPerKilometer];
  }

  v3 = wattHoursPerKilometer__wattHoursPerKilometer;

  return v3;
}

void __48__CAFUnitEnergyEfficiency_wattHoursPerKilometer__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v0 = [(NSDimension *)[CAFUnitEnergyEfficiency alloc] initWithSymbol:@"Wh/km" converter:v2];
  v1 = wattHoursPerKilometer__wattHoursPerKilometer;
  wattHoursPerKilometer__wattHoursPerKilometer = v0;
}

+ (CAFUnitEnergyEfficiency)milliwattHoursPerKilometer
{
  if (milliwattHoursPerKilometer_onceToken != -1)
  {
    +[CAFUnitEnergyEfficiency milliwattHoursPerKilometer];
  }

  v3 = milliwattHoursPerKilometer__milliwattHoursPerKilometer;

  return v3;
}

void __53__CAFUnitEnergyEfficiency_milliwattHoursPerKilometer__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:0.001];
  v0 = [(NSDimension *)[CAFUnitEnergyEfficiency alloc] initWithSymbol:@"mWh/km" converter:v2];
  v1 = milliwattHoursPerKilometer__milliwattHoursPerKilometer;
  milliwattHoursPerKilometer__milliwattHoursPerKilometer = v0;
}

+ (CAFUnitEnergyEfficiency)kilowattHoursPer100Kilometers
{
  if (kilowattHoursPer100Kilometers_onceToken != -1)
  {
    +[CAFUnitEnergyEfficiency kilowattHoursPer100Kilometers];
  }

  v3 = kilowattHoursPer100Kilometers__kilowattHoursPer100Kilometers;

  return v3;
}

void __56__CAFUnitEnergyEfficiency_kilowattHoursPer100Kilometers__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:10.0];
  v0 = [(NSDimension *)[CAFUnitEnergyEfficiency alloc] initWithSymbol:@"kWh/100km" converter:v2];
  v1 = kilowattHoursPer100Kilometers__kilowattHoursPer100Kilometers;
  kilowattHoursPer100Kilometers__kilowattHoursPer100Kilometers = v0;
}

+ (CAFUnitEnergyEfficiency)kilowattHoursPer100Miles
{
  if (kilowattHoursPer100Miles_onceToken != -1)
  {
    +[CAFUnitEnergyEfficiency kilowattHoursPer100Miles];
  }

  v3 = kilowattHoursPer100Miles__kilowattHoursPer100Miles;

  return v3;
}

void __51__CAFUnitEnergyEfficiency_kilowattHoursPer100Miles__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:6.21371192];
  v0 = [(NSDimension *)[CAFUnitEnergyEfficiency alloc] initWithSymbol:@"kWh/100mi" converter:v2];
  v1 = kilowattHoursPer100Miles__kilowattHoursPer100Miles;
  kilowattHoursPer100Miles__kilowattHoursPer100Miles = v0;
}

+ (CAFUnitEnergyEfficiency)wattHoursPerMile
{
  if (wattHoursPerMile_onceToken != -1)
  {
    +[CAFUnitEnergyEfficiency wattHoursPerMile];
  }

  v3 = wattHoursPerMile__wattHoursPerMile;

  return v3;
}

void __43__CAFUnitEnergyEfficiency_wattHoursPerMile__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:0.621371192];
  v0 = [(NSDimension *)[CAFUnitEnergyEfficiency alloc] initWithSymbol:@"Wh/mi" converter:v2];
  v1 = wattHoursPerMile__wattHoursPerMile;
  wattHoursPerMile__wattHoursPerMile = v0;
}

+ (CAFUnitEnergyEfficiency)milesPerKilowattHour
{
  if (milesPerKilowattHour_onceToken != -1)
  {
    +[CAFUnitEnergyEfficiency milesPerKilowattHour];
  }

  v3 = milesPerKilowattHour__milesPerKilowattHour;

  return v3;
}

void __47__CAFUnitEnergyEfficiency_milesPerKilowattHour__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:621.371192];
  v0 = [(NSDimension *)[CAFUnitEnergyEfficiency alloc] initWithSymbol:@"mi/kWh" converter:v2];
  v1 = milesPerKilowattHour__milesPerKilowattHour;
  milesPerKilowattHour__milesPerKilowattHour = v0;
}

+ (CAFUnitEnergyEfficiency)kilometersPerKilowattHour
{
  if (kilometersPerKilowattHour_onceToken != -1)
  {
    +[CAFUnitEnergyEfficiency kilometersPerKilowattHour];
  }

  v3 = kilometersPerKilowattHour__kilometersPerKilowattHour;

  return v3;
}

void __52__CAFUnitEnergyEfficiency_kilometersPerKilowattHour__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x277CCADC0]) initWithCoefficient:1.0];
  v0 = [(NSDimension *)[CAFUnitEnergyEfficiency alloc] initWithSymbol:@"km/kWh" converter:v2];
  v1 = kilometersPerKilowattHour__kilometersPerKilowattHour;
  kilometersPerKilowattHour__kilometersPerKilowattHour = v0;
}

@end