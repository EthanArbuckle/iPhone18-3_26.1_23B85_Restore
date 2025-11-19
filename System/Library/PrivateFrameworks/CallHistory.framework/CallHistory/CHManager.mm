@interface CHManager
+ (id)limitingCallKindsForCallType:(unsigned int)a3;
+ (unsigned)CHCallStatusForCallWithDuration:(double)a3 isOriginated:(BOOL)a4 isAnswered:(BOOL)a5;
- (BOOL)canLoadOlderRecentCalls;
- (BOOL)showsFaceTimeAudioCalls;
- (BOOL)showsFaceTimeVideoCalls;
- (BOOL)showsTelephonyCalls;
- (CHManager)init;
- (CHManager)initWithContactStore:(id)a3 featureFlags:(id)a4 protectedAppProvider:(id)a5 queue:(id)a6;
- (CHManager)initWithFetchingLimitsDictionary:(id)a3 andCoalescingStrategy:(id)a4 andPostFetchingPredicate:(id)a5 withQueue:(id)a6;
- (CHManager)initWithQueue:(id)a3;
- (NSArray)limitingCallKinds;
- (NSArray)recentCalls;
- (NSArray)uncoalescedRecentCallsSync;
- (NSDate)limitingEndDate;
- (NSDate)limitingStartDate;
- (NSPredicate)postFetchingPredicate;
- (NSSet)allowedProtectedAppBundleIDs;
- (NSString)coalescingStrategy;
- (SyncManagerProtocol)syncManager;
- (double)callTimersGetIncoming;
- (double)callTimersGetLifetime;
- (double)callTimersGetOutgoing;
- (id)_coalescingHashForGroupCall:(id)a3 usingContactsIfPresent:(id)a4;
- (id)_contactIdentifiersByHandleForCalls:(id)a3;
- (id)applyPredicate:(id)a3 toCalls:(id)a4;
- (id)callIdentifiersWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 batchSize:(unint64_t)a6;
- (id)callsWithLimits:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 batchSize:(unint64_t)a6;
- (id)callsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 batchSize:(unint64_t)a6;
- (id)coalescedCallsWithCalls:(id)a3 usingStrategy:(id)a4;
- (id)coalescedCallsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 batchSize:(unint64_t)a6;
- (id)fetchRecentCallsSyncWithCoalescing:(BOOL)a3;
- (id)getLimitsDictionary;
- (id)getLimitsDictionaryForPrivateHeader;
- (id)latestCallMatchingNormalizedRemoteParticipantHandleValues:(id)a3;
- (id)latestRecentCallMatchingPredicate:(id)a3;
- (id)loadOlderRecentCallsWithPredicate:(id)a3;
- (id)protectedBundleIDsExcludingCurrentProcess;
- (id)recentCallsWithPredicate:(id)a3;
- (id)unCoalesceCall:(id)a3;
- (int64_t)callHistoryDBFetchLimit;
- (int64_t)deleteCallsWithPredicate:(id)a3;
- (int64_t)setRead:(BOOL)a3 forCallsWithPredicate:(id)a4;
- (unint64_t)callCountWithPredicate:(id)a3;
- (unint64_t)coalescedCallCountWithPredicate:(id)a3;
- (unint64_t)countCallsWithPredicate:(id)a3;
- (unint64_t)countCallsWithPredicateSync:(id)a3;
- (unint64_t)databaseSizeInBytes;
- (unint64_t)estimateDatabaseSizeInBytes;
- (unsigned)limitingCallTypes;
- (void)addArrayToCallHistory:(id)a3;
- (void)addArrayToCallHistory:(id)a3 withCompletion:(id)a4;
- (void)addMultipleCallsToCallHistory:(id)a3;
- (void)addMultipleCallsToCallHistoryWithTransactions:(id)a3;
- (void)addToCallHistory:(id)a3;
- (void)callTimersReset;
- (void)clearDatabase;
- (void)currentLocaleChanged:(id)a3;
- (void)dealloc;
- (void)deleteAllCalls;
- (void)deleteAllCallsSync;
- (void)deleteCall:(id)a3;
- (void)deleteCallAtIndex:(unint64_t)a3;
- (void)deleteCalls:(id)a3 withCompletion:(id)a4;
- (void)deleteCallsWithPredicate:(id)a3 completion:(id)a4;
- (void)deleteTheseCalls:(id)a3;
- (void)deleteTheseCallsSync:(id)a3;
- (void)handleCallHistoryContactStoreChangedInternalNotification:(id)a3;
- (void)handleCallHistoryDatabaseChangedInternalNotification:(id)a3;
- (void)markAllCallsAsReadWithPredicate:(id)a3;
- (void)protectedAppsChanged;
- (void)registerForNotifications;
- (void)resetCalls;
- (void)setAllowedProtectedAppBundleIDs:(id)a3;
- (void)setCoalescingStrategy:(id)a3;
- (void)setDefaultInitValues;
- (void)setInitialLimitingCallKinds:(id)a3;
- (void)setLimitingCallKinds:(id)a3;
- (void)setLimitingCallKindsSync:(id)a3;
- (void)setLimitingCallTypes:(unsigned int)a3;
- (void)setLimitingEndDate:(id)a3;
- (void)setLimitingStartDate:(id)a3;
- (void)setOutgoingLocalParticipantUUID:(id)a3 forRecentCallsMatchingPredicate:(id)a4;
- (void)setPostFetchingPredicate:(id)a3;
- (void)setPreFetchingPredicate:(id)a3;
- (void)setRead:(BOOL)a3 forCallsWithPredicate:(id)a4 completion:(id)a5;
- (void)setShowsFaceTimeAudioCalls:(BOOL)a3;
- (void)setShowsFaceTimeVideoCalls:(BOOL)a3;
- (void)setShowsProtectedApps:(BOOL)a3;
- (void)setShowsTelephonyCalls:(BOOL)a3;
- (void)updateAutoAnsweredReasonFor:(id)a3 with:(int64_t)a4;
- (void)updateBytesOfDataUsedFor:(id)a3 with:(id)a4;
- (void)updateEmergencyMediaItemFor:(id)a3 with:(id)a4;
- (void)updateMessageStatusFor:(id)a3 with:(id)a4;
- (void)updateReminderUUID:(id)a3 forRecentCall:(id)a4;
@end

@implementation CHManager

- (CHManager)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v4 = [(CHManager *)self initWithContactStore:v3];

  return v4;
}

- (void)setDefaultInitValues
{
  [(CHManager *)self setLimitingCallTypesSync:0xFFFFFFFFLL];
  self->_showsFaceTimeVideoCalls = 1;
  self->_showsFaceTimeAudioCalls = 1;
  self->_showsTelephonyCalls = 1;
  self->_generateSyncTransactions = 1;
  self->_numberOfUnseenMissedCalls = 0;
  self->_cacheIsDirty = 1;
  self->_reCoalesce = 1;
  uncoalescedUnFilteredRecentCalls = self->_uncoalescedUnFilteredRecentCalls;
  self->_uncoalescedUnFilteredRecentCalls = 0;

  self->_finishedLoadingAllCalls = 0;
  [(CHManager *)self registerForNotifications];

  maybeLogVersionInfo();
}

- (void)registerForNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_handleCallHistoryContactStoreChangedInternalNotification_ name:@"kCallHistoryContactStoreChangedInternalNotification" object:0];
  [v3 addObserver:self selector:sel_handleCallHistoryDatabaseChangedInternalNotification_ name:@"kCallHistoryDatabaseChangedInternalNotification" object:0];
  [v3 addObserver:self selector:sel_currentLocaleChanged_ name:*MEMORY[0x1E695D8F0] object:0];
}

