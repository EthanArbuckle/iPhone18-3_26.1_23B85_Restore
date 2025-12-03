@interface UIImage(CarPlayUI)
- (BOOL)isSquared;
- (id)roundingCornersIfSquared;
@end

@implementation UIImage(CarPlayUI)

- (BOOL)isSquared
{
  [self size];
  v3 = v2;
  [self size];
  v5 = 1.0;
  if (v4 >= 1.0)
  {
    v5 = v4;
  }

  v6 = v3 / v5;
  return v6 <= 1.01999998 && v6 >= 0.980000019;
}

- (id)roundingCornersIfSquared
{
  v12 = *MEMORY[0x277D85DE8];
  if ([self isSquared])
  {
    selfCopy = self;
  }

  else
  {
    v3 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      [self size];
      v5 = v4;
      [self size];
      v8 = 134218240;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_243134000, v3, OS_LOG_TYPE_DEFAULT, "Setting corner radius to artwork image with size: (%f, %f)", &v8, 0x16u);
    }

    selfCopy = [self imageWithRoundedCornersOfRadius:14.0];
  }

  return selfCopy;
}

@end