@interface CKPPTSubTest
+ (void)start:(id)a3;
+ (void)stop:(id)a3;
@end

@implementation CKPPTSubTest

+ (void)start:(id)a3
{
  v5 = a3;
  if (!kApplicationReference && CKIsRunningInMessages())
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = kApplicationReference;
    kApplicationReference = v3;
  }

  [kApplicationReference startPPTSubtestForCurrentTest:v5];
}

+ (void)stop:(id)a3
{
  v5 = a3;
  if (!kApplicationReference && CKIsRunningInMessages())
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v4 = kApplicationReference;
    kApplicationReference = v3;
  }

  [kApplicationReference stopPPTSubtestForCurrentTest:v5];
}

@end