@interface UMUser(Passcode)
+ (uint64_t)mc_userPasscodeTypeWithPasscode:()Passcode;
+ (uint64_t)mc_userPasscodeTypeWithUnlockScreenType:()Passcode simplePasscodeType:;
@end

@implementation UMUser(Passcode)

+ (uint64_t)mc_userPasscodeTypeWithUnlockScreenType:()Passcode simplePasscodeType:
{
  v4 = 3;
  v5 = 3;
  if (a4 == 1)
  {
    v5 = 1;
  }

  if (!a4)
  {
    v5 = 0;
  }

  if (!a3)
  {
    v4 = v5;
  }

  if (a3 == 1)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

+ (uint64_t)mc_userPasscodeTypeWithPasscode:()Passcode
{
  v6 = 0;
  v4 = [MCPasscodeUtilities unlockScreenTypeForPasscode:a3 outSimplePasscodeType:&v6];
  return [self mc_userPasscodeTypeWithUnlockScreenType:v4 simplePasscodeType:v6];
}

@end