@interface DDSRemoteSyncState
+ (double)timeIntervalUntilNextRegularUpdate;
- (BOOL)shouldInitiateRegularUpdateCycle;
- (BOOL)shouldRequestCompleteRefresh;
- (DDSRemoteSyncState)initWithDelegate:(id)a3 assetType:(id)a4;
- (DDSRemoteSyncStateDelegate)delegate;
- (NSString)metadataSyncStatePreferenceKey;
- (NSString)scheduleRetryIdentifier;
- (NSString)scheduleUpdateIdentifier;
- (double)nextUpdateTimeIntervalForAttemptCount:(unint64_t)a3;
- (double)timeBetweenSyncs;
- (void)beganUpdateCycle;
- (void)completedUpdateCycleWithError:(id)a3;
- (void)loadState;
- (void)loadStateAndScheduleUpdate;
- (void)performScheduledActivityWithIdentifier:(id)a3;
- (void)requestCompleteRefresh;
- (void)requestRetry;
- (void)requestUpdate;
- (void)resetState;
- (void)saveState;
- (void)scheduleRegularUpdate;
- (void)scheduleRetry;
@end

@implementation DDSRemoteSyncState

- (DDSRemoteSyncState)initWithDelegate:(id)a3 assetType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = DDSRemoteSyncState;
  v8 = [(DDSRemoteSyncState *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_assetType = v7;
    [(DDSRemoteSyncState *)v8 setDelegate:v6];
    v10 = objc_alloc_init(DDSBackgroundActivityScheduler);
    [(DDSRemoteSyncState *)v9 setScheduler:v10];

    v11 = [(DDSRemoteSyncState *)v9 scheduler];
    [v11 setDelegate:v9];

    v12 = [MEMORY[0x1E695DF00] date];
    [(DDSRemoteSyncState *)v9 setDate:v12];

    v13 = [objc_opt_class() buildVersionString];
    [(DDSRemoteSyncState *)v9 setBuildVersion:v13];

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
  v3 = [(DDSRemoteSyncState *)self assetType];
  v4 = [v3 isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  v5 = @"com.apple.DataDeliveryServices.update";
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [(DDSRemoteSyncState *)self assetType];
    v5 = [v6 initWithFormat:@"%@.%@", @"com.apple.DataDeliveryServices.update", v7];
  }

  return v5;
}

- (NSString)scheduleRetryIdentifier
{
  v3 = [(DDSRemoteSyncState *)self assetType];
  v4 = [v3 isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  v5 = @"com.apple.DataDeliveryServices.retry";
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [(DDSRemoteSyncState *)self assetType];
    v5 = [v6 initWithFormat:@"%@.%@", @"com.apple.DataDeliveryServices.retry", v7];
  }

  return v5;
}

- (void)scheduleRegularUpdate
{
  [(DDSRemoteSyncState *)self timeBetweenSyncs];
  v4 = v3;
  v6 = [(DDSRemoteSyncState *)self scheduler];
  v5 = [(DDSRemoteSyncState *)self scheduleUpdateIdentifier];
  [v6 scheduleActivityWithIdentifier:v5 interval:v4 tolerance:v4 * 0.5];
}

- (void)scheduleRetry
{
  [(DDSRemoteSyncState *)self nextUpdateTimeIntervalForAttemptCount:[(DDSRemoteSyncState *)self attemptCount]];
  v4 = v3;
  v6 = [(DDSRemoteSyncState *)self scheduler];
  v5 = [(DDSRemoteSyncState *)self scheduleRetryIdentifier];
  [v6 scheduleActivityWithIdentifier:v5 interval:v4 tolerance:v4 * 0.5];
}

- (BOOL)shouldRequestCompleteRefresh
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() buildVersionString];
  v4 = [(DDSRemoteSyncState *)self buildVersion];
  v5 = [v3 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = UpdateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(DDSRemoteSyncState *)self buildVersion];
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Determined new build version: %@, previously on: %@", &v11, 0x16u);
    }

    v8 = [objc_opt_class() buildVersionString];
    [(DDSRemoteSyncState *)self setBuildVersion:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 ^ 1;
}

- (BOOL)shouldInitiateRegularUpdateCycle
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(DDSRemoteSyncState *)self syncStatus]|| [(DDSRemoteSyncState *)self attemptCount]> 9)
  {
    v5 = [(DDSRemoteSyncState *)self date];
    [v5 timeIntervalSinceNow];
    v4 = v6 < -86400.0;

    v3 = UpdateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(DDSRemoteSyncState *)self date];
      [v7 timeIntervalSinceNow];
      v9 = -v8;
      v10 = [(DDSRemoteSyncState *)self date];
      v13 = 134218242;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
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

- (void)completedUpdateCycleWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [(DDSRemoteSyncState *)self setDate:v5];

    v6 = self;
    v7 = 2;
LABEL_9:
    [(DDSRemoteSyncState *)v6 setSyncStatus:v7];
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

    v6 = self;
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
  v4 = [(DDSRemoteSyncState *)self delegate];
  v3 = [(DDSRemoteSyncState *)self assetType];
  [v4 remoteSyncStateRequestsUpdateForAssetType:v3];
}

