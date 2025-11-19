@interface IMGenerativeModelsAvailabilityProvider
+ (void)setMessageSummarizationUserPreference:(BOOL)a3;
@end

@implementation IMGenerativeModelsAvailabilityProvider

+ (void)setMessageSummarizationUserPreference:(BOOL)a3
{
  v3 = a3;
  v4 = sub_1A88C82A8();
  v5 = sub_1A88C82A8();
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  IMSetDomainValueForKey();
}

@end