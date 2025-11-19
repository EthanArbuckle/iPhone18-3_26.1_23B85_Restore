@interface FedStatsPluginLocationServiceConsentChecker
- (id)checkConsentForClientIdentifier:(id)a3 error:(id *)a4;
@end

@implementation FedStatsPluginLocationServiceConsentChecker

- (id)checkConsentForClientIdentifier:(id)a3 error:(id *)a4
{
  if ([&unk_285E17A58 containsObject:{a3, a4}])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277CBFC10], "locationServicesEnabled")}];
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  return v4;
}

@end