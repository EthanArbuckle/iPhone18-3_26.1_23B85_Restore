@interface NSUnitEnergy(CAFUnit)
+ (id)milliwattHours;
+ (id)wattHours;
@end

@implementation NSUnitEnergy(CAFUnit)

+ (id)wattHours
{
  if (wattHours_onceToken != -1)
  {
    +[NSUnitEnergy(CAFUnit) wattHours];
  }

  v1 = wattHours__wattHours;

  return v1;
}

+ (id)milliwattHours
{
  if (milliwattHours_onceToken != -1)
  {
    +[NSUnitEnergy(CAFUnit) milliwattHours];
  }

  v1 = milliwattHours__wattHours;

  return v1;
}

@end