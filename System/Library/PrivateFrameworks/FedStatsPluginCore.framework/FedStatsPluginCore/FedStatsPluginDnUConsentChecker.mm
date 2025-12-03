@interface FedStatsPluginDnUConsentChecker
- (id)checkConsentForClientIdentifier:(id)identifier error:(id *)error;
@end

@implementation FedStatsPluginDnUConsentChecker

- (id)checkConsentForClientIdentifier:(id)identifier error:(id *)error
{
  if ([&unk_285E17A88 containsObject:{identifier, error}])
  {
    v4 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = MEMORY[0x277CCABB0];
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v5 numberWithBool:{objc_msgSend(mEMORY[0x277D262A0], "isDiagnosticSubmissionAllowed")}];
  }

  return v4;
}

@end