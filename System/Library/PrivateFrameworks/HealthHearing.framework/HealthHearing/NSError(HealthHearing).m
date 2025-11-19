@interface NSError(HealthHearing)
- (uint64_t)hearing_audioDSP_isHAENDisabled;
- (uint64_t)hearing_isExpectedError;
@end

@implementation NSError(HealthHearing)

- (uint64_t)hearing_isExpectedError
{
  if ([a1 hk_isDatabaseAccessibilityError] & 1) != 0 || (objc_msgSend(a1, "hk_isHealthStoreUnavailableError") & 1) != 0 || (objc_msgSend(a1, "hk_isFeatureDisabledError"))
  {
    return 1;
  }

  return [a1 hearing_audioDSP_isHAENDisabled];
}

- (uint64_t)hearing_audioDSP_isHAENDisabled
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277D0EEC0]];

  if (!v3)
  {
    return 0;
  }

  v4 = [a1 code];
  if (v4 != *MEMORY[0x277D0EEB8])
  {
    return 0;
  }

  v5 = [a1 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  v7 = [@"HAEN is disabled" isEqualToString:v6];

  return v7;
}

@end