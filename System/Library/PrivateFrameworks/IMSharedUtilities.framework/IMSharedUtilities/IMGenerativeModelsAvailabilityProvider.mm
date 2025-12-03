@interface IMGenerativeModelsAvailabilityProvider
+ (void)setMessageSummarizationUserPreference:(BOOL)preference;
@end

@implementation IMGenerativeModelsAvailabilityProvider

+ (void)setMessageSummarizationUserPreference:(BOOL)preference
{
  preferenceCopy = preference;
  v4 = sub_1A88C82A8();
  v5 = sub_1A88C82A8();
  initWithBool_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  IMSetDomainValueForKey();
}

@end