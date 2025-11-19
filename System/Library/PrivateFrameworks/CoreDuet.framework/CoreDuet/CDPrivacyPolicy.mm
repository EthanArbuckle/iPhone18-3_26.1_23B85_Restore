@interface CDPrivacyPolicy
@end

@implementation CDPrivacyPolicy

uint64_t __39___CDPrivacyPolicy_sharedPrivacyPolicy__block_invoke()
{
  v0 = [[_CDPrivacyPolicy alloc] initWithTemporalPrecision:1 canPersistOnStorage:64.0];
  v1 = sharedPrivacyPolicy__sharedPrivacyPolicy;
  sharedPrivacyPolicy__sharedPrivacyPolicy = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end