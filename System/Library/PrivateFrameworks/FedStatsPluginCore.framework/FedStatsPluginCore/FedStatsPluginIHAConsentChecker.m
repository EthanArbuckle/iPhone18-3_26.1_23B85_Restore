@interface FedStatsPluginIHAConsentChecker
- (id)checkConsentForClientIdentifier:(id)a3 error:(id *)a4;
@end

@implementation FedStatsPluginIHAConsentChecker

- (id)checkConsentForClientIdentifier:(id)a3 error:(id *)a4
{
  if ([&unk_285E17AD0 containsObject:{a3, a4}])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = [MEMORY[0x277D262A0] sharedConnection];
    v6 = [v4 numberWithBool:{objc_msgSend(v5, "isHealthDataSubmissionAllowed")}];
  }

  else
  {
    v6 = MEMORY[0x277CBEC38];
  }

  return v6;
}

@end