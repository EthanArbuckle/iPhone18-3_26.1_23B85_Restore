@interface INInteraction(MTUtilities)
- (void)mtSetIntentDonorFromSource:()MTUtilities;
@end

@implementation INInteraction(MTUtilities)

- (void)mtSetIntentDonorFromSource:()MTUtilities
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    processName = [v5 processName];
    [self _setDonatedBySiri:{objc_msgSend(processName, "isEqualToString:", @"assistant_service"}];
  }
}

@end