@interface CKPPTSubTest
+ (void)start:(id)start;
+ (void)stop:(id)stop;
@end

@implementation CKPPTSubTest

+ (void)start:(id)start
{
  startCopy = start;
  if (!kApplicationReference && CKIsRunningInMessages())
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = kApplicationReference;
    kApplicationReference = mEMORY[0x1E69DC668];
  }

  [kApplicationReference startPPTSubtestForCurrentTest:startCopy];
}

+ (void)stop:(id)stop
{
  stopCopy = stop;
  if (!kApplicationReference && CKIsRunningInMessages())
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = kApplicationReference;
    kApplicationReference = mEMORY[0x1E69DC668];
  }

  [kApplicationReference stopPPTSubtestForCurrentTest:stopCopy];
}

@end