id __24__CHManager_recentCalls__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v10 = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@", &v10, 0xCu);
  }

  v4 = [*(a1 + 32) fetchRecentCallsSyncWithCoalescing:1];
  v5 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = [v4 count];
    v10 = 138543618;
    v11 = v6;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "<== %{public}@ => %lu calls", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSArray)recentCalls
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __24__CHManager_recentCalls__block_invoke;
  v4[3] = &unk_1E81DC320;
  v4[4] = self;
  v4[5] = a2;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (id)protectedBundleIDsExcludingCurrentProcess
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = [(CHManager *)self featureFlags];
  if ([v4 protectedAppsEnabled])
  {
    v5 = [(CHManager *)self showsProtectedApps];

    if (!v5)
    {
      v6 = [(CHManager *)self protectedAppProvider];
      v7 = [v6 protectedApplicationBundleIDs];

      v8 = [(CHSynchronizedLoggable *)self logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v7;
        _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ protected apps to exclude from call history fetches", &v14, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  v8 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CHManager *)self featureFlags];
    if ([v9 protectedAppsEnabled])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if ([(CHManager *)self showsProtectedApps])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v14 = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Protected apps feature flag is off %{public}@ or we allow showing protectedApps %{public}@", &v14, 0x16u);
  }

  v7 = v3;
LABEL_15:

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (SyncManagerProtocol)syncManager
{
  syncManager = self->_syncManager;
  if (!syncManager)
  {
    v4 = objc_alloc_init(SyncManager);
    v5 = self->_syncManager;
    self->_syncManager = v4;

    syncManager = self->_syncManager;
  }

  return syncManager;
}

- (id)getLimitsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  limitingCallKinds = self->_limitingCallKinds;
  if (limitingCallKinds)
  {
    [v3 setObject:limitingCallKinds forKeyedSubscript:@"kCHLimitCallKindsKey"];
  }

  else
  {
    v6 = [CHManager limitingCallKindsForCallType:self->_limitingCallTypes];
    [v4 setObject:v6 forKeyedSubscript:@"kCHLimitCallKindsKey"];
  }

  limitingStartDate = self->_limitingStartDate;
  if (limitingStartDate)
  {
    [v4 setObject:limitingStartDate forKeyedSubscript:@"kCHLimitStartDateKey"];
  }

  limitingEndDate = self->_limitingEndDate;
  if (limitingEndDate)
  {
    [v4 setObject:limitingEndDate forKeyedSubscript:@"kCHLimitEndDateKey"];
  }

  v9 = [(CHManager *)self featureFlags];
  v10 = [v9 protectedAppsEnabled];

  if (v10)
  {
    v11 = [(CHManager *)self protectedBundleIDsExcludingCurrentProcess];
    [v4 setObject:v11 forKeyedSubscript:@"kCHLimitProtectedBundleIDsKey"];
  }

  return v4;
}

- (int64_t)callHistoryDBFetchLimit
{
  v3 = [(CHManager *)self featureFlags];
  v4 = [v3 increaseCallHistoryEnabled];

  if (!v4)
  {
    return 200;
  }

  v5 = [(CHManager *)self featureFlags];
  v6 = [v5 keepCallsEnabled];
  v7 = &kCallHistoryNoFetchLimit;
  if (!v6)
  {
    v7 = &kCallHistoryIncreasedFetchLimit;
  }

  v8 = *v7;

  return v8;
}

- (id)getLimitsDictionaryForPrivateHeader
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CHManager *)self featureFlags];
  v5 = [v4 protectedAppsEnabled];

  if (v5)
  {
    v6 = [(CHManager *)self protectedBundleIDsExcludingCurrentProcess];
    [v3 setObject:v6 forKeyedSubscript:@"kCHLimitProtectedBundleIDsKey"];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)canLoadOlderRecentCalls
{
  v3 = [(CHManager *)self featureFlags];
  if ([v3 increaseCallHistoryEnabled])
  {
    if ([(CHManager *)self finishedLoadingAllCalls])
    {
      v4 = [(CHManager *)self cacheIsDirty];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)resetCalls
{
  [(CHManager *)self setCacheIsDirty:1];
  [(CHManager *)self setFinishedLoadingAllCalls:0];
  [(CHManager *)self setReCoalesce:1];
  if (self->_recentCalls)
  {
    v3 = [(CHManager *)self fetchRecentCallsSyncWithCoalescing:1];
  }
}

- (CHManager)initWithQueue:(id)a3
{
  v4 = MEMORY[0x1E695CE18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(CHManager *)self initWithContactStore:v6 featureFlags:0 protectedAppProvider:0 queue:v5];

  return v7;
}

- (CHManager)initWithContactStore:(id)a3 featureFlags:(id)a4 protectedAppProvider:(id)a5 queue:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = CHManager;
  v12 = [(CHSynchronizedLoggable *)&v21 initWithName:"CHManager"];
  v13 = v12;
  if (v12)
  {
    v14 = [(CHSynchronizedLoggable *)v12 logHandle];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1C3E90000, v14, OS_LOG_TYPE_DEFAULT, "Creating CHManager with default values!", v20, 2u);
    }

    [(CHManager *)v13 setDefaultInitValues];
    v15 = [[CHPhoneBookIOSManager alloc] initWithContactStore:v9];
    phoneBookManager = v13->_phoneBookManager;
    v13->_phoneBookManager = v15;

    v17 = v10;
    if (!v10)
    {
      v17 = objc_alloc_init(CHFeatureFlags);
    }

    objc_storeStrong(&v13->_featureFlags, v17);
    if (!v10)
    {
    }

    v18 = v11;
    if (!v11)
    {
      v18 = objc_alloc_init(CHProtectedAppProvider);
    }

    objc_storeStrong(&v13->_protectedAppProvider, v18);
    if (!v11)
    {
    }

    [(CHProtectedAppProvider *)v13->_protectedAppProvider setDelegate:v13];
  }

  return v13;
}

- (CHManager)initWithFetchingLimitsDictionary:(id)a3 andCoalescingStrategy:(id)a4 andPostFetchingPredicate:(id)a5 withQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CHManager *)self initWithQueue:a6];
  v14 = v13;
  if (v13)
  {
    v15 = [(CHSynchronizedLoggable *)v13 logHandle];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1C3E90000, v15, OS_LOG_TYPE_DEFAULT, "Creating CHManager with user values!", v17, 2u);
    }

    [(CHManager *)v14 setInitialLimitingCallKinds:v10];
    objc_storeStrong(&v14->_coalescingStrategy, a4);
    objc_storeStrong(&v14->_postFetchingPredicate, a5);
  }

  return v14;
}

- (void)setInitialLimitingCallKinds:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v27 = v4;
    v5 = [v4 objectForKeyedSubscript:@"kCHLimitCallKindsKey"];

    if (v5)
    {
      v6 = [v27 objectForKeyedSubscript:@"kCHLimitCallKindsKey"];
      [(CHManager *)self setLimitingCallKindsSync:v6];
    }

    else
    {
      v7 = [v27 objectForKeyedSubscript:@"kCHLimitCallTypeKey"];
      if (v7)
      {
        v8 = [v27 objectForKeyedSubscript:@"kCHLimitCallTypeKey"];
        v9 = v8;
      }

      else
      {
        v9 = -1;
      }

      v10 = [v27 objectForKeyedSubscript:@"kCHLimitStartDateKey"];
      if (v10)
      {
        v11 = [v27 objectForKeyedSubscript:@"kCHLimitStartDateKey"];
      }

      else
      {
        v11 = 0;
      }

      objc_storeStrong(&self->_limitingStartDate, v11);
      if (v10)
      {
      }

      v12 = [v27 objectForKeyedSubscript:@"kCHLimitEndDateKey"];
      if (v12)
      {
        v13 = [v27 objectForKeyedSubscript:@"kCHLimitEndDateKey"];
      }

      else
      {
        v13 = 0;
      }

      objc_storeStrong(&self->_limitingEndDate, v13);
      if (v12)
      {
      }

      v14 = [v27 objectForKeyedSubscript:@"kShowsFaceTimeVideoCallsKey"];
      if (v14)
      {
        v15 = [v27 objectForKeyedSubscript:@"kShowsFaceTimeVideoCallsKey"];
        p_showsFaceTimeVideoCalls = &self->_showsFaceTimeVideoCalls;
        self->_showsFaceTimeVideoCalls = [v15 BOOLValue];
      }

      else
      {
        p_showsFaceTimeVideoCalls = &self->_showsFaceTimeVideoCalls;
        self->_showsFaceTimeVideoCalls = 1;
      }

      v17 = [v27 objectForKeyedSubscript:@"kShowsFaceTimeAudioCallsKey"];
      if (v17)
      {
        v18 = [v27 objectForKeyedSubscript:@"kShowsFaceTimeAudioCallsKey"];
        p_showsFaceTimeAudioCalls = &self->_showsFaceTimeAudioCalls;
        self->_showsFaceTimeAudioCalls = [v18 BOOLValue];
      }

      else
      {
        p_showsFaceTimeAudioCalls = &self->_showsFaceTimeAudioCalls;
        self->_showsFaceTimeAudioCalls = 1;
      }

      v20 = [v27 objectForKeyedSubscript:@"kShowsTelephonyCallsKey"];
      if (v20)
      {
        v21 = [v27 objectForKeyedSubscript:@"kShowsTelephonyCallsKey"];
        p_showsTelephonyCalls = &self->_showsTelephonyCalls;
        self->_showsTelephonyCalls = [v21 BOOLValue];
      }

      else
      {
        p_showsTelephonyCalls = &self->_showsTelephonyCalls;
        self->_showsTelephonyCalls = 1;
      }

      if (*p_showsFaceTimeVideoCalls)
      {
        v23 = 0;
      }

      else
      {
        v23 = 8;
      }

      v24 = ~v23;
      if (*p_showsFaceTimeAudioCalls)
      {
        v25 = 0;
      }

      else
      {
        v25 = 16;
      }

      if (*p_showsTelephonyCalls)
      {
        v26 = 0;
      }

      else
      {
        v26 = 7;
      }

      [(CHManager *)self setLimitingCallTypesSync:(v24 ^ v25 ^ v26) & v9];
    }

    v4 = v27;
  }
}

- (void)dealloc
{
  v3 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v3, OS_LOG_TYPE_DEFAULT, "CHManager is getting destroyed...", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = CHManager;
  [(CHManager *)&v4 dealloc];
}

- (void)handleCallHistoryContactStoreChangedInternalNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__CHManager_handleCallHistoryContactStoreChangedInternalNotification___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __70__CHManager_handleCallHistoryContactStoreChangedInternalNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "--- Contact Store changed! Invalidating call's AB info.", v6, 2u);
  }

  [*(a1 + 32) setCacheIsDirty:1];
  [*(a1 + 32) setFinishedLoadingAllCalls:0];
  [*(a1 + 32) setReCoalesce:1];
  v3 = *(a1 + 32);
  if (v3[12])
  {
    v4 = [v3 fetchRecentCallsSyncWithCoalescing:1];
  }

  v5 = [*(a1 + 40) userInfo];
  notifyClientsOfEvent(@"kCallHistoryDatabaseChangedNotification", v5);
}

- (void)setPreFetchingPredicate:(id)a3
{
  v5 = a3;
  if (self->_preFetchingPredicate != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_preFetchingPredicate, a3);
    uncoalescedUnFilteredRecentCalls = self->_uncoalescedUnFilteredRecentCalls;
    self->_uncoalescedUnFilteredRecentCalls = 0;

    [(CHManager *)self resetCalls];
    v5 = v7;
  }
}

