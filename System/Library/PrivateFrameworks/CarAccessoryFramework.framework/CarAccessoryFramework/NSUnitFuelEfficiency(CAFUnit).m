@interface NSUnitFuelEfficiency(CAFUnit)
+ (id)millilitersPer100Kilometers;
@end

@implementation NSUnitFuelEfficiency(CAFUnit)

+ (id)millilitersPer100Kilometers
{
  if (millilitersPer100Kilometers_onceToken != -1)
  {
    +[NSUnitFuelEfficiency(CAFUnit) millilitersPer100Kilometers];
  }

  v1 = millilitersPer100Kilometers__millilitersPer100Kilometers;

  return v1;
}

@end