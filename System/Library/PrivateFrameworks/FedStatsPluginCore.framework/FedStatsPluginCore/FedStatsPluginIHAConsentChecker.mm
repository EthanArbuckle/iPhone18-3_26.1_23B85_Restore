@interface FedStatsPluginIHAConsentChecker
- (id)checkConsentForClientIdentifier:(id)identifier error:(id *)error;
@end

@implementation FedStatsPluginIHAConsentChecker

- (id)checkConsentForClientIdentifier:(id)identifier error:(id *)error
{
  if ([&unk_285E17AD0 containsObject:{identifier, error}])
  {
    v4 = MEMORY[0x277CCABB0];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v6 = [v4 numberWithBool:{objc_msgSend(mEMORY[0x277D262A0], "isHealthDataSubmissionAllowed")}];
  }

  else
  {
    v6 = MEMORY[0x277CBEC38];
  }

  return v6;
}

@end