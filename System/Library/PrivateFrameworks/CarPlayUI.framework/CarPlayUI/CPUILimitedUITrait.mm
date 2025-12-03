@interface CPUILimitedUITrait
+ (int64_t)defaultValue;
@end

@implementation CPUILimitedUITrait

+ (int64_t)defaultValue
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{+[CPUILimitedUITrait defaultBoolValue](CPUILimitedUITrait, "defaultBoolValue")}];
  integerValue = [v2 integerValue];

  return integerValue;
}

@end