@interface MagnifierObjc
+ (BOOL)catchException:(id)exception error:(id *)error;
+ (void)sbs_unlockDeviceIfNeededAndPerform:(id)perform;
@end

@implementation MagnifierObjc

+ (BOOL)catchException:(id)exception error:(id *)error
{
  exceptionCopy = exception;
  exceptionCopy[2]();

  return 1;
}

+ (void)sbs_unlockDeviceIfNeededAndPerform:(id)perform
{
  performCopy = perform;
  v3 = performCopy;
  SBSRequestPasscodeUnlockUI();
}

@end