@interface NSDictionary
- (int64_t)integerForKey:(id)a3 minValue:(int64_t)a4 maxValue:(int64_t)a5 defaultValue:(int64_t)a6;
@end

@implementation NSDictionary

- (int64_t)integerForKey:(id)a3 minValue:(int64_t)a4 maxValue:(int64_t)a5 defaultValue:(int64_t)a6
{
  v9 = [(NSDictionary *)self objectForKeyedSubscript:a3];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
    if (v11 <= a5 && v11 >= a4)
    {
      a6 = v11;
    }
  }

  return a6;
}

@end