- (void)handleCallHistoryDatabaseChangedInternalNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__CHManager_handleCallHistoryDatabaseChangedInternalNotification___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __66__CHManager_handleCallHistoryDatabaseChangedInternalNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) userInfo];
  v3 = [*(a1 + 40) logHandle];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 138543362;
      v10 = v2;
      v5 = "--- Got Database changed notification: %{public}@. Make cache dirty and send client DB Changed Notification";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v9) = 0;
    v5 = "--- Got Database changed notification due to an external change! Make cache dirty and send client DB Changed Notification";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }

  [*(a1 + 40) resetCalls];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)currentLocaleChanged:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CHManager_currentLocaleChanged___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __34__CHManager_currentLocaleChanged___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "--- Received current locale changed notification: %{public}@. Invalidating all calls' caller ID formatted values.", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(*(a1 + 32) + 96);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setCallerIdFormatted:{0, v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)coalescedCallsWithCalls:(id)a3 usingStrategy:(id)a4
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v6 count])
  {
    goto LABEL_68;
  }

  v58 = self;
  if ([v7 isEqualToString:@"kCHCoalescingStrategyRecents"])
  {
    v8 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Coalescing with kCHCoalescingStrategyRecents", buf, 2u);
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v73;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v73 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v72 + 1) + 8 * v15);
          if (v16)
          {
            v18 = [v16 coalescedCallWithCall:*(*(&v72 + 1) + 8 * v15) usingStrategy:v7];
          }

          else
          {
            v18 = v17;
          }

          v19 = v18;
          v20 = v18;
          if (!v18)
          {
            [v9 addObject:v16];
            v20 = v17;
          }

          v13 = v20;

          ++v15;
          v16 = v13;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v12);

      self = v58;
      if (!v13)
      {
        goto LABEL_66;
      }

      [v9 addObject:v13];
    }

    else
    {
      v13 = v10;
    }

LABEL_66:
    v52 = [v9 copy];

    goto LABEL_69;
  }

  if (([v7 isEqualToString:@"kCHCoalescingStrategyCollapseIfEqual"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"kCHCoalescingStrategyFaceTimeRecents") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"kCHCoalescingStrategyCollapseIfEqualContacts"))
  {
    v21 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79[0] = v7;
      _os_log_impl(&dword_1C3E90000, v21, OS_LOG_TYPE_DEFAULT, "Coalescing with %@", buf, 0xCu);
    }

    v60 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v61 = v7;
    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v7 isEqualToString:@"kCHCoalescingStrategyCollapseIfEqualContacts"])
    {
      v59 = [(CHManager *)self _contactIdentifiersByHandleForCalls:v6];
    }

    else
    {
      v59 = 0;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v57 = v6;
    obj = v6;
    v23 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
    v24 = v59;
    if (v23)
    {
      v25 = v23;
      v26 = self;
      v27 = *v69;
      do
      {
        v28 = 0;
        v62 = v25;
        do
        {
          if (*v69 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v68 + 1) + 8 * v28);
          v30 = [v29 remoteParticipantHandles];
          if ([v30 count] == 1)
          {
            v31 = v22;
            v32 = v27;
            v33 = [v30 anyObject];
            v34 = [v24 objectForKeyedSubscript:v33];

            if (v34)
            {
              v35 = v34;
            }

            else
            {
              v36 = [v30 anyObject];
              v37 = [v36 normalizedValue];
              v38 = v37;
              if (v37)
              {
                v35 = v37;
              }

              else
              {
                v39 = [v30 anyObject];
                v35 = [v39 value];

                v26 = v58;
              }

              v24 = v59;
            }

            v27 = v32;
            v22 = v31;
            v25 = v62;
          }

          else
          {
            if (v24)
            {
              [(CHManager *)v26 _coalescingHashForGroupCall:v29 usingContactsIfPresent:v24];
            }

            else
            {
              [v29 notificationThreadIdentifier];
            }
            v35 = ;
          }

          if (![v35 length])
          {
            v40 = [v29 uniqueId];

            v35 = v40;
          }

          if ([v35 length])
          {
            v41 = [v22 objectForKeyedSubscript:v35];
            if (v41)
            {
              v42 = v41;
              v43 = [v41 coalescedCallWithCall:v29 usingStrategy:v61];

              if (v43)
              {
                [v22 setObject:v43 forKeyedSubscript:v35];
              }
            }

            else
            {
              [v22 setObject:v29 forKeyedSubscript:v35];
              [v60 addObject:v35];
            }
          }

          else
          {
            v44 = [(CHSynchronizedLoggable *)v26 logHandle];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              [(CHManager *)buf coalescedCallsWithCalls:v29 usingStrategy:v79, v44];
            }
          }

          ++v28;
        }

        while (v25 != v28);
        v25 = [obj countByEnumeratingWithState:&v68 objects:v77 count:16];
      }

      while (v25);
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v45 = v60;
    v46 = [v45 countByEnumeratingWithState:&v64 objects:v76 count:16];
    v47 = v56;
    v6 = v57;
    v7 = v61;
    if (v46)
    {
      v48 = v46;
      v49 = *v65;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v65 != v49)
          {
            objc_enumerationMutation(v45);
          }

          v51 = [v22 objectForKeyedSubscript:{*(*(&v64 + 1) + 8 * i), v56}];
          [v47 addObject:v51];
        }

        v48 = [v45 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v48);
    }

    v52 = [v47 copy];
    self = v58;
    goto LABEL_69;
  }

  if (v7)
  {
LABEL_68:
    v52 = 0;
    goto LABEL_69;
  }

  v55 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v79[0] = 0;
    _os_log_impl(&dword_1C3E90000, v55, OS_LOG_TYPE_DEFAULT, "Returning calls with no coalescing since none or invalid (%{public}@) strategy was provided", buf, 0xCu);
  }

  v52 = v6;
LABEL_69:
  [(CHManager *)self setReCoalesce:0, v56];

  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

- (id)_coalescingHashForGroupCall:(id)a3 usingContactsIfPresent:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 remoteParticipantHandles];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = v13;
        if (!v13)
        {
          v13 = v12;
        }

        v9 ^= [v13 hash];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v16 = [v15 stringValue];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_contactIdentifiersByHandleForCalls:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[CHSharedAddressBook get];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v3;
  v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v31)
  {
    v30 = *v42;
    do
    {
      v6 = 0;
      do
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v6;
        v7 = *(*(&v41 + 1) + 8 * v6);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v36 = v7;
        v8 = [v7 validRemoteParticipantHandles];
        v9 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v38;
          v34 = *v38;
          v35 = v8;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v38 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v37 + 1) + 8 * i);
              v14 = [v5 objectForKeyedSubscript:v13];

              if (!v14)
              {
                v15 = [v13 value];
                v16 = [v4 fetchAddressBookInfoFromCacheForKey:v15];

                v17 = [v16 valueForKey:@"kCHABCacheCNContactIdKey"];
                if (v17)
                {
                  [v5 setObject:v17 forKeyedSubscript:v13];
                }

                else
                {
                  phoneBookManager = self->_phoneBookManager;
                  [v13 value];
                  v19 = v5;
                  v21 = v20 = v4;
                  v22 = [v36 isoCountryCode];
                  v23 = -[CHPhoneBookIOSManager getRecordId:countryCode:isEmail:](phoneBookManager, "getRecordId:countryCode:isEmail:", v21, v22, [v13 type] == 3);

                  v4 = v20;
                  v5 = v19;
                  v24 = [v13 value];
                  [v4 insertAddressBookInfoIntoCache:v23 forKey:v24];

                  v25 = [v23 valueForKey:@"kCHABCacheCNContactIdKey"];
                  [v19 setObject:v25 forKeyedSubscript:v13];

                  v8 = v35;
                  v11 = v34;
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v10);
        }

        v6 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v31);
  }

  v26 = [v5 copy];
  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)loadOlderRecentCallsWithPredicate:(id)a3
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__CHManager_loadOlderRecentCallsWithPredicate___block_invoke;
  v9[3] = &unk_1E81DC348;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v6 = v5;
  v7 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v9];

  return v7;
}

id __47__CHManager_loadOlderRecentCallsWithPredicate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setShouldLoadOlderCalls:1];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@", &v11, 0xCu);
  }

  v4 = [*(a1 + 32) loadOlderRecentCallsSyncWithCoalescing:1];
  v5 = [*(a1 + 32) applyPredicate:*(a1 + 40) toCalls:v4];
  v6 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = [v4 count];
    v11 = 138543618;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "<== %{public}@ => %lu calls", &v11, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSArray)uncoalescedRecentCallsSync
{
  v3 = [(CHManager *)self fetchRecentCallsSyncWithCoalescing:0];
  uncoalescedRecentCalls = self->_uncoalescedRecentCalls;

  return uncoalescedRecentCalls;
}

- (id)unCoalesceCall:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 numberOfOccurrences];
  v6 = [v3 callOccurrences];
  if (v5)
  {
    v7 = 0;
    v23 = @"kCHCallOccurrenceTTYTypeKey";
    do
    {
      v8 = [v6 objectAtIndexedSubscript:{v7, v23}];
      v9 = [v3 copy];
      [v8 objectForKeyedSubscript:@"kCHCallOccurrenceUniqueIdKey"];
      v10 = v4;
      v12 = v11 = v3;
      [v9 setUniqueId:v12];

      v13 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceCallTypeKey"];
      [v9 setCallType:{objc_msgSend(v13, "unsignedIntegerValue")}];

      v14 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceCallStatusKey"];
      [v9 setCallStatus:{objc_msgSend(v14, "unsignedIntegerValue")}];

      v15 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceDurationKey"];
      [v15 doubleValue];
      [v9 setDuration:?];

      v16 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceDateKey"];
      [v9 setDate:v16];

      v17 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceDataUsageKey"];
      [v9 setBytesOfDataUsed:v17];

      v18 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceMediaTypeKey"];
      [v9 setMediaType:{objc_msgSend(v18, "unsignedIntegerValue")}];

      v19 = [v8 objectForKeyedSubscript:v23];
      [v9 setTtyType:{objc_msgSend(v19, "unsignedIntegerValue")}];

      v20 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceServiceProviderKey"];
      [v9 setServiceProvider:v20];

      v21 = [v8 objectForKeyedSubscript:@"kCHCallOccurrenceReminderUUIDKey"];
      [v9 setReminderUUID:v21];

      v3 = v11;
      v4 = v10;
      [v9 setCallOccurrences:0];
      [v9 setMultiCall:0];
      [v10 setObject:v9 atIndexedSubscript:v7];

      ++v7;
    }

    while (v5 != v7);
  }

  return v4;
}

