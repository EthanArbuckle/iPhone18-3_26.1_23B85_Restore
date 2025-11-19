@interface LSApplicationRecord
@end

@implementation LSApplicationRecord

void __51__LSApplicationRecord_Workflow__wf_bundleAllowList__block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB58];
  v7[0] = *MEMORY[0x277D7A230];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = wf_bundleAllowList_allowlist;
  wf_bundleAllowList_allowlist = v2;

  if (VCIsInternalBuild())
  {
    v4 = wf_bundleAllowList_allowlist;
    v6[0] = @"com.apple.TapToRadar";
    v6[1] = @"com.apple.Livability";
    v6[2] = @"com.apple.Terminal";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
    [v4 addObjectsFromArray:v5];
  }
}

uint64_t __49__LSApplicationRecord_Workflow__wf_isLinkEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isLinkEnabled];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t __53__LSApplicationRecord_Intents2__in2_supportedIntents__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 extensionPointRecord];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CD3858]];

  return v4;
}

@end