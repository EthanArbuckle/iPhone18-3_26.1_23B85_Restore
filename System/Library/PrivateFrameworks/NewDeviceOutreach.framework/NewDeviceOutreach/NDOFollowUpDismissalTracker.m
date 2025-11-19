@interface NDOFollowUpDismissalTracker
+ (BOOL)followUpIsDismissedForSerial:(id)a3;
+ (id)_dismissedSerialNumberHashes;
+ (id)uniqueIdentfierForSerialNumber:(id)a3;
+ (void)eraseAllFollowUpDismissals;
+ (void)eraseFollowUpDismissalForDeviceSerial:(id)a3;
+ (void)storeFollowUpDismissalWithDeviceSerial:(id)a3;
@end

@implementation NDOFollowUpDismissalTracker

+ (id)_dismissedSerialNumberHashes
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"FollowupDismissedSerialNumberHashes"];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x277CBEB98] setWithArray:v6];

  return v7;
}

+ (id)uniqueIdentfierForSerialNumber:(id)a3
{
  if (a3)
  {
    v3 = [a3 sha256Hash];
    v4 = [@"com.apple.NewDeviceOutreach" stringByAppendingFormat:@".%@", v3];
  }

  else
  {
    v4 = @"com.apple.NewDeviceOutreach";
  }

  return v4;
}

+ (void)storeFollowUpDismissalWithDeviceSerial:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446467;
    v17 = "+[NDOFollowUpDismissalTracker storeFollowUpDismissalWithDeviceSerial:]";
    v18 = 2113;
    v19 = v4;
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - Storing follow up dismissal by user %{private}@ ", &v16, 0x16u);
  }

  v6 = [a1 _dismissedSerialNumberHashes];
  v7 = [v6 mutableCopy];

  v8 = [v4 sha256Hash];
  [v7 addObject:v8];

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v7 allObjects];
  [v9 setObject:v10 forKey:@"FollowupDismissedSerialNumberHashes"];

  v11 = [v4 sha256Hash];
  v12 = [v11 stringByAppendingString:@".dismissed"];

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v14 = [MEMORY[0x277CBEAA8] date];
  [v13 setObject:v14 forKey:v12];

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)eraseFollowUpDismissalForDeviceSerial:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446210;
    v16 = "+[NDOFollowUpDismissalTracker eraseFollowUpDismissalForDeviceSerial:]";
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - Erasing follow up dismissal for device", &v15, 0xCu);
  }

  v6 = [a1 _dismissedSerialNumberHashes];
  v7 = [v6 mutableCopy];

  v8 = [v4 sha256Hash];
  [v7 removeObject:v8];

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v7 allObjects];
  [v9 setObject:v10 forKey:@"FollowupDismissedSerialNumberHashes"];

  v11 = [v4 sha256Hash];

  v12 = [v11 stringByAppendingString:@".dismissed"];

  v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v13 removeObjectForKey:v12];

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)eraseAllFollowUpDismissals
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "+[NDOFollowUpDismissalTracker eraseAllFollowUpDismissals]";
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s - Erasing all follow up dismissals", &v5, 0xCu);
  }

  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 removeObjectForKey:@"FollowupDismissedSerialNumberHashes"];

  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)followUpIsDismissedForSerial:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _dismissedSerialNumberHashes];
  v6 = [v4 sha256Hash];

  v7 = [v5 containsObject:v6];
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "+[NDOFollowUpDismissalTracker followUpIsDismissedForSerial:]";
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_25BD52000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s - isDismissedByUser: %d", &v11, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

@end