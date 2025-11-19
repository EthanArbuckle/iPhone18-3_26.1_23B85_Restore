@interface FedStatsPluginDnUConsentChecker
- (id)checkConsentForClientIdentifier:(id)a3 error:(id *)a4;
@end

@implementation FedStatsPluginDnUConsentChecker

- (id)checkConsentForClientIdentifier:(id)a3 error:(id *)a4
{
  if ([&unk_285E17A88 containsObject:{a3, a4}])
  {
    v4 = MEMORY[0x277CBEC38];
  }

  else
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v5 numberWithBool:{objc_msgSend(v6, "isDiagnosticSubmissionAllowed")}];
  }

  return v4;
}

@end