- (id)applyPredicate:(id)a3 toCalls:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v7 count])
    {
      v8 = 0;
      do
      {
        v9 = [v7 objectAtIndexedSubscript:v8];
        if ([v9 multiCall])
        {
          v10 = [(CHManager *)self unCoalesceCall:v9];
          v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
          v12 = [v10 filteredArrayUsingPredicate:v6];
          v21[0] = v11;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
          v14 = [v12 sortedArrayUsingDescriptors:v13];

          v15 = [(CHManager *)self coalescedCallsWithCalls:v14 usingStrategy:self->_coalescingStrategy];
          [v19 addObjectsFromArray:v15];
        }

        else if ([v6 evaluateWithObject:v9])
        {
          [v19 addObject:v9];
        }

        ++v8;
      }

      while (v8 < [v7 count]);
    }
  }

  else
  {
    v16 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "No predicate to apply, return all calls", buf, 2u);
    }

    v19 = v7;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)recentCallsWithPredicate:(id)a3
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__CHManager_recentCallsWithPredicate___block_invoke;
  v9[3] = &unk_1E81DC348;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v6 = v5;
  v7 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v9];

  return v7;
}

id __38__CHManager_recentCallsWithPredicate___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = NSStringFromSelector(*(a1 + 48));
    v5 = *(a1 + 40);
    v16 = 138543618;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C3E90000, v3, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v16, 0x16u);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [v6 fetchRecentCallsSyncWithCoalescing:1];
  v9 = [v6 applyPredicate:v7 toCalls:v8];

  v10 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(*(a1 + 48));
    v12 = *(a1 + 40);
    v13 = [v9 count];
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    v20 = 2048;
    v21 = v13;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "<== %{public}@(%@) => %lu calls", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)fetchRecentCallsSyncWithCoalescing:(BOOL)a3
{
  v3 = a3;
  v71 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (!self->_recentCalls || [(CHManager *)self cacheIsDirty])
  {
    v7 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v8 = @"Yes";
      }

      else
      {
        v8 = @"No";
      }

      v9 = [CHRecentCall callTypeAsString:self->_limitingCallTypes];
      *buf = 138543618;
      v68 = v8;
      v69 = 2114;
      v70 = v9;
      _os_log_impl(&dword_1C3E90000, v7, OS_LOG_TYPE_DEFAULT, "Fetching from DB and updating cache. And coalescing: %{public}@, With callType limit: %{public}@", buf, 0x16u);
    }

    v10 = [(CHManager *)self getLimitsDictionary];
    v11 = [(CHManager *)self featureFlags];
    v12 = [v11 increaseCallHistoryEnabled];

    if (v12)
    {
      uncoalescedUnFilteredRecentCalls = self->_uncoalescedUnFilteredRecentCalls;
      if (uncoalescedUnFilteredRecentCalls)
      {
        v14 = [(NSArray *)uncoalescedUnFilteredRecentCalls count];
        if (v14 <= 0x64)
        {
          v15 = 100;
        }

        else
        {
          v15 = v14;
        }
      }

      else
      {
        v15 = 100;
      }

      v26 = [(CHManager *)self callsWithLimits:v10 limit:v15 offset:0 batchSize:0];
      recentCalls = self->_recentCalls;
      self->_recentCalls = v26;
    }

    else
    {
      recentCalls = [(CHManager *)self syncManager];
      v17 = [recentCalls fetchObjectsWithLimits:v10];
      v18 = self->_recentCalls;
      self->_recentCalls = v17;
    }

    v27 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(NSArray *)self->_recentCalls count];
      *buf = 134217984;
      v68 = v28;
      _os_log_impl(&dword_1C3E90000, v27, OS_LOG_TYPE_DEFAULT, "SyncManager returned %lu calls", buf, 0xCu);
    }

    v29 = self->_recentCalls;
    if (!v29)
    {
      goto LABEL_44;
    }

    v61 = v6;
    v30 = [(NSArray *)v29 copy];
    uncoalescedRecentCalls = self->_uncoalescedRecentCalls;
    self->_uncoalescedRecentCalls = v30;

    v32 = [(CHManager *)self applyPredicate:self->_postFetchingPredicate toCalls:self->_uncoalescedRecentCalls];
    v33 = self->_uncoalescedRecentCalls;
    self->_uncoalescedRecentCalls = v32;

    v34 = [(NSArray *)self->_recentCalls copy];
    [(CHManager *)self setUncoalescedUnFilteredRecentCalls:v34];

    v35 = [(CHManager *)self featureFlags];
    v36 = a2;
    if ([v35 increaseCallHistoryEnabled])
    {
      v37 = [(CHManager *)self uncoalescedUnFilteredRecentCalls];
      v38 = [v37 count];
      v39 = [(CHManager *)self callHistoryDBFetchLimit];

      if (v38 >= v39)
      {
        [(CHManager *)self setFinishedLoadingAllCalls:1];
      }

      if (v3)
      {
        goto LABEL_30;
      }
    }

    else
    {

      if (v3)
      {
LABEL_30:
        v40 = [(CHManager *)self coalescedCallsWithCalls:self->_recentCalls usingStrategy:self->_coalescingStrategy];
        v41 = self->_recentCalls;
        self->_recentCalls = v40;

        v42 = [(CHSynchronizedLoggable *)self logHandle];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [(NSArray *)self->_recentCalls count];
          *buf = 134217984;
          v68 = v43;
          _os_log_impl(&dword_1C3E90000, v42, OS_LOG_TYPE_DEFAULT, "After coalescing we have %lu calls", buf, 0xCu);
        }

        v44 = [(CHManager *)self applyPredicate:self->_postFetchingPredicate toCalls:self->_recentCalls];
        p_super = &self->_recentCalls->super;
        self->_recentCalls = v44;
LABEL_36:

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v46 = self->_recentCalls;
        v47 = [(NSArray *)v46 countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v63;
          do
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v63 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v62 + 1) + 8 * i);
              v52 = [(CHManager *)self phoneBookManager];
              [v51 setPhoneBookManager:v52];
            }

            v48 = [(NSArray *)v46 countByEnumeratingWithState:&v62 objects:v66 count:16];
          }

          while (v48);
        }

        a2 = v36;
        v6 = v61;
LABEL_44:
        v53 = [(CHManager *)self featureFlags];
        if ([v53 increaseCallHistoryEnabled])
        {
          v54 = [(NSArray *)self->_recentCalls count];

          if (!v54)
          {
            [(CHManager *)self setFinishedLoadingAllCalls:1];
          }
        }

        else
        {
        }

        [(CHManager *)self setCacheIsDirty:0];
LABEL_49:

        goto LABEL_50;
      }
    }

    p_super = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, p_super, OS_LOG_TYPE_DEFAULT, "User fetching without coalescing!", buf, 2u);
    }

    goto LABEL_36;
  }

  if (v3 && [(CHManager *)self reCoalesce])
  {
    v19 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v19, OS_LOG_TYPE_DEFAULT, "No fetching required. Recoalscing & applying global filter", buf, 2u);
    }

    v20 = [(CHManager *)self uncoalescedUnFilteredRecentCalls];
    v10 = [v20 copy];

    v21 = [(CHManager *)self coalescedCallsWithCalls:v10 usingStrategy:self->_coalescingStrategy];
    v22 = self->_recentCalls;
    self->_recentCalls = v21;

    v23 = [(CHSynchronizedLoggable *)self logHandle];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [(CHManager *)&self->_recentCalls fetchRecentCallsSyncWithCoalescing:v23];
    }

    v24 = [(CHManager *)self applyPredicate:self->_postFetchingPredicate toCalls:self->_recentCalls];
    v25 = self->_recentCalls;
    self->_recentCalls = v24;

    goto LABEL_49;
  }

LABEL_50:
  v55 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = NSStringFromSelector(a2);
    v57 = [(NSArray *)self->_recentCalls count];
    *buf = 138543618;
    v68 = v56;
    v69 = 2048;
    v70 = v57;
    _os_log_impl(&dword_1C3E90000, v55, OS_LOG_TYPE_DEFAULT, "<== %{public}@ returns %lu calls", buf, 0x16u);
  }

  v58 = self->_recentCalls;
  objc_autoreleasePoolPop(v6);
  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

