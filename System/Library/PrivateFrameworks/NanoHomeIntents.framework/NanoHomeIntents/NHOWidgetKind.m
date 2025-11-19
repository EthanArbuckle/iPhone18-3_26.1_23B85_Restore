@interface NHOWidgetKind
+ (NSString)Accessory;
+ (NSString)ActionSets;
+ (NSString)ElectricityRates;
+ (NSString)ElectricityUsage;
+ (NSString)Energy;
+ (NSString)Launcher;
+ (NSString)SmartStack;
- (NHOWidgetKind)init;
@end

@implementation NHOWidgetKind

+ (NSString)Launcher
{
  v2 = sub_25B161B24();

  return v2;
}

+ (NSString)Energy
{
  v2 = sub_25B161B24();

  return v2;
}

+ (NSString)Accessory
{
  v2 = sub_25B161B24();

  return v2;
}

+ (NSString)ActionSets
{
  v2 = sub_25B161B24();

  return v2;
}

+ (NSString)SmartStack
{
  v2 = sub_25B161B24();

  return v2;
}

+ (NSString)ElectricityUsage
{
  v2 = sub_25B161B24();

  return v2;
}

+ (NSString)ElectricityRates
{
  v2 = sub_25B161B24();

  return v2;
}

- (NHOWidgetKind)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NHOIntentConstants.WidgetKind();
  return [(NHOWidgetKind *)&v3 init];
}

@end