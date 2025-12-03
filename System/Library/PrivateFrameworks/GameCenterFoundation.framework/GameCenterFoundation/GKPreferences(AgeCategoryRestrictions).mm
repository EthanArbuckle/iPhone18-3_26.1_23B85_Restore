@interface GKPreferences(AgeCategoryRestrictions)
- (void)localPlayerAgeCategory;
@end

@implementation GKPreferences(AgeCategoryRestrictions)

- (void)localPlayerAgeCategory
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCABB0];
  selfCopy = self;
  v3 = [v1 numberWithInt:3];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_227904000, selfCopy, OS_LOG_TYPE_DEBUG, "GKPreferences (AgeCategoryRestrictions) localPlayerAgeCategory: %@ (underage flag set)", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end