@interface AXSettings(HPSAdditions)
+ (__CFString)hps_stringFromTapActivationMethod:()HPSAdditions;
+ (uint64_t)hps_tapActivationMethodFromString:()HPSAdditions;
- (uint64_t)hps_touchAccomodationsTapActivationMethodString;
@end

@implementation AXSettings(HPSAdditions)

- (uint64_t)hps_touchAccomodationsTapActivationMethodString
{
  v1 = MEMORY[0x277CE7E20];
  touchAccommodationsTapActivationMethod = [self touchAccommodationsTapActivationMethod];

  return [v1 hps_stringFromTapActivationMethod:touchAccommodationsTapActivationMethod];
}

+ (__CFString)hps_stringFromTapActivationMethod:()HPSAdditions
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_279774448[a3];
  }
}

+ (uint64_t)hps_tapActivationMethodFromString:()HPSAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:@"off"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"useInitialTouchLocation"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"useFinalTouchLocation"])
  {
    v4 = 2;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

@end