- (void)requestRetry
{
  v3 = UpdateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Requesting retry...", v6, 2u);
  }

  v4 = [(DDSRemoteSyncState *)self delegate];
  v5 = [(DDSRemoteSyncState *)self assetType];
  [v4 remoteSyncStateRequestsRetryForAssetType:v5];
}

- (void)requestCompleteRefresh
{
  v3 = UpdateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Requesting complete refresh...", v6, 2u);
  }

  v4 = [(DDSRemoteSyncState *)self delegate];
  v5 = [(DDSRemoteSyncState *)self assetType];
  [v4 remoteSyncStateRequestsResetForAssetType:v5];
}

- (void)performScheduledActivityWithIdentifier:(id)a3
{
  v8 = a3;
  v4 = [(DDSRemoteSyncState *)self scheduleUpdateIdentifier];
  v5 = [v8 isEqualToString:v4];

  if (v5)
  {
    [(DDSRemoteSyncState *)self resetState];
    [(DDSRemoteSyncState *)self requestUpdate];
    [(DDSRemoteSyncState *)self scheduleRegularUpdate];
  }

  else
  {
    v6 = [(DDSRemoteSyncState *)self scheduleRetryIdentifier];
    v7 = [v8 isEqualToString:v6];

    if (v7)
    {
      [(DDSRemoteSyncState *)self requestRetry];
    }
  }
}

- (NSString)metadataSyncStatePreferenceKey
{
  v3 = [(DDSRemoteSyncState *)self assetType];
  v4 = [v3 isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

  v5 = @"MetadataSyncState";
  if ((v4 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [(DDSRemoteSyncState *)self assetType];
    v5 = [v6 initWithFormat:@"%@.%@", @"MetadataSyncState", v7];
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
  v3 = [(DDSRemoteSyncState *)self metadataSyncStatePreferenceKey];
  v4 = DDSGetPreferenceObjectForKey(v3);

  v5 = [v4 objectForKey:@"Date"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] date];
  }

  v8 = v7;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [DDSRemoteSyncState loadState];
  }

  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [v8 earlierDate:v9];
  [(DDSRemoteSyncState *)self setDate:v10];

  v11 = [v4 objectForKey:@"BuildVersion"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [objc_opt_class() buildVersionString];
  }

  v14 = v13;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [DDSRemoteSyncState loadState];
  }

  [(DDSRemoteSyncState *)self setBuildVersion:v14];
  v15 = [v4 objectForKey:@"Status"];
  v16 = [v15 integerValue];

  if (v16 == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  if (v16 <= 3)
  {
    v18 = v17;
  }

  else
  {
    v18 = 2;
  }

  [(DDSRemoteSyncState *)self setSyncStatus:v18];
  v19 = [v4 objectForKey:@"AttemptCount"];
  v20 = [v19 integerValue];

  if (v20 < 0)
  {
    [DDSRemoteSyncState loadState];
  }

  [(DDSRemoteSyncState *)self setAttemptCount:v20];
  v21 = UpdateLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(DDSRemoteSyncState *)self assetType];
    v23 = [(DDSRemoteSyncState *)self date];
    v24 = [(DDSRemoteSyncState *)self buildVersion];
    v26 = 138544386;
    v27 = v22;
    v28 = 2114;
    v29 = v23;
    v30 = 2114;
    v31 = v24;
    v32 = 2050;
    v33 = [(DDSRemoteSyncState *)self attemptCount];
    v34 = 2050;
    v35 = [(DDSRemoteSyncState *)self syncStatus];
    _os_log_impl(&dword_1DF7C6000, v21, OS_LOG_TYPE_DEFAULT, "Loaded sync state for asset type: %{public}@ (date: %{public}@, buildVersion: %{public}@, attempts: %{public}lu, status: %{public}lu)", &v26, 0x34u);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)saveState
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a1 assetType];
  v5 = [a1 date];
  v6 = [a1 buildVersion];
  v8 = 138544386;
  v9 = v4;
  v10 = 2114;
  v11 = v5;
  v12 = 2114;
  v13 = v6;
  v14 = 2050;
  v15 = [a1 attemptCount];
  v16 = 2050;
  v17 = [a1 syncStatus];
  _os_log_debug_impl(&dword_1DF7C6000, a2, OS_LOG_TYPE_DEBUG, "Saving sync state for asset type: %{public}@ (date: %{public}@, buildVersion: %{public}@, attempts: %{public}lu, status: %{public}lu", &v8, 0x34u);

  v7 = *MEMORY[0x1E69E9840];
}

- (double)nextUpdateTimeIntervalForAttemptCount:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return 10800.0;
  }

  else
  {
    return dbl_1DF7EDC30[a3 - 1];
  }
}

+ (double)timeIntervalUntilNextRegularUpdate
{
  v2 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 components:30 fromDate:v3];

  v5 = [v2 dateFromComponents:v4];
  v6 = arc4random() % 3;
  v7 = arc4random() % 0x3C;
  v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v8 setDay:1];
  [v8 setHour:v6 + 2];
  [v8 setMinute:v7];
  v9 = [v2 dateByAddingComponents:v8 toDate:v5 options:0];
  v10 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSinceDate:v9];
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