@interface NSDictionary
- (int64_t)integerForKey:(id)key minValue:(int64_t)value maxValue:(int64_t)maxValue defaultValue:(int64_t)defaultValue;
@end

@implementation NSDictionary

- (int64_t)integerForKey:(id)key minValue:(int64_t)value maxValue:(int64_t)maxValue defaultValue:(int64_t)defaultValue
{
  v9 = [(NSDictionary *)self objectForKeyedSubscript:key];
  v10 = v9;
  if (v9)
  {
    integerValue = [v9 integerValue];
    if (integerValue <= maxValue && integerValue >= value)
    {
      defaultValue = integerValue;
    }
  }

  return defaultValue;
}

@end