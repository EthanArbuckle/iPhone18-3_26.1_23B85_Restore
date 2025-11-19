@interface BCSHousekeeper
- (BCSHousekeeper)initWithUserDefaults:(id)a3 currentVersion:(int64_t)a4;
- (void)cleanupDataAtOldPathsIfNeeded;
@end

@implementation BCSHousekeeper

- (BCSHousekeeper)initWithUserDefaults:(id)a3 currentVersion:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BCSHousekeeper;
  v8 = [(BCSHousekeeper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userDefaults, a3);
    v9->_currentVersion = a4;
  }

  return v9;
}

- (void)cleanupDataAtOldPathsIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(BCSHousekeeper *)self userDefaults];
  v4 = [v3 integerForKey:@"BCSHousekeepingCurrentVersion"];

  if (v4 >= [(BCSHousekeeper *)self currentVersion])
  {
    v6 = ABSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[BCSHousekeeper cleanupDataAtOldPathsIfNeeded]";
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "%s Cleanup not needed. Last completed cleanup task number: %ld", buf, 0x16u);
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = [(BCSHousekeeper *)self userDefaults];
    [v8 setInteger:-[BCSHousekeeper currentVersion](self forKey:{"currentVersion"), @"BCSHousekeepingCurrentVersion"}];
    v5 = *MEMORY[0x277D85DE8];
  }
}

@end