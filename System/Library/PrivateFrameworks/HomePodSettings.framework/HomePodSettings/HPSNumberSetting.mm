@interface HPSNumberSetting
- (double)doubleValue;
- (float)floatValue;
- (int64_t)integerValue;
@end

@implementation HPSNumberSetting

- (int64_t)integerValue
{
  v2 = [(HPSNumberSetting *)self numberValue];
  v3 = [v2 integerValue];

  return v3;
}

- (float)floatValue
{
  v2 = [(HPSNumberSetting *)self numberValue];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (double)doubleValue
{
  v2 = [(HPSNumberSetting *)self numberValue];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

@end