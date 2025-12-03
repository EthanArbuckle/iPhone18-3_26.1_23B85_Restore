@interface DDSRemoteSyncState
+ (double)timeIntervalUntilNextRegularUpdate;
- (BOOL)shouldInitiateRegularUpdateCycle;
- (BOOL)shouldRequestCompleteRefresh;
- (DDSRemoteSyncState)initWithDelegate:(id)delegate assetType:(id)type;
- (DDSRemoteSyncStateDelegate)delegate;
- (NSString)metadataSyncStatePreferenceKey;
- (NSString)scheduleRetryIdentifier;
- (NSString)scheduleUpdateIdentifier;
- (double)nextUpdateTimeIntervalForAttemptCount:(unint64_t)count;
- (double)timeBetweenSyncs;
- (void)beganUpdateCycle;
- (void)completedUpdateCycleWithError:(id)error;
- (void)loadState;
- (void)loadStateAndScheduleUpdate;
- (void)performScheduledActivityWithIdentifier:(id)identifier;
- (void)requestCompleteRefresh;
- (void)requestRetry;
- (void)requestUpdate;
- (void)resetState;
- (void)saveState;
- (void)scheduleRegularUpdate;
- (void)scheduleRetry;
@end

@implementation DDSRemoteSyncState

- (DDSRemoteSyncState)initWithDelegate:(id)delegate assetType:(id)type
{
  delegateCopy = delegate;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = DDSRemoteSyncState;
  v8 = [(DDSRemoteSyncState *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_assetType = typeCopy;
    [(DDSRemoteSyncState *)v8 setDelegate:delegateCopy];
    v10 = objc_alloc_init(DDSBackgroundActivityScheduler);
    [(DDSRemoteSyncState *)v9 setScheduler:v10];

    scheduler = [(DDSRemoteSyncState *)v9 scheduler];
    [scheduler setDelegate:v9];

    date = [MEMORY[0x1E695DF00] date];
    [(DDSRemoteSyncState *)v9 setDate:date];

    buildVersionString = [objc_opt_class() buildVersionString];
    [(DDSRemoteSyncState *)v9 setBuildVersion:buildVersionString];

    [(DDSRemoteSyncState *)v9 setSyncStatus:0];
  }

  return v9;
}

- (void)loadStateAndScheduleUpdate
{
  [(DDSRemoteSyncState *)self loadState];
  [(DDSRemoteSyncState *)self scheduleRegularUpdate];
  if ([(DDSRemoteSyncState *)self shouldRequestCompleteRefresh])
  {

    [(DDSRemoteSyncState *)self requestCompleteRefresh];
  }

  else if ([(DDSRemoteSyncState *)self shouldInitiateRegularUpdateCycle])
  {

    [(DDSRemoteSyncState *)self requestUpdate];
  }
}

- (NSString)scheduleUpdateIdentifier
{
  assetType = [(DDSRemoteSyncState *)self assetType];
  v4 = [assetType isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  v5 = @"com.apple.DataDeliveryServices.update";
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetType2 = [(DDSRemoteSyncState *)self assetType];
    v5 = [v6 initWithFormat:@"%@.%@", @"com.apple.DataDeliveryServices.update", assetType2];
  }

  return v5;
}

- (NSString)scheduleRetryIdentifier
{
  assetType = [(DDSRemoteSyncState *)self assetType];
  v4 = [assetType isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  v5 = @"com.apple.DataDeliveryServices.retry";
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetType2 = [(DDSRemoteSyncState *)self assetType];
    v5 = [v6 initWithFormat:@"%@.%@", @"com.apple.DataDeliveryServices.retry", assetType2];
  }

  return v5;
}

- (void)scheduleRegularUpdate
{
  [(DDSRemoteSyncState *)self timeBetweenSyncs];
  v4 = v3;
  scheduler = [(DDSRemoteSyncState *)self scheduler];
  scheduleUpdateIdentifier = [(DDSRemoteSyncState *)self scheduleUpdateIdentifier];
  [scheduler scheduleActivityWithIdentifier:scheduleUpdateIdentifier interval:v4 tolerance:v4 * 0.5];
}

- (void)scheduleRetry
{
  [(DDSRemoteSyncState *)self nextUpdateTimeIntervalForAttemptCount:[(DDSRemoteSyncState *)self attemptCount]];
  v4 = v3;
  scheduler = [(DDSRemoteSyncState *)self scheduler];
  scheduleRetryIdentifier = [(DDSRemoteSyncState *)self scheduleRetryIdentifier];
  [scheduler scheduleActivityWithIdentifier:scheduleRetryIdentifier interval:v4 tolerance:v4 * 0.5];
}

- (BOOL)shouldRequestCompleteRefresh
{
  v15 = *MEMORY[0x1E69E9840];
  buildVersionString = [objc_opt_class() buildVersionString];
  buildVersion = [(DDSRemoteSyncState *)self buildVersion];
  v5 = [buildVersionString isEqualToString:buildVersion];

  if ((v5 & 1) == 0)
  {
    v6 = UpdateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      buildVersion2 = [(DDSRemoteSyncState *)self buildVersion];
      v11 = 138412546;
      v12 = buildVersionString;
      v13 = 2112;
      v14 = buildVersion2;
      _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Determined new build version: %@, previously on: %@", &v11, 0x16u);
    }

    buildVersionString2 = [objc_opt_class() buildVersionString];
    [(DDSRemoteSyncState *)self setBuildVersion:buildVersionString2];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 ^ 1;
}

- (BOOL)shouldInitiateRegularUpdateCycle
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(DDSRemoteSyncState *)self syncStatus]|| [(DDSRemoteSyncState *)self attemptCount]> 9)
  {
    date = [(DDSRemoteSyncState *)self date];
    [date timeIntervalSinceNow];
    v4 = v6 < -86400.0;

    v3 = UpdateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      date2 = [(DDSRemoteSyncState *)self date];
      [date2 timeIntervalSinceNow];
      v9 = -v8;
      date3 = [(DDSRemoteSyncState *)self date];
      v13 = 134218242;
      v14 = v9;
      v15 = 2112;
      v16 = date3;
      _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Time elapsed since last update: %f, date: %@", &v13, 0x16u);
    }
  }

  else
  {
    v3 = UpdateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Triggering regular asset update request as previous request seems to have failed", &v13, 2u);
    }

    v4 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)beganUpdateCycle
{
  if ([(DDSRemoteSyncState *)self syncStatus]!= 1)
  {

    [(DDSRemoteSyncState *)self setSyncStatus:1];
  }
}

