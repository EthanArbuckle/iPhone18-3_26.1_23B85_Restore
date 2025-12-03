@interface HDHeadphoneAudioExposureStatisticsCalculator
- (id)_initWithProfile:(id)profile keyValueStore:(id)store daemonDidBecomeReadyHandler:(id)handler;
- (id)_loadBucketsFromProfile:(id)profile needsRebuild:(BOOL *)rebuild error:(id *)error;
- (id)_loadCacheWithError:(id *)error;
- (id)_rebuildWithAssertion:(id)assertion allowInitialQueriesToFail:(BOOL)fail resetDoseToZero:(BOOL)zero error:(id *)error;
- (id)_rebuildWithAssertionFromHAENFireDateUpdate:(int64_t)update assertion:(id)assertion error:(id *)error;
- (id)_setupWithAssertion:(id)assertion error:(id *)error;
- (id)_updateWithExposure:(id)exposure replaying:(BOOL)replaying error:(id *)error;
- (id)pruneWithNowDate:(id)date limit:(unint64_t)limit error:(id *)error;
- (id)rebuildWithAssertion:(id)assertion error:(id *)error;
- (id)unitTesting_pendingSamples;
- (id)updateWithNotifications:(id)notifications assertion:(id)assertion error:(id *)error;
- (id)updateWithRemoteNotificationDismissalFireDate:(id)date assertion:(id)assertion error:(id *)error;
- (void)_setNeedsRebuild:(BOOL)rebuild;
@end

@implementation HDHeadphoneAudioExposureStatisticsCalculator

- (id)_initWithProfile:(id)profile keyValueStore:(id)store daemonDidBecomeReadyHandler:(id)handler
{
  profileCopy = profile;
  storeCopy = store;
  profileIdentifier = [profileCopy profileIdentifier];
  _profileIdentifier = [storeCopy _profileIdentifier];
  v11 = [profileIdentifier isEqual:_profileIdentifier];

  if ((v11 & 1) == 0)
  {
    [HDHeadphoneAudioExposureStatisticsCalculator _initWithProfile:keyValueStore:daemonDidBecomeReadyHandler:];
  }

  v21.receiver = self;
  v21.super_class = HDHeadphoneAudioExposureStatisticsCalculator;
  v12 = [(HDHeadphoneAudioExposureStatisticsCalculator *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_profile, profileCopy);
    objc_storeStrong(&v13->_keyValueStore, store);
    v14 = HKCreateSerialDispatchQueue();
    queue = v13->_queue;
    v13->_queue = v14;

    *&v13->_setup = 256;
    memoryCache = v13->_memoryCache;
    v13->_memoryCache = 0;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingSamples = v13->_pendingSamples;
    v13->_pendingSamples = v17;

    v19 = v13;
  }

  return v13;
}

- (id)rebuildWithAssertion:(id)assertion error:(id *)error
{
  if (self->_setup)
  {
    [(HDHeadphoneAudioExposureStatisticsCalculator *)self _rebuildWithAssertion:assertion allowInitialQueriesToFail:0 resetDoseToZero:0 error:error];
  }

  else
  {
    [(HDHeadphoneAudioExposureStatisticsCalculator *)self _setupWithAssertion:assertion error:error];
  }
  v4 = ;

  return v4;
}

- (id)updateWithNotifications:(id)notifications assertion:(id)assertion error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  assertionCopy = assertion;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = [notificationsCopy count];
    _os_log_impl(&dword_251764000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing %lu HAEN sample(s)", buf, 0x16u);
  }

  keyValueStore = self->_keyValueStore;
  v16 = 0;
  v13 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self _rebuildWithAssertionFromHAENFireDateUpdate:[(HDHeadphoneDoseMetadataStore *)keyValueStore updatePreviousSevenDayLocalNotificationFireDateWithSamplesInserted:notificationsCopy error:&v16] assertion:assertionCopy error:error];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)updateWithRemoteNotificationDismissalFireDate:(id)date assertion:(id)assertion error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  dateCopy = date;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v16 = 138543362;
    v17 = objc_opt_class();
    _os_log_impl(&dword_251764000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating last HAE notification fired received", &v16, 0xCu);
  }

  v12 = [(HDHeadphoneDoseMetadataStore *)self->_keyValueStore updatePreviousSevenDayRemoteNotificationFireDateWith:dateCopy error:error];

  v13 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self _rebuildWithAssertionFromHAENFireDateUpdate:v12 assertion:assertionCopy error:error];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_rebuildWithAssertionFromHAENFireDateUpdate:(int64_t)update assertion:(id)assertion error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if (update)
  {
    v9 = MEMORY[0x253081C40](self->_unitTesting_didUpdatePreviousSevenDayNotificationFireDate);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 16))(v9);
    }

    if (update == 1)
    {
      v11 = +[HDHeadphoneExposureUpdateDoseResult resultForNoChange];
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v17 = 138543362;
        v18 = objc_opt_class();
        _os_log_impl(&dword_251764000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Resetting 7-day headphone stats for next notification.", &v17, 0xCu);
      }

      [(HDHeadphoneAudioExposureStatisticsCalculator *)self setNeedsRebuild];
      v14 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self _rebuildWithAssertion:assertionCopy allowInitialQueriesToFail:1 resetDoseToZero:update == 3 error:error];
      if (v14)
      {
        v11 = [HDHeadphoneExposureUpdateDoseResult resultForUpdate:v14];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    [(HDHeadphoneAudioExposureStatisticsCalculator *)self setNeedsRebuild];
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Process HAEN Failed" underlyingError:0];
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)pruneWithNowDate:(id)date limit:(unint64_t)limit error:(id *)error
{
  memoryCache = self->_memoryCache;
  dateCopy = date;
  [(HDHeadphoneAudioExposureBucketCollection *)memoryCache pruneWithNowDate:dateCopy];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v11 = [HDHeadphoneAudioExposureStatisticsEntity _pruneWithNowDate:dateCopy limit:limit profile:WeakRetained error:error];

  v12 = [HDHeadphoneExposureStatisticsResult resultWithCache:self->_memoryCache prunedCount:v11];

  return v12;
}

- (id)unitTesting_pendingSamples
{
  v2 = [(NSMutableArray *)self->_pendingSamples copy];

  return v2;
}

- (id)_setupWithAssertion:(id)assertion error:(id *)error
{
  v102 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if ([(HDHeadphoneAudioExposureStatisticsCalculator *)self isSetup])
  {
    [HDHeadphoneAudioExposureStatisticsCalculator _setupWithAssertion:error:];
  }

  _HKInitializeLogging();
  v8 = MEMORY[0x277CCC2C8];
  v9 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138543362;
    v94 = objc_opt_class();
    _os_log_impl(&dword_251764000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Setting up 7-Day HAE statistics.", buf, 0xCu);
  }

  keyValueStore = self->_keyValueStore;
  v92 = 0;
  v12 = [(HDHeadphoneDoseMetadataStore *)keyValueStore _shouldRebuildSevenDayStatisticsWithError:&v92];
  v13 = v92;
  v14 = v13;
  self->_needsRebuild = v12;
  if (v13)
  {
    if ([v13 hk_isHealthStoreUnavailableError])
    {
      if (error)
      {
        v15 = v14;
        v16 = 0;
        *error = v14;
        goto LABEL_94;
      }

      _HKLogDroppedError();
      goto LABEL_93;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      [HDHeadphoneAudioExposureStatisticsCalculator _setupWithAssertion:error:];
    }

    self->_needsRebuild = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  isProtectedDataAvailable = [database isProtectedDataAvailable];
  if (!isProtectedDataAvailable)
  {

LABEL_19:
    goto LABEL_21;
  }

  needsRebuild = self->_needsRebuild;

  if (needsRebuild)
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = objc_opt_class();
      *buf = 138543362;
      v94 = v23;
      _os_log_impl(&dword_251764000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Priming: protected data available; rebuilding.", buf, 0xCu);
    }

    v91 = 0;
    v16 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self _rebuildWithAssertion:assertionCopy allowInitialQueriesToFail:0 resetDoseToZero:0 error:&v91];
    v24 = v91;
    WeakRetained = v24;
    if (v16)
    {
      isProtectedDataAvailable = 1;
      goto LABEL_24;
    }

    if ([v24 hk_isHealthStoreUnavailableError])
    {
      v29 = WeakRetained;
      if (v29)
      {
        if (error)
        {
          v31 = v29;
          *error = v29;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_92;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
    {
      [HDHeadphoneAudioExposureStatisticsCalculator _setupWithAssertion:error:];
    }

    goto LABEL_19;
  }

  isProtectedDataAvailable = 0;
LABEL_21:
  _HKInitializeLogging();
  v25 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v26 = v25;
    v27 = objc_opt_class();
    *buf = 138543362;
    v94 = v27;
    _os_log_impl(&dword_251764000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Priming: protected data unavailable; loading statistics from disk.", buf, 0xCu);
  }

  v90 = 0;
  v16 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self _loadCacheWithError:&v90];
  v28 = v90;
  WeakRetained = v28;
  if (!v16)
  {
    v29 = v28;
    if (v29)
    {
      if (error)
      {
        v30 = v29;
        *error = v29;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    if (([v29 hk_isHealthStoreUnavailableError] & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
      {
        [HDHeadphoneAudioExposureStatisticsCalculator _setupWithAssertion:error:];
      }

      v16 = 0;
      goto LABEL_40;
    }

LABEL_92:

    goto LABEL_93;
  }

LABEL_24:

  if (([v16 needsRebuildOnNextUnlock] & 1) == 0 && !self->_needsRebuild)
  {
    goto LABEL_57;
  }

LABEL_40:
  v32 = objc_loadWeakRetained(&self->_profile);
  database2 = [v32 database];
  isProtectedDataAvailable2 = [database2 isProtectedDataAvailable];

  if (isProtectedDataAvailable2 && !isProtectedDataAvailable)
  {
    v35 = v16;
    _HKInitializeLogging();
    v36 = MEMORY[0x277CCC2C8];
    v37 = *MEMORY[0x277CCC2C8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      v39 = objc_opt_class();
      *buf = 138543362;
      v94 = v39;
      _os_log_impl(&dword_251764000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] Priming failed: protected data available; rebuilding.", buf, 0xCu);
    }

    v89 = 0;
    v40 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self _rebuildWithAssertion:assertionCopy allowInitialQueriesToFail:0 resetDoseToZero:0 error:&v89];
    v41 = v89;

    if (!v40)
    {
      v42 = v41;
      if (v42)
      {
        if (error)
        {
          v43 = v42;
          *error = v42;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      if ([v42 hk_isHealthStoreUnavailableError])
      {

LABEL_93:
        v16 = 0;
        goto LABEL_94;
      }

      _HKInitializeLogging();
      if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        [HDHeadphoneAudioExposureStatisticsCalculator _setupWithAssertion:error:];
      }
    }

    v16 = v40;
  }

  if (!v16)
  {
    v70 = 0;
LABEL_79:
    v71 = MEMORY[0x277CCC2C8];
    _HKInitializeLogging();
    if (os_log_type_enabled(*v71, OS_LOG_TYPE_FAULT))
    {
      [HDHeadphoneAudioExposureStatisticsCalculator _setupWithAssertion:error:];
    }

    goto LABEL_93;
  }

LABEL_57:
  if (!self->_memoryCache)
  {
    v70 = v16;
    goto LABEL_79;
  }

  _HKInitializeLogging();
  v44 = MEMORY[0x277CCC2C8];
  v45 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v46 = v45;
    v47 = objc_opt_class();
    v48 = [(NSMutableArray *)self->_pendingSamples count];
    *buf = 138543618;
    v94 = v47;
    v95 = 2048;
    v96 = v48;
    _os_log_impl(&dword_251764000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replaying %lu HAE sample batches that arrived during setup.", buf, 0x16u);
  }

  v78 = v14;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = self->_pendingSamples;
  v83 = [(NSMutableArray *)obj countByEnumeratingWithState:&v85 objects:v101 count:16];
  if (v83)
  {
    v77 = a2;
    v49 = 0;
    v50 = 0;
    v82 = *v86;
    selfCopy = self;
    do
    {
      for (i = 0; i != v83; ++i)
      {
        if (*v86 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v85 + 1) + 8 * i);
        ++v50;
        _HKInitializeLogging();
        v53 = *v44;
        if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
        {
          v54 = v53;
          v55 = objc_opt_class();
          v56 = v49;
          v57 = v16;
          v58 = [(NSMutableArray *)self->_pendingSamples count];
          [v52 samples];
          v60 = v59 = assertionCopy;
          v61 = [v60 count];
          *buf = 138544130;
          v94 = v55;
          v95 = 2048;
          v96 = v50;
          v97 = 2048;
          v98 = v58;
          v16 = v57;
          v49 = v56;
          v99 = 2048;
          v100 = v61;
          _os_log_impl(&dword_251764000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replaying HAE batch (%lu of %lu) containing %lu samples.", buf, 0x2Au);

          assertionCopy = v59;
          self = selfCopy;
          v44 = MEMORY[0x277CCC2C8];
        }

        v84 = 0;
        v62 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self _updateWithExposure:v52 replaying:1 assertion:assertionCopy error:&v84, v77];
        v63 = v84;
        if (v62)
        {
          v64 = v62;

          cache = [v64 cache];

          if (!cache)
          {
            [HDHeadphoneAudioExposureStatisticsCalculator _setupWithAssertion:error:];
          }

          v49 = [v64 eligbleForUserNotification] | v49;
          v16 = v64;
        }

        else
        {
          _HKInitializeLogging();
          v66 = *v44;
          if (os_log_type_enabled(*v44, OS_LOG_TYPE_FAULT))
          {
            v79 = v16;
            v67 = v66;
            v68 = objc_opt_class();
            v69 = [(NSMutableArray *)self->_pendingSamples count];
            *buf = 138544130;
            v94 = v68;
            v95 = 2048;
            v96 = v50;
            v97 = 2048;
            v98 = v69;
            v99 = 2112;
            v100 = v63;
            _os_log_fault_impl(&dword_251764000, v67, OS_LOG_TYPE_FAULT, "[%{public}@] Replaying HAE batch (%lu of %lu) failed with error: %@", buf, 0x2Au);

            v16 = v79;
          }

          [(HDHeadphoneAudioExposureStatisticsCalculator *)self setNeedsRebuild];
        }
      }

      v83 = [(NSMutableArray *)obj countByEnumeratingWithState:&v85 objects:v101 count:16];
    }

    while (v83);
  }

  else
  {
    LOBYTE(v49) = 0;
  }

  if ((v49 & 1) != [v16 eligbleForUserNotification])
  {
    v72 = [v16 copyWithEligbleForUserNotificationOverride:?];
    v73 = v16;
    v16 = v72;
  }

  v14 = v78;
  [(NSMutableArray *)self->_pendingSamples removeAllObjects];
  if (v16 && self->_memoryCache)
  {
    self->_setup = 1;
  }

  else
  {
    _HKInitializeLogging();
    v74 = *v44;
    if (os_log_type_enabled(*v44, OS_LOG_TYPE_FAULT))
    {
      [HDHeadphoneAudioExposureStatisticsCalculator _setupWithAssertion:v74 error:?];
    }
  }

LABEL_94:

  v75 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_rebuildWithAssertion:(id)assertion allowInitialQueriesToFail:(BOOL)fail resetDoseToZero:(BOOL)zero error:(id *)error
{
  zeroCopy = zero;
  failCopy = fail;
  v71 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  if (!failCopy && zeroCopy)
  {
    [HDHeadphoneAudioExposureStatisticsCalculator _rebuildWithAssertion:allowInitialQueriesToFail:resetDoseToZero:error:];
  }

  _HKInitializeLogging();
  v11 = MEMORY[0x277CCC2C8];
  v12 = *MEMORY[0x277CCC2C8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    *buf = 138543362;
    v66 = objc_opt_class();
    _os_log_impl(&dword_251764000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Rebuilding 7-Day HAE Statistics.", buf, 0xCu);
  }

  keyValueStore = self->_keyValueStore;
  v64 = 0;
  v15 = [(HDHeadphoneDoseMetadataStore *)keyValueStore rebuildCachedFireDateFromLocalHAENStoreIfNeededWithError:&v64];
  v16 = v64;
  v17 = v16;
  if (v15)
  {
LABEL_13:
    v21 = self->_keyValueStore;
    v63 = 0;
    v22 = [HDHeadphoneAudioExposurePolicyDeterminer determinePreviousFireDateWithStore:v21 error:&v63];
    v23 = v63;
    v18 = v23;
    if (!v22 && v23)
    {
      [(HDHeadphoneAudioExposureStatisticsCalculator *)self setNeedsRebuild];
      if (error)
      {
        v24 = v18;
        v20 = 0;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
        v20 = 0;
      }

      goto LABEL_48;
    }

    v55 = zeroCopy;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v26 = [HDHeadphoneAudioExposureStatisticsBucket makeBucketsForProfile:WeakRetained earliestStartDate:v22];

    v57 = assertionCopy;
    v27 = [MEMORY[0x277D106B8] contextForAccessibilityAssertion:assertionCopy];
    v28 = [v27 mutableCopy];

    [v28 setCacheScope:1];
    v29 = objc_loadWeakRetained(&self->_profile);
    database = [v29 database];
    v62 = 0;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __118__HDHeadphoneAudioExposureStatisticsCalculator__rebuildWithAssertion_allowInitialQueriesToFail_resetDoseToZero_error___block_invoke;
    v60[3] = &unk_2796C66F0;
    v31 = v26;
    v61 = v31;
    v56 = v28;
    LOBYTE(v28) = [database performWithTransactionContext:v28 error:&v62 block:v60];
    v58 = v62;

    if (v28)
    {
      errorCopy2 = error;
    }

    else
    {
      if (!failCopy)
      {
        [(HDHeadphoneAudioExposureStatisticsCalculator *)self setNeedsRebuild];
        v40 = v58;
        v41 = v58;
        assertionCopy = v57;
        if (v41)
        {
          if (error)
          {
            v42 = v41;
            *error = v41;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v20 = 0;
        goto LABEL_47;
      }

      _HKInitializeLogging();
      v33 = *MEMORY[0x277CCC2C8];
      errorCopy2 = error;
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
      {
        v52 = v33;
        v53 = objc_opt_class();
        v54 = [v31 count];
        *buf = 138543874;
        v66 = v53;
        v67 = 2048;
        v68 = v54;
        v69 = 2112;
        v70 = v58;
        _os_log_error_impl(&dword_251764000, v52, OS_LOG_TYPE_ERROR, "[%{public}@] Resetting %lu buckets after initial query failure: %@.", buf, 0x20u);
      }

      v34 = v55;
      if (!v22 && v55)
      {
        _HKInitializeLogging();
        v35 = *MEMORY[0x277CCC2C8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_FAULT))
        {
          [HDHeadphoneAudioExposureStatisticsCalculator _rebuildWithAssertion:v35 allowInitialQueriesToFail:? resetDoseToZero:? error:?];
        }

        [(HDHeadphoneAudioExposureStatisticsCalculator *)self setNeedsRebuild];
        v34 = 0;
      }

      memoryCache = self->_memoryCache;
      v59 = 0;
      v37 = [(HDHeadphoneAudioExposureBucketCollection *)memoryCache _bucketsWithEarliestStartDate:v22 resetDoseToZero:v34 error:&v59];
      v38 = v59;
      if (v37)
      {
        v39 = v37;

        v31 = v39;
      }

      else
      {
        v43 = self->_memoryCache;
        _HKInitializeLogging();
        v44 = *MEMORY[0x277CCC2C8];
        v45 = os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR);
        if (v43)
        {
          if (v45)
          {
            [HDHeadphoneAudioExposureStatisticsCalculator _rebuildWithAssertion:allowInitialQueriesToFail:resetDoseToZero:error:];
          }
        }

        else if (v45)
        {
          [HDHeadphoneAudioExposureStatisticsCalculator _rebuildWithAssertion:v44 allowInitialQueriesToFail:? resetDoseToZero:? error:?];
        }
      }
    }

    v46 = objc_loadWeakRetained(&self->_profile);
    v47 = [HDHeadphoneAudioExposureStatisticsEntity _replaceExistingWithBuckets:v31 profile:v46 error:errorCopy2];

    if (v47)
    {
      v48 = [[HDHeadphoneAudioExposureBucketCollection alloc] initWithBuckets:v31];
      v49 = self->_memoryCache;
      self->_memoryCache = v48;

      [(HDHeadphoneAudioExposureStatisticsCalculator *)self _setNeedsRebuild:0];
      v20 = [HDHeadphoneExposureStatisticsResult resultWithCache:self->_memoryCache eligbleForUserNotification:0];
    }

    else
    {
      [(HDHeadphoneAudioExposureStatisticsCalculator *)self setNeedsRebuild];
      v20 = 0;
    }

    assertionCopy = v57;
    v40 = v58;
LABEL_47:

LABEL_48:
    goto LABEL_49;
  }

  if (![v16 hk_isHealthStoreUnavailableError])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      [HDHeadphoneAudioExposureStatisticsCalculator _rebuildWithAssertion:allowInitialQueriesToFail:resetDoseToZero:error:];
    }

    goto LABEL_13;
  }

  v18 = v17;
  if (v18)
  {
    if (error)
    {
      v19 = v18;
      v20 = 0;
      *error = v18;
      goto LABEL_49;
    }

    _HKLogDroppedError();
  }

  v20 = 0;
LABEL_49:

  v50 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __118__HDHeadphoneAudioExposureStatisticsCalculator__rebuildWithAssertion_allowInitialQueriesToFail_resetDoseToZero_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) queryForInitialStatisticsWithError:{a2, v12}];

        if (!v8)
        {
          v9 = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_loadBucketsFromProfile:(id)profile needsRebuild:(BOOL *)rebuild error:(id *)error
{
  profileCopy = profile;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v10 = self->_keyValueStore;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  database = [WeakRetained database];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__HDHeadphoneAudioExposureStatisticsCalculator__loadBucketsFromProfile_needsRebuild_error___block_invoke;
  v17[3] = &unk_2796C6760;
  v20 = &v22;
  v12 = WeakRetained;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  rebuildCopy = rebuild;
  LODWORD(error) = [(HDHealthEntity *)HDHeadphoneAudioExposureStatisticsEntity performWriteTransactionWithHealthDatabase:database error:error block:v17];

  if (error)
  {
    v14 = v23[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  _Block_object_dispose(&v22, 8);

  return v15;
}

BOOL __91__HDHeadphoneAudioExposureStatisticsCalculator__loadBucketsFromProfile_needsRebuild_error___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = [HDHeadphoneAudioExposureStatisticsEntity _loadBucketsFromProfile:a1[4] error:a3];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(a1[6] + 8) + 40);
  if (!v8)
  {
    return 0;
  }

  if ([v8 count])
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [*(*(a1[6] + 8) + 40) hk_containsObjectPassingTest:&__block_literal_global_4];
    v11 = [*(*(a1[6] + 8) + 40) hk_containsObjectPassingTest:&__block_literal_global_329];
    v12 = *(*(a1[6] + 8) + 40);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __91__HDHeadphoneAudioExposureStatisticsCalculator__loadBucketsFromProfile_needsRebuild_error___block_invoke_4;
    v30 = &unk_2796C6738;
    v13 = v9;
    v31 = v13;
    v14 = [v12 hk_map:&v27];
    v15 = [v14 count];

    if ((v10 & 1) != 0 || (v11 & 1) != 0 || v15 < 3)
    {
      v16 = a1[7];
      if (v16)
      {
        *v16 = 1;
      }
    }

    v17 = [*(*(a1[6] + 8) + 40) count] != 0;
    v18 = v31;
  }

  else
  {
    v19 = a1[5];
    v32 = 0;
    v18 = [HDHeadphoneAudioExposurePolicyDeterminer determinePreviousFireDateWithStore:v19 error:&v32];
    v20 = v32;
    v13 = v20;
    if (v18 || !v20)
    {
      v22 = [HDHeadphoneAudioExposureStatisticsBucket makeBucketsForProfile:a1[4] earliestStartDate:v18];
      v23 = *(a1[6] + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v25 = a1[7];
      if (v25)
      {
        *v25 = 1;
      }

      v17 = [HDHeadphoneAudioExposureStatisticsEntity _replaceExistingWithBuckets:*(*(a1[6] + 8) + 40) profile:a1[4] error:a3];
    }

    else if (a3)
    {
      v21 = v20;
      v17 = 0;
      *a3 = v13;
    }

    else
    {
      _HKLogDroppedError();
      v17 = 0;
    }
  }

  return v17;
}

void *__91__HDHeadphoneAudioExposureStatisticsCalculator__loadBucketsFromProfile_needsRebuild_error___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if ([v3 isExpiredForNowDate:v2])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (id)_loadCacheWithError:(id *)error
{
  v11 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [(HDHeadphoneAudioExposureStatisticsCalculator *)self _loadBucketsFromProfile:WeakRetained needsRebuild:&v11 error:error];

  if ([v6 count])
  {
    v7 = [[HDHeadphoneAudioExposureBucketCollection alloc] initWithBuckets:v6];
    memoryCache = self->_memoryCache;
    self->_memoryCache = v7;

    v9 = [HDHeadphoneExposureStatisticsResult resultWithCache:self->_memoryCache eligbleForUserNotification:0];
    [v9 setNeedsRebuildOnNextUnlock:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __94__HDHeadphoneAudioExposureStatisticsCalculator__updateWithExposure_replaying_assertion_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _updateWithExposure:*(a1 + 40) replaying:*(a1 + 56) error:a2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 48) + 8) + 40) != 0;
}

- (id)_updateWithExposure:(id)exposure replaying:(BOOL)replaying error:(id *)error
{
  replayingCopy = replaying;
  v37 = *MEMORY[0x277D85DE8];
  exposureCopy = exposure;
  memoryCache = self->_memoryCache;
  _HKInitializeLogging();
  v10 = MEMORY[0x277CCC2C8];
  v11 = *MEMORY[0x277CCC2C8];
  v12 = *MEMORY[0x277CCC2C8];
  if (memoryCache)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
      v14 = objc_opt_class();
      samples = [exposureCopy samples];
      *buf = 138543618;
      v34 = v14;
      v35 = 2048;
      v36 = [samples count];
      _os_log_impl(&dword_251764000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing HAE sample batch (%lu).", buf, 0x16u);
    }

    buf[0] = 0;
    v16 = [(HDHeadphoneAudioExposureBucketCollection *)self->_memoryCache _updateWithSampleBatch:exposureCopy needsRebuild:buf error:error];
    if (buf[0] == 1)
    {
      keyValueStore = self->_keyValueStore;
      v32 = 0;
      v18 = [(HDHeadphoneDoseMetadataStore *)keyValueStore _setShouldRebuildSevenDayStatistics:1 error:&v32];
      v19 = v32;
      if (!v18)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          [HDHeadphoneAudioExposureStatisticsCalculator _updateWithExposure:replaying:error:];
        }
      }
    }

    if ([v16 count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      v21 = objc_opt_class();
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __84__HDHeadphoneAudioExposureStatisticsCalculator__updateWithExposure_replaying_error___block_invoke;
      v31[3] = &unk_2796C67B0;
      v31[5] = WeakRetained;
      v31[6] = v21;
      v31[4] = v16;
      v22 = MEMORY[0x253081C40](v31);
      database = [WeakRetained database];
      v24 = [v21 performWriteTransactionWithHealthDatabase:database error:error block:v22];

      if (v24)
      {
        v25 = +[HDHeadphoneExposureStatisticsResult resultWithCache:eligbleForUserNotification:](HDHeadphoneExposureStatisticsResult, "resultWithCache:eligbleForUserNotification:", self->_memoryCache, [exposureCopy canTriggerUserNotification]);
      }

      else
      {
        [(HDHeadphoneAudioExposureStatisticsCalculator *)self setNeedsRebuild];
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  else if (replayingCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [HDHeadphoneAudioExposureStatisticsCalculator _updateWithExposure:replaying:error:];
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"cannot flush pending samples without memory cache."];
    v25 = 0;
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v11;
      v27 = objc_opt_class();
      samples2 = [exposureCopy samples];
      *buf = 138543618;
      v34 = v27;
      v35 = 2048;
      v36 = [samples2 count];
      _os_log_impl(&dword_251764000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] Caching HAE sample batch (%lu) for replay after initial rebuild.", buf, 0x16u);
    }

    [(NSMutableArray *)self->_pendingSamples addObject:exposureCopy];
    v25 = +[HDHeadphoneExposureStatisticsResult resultForAppendedSamplesDuringStartup];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)_setNeedsRebuild:(BOOL)rebuild
{
  rebuildCopy = rebuild;
  self->_needsRebuild = rebuild;
  keyValueStore = self->_keyValueStore;
  v12 = 0;
  v6 = [HDHeadphoneDoseMetadataStore _setShouldRebuildSevenDayStatistics:"_setShouldRebuildSevenDayStatistics:error:" error:?];
  v7 = v12;
  if (!v6)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
    {
      [HDHeadphoneAudioExposureStatisticsCalculator _setNeedsRebuild:];
      if (rebuildCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      v10 = v7;
      goto LABEL_9;
    }
  }

  if (!rebuildCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = self->_keyValueStore;
  v11 = v7;
  v9 = [(HDHeadphoneDoseMetadataStore *)v8 _setShouldRebuildPreviousSevenDayNotification:1 error:&v11];
  v10 = v11;

  if (!v9)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_ERROR))
    {
      [HDHeadphoneAudioExposureStatisticsCalculator _setNeedsRebuild:];
    }
  }

LABEL_9:
}

- (void)_initWithProfile:keyValueStore:daemonDidBecomeReadyHandler:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"[profile.profileIdentifier isEqual:keyValueStore._profileIdentifier]" object:? file:? lineNumber:? description:?];
}

- (void)_setupWithAssertion:error:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"self.isSetup == NO" object:? file:? lineNumber:? description:?];
}

- (void)_setupWithAssertion:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Unable to load rebuild flag due to error (defaulting to YES): %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithAssertion:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_251764000, v0, v1, "Setup failed to rebuild HAE stats with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithAssertion:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_251764000, v0, v1, "Setup failed to load HAE stats with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithAssertion:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_251764000, v0, v1, "Setup failed to rebuild HAE stats (after failed load) with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithAssertion:error:.cold.6()
{
  OUTLINED_FUNCTION_6();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v1 handleFailureInMethod:@"result.cache" object:? file:? lineNumber:? description:?];
}

- (void)_setupWithAssertion:(void *)a1 error:.cold.7(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_7_0();
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9(&dword_251764000, v3, v4, "[%{public}@] Setup failed with an unexpected error.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithAssertion:error:.cold.8()
{
  OUTLINED_FUNCTION_3();
  v14 = *MEMORY[0x277D85DE8];
  v4 = v3;
  v5 = OUTLINED_FUNCTION_4();
  v6 = *(v1 + 40);
  v8 = 138543874;
  v9 = v5;
  v10 = 1024;
  v11 = v0 != 0;
  v12 = 1024;
  v13 = v6 != 0;
  _os_log_fault_impl(&dword_251764000, v2, OS_LOG_TYPE_FAULT, "[%{public}@] Priming Failed (success: %d, memory cache exists: %d).", &v8, 0x18u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_rebuildWithAssertion:allowInitialQueriesToFail:resetDoseToZero:error:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"!resetDoseToZero || (resetDoseToZero && allowInitialQueriesToFail)" object:? file:? lineNumber:? description:?];
}

- (void)_rebuildWithAssertion:allowInitialQueriesToFail:resetDoseToZero:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Unable to optimistically rebuild Previous 7-Day HAEN FireDate: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_rebuildWithAssertion:(void *)a1 allowInitialQueriesToFail:resetDoseToZero:error:.cold.3(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_7_0();
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9(&dword_251764000, v3, v4, "[%{public}@] Reset dose to zero without HAEN fire date is unsupported.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_rebuildWithAssertion:allowInitialQueriesToFail:resetDoseToZero:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Failed to update buckets to exclude additional historical HAE datums while preserving existing: %@.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_rebuildWithAssertion:(void *)a1 allowInitialQueriesToFail:resetDoseToZero:error:.cold.5(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_7_0();
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_251764000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] No dose to reset since HAEN arrived before initial setup.", v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithExposure:replaying:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Error performing rebuild while processing HAE sample batch: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithExposure:replaying:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v10 = *MEMORY[0x277D85DE8];
  v3 = v2;
  OUTLINED_FUNCTION_4();
  v4 = [OUTLINED_FUNCTION_7_0() samples];
  v6 = 138543618;
  v7 = v0;
  v8 = 2048;
  v9 = [v4 count];
  _os_log_fault_impl(&dword_251764000, v1, OS_LOG_TYPE_FAULT, "[%{public}@] Unable to replay HAE Batch (%lu samples) with no cache available.", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setNeedsRebuild:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Failed to request 7-Day HAE rebuild: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setNeedsRebuild:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v11 = *MEMORY[0x277D85DE8];
  v2 = v1;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_251764000, v3, v4, "[%{public}@] Failed to request Previous 7-Day HAEN Fire Date rebuild: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end