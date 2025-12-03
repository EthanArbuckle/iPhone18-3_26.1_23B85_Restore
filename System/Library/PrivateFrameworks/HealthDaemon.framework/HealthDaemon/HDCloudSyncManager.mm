@interface HDCloudSyncManager
+ (void)_containerIdentifiersWithEncryptionSupportEnabled:(BOOL)enabled accountManateeEnabled:(BOOL)manateeEnabled resultHandler:(id)handler;
- (BOOL)canPerformCloudSyncWithError:(id *)error;
- (BOOL)persistRestoreCompletionDate:(id)date error:(id *)error;
- (BOOL)setShareOwnerParticipant:(id)participant error:(id *)error;
- (HDCloudSyncManager)initWithProfile:(id)profile;
- (HDCloudSyncStatus)status;
- (HDProfile)profile;
- (id)_containerWithIdentifier:(id)identifier client:(id)client error:(id *)error;
- (id)_errorForNilProfile;
- (id)_gatherAttachmentAnalyticsForZoneID:(id)d repository:(id)repository error:(id *)error;
- (id)assetDownloadStagingManagerWithAssertion:(id)assertion;
- (id)disableAndDeleteAllSyncDataWithCompletion:(id)completion;
- (id)fetchShareParticipantsForSharingType:(unint64_t)type completion:(id)completion;
- (id)fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:(id)address completion:(id)completion;
- (id)lastPushForwardProgressDate;
- (id)leaveSharesWithCompletion:(id)completion;
- (id)lookupParticipantWithIdentityLookUpInfo:(id)info completion:(id)completion;
- (id)prepareForSharingWithCompletion:(id)completion;
- (id)removeAllParticipantsForSharingType:(unint64_t)type completion:(id)completion;
- (id)removeParticipants:(id)participants fromSharesWithCompletion:(id)completion;
- (id)resetWithContext:(id)context completion:(id)completion;
- (id)restoreCompletionDateWithError:(id *)error;
- (id)shareOwnerParticipantWithError:(id *)error;
- (id)syncMedicalIDDataWithContext:(id)context completion:(id)completion;
- (id)syncSessionForSyncStore:(id)store reason:(id)reason delegate:(id)delegate accessibilityAssertion:(id)assertion excludedStores:(id)stores excludedSyncIdentities:(id)identities;
- (id)syncWithContext:(id)context completion:(id)completion;
- (uint64_t)_isValidOwnerParticipant:(uint64_t)participant;
- (void)_persistErrorRequiringUserAction:(uint64_t)action;
- (void)_primaryContainerIdentifiersForCurrentAccountWithCompletion:(void *)completion;
- (void)_queue_considerStartingBackstopSyncForThreshold:(uint64_t)threshold;
- (void)_queue_updateAccessibilityAssertion;
- (void)_scheduleResetReceivedCloudSyncAnchorsAndRebaseForHFDRecovery;
- (void)_subscribeToSubscriptions:(void *)subscriptions completion:;
- (void)_tinkerContainerIdentifiersWithCompletion:(void *)completion;
- (void)_workoutSamplesAssociated:(id)associated;
- (void)acceptShare:(id)share completion:(id)completion;
- (void)accountDeviceToDeviceEncryptionAvailabilityStatusWithCompletion:(id)completion;
- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated;
- (void)cloudSyncRepositoriesForClient:(id)client completion:(id)completion;
- (void)configureForShareSetupMetadata:(id)metadata acceptedShares:(id)shares completion:(id)completion;
- (void)containerIdentifiersForCurrentAccountWithCompletion:(id)completion;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available;
- (void)dealloc;
- (void)didCompleteSuccessfulLitePushWithDate:(id)date;
- (void)didCompleteSuccessfulPullOfUpdateWithDate:(id)date;
- (void)didCompleteSuccessfulPullWithDate:(id)date;
- (void)didCompleteSuccessfulPushWithDate:(id)date;
- (void)fetchCloudKitAccountInfoWithCompletion:(id)completion;
- (void)fetchServerPreferredPushEnvironmentWithCompletion:(id)completion;
- (void)fetchSyncStatusWithCompletion:(id)completion;
- (void)invalidateAndWait;
- (void)modifyRecordsWithContext:(id)context recordsToCreate:(id)create recordsToDelete:(id)delete completion:(id)completion;
- (void)prepareForPeriodicSync;
- (void)profileDidBecomeReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
- (void)requestDataUploadWithCompletion:(id)completion;
- (void)subscribeToDataAvailableNotificationsWithCompletion:(id)completion;
- (void)subscribeToDataUploadRequestsWithCompletion:(id)completion;
- (void)syncWithRequest:(id)request reason:(id)reason completion:(id)completion;
- (void)updateDataUploadRequestStatus:(int64_t)status;
- (void)updateErrorRequiringUserAction:(id)action;
@end

@implementation HDCloudSyncManager

- (HDCloudSyncManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v33.receiver = self;
  v33.super_class = HDCloudSyncManager;
  v5 = [(HDCloudSyncManager *)&v33 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = HKCreateSerialUtilityDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    v6->_supportsRebase = [behavior isAppleWatch] ^ 1;

    v11 = 0;
    if (v6->_supportsRebase)
    {
      v11 = [profileCopy profileType] != 3;
    }

    v6->_supportsRebase = v11;
    daemon2 = [profileCopy daemon];
    behavior2 = [daemon2 behavior];
    if ([behavior2 isAppleWatch])
    {
      daemon3 = [profileCopy daemon];
      behavior3 = [daemon3 behavior];
      v6->_isChild = [behavior3 tinkerModeEnabled] ^ 1;
    }

    else
    {
      v6->_isChild = 0;
    }

    v16 = objc_alloc(MEMORY[0x277CCD738]);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 initWithName:v18 loggingCategory:*MEMORY[0x277CCC328]];
    observers = v6->_observers;
    v6->_observers = v19;

    v21 = [[HDCloudSyncOwnerIdentifierManager alloc] initWithCloudSyncManager:v6];
    ownerIdentifierManager = v6->_ownerIdentifierManager;
    v6->_ownerIdentifierManager = v21;

    v23 = [[HDCloudSyncSharedSummaryManager alloc] initWithProfile:profileCopy];
    sharedSummaryManager = v6->_sharedSummaryManager;
    v6->_sharedSummaryManager = v23;

    v25 = [[HDCloudSyncContextSyncManager alloc] initWithProfile:profileCopy];
    contextSyncManager = v6->_contextSyncManager;
    v6->_contextSyncManager = v25;

    v27 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v6->_assertionManager;
    v6->_assertionManager = v27;

    [(HDAssertionManager *)v6->_assertionManager addObserver:v6 forAssertionIdentifier:@"HDCloudSyncDownloadDirectoryAssertionIdentifier" queue:v6->_queue];
    directoryPath = [profileCopy directoryPath];
    v30 = [directoryPath stringByAppendingPathComponent:@"InProgressCloudDownload"];
    inProgressDownloadDirectoryPath = v6->_inProgressDownloadDirectoryPath;
    v6->_inProgressDownloadDirectoryPath = v30;

    v6->_inProgressDownloadDirectoryLock._os_unfair_lock_opaque = 0;
    [profileCopy registerProfileReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)dealloc
{
  observers = self->_observers;
  self->_observers = 0;

  v4.receiver = self;
  v4.super_class = HDCloudSyncManager;
  [(HDCloudSyncManager *)&v4 dealloc];
}

- (void)invalidateAndWait
{
  preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
  [preparedDatabaseAccessibilityAssertion invalidate];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"HDHealthStoreServerDidAssociateWorkoutSamples" object:0];
}

- (void)_workoutSamplesAssociated:(id)associated
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  supportsBackgroundSyncRequests = [behavior supportsBackgroundSyncRequests];

  if (supportsBackgroundSyncRequests)
  {
    v14 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
    v8 = objc_loadWeakRetained(&self->_profile);
    cloudSyncManager = [v8 cloudSyncManager];
    v10 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v14];
    [cloudSyncManager syncWithRequest:v10 reason:@"Workout samples associated" completion:&__block_literal_global_115];

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync requests disabled by behavior", buf, 0xCu);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

void __48__HDCloudSyncManager__workoutSamplesAssociated___block_invoke(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0 && (HKIsUnitTesting() & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v7 = v5;
      v8 = [v4 localizedDescription];
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Failed to cloud sync after workout samples associated: %{public}@", &v9, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (HDCloudSyncStatus)status
{
  v3 = objc_alloc_init(HDCloudSyncStatus);
  os_unfair_lock_lock(&self->_lock);
  [(HDCloudSyncStatus *)v3 setLastSuccessfulPullDate:self->_lock_lastSuccessfulPullDate];
  [(HDCloudSyncStatus *)v3 setLastSuccessfulPushDate:self->_lock_lastSuccessfulPushDate];
  [(HDCloudSyncStatus *)v3 setLastSuccessfulLitePushDate:self->_lock_lastSuccessfulLitePushDate];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)lastPushForwardProgressDate
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = HDCloudSyncKeyValueDomainWithProfile(WeakRetained);

  v11 = 0;
  v4 = [v3 dateForKey:@"HDCloudSyncPrimaryLastPushForwardProgressDate" error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4 || !v5)
  {
    v8 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = @"HDCloudSyncPrimaryLastPushForwardProgressDate";
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "Unable to determine value for %{public}@: %{public}@.", buf, 0x16u);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)didCompleteSuccessfulPullWithDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  lock_lastSuccessfulPullDate = self->_lock_lastSuccessfulPullDate;
  if (lock_lastSuccessfulPullDate == dateCopy || dateCopy && [(NSDate *)lock_lastSuccessfulPullDate isEqual:dateCopy])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_lock_lastSuccessfulPullDate, date);
    os_unfair_lock_unlock(&self->_lock);
    observers = self->_observers;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__HDCloudSyncManager_didCompleteSuccessfulPullWithDate___block_invoke;
    v8[3] = &unk_2786223D0;
    v8[4] = self;
    v9 = dateCopy;
    [(HKObserverSet *)observers notifyObservers:v8];
  }
}

- (void)didCompleteSuccessfulPullOfUpdateWithDate:(id)date
{
  dateCopy = date;
  observers = self->_observers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HDCloudSyncManager_didCompleteSuccessfulPullOfUpdateWithDate___block_invoke;
  v7[3] = &unk_2786223D0;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  [(HKObserverSet *)observers notifyObservers:v7];
}

- (void)didCompleteSuccessfulPushWithDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  lock_lastSuccessfulPushDate = self->_lock_lastSuccessfulPushDate;
  if (lock_lastSuccessfulPushDate == dateCopy || dateCopy && [(NSDate *)lock_lastSuccessfulPushDate isEqual:dateCopy])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_lock_lastSuccessfulPushDate, date);
    os_unfair_lock_unlock(&self->_lock);
    observers = self->_observers;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__HDCloudSyncManager_didCompleteSuccessfulPushWithDate___block_invoke;
    v8[3] = &unk_2786223D0;
    v8[4] = self;
    v9 = dateCopy;
    [(HKObserverSet *)observers notifyObservers:v8];
  }
}

- (void)didCompleteSuccessfulLitePushWithDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  lock_lastSuccessfulLitePushDate = self->_lock_lastSuccessfulLitePushDate;
  if (lock_lastSuccessfulLitePushDate == dateCopy || dateCopy && [(NSDate *)lock_lastSuccessfulLitePushDate isEqual:dateCopy])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_lock_lastSuccessfulLitePushDate, date);
    os_unfair_lock_unlock(&self->_lock);
    observers = self->_observers;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__HDCloudSyncManager_didCompleteSuccessfulLitePushWithDate___block_invoke;
    v8[3] = &unk_2786223D0;
    v8[4] = self;
    v9 = dateCopy;
    [(HKObserverSet *)observers notifyObservers:v8];
  }
}

- (id)assetDownloadStagingManagerWithAssertion:(id)assertion
{
  v23 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if (self)
  {
    [(HDAssertionManager *)self->_assertionManager takeAssertion:assertionCopy];
    os_unfair_lock_lock(&self->_inProgressDownloadDirectoryLock);
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_inProgressDownloadDirectoryPath isDirectory:1];
    v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v18 = 0;
    v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v18];
    v8 = v18;
    if (v7)
    {
      os_unfair_lock_unlock(&self->_inProgressDownloadDirectoryLock);
      self = v5;
      v9 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v21 = 2114;
        v22 = v8;
        _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Unable to create in progress download directory, %{public}@", buf, 0x16u);
      }

      os_unfair_lock_unlock(&self->_inProgressDownloadDirectoryLock);
      v11 = v8;
      v9 = v11;
      if (v11)
      {
        v12 = v11;
      }

      self = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = v9;
  if (self)
  {
    v14 = [objc_alloc(MEMORY[0x277CBC1A8]) initWithDirectory:self];
    [v14 setFileProtectionType:*MEMORY[0x277CCA198]];
    [v14 setKeepInflightFilesOpen:1];
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_scheduleResetReceivedCloudSyncAnchorsAndRebaseForHFDRecovery
{
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HDCloudSyncManager__scheduleResetReceivedCloudSyncAnchorsAndRebaseForHFDRecovery__block_invoke;
  v8[3] = &unk_278613968;
  v8[4] = self;
  v4 = [HDMaintenanceOperation maintenanceOperationWithName:@"Reset Received Cloud Sync Anchors" queue:queue synchronousBlock:v8];
  profile = [(HDCloudSyncManager *)self profile];
  daemon = [profile daemon];
  maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
  [maintenanceWorkCoordinator enqueueMaintenanceOperation:v4];
}

void __83__HDCloudSyncManager__scheduleResetReceivedCloudSyncAnchorsAndRebaseForHFDRecovery__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = MEMORY[0x277CCC2A0];
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v26 = v4;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Attempting reset of cloud sync anchors", buf, 0xCu);
  }

  v5 = [*(a1 + 32) profile];
  v6 = [v5 database];
  v7 = +[HDDatabaseTransactionContext contextForWriting];
  v24 = 0;
  v8 = [v6 performTransactionWithContext:v7 error:&v24 block:&__block_literal_global_370 inaccessibilityHandler:0];
  v9 = v24;

  _HKInitializeLogging();
  v10 = *v2;
  v11 = *v2;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Reset of cloud sync anchors completed", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v21 = *(a1 + 32);
    *buf = 138543362;
    v26 = v21;
    _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reset sync anchors as requested after HFD rebuild step.", buf, 0xCu);
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [*(a1 + 32) profile];
  v23 = v9;
  v15 = [HDCloudSyncStoreEntity rebaseRequiredByDate:v13 intervals:0 profile:v14 error:&v23];
  v16 = v23;

  _HKInitializeLogging();
  v17 = *v2;
  v18 = *v2;
  if (v15)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138543362;
      v26 = v19;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Marked rebase required after HFD recovery.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    *buf = 138543362;
    v26 = v22;
    _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to request rebase after HFD recovery.", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