- (void)completedUpdateCycleWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    [(DDSRemoteSyncState *)self setDate:date];

    selfCopy2 = self;
    v7 = 2;
LABEL_9:
    [(DDSRemoteSyncState *)selfCopy2 setSyncStatus:v7];
    [(DDSRemoteSyncState *)self setAttemptCount:0];
    goto LABEL_10;
  }

  if ([(DDSRemoteSyncState *)self attemptCount]> 9)
  {
    v8 = UpdateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Sync failed, giving up for today", v10, 2u);
    }

    selfCopy2 = self;
    v7 = 3;
    goto LABEL_9;
  }

  if ([(DDSRemoteSyncState *)self syncStatus]== 1)
  {
    [(DDSRemoteSyncState *)self setSyncStatus:0];
    [(DDSRemoteSyncState *)self setAttemptCount:[(DDSRemoteSyncState *)self attemptCount]+ 1];
    [(DDSRemoteSyncState *)self scheduleRetry];
  }

  else if (![(DDSRemoteSyncState *)self syncStatus])
  {
    v9 = UpdateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Retry already scheduled", buf, 2u);
    }
  }

LABEL_10:
  [(DDSRemoteSyncState *)self saveState];
}

- (void)requestUpdate
{
  delegate = [(DDSRemoteSyncState *)self delegate];
  assetType = [(DDSRemoteSyncState *)self assetType];
  [delegate remoteSyncStateRequestsUpdateForAssetType:assetType];
}

- (void)requestRetry
{
  v3 = UpdateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Requesting retry...", v6, 2u);
  }

  delegate = [(DDSRemoteSyncState *)self delegate];
  assetType = [(DDSRemoteSyncState *)self assetType];
  [delegate remoteSyncStateRequestsRetryForAssetType:assetType];
}

- (void)requestCompleteRefresh
{
  v3 = UpdateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Requesting complete refresh...", v6, 2u);
  }

  delegate = [(DDSRemoteSyncState *)self delegate];
  assetType = [(DDSRemoteSyncState *)self assetType];
  [delegate remoteSyncStateRequestsResetForAssetType:assetType];
}

- (void)performScheduledActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  scheduleUpdateIdentifier = [(DDSRemoteSyncState *)self scheduleUpdateIdentifier];
  v5 = [identifierCopy isEqualToString:scheduleUpdateIdentifier];

  if (v5)
  {
    [(DDSRemoteSyncState *)self resetState];
    [(DDSRemoteSyncState *)self requestUpdate];
    [(DDSRemoteSyncState *)self scheduleRegularUpdate];
  }

  else
  {
    scheduleRetryIdentifier = [(DDSRemoteSyncState *)self scheduleRetryIdentifier];
    v7 = [identifierCopy isEqualToString:scheduleRetryIdentifier];

    if (v7)
    {
      [(DDSRemoteSyncState *)self requestRetry];
    }
  }
}

- (NSString)metadataSyncStatePreferenceKey
{
  assetType = [(DDSRemoteSyncState *)self assetType];
  v4 = [assetType isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  v5 = @"MetadataSyncState";
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    assetType2 = [(DDSRemoteSyncState *)self assetType];
    v5 = [v6 initWithFormat:@"%@.%@", @"MetadataSyncState", assetType2];
  }

  return v5;
}

