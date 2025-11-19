@interface GKPreferences(Restrictions)
@end

@implementation GKPreferences(Restrictions)

- (void)effectiveBoolValueForSetting:()Restrictions .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = @"NoData";
  if (a2 == 2)
  {
    v3 = @"ExplicitNo";
  }

  if (a2 == 1)
  {
    v3 = @"ExplicitYes";
  }

  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_227904000, log, OS_LOG_TYPE_DEBUG, "GKPreferences (Restrictions) effectiveBoolValueForSetting:%@ -> %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end