BOOL __83__HDCloudSyncManager__scheduleResetReceivedCloudSyncAnchorsAndRebaseForHFDRecovery__block_invoke_367(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [HDSyncStoreEntity allSyncStoreEntitiesOfType:2 transaction:v4 error:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hk_map:&__block_literal_global_374];
    v8 = [HDSyncAnchorEntity resetAllSyncAnchorsOfType:3 syncProvenances:v7 transaction:v4 error:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __83__HDCloudSyncManager__scheduleResetReceivedCloudSyncAnchorsAndRebaseForHFDRecovery__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 syncProvenance];

  return [v2 numberWithLongLong:v3];
}

- (BOOL)canPerformCloudSyncWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  LOBYTE(error) = [cloudSyncCoordinator canPerformCloudSyncWithError:error];

  return error;
}

- (void)prepareForPeriodicSync
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDCloudSyncManager_prepareForPeriodicSync__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_queue_updateAccessibilityAssertion
{
  v16 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 120));
    WeakRetained = objc_loadWeakRetained((self + 104));
    database = [WeakRetained database];
    v11 = 0;
    v4 = [database takeAccessibilityAssertionWithOwnerIdentifier:@"HDCloudSyncManager Sync Preparation" timeout:&v11 error:600.0];
    v5 = v11;

    if (v4)
    {
      preparedDatabaseAccessibilityAssertion = [self preparedDatabaseAccessibilityAssertion];
      v8 = preparedDatabaseAccessibilityAssertion;
      if (preparedDatabaseAccessibilityAssertion)
      {
        [preparedDatabaseAccessibilityAssertion invalidate];
      }

      objc_setProperty_atomic(self, v7, v4, 8);
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v14 = 2114;
        v15 = v5;
        _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to take database accessibility assertion during sync preparation: %{public}@", buf, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)syncSessionForSyncStore:(id)store reason:(id)reason delegate:(id)delegate accessibilityAssertion:(id)assertion excludedStores:(id)stores excludedSyncIdentities:(id)identities
{
  identitiesCopy = identities;
  storesCopy = stores;
  assertionCopy = assertion;
  delegateCopy = delegate;
  reasonCopy = reason;
  storeCopy = store;
  v19 = [(HDSyncSession *)[HDCloudSyncSession alloc] initWithSyncStore:storeCopy reason:reasonCopy delegate:delegateCopy];

  [(HDSyncSession *)v19 setDatabaseAccessibilityAssertion:assertionCopy];
  [(HDCloudSyncSession *)v19 setExcludedSyncStores:storesCopy];

  [(HDCloudSyncSession *)v19 setExcludedSyncIdentities:identitiesCopy];

  return v19;
}

- (void)syncWithRequest:(id)request reason:(id)reason completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  reasonCopy = reason;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  supportsBackgroundSyncRequests = [behavior supportsBackgroundSyncRequests];

  if (supportsBackgroundSyncRequests)
  {
    queue = self->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__HDCloudSyncManager_syncWithRequest_reason_completion___block_invoke;
    v19[3] = &unk_278613680;
    v19[4] = self;
    v20 = requestCopy;
    v21 = reasonCopy;
    v22 = completionCopy;
    dispatch_async(queue, v19);
  }

  else
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync requests disabled by behavior", buf, 0xCu);
    }

    v17 = [MEMORY[0x277CCA9B8] hk_error:111 description:@"Sync requests disabled by behavior"];
    (*(completionCopy + 2))(completionCopy, 0, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __56__HDCloudSyncManager_syncWithRequest_reason_completion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 138543874;
    v15 = v3;
    v16 = 2114;
    v17 = v4;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync Requested: %{public}@ Reason: %{public}@", buf, 0x20u);
  }

  v6 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(*(a1 + 40)) reason:1];
  [v6 setSyncRequest:*(a1 + 40)];
  v7 = [*(a1 + 32) profile];
  v8 = [v7 daemon];
  v9 = [v8 cloudSyncCoordinator];
  v10 = *(a1 + 48);
  v13 = 0;
  [v9 scheduleSyncForAllProfilesViaGatedBackgroundTask:1 context:v6 reason:v10 error:&v13];
  v11 = v13;

  (*(*(a1 + 56) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (id)syncWithContext:(id)context completion:(id)completion
{
  v59 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = contextCopy;
  v9 = v8;
  if (!self)
  {

    v14 = 0;
    goto LABEL_32;
  }

  profile = [(HDCloudSyncManager *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsPeriodicFullCloudSync = [behavior supportsPeriodicFullCloudSync];

  if (supportsPeriodicFullCloudSync)
  {
LABEL_3:

    v14 = 0;
LABEL_22:
    if (![(HDCloudSyncManager *)self supportsRebase])
    {
      v34 = [v9 subContextByAddingOptions:320];

      v9 = v34;
    }

    if ([v9 reason] == 1 && (objc_msgSend(v9, "options") & 8) == 0)
    {
      v35 = [v9 subContextByAddingOptions:64];

      v9 = v35;
    }

    observers = self->_observers;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __49__HDCloudSyncManager_syncWithContext_completion___block_invoke;
    v52[3] = &unk_2786223F8;
    v52[4] = self;
    [(HKObserverSet *)observers notifyObservers:v52];
    v37 = [HDCloudSyncManagerSyncTask alloc];
    preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __49__HDCloudSyncManager_syncWithContext_completion___block_invoke_2;
    v50 = &unk_278622420;
    v51 = completionCopy;
    v39 = [(HDCloudSyncManagerPipelineTask *)v37 initWithManager:self context:v9 accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:&v47];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon2 = [WeakRetained daemon];
    cloudSyncCoordinator = [daemon2 cloudSyncCoordinator];
    [cloudSyncCoordinator addManagerTask:v39];

    progress = [(HDCloudSyncManagerTask *)v39 progress];

    goto LABEL_28;
  }

  syncRequest = [v9 syncRequest];

  if (!syncRequest)
  {
    v29 = v9;
    if (([v29 options] & 0x80) != 0)
    {
      if (([v29 options] & 0x1000) == 0)
      {
        goto LABEL_14;
      }

      v27 = MEMORY[0x277CCA9B8];
      v28 = @"Sync options incorrectly setup, device cannot perform lite sync pull.";
    }

    else
    {
      v27 = MEMORY[0x277CCA9B8];
      v28 = @"Sync options incorrectly setup, device can only perform lite sync.";
    }

LABEL_17:
    v32 = [v27 hk_error:3 format:v28];
    v30 = v32;
    if (v32)
    {
      v33 = v32;
      v31 = 0;
      changesSyncRequest3 = v30;
      syncRequest4 = v30;
    }

    else
    {
      changesSyncRequest3 = 0;
      syncRequest4 = 0;
      v31 = 0;
    }

    goto LABEL_20;
  }

  syncRequest2 = [v9 syncRequest];
  changesSyncRequest = [syncRequest2 changesSyncRequest];

  if (!changesSyncRequest)
  {
    goto LABEL_3;
  }

  v18 = v9;
  syncRequest3 = [v18 syncRequest];
  changesSyncRequest2 = [syncRequest3 changesSyncRequest];
  lite = [changesSyncRequest2 lite];

  if ((lite & 1) == 0)
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = @"Sync request incorrectly setup, device can only perform lite sync.";
    goto LABEL_17;
  }

  syncRequest4 = [v18 syncRequest];
  changesSyncRequest3 = [syncRequest4 changesSyncRequest];
  if ([changesSyncRequest3 lite])
  {
    syncRequest5 = [v18 syncRequest];
    changesSyncRequest4 = [syncRequest5 changesSyncRequest];
    pull = [changesSyncRequest4 pull];

    if (pull)
    {
      v27 = MEMORY[0x277CCA9B8];
      v28 = @"Sync request incorrectly setup, device cannot perform lite sync pull.";
      goto LABEL_17;
    }

LABEL_14:
    v30 = 0;
    v31 = 1;
    goto LABEL_21;
  }

  v30 = 0;
  v31 = 1;
LABEL_20:

LABEL_21:
  v14 = v30;
  if (v31)
  {
    goto LABEL_22;
  }

LABEL_32:
  _HKInitializeLogging();
  v46 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v55 = 2114;
    v56 = v9;
    v57 = 2114;
    v58 = v14;
    _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to validate cloud sync context %{public}@ with error %{public}@", buf, 0x20u);
  }

  (*(completionCopy + 2))(completionCopy, 0, v14);
  progress = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
LABEL_28:

  v44 = *MEMORY[0x277D85DE8];

  return progress;
}

void __49__HDCloudSyncManager_syncWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 104));
  v6 = [WeakRetained daemon];
  v7 = [v6 cloudSyncCoordinator];
  v10 = 0;
  v8 = [v7 canPerformCloudSyncWithError:&v10];
  v9 = v10;

  [v4 cloudSyncManager:*(a1 + 32) didUpdateSyncEnabled:v8];
}

- (id)resetWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v8 = [HDCloudSyncManagerResetTask alloc];
  preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __50__HDCloudSyncManager_resetWithContext_completion___block_invoke;
  v17[3] = &unk_278622420;
  v18 = completionCopy;
  v10 = completionCopy;
  v11 = [(HDCloudSyncManagerPipelineTask *)v8 initWithManager:self context:contextCopy accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:v17];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v11];

  progress = [(HDCloudSyncManagerTask *)v11 progress];

  return progress;
}

void __90__HDCloudSyncManager_fetchDescriptionWithContext_updateCacheAndPrepareForSync_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  v7 = [a2 repositoryDescription];
  (*(v5 + 16))(v5, v7, v6);
}

- (void)modifyRecordsWithContext:(id)context recordsToCreate:(id)create recordsToDelete:(id)delete completion:(id)completion
{
  completionCopy = completion;
  deleteCopy = delete;
  createCopy = create;
  contextCopy = context;
  v14 = [HDCloudSyncManagerRecordTask alloc];
  preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__HDCloudSyncManager_modifyRecordsWithContext_recordsToCreate_recordsToDelete_completion___block_invoke;
  v21[3] = &unk_278622420;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = [(HDCloudSyncManagerRecordTask *)v14 initWithManager:self context:contextCopy accessibilityAssertion:preparedDatabaseAccessibilityAssertion recordsToCreate:createCopy recordsToDelete:deleteCopy completion:v21];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v17];
}

- (void)fetchSyncStatusWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = MEMORY[0x277CCC328];
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting fetch cloud sync status task", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  profileType = [WeakRetained profileType];

  if (profileType != 3)
  {
    goto LABEL_6;
  }

  v18 = 0;
  v9 = [(HDCloudSyncManager *)self shareOwnerParticipantWithError:&v18];
  v10 = v18;
  if (v9)
  {

LABEL_6:
    v10 = [[HDCloudSyncManagerStatusTask alloc] initWithManager:self completion:completionCopy];
    [(HDCloudSyncManagerTask *)v10 startWithCompletion:&__block_literal_global_398];
    goto LABEL_7;
  }

  _HKInitializeLogging();
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    v16 = v12;
    profile = [(HDCloudSyncManager *)self profile];
    *buf = 138543618;
    selfCopy2 = self;
    v21 = 2114;
    v22 = profile;
    _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Sync unavailable before setting a source share participant for profile %{public}@", buf, 0x16u);
  }

  v13 = MEMORY[0x277CCA9B8];
  profile2 = [(HDCloudSyncManager *)self profile];
  v15 = [v13 hk_error:729 format:{@"Sync unavailable before setting a source share participant for profile: %@", profile2}];
  completionCopy[2](completionCopy, 0, v15);

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchCloudKitAccountInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HDCloudSyncManager_fetchCloudKitAccountInfoWithCompletion___block_invoke;
  v6[3] = &unk_27861BB88;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HDCloudSyncManager *)self cloudSyncRepositoriesForClient:0 completion:v6];
}

void __61__HDCloudSyncManager_fetchCloudKitAccountInfoWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 firstObject];
    v6 = [v5 primaryCKContainer];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__HDCloudSyncManager_fetchCloudKitAccountInfoWithCompletion___block_invoke_2;
    v7[3] = &unk_278622470;
    v9 = *(a1 + 32);
    v8 = v4;
    [v6 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __61__HDCloudSyncManager_fetchCloudKitAccountInfoWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a2;
  v7 = a3;
  if (a4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCD120]);
    v9 = [*(a1 + 32) firstObject];
    v10 = [v8 initWithFullName:v11 emailAddress:v7 accountSettings:{objc_msgSend(v9, "repositorySettings")}];

    (*(*(a1 + 40) + 16))();
  }
}

- (id)disableAndDeleteAllSyncDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HDCloudSyncContext alloc] initForPurpose:5 options:64 reason:6];
  v6 = [HDCloudSyncManagerDisableAndDeleteTask alloc];
  preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HDCloudSyncManager_disableAndDeleteAllSyncDataWithCompletion___block_invoke;
  v15[3] = &unk_278622420;
  v16 = completionCopy;
  v8 = completionCopy;
  v9 = [(HDCloudSyncManagerPipelineTask *)v6 initWithManager:self context:v5 accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:v15];

  [(HDCloudSyncManagerRepositoryTask *)v9 setRunWhenSyncProhibited:1];
  [(HDCloudSyncManagerTask *)v9 setPriority:100];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v9];

  progress = [(HDCloudSyncManagerTask *)v9 progress];

  return progress;
}