- (void)resetState
{
  [(DDSRemoteSyncState *)self setSyncStatus:0];
  [(DDSRemoteSyncState *)self setAttemptCount:0];

  [(DDSRemoteSyncState *)self saveState];
}

- (void)loadState
{
  v36 = *MEMORY[0x1E69E9840];
  metadataSyncStatePreferenceKey = [(DDSRemoteSyncState *)self metadataSyncStatePreferenceKey];
  v4 = DDSGetPreferenceObjectForKey(metadataSyncStatePreferenceKey);

  v5 = [v4 objectForKey:@"Date"];
  v6 = v5;
  if (v5)
  {
    date = v5;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v8 = date;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [DDSRemoteSyncState loadState];
  }

  date2 = [MEMORY[0x1E695DF00] date];
  v10 = [v8 earlierDate:date2];
  [(DDSRemoteSyncState *)self setDate:v10];

  v11 = [v4 objectForKey:@"BuildVersion"];
  v12 = v11;
  if (v11)
  {
    buildVersionString = v11;
  }

  else
  {
    buildVersionString = [objc_opt_class() buildVersionString];
  }

  v14 = buildVersionString;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [DDSRemoteSyncState loadState];
  }

  [(DDSRemoteSyncState *)self setBuildVersion:v14];
  v15 = [v4 objectForKey:@"Status"];
  integerValue = [v15 integerValue];

  if (integerValue == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = integerValue;
  }

  if (integerValue <= 3)
  {
    v18 = v17;
  }

  else
  {
    v18 = 2;
  }

  [(DDSRemoteSyncState *)self setSyncStatus:v18];
  v19 = [v4 objectForKey:@"AttemptCount"];
  integerValue2 = [v19 integerValue];

  if (integerValue2 < 0)
  {
    [DDSRemoteSyncState loadState];
  }

  [(DDSRemoteSyncState *)self setAttemptCount:integerValue2];
  v21 = UpdateLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    assetType = [(DDSRemoteSyncState *)self assetType];
    date3 = [(DDSRemoteSyncState *)self date];
    buildVersion = [(DDSRemoteSyncState *)self buildVersion];
    v26 = 138544386;
    v27 = assetType;
    v28 = 2114;
    v29 = date3;
    v30 = 2114;
    v31 = buildVersion;
    v32 = 2050;
    attemptCount = [(DDSRemoteSyncState *)self attemptCount];
    v34 = 2050;
    syncStatus = [(DDSRemoteSyncState *)self syncStatus];
    _os_log_impl(&dword_1DF7C6000, v21, OS_LOG_TYPE_DEFAULT, "Loaded sync state for asset type: %{public}@ (date: %{public}@, buildVersion: %{public}@, attempts: %{public}lu, status: %{public}lu)", &v26, 0x34u);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)saveState
{
  v18 = *MEMORY[0x1E69E9840];
  assetType = [self assetType];
  date = [self date];
  buildVersion = [self buildVersion];
  v8 = 138544386;
  v9 = assetType;
  v10 = 2114;
  v11 = date;
  v12 = 2114;
  v13 = buildVersion;
  v14 = 2050;
  attemptCount = [self attemptCount];
  v16 = 2050;
  syncStatus = [self syncStatus];
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Saving sync state for asset type: %{public}@ (date: %{public}@, buildVersion: %{public}@, attempts: %{public}lu, status: %{public}lu", &v8, 0x34u);

  v7 = *MEMORY[0x1E69E9840];
}

- (double)nextUpdateTimeIntervalForAttemptCount:(unint64_t)count
{
  if (count - 1 > 7)
  {
    return 10800.0;
  }

  else
  {
    return dbl_1DF7EDC30[count - 1];
  }
}

+ (double)timeIntervalUntilNextRegularUpdate
{
  v2 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [v2 components:30 fromDate:date];

  v5 = [v2 dateFromComponents:v4];
  v6 = arc4random() % 3;
  v7 = arc4random() % 0x3C;
  v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v8 setDay:1];
  [v8 setHour:v6 + 2];
  [v8 setMinute:v7];
  v9 = [v2 dateByAddingComponents:v8 toDate:v5 options:0];
  date2 = [MEMORY[0x1E695DF00] date];
  [date2 timeIntervalSinceDate:v9];
  v12 = fabs(v11);

  return v12;
}

- (double)timeBetweenSyncs
{
  v2 = DDSGetPreferenceIntForKey(@"timerOverrideDuration");
  if (v2 >= 1)
  {
    return v2;
  }

  v4 = objc_opt_class();

  [v4 timeIntervalUntilNextRegularUpdate];
  return result;
}

- (DDSRemoteSyncStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end