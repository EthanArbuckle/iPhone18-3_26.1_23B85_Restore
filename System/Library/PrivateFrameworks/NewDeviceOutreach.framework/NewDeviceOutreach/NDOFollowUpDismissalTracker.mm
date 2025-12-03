@interface NDOFollowUpDismissalTracker
+ (BOOL)followUpIsDismissedForSerial:(id)serial;
+ (id)_dismissedSerialNumberHashes;
+ (id)uniqueIdentfierForSerialNumber:(id)number;
+ (void)eraseAllFollowUpDismissals;
+ (void)eraseFollowUpDismissalForDeviceSerial:(id)serial;
+ (void)storeFollowUpDismissalWithDeviceSerial:(id)serial;
@end

@implementation NDOFollowUpDismissalTracker

+ (id)_dismissedSerialNumberHashes
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"FollowupDismissedSerialNumberHashes"];
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

+ (id)uniqueIdentfierForSerialNumber:(id)number
{
  if (number)
  {
    sha256Hash = [number sha256Hash];
    v4 = [@"com.apple.NewDeviceOutreach" stringByAppendingFormat:@".%@", sha256Hash];
  }

  else
  {
    v4 = @"com.apple.NewDeviceOutreach";
  }

  return v4;
}

+ (void)storeFollowUpDismissalWithDeviceSerial:(id)serial
{
  v20 = *MEMORY[0x277D85DE8];
  serialCopy = serial;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136446467;
    v17 = "+[NDOFollowUpDismissalTracker storeFollowUpDismissalWithDeviceSerial:]";
    v18 = 2113;
    v19 = serialCopy;
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - Storing follow up dismissal by user %{private}@ ", &v16, 0x16u);
  }

  _dismissedSerialNumberHashes = [self _dismissedSerialNumberHashes];
  v7 = [_dismissedSerialNumberHashes mutableCopy];

  sha256Hash = [serialCopy sha256Hash];
  [v7 addObject:sha256Hash];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  allObjects = [v7 allObjects];
  [standardUserDefaults setObject:allObjects forKey:@"FollowupDismissedSerialNumberHashes"];

  sha256Hash2 = [serialCopy sha256Hash];
  v12 = [sha256Hash2 stringByAppendingString:@".dismissed"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  date = [MEMORY[0x277CBEAA8] date];
  [standardUserDefaults2 setObject:date forKey:v12];

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)eraseFollowUpDismissalForDeviceSerial:(id)serial
{
  v17 = *MEMORY[0x277D85DE8];
  serialCopy = serial;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136446210;
    v16 = "+[NDOFollowUpDismissalTracker eraseFollowUpDismissalForDeviceSerial:]";
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - Erasing follow up dismissal for device", &v15, 0xCu);
  }

  _dismissedSerialNumberHashes = [self _dismissedSerialNumberHashes];
  v7 = [_dismissedSerialNumberHashes mutableCopy];

  sha256Hash = [serialCopy sha256Hash];
  [v7 removeObject:sha256Hash];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  allObjects = [v7 allObjects];
  [standardUserDefaults setObject:allObjects forKey:@"FollowupDismissedSerialNumberHashes"];

  sha256Hash2 = [serialCopy sha256Hash];

  v12 = [sha256Hash2 stringByAppendingString:@".dismissed"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 removeObjectForKey:v12];

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

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"FollowupDismissedSerialNumberHashes"];

  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)followUpIsDismissedForSerial:(id)serial
{
  v15 = *MEMORY[0x277D85DE8];
  serialCopy = serial;
  _dismissedSerialNumberHashes = [self _dismissedSerialNumberHashes];
  sha256Hash = [serialCopy sha256Hash];

  v7 = [_dismissedSerialNumberHashes containsObject:sha256Hash];
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