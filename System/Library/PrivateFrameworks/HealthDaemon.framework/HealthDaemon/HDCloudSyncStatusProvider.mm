@interface HDCloudSyncStatusProvider
- (BOOL)_shouldPerformLastSyncDateCheckInternalSetting;
- (HDCloudSyncStatus)syncStatus;
- (HDCloudSyncStatusProvider)initWithCoordinator:(id)coordinator behavior:(id)behavior;
- (id)_lastLongTimeWithoutSuccessfulCloudSyncReportDateKeyWithError:(id *)error;
- (id)currentSyncProgress;
- (id)lastSuccessfulLitePushDate;
- (id)lastSuccessfulPullDate;
- (id)lastSuccessfulPushDate;
- (void)checkLastSyncDate;
- (void)fetchSyncStatusWithCompletion:(id)completion;
- (void)setDataUploadRequestStatus:(int64_t)status profileType:(int64_t)type;
- (void)unitTest_setLastSuccessfulLitePushDate:(id)date;
- (void)unitTest_setLastSuccessfulPullDate:(id)date;
- (void)unitTest_setLastSuccessfulPushDate:(id)date;
- (void)updateCachedLastSyncDatesWithCompletion:(id)completion;
@end

@implementation HDCloudSyncStatusProvider

- (HDCloudSyncStatusProvider)initWithCoordinator:(id)coordinator behavior:(id)behavior
{
  coordinatorCopy = coordinator;
  behaviorCopy = behavior;
  v14.receiver = self;
  v14.super_class = HDCloudSyncStatusProvider;
  v8 = [(HDCloudSyncStatusProvider *)&v14 init];
  if (v8)
  {
    v9 = HKCreateSerialUtilityDispatchQueue();
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeWeak(&v8->_coordinator, coordinatorCopy);
    objc_storeStrong(&v8->_behavior, behavior);
    v11 = objc_alloc_init(HDCloudSyncStatus);
    lock_cloudSyncStatus = v8->_lock_cloudSyncStatus;
    v8->_lock_cloudSyncStatus = v11;

    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (void)fetchSyncStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HDCloudSyncStatusProvider_fetchSyncStatusWithCompletion___block_invoke;
  v7[3] = &unk_278614E28;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __59__HDCloudSyncStatusProvider_fetchSyncStatusWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v26 = 0;
  v3 = [WeakRetained canPerformCloudSyncWithError:&v26];
  v4 = v26;

  if (v3)
  {
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy__116;
    v24[4] = __Block_byref_object_dispose__116;
    v25 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__116;
    v22[4] = __Block_byref_object_dispose__116;
    v23 = 0;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__116;
    v20[4] = __Block_byref_object_dispose__116;
    v21 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v5 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v6 = [v5 hasActiveSyncTask];

    v19 = v6;
    v7 = objc_alloc(MEMORY[0x277D10AC8]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__HDCloudSyncStatusProvider_fetchSyncStatusWithCompletion___block_invoke_299;
    v11[3] = &unk_278623D00;
    v13 = v22;
    v14 = v24;
    v15 = v20;
    v8 = *(a1 + 40);
    v17 = v3;
    v12 = v8;
    v16 = v18;
    v9 = [v7 initWithDescription:@"Fetch cloud sync status" completion:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__HDCloudSyncStatusProvider_fetchSyncStatusWithCompletion___block_invoke_2;
    v10[3] = &unk_278623D50;
    v10[4] = *(a1 + 32);
    v10[5] = v24;
    v10[6] = v22;
    v10[7] = v20;
    [v9 addTask:v10];
    [v9 begin];

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v20, 8);

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v24, 8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __59__HDCloudSyncStatusProvider_fetchSyncStatusWithCompletion___block_invoke_299(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v8 = objc_alloc_init(HDCloudSyncStatus);
  [(HDCloudSyncStatus *)v8 setLastSuccessfulPullDate:*(*(*(a1 + 40) + 8) + 40)];
  [(HDCloudSyncStatus *)v8 setLastSuccessfulPushDate:*(*(*(a1 + 48) + 8) + 40)];
  [(HDCloudSyncStatus *)v8 setLastSuccessfulLitePushDate:*(*(*(a1 + 56) + 8) + 40)];
  v6 = *(a1 + 72);
  v7 = *(*(*(a1 + 64) + 8) + 24);
  (*(*(a1 + 32) + 16))();
}

void __59__HDCloudSyncStatusProvider_fetchSyncStatusWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v18 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543362;
    v28 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching cloud sync status for all profiles.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9 = [WeakRetained daemon];
  v10 = [v9 profileManager];

  v11 = [v10 allProfileIdentifiers];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __59__HDCloudSyncStatusProvider_fetchSyncStatusWithCompletion___block_invoke_301;
        v19[3] = &unk_278623D28;
        v19[4] = *(a1 + 32);
        v19[5] = v16;
        v20 = *(a1 + 40);
        v21 = *(a1 + 56);
        [v5 addTask:{v19, v18}];
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  (*(v18 + 2))(v18, 0, 0);

  v17 = *MEMORY[0x277D85DE8];
}

void __59__HDCloudSyncStatusProvider_fetchSyncStatusWithCompletion___block_invoke_301(void *a1, uint64_t a2, void *a3)
{
  v24 = a3;
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v5 = [WeakRetained daemon];
  v6 = [v5 profileManager];
  v7 = [v6 profileForIdentifier:a1[5]];

  if (!v7 || (v8 = objc_loadWeakRetained((a1[4] + 8)), v9 = [v8 shouldSyncProfile:v7], v8, (v9 & 1) == 0))
  {
    (*(v24 + 2))(v24, 0, 0);
    goto LABEL_20;
  }

  v10 = [v7 cloudSyncManager];
  v11 = v10;
  if (!v10)
  {
    (*(v24 + 2))(v24, 0, 0);
    goto LABEL_19;
  }

  v12 = [v10 status];
  v13 = [v12 lastSuccessfulPushDate];

  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  if (v15)
  {
    if (![v15 hk_isAfterDate:v13])
    {
      goto LABEL_8;
    }

    v14 = *(a1[6] + 8);
  }

  objc_storeStrong((v14 + 40), v13);
LABEL_8:
  v16 = [v11 status];
  v17 = [v16 lastSuccessfulPullDate];

  v18 = *(a1[7] + 8);
  v19 = *(v18 + 40);
  if (v19)
  {
    if (![v19 hk_isAfterDate:v17])
    {
      goto LABEL_12;
    }

    v18 = *(a1[7] + 8);
  }

  objc_storeStrong((v18 + 40), v17);
LABEL_12:
  v20 = [v11 status];
  v21 = [v20 lastSuccessfulLitePushDate];

  v22 = *(a1[8] + 8);
  v23 = *(v22 + 40);
  if (!v23)
  {
LABEL_15:
    objc_storeStrong((v22 + 40), v21);
    goto LABEL_16;
  }

  if ([v23 hk_isAfterDate:v21])
  {
    v22 = *(a1[8] + 8);
    goto LABEL_15;
  }

LABEL_16:
  (*(v24 + 2))(v24, 0, 0);

LABEL_19:
LABEL_20:
}

- (id)currentSyncProgress
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  hasActiveSyncTask = [WeakRetained hasActiveSyncTask];

  v5 = MEMORY[0x277CCAC48];
  if (hasActiveSyncTask)
  {
    v6 = objc_loadWeakRetained(&self->_coordinator);
    progressOfActiveSyncTask = [v6 progressOfActiveSyncTask];
    v8 = [v5 hd_progressMirroringProgress:progressOfActiveSyncTask];
  }

  else
  {
    v8 = [MEMORY[0x277CCAC48] hk_finishedDiscreteProgressWithTotalUnitCount:1];
  }

  return v8;
}

- (void)checkLastSyncDate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDCloudSyncStatusProvider_checkLastSyncDate__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__HDCloudSyncStatusProvider_checkLastSyncDate__block_invoke(uint64_t a1)
{
  v130 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) syncStatus];
  if (+[HDCloudSyncTapToRadar isTapToRadarAllowed])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v121 = 0;
    v4 = [WeakRetained canPerformCloudSyncWithError:&v121];
    v5 = v121;
    if (v4)
    {
      v6 = [*(a1 + 32) _shouldPerformLastSyncDateCheckInternalSetting];

      if (v6)
      {
        v7 = *(a1 + 32);
        v120 = 0;
        v8 = [v7 _lastLongTimeWithoutSuccessfulCloudSyncReportDateKeyWithError:&v120];
        v9 = v120;
        if (!v8)
        {
          _HKInitializeLogging();
          v23 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 32);
            *buf = 138543618;
            v123 = v24;
            v124 = 2114;
            v125 = *&v9;
            _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Unable to get create lastLongTimeWithoutSuccessfulCloudSyncReportDateKey: %{public}@", buf, 0x16u);
          }

          goto LABEL_65;
        }

        v10 = [MEMORY[0x277CBEAA8] date];
        v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v12 = [v11 objectForKey:v8];

        if (!v12)
        {
          v25 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [v25 hk_removeObjectsForKeysWithPrefix:@"HDLastLongTimeWithoutSuccessfulCloudSyncReportDate"];

          _HKInitializeLogging();
          v26 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a1 + 32);
            v28 = v26;
            HKDiagnosticStringFromDate();
            v29 = v10;
            v31 = v30 = v8;
            *buf = 138543618;
            v123 = v27;
            v12 = 0;
            v124 = 2114;
            v125 = *&v31;
            _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: lastCloudSyncReportDate has never been set, set to %{public}@", buf, 0x16u);

            v8 = v30;
            v10 = v29;
          }

          v32 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [v32 setObject:v10 forKey:v8];

          goto LABEL_64;
        }

        [v10 timeIntervalSinceDate:v12];
        if (v13 < 2419200.0)
        {
          v14 = v13;
          _HKInitializeLogging();
          v15 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a1 + 32);
            *buf = 138543874;
            v123 = v16;
            v124 = 2048;
            v125 = v14;
            v126 = 2048;
            v127 = 0x4142750000000000;
            v17 = "%{public}@: skip last sync date check, timeSinceLastCloudSyncReportDate (%f) < (%f)";
            v18 = v15;
            v19 = 32;
LABEL_27:
            _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
            goto LABEL_64;
          }

          goto LABEL_64;
        }

        v111 = v12;
        os_unfair_lock_lock((*(a1 + 32) + 40));
        v33 = *(a1 + 32);
        v34 = *(v33 + 44);
        os_unfair_lock_unlock((v33 + 40));
        if ((v34 & 1) == 0)
        {
          _HKInitializeLogging();
          v44 = *MEMORY[0x277CCC328];
          v12 = v111;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(a1 + 32);
            *buf = 138543362;
            v123 = v45;
            v17 = "%{public}@: skip last sync date check, cached sync dates haven't been updated yet";
            v18 = v44;
            v19 = 12;
            goto LABEL_27;
          }

LABEL_64:

LABEL_65:
          goto LABEL_14;
        }

        v110 = v10;
        v108 = v8;
        v35 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v36 = [v35 daemon];
        v37 = [v36 primaryProfile];
        v119 = 0;
        v38 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity retrieveDatabaseIdentifierCreationDateFromProfile:v37 error:&v119];
        v109 = v119;

        if (!v38)
        {
          _HKInitializeLogging();
          v46 = *MEMORY[0x277CCC328];
          v8 = v108;
          v10 = v110;
          v12 = v111;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v47 = *(a1 + 32);
            *buf = 138543618;
            v123 = v47;
            v124 = 2114;
            v125 = *&v109;
            _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "%{public}@: unable to determine age of database, necessary for last sync date check %{public}@", buf, 0x16u);
          }

          goto LABEL_63;
        }

        v10 = v110;
        [v110 timeIntervalSinceDate:v38];
        v12 = v111;
        if (v39 < 2419200.0)
        {
          v40 = v39;
          _HKInitializeLogging();
          v41 = *MEMORY[0x277CCC328];
          v8 = v108;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v42 = *(a1 + 32);
            *buf = 138543874;
            v123 = v42;
            v124 = 2048;
            v125 = v40;
            v126 = 2048;
            v127 = 0x4142750000000000;
            v43 = "%{public}@: skip last sync date check, timeSinceDatabaseCreation (%f) < (%f)";
LABEL_33:
            _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, v43, buf, 0x20u);
            goto LABEL_63;
          }

          goto LABEL_63;
        }

        v48 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v49 = [v48 periodicActivityScheduler];
        v50 = [v49 periodicActivityErrorCount];

        if (v50 <= 27)
        {
          v51 = v50;
          _HKInitializeLogging();
          v41 = *MEMORY[0x277CCC328];
          v8 = v108;
          v10 = v110;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v52 = *(a1 + 32);
            *buf = 138543874;
            v123 = v52;
            v124 = 2048;
            v125 = *&v51;
            v126 = 2048;
            v127 = 28;
            v43 = "%{public}@: skip last sync date check, periodicSyncErrorCount (%ld) < (%ld)";
            goto LABEL_33;
          }

LABEL_63:

          goto LABEL_64;
        }

        v105 = v38;
        v53 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v54 = [v53 daemon];
        v55 = [v54 primaryProfile];
        v118 = 0;
        v107 = [HDCloudSyncStoreEntity persistedMostRecentLastSyncDateForProfile:v55 error:&v118];
        v56 = v118;

        if (v56)
        {
          _HKInitializeLogging();
          v57 = *MEMORY[0x277CCC328];
          v106 = v56;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v58 = *(a1 + 32);
            *buf = 138543618;
            v123 = v58;
            v124 = 2114;
            v125 = *&v56;
            _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@: Could not get most recent successful push %{public}@", buf, 0x16u);
          }

          v8 = v108;
          v10 = v110;
          v12 = v111;
          v38 = v105;
          goto LABEL_62;
        }

        v59 = objc_loadWeakRetained((*(a1 + 32) + 8));
        v60 = [v59 daemon];
        v61 = [v60 primaryProfile];
        v117 = 0;
        v104 = HDMostRecentSuccessfulPullDateForProfile(v61, &v117);
        v62 = v117;

        v106 = v62;
        if (v62)
        {
          _HKInitializeLogging();
          v63 = *MEMORY[0x277CCC328];
          v8 = v108;
          v10 = v110;
          v12 = v111;
          v38 = v105;
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v64 = *(a1 + 32);
            *buf = 138543618;
            v123 = v64;
            v124 = 2114;
            v125 = *&v106;
            v65 = "%{public}@: Could not get most recent successful pull %{public}@";
            v66 = v63;
            v67 = 22;
LABEL_51:
            _os_log_impl(&dword_228986000, v66, OS_LOG_TYPE_DEFAULT, v65, buf, v67);
          }
        }

        else
        {
          v8 = v108;
          v38 = v105;
          if (v107)
          {
            [v110 timeIntervalSinceDate:?];
            v69 = v68;
          }

          else
          {
            v70 = [MEMORY[0x277CBEAA8] distantPast];
            [v110 timeIntervalSinceDate:v70];
            v69 = v71;
          }

          if (v104)
          {
            v10 = v110;
            [v110 timeIntervalSinceDate:?];
            v73 = v72;
          }

          else
          {
            v74 = [MEMORY[0x277CBEAA8] distantPast];
            [v110 timeIntervalSinceDate:v74];
            v73 = v75;

            v10 = v110;
          }

          v12 = v111;
          if (v69 >= 2419200.0 || v73 >= 2419200.0)
          {
            os_unfair_lock_lock((*(a1 + 32) + 40));
            v103 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (v69 >= 2419200.0)
            {
              v78 = MEMORY[0x277CCACA8];
              v79 = [v2 lastSuccessfulPushDate];
              v80 = HKDiagnosticStringFromDate();
              v81 = [v78 stringWithFormat:@"push: %@", v80];
              [v103 addObject:v81];

              v82 = [v2 lastSuccessfulPushDate];

              if (v82)
              {
                v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.1f seconds ago", *&v69];
                [v103 addObject:v83];
              }
            }

            if (v73 >= 2419200.0)
            {
              v84 = MEMORY[0x277CCACA8];
              v85 = [v2 lastSuccessfulPullDate];
              v86 = HKDiagnosticStringFromDate();
              v87 = [v84 stringWithFormat:@"pull: %@", v86];
              [v103 addObject:v87];

              v88 = [v2 lastSuccessfulPullDate];

              if (v88)
              {
                v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0.1f seconds ago", *&v73];
                [v103 addObject:v89];
              }
            }

            os_unfair_lock_unlock((*(a1 + 32) + 40));
            v90 = [MEMORY[0x277CBEBD0] standardUserDefaults];
            v91 = [v90 stringArrayForKey:@"HDLongTimeWithoutSuccessfulCloudSyncPeriodicSyncErrorStrings"];

            v92 = objc_loadWeakRetained((*(a1 + 32) + 8));
            v93 = [v92 accountProvider];
            v94 = [v93 getPersistedAccountInfo];

            v95 = MEMORY[0x277CCACA8];
            v96 = [v103 componentsJoinedByString:{@", "}];
            v102 = v91;
            v97 = [v91 componentsJoinedByString:@"\n"];
            v98 = [v95 stringWithFormat:@"Date of last successful Health data sync (%@) was too long ago and periodic sync has failed (%ld) times, pop the alert!\nPlease file a radar\nAccount Info: (%@)\nRecent Periodic Sync Errors: %@", v96, v50, v94, v97];

            _HKInitializeLogging();
            v99 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v101 = *(a1 + 32);
              *buf = 138543618;
              v123 = v101;
              v124 = 2114;
              v125 = *&v98;
              _os_log_error_impl(&dword_228986000, v99, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", buf, 0x16u);
            }

            v115[0] = MEMORY[0x277D85DD0];
            v115[1] = 3221225472;
            v115[2] = __46__HDCloudSyncStatusProvider_checkLastSyncDate__block_invoke_336;
            v115[3] = &unk_278613968;
            v116 = v98;
            v112[0] = MEMORY[0x277D85DD0];
            v112[1] = 3221225472;
            v112[2] = __46__HDCloudSyncStatusProvider_checkLastSyncDate__block_invoke_3;
            v112[3] = &unk_278619460;
            v113 = v110;
            v8 = v108;
            v114 = v108;
            v100 = v98;
            [HDCloudSyncTapToRadar showTapToRadarRequestWithTitle:@"Health Not Cloud Syncing" message:@"It has been a long time since your Health data has fully synced to iCloud. Please file a radar with Tap-to-Radar." proceed:v115 disable:&__block_literal_global_135 completion:v112];

            v10 = v110;
            v12 = v111;
            v38 = v105;
            goto LABEL_61;
          }

          _HKInitializeLogging();
          v76 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v77 = *(a1 + 32);
            *buf = 138544130;
            v123 = v77;
            v124 = 2048;
            v125 = v69;
            v126 = 2048;
            v127 = *&v73;
            v128 = 2048;
            v129 = 0x4142750000000000;
            v65 = "%{public}@: skip last sync date check, time since last successful sync push (%f) and pull (%f) are less than (%f)";
            v66 = v76;
            v67 = 42;
            goto LABEL_51;
          }
        }

LABEL_61:

LABEL_62:
        goto LABEL_63;
      }
    }

    else
    {
    }
  }

  else
  {
    v5 = 0;
  }

  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    *buf = 138543362;
    v123 = v21;
    _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: check for last sync date is disabled", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v9 hk_removeObjectsForKeysWithPrefix:@"HDLastLongTimeWithoutSuccessfulCloudSyncReportDate"];
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
}

void __46__HDCloudSyncStatusProvider_checkLastSyncDate__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v0 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CCE470]];
}

void __46__HDCloudSyncStatusProvider_checkLastSyncDate__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 setObject:*(a1 + 32) forKey:*(a1 + 40)];
  }
}

- (id)lastSuccessfulPullDate
{
  os_unfair_lock_lock(&self->_lock);
  lastSuccessfulPullDate = [(HDCloudSyncStatus *)self->_lock_cloudSyncStatus lastSuccessfulPullDate];
  os_unfair_lock_unlock(&self->_lock);

  return lastSuccessfulPullDate;
}

- (id)lastSuccessfulPushDate
{
  os_unfair_lock_lock(&self->_lock);
  lastSuccessfulPushDate = [(HDCloudSyncStatus *)self->_lock_cloudSyncStatus lastSuccessfulPushDate];
  os_unfair_lock_unlock(&self->_lock);

  return lastSuccessfulPushDate;
}

- (id)lastSuccessfulLitePushDate
{
  os_unfair_lock_lock(&self->_lock);
  lastSuccessfulLitePushDate = [(HDCloudSyncStatus *)self->_lock_cloudSyncStatus lastSuccessfulLitePushDate];
  os_unfair_lock_unlock(&self->_lock);

  return lastSuccessfulLitePushDate;
}

- (void)setDataUploadRequestStatus:(int64_t)status profileType:(int64_t)type
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  daemon = [WeakRetained daemon];
  profileManager = [daemon profileManager];
  allProfileIdentifiers = [profileManager allProfileIdentifiers];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = allProfileIdentifiers;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if ([v15 type] == type)
        {
          v16 = objc_loadWeakRetained(&self->_coordinator);
          daemon2 = [v16 daemon];
          profileManager2 = [daemon2 profileManager];
          v19 = [profileManager2 profileForIdentifier:v15];

          cloudSyncManager = [v19 cloudSyncManager];
          [cloudSyncManager updateDataUploadRequestStatus:status];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_lastLongTimeWithoutSuccessfulCloudSyncReportDateKeyWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  daemon = [WeakRetained daemon];
  primaryProfile = [daemon primaryProfile];
  v16 = 0;
  v7 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity retrieveDatabaseIdentifierFromProfile:primaryProfile error:&v16];
  v8 = v16;

  v9 = [MEMORY[0x277CCAD78] hk_UUIDWithData:v7];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CCACA8];
    uUIDString = [v9 UUIDString];
    v13 = [v11 stringWithFormat:@"%@-%@", @"HDLastLongTimeWithoutSuccessfulCloudSyncReportDate", uUIDString];
LABEL_10:

    goto LABEL_11;
  }

  if (v8)
  {
    uUIDString = v8;
LABEL_6:
    if (error)
    {
      v14 = uUIDString;
      v13 = 0;
      *error = uUIDString;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }

    v8 = uUIDString;
    goto LABEL_10;
  }

  uUIDString = [MEMORY[0x277CCA9B8] hk_error:124 description:@"Unable to get the database UUID"];
  if (uUIDString)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)_shouldPerformLastSyncDateCheckInternalSetting
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:*MEMORY[0x277CCE470]];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)updateCachedLastSyncDatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HDCloudSyncStatusProvider_updateCachedLastSyncDatesWithCompletion___block_invoke;
  v6[3] = &unk_278623D78;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HDCloudSyncStatusProvider *)self fetchSyncStatusWithCompletion:v6];
}

void __69__HDCloudSyncStatusProvider_updateCachedLastSyncDatesWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v13 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 40));
  if (!a5)
  {
    *(*(a1 + 32) + 44) = 1;
  }

  v7 = [v13 lastSuccessfulPullDate];

  if (v7)
  {
    v8 = [v13 lastSuccessfulPullDate];
    [*(*(a1 + 32) + 32) setLastSuccessfulPullDate:v8];
  }

  v9 = [v13 lastSuccessfulPushDate];

  if (v9)
  {
    v10 = [v13 lastSuccessfulPushDate];
    [*(*(a1 + 32) + 32) setLastSuccessfulPushDate:v10];
  }

  v11 = [v13 lastSuccessfulLitePushDate];

  if (v11)
  {
    v12 = [v13 lastSuccessfulLitePushDate];
    [*(*(a1 + 32) + 32) setLastSuccessfulLitePushDate:v12];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  (*(*(a1 + 40) + 16))();
}

- (HDCloudSyncStatus)syncStatus
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(HDCloudSyncStatus);
  lastSuccessfulPullDate = [(HDCloudSyncStatus *)self->_lock_cloudSyncStatus lastSuccessfulPullDate];
  v5 = [lastSuccessfulPullDate copy];
  [(HDCloudSyncStatus *)v3 setLastSuccessfulPullDate:v5];

  lastSuccessfulPushDate = [(HDCloudSyncStatus *)self->_lock_cloudSyncStatus lastSuccessfulPushDate];
  v7 = [lastSuccessfulPushDate copy];
  [(HDCloudSyncStatus *)v3 setLastSuccessfulPushDate:v7];

  lastSuccessfulLitePushDate = [(HDCloudSyncStatus *)self->_lock_cloudSyncStatus lastSuccessfulLitePushDate];
  v9 = [lastSuccessfulLitePushDate copy];
  [(HDCloudSyncStatus *)v3 setLastSuccessfulLitePushDate:v9];

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)unitTest_setLastSuccessfulPullDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(HDCloudSyncStatus *)self->_lock_cloudSyncStatus setLastSuccessfulPullDate:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unitTest_setLastSuccessfulPushDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(HDCloudSyncStatus *)self->_lock_cloudSyncStatus setLastSuccessfulPushDate:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unitTest_setLastSuccessfulLitePushDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(HDCloudSyncStatus *)self->_lock_cloudSyncStatus setLastSuccessfulLitePushDate:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end