- (unint64_t)countCallsWithPredicateSync:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 predicateFormat];
    v19 = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v19, 0x16u);
  }

  if (v5)
  {
    v9 = [(CHManager *)self uncoalescedRecentCallsSync];
    v10 = [v9 filteredArrayUsingPredicate:v5];
  }

  else
  {
    v10 = [(CHManager *)self fetchRecentCallsSyncWithCoalescing:1];
  }

  v11 = [v10 count];
  v12 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 predicateFormat];
    v19 = 138412546;
    v20 = v13;
    v21 = 2048;
    v22 = v11;
    _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "User requested to count calls with predicate, %@. Returning %lu.", &v19, 0x16u);
  }

  v14 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    v16 = [v5 predicateFormat];
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    v23 = 2048;
    v24 = v11;
    _os_log_impl(&dword_1C3E90000, v14, OS_LOG_TYPE_DEFAULT, "<== %{public}@(%@) %lu calls", &v19, 0x20u);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (unint64_t)countCallsWithPredicate:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__CHManager_countCallsWithPredicate___block_invoke;
  v8[3] = &unk_1E81DC2D0;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(CHSynchronizedLoggable *)self executeSync:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __37__CHManager_countCallsWithPredicate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) countCallsWithPredicateSync:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unint64_t)databaseSizeInBytes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__CHManager_databaseSizeInBytes__block_invoke;
  v4[3] = &unk_1E81DC370;
  v4[4] = self;
  v4[5] = &v5;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __32__CHManager_databaseSizeInBytes__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v3 = [CallDBManager getDBLocationIsSandboxed:1 isTemporary:0 error:&v11];
  if (v11)
  {
    v4 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __32__CHManager_databaseSizeInBytes__block_invoke_cold_1(&v11, v4);
    }
  }

  v5 = [v3 path];
  v10 = 0;
  v6 = [v2 attributesOfItemAtPath:v5 error:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __32__CHManager_databaseSizeInBytes__block_invoke_cold_2();
    }

    v9 = [*(a1 + 32) estimateDatabaseSizeInBytes];
  }

  else
  {
    v9 = [v6 fileSize];
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (unint64_t)estimateDatabaseSizeInBytes
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"com.apple.Telephony";
  v10[1] = @"com.apple.FaceTime";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v4 = [CHRecentCall predicateForCallsWithAnyServiceProviders:v3];

  v5 = [(CHManager *)self countCallsWithPredicate:v4];
  v6 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v6);

  v8 = *MEMORY[0x1E69E9840];
  return InstanceSize * v5;
}

- (void)addToCallHistory:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CHManager_addToCallHistory___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(CHSynchronizedLoggable *)self execute:v7];
}

void __30__CHManager_addToCallHistory___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v7, 0x16u);
  }

  v5 = [*(a1 + 32) syncManager];
  [v5 insert:*(a1 + 40) withTransaction:{objc_msgSend(*(a1 + 32), "generateSyncTransactions")}];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addArrayToCallHistory:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CHManager_addArrayToCallHistory___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(CHSynchronizedLoggable *)self execute:v7];
}

void __35__CHManager_addArrayToCallHistory___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v11 = 138543618;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v11, 0x16u);
  }

  v5 = [*(a1 + 32) generateSyncTransactions];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 syncManager];
    [v7 insertRecords:*(a1 + 40)];
  }

  else
  {
    v8 = [v6 logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "User requested to insert new calls without sync transactions: \n %@", &v11, 0xCu);
    }

    v7 = [*(a1 + 32) syncManager];
    [v7 insertRecordsWithoutTransactions:*(a1 + 40)];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addArrayToCallHistory:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__CHManager_addArrayToCallHistory_withCompletion___block_invoke;
  v11[3] = &unk_1E81DC3C0;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v8;
  v10 = v7;
  [(CHSynchronizedLoggable *)self execute:v11];
}

uint64_t __50__CHManager_addArrayToCallHistory_withCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 40);
    v12 = 138543618;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v12, 0x16u);
  }

  v5 = [*(a1 + 32) generateSyncTransactions];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 syncManager];
    [v7 insertRecords:*(a1 + 40)];
  }

  else
  {
    v8 = [v6 logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "User requested to insert new calls without sync transactions: \n %@", &v12, 0xCu);
    }

    v7 = [*(a1 + 32) syncManager];
    [v7 insertRecordsWithoutTransactions:*(a1 + 40)];
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setOutgoingLocalParticipantUUID:(id)a3 forRecentCallsMatchingPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__CHManager_setOutgoingLocalParticipantUUID_forRecentCallsMatchingPredicate___block_invoke;
  v10[3] = &unk_1E81DC2A8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CHSynchronizedLoggable *)self execute:v10];
}

void __77__CHManager_setOutgoingLocalParticipantUUID_forRecentCallsMatchingPredicate___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *buf = 138543618;
    v29 = v3;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Updating outgoing local participant UUID to %{public}@ for recent calls matching predicate %@.", buf, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [*(a1 + 32) uncoalescedRecentCallsSync];
  v7 = [v6 filteredArrayUsingPredicate:*(a1 + 48)];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 uniqueId];
        v15 = [v14 length];

        if (v15)
        {
          v16 = *(a1 + 40);
          v25 = kCallUpdatePropertyOutgoingLocalParticipantUUID;
          v26 = v16;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          v18 = [v13 uniqueId];
          [v5 setObject:v17 forKeyedSubscript:v18];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  if ([v5 count])
  {
    v19 = [*(a1 + 32) syncManager];
    [v19 updateObjects:v5];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)markAllCallsAsReadWithPredicate:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CHManager_markAllCallsAsReadWithPredicate___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(CHSynchronizedLoggable *)self execute:v7];
}

void __45__CHManager_markAllCallsAsReadWithPredicate___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v20 = 138543618;
    v21 = v3;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%@)", &v20, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
  [v5 setObject:v6 forKeyedSubscript:kCallUpdatePropertyRead];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 32) logHandle];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 40);
      v20 = 138412290;
      v21 = v10;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "User requested to mark some calls with this predicate, %@, as read", &v20, 0xCu);
    }

    v11 = [*(a1 + 32) uncoalescedRecentCallsSync];
    v12 = [v11 filteredArrayUsingPredicate:*(a1 + 40)];

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v12 count])
    {
      v14 = 0;
      do
      {
        v15 = [v12 objectAtIndexedSubscript:v14];
        v16 = [v15 uniqueId];

        if (v16)
        {
          v17 = [v15 uniqueId];
          [v13 setObject:v5 forKey:v17];
        }

        ++v14;
      }

      while (v14 < [v12 count]);
    }

    v18 = [*(a1 + 32) syncManager];
    [v18 updateObjects:v13];
  }

  else
  {
    if (v9)
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "User requested to mark ALL calls as read", &v20, 2u);
    }

    v12 = [*(a1 + 32) syncManager];
    [v12 updateAllObjects:v5];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateBytesOfDataUsedFor:(id)a3 with:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__CHManager_updateBytesOfDataUsedFor_with___block_invoke;
  v11[3] = &unk_1E81DC3E8;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v8;
  v10 = v7;
  [(CHSynchronizedLoggable *)self execute:v11];
}

void __43__CHManager_updateBytesOfDataUsedFor_with___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v10 = 138543874;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, %{public}@)", &v10, 0x20u);
  }

  if (*(a1 + 40) && *(a1 + 48))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:*(a1 + 48) forKeyedSubscript:kCallUpdatePropertyBytesUsed];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:v6 forKey:*(a1 + 40)];
    v8 = [*(a1 + 32) syncManager];
    [v8 updateObjects:v7];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __43__CHManager_updateBytesOfDataUsedFor_with___block_invoke_cold_1();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateMessageStatusFor:(id)a3 with:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__CHManager_updateMessageStatusFor_with___block_invoke;
  v11[3] = &unk_1E81DC3E8;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v8;
  v10 = v7;
  [(CHSynchronizedLoggable *)self execute:v11];
}

void __41__CHManager_updateMessageStatusFor_with___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v10 = 138543874;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, hasMessage=%{public}@)", &v10, 0x20u);
  }

  if (*(a1 + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:*(a1 + 48) forKeyedSubscript:kCallUpdatePropertyHasMessage];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v7 setObject:v6 forKey:*(a1 + 40)];
    v8 = [*(a1 + 32) syncManager];
    [v8 updateObjects:v7];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__CHManager_updateMessageStatusFor_with___block_invoke_cold_1();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateAutoAnsweredReasonFor:(id)a3 with:(int64_t)a4
{
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__CHManager_updateAutoAnsweredReasonFor_with___block_invoke;
  v9[3] = &unk_1E81DC410;
  v9[4] = self;
  v10 = v7;
  v11 = a2;
  v12 = a4;
  v8 = v7;
  [(CHSynchronizedLoggable *)self execute:v9];
}

void __46__CHManager_updateAutoAnsweredReasonFor_with___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v14 = 138543874;
    v15 = v3;
    v16 = 2114;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, autoAnsweredReason=%ld)", &v14, 0x20u);
  }

  if (*(a1 + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
    v8 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = *(a1 + 40);
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, autoAnsweredReason=%{public}@)", &v14, 0x20u);
    }

    [v6 setObject:v7 forKeyedSubscript:kCallUpdatePropertyAutoAnsweredReason];
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setObject:v6 forKey:*(a1 + 40)];
    v12 = [*(a1 + 32) syncManager];
    [v12 updateObjects:v11];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__CHManager_updateMessageStatusFor_with___block_invoke_cold_1();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updateEmergencyMediaItemFor:(id)a3 with:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__CHManager_updateEmergencyMediaItemFor_with___block_invoke;
  v11[3] = &unk_1E81DC3E8;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v8;
  v10 = v7;
  [(CHSynchronizedLoggable *)self execute:v11];
}

void __46__CHManager_updateEmergencyMediaItemFor_with___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11 = 138543874;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@(%{public}@, mediaItem=%{public}@)", &v11, 0x20u);
  }

  if (*(a1 + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [*(a1 + 48) getDictionary];
    [v6 setObject:v7 forKeyedSubscript:kCallUpdatePropertyEmergencyMediaItem];

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v8 setObject:v6 forKey:*(a1 + 40)];
    v9 = [*(a1 + 32) syncManager];
    [v9 updateObjects:v8];
  }

  else
  {
    v6 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__CHManager_updateMessageStatusFor_with___block_invoke_cold_1();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateReminderUUID:(id)a3 forRecentCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__CHManager_updateReminderUUID_forRecentCall___block_invoke;
  v10[3] = &unk_1E81DC2A8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CHSynchronizedLoggable *)self execute:v10];
}

