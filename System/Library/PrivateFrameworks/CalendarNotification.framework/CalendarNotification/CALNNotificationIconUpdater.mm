@interface CALNNotificationIconUpdater
+ (BOOL)_needsIconCacheCleanup;
+ (id)_iconCacheDirectory;
+ (void)_cleanupLegacyIconCache;
+ (void)_clearIconCacheVersion;
- (CALNNotificationIconUpdater)initWithProtectedNotificationStorage:(id)a3 iconIdentifierProvider:(id)a4 notificationManager:(id)a5;
- (void)_updateAllIconIdentifiersInStorage:(id)a3;
- (void)updateNotificationIconsIfNeeded;
@end

@implementation CALNNotificationIconUpdater

- (CALNNotificationIconUpdater)initWithProtectedNotificationStorage:(id)a3 iconIdentifierProvider:(id)a4 notificationManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CALNNotificationIconUpdater;
  v12 = [(CALNNotificationIconUpdater *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_protectedStorage, a3);
    objc_storeStrong(&v13->_iconIdentifierProvider, a4);
    objc_storeStrong(&v13->_notificationManager, a5);
  }

  return v13;
}

- (void)updateNotificationIconsIfNeeded
{
  if ([objc_opt_class() _needsIconCacheCleanup])
  {
    v3 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "IconUpdater: Need to clean up legacy notification icons", v4, 2u);
    }

    [(CALNNotificationIconUpdater *)self _updateAllIconIdentifiersInStorage:self->_protectedStorage];
    [objc_opt_class() _cleanupLegacyIconCache];
    [objc_opt_class() _clearIconCacheVersion];
  }
}

- (void)_updateAllIconIdentifiersInStorage:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [a3 notificationRecords];
  v27 = [MEMORY[0x277CBEA80] currentCalendar];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v28 = *v30;
    *&v6 = 138543618;
    v25 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [v9 content];
        v11 = [v10 mutableCopy];

        v12 = [v11 iconIdentifier];

        if (v12)
        {
          v13 = [(CALNNotificationIconUpdater *)self iconIdentifierProvider];
          v14 = [v9 content];
          v15 = [v14 date];
          v16 = [v13 identifierForIconWithDate:v15 inCalendar:v27];
          [v11 setIconIdentifier:v16];
        }

        v17 = [v9 mutableCopy];
        [v17 setContent:v11];
        v18 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v9 content];
          v20 = [v19 iconIdentifier];
          v21 = [v17 content];
          v22 = [v21 iconIdentifier];
          *buf = v25;
          v34 = v20;
          v35 = 2114;
          v36 = v22;
          _os_log_impl(&dword_242909000, v18, OS_LOG_TYPE_DEFAULT, "IconUpdater: Updating iconIdentifiers in each notification storage entry, oldIdentifier:[%{public}@], newIdentifier:[%{public}@]", buf, 0x16u);
        }

        v23 = [(CALNNotificationIconUpdater *)self notificationManager];
        [v23 updateRecord:v17];
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)_iconCacheDirectory
{
  v2 = CALNDefaultCalendarDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"NotificationIconCache"];

  return v3;
}

+ (BOOL)_needsIconCacheCleanup
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"CALNNotificationIconIdentifierVersion"];

  return v3 != 0;
}

+ (void)_clearIconCacheVersion
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 removeObjectForKey:@"CALNNotificationIconIdentifierVersion"];
}

+ (void)_cleanupLegacyIconCache
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1 _iconCacheDirectory];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v3 fileExistsAtPath:v2])
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v5 = [v4 removeItemAtPath:v2 error:&v13];
    v6 = v13;

    v7 = +[CALNLogSubsystem calendar];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        v9 = "IconUpdater: Deleted legacy icon cache directory.";
        v10 = v7;
        v11 = 2;
LABEL_9:
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else if (v8)
    {
      *buf = 138412290;
      v15 = v6;
      v9 = "IconUpdater: Failed to delete legacy icon cache directory: %@";
      v10 = v7;
      v11 = 12;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "IconUpdater: Legacy icon cache directory does not exist. Nothing else to do.", buf, 2u);
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

@end