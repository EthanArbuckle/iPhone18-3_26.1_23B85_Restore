@interface MRUPasscodeUnlockAlertRequester
+ (void)requestWithCompletion:(id)a3;
@end

@implementation MRUPasscodeUnlockAlertRequester

+ (void)requestWithCompletion:(id)a3
{
  v4 = a3;
  v3 = v4;
  SBSRequestPasscodeUnlockAlertUI();
}

@end