void __46__CHManager_updateReminderUUID_forRecentCall___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *buf = 138543618;
    v31 = v3;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Updating reminder UUID to %{public}@ for recentCall %@.", buf, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *(a1 + 40);
  if (v6)
  {
    v25 = kCallUpdatePropertyReminderUUID;
    v26 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v8 = [*(a1 + 48) uniqueId];
    [v5 setObject:v7 forKeyedSubscript:v8];
  }

  else
  {
    v7 = [*(a1 + 32) unCoalesceCall:*(a1 + 48)];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 uniqueId];
          v15 = [v14 length];

          if (v15)
          {
            v27 = kCallUpdatePropertyReminderUUID;
            v16 = [MEMORY[0x1E695DFB0] null];
            v28 = v16;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
            v18 = [v13 uniqueId];
            [v5 setObject:v17 forKeyedSubscript:v18];
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v10);
    }
  }

  if ([v5 count])
  {
    v19 = [*(a1 + 32) syncManager];
    [v19 updateObjects:v5];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)deleteTheseCallsSync:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      if ([v7 multiCall])
      {
        break;
      }

      v12 = [v7 uniqueId];

      if (v12)
      {
        v8 = [v7 uniqueId];
        [v5 addObject:v8];
LABEL_12:
      }

      if (++v6 >= [v4 count])
      {
        goto LABEL_14;
      }
    }

    v8 = [v7 callOccurrences];
    if ([v8 count])
    {
      v9 = 0;
      do
      {
        v10 = [v8 objectAtIndexedSubscript:v9];
        v11 = [v10 objectForKeyedSubscript:@"kCHCallOccurrenceUniqueIdKey"];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v9;
      }

      while (v9 < [v8 count]);
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14 = [v5 count];
  if (v14)
  {
    v15 = 0;
    v16 = v14 - 1;
    while (1)
    {
      v17 = [v5 objectAtIndexedSubscript:v15];
      [v13 appendString:v17];

      if (v16 == v15)
      {
        break;
      }

      [v13 appendString:{@", "}];
      ++v15;
    }
  }

  v18 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = NSStringFromSelector(a2);
    *buf = 138543618;
    v24 = v19;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&dword_1C3E90000, v18, OS_LOG_TYPE_DEFAULT, "=> %{public}@(%{public}@)", buf, 0x16u);
  }

  v20 = [(CHManager *)self syncManager];
  [v20 deleteObjectsWithUniqueIds:v5 withTransaction:1];

  [(CHManager *)self setCacheIsDirty:1];
  [(CHManager *)self setFinishedLoadingAllCalls:0];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)deleteTheseCalls:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__CHManager_deleteTheseCalls___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __30__CHManager_deleteTheseCalls___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "=> %{public}@", &v6, 0xCu);
  }

  result = [*(a1 + 32) deleteTheseCallsSync:*(a1 + 40)];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)deleteCall:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__CHManager_deleteCall___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __24__CHManager_deleteCall___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 40) uniqueId];
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "=> deleteCall:%{public}@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v8 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
    [v5 deleteTheseCallsSync:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)deleteCalls:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__CHManager_deleteCalls_withCompletion___block_invoke;
  v11[3] = &unk_1E81DC3C0;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v14 = a2;
  v9 = v8;
  v10 = v7;
  [(CHSynchronizedLoggable *)self execute:v11];
}

uint64_t __40__CHManager_deleteCalls_withCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "=> %{public}@", &v6, 0xCu);
  }

  [*(a1 + 32) deleteTheseCallsSync:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)deleteCallAtIndex:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__CHManager_deleteCallAtIndex___block_invoke;
  v3[3] = &unk_1E81DC438;
  v3[4] = self;
  v3[5] = a2;
  v3[6] = a3;
  [(CHSynchronizedLoggable *)self execute:v3];
}

void __31__CHManager_deleteCallAtIndex___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    v9 = 138543618;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User requested to delete call at index, %lu", &v9, 0x16u);
  }

  v5 = [*(a1 + 32) fetchRecentCallsSyncWithCoalescing:1];
  v6 = [v5 count];
  if (v6 && *(a1 + 48) < v6)
  {
    v7 = [v5 objectAtIndex:?];
    [*(a1 + 32) deleteCall:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllCallsSync
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User requested to delete ALL calls (with the global limits of course)", &v9, 0xCu);
  }

  v6 = [(CHManager *)self syncManager];
  v7 = [(CHManager *)self getLimitsDictionary];
  [v6 deleteObjectsWithLimits:v7];

  [(CHManager *)self setCacheIsDirty:1];
  [(CHManager *)self setFinishedLoadingAllCalls:0];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllCalls
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __27__CHManager_deleteAllCalls__block_invoke;
  v2[3] = &unk_1E81DBF38;
  v2[4] = self;
  [(CHSynchronizedLoggable *)self execute:v2];
}

- (void)clearDatabase
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __26__CHManager_clearDatabase__block_invoke;
  v2[3] = &unk_1E81DBF38;
  v2[4] = self;
  [(CHSynchronizedLoggable *)self execute:v2];
}

void __26__CHManager_clearDatabase__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) syncManager];
  [v1 deleteAllObjects];
}

- (void)setLimitingCallKindsSync:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Setting limiting call kinds: %{public}@", &v8, 0xCu);
  }

  limitingCallKinds = self->_limitingCallKinds;
  self->_limitingCallKinds = v4;

  [(CHManager *)self setCacheIsDirty:1];
  [(CHManager *)self setFinishedLoadingAllCalls:0];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setLimitingCallKinds:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CHManager_setLimitingCallKinds___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CHSynchronizedLoggable *)self execute:v6];
}

- (void)setLimitingCallTypes:(unsigned int)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__CHManager_setLimitingCallTypes___block_invoke;
  v3[3] = &unk_1E81DC460;
  v3[4] = self;
  v3[5] = a2;
  v4 = a3;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __34__CHManager_setLimitingCallTypes___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = [CHRecentCall callTypeAsString:*(a1 + 48)];
    v5 = *(a1 + 48);
    v8 = 138543874;
    v9 = v3;
    v10 = 2114;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@(0x%x)", &v8, 0x1Cu);
  }

  result = [*(a1 + 32) setLimitingCallTypesSync:*(a1 + 48)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPostFetchingPredicate:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CHManager_setPostFetchingPredicate___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __38__CHManager_setPostFetchingPredicate___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@", &v7, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  result = [*(a1 + 32) setReCoalesce:1];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setLimitingStartDate:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CHManager_setLimitingStartDate___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __34__CHManager_setLimitingStartDate___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@", &v7, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  [*(a1 + 32) setCacheIsDirty:1];
  result = [*(a1 + 32) setFinishedLoadingAllCalls:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setLimitingEndDate:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__CHManager_setLimitingEndDate___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __32__CHManager_setLimitingEndDate___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@", &v7, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  [*(a1 + 32) setCacheIsDirty:1];
  result = [*(a1 + 32) setFinishedLoadingAllCalls:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCoalescingStrategy:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CHManager_setCoalescingStrategy___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __35__CHManager_setCoalescingStrategy___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@:%{public}@", &v7, 0x16u);
  }

  result = [*(*(a1 + 32) + 88) isEqualToString:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
    result = [*(a1 + 32) setReCoalesce:1];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setShowsFaceTimeVideoCalls:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CHManager_setShowsFaceTimeVideoCalls___block_invoke;
  v3[3] = &unk_1E81DC488;
  v3[4] = self;
  v3[5] = a2;
  v4 = a3;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __40__CHManager_setShowsFaceTimeVideoCalls___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    *v19 = 138543618;
    *&v19[4] = v3;
    *&v19[12] = 1024;
    *&v19[14] = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting showsFaceTimeVideoCalls to %d", v19, 0x12u);
  }

  v5 = *(a1 + 48);
  *(*(a1 + 32) + 25) = v5;
  v6 = [*(a1 + 32) logHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(*(a1 + 32) + 36);
    v9 = [CHRecentCall callTypeAsString:v8];
    v10 = *(*(a1 + 32) + 36) | 8;
    *v19 = 67109890;
    *&v19[4] = v8;
    *&v19[8] = 2114;
    *&v19[10] = v9;
    *&v19[18] = 1024;
    *&v19[20] = 8;
    LOWORD(v20) = 1024;
    *(&v20 + 2) = v10;
    v11 = "Old limitingCallType: 0x%x (%{public}@). OR Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v12 = *(*(a1 + 32) + 36);
    v9 = [CHRecentCall callTypeAsString:v12];
    v13 = *(*(a1 + 32) + 36) & 0xFFFFFFF7;
    *v19 = 67109890;
    *&v19[4] = v12;
    *&v19[8] = 2112;
    *&v19[10] = v9;
    *&v19[18] = 1024;
    *&v19[20] = -9;
    LOWORD(v20) = 1024;
    *(&v20 + 2) = v13;
    v11 = "Old limitingCallType: 0x%x (%@). AND Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, v11, v19, 0x1Eu);

LABEL_9:
  v14 = *(a1 + 32);
  v15 = v14[9];
  if (*(a1 + 48) == 1)
  {
    v16 = v15 | 8u;
  }

  else
  {
    v16 = v15 & 0xFFFFFFF7;
  }

  result = [v14 setLimitingCallTypesSync:{v16, *v19, *&v19[16], v20}];
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setShowsFaceTimeAudioCalls:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CHManager_setShowsFaceTimeAudioCalls___block_invoke;
  v3[3] = &unk_1E81DC488;
  v3[4] = self;
  v3[5] = a2;
  v4 = a3;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __40__CHManager_setShowsFaceTimeAudioCalls___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    *v16 = 138543618;
    *&v16[4] = v3;
    *&v16[12] = 1024;
    *&v16[14] = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting showsFaceTimeAudioCalls to %d", v16, 0x12u);
  }

  v5 = *(a1 + 48);
  *(*(a1 + 32) + 26) = v5;
  v6 = [*(a1 + 32) logHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(*(a1 + 32) + 36);
    *v16 = 67109632;
    *&v16[4] = v8;
    *&v16[8] = 1024;
    *&v16[10] = 16;
    *&v16[14] = 1024;
    *&v16[16] = v8 | 0x10;
    v9 = "Old limitingCallType: 0x%x. OR Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v10 = *(*(a1 + 32) + 36);
    *v16 = 67109632;
    *&v16[4] = v10;
    *&v16[8] = 1024;
    *&v16[10] = -17;
    *&v16[14] = 1024;
    *&v16[16] = v10 & 0xFFFFFFEF;
    v9 = "Old limitingCallType: 0x%x. AND Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, v9, v16, 0x14u);
LABEL_9:

  v11 = *(a1 + 32);
  v12 = v11[9];
  if (*(a1 + 48) == 1)
  {
    v13 = v12 | 0x10u;
  }

  else
  {
    v13 = v12 & 0xFFFFFFEF;
  }

  result = [v11 setLimitingCallTypesSync:{v13, *v16, *&v16[16]}];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setShowsProtectedApps:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__CHManager_setShowsProtectedApps___block_invoke;
  v3[3] = &unk_1E81DC488;
  v3[4] = self;
  v3[5] = a2;
  v4 = a3;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __35__CHManager_setShowsProtectedApps___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    v7 = 138543618;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting showsProtectedAppsTo to %d", &v7, 0x12u);
  }

  *(*(a1 + 32) + 27) = *(a1 + 48);
  result = [*(a1 + 32) resetCalls];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)allowedProtectedAppBundleIDs
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__CHManager_allowedProtectedAppBundleIDs__block_invoke;
  v4[3] = &unk_1E81DC4B0;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (void)setAllowedProtectedAppBundleIDs:(id)a3
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CHManager_setAllowedProtectedAppBundleIDs___block_invoke;
  v7[3] = &unk_1E81DC398;
  v8 = v5;
  v9 = a2;
  v7[4] = self;
  v6 = v5;
  [(CHSynchronizedLoggable *)self execute:v7];
}

uint64_t __45__CHManager_setAllowedProtectedAppBundleIDs___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting allowedProtectedAppBundleIDs to %{public}@", &v7, 0x16u);
  }

  [*(*(a1 + 32) + 72) setAllowedProtectedAppBundleIDs:*(a1 + 40)];
  result = [*(a1 + 32) resetCalls];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)showsTelephonyCalls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CHManager_showsTelephonyCalls__block_invoke;
  v3[3] = &unk_1E81DC4D8;
  v3[4] = self;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v3];
}

- (BOOL)showsFaceTimeVideoCalls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CHManager_showsFaceTimeVideoCalls__block_invoke;
  v3[3] = &unk_1E81DC4D8;
  v3[4] = self;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v3];
}

- (BOOL)showsFaceTimeAudioCalls
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CHManager_showsFaceTimeAudioCalls__block_invoke;
  v3[3] = &unk_1E81DC4D8;
  v3[4] = self;
  return [(CHSynchronizedLoggable *)self executeSyncWithBOOL:v3];
}

- (unsigned)limitingCallTypes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0x80000000;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__CHManager_limitingCallTypes__block_invoke;
  v4[3] = &unk_1E81DC2F8;
  v4[4] = self;
  v4[5] = &v5;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (NSDate)limitingStartDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__CHManager_limitingStartDate__block_invoke;
  v4[3] = &unk_1E81DC500;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (NSDate)limitingEndDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__CHManager_limitingEndDate__block_invoke;
  v4[3] = &unk_1E81DC500;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (NSArray)limitingCallKinds
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__CHManager_limitingCallKinds__block_invoke;
  v4[3] = &unk_1E81DC528;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (NSPredicate)postFetchingPredicate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__CHManager_postFetchingPredicate__block_invoke;
  v4[3] = &unk_1E81DC550;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (NSString)coalescingStrategy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__CHManager_coalescingStrategy__block_invoke;
  v4[3] = &unk_1E81DC578;
  v4[4] = self;
  v2 = [(CHSynchronizedLoggable *)self executeSyncWithResult:v4];

  return v2;
}

- (void)setShowsTelephonyCalls:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CHManager_setShowsTelephonyCalls___block_invoke;
  v3[3] = &unk_1E81DC488;
  v3[4] = self;
  v3[5] = a2;
  v4 = a3;
  [(CHSynchronizedLoggable *)self execute:v3];
}

uint64_t __36__CHManager_setShowsTelephonyCalls___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v4 = *(a1 + 48);
    *v16 = 138543618;
    *&v16[4] = v3;
    *&v16[12] = 1024;
    *&v16[14] = v4;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User setting showsTelephonyCalls to %d", v16, 0x12u);
  }

  v5 = *(a1 + 48);
  *(*(a1 + 32) + 24) = v5;
  v6 = [*(a1 + 32) logHandle];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(*(a1 + 32) + 36);
    *v16 = 67109632;
    *&v16[4] = v8;
    *&v16[8] = 1024;
    *&v16[10] = 7;
    *&v16[14] = 1024;
    *&v16[16] = v8 | 7;
    v9 = "Old limitingCallType: 0x%x. OR Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v10 = *(*(a1 + 32) + 36);
    *v16 = 67109632;
    *&v16[4] = v10;
    *&v16[8] = 1024;
    *&v16[10] = -8;
    *&v16[14] = 1024;
    *&v16[16] = v10 & 0xFFFFFFF8;
    v9 = "Old limitingCallType: 0x%x. AND Mask: 0x%x. New limitingCallType: 0x%x.";
  }

  _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, v9, v16, 0x14u);
LABEL_9:

  v11 = *(a1 + 32);
  v12 = v11[9];
  if (*(a1 + 48) == 1)
  {
    v13 = v12 | 7u;
  }

  else
  {
    v13 = v12 & 0xFFFFFFF8;
  }

  result = [v11 setLimitingCallTypesSync:{v13, *v16, *&v16[16]}];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (double)callTimersGetIncoming
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__CHManager_callTimersGetIncoming__block_invoke;
  v4[3] = &unk_1E81DC5A0;
  v4[4] = self;
  v4[5] = &v5;
  v4[6] = a2;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__CHManager_callTimersGetIncoming__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) syncManager];
  [v2 timerIncoming];
  *(*(*(a1 + 40) + 8) + 24) = v3;

  v4 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "==> %{public}@ => %f seconds", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (double)callTimersGetOutgoing
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__CHManager_callTimersGetOutgoing__block_invoke;
  v4[3] = &unk_1E81DC5A0;
  v4[4] = self;
  v4[5] = &v5;
  v4[6] = a2;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__CHManager_callTimersGetOutgoing__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) syncManager];
  [v2 timerOutgoing];
  *(*(*(a1 + 40) + 8) + 24) = v3;

  v4 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "==> %{public}@ => %f seconds", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (double)callTimersGetLifetime
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__CHManager_callTimersGetLifetime__block_invoke;
  v4[3] = &unk_1E81DC5A0;
  v4[4] = self;
  v4[5] = &v5;
  v4[6] = a2;
  [(CHSynchronizedLoggable *)self executeSync:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __34__CHManager_callTimersGetLifetime__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) syncManager];
  [v2 timerLifetime];
  *(*(*(a1 + 40) + 8) + 24) = v3;

  v4 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(*(*(a1 + 40) + 8) + 24);
    v8 = 138543618;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "==> %{public}@ => %f seconds", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)callTimersReset
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28__CHManager_callTimersReset__block_invoke;
  v2[3] = &unk_1E81DC5C8;
  v2[4] = self;
  v2[5] = a2;
  [(CHSynchronizedLoggable *)self execute:v2];
}

void __28__CHManager_callTimersReset__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSelector(*(a1 + 40));
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "==> %{public}@: User requested to reset call timers", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  [v4 resetTimers];

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)limitingCallKindsForCallType:(unsigned int)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a3 != -1)
  {
    if (a3)
    {
      v14[0] = @"kCHServiceProviderKey";
      v14[1] = @"kCHMediaTypeKey";
      v15[0] = @"com.apple.Telephony";
      v15[1] = &unk_1F43A2D10;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      [v4 addObject:v5];
    }

    if ((a3 & 0x10) != 0)
    {
      v12[0] = @"kCHServiceProviderKey";
      v12[1] = @"kCHMediaTypeKey";
      v13[0] = @"com.apple.FaceTime";
      v13[1] = &unk_1F43A2D10;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
      [v4 addObject:v6];
    }

    if ((a3 & 8) != 0)
    {
      v10[0] = @"kCHServiceProviderKey";
      v10[1] = @"kCHMediaTypeKey";
      v11[0] = @"com.apple.FaceTime";
      v11[1] = &unk_1F43A2D28;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
      [v4 addObject:v7];
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (unsigned)CHCallStatusForCallWithDuration:(double)a3 isOriginated:(BOOL)a4 isAnswered:(BOOL)a5
{
  v5 = &kCHCallStatusConnectedIncoming;
  v6 = &kCHCallStatusMissed;
  if (a5)
  {
    v6 = &kCHCallStatusAnsweredElsewhere;
  }

  if (a3 > 0.0)
  {
    v7 = &kCHCallStatusConnectedOutgoing;
  }

  else
  {
    v5 = v6;
    v7 = &kCHCallStatusCancelled;
  }

  if (a4)
  {
    v5 = v7;
  }

  return *v5;
}

- (void)addMultipleCallsToCallHistoryWithTransactions:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__CHManager_addMultipleCallsToCallHistoryWithTransactions___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __59__CHManager_addMultipleCallsToCallHistoryWithTransactions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncManager];
  [v2 insertRecords:*(a1 + 40)];
}

- (void)addMultipleCallsToCallHistory:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CHManager_addMultipleCallsToCallHistory___block_invoke;
  v6[3] = &unk_1E81DBE38;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CHSynchronizedLoggable *)self execute:v6];
}

void __43__CHManager_addMultipleCallsToCallHistory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) syncManager];
  [v2 insertRecordsWithoutTransactions:*(a1 + 40)];
}

- (int64_t)setRead:(BOOL)a3 forCallsWithPredicate:(id)a4
{
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__CHManager_setRead_forCallsWithPredicate___block_invoke;
  v10[3] = &unk_1E81DC5F0;
  v10[4] = self;
  v7 = v6;
  v11 = v7;
  v12 = &v14;
  v13 = a3;
  [(CHSynchronizedLoggable *)self executeSync:v10];
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __43__CHManager_setRead_forCallsWithPredicate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Updating read status for calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v12 = 0;
  v7 = [v4 setRead:v5 forCallsWithPredicate:v6 error:&v12];
  v8 = v12;
  *(*(*(a1 + 48) + 8) + 24) = v7;

  if (*(*(*(a1 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && v8 != 0)
  {
    v10 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __43__CHManager_setRead_forCallsWithPredicate___block_invoke_cold_1();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setRead:(BOOL)a3 forCallsWithPredicate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__CHManager_setRead_forCallsWithPredicate_completion___block_invoke;
  v12[3] = &unk_1E81DC618;
  v12[4] = self;
  v13 = v8;
  v15 = a3;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(CHSynchronizedLoggable *)self execute:v12];
}

void __54__CHManager_setRead_forCallsWithPredicate_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Updating read status for calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v13 = 0;
  v7 = [v4 setRead:v5 forCallsWithPredicate:v6 error:&v13];
  v8 = v13;

  if (v7 == 0x7FFFFFFFFFFFFFFFLL && v8 != 0)
  {
    v10 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __43__CHManager_setRead_forCallsWithPredicate___block_invoke_cold_1();
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)deleteCallsWithPredicate:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__CHManager_deleteCallsWithPredicate___block_invoke;
  v8[3] = &unk_1E81DC640;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(CHSynchronizedLoggable *)self executeSync:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __38__CHManager_deleteCallsWithPredicate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Deleting calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  v5 = *(a1 + 40);
  v11 = 0;
  v6 = [v4 deleteCallsWithPredicate:v5 error:&v11];
  v7 = v11;
  *(*(*(a1 + 48) + 8) + 24) = v6;

  if (*(*(*(a1 + 48) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL && v7 != 0)
  {
    v9 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __38__CHManager_deleteCallsWithPredicate___block_invoke_cold_1();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteCallsWithPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CHManager_deleteCallsWithPredicate_completion___block_invoke;
  v10[3] = &unk_1E81DC668;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CHSynchronizedLoggable *)self execute:v10];
}

void __49__CHManager_deleteCallsWithPredicate_completion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Deleting calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) syncManager];
  v5 = *(a1 + 40);
  v12 = 0;
  v6 = [v4 deleteCallsWithPredicate:v5 error:&v12];
  v7 = v12;

  if (v6 == 0x7FFFFFFFFFFFFFFFLL && v7 != 0)
  {
    v9 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __38__CHManager_deleteCallsWithPredicate___block_invoke_cold_1();
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (unint64_t)callCountWithPredicate:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v30[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __36__CHManager_callCountWithPredicate___block_invoke;
  v17 = &unk_1E81DC690;
  v18 = self;
  v7 = v4;
  v19 = v7;
  v21 = &v22;
  v8 = v6;
  v20 = v8;
  [(CHSynchronizedLoggable *)self executeSync:&v14];
  v9 = [(CHSynchronizedLoggable *)self logHandle:v14];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v23[3];
    *buf = 134218242;
    v27 = v10;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "Got %lu calls matching predicate %@", buf, 0x16u);
  }

  v11 = v23[3];
  _Block_object_dispose(&v22, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __36__CHManager_callCountWithPredicate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving count of calls matching predicate %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  *(*(*(a1 + 56) + 8) + 24) = [v5 fetchCallCountWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)callsWithLimits:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 batchSize:(unint64_t)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v29[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v13 = [(CHManager *)self syncManager];
  v14 = [v13 fetchCallsWithPredicate:self->_preFetchingPredicate sortDescriptors:v12 limitsDictionary:v10 limit:a4 offset:a5 batchSize:a6];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        v21 = [(CHManager *)self phoneBookManager];
        [v20 setPhoneBookManager:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)callsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 batchSize:(unint64_t)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v31[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__CHManager_callsWithPredicate_limit_offset_batchSize___block_invoke;
  v18[3] = &unk_1E81DC6B8;
  v18[4] = self;
  v13 = v10;
  v19 = v13;
  v21 = &v25;
  v14 = v12;
  v20 = v14;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  [(CHSynchronizedLoggable *)self executeSync:v18];
  v15 = v26[5];

  _Block_object_dispose(&v25, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __55__CHManager_callsWithPredicate_limit_offset_batchSize___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  v6 = [v5 fetchCallsWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4 limit:*(a1 + 64) offset:*(a1 + 72) batchSize:*(a1 + 80)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(*(*(a1 + 56) + 8) + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [*(a1 + 32) phoneBookManager];
        [v14 setPhoneBookManager:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)callIdentifiersWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 batchSize:(unint64_t)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v31[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__CHManager_callIdentifiersWithPredicate_limit_offset_batchSize___block_invoke;
  v18[3] = &unk_1E81DC6B8;
  v18[4] = self;
  v13 = v10;
  v19 = v13;
  v21 = &v25;
  v14 = v12;
  v20 = v14;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  [(CHSynchronizedLoggable *)self executeSync:v18];
  v15 = v26[5];

  _Block_object_dispose(&v25, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __65__CHManager_callIdentifiersWithPredicate_limit_offset_batchSize___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving identifiers for calls matching predicate %@", &v10, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  v6 = [v5 fetchCallIdentifiersWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4 limit:*(a1 + 64) offset:*(a1 + 72) batchSize:*(a1 + 80)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *MEMORY[0x1E69E9840];
}

- (unint64_t)coalescedCallCountWithPredicate:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v20[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__CHManager_coalescedCallCountWithPredicate___block_invoke;
  v12[3] = &unk_1E81DC690;
  v12[4] = self;
  v7 = v4;
  v13 = v7;
  v15 = &v16;
  v8 = v6;
  v14 = v8;
  [(CHSynchronizedLoggable *)self executeSync:v12];
  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __45__CHManager_coalescedCallCountWithPredicate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving count of coalesced calls matching predicate %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  *(*(*(a1 + 56) + 8) + 24) = [v5 fetchCoalescedCallCountWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (id)coalescedCallsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 batchSize:(unint64_t)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v31[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__CHManager_coalescedCallsWithPredicate_limit_offset_batchSize___block_invoke;
  v18[3] = &unk_1E81DC6B8;
  v18[4] = self;
  v13 = v10;
  v19 = v13;
  v21 = &v25;
  v14 = v12;
  v20 = v14;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  [(CHSynchronizedLoggable *)self executeSync:v18];
  v15 = v26[5];

  _Block_object_dispose(&v25, 8);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __64__CHManager_coalescedCallsWithPredicate_limit_offset_batchSize___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1C3E90000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving coalesced calls matching predicate %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) getLimitsDictionaryForPrivateHeader];
  v5 = [*(a1 + 32) syncManager];
  v6 = [v5 fetchCoalescedCallsWithPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48) limitsDictionary:v4 limit:*(a1 + 64) offset:*(a1 + 72) batchSize:*(a1 + 80)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(*(*(a1 + 56) + 8) + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [*(a1 + 32) phoneBookManager];
        [v14 setPhoneBookManager:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)latestRecentCallMatchingPredicate:(id)a3
{
  v3 = [(CHManager *)self callsWithPredicate:a3 limit:1 offset:0 batchSize:1];
  v4 = [v3 firstObject];

  return v4;
}

- (id)latestCallMatchingNormalizedRemoteParticipantHandleValues:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY remoteParticipantHandles.normalizedValue IN %@", a3];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(service_provider = %@) OR (service_provider = %@)", @"com.apple.FaceTime", @"com.apple.Telephony"];
  v6 = MEMORY[0x1E696AB28];
  v12[0] = v5;
  v12[1] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = [v6 andPredicateWithSubpredicates:v7];

  v9 = [(CHManager *)self latestRecentCallMatchingPredicate:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)protectedAppsChanged
{
  v3 = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C3E90000, v3, OS_LOG_TYPE_DEFAULT, "CHManager reset calls because protected apps changed", v4, 2u);
  }

  [(CHManager *)self resetCalls];
  notifyClientsOfEvent(@"kCallHistoryDatabaseChangedNotification", 0);
}

- (void)coalescedCallsWithCalls:(void *)a3 usingStrategy:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueId];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_1C3E90000, a4, OS_LOG_TYPE_ERROR, "Coalescing hash not found for call with uniqueID %{public}@", a1, 0xCu);
}

- (void)fetchRecentCallsSyncWithCoalescing:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  [*a1 count];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_DEBUG, "After coalescing we have %lu calls", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __32__CHManager_databaseSizeInBytes__block_invoke_cold_1(unsigned __int8 *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = getDBLErrorCodeAsString(*a1);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_ERROR, "Could not get database size; operation failed with error %{public}@.", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __32__CHManager_databaseSizeInBytes__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __43__CHManager_updateBytesOfDataUsedFor_with___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__CHManager_updateMessageStatusFor_with___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__CHManager_setRead_forCallsWithPredicate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __38__CHManager_deleteCallsWithPredicate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end