@interface HPSNumberSetting
- (double)doubleValue;
- (float)floatValue;
- (int64_t)integerValue;
@end

@implementation HPSNumberSetting

- (int64_t)integerValue
{
  numberValue = [(HPSNumberSetting *)self numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (float)floatValue
{
  numberValue = [(HPSNumberSetting *)self numberValue];
  [numberValue floatValue];
  v4 = v3;

  return v4;
}

- (double)doubleValue
{
  numberValue = [(HPSNumberSetting *)self numberValue];
  [numberValue doubleValue];
  v4 = v3;

  return v4;
}

@end