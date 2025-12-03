@interface FCGeoUtilities
+ (BOOL)isRunningInSupportedRegion;
+ (id)currentRegion;
@end

@implementation FCGeoUtilities

+ (BOOL)isRunningInSupportedRegion
{
  v2 = NewsCoreUserDefaults();
  v3 = [v2 BOOLForKey:@"simulate_unsupported_region"];

  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
    countryCode = [mEMORY[0x1E69A1CD8] countryCode];

    v4 = [countryCode isEqualToString:@"CN"] ^ 1;
  }

  return v4;
}

+ (id)currentRegion
{
  mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  countryCode = [mEMORY[0x1E69A1CD8] countryCode];

  return countryCode;
}

@end