@interface HDHealthAppPlugin
- (id)databaseEntitiesForProtectionClass:(int64_t)a3;
- (id)extensionForHealthDaemon:(id)a3;
- (id)extensionForProfile:(id)a3;
- (id)stateSyncEntityClasses;
- (id)taskServerClasses;
- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3;
- (void)handleDatabaseObliteration;
@end

@implementation HDHealthAppPlugin

- (id)extensionForHealthDaemon:(id)a3
{
  v3 = a3;
  v4 = [[HDHealthAppDaemonExtension alloc] initWithDaemon:v3];

  return v4;
}

- (id)extensionForProfile:(id)a3
{
  v3 = a3;
  if ([v3 profileType] == 1)
  {
    v4 = [[HDHealthAppProfileExtension alloc] initWithProfile:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleDatabaseObliteration
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDHAHealthPluginHostFeedGenerator);
  [(HDHAHealthPluginHostFeedGenerator *)v2 invalidateStoreCache];
  v3 = objc_alloc(MEMORY[0x277CE2028]);
  v4 = [v3 initWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  [v4 removeAllPendingNotificationRequests];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v9 = 138543362;
    v10 = objc_opt_class();
    v7 = v10;
    _os_log_impl(&dword_22939E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removed all pending UserNotification requests", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)stateSyncEntityClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [v2 mutableCopy];

  [v3 addObject:objc_opt_class()];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)taskServerClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [v2 mutableCopy];

  [v3 addObject:objc_opt_class()];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)currentSchemaVersionForProtectionClass:(int64_t)a3
{
  if ((a3 - 1) >= 2)
  {
    return 0;
  }

  else
  {
    return 17200;
  }
}

- (id)databaseEntitiesForProtectionClass:(int64_t)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6[0] = objc_opt_class();
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end