@interface NSUnitSpeed(CAFUnit)
+ (id)metersPerHour;
@end

@implementation NSUnitSpeed(CAFUnit)

+ (id)metersPerHour
{
  if (metersPerHour_onceToken != -1)
  {
    +[NSUnitSpeed(CAFUnit) metersPerHour];
  }

  v1 = metersPerHour_metersPerHour;

  return v1;
}

@end