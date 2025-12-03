@interface MRUPasscodeUnlockAlertRequester
+ (void)requestWithCompletion:(id)completion;
@end

@implementation MRUPasscodeUnlockAlertRequester

+ (void)requestWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = completionCopy;
  SBSRequestPasscodeUnlockAlertUI();
}

@end