@interface MagnifierObjc
+ (BOOL)catchException:(id)a3 error:(id *)a4;
+ (void)sbs_unlockDeviceIfNeededAndPerform:(id)a3;
@end

@implementation MagnifierObjc

+ (BOOL)catchException:(id)a3 error:(id *)a4
{
  v4 = a3;
  v4[2]();

  return 1;
}

+ (void)sbs_unlockDeviceIfNeededAndPerform:(id)a3
{
  v4 = a3;
  v3 = v4;
  SBSRequestPasscodeUnlockUI();
}

@end