@interface NSError(HealthHearing)
- (uint64_t)hearing_audioDSP_isHAENDisabled;
- (uint64_t)hearing_isExpectedError;
@end

@implementation NSError(HealthHearing)

- (uint64_t)hearing_isExpectedError
{
  if ([self hk_isDatabaseAccessibilityError] & 1) != 0 || (objc_msgSend(self, "hk_isHealthStoreUnavailableError") & 1) != 0 || (objc_msgSend(self, "hk_isFeatureDisabledError"))
  {
    return 1;
  }

  return [self hearing_audioDSP_isHAENDisabled];
}

- (uint64_t)hearing_audioDSP_isHAENDisabled
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277D0EEC0]];

  if (!v3)
  {
    return 0;
  }

  code = [self code];
  if (code != *MEMORY[0x277D0EEB8])
  {
    return 0;
  }

  userInfo = [self userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  v7 = [@"HAEN is disabled" isEqualToString:v6];

  return v7;
}

@end