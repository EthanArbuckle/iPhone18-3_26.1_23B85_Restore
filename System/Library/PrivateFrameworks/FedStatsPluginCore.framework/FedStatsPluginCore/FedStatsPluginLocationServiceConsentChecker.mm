@interface FedStatsPluginLocationServiceConsentChecker
- (id)checkConsentForClientIdentifier:(id)identifier error:(id *)error;
@end

@implementation FedStatsPluginLocationServiceConsentChecker

- (id)checkConsentForClientIdentifier:(id)identifier error:(id *)error
{
  if ([&unk_285E17A58 containsObject:{identifier, error}])
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