- (void)accountDeviceToDeviceEncryptionAvailabilityStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = 0;
  v5 = [(HDCloudSyncManager *)self _containerWithIdentifier:@"com.apple.health.sync" client:0 error:&v9];
  v6 = v9;
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __86__HDCloudSyncManager_accountDeviceToDeviceEncryptionAvailabilityStatusWithCompletion___block_invoke;
    v7[3] = &unk_278622498;
    v7[4] = self;
    v8 = completionCopy;
    [v5 accountInfoWithCompletionHandler:v7];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }
}

void __86__HDCloudSyncManager_accountDeviceToDeviceEncryptionAvailabilityStatusWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: accountInfo %{public}@", &v12, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v5)
  {
    if ([v5 deviceToDeviceEncryptionAvailability])
    {
      v10 = 1;
    }

    else
    {
      v10 = [v5 supportsDeviceToDeviceEncryption];
    }

    (*(v9 + 16))(v9, v10, 0);
  }

  else
  {
    (*(v9 + 16))(v9, 0, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)syncMedicalIDDataWithContext:(id)context completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  supportsBackgroundSyncRequests = [behavior supportsBackgroundSyncRequests];

  if (supportsBackgroundSyncRequests)
  {
    v12 = [HDCloudSyncManagerMedicalIDSyncTask alloc];
    preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __62__HDCloudSyncManager_syncMedicalIDDataWithContext_completion___block_invoke;
    v23[3] = &unk_278622420;
    v24 = completionCopy;
    v14 = [(HDCloudSyncManagerPipelineTask *)v12 initWithManager:self context:contextCopy accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:v23];

    v15 = objc_loadWeakRetained(&self->_profile);
    daemon2 = [v15 daemon];
    cloudSyncCoordinator = [daemon2 cloudSyncCoordinator];
    [cloudSyncCoordinator addManagerTask:v14];

    progress = [(HDCloudSyncManagerTask *)v14 progress];

    v19 = v24;
  }

  else
  {
    _HKInitializeLogging();
    v20 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Sync requests disabled by behavior", buf, 0xCu);
    }

    v19 = [MEMORY[0x277CCA9B8] hk_error:111 description:@"Sync requests disabled by behavior"];
    (*(completionCopy + 2))(completionCopy, 0, v19);
    progress = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
  }

  v21 = *MEMORY[0x277D85DE8];

  return progress;
}

- (void)cloudSyncRepositoriesForClient:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    _errorForNilProfile = [(HDCloudSyncManager *)self _errorForNilProfile];
    completionCopy[2](completionCopy, 0, _errorForNilProfile);

    goto LABEL_15;
  }

  v10 = WeakRetained;
  v11 = v10;
  if (!self)
  {
    v18 = 0;
    hd_syncCircleIdentifier = 0;
    goto LABEL_11;
  }

  v12 = HDCloudSyncKeyValueDomainWithProfile(v10);
  v30 = 0;
  v13 = [v12 stringForKey:@"HDCloudSyncCircleIdentifier" error:&v30];
  v14 = v30;
  v15 = v14;
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    if (v14)
    {
      v20 = v14;
      hd_syncCircleIdentifier = 0;
      v18 = v15;
      goto LABEL_10;
    }

    profileType = [v11 profileType];
    if ((profileType - 1) >= 3)
    {
      if (profileType == 4)
      {
        profileIdentifier = [v11 profileIdentifier];
        hd_syncCircleIdentifier = [profileIdentifier hd_syncCircleIdentifier];

        goto LABEL_6;
      }

      if (profileType != 100)
      {
        hd_syncCircleIdentifier = sel__syncCircleIdentifierForProfile_error_;
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__syncCircleIdentifierForProfile_error_ object:self file:@"HDCloudSyncManager.m" lineNumber:784 description:{@"Unhandled profile type %ld", objc_msgSend(v11, "profileType")}];

        v18 = 0;
        goto LABEL_10;
      }
    }

    v16 = @"PrimarySyncCircle";
  }

  hd_syncCircleIdentifier = v16;
LABEL_6:
  v18 = 0;
LABEL_10:

LABEL_11:
  v21 = v18;
  if (hd_syncCircleIdentifier)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__HDCloudSyncManager_cloudSyncRepositoriesForClient_completion___block_invoke;
    v25[3] = &unk_2786224E8;
    v29 = completionCopy;
    v25[4] = self;
    v26 = v11;
    v27 = clientCopy;
    v28 = hd_syncCircleIdentifier;
    [(HDCloudSyncManager *)self containerIdentifiersForCurrentAccountWithCompletion:v25];
  }

  else
  {
    completionCopy[2](completionCopy, 0, v21);
  }

LABEL_15:
}

- (id)_errorForNilProfile
{
  if (self)
  {
    self = [MEMORY[0x277CCA9B8] hk_error:100 description:@"profile is nil"];
    v1 = vars8;
  }

  return self;
}

void __64__HDCloudSyncManager_cloudSyncRepositoriesForClient_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138543874;
      v32 = v10;
      v33 = 2114;
      v34 = v11;
      v35 = 2114;
      v36 = v7;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@ Using primary cloud sync container identifier: %{public}@", buf, 0x20u);
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v30 = 0;
    v14 = [v12 _containerWithIdentifier:v7 client:v13 error:&v30];
    v15 = v30;
    if (v14)
    {
      if (v8)
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 48);
        v29 = v15;
        v18 = [v16 _containerWithIdentifier:v8 client:v17 error:&v29];
        v19 = v29;

        if (!v18 && v19)
        {
          (*(*(a1 + 64) + 16))();
          v15 = v19;
LABEL_14:

          goto LABEL_15;
        }

        v15 = v19;
      }

      else
      {
        v18 = 0;
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __64__HDCloudSyncManager_cloudSyncRepositoriesForClient_completion___block_invoke_426;
      v22[3] = &unk_2786224C0;
      v23 = *(a1 + 40);
      v24 = *(a1 + 56);
      v25 = v14;
      v26 = v18;
      v27 = *(a1 + 64);
      v28 = a4;
      v20 = v18;
      [v25 fetchUserRecordIDWithCompletionHandler:v22];

      goto LABEL_14;
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_14;
  }

  (*(*(a1 + 64) + 16))();
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

void __64__HDCloudSyncManager_cloudSyncRepositoriesForClient_completion___block_invoke_426(void *a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (HDIsUnitTesting())
  {
    v7 = [HDCloudSyncRepository alloc];
    v8 = v7;
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    if (a1[7])
    {
      v26[0] = a1[7];
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      v13 = [(HDCloudSyncRepository *)v8 initWithProfile:v9 syncCircleIdentifier:v10 primaryCKContainer:v11 secondaryCKContainers:v12 userRecordName:@"TestUserRecordName"];
    }

    else
    {
      v13 = [(HDCloudSyncRepository *)v7 initWithProfile:a1[4] syncCircleIdentifier:a1[5] primaryCKContainer:a1[6] secondaryCKContainers:MEMORY[0x277CBEBF8] userRecordName:@"TestUserRecordName"];
    }

LABEL_12:
    [(HDCloudSyncRepository *)v13 setRepositorySettings:a1[9]];
    v21 = a1[8];
    v24 = v13;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    (*(v21 + 16))(v21, v22, 0);

    goto LABEL_13;
  }

  if (v5)
  {
    v14 = [HDCloudSyncRepository alloc];
    v15 = a1[4];
    v16 = a1[5];
    v17 = a1[6];
    v18 = a1[7];
    if (v18)
    {
      v25 = a1[7];
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    }

    else
    {
      v19 = MEMORY[0x277CBEBF8];
    }

    v20 = [v5 recordName];
    v13 = [(HDCloudSyncRepository *)v14 initWithProfile:v15 syncCircleIdentifier:v16 primaryCKContainer:v17 secondaryCKContainers:v19 userRecordName:v20];

    if (v18)
    {
    }

    goto LABEL_12;
  }

  (*(a1[8] + 16))();
LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)_containerIdentifiersWithEncryptionSupportEnabled:(BOOL)enabled accountManateeEnabled:(BOOL)manateeEnabled resultHandler:(id)handler
{
  manateeEnabledCopy = manateeEnabled;
  enabledCopy = enabled;
  v15 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109376;
    v12[1] = enabledCopy;
    v13 = 1024;
    v14 = manateeEnabledCopy;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Setting container identifiers. CloudKitSupportsDeviceToDeviceEncryption=%{BOOL}d, CKDeviceToDeviceEncryptionStatusSupportedByAccount=%{BOOL}d", v12, 0xEu);
  }

  if (enabledCopy || manateeEnabledCopy)
  {
    v9 = @"com.apple.health.sync.secure";
  }

  else
  {
    v9 = @"com.apple.health.sync";
  }

  if (enabledCopy || manateeEnabledCopy)
  {
    v10 = @"com.apple.health.sync";
  }

  else
  {
    v10 = @"com.apple.health.sync.secure";
  }

  handlerCopy[2](handlerCopy, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_containerWithIdentifier:(id)identifier client:(id)client error:(id *)error
{
  identifierCopy = identifier;
  clientCopy = client;
  if ([MEMORY[0x277CBC218] currentProcessCanUseCloudKit])
  {
    v10 = [MEMORY[0x277CBC218] containerWithIdentifier:identifierCopy];
    options = [v10 options];
    [options setUseZoneWidePCS:1];

    options2 = [v10 options];
    [options2 setApplicationBundleIdentifierOverride:*MEMORY[0x277CCE3A8]];

    if (clientCopy)
    {
      process = [clientCopy process];
      options5 = [process valueForEntitlement:*MEMORY[0x277CCBB60]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        options3 = [v10 options];
        [options3 setApplicationBundleIdentifierOverrideForNetworkAttribution:options5];
      }

      else
      {
        options3 = [clientCopy process];
        bundleIdentifier = [options3 bundleIdentifier];
        options4 = [v10 options];
        [options4 setApplicationBundleIdentifierOverrideForNetworkAttribution:bundleIdentifier];
      }
    }

    else
    {
      options5 = [v10 options];
      [options5 setApplicationBundleIdentifierOverrideForNetworkAttribution:*MEMORY[0x277CCE408]];
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"%@: Process cannot use CloudKit", self}];
    v10 = 0;
  }

  return v10;
}

- (void)containerIdentifiersForCurrentAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    _errorForNilProfile = [(HDCloudSyncManager *)self _errorForNilProfile];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, _errorForNilProfile);

    goto LABEL_19;
  }

  profileType = [WeakRetained profileType];
  if (profileType > 2)
  {
    if (profileType == 3)
    {
LABEL_14:
      [(HDCloudSyncManager *)self _tinkerContainerIdentifiersWithCompletion:completionCopy];
      goto LABEL_19;
    }

    if (profileType == 4)
    {
LABEL_15:
      [(HDCloudSyncManager *)self _primaryContainerIdentifiersForCurrentAccountWithCompletion:completionCopy];
      goto LABEL_19;
    }

    if (profileType != 100)
    {
      goto LABEL_19;
    }

LABEL_13:
    daemon = [v5 daemon];
    behavior = [daemon behavior];
    tinkerModeEnabled = [behavior tinkerModeEnabled];

    if (tinkerModeEnabled)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (profileType == 1)
  {
    goto LABEL_13;
  }

  if (profileType == 2)
  {
    v8 = completionCopy;
    if (self)
    {
      v18 = 0;
      v9 = [(HDCloudSyncManager *)self _containerWithIdentifier:@"com.apple.health.sync.secure" client:0 error:&v18];
      v10 = v18;
      if (v9)
      {
        v11 = @"com.apple.health.sync.secure";
        v12 = 1;
        v13 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = v10;
      }

      v8[2](v8, v11, 0, v12, v13);
    }
  }

LABEL_19:
}

- (void)_tinkerContainerIdentifiersWithCompletion:(void *)completion
{
  v3 = a2;
  if (completion)
  {
    v4 = @"com.apple.health.sync.secure";
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [standardUserDefaults BOOLForKey:*MEMORY[0x277CCBC18]];

    if (v6)
    {
      v7 = @"com.apple.health.sync";

      v8 = 0;
      v4 = v7;
    }

    else
    {
      v8 = 1;
    }

    v14 = 0;
    v9 = [completion _containerWithIdentifier:v4 client:0 error:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = v4;
      v12 = v8;
      v13 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = v10;
    }

    v3[2](v3, v11, 0, v12, v13);
  }
}

- (void)_primaryContainerIdentifiersForCurrentAccountWithCompletion:(void *)completion
{
  v3 = a2;
  if (completion)
  {
    v8 = 0;
    v4 = [completion _containerWithIdentifier:@"com.apple.health.sync" client:0 error:&v8];
    v5 = v8;
    if (v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __82__HDCloudSyncManager__primaryContainerIdentifiersForCurrentAccountWithCompletion___block_invoke;
      v6[3] = &unk_278622498;
      v6[4] = completion;
      v7 = v3;
      [v4 accountInfoWithCompletionHandler:v6];
    }

    else
    {
      (*(v3 + 2))(v3, 0, 0, 0, v5);
    }
  }
}

void __82__HDCloudSyncManager__primaryContainerIdentifiersForCurrentAccountWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC328];
  v8 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v22 = v9;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: accountInfo %{public}@", buf, 0x16u);
  }

  if (v5)
  {
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    if (v10)
    {
      v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v11 setObject:v10 forKey:@"HDCloudSyncAccountInfo"];
    }

    else
    {
      _HKInitializeLogging();
      v12 = *v7;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Failed to archive CKAccountInfo", buf, 2u);
      }
    }

    v13 = [v5 deviceToDeviceEncryptionAvailability] & 1;
    v14 = *(a1 + 32);
    v15 = objc_opt_class();
    v16 = [v5 supportsDeviceToDeviceEncryption];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__HDCloudSyncManager__primaryContainerIdentifiersForCurrentAccountWithCompletion___block_invoke_444;
    v18[3] = &unk_278622510;
    v20 = v13;
    v19 = *(a1 + 40);
    [v15 _containerIdentifiersWithEncryptionSupportEnabled:v16 accountManateeEnabled:v13 resultHandler:v18];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateErrorRequiringUserAction:(id)action
{
  if (action)
  {
    hd_cloudKitErrorRequiringUserAction = [action hd_cloudKitErrorRequiringUserAction];
    if (hd_cloudKitErrorRequiringUserAction)
    {
      v10 = hd_cloudKitErrorRequiringUserAction;
      if (![hd_cloudKitErrorRequiringUserAction hk_isHealthKitErrorWithCode:706])
      {
        goto LABEL_5;
      }

      WeakRetained = objc_loadWeakRetained(&self->_profile);
      daemon = [WeakRetained daemon];
      cloudSyncCoordinator = [daemon cloudSyncCoordinator];
      accountProvider = [cloudSyncCoordinator accountProvider];
      isAccountInManateeUnavailableCFUState = [accountProvider isAccountInManateeUnavailableCFUState];

      hd_cloudKitErrorRequiringUserAction = v10;
      if (isAccountInManateeUnavailableCFUState)
      {
LABEL_5:
        [(HDCloudSyncManager *)self _persistErrorRequiringUserAction:v10];
        hd_cloudKitErrorRequiringUserAction = v10;
      }
    }
  }

  else
  {

    [(HDCloudSyncManager *)self _persistErrorRequiringUserAction:?];
  }
}

- (void)_persistErrorRequiringUserAction:(uint64_t)action
{
  v3 = a2;
  if (action)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    WeakRetained = objc_loadWeakRetained((action + 104));
    database = [WeakRetained database];
    v15 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__HDCloudSyncManager__persistErrorRequiringUserAction___block_invoke;
    v12[3] = &unk_278615F88;
    v12[4] = action;
    v6 = v3;
    v13 = v6;
    v14 = &v16;
    v7 = [(HDHealthEntity *)HDUnprotectedKeyValueEntity performWriteTransactionWithHealthDatabase:database error:&v15 block:v12];
    v8 = v15;

    if (v7 && *(v17 + 24) == 1)
    {
      v9 = *(action + 88);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __55__HDCloudSyncManager__persistErrorRequiringUserAction___block_invoke_455;
      v10[3] = &unk_2786223D0;
      v10[4] = action;
      v11 = v6;
      [v9 notifyObservers:v10];
    }

    _Block_object_dispose(&v16, 8);
  }
}

uint64_t __55__HDCloudSyncManager__persistErrorRequiringUserAction___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1[4] + 104));
  v6 = HDCloudSyncKeyValueDomainWithProfile(WeakRetained);

  v24 = 0;
  v7 = [v6 dataForKey:@"HDCloudSyncKeyErrorRequiringUserAction" error:&v24];
  v8 = v24;
  v9 = v8;
  if (v7)
  {
LABEL_2:
    *(*(a1[6] + 8) + 24) = 1;
    v10 = a1[5];
    if (v10)
    {
      v23 = 0;
      v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v23];
      v12 = v23;
      if (v12)
      {
        _HKInitializeLogging();
        v13 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v21 = a1[4];
          *buf = 138543618;
          v26 = v21;
          v27 = 2114;
          v28 = v12;
          _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to archive cloud sync error requiring user action: %{public}@", buf, 0x16u);
        }

        if (a3)
        {
          v14 = v12;
          v15 = 0;
          *a3 = v12;
        }

        else
        {
          _HKLogDroppedError();
          v15 = 0;
        }
      }

      else
      {
        v15 = [v6 setData:v11 forKey:@"HDCloudSyncKeyErrorRequiringUserAction" error:a3];
      }
    }

    else
    {
      v18 = [MEMORY[0x277CBEB98] setWithObject:@"HDCloudSyncKeyErrorRequiringUserAction"];
      v15 = [v6 removeValuesForKeys:v18 error:a3];
    }

    goto LABEL_19;
  }

  if (!v8)
  {
    if (!a1[5])
    {
      v15 = 1;
      goto LABEL_19;
    }

    goto LABEL_2;
  }

  _HKInitializeLogging();
  v16 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v22 = a1[4];
    *buf = 138543618;
    v26 = v22;
    v27 = 2114;
    v28 = v9;
    _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read cloud sync error requiring user action: %{public}@", buf, 0x16u);
  }

  if (a3)
  {
    v17 = v9;
    v15 = 0;
    *a3 = v9;
  }

  else
  {
    _HKLogDroppedError();
    v15 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)persistRestoreCompletionDate:(id)date error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  profile = [(HDCloudSyncManager *)self profile];
  v8 = HDCloudSyncKeyValueDomainWithProfile(profile);

  v9 = @"HKCloudSyncObserverRestoreCompletionDate";
  _HKInitializeLogging();
  v10 = MEMORY[0x277CCC328];
  v11 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = HKDiagnosticStringFromDate();
    *buf = 138543618;
    selfCopy2 = self;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_INFO, "%{public}@: Set cloud sync restore completion date: %{public}@", buf, 0x16u);
  }

  v24 = 0;
  v14 = [v8 setDate:dateCopy forKey:v9 error:&v24];
  v15 = v24;
  if (v14)
  {
    observers = self->_observers;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__HDCloudSyncManager_persistRestoreCompletionDate_error___block_invoke;
    v22[3] = &unk_2786223D0;
    v22[4] = self;
    v23 = dateCopy;
    [(HKObserverSet *)observers notifyObservers:v22];
  }

  else
  {
    _HKInitializeLogging();
    v17 = *v10;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v27 = 2114;
      v28 = v15;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to record cloud sync restore completion date: %{public}@.", buf, 0x16u);
    }

    v18 = v15;
    if (v18)
    {
      if (error)
      {
        v19 = v18;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)restoreCompletionDateWithError:(id *)error
{
  profile = [(HDCloudSyncManager *)self profile];
  v5 = HDCloudSyncKeyValueDomainWithProfile(profile);

  v6 = [v5 dateForKey:@"HKCloudSyncObserverRestoreCompletionDate" error:error];

  return v6;
}

- (void)updateDataUploadRequestStatus:(int64_t)status
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_uploadRequestStatus = status;
  if (status == 1)
  {
    v5 = 48;
    goto LABEL_5;
  }

  if (status == 4)
  {
    v5 = 56;
LABEL_5:
    date = [MEMORY[0x277CBEAA8] date];
    v7 = *(&self->super.isa + v5);
    *(&self->super.isa + v5) = date;
  }

  v8 = self->_lock_lastDataUploadRequestStartDate;
  v9 = self->_lock_lastDataUploadRequestCompletionDate;
  observers = self->_observers;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__HDCloudSyncManager_updateDataUploadRequestStatus___block_invoke;
  v13[3] = &unk_278622538;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  statusCopy = status;
  v11 = v9;
  v12 = v8;
  [(HKObserverSet *)observers notifyObservers:v13];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self queue:self->_queue];

  v6 = objc_loadWeakRetained(&self->_profile);
  daemon = [v6 daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator addObserver:self queue:self->_queue];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__workoutSamplesAssociated_ name:@"HDHealthStoreServerDidAssociateWorkoutSamples" object:0];
}

- (void)database:(id)database protectedDataDidBecomeAvailable:(BOOL)available
{
  availableCopy = available;
  dispatch_assert_queue_V2(self->_queue);
  if (availableCopy)
  {

    [(HDCloudSyncManager *)self _queue_considerStartingBackstopSyncForThreshold:?];
  }
}

- (void)_queue_considerStartingBackstopSyncForThreshold:(uint64_t)threshold
{
  v59 = *MEMORY[0x277D85DE8];
  if (threshold)
  {
    dispatch_assert_queue_V2(*(threshold + 120));
    profile = [threshold profile];
    daemon = [profile daemon];
    behavior = [daemon behavior];
    supportsPeriodicFullCloudSync = [behavior supportsPeriodicFullCloudSync];

    if (supportsPeriodicFullCloudSync)
    {
      WeakRetained = objc_loadWeakRetained((threshold + 104));
      v9 = WeakRetained;
      if (!WeakRetained)
      {
LABEL_28:

        goto LABEL_29;
      }

      daemon2 = [WeakRetained daemon];
      cloudSyncCoordinator = [daemon2 cloudSyncCoordinator];
      v52 = 0;
      v12 = [cloudSyncCoordinator canPerformCloudSyncWithError:&v52];
      v13 = v52;

      if ((v12 & 1) == 0)
      {
        if (v13)
        {
          if (([v13 hk_isHealthKitErrorWithCode:111] & 1) == 0)
          {
            _HKInitializeLogging();
            v19 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              thresholdCopy9 = threshold;
              v55 = 2114;
              v56 = *&v13;
              _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Failed to check sync enablement status during backstop consideration: %{public}@", buf, 0x16u);
            }
          }
        }

        if (!_HDIsUnitTesting)
        {
          goto LABEL_27;
        }

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"HDBackstopSyncRefusedNotification" object:threshold];
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      defaultCenter = [MEMORY[0x277CBEAA8] date];
      v15 = HDCloudSyncKeyValueDomainWithProfile(v9);
      v51 = v13;
      [v15 dateForKey:@"HDBackstopSyncLastConsiderationDateKey" error:&v51];
      v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v17 = v51;

      if (v16 == 0.0 && v17)
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          thresholdCopy9 = threshold;
          v55 = 2114;
          v56 = *&v17;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get last backstop reconsideration date: %{public}@", buf, 0x16u);
        }

LABEL_21:
        if (!_HDIsUnitTesting)
        {
LABEL_24:
          v13 = v17;
LABEL_25:

          goto LABEL_26;
        }

        [MEMORY[0x277CCAB98] defaultCenter];
        v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*&v25 postNotificationName:@"HDBackstopSyncRefusedNotification" object:threshold];
LABEL_23:

        goto LABEL_24;
      }

      if (v16 == 0.0)
      {
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        [defaultCenter timeIntervalSinceDate:distantPast];
        v21 = v23;
      }

      else
      {
        [defaultCenter timeIntervalSinceDate:*&v16];
        v21 = v20;
      }

      if (v21 < 14400.0)
      {
        _HKInitializeLogging();
        v24 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
        {
          *buf = 138543874;
          thresholdCopy9 = threshold;
          v55 = 2048;
          v56 = v21;
          v57 = 2114;
          v58 = v16;
          _os_log_impl(&dword_228986000, v24, OS_LOG_TYPE_INFO, "%{public}@: Last backstop sync reconsideration was too recent, not syncing (%0.2lfs, %{public}@)", buf, 0x20u);
        }

        goto LABEL_21;
      }

      v50 = v17;
      v27 = [v15 setDate:defaultCenter forKey:@"HDBackstopSyncLastConsiderationDateKey" error:&v50];
      v13 = v50;

      if ((v27 & 1) == 0 && (_HKInitializeLogging(), v28 = *MEMORY[0x277CCC328], os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR)))
      {
        *buf = 138543618;
        thresholdCopy9 = threshold;
        v55 = 2114;
        v56 = *&v13;
        _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "%{public}@: Failed to update last backstop reconsideration date: %{public}@", buf, 0x16u);
        if (v16 == 0.0)
        {
          goto LABEL_54;
        }
      }

      else if (v16 == 0.0)
      {
        goto LABEL_54;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v13;
        [HDCloudSyncStoreEntity persistedMostRecentLastSyncDateForProfile:v9 error:&v49];
        v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v17 = v49;

        if (v25 == 0.0 && v17)
        {
          _HKInitializeLogging();
          v29 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            thresholdCopy9 = threshold;
            v55 = 2114;
            v56 = *&v17;
            _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Failed to check last successful push date: %{public}@", buf, 0x16u);
          }

          if (_HDIsUnitTesting)
          {
            defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter2 postNotificationName:@"HDBackstopSyncRefusedNotification" object:threshold];
          }

          v25 = 0.0;
        }

        else
        {
          if (v25 == 0.0)
          {
            distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
            [defaultCenter timeIntervalSinceDate:distantPast2];
            v32 = v34;
          }

          else
          {
            [defaultCenter timeIntervalSinceDate:*&v25];
            v32 = v31;
          }

          _HKInitializeLogging();
          v35 = MEMORY[0x277CCC328];
          v36 = *MEMORY[0x277CCC328];
          v37 = *MEMORY[0x277CCC328];
          if (v32 >= a2)
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              thresholdCopy9 = threshold;
              v55 = 2048;
              v56 = v32;
              v57 = 2048;
              v58 = a2;
              _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: Scheduling backstop sync; time since last successful push (%0.2lfs) is greater than threshold %0.2lfs", buf, 0x20u);
            }

            [(HDCloudSyncManager *)threshold _queue_updateAccessibilityAssertion];
            preparedDatabaseAccessibilityAssertion = [threshold preparedDatabaseAccessibilityAssertion];

            if (preparedDatabaseAccessibilityAssertion)
            {
              daemon3 = [v9 daemon];
              analyticsSubmissionCoordinator = [daemon3 analyticsSubmissionCoordinator];
              [analyticsSubmissionCoordinator cloudSync_reportPeriodicSyncStartForType:1];

              Current = CFAbsoluteTimeGetCurrent();
              v48[0] = MEMORY[0x277D85DD0];
              v48[1] = 3221225472;
              v48[2] = __70__HDCloudSyncManager__queue_considerStartingBackstopSyncForThreshold___block_invoke;
              v48[3] = &unk_278622588;
              v48[4] = threshold;
              *&v48[5] = Current;
              v43 = [HDMaintenanceOperation maintenanceOperationWithName:@"Backstop Cloud Sync" asynchronousBlock:v48];
              daemon4 = [v9 daemon];
              maintenanceWorkCoordinator = [daemon4 maintenanceWorkCoordinator];
              [maintenanceWorkCoordinator enqueueMaintenanceOperation:v43];
            }

            else
            {
              _HKInitializeLogging();
              v47 = *v35;
              if (os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                thresholdCopy9 = threshold;
                _os_log_impl(&dword_228986000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to take database accessibility assertion.", buf, 0xCu);
              }
            }
          }

          else
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 138543874;
              thresholdCopy9 = threshold;
              v55 = 2048;
              v56 = v32;
              v57 = 2114;
              v58 = v25;
              _os_log_impl(&dword_228986000, v36, OS_LOG_TYPE_INFO, "%{public}@: Last successful push was too recent, not syncing (%0.2lfs, %{public}@)", buf, 0x20u);
            }

            if (_HDIsUnitTesting)
            {
              defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
              [defaultCenter3 postNotificationName:@"HDBackstopSyncRefusedNotification" object:threshold];
            }
          }
        }

        goto LABEL_23;
      }

LABEL_54:
      _HKInitializeLogging();
      v46 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        thresholdCopy9 = threshold;
        _os_log_impl(&dword_228986000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@: First backstop reconsideration; setting date and not syncing.", buf, 0xCu);
      }

      if (!_HDIsUnitTesting)
      {
        goto LABEL_25;
      }

      [MEMORY[0x277CCAB98] defaultCenter];
      v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [*&v25 postNotificationName:@"HDBackstopSyncRefusedNotification" object:threshold];
      v17 = v13;
      goto LABEL_23;
    }
  }

LABEL_29:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  dispatch_assert_queue_V2(self->_queue);
  if (changed == 3)
  {

    [(HDCloudSyncManager *)self _queue_considerStartingBackstopSyncForThreshold:?];
  }
}

void __70__HDCloudSyncManager__queue_considerStartingBackstopSyncForThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HDCloudSyncManager__queue_considerStartingBackstopSyncForThreshold___block_invoke_2;
  block[3] = &unk_278620058;
  v9 = *(a1 + 40);
  block[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_sync(v5, block);
}

void __70__HDCloudSyncManager__queue_considerStartingBackstopSyncForThreshold___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Performing backstop sync.", buf, 0xCu);
  }

  v4 = [[HDCloudSyncContext alloc] initForPurpose:0 options:0 reason:8];
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HDCloudSyncManager__queue_considerStartingBackstopSyncForThreshold___block_invoke_459;
  v8[3] = &unk_278622560;
  v8[4] = v5;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  v6 = [v5 syncWithContext:v4 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __70__HDCloudSyncManager__queue_considerStartingBackstopSyncForThreshold___block_invoke_459(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v15 = 138543362;
      v16 = v8;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished backstop sync successfully.", &v15, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
    v10 = [WeakRetained daemon];
    v11 = [v10 analyticsSubmissionCoordinator];
    [v11 cloudSync_reportPeriodicSyncSuccessAfterDuration:1 type:CFAbsoluteTimeGetCurrent() - *(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = 138543618;
      v16 = v14;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Backstop sync failed with error: %{public}@", &v15, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
    v10 = [WeakRetained daemon];
    v11 = [v10 analyticsSubmissionCoordinator];
    [v11 cloudSync_reportPeriodicSyncFailureWithError:v5 duration:1 type:CFAbsoluteTimeGetCurrent() - *(a1 + 48)];
  }

  (*(*(a1 + 40) + 16))();
  if (_HDIsUnitTesting)
  {
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 postNotificationName:@"HDBackstopSyncCompletionNotification" object:*(a1 + 32)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)shareOwnerParticipantWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = HDCloudSyncKeyValueDomainWithProfile(WeakRetained);

  v6 = [v5 dataForKey:@"HDCloudSyncShareOwnerParticipantKey" error:error];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setShareOwnerParticipant:(id)participant error:(id *)error
{
  participantCopy = participant;
  if (([(HDCloudSyncManager *)self _isValidOwnerParticipant:participantCopy]& 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v8 = HDCloudSyncKeyValueDomainWithProfile(WeakRetained);

    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:participantCopy requiringSecureCoding:1 error:error];
    if (v9)
    {
      v10 = [v8 setData:v9 forKey:@"HDCloudSyncShareOwnerParticipantKey" error:error];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Owner participant is not valid; will not save."];
    v10 = 0;
  }

  return v10;
}

- (uint64_t)_isValidOwnerParticipant:(uint64_t)participant
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (participant && v3)
  {
    userIdentity = [v3 userIdentity];
    userRecordID = [userIdentity userRecordID];
    recordName = [userRecordID recordName];

    if (recordName)
    {
      v5 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC328];
      v5 = 0;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        participantCopy = participant;
        v14 = 2114;
        v15 = v4;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Participant record has nil record name; ignoring invalid participant: %{public}@", &v12, 0x16u);
        v5 = 0;
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)configureForShareSetupMetadata:(id)metadata acceptedShares:(id)shares completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  sharesCopy = shares;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v12 = HDCloudSyncKeyValueDomainWithProfile(WeakRetained);

  syncCircleIdentifier = [metadataCopy syncCircleIdentifier];
  v35 = 0;
  v14 = [v12 setString:syncCircleIdentifier forKey:@"HDCloudSyncCircleIdentifier" error:&v35];
  v15 = v35;

  if (v14)
  {
    v34 = 0;
    v16 = [(HDCloudSyncManager *)self shareOwnerParticipantWithError:&v34];
    v17 = v34;
    v23 = v17;
    if (!v16 || v17)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __79__HDCloudSyncManager_configureForShareSetupMetadata_acceptedShares_completion___block_invoke;
      aBlock[3] = &unk_2786225B0;
      aBlock[4] = self;
      v19 = completionCopy;
      v33 = v19;
      v22 = _Block_copy(aBlock);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v37 = __Block_byref_object_copy__106;
      v38 = __Block_byref_object_dispose__106;
      firstObject = [sharesCopy firstObject];
      owner = [firstObject owner];

      if ([(HDCloudSyncManager *)self _isValidOwnerParticipant:?])
      {
        v22[2](v22, *(*&buf[8] + 40));
      }

      else
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __79__HDCloudSyncManager_configureForShareSetupMetadata_acceptedShares_completion___block_invoke_467;
        v25[3] = &unk_278622628;
        v28 = v19;
        v26 = metadataCopy;
        selfCopy = self;
        v30 = buf;
        v29 = v22;
        v31 = a2;
        [(HDCloudSyncManager *)self cloudSyncRepositoriesForClient:0 completion:v25];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Participant already set up for profile, skipping configuring share setup metadata. %{public}@", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, v15);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __79__HDCloudSyncManager_configureForShareSetupMetadata_acceptedShares_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5 = 0;
  [v3 setShareOwnerParticipant:a2 error:&v5];
  v4 = v5;
  (*(*(a1 + 40) + 16))();
}

void __79__HDCloudSyncManager_configureForShareSetupMetadata_acceptedShares_completion___block_invoke_467(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 count] == 1)
    {
      v7 = [v5 firstObject];
      v8 = [*(a1 + 32) ownerCloudKitEmailAddress];
      v9 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithEmailAddress:v8];
      v10 = objc_alloc(MEMORY[0x277CBC410]);
      v28[0] = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v12 = [v10 initWithUserIdentityLookupInfos:v11];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __79__HDCloudSyncManager_configureForShareSetupMetadata_acceptedShares_completion___block_invoke_2;
      v27[3] = &unk_2786225D8;
      v13 = *(a1 + 64);
      v27[4] = *(a1 + 40);
      v27[5] = v13;
      [v12 setPerShareParticipantCompletionBlock:v27];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __79__HDCloudSyncManager_configureForShareSetupMetadata_acceptedShares_completion___block_invoke_474;
      v25[3] = &unk_278622600;
      v23 = *(a1 + 40);
      v24 = *(a1 + 56);
      v14 = *(a1 + 56);
      v26[4] = *(a1 + 72);
      v15 = *(a1 + 48);
      v29.val[0].f64[0] = v23;
      v29.val[1] = v24;
      *&v29.val[0].f64[1] = v15;
      vst2q_f64(v26, v29);
      [v12 setFetchShareParticipantsCompletionBlock:v25];
      v16 = [[HDCloudSyncContext alloc] initForPurpose:13 options:0 reason:10];
      v17 = [v7 syncCircleIdentifier];
      v18 = [HDCloudSyncPipeline operationGroupForContext:v16 syncCircleIdentifier:v17 assetDownloadStagingManager:0];
      [v12 setGroup:v18];

      v19 = [v7 primaryCKContainer];
      [v19 addOperation:v12];
    }

    else
    {
      v20 = *(a1 + 48);
      v21 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Expected a single repository during share configuration."];
      (*(v20 + 16))(v20, 0, v21);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __79__HDCloudSyncManager_configureForShareSetupMetadata_acceptedShares_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v8;
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error fetching participant %{public}@.", &v12, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __79__HDCloudSyncManager_configureForShareSetupMetadata_acceptedShares_completion___block_invoke_474(uint64_t *a1, void *a2)
{
  v6 = a2;
  if ([(HDCloudSyncManager *)a1[4] _isValidOwnerParticipant:?])
  {
    v3 = *(*(a1[7] + 8) + 40);
    (*(a1[5] + 16))();
  }

  else
  {
    v4 = v6;
    if (!v6)
    {
      v5 = a1[4];
      v4 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a1[8] format:@"Cannot fetch valid owner participant"];
    }

    v6 = v4;
    (*(a1[6] + 16))();
  }
}

- (id)prepareForSharingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HDCloudSyncContext alloc] initForPurpose:17 options:64 reason:19];
  v6 = [HDCloudSyncManagerPrepareForSharingTask alloc];
  preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HDCloudSyncManager_prepareForSharingWithCompletion___block_invoke;
  v15[3] = &unk_278622650;
  v16 = completionCopy;
  v8 = completionCopy;
  v9 = [(HDCloudSyncManagerPipelineTask *)v6 initWithManager:self context:v5 accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:v15];

  [(HDCloudSyncManagerTask *)v9 setPriority:100];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v9];

  progress = [(HDCloudSyncManagerTask *)v9 progress];

  return progress;
}

void __127__HDCloudSyncManager_setupSharingToAccountWithIdentityLookupInfo_requireExistingRelationship_requireZoneDeviceMode_completion___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v7 = [a2 shareSetupMetadata];
    (*(v4 + 16))(v4, v7, 0);
  }

  else
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 32);

    v5(v6, 0, a4);
  }
}

- (id)removeParticipants:(id)participants fromSharesWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  completionCopy = completion;
  if (self)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [participantsCopy description];
      *v20 = 138543618;
      *&v20[4] = self;
      *&v20[12] = 2114;
      *&v20[14] = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing Participants: %{public}@", v20, 0x16u);
    }

    v11 = [[HDCloudSyncContext alloc] initForPurpose:11 options:64 reason:11];
    v12 = [HDCloudSyncManagerRemoveParticipantsTask alloc];
    preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
    *v20 = MEMORY[0x277D85DD0];
    *&v20[8] = 3221225472;
    *&v20[16] = __67__HDCloudSyncManager__removeParticipants_fromSharesWithCompletion___block_invoke;
    v21 = &unk_2786226A0;
    v22 = completionCopy;
    v14 = [(HDCloudSyncManagerRemoveParticipantsTask *)v12 initWithManager:self context:v11 removeAllParticipants:participantsCopy == 0 participantsToRemove:participantsCopy accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:v20];

    [(HDCloudSyncManagerTask *)v14 setPriority:100];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    cloudSyncCoordinator = [daemon cloudSyncCoordinator];
    [cloudSyncCoordinator addManagerTask:v14];

    self = [(HDCloudSyncManagerTask *)v14 progress];
  }

  v18 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)removeAllParticipantsForSharingType:(unint64_t)type completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v21 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Removing All Participants of Sharing Type: %lu", buf, 0x16u);
  }

  v8 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:1000];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__HDCloudSyncManager_removeAllParticipantsForSharingType_completion___block_invoke;
  v16[3] = &unk_2786226C8;
  v18 = completionCopy;
  v16[4] = self;
  v9 = v8;
  v17 = v9;
  v10 = completionCopy;
  v11 = [(HDCloudSyncManager *)self fetchShareParticipantsForSharingType:type completion:v16];
  v12 = v17;
  v13 = v9;

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

void __69__HDCloudSyncManager_removeAllParticipantsForSharingType_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 || !a3)
  {
    v6 = [[HDCloudSyncContext alloc] initForPurpose:11 options:64 reason:11];
    v7 = MEMORY[0x277CBEB98];
    v8 = [v5 hk_filter:&__block_literal_global_491_1];
    v9 = [v7 setWithArray:v8];

    v10 = [HDCloudSyncManagerRemoveParticipantsTask alloc];
    v11 = *(a1 + 32);
    v12 = [v11 preparedDatabaseAccessibilityAssertion];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __69__HDCloudSyncManager_removeAllParticipantsForSharingType_completion___block_invoke_3;
    v19[3] = &unk_2786226A0;
    v20 = *(a1 + 48);
    v13 = [(HDCloudSyncManagerRemoveParticipantsTask *)v10 initWithManager:v11 context:v6 removeAllParticipants:0 participantsToRemove:v9 accessibilityAssertion:v12 completion:v19];

    [(HDCloudSyncManagerTask *)v13 setPriority:100];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
    v15 = [WeakRetained daemon];
    v16 = [v15 cloudSyncCoordinator];
    [v16 addManagerTask:v13];

    v17 = *(a1 + 40);
    v18 = [(HDCloudSyncManagerTask *)v13 progress];
    [v17 addChild:v18 withPendingUnitCount:1000];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)fetchShareParticipantsForSharingType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = [[HDCloudSyncContext alloc] initForPurpose:16 options:64 reason:12];
  v8 = [HDCloudSyncManagerFetchShareParticipantsTask alloc];
  preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __70__HDCloudSyncManager_fetchShareParticipantsForSharingType_completion___block_invoke;
  v20 = &unk_2786226F0;
  v21 = completionCopy;
  typeCopy = type;
  v10 = completionCopy;
  v11 = [(HDCloudSyncManagerFetchShareParticipantsTask *)v8 initWithManager:self context:v7 fetchAllShares:0 accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:&v17];

  [(HDCloudSyncManagerTask *)v11 setPriority:100, v17, v18, v19, v20];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v11];

  progress = [(HDCloudSyncManagerTask *)v11 progress];

  return progress;
}

void __70__HDCloudSyncManager_fetchShareParticipantsForSharingType_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v18 = *(*(a1 + 32) + 16);
LABEL_13:
    v18();
    goto LABEL_14;
  }

  v7 = [v5 shares];

  if (!v7)
  {
    v18 = *(*(a1 + 32) + 16);
    goto LABEL_13;
  }

  v8 = [v6 shares];
  v9 = *(a1 + 40);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __HDFilterSharesBySharingType_block_invoke;
  v24[3] = &__block_descriptor_40_e17_B16__0__CKShare_8l;
  v24[4] = v9;
  v10 = [v8 hk_filter:v24];

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * i) participants];
        [v11 addObjectsFromArray:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
  }

  (*(*(a1 + 32) + 16))();
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v8 = [[HDCloudSyncContext alloc] initForPurpose:16 options:64 reason:12];
  v9 = [HDCloudSyncManagerFetchShareParticipantsTask alloc];
  preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __90__HDCloudSyncManager_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress_completion___block_invoke;
  v22 = &unk_278622718;
  v23 = addressCopy;
  v24 = completionCopy;
  v11 = addressCopy;
  v12 = completionCopy;
  v13 = [(HDCloudSyncManagerFetchShareParticipantsTask *)v9 initWithManager:self context:v8 fetchAllShares:1 accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:&v19];

  [(HDCloudSyncManagerTask *)v13 setPriority:100, v19, v20, v21, v22];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v13];

  progress = [(HDCloudSyncManagerTask *)v13 progress];

  return progress;
}

void __90__HDCloudSyncManager_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 shares];

    if (v7)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v8 = [v6 shares];
      v25 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v25)
      {
        v9 = *v33;
        v27 = v8;
        v24 = *v33;
        do
        {
          v10 = 0;
          do
          {
            if (*v33 != v9)
            {
              objc_enumerationMutation(v8);
            }

            v26 = v10;
            v11 = *(*(&v32 + 1) + 8 * v10);
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v12 = [v11 participants];
            v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v29;
              while (2)
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v29 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v28 + 1) + 8 * i);
                  if ([v17 role] == 1)
                  {
                    v18 = *(a1 + 32);
                    v19 = [v17 userIdentity];
                    v20 = [v19 lookupInfo];
                    v21 = [v20 emailAddress];
                    LOBYTE(v18) = [v18 isEqualToString:v21];

                    if (v18)
                    {
                      (*(*(a1 + 40) + 16))();

                      goto LABEL_23;
                    }
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            v10 = v26 + 1;
            v8 = v27;
            v9 = v24;
          }

          while (v26 + 1 != v25);
          v25 = [v27 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v25);
      }
    }

    v22 = *(*(a1 + 40) + 16);
  }

  else
  {
    v22 = *(*(a1 + 40) + 16);
  }

  v22();
LABEL_23:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)lookupParticipantWithIdentityLookUpInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  infoCopy = info;
  v8 = [[HDCloudSyncContext alloc] initForPurpose:16 options:0 reason:12];
  v9 = [HDCloudSyncManagerLookupTask alloc];
  preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__HDCloudSyncManager_lookupParticipantWithIdentityLookUpInfo_completion___block_invoke;
  v18[3] = &unk_278622740;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = [(HDCloudSyncManagerLookupTask *)v9 initWithManager:self context:v8 lookupInfo:infoCopy accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:v18];

  [(HDCloudSyncManagerTask *)v12 setPriority:100];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v12];

  progress = [(HDCloudSyncManagerTask *)v12 progress];

  return progress;
}

void __73__HDCloudSyncManager_lookupParticipantWithIdentityLookUpInfo_completion___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v7 = [a2 participant];
    (*(v4 + 16))(v4, v7, 0);
  }

  else
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 32);

    v5(v6, 0, a4);
  }
}

- (id)leaveSharesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HDCloudSyncContext alloc] initForPurpose:16 options:64 reason:13];
  v6 = [HDCloudSyncManagerLeaveSharesTask alloc];
  preparedDatabaseAccessibilityAssertion = [(HDCloudSyncManager *)self preparedDatabaseAccessibilityAssertion];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__HDCloudSyncManager_leaveSharesWithCompletion___block_invoke;
  v15[3] = &unk_278622768;
  v16 = completionCopy;
  v8 = completionCopy;
  v9 = [(HDCloudSyncManagerPipelineTask *)v6 initWithManager:self context:v5 accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:v15];

  [(HDCloudSyncManagerTask *)v9 setPriority:100];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v9];

  progress = [(HDCloudSyncManagerTask *)v9 progress];

  return progress;
}

- (void)acceptShare:(id)share completion:(id)completion
{
  completionCopy = completion;
  shareCopy = share;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v27 = 0;
  v12 = [database takeAccessibilityAssertionWithOwnerIdentifier:v11 timeout:&v27 error:300.0];
  v13 = v27;

  v14 = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [v14 cloudSyncManager];
  [cloudSyncManager prepareForPeriodicSync];

  v16 = [[HDCloudSyncContext alloc] initForPurpose:13 options:64 reason:10];
  v17 = [HDCloudSyncManagerAcceptSharesTask alloc];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__HDCloudSyncManager_acceptShare_completion___block_invoke;
  v24[3] = &unk_278622790;
  v25 = v12;
  v26 = completionCopy;
  v18 = completionCopy;
  v19 = v12;
  v20 = [(HDCloudSyncManagerAcceptSharesTask *)v17 initWithManager:self context:v16 shareSetupMetadata:shareCopy accessibilityAssertion:v19 completion:v24];

  [(HDCloudSyncManagerTask *)v20 setPriority:100];
  v21 = objc_loadWeakRetained(&self->_profile);
  daemon = [v21 daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  [cloudSyncCoordinator addManagerTask:v20];
}

void __45__HDCloudSyncManager_acceptShare_completion___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v10 = a2;
  v7 = a4;
  [*(a1 + 32) invalidate];
  v8 = *(a1 + 40);
  if (a3)
  {
    v9 = [v10 acceptedShares];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    (*(v8 + 16))(v8, 0, v7);
  }
}

- (void)_subscribeToSubscriptions:(void *)subscriptions completion:
{
  subscriptionsCopy = subscriptions;
  if (self)
  {
    v6 = a2;
    v7 = [[HDCloudSyncContext alloc] initForPurpose:14 options:64 reason:22];
    v8 = [HDCloudSyncManagerSubscriptionTask alloc];
    preparedDatabaseAccessibilityAssertion = [self preparedDatabaseAccessibilityAssertion];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__HDCloudSyncManager__subscribeToSubscriptions_completion___block_invoke;
    v14[3] = &unk_2786227B8;
    v15 = subscriptionsCopy;
    v10 = [(HDCloudSyncManagerSubscriptionTask *)v8 initWithManager:self context:v7 subscriptions:v6 accessibilityAssertion:preparedDatabaseAccessibilityAssertion completion:v14];

    WeakRetained = objc_loadWeakRetained(self + 13);
    daemon = [WeakRetained daemon];
    cloudSyncCoordinator = [daemon cloudSyncCoordinator];
    [cloudSyncCoordinator addManagerTask:v10];
  }
}

- (void)subscribeToDataUploadRequestsWithCompletion:(id)completion
{
  v10[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  profile = [(HDCloudSyncManager *)self profile];
  profileType = [profile profileType];

  if (profileType == 1)
  {
    v9 = HDCloudSyncPrimaryProfileDataRequestedSubscriptionIdentifier;
    v10[0] = @"CloudSyncDataUploadRequestRecord";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [(HDCloudSyncManager *)&self->super.isa _subscribeToSubscriptions:v7 completion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToDataAvailableNotificationsWithCompletion:(id)completion
{
  v18[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  profile = [(HDCloudSyncManager *)self profile];
  profileType = [profile profileType];

  if (profileType > 2)
  {
    if (profileType == 3)
    {
      v15[0] = HDCloudSyncTinkerProfileDataAvailableForDownloadSubscriptionIdentifier;
      v15[1] = HDCloudSyncTinkerMedicalIDDataAvailableForDownloadSubscriptionIdentifier;
      v16[0] = @"CloudSyncStoreRecord";
      v16[1] = @"CloudSyncMedicalIDRecord";
      v7 = MEMORY[0x277CBEAC0];
      v8 = v16;
      v9 = v15;
      goto LABEL_11;
    }

    if (profileType == 4)
    {
      completionCopy[2](completionCopy, 1, 0);
      goto LABEL_13;
    }

    if (profileType != 100)
    {
      goto LABEL_13;
    }

LABEL_9:
    v17[0] = HDCloudSyncPrimaryProfileDataAvailableForDownloadSubscriptionIdentifier;
    v17[1] = HDCloudSyncPrimaryMedicalIDDataAvailableForDownloadSubscriptionIdentifier;
    v18[0] = @"CloudSyncStoreRecord";
    v18[1] = @"CloudSyncMedicalIDRecord";
    v7 = MEMORY[0x277CBEAC0];
    v8 = v18;
    v9 = v17;
LABEL_11:
    v10 = 2;
    goto LABEL_12;
  }

  if (profileType == 1)
  {
    goto LABEL_9;
  }

  if (profileType == 2)
  {
    v13 = HDCloudSyncSharedSummaryDataAvailableForDownloadSubscriptionIdentifier;
    v14 = @"SharedSummaryTransactionRecordType";
    v7 = MEMORY[0x277CBEAC0];
    v8 = &v14;
    v9 = &v13;
    v10 = 1;
LABEL_12:
    v11 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:v10];
    [(HDCloudSyncManager *)&self->super.isa _subscribeToSubscriptions:v11 completion:completionCopy];
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)requestDataUploadWithCompletion:(id)completion
{
  completionCopy = completion;
  [(HDCloudSyncManager *)self updateDataUploadRequestStatus:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDCloudSyncManager_requestDataUploadWithCompletion___block_invoke;
  v7[3] = &unk_278622808;
  v7[4] = self;
  v8 = completionCopy;
  v9 = a2;
  v6 = completionCopy;
  [(HDCloudSyncManager *)self cloudSyncRepositoriesForClient:0 completion:v7];
}

void __54__HDCloudSyncManager_requestDataUploadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) updateDataUploadRequestStatus:5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [v5 firstObject];
    if ([v5 count] != 1)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"HDCloudSyncManager.m" lineNumber:1756 description:@"Expected only a single repository when attempting to request data upload."];
    }

    v8 = [[HDCloudSyncContext alloc] initForPurpose:15 options:64 reason:18];
    v9 = [HDCloudSyncPipeline alloc];
    v10 = [*(a1 + 32) preparedDatabaseAccessibilityAssertion];
    v11 = [(HDCloudSyncPipeline *)v9 initForContext:v8 repository:v7 accessibilityAssertion:v10 queue:*(*(a1 + 32) + 120)];

    v12 = [v11 operationGroup];
    v13 = [v12 defaultConfiguration];
    [v13 setQualityOfService:17];

    v14 = [HDCloudSyncPipelineStageFetchAndUpdateCache alloc];
    v15 = [v11 operationConfiguration];
    v16 = [(HDCloudSyncPipelineStage *)v14 initWithConfiguration:v15 cloudState:0];
    [v11 addStage:v16];

    v17 = [HDCloudSyncPipelineStageSynchronize alloc];
    v18 = [v11 operationConfiguration];
    v19 = [(HDCloudSyncPipelineStage *)v17 initWithConfiguration:v18 cloudState:0];
    [v11 addStage:v19];

    v20 = [HDCloudSyncRequestDataUploadOperation alloc];
    v21 = [v11 operationConfiguration];
    v22 = [(HDCloudSyncOperation *)v20 initWithConfiguration:v21 cloudState:0];
    v23 = [(HDCloudSyncOperation *)v22 asPipelineStage];
    [v11 addStage:v23];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __54__HDCloudSyncManager_requestDataUploadWithCompletion___block_invoke_2;
    v27[3] = &unk_2786227E0;
    v24 = *(a1 + 40);
    v27[4] = *(a1 + 32);
    v28 = v24;
    v25 = [v11 beginWithCompletion:v27];
  }
}

void __54__HDCloudSyncManager_requestDataUploadWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v6 = *(a1 + 32);
  if (a3 == 1)
  {
    [v6 updateDataUploadRequestStatus:2];
  }

  else
  {
    [v6 updateDataUploadRequestStatus:5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchServerPreferredPushEnvironmentWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HDCloudSyncManager_fetchServerPreferredPushEnvironmentWithCompletion___block_invoke;
  v7[3] = &unk_278622830;
  v8 = completionCopy;
  v9 = a2;
  v7[4] = self;
  v6 = completionCopy;
  [(HDCloudSyncManager *)self cloudSyncRepositoriesForClient:0 completion:v7];
}

void __72__HDCloudSyncManager_fetchServerPreferredPushEnvironmentWithCompletion___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (a3)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v6 = [v5 firstObject];
    if ([v9 count] != 1)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"HDCloudSyncManager.m" lineNumber:1792 description:@"Expected only a single repository when attempting to fetch server preferred push environment."];
    }

    v7 = [v6 primaryCKContainer];
    [v7 serverPreferredPushEnvironmentWithCompletionHandler:a1[5]];
  }
}

- (void)assertionManager:(id)manager assertionInvalidated:(id)invalidated
{
  v30 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  invalidatedCopy = invalidated;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"HDCloudSyncDownloadDirectoryAssertionIdentifier"];
  v9 = [v8 count];

  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v28 = 2050;
      v29 = v9;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Active assertions count: %{public}lu", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_inProgressDownloadDirectoryLock);
    v12 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_inProgressDownloadDirectoryPath isDirectory:1];
    v25 = 0;
    v14 = [v12 removeItemAtURL:v13 error:&v25];
    v15 = v25;
    if (v14)
    {
      os_unfair_lock_unlock(&self->_inProgressDownloadDirectoryLock);
      v16 = 0;
      v17 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v18 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v28 = 2114;
        v29 = v15;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Unable to remove in progress download directory, %{public}@", buf, 0x16u);
      }

      os_unfair_lock_unlock(&self->_inProgressDownloadDirectoryLock);
      v19 = v15;
      v16 = v19;
      v17 = v19 == 0;
      if (v19)
      {
        v20 = v19;
      }
    }

    v11 = v16;
    if (!v17)
    {
      _HKInitializeLogging();
      v21 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v28 = 2114;
        v29 = v11;
        _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete in progress download directory, %{public}@", buf, 0x16u);
      }
    }
  }

  unitTest_assertionInvalidatedHandler = [(HDCloudSyncManager *)self unitTest_assertionInvalidatedHandler];

  if (unitTest_assertionInvalidatedHandler)
  {
    unitTest_assertionInvalidatedHandler2 = [(HDCloudSyncManager *)self unitTest_assertionInvalidatedHandler];
    (unitTest_assertionInvalidatedHandler2)[2](unitTest_assertionInvalidatedHandler2, managerCopy, invalidatedCopy);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  completionCopy = completion;
  profile = [(HDCloudSyncManager *)self profile];
  if (profile)
  {
    v8 = objc_alloc(MEMORY[0x277D10AC8]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke;
    v22[3] = &unk_27861A120;
    v23 = completionCopy;
    v9 = [v8 initWithDescription:@"Report Daily Analytics" completion:v22];
    queue = [(HDCloudSyncManager *)self queue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_2;
    v20[3] = &unk_278617958;
    v20[4] = self;
    v11 = profile;
    v21 = v11;
    [v9 addTaskOnQueue:queue task:v20];

    queue2 = [(HDCloudSyncManager *)self queue];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_314;
    v16 = &unk_278627A98;
    v17 = v11;
    selfCopy = self;
    v19 = a2;
    [v9 addTaskOnQueue:queue2 task:&v13];

    [v9 begin];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

void __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_3;
  v7[3] = &unk_2786226C8;
  v9 = v4;
  v7[4] = v5;
  v8 = *(a1 + 40);
  v6 = v4;
  [v5 cloudSyncRepositoriesForClient:0 completion:v7];
}

void __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  if (v7)
  {
    v8 = [v5 firstObject];
    v9 = [v8 primaryCKContainer];
    v10 = [v9 containerIdentifier];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_4;
    v15[3] = &unk_2786279F8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    v16 = v12;
    v17 = v13;
    v18 = v10;
    v19 = *(a1 + 48);
    v14 = v10;
    [v11 fetchSyncStatusWithCompletion:v15];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v125 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v101 = a3;
  v6 = [*(a1 + 32) daemon];
  v7 = [v6 cloudSyncCoordinator];
  v120 = 0;
  v95 = [v7 canPerformCloudSyncWithError:&v120];
  v98 = v120;

  v8 = HDCloudSyncKeyValueDomainWithProfile(*(a1 + 32));
  v9 = HDCloudSyncRestorePhaseSyncCompleteStartDate(*(a1 + 32));
  v10 = HDCloudSyncRestorePhaseMergeCompleteEndDate(*(a1 + 32));
  v11 = 0;
  v103 = v10;
  if (!v10)
  {
    v12 = MEMORY[0x277CCABB0];
    [v9 timeIntervalSinceNow];
    v11 = [v12 numberWithDouble:-v13];
  }

  v96 = v11;
  v97 = v9;
  v14 = MEMORY[0x277CCABB0];
  v15 = [*(a1 + 32) database];
  v16 = [v15 _journalForType:2];
  v111 = [v14 numberWithUnsignedLong:{objc_msgSend(v16, "sizeOnDisk") >> 20}];

  v17 = MEMORY[0x277CCABB0];
  v18 = [*(a1 + 32) database];
  v19 = [v18 _journalForType:2];
  [v19 ageOfOldestJournal];
  v110 = [v17 numberWithDouble:?];

  v20 = [v5 lastSuccessfulPullDate];
  if (v20)
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = [v5 lastSuccessfulPullDate];
    [v22 timeIntervalSinceNow];
    v109 = [v21 numberWithDouble:-v23];
  }

  else
  {
    v109 = 0;
  }

  v24 = [v5 lastSuccessfulPushDate];
  if (v24)
  {
    v25 = MEMORY[0x277CCABB0];
    v26 = [v5 lastSuccessfulPushDate];
    [v26 timeIntervalSinceNow];
    v108 = [v25 numberWithDouble:-v27];
  }

  else
  {
    v108 = 0;
  }

  v28 = [v5 lastSuccessfulLitePushDate];
  if (v28)
  {
    v29 = MEMORY[0x277CCABB0];
    v30 = [v5 lastSuccessfulLitePushDate];
    [v30 timeIntervalSinceNow];
    v107 = [v29 numberWithDouble:-v31];
  }

  else
  {
    v107 = 0;
  }

  v32 = [*(a1 + 40) profile];
  v119 = 0;
  v33 = [HDCloudSyncStoreEntity persistedStoreUUIDsForProfile:v32 error:&v119];
  v34 = v119;

  if (!v33)
  {
    _HKInitializeLogging();
    v35 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v77 = *(a1 + 40);
      *buf = 138543618;
      v122 = v77;
      v123 = 2114;
      v124 = v34;
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve persisted store UUIDs for daily analytics: %{public}@", buf, 0x16u);
    }
  }

  v118 = 0;
  v36 = [v8 dateForKey:@"HDCloudSyncPrimaryLastPushForwardProgressDate" error:&v118];
  v93 = v118;
  if (v36)
  {
    v37 = MEMORY[0x277CCABB0];
    [v36 timeIntervalSinceNow];
    v92 = [v37 numberWithDouble:-v38];
  }

  else
  {
    v92 = 0;
  }

  v117 = 0;
  v39 = [v8 dataForKey:@"HDCloudSyncKeyErrorRequiringUserAction" error:&v117];
  v90 = v117;
  v91 = v39;
  if (v39)
  {
    v116 = 0;
    v40 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v39 error:&v116];
    v41 = v116;
    v42 = v41;
    v106 = v40;
    if (!v40)
    {
      if (v41)
      {
        _HKInitializeLogging();
        v43 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          v79 = *(a1 + 40);
          *buf = 138543618;
          v122 = v79;
          v123 = 2114;
          v124 = v42;
          _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive cloud sync error requiring user action: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v106 = 0;
  }

  v44 = [*(a1 + 32) syncIdentityManager];
  v115 = 0;
  v45 = [v44 childIdentitiesForCurrentSyncIdentityWithError:&v115];
  v100 = v115;

  v105 = v45;
  if (!v45)
  {
    _HKInitializeLogging();
    v46 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v78 = *(a1 + 40);
      *buf = 138543618;
      v122 = v78;
      v123 = 2114;
      v124 = v100;
      _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get child sync identities from local storage: %{public}@ for daily analytics", buf, 0x16u);
    }
  }

  v47 = *(a1 + 32);
  v114 = 0;
  v87 = HDUpgradedToSyncIdentity(v47, &v114);
  v48 = v114;
  if (v48)
  {
    _HKInitializeLogging();
    v49 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v74 = *(a1 + 40);
      *buf = 138543618;
      v122 = v74;
      v123 = 2114;
      v124 = v48;
      _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get upgraded to sync identity status for daily analytics: %{public}@", buf, 0x16u);
    }
  }

  v50 = v34;
  v89 = v48;
  v51 = *(a1 + 32);
  v113 = 0;
  v86 = HDCompletedTransitionToSyncIdentity(v51, &v113);
  v52 = v113;
  if (v52)
  {
    _HKInitializeLogging();
    v53 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v75 = *(a1 + 40);
      *buf = 138543618;
      v122 = v75;
      v123 = 2114;
      v124 = v52;
      _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get completed transition to sync identity status for daily analytics: %{public}@", buf, 0x16u);
    }
  }

  v88 = v52;
  v54 = [*(a1 + 32) deviceContextManager];
  v112 = v101;
  v104 = [v54 numberOfDeviceContextsPerDeviceType:&v112];
  v55 = v112;

  v102 = v55;
  if (v55)
  {
    _HKInitializeLogging();
    v56 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v76 = *(a1 + 40);
      *buf = 138543618;
      v122 = v76;
      v123 = 2114;
      v124 = v55;
      _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get device contexts dictionary for cloud sync daily analytics: %{public}@", buf, 0x16u);
    }
  }

  v57 = [v104 objectForKeyedSubscript:&unk_283CB3D68];
  if (v57)
  {
    v85 = [v104 objectForKeyedSubscript:&unk_283CB3D68];
  }

  else
  {
    v85 = &unk_283CB3D80;
  }

  v58 = [v104 objectForKeyedSubscript:&unk_283CB3D98];
  if (v58)
  {
    v84 = [v104 objectForKeyedSubscript:&unk_283CB3D98];
  }

  else
  {
    v84 = &unk_283CB3D80;
  }

  v59 = [v104 objectForKeyedSubscript:&unk_283CB3DB0];
  if (v59)
  {
    v60 = [v104 objectForKeyedSubscript:&unk_283CB3DB0];
  }

  else
  {
    v60 = &unk_283CB3D80;
  }

  v61 = [v104 objectForKeyedSubscript:&unk_283CB3DC8];
  v94 = v50;
  if (v61)
  {
    v62 = [v104 objectForKeyedSubscript:&unk_283CB3DC8];
  }

  else
  {
    v62 = &unk_283CB3D80;
  }

  v63 = +[HDCloudSyncPipeline retrieveAndResetSyncCounts];
  v64 = [v63 objectForKey:@"HDCloudSyncCountOfTotalSyncs"];
  v83 = v63;
  v65 = [v63 objectForKey:@"HDCloudSyncCountOfSuccessfulSyncs"];
  v99 = v5;
  v82 = v65;
  if ([v64 intValue])
  {
    v66 = MEMORY[0x277CCABB0];
    [v65 doubleValue];
    v68 = v67;
    [v64 doubleValue];
    v70 = [v66 numberWithDouble:v68 / v69];
  }

  else
  {
    v70 = &unk_283CB3D80;
  }

  v71 = [*(a1 + 32) daemon];
  v72 = [v71 analyticsSubmissionCoordinator];
  BYTE2(v81) = v87 & v86;
  BYTE1(v81) = v87 & (v86 ^ 1);
  LOBYTE(v81) = ((v87 | v86) & 1) == 0;
  BYTE2(v80) = 0;
  LOWORD(v80) = 0;
  [v72 cloudSync_reportDailyAnalyticForProfileType:objc_msgSend(*(a1 + 32) syncEnabled:"profileType") syncDisabledError:v95 primaryContainer:v98 restoreComplete:*(a1 + 48) timeSinceRestoreStart:v103 != 0 journalSize:v96 oldestJournalAge:v111 timeSinceLastSuccessfulPull:v110 timeSinceLastSuccessfulPush:v109 timeSinceLastSuccessfulLitePush:v108 timeSinceLastPushForwardProgress:v107 storeCount:v92 zoneCount:objc_msgSend(v33 hasUnifiedZone:"count") hasMasterZone:0 hasMedicalID:v80 errorRequiringUserAction:v106 childSyncIdentityCount:objc_msgSend(v105 canUpgradeToSyncIdentity:"count") startedUpgradeToSyncIdentity:v81 completedUpgradeToSyncIdentity:v85 iPhoneCount:v84 iPadCount:v60 watchCount:v62 visionProCount:v64 totalSyncsCount:v70 successfulSyncPercentageCount:?];

  (*(*(a1 + 56) + 16))();
  v73 = *MEMORY[0x277D85DE8];
}

void __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_314(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) daemon];
  v6 = [v5 cloudSyncCoordinator];
  v22 = 0;
  v7 = [v6 canPerformCloudSyncWithError:&v22];
  v8 = v22;
  if ((v7 & 1) == 0)
  {

    goto LABEL_5;
  }

  v9 = [*(a1 + 40) profile];
  v10 = [v9 daemon];
  v11 = [v10 behavior];
  v12 = [v11 supportsCloudSync];

  if ((v12 & 1) == 0)
  {
LABEL_5:
    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_6;
  }

  v13 = *(a1 + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_2_315;
  v18[3] = &unk_278627A70;
  v14 = v4;
  v15 = *(a1 + 48);
  v20 = v14;
  v21 = v15;
  v17 = *(a1 + 32);
  v16 = v17.i64[0];
  v19 = vextq_s8(v17, v17, 8uLL);
  [v13 cloudSyncRepositoriesForClient:0 completion:v18];

LABEL_6:
}

void __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_2_315(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  if (v7)
  {
    if ([v5 count] != 1)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HDCloudSyncManager+Analytics.m" lineNumber:208 description:@"Expected only a single repository when attempting to report cache analytics."];
    }

    v8 = [[HDCloudSyncContext alloc] initForPurpose:1 options:64 reason:31];
    v9 = [HDCloudSyncManagerAnalyticsTask alloc];
    v10 = *(a1 + 32);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_3_325;
    v21 = &unk_278627A48;
    v25 = *(a1 + 48);
    v11 = v7;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v14 = [(HDCloudSyncManagerPipelineTask *)v9 initWithManager:v10 context:v8 accessibilityAssertion:0 completion:&v18];
    v15 = [*(a1 + 40) daemon];
    v16 = [v15 cloudSyncCoordinator];
    [v16 addManagerTask:v14];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_3_325(uint64_t a1, void *a2, char a3, void *a4)
{
  v145 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  v85 = v7;
  if (a3)
  {
    v84 = a1;
    v79 = v8;
    v82 = [v7 cachedCloudState];
    v83 = [v7 computedState];
    if (v83)
    {
      v10 = [*(a1 + 32) primaryCKContainer];
      v11 = [v10 containerIdentifier];
      v126 = 0;
      v80 = [v82 zoneIdentifiersForContainerIdentifier:v11 databaseScope:2 error:&v126];
      v81 = v126;

      if (v81)
      {
        (*(*(a1 + 56) + 16))();
      }

      else
      {
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        obj = v80;
        v14 = [obj countByEnumeratingWithState:&v122 objects:v144 count:16];
        if (v14)
        {
          v93 = 0;
          v15 = 0;
          v16 = *v123;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v123 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v122 + 1) + 8 * i);
              v19 = [v18 zoneIdentifier];
              v120 = 0;
              v121 = 0;
              v20 = [v19 hd_isSharedSummaryZoneIDForUserIdentifier:&v121 syncCircleIdentifier:&v120];
              v21 = v121;
              v22 = v120;

              v23 = [v18 zoneIdentifier];
              v119 = v22;
              LOBYTE(v18) = [v23 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v119];
              v24 = v119;

              v15 += v20;
              v93 |= v18;
            }

            v14 = [obj countByEnumeratingWithState:&v122 objects:v144 count:16];
          }

          while (v14);
        }

        else
        {
          v93 = 0;
          v15 = 0;
        }

        v25 = [obj hk_filter:&__block_literal_global_184];
        v26 = [v25 firstObject];

        v27 = *(v84 + 40);
        v28 = *(v84 + 32);
        v29 = *(v84 + 48);
        v30 = v26;
        v31 = v28;
        v78 = v30;
        if (v27)
        {
          if (v30)
          {
            *buf = 0;
            v32 = [v27 _gatherAttachmentAnalyticsForZoneID:v30 repository:v31 error:buf];
            v33 = *buf;
            v34 = v33;
            v35 = v33 == 0;
            if (v33)
            {
              v36 = v33;
            }

            else
            {
              v37 = [v29 daemon];
              v38 = [v37 analyticsSubmissionCoordinator];
              [v38 attachments_reportDailyCloudAnalytics:v32];
            }
          }

          else
          {
            v34 = 0;
            v35 = 1;
          }
        }

        else
        {
          v34 = 0;
          v35 = 0;
        }

        v77 = v34;
        if (!v35)
        {
          _HKInitializeLogging();
          v39 = HKLogAnalytics();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v76 = *(v84 + 40);
            *buf = 138543618;
            *&buf[4] = v76;
            v128 = 2114;
            v129 = v77;
            _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "%{public}@ Failed to report attachment cloud analytics, %{public}@", buf, 0x16u);
          }
        }

        v40 = [*(v84 + 32) primaryCKContainer];
        v41 = [v40 containerIdentifier];
        v118 = 0;
        v80 = [v82 zoneIdentifiersForContainerIdentifier:v41 databaseScope:3 error:&v118];
        v81 = v118;

        if (v80 || !v81)
        {
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v86 = v80;
          obja = [v86 countByEnumeratingWithState:&v114 objects:v143 count:16];
          if (obja)
          {
            v42 = 0;
            v43 = 0;
            v88 = *v115;
            do
            {
              for (j = 0; j != obja; j = j + 1)
              {
                if (*v115 != v88)
                {
                  objc_enumerationMutation(v86);
                }

                v45 = *(*(&v114 + 1) + 8 * j);
                v46 = [v45 zoneIdentifier];
                v112 = 0;
                v113 = 0;
                v47 = [v46 hd_isSharedSummaryZoneIDForUserIdentifier:&v113 syncCircleIdentifier:&v112];
                v48 = v113;
                v49 = v112;

                v50 = [v45 zoneIdentifier];
                v111 = v49;
                LOBYTE(v45) = [v50 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v111];
                v51 = v111;

                v42 += v47;
                v43 |= v45;
              }

              obja = [v86 countByEnumeratingWithState:&v114 objects:v143 count:16];
            }

            while (obja);
          }

          else
          {
            v42 = 0;
            v43 = 0;
          }

          v52 = [*(v84 + 32) primaryCKContainer];
          v53 = [v52 containerIdentifier];
          v110 = 0;
          objb = [v82 contextSyncZoneForContainerID:v53 error:&v110];
          v89 = v110;

          if (objb)
          {
            v106 = 0;
            v107 = &v106;
            v108 = 0x2020000000;
            v109 = 0;
            v102 = 0;
            v103 = &v102;
            v104 = 0x2020000000;
            v105 = 0;
            v54 = objc_opt_class();
            v100[4] = &v102;
            v101 = 0;
            v100[0] = MEMORY[0x277D85DD0];
            v100[1] = 3221225472;
            v100[2] = __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_335;
            v100[3] = &unk_278627A20;
            [objb recordsForClass:v54 epoch:0 error:&v101 enumerationHandler:v100];
            v55 = v101;
            v56 = objc_opt_class();
            v98[0] = MEMORY[0x277D85DD0];
            v98[1] = 3221225472;
            v98[2] = __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_2_338;
            v98[3] = &unk_278627A20;
            v98[4] = &v106;
            v99 = v55;
            [objb recordsForClass:v56 epoch:0 error:&v99 enumerationHandler:v98];
            v87 = v99;

            [v83 pushTargets];
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v57 = v95 = 0u;
            v58 = 0;
            v59 = [v57 countByEnumeratingWithState:&v94 objects:v142 count:16];
            if (v59)
            {
              v60 = *v95;
              do
              {
                for (k = 0; k != v59; ++k)
                {
                  if (*v95 != v60)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v62 = [*(*(&v94 + 1) + 8 * k) storeRecord];
                  v63 = [v62 syncIdentity];

                  if (!v63)
                  {
                    ++v58;
                  }
                }

                v59 = [v57 countByEnumeratingWithState:&v94 objects:v142 count:16];
              }

              while (v59);
            }

            _HKInitializeLogging();
            v64 = HKLogAnalytics();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v65 = *(v84 + 40);
              v66 = v107[3];
              v67 = v103[3];
              *buf = 138545154;
              *&buf[4] = v65;
              v128 = 2050;
              v129 = v42;
              v130 = 2050;
              v131 = v15;
              v132 = 1026;
              v133 = v43 & 1;
              v134 = 1026;
              v135 = v93 & 1;
              v136 = 2050;
              v137 = v66;
              v138 = 2050;
              v139 = v67;
              v140 = 2050;
              v141 = v58;
              _os_log_impl(&dword_228986000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@ Reporting daily cache analytics -\n shared database sharing zone count: %{public}ld\n private database sharing zone count: %{public}ld\n shared database unified zone: %{public}d\n private unified zone: %{public}d\n device contexts count: %{public}ld\n device key values count: %{public}ld\n nil sync identities count: %{public}ld", buf, 0x4Au);
            }

            v68 = [*(v84 + 48) daemon];
            v69 = [v68 analyticsSubmissionCoordinator];
            v70 = [v83 pushTargets];
            v71 = [v70 count];
            v72 = [v83 pullTargets];
            v73 = [v72 count];
            [v69 cloudCache_reportDailyCacheAnalyticsWithPushTargets:v71 pullTargets:v73 sharedDBSummarySharingZones:v42 privateDBSummarySharingZones:v15 unifiedZoneInSharedDB:v43 & 1 unifiedZoneInPrivateDB:v93 & 1 deviceContexts:v107[3] deviceKeys:v103[3] nilSyncIdentities:v58];

            (*(*(v84 + 56) + 16))();
            _Block_object_dispose(&v102, 8);
            _Block_object_dispose(&v106, 8);
          }

          else
          {
            v74 = v89;
            if (!v89)
            {
              v74 = [MEMORY[0x277CCA9B8] hk_error:724 format:@"Context sync zone not present for daily analytic collection."];
            }

            v89 = v74;
            (*(*(v84 + 56) + 16))();
          }
        }

        else
        {
          (*(*(v84 + 56) + 16))();
        }
      }
    }

    else
    {
      v12 = *(a1 + 56);
      v13 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"Computed state should be non nil"];
      (*(v12 + 16))(v12, 1, v13);
    }

    v9 = v79;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v75 = *MEMORY[0x277D85DE8];
}

uint64_t __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_4_329(uint64_t a1, void *a2)
{
  v2 = [a2 zoneIdentifier];
  v5 = 0;
  v3 = [v2 hd_isAttachmentZoneIDForSyncCircleIdentifier:&v5];

  return v3;
}

uint64_t __80__HDCloudSyncManager_Analytics__reportDailyAnalyticsWithCoordinator_completion___block_invoke_335(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 deviceKeyValueEntry:a4];
  if (v5)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (id)_gatherAttachmentAnalyticsForZoneID:(id)d repository:(id)repository error:(id *)error
{
  v76 = *MEMORY[0x277D85DE8];
  dCopy = d;
  repositoryCopy = repository;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v8 = [[HDCloudSyncCachedZone alloc] initForZoneIdentifier:dCopy repository:repositoryCopy accessibilityAssertion:0];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v39 = dCopy;
  v40 = repositoryCopy;
  v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_opt_class();
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __86__HDCloudSyncManager_Analytics___gatherAttachmentAnalyticsForZoneID_repository_error___block_invoke;
  v54[3] = &unk_278627AC0;
  v56 = &v71;
  v57 = &v59;
  v58 = 0;
  v11 = v9;
  v55 = v11;
  LOBYTE(repository) = [v8 recordsForClass:v10 epoch:0 error:&v58 enumerationHandler:v54];
  v12 = v58;
  v13 = v12;
  if ((repository & 1) == 0)
  {
    v30 = v12;
    v31 = v30;
    if (v30)
    {
      if (error)
      {
        v32 = v30;
        v29 = 0;
        *error = v31;
      }

      else
      {
        _HKLogDroppedError();
        v29 = 0;
      }

      v28 = v31;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    goto LABEL_26;
  }

  v14 = objc_opt_class();
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __86__HDCloudSyncManager_Analytics___gatherAttachmentAnalyticsForZoneID_repository_error___block_invoke_2;
  v49[3] = &unk_278627AE8;
  v52 = &v67;
  v53 = v13;
  v15 = v42;
  v50 = v15;
  v16 = v41;
  v51 = v16;
  v17 = [v8 recordsForClass:v14 epoch:0 error:&v53 enumerationHandler:v49];
  v37 = v53;

  if ((v17 & 1) == 0)
  {
    v28 = v37;
    if (v28)
    {
      if (error)
      {
LABEL_21:
        v33 = v28;
        *error = v28;
        goto LABEL_22;
      }

      _HKLogDroppedError();
    }

LABEL_22:

    v29 = 0;
    goto LABEL_23;
  }

  v18 = [v11 hk_minus:v15];
  v36 = [v18 count];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v19 = [v15 hk_minus:v11];
  v20 = 0;
  v21 = [v19 countByEnumeratingWithState:&v45 objects:v75 count:16];
  if (v21)
  {
    v22 = *v46;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v16 objectForKeyedSubscript:*(*(&v45 + 1) + 8 * i)];
        integerValue = [v24 integerValue];

        v20 += integerValue;
      }

      v21 = [v19 countByEnumeratingWithState:&v45 objects:v75 count:16];
    }

    while (v21);
  }

  v26 = objc_opt_class();
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __86__HDCloudSyncManager_Analytics___gatherAttachmentAnalyticsForZoneID_repository_error___block_invoke_3;
  v43[3] = &unk_278627B10;
  v43[4] = &v63;
  v44 = v37;
  v27 = [v8 recordsForClass:v26 epoch:0 error:&v44 enumerationHandler:v43];
  v28 = v44;

  if ((v27 & 1) == 0)
  {
    v28 = v28;
    if (v28)
    {
      if (!error)
      {
        _HKLogDroppedError();
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v29 = objc_alloc_init(HDAttachmentCloudAnalytics);
  [(HDAttachmentCloudAnalytics *)v29 setNumberOfAttachmentRecords:v72[3]];
  [(HDAttachmentCloudAnalytics *)v29 setNumberOfReferenceRecords:v68[3]];
  [(HDAttachmentCloudAnalytics *)v29 setNumberOfTombstoneRecords:v64[3]];
  [(HDAttachmentCloudAnalytics *)v29 setNumberOfOrphanedAttachmentRecords:v36];
  [(HDAttachmentCloudAnalytics *)v29 setNumberOfOrphanedReferenceRecords:v20];
  [(HDAttachmentCloudAnalytics *)v29 setPercentageOfAttachmentsWithAssetData:(v60[3] / v72[3] * 100.0)];
LABEL_23:

  v31 = v50;
LABEL_26:

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);

  v34 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __86__HDCloudSyncManager_Analytics___gatherAttachmentAnalyticsForZoneID_repository_error___block_invoke(void *a1, void *a2)
{
  ++*(*(a1[5] + 8) + 24);
  v3 = a2;
  if ([v3 hasAssetData])
  {
    *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + 1.0;
  }

  v4 = a1[4];
  v5 = [v3 attachmentIdentifier];

  [v4 addObject:v5];
  return 1;
}

uint64_t __86__HDCloudSyncManager_Analytics___gatherAttachmentAnalyticsForZoneID_repository_error___block_invoke_2(void *a1, void *a2)
{
  ++*(*(a1[6] + 8) + 24);
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 attachmentIdentifier];
  [v3 addObject:v5];

  v6 = a1[5];
  v7 = [v4 attachmentIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = v8;
  v10 = &unk_283CB3D80;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = MEMORY[0x277CCABB0];
  v13 = [v11 integerValue];

  v14 = [v12 numberWithInteger:v13 + 1];
  v15 = a1[5];
  v16 = [v4 attachmentIdentifier];

  [v15 setObject:v14 forKeyedSubscript:v16];
  return 1;
}

@end