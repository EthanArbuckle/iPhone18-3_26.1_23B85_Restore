@interface HDCloudSyncPipelineStagePull
+ (id)operationTagDependencies;
- (HDCloudSyncPipelineStagePull)initWithConfiguration:(id)configuration cloudState:(id)state;
- (void)_reportLastPulledUpdateDate;
- (void)main;
@end

@implementation HDCloudSyncPipelineStagePull

+ (id)operationTagDependencies
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v5[1] = @"compute-pull-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDCloudSyncPipelineStagePull)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v7.receiver = self;
  v7.super_class = HDCloudSyncPipelineStagePull;
  v4 = [(HDCloudSyncPipelineStage *)&v7 initWithConfiguration:configuration cloudState:state];
  v5 = v4;
  if (v4)
  {
    [(HDCloudSyncPipelineStage *)v4 setExpectedReceiveSize:2];
  }

  return v5;
}

- (void)main
{
  v63 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  context = [configuration context];
  options = [context options];

  if ((options & 2) != 0)
  {
    _HKInitializeLogging();
    v14 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping due to pipeline options.", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  else
  {
    if (self)
    {
      profile = [(HDCloudSyncOperation *)self profile];
      v55 = 0;
      v7 = [HDSampleEntity minimumSampleStartDateForProfile:profile error:&v55];
      v8 = v55;

      _HKInitializeLogging();
      v9 = HKLogSyncCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        profile2 = [(HDCloudSyncOperation *)self profile];
        database = [profile2 database];
        databaseSizeInBytes = [database databaseSizeInBytes];
        if (v7)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@", oldest sample start date %@", v7];
        }

        else
        {
          v13 = 0;
        }

        *buf = 138543874;
        selfCopy3 = self;
        v59 = 2112;
        v60 = databaseSizeInBytes;
        v61 = 2112;
        v62 = v13;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Aggregated database size is %@ bytes%@", buf, 0x20u);
        if (v7)
        {
        }
      }
    }

    v15 = [HDCloudSyncCompoundOperation alloc];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    cloudState = [(HDCloudSyncOperation *)self cloudState];
    v18 = [(HDCloudSyncCompoundOperation *)v15 initWithConfiguration:configuration2 cloudState:cloudState name:@"Pull" continueOnSubOperationError:1];

    configuration3 = [(HDCloudSyncOperation *)self configuration];
    computedState = [configuration3 computedState];
    pullTargets = [computedState pullTargets];
    v22 = [pullTargets sortedArrayUsingComparator:&__block_literal_global_222];

    v54 = 0u;
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    obj = v22;
    v23 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v52;
      do
      {
        v26 = 0;
        do
        {
          if (*v52 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v51 + 1) + 8 * v26);
          v28 = [HDCloudSyncPullStoreOperation alloc];
          configuration4 = [(HDCloudSyncOperation *)self configuration];
          cloudState2 = [(HDCloudSyncOperation *)self cloudState];
          v31 = [(HDCloudSyncPullStoreOperation *)v28 initWithConfiguration:configuration4 cloudState:cloudState2 target:v27];

          [(HDCloudSyncCompoundOperation *)v18 addOperation:v31 transitionHandler:0];
          ++v26;
        }

        while (v24 != v26);
        v24 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v24);
    }

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __36__HDCloudSyncPipelineStagePull_main__block_invoke_2;
    v50[3] = &unk_278613060;
    v50[4] = self;
    [(HDCloudSyncOperation *)v18 setOnSuccess:v50];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __36__HDCloudSyncPipelineStagePull_main__block_invoke_3;
    v49[3] = &unk_278613088;
    v49[4] = self;
    [(HDCloudSyncOperation *)v18 setOnError:v49];
    [(HDCloudSyncCompoundOperation *)v18 start];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    context2 = [configuration5 context];
    reason = [context2 reason];

    if (reason == 33)
    {
      _HKInitializeLogging();
      v35 = MEMORY[0x277CCC328];
      v36 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_228986000, v36, OS_LOG_TYPE_DEBUG, "Reporting initial restore as preview available to DAS", buf, 2u);
      }

      v37 = MEMORY[0x277CF07F0];
      v38 = [MEMORY[0x277CBEAA8] now];
      v48 = 0;
      [v37 reportFeatureCheckpoint:30 forFeature:601 atDate:v38 error:&v48];
      v39 = v48;

      if (v39)
      {
        _HKInitializeLogging();
        v40 = *v35;
        if (os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy3 = self;
          v59 = 2114;
          v60 = v39;
          _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "%{public}@: Failed to report feature checkpoint due to error: %{public}@", buf, 0x16u);
        }
      }
    }

    progress = [(HDCloudSyncOperation *)v18 progress];
    totalUnitCount = [progress totalUnitCount];

    progress2 = [(HDCloudSyncOperation *)self progress];
    [progress2 setTotalUnitCount:{objc_msgSend(progress2, "totalUnitCount") + totalUnitCount}];

    progress3 = [(HDCloudSyncOperation *)self progress];
    progress4 = [(HDCloudSyncOperation *)v18 progress];
    [progress3 addChild:progress4 withPendingUnitCount:totalUnitCount];
  }

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __36__HDCloudSyncPipelineStagePull_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 storeRecord];
  v6 = [v4 storeRecord];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __36__HDCloudSyncPipelineStagePull_main__block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v73 = *MEMORY[0x277D85DE8];
  [(HDCloudSyncPipelineStagePull *)*(a1 + 32) _reportLastPulledUpdateDate];
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = [*(v1 + 32) configuration];
    v4 = [v3 syncDate];

    v5 = [v2 configuration];
    v6 = [v5 repository];

    v7 = [v6 profile];
    v8 = [v7 legacyRepositoryProfile];

    v9 = HDCloudSyncKeyValueDomainWithProfile(v8);
    v10 = [v6 primaryCKContainer];
    v11 = [v10 containerIdentifier];
    v12 = HDCloudSyncLastSuccessfulPullKeyForContainerIdentifier(v11);

    v68 = 0;
    v13 = [v9 dateForKey:v12 error:&v68];
    v14 = v68;
    v15 = v14;
    if (v13 || !v14)
    {
      if (!v13 && [v8 profileType] == 1)
      {
        v62 = v2;
        v60 = v12;
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_228986000, v17, OS_LOG_TYPE_DEBUG, "Generating AWD event for first successful pull", buf, 2u);
        }

        v18 = v8;
        v19 = v4;
        v20 = HDCloudSyncRestorePhaseSyncCompleteEndDate(v18);
        v21 = HDCloudSyncRestorePhaseSyncCompleteStartDate(v18);
        v22 = v21;
        if (!v20 && v21)
        {
          [v19 timeIntervalSinceDate:v21];
          v24 = v23;
          [v18 daemon];
          v25 = v58 = v4;
          [v25 analyticsSubmissionCoordinator];
          v56 = v9;
          v27 = v26 = v6;
          [v27 cloudSync_reportRestoreForProfile:v18 startDate:v22 endDate:v19 duration:0 finishedJournalMerge:v24];

          v6 = v26;
          v9 = v56;

          v4 = v58;
          HDSetCloudSyncRestorPhaseSyncCompleteEndDate(v19, v18);
        }

        _HKInitializeLogging();
        v28 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_228986000, v28, OS_LOG_TYPE_DEBUG, "Reporting initial restore as feature available to DAS", buf, 2u);
        }

        v29 = MEMORY[0x277CF07F0];
        v30 = [MEMORY[0x277CBEAA8] now];
        v67 = v15;
        [v29 reportFeatureCheckpoint:50 forFeature:601 atDate:v30 error:&v67];
        v31 = v67;

        v12 = v60;
        v2 = v62;
        if (v31)
        {
          _HKInitializeLogging();
          v32 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v70 = v62;
            v71 = 2114;
            v72 = v31;
            _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "%{public}@: Failed to report feature checkpoint due to error: %{public}@", buf, 0x16u);
          }

          v15 = v31;
        }

        else
        {
          v15 = 0;
        }

        v13 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v70 = v15;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Unable to determine whether or not this is the first successful pull: %{public}@.", buf, 0xCu);
      }
    }

    v33 = [[HDCloudSyncUpdateLastPullDateOperation alloc] initWithPullCompleteDate:v4 lastSuccessfulPullKey:v12];
    v66 = 0;
    v34 = [(HDJournalableOperation *)v33 performOrJournalWithProfile:v8 error:&v66];
    v65 = v66;
    if (v34)
    {
      if ([(HDJournalableOperation *)v33 didJournal])
      {
        _HKInitializeLogging();
        v35 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v70 = v2;
          v71 = 2114;
          v72 = v8;
          _os_log_impl(&dword_228986000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync Journals are present, last pull date will be updated after cloud sync journals are ingested %{public}@", buf, 0x16u);
        }
      }
    }

    if ([v8 profileType] == 3)
    {
      v61 = v12;
      v63 = v2;
      v54 = v6;
      v64 = v13;
      v36 = v13;
      v37 = v8;
      v38 = v36;
      v52 = v37;
      v39 = v37;
      v59 = v4;
      v40 = v4;
      v41 = HDCloudSyncLastPulledUpdateDate(v39);
      if (v41)
      {
        v42 = MEMORY[0x277CCABB0];
        [v40 timeIntervalSinceDate:v41];
        v43 = [v42 numberWithDouble:?];
      }

      else
      {
        v43 = 0;
      }

      v55 = v1;
      v57 = v9;
      if (v64)
      {
        v44 = MEMORY[0x277CCABB0];
        [v40 timeIntervalSinceDate:v38];
        v45 = [v44 numberWithDouble:?];
      }

      else
      {
        v45 = 0;
      }

      v46 = [v39 daemon];
      v47 = [v46 analyticsSubmissionCoordinator];
      v48 = [v63 configuration];
      [v47 tinker_syncFinishedWithLatency:v43 timeSinceLastSuccessfullPull:v45 configuration:v48];

      v6 = v54;
      v1 = v55;
      v9 = v57;
      v4 = v59;
      v12 = v61;
      v13 = v64;
      v8 = v53;
    }

    HDUpdateOldestSampleStartDateForProfile(v8);

    v49 = *(v1 + 32);
  }

  else
  {
    v49 = 0;
  }

  v50 = *MEMORY[0x277D85DE8];

  return [v49 finishWithSuccess:1 error:0];
}

- (void)_reportLastPulledUpdateDate
{
  if (self)
  {
    configuration = [self configuration];
    repository = [configuration repository];
    profile = [repository profile];
    legacyRepositoryProfile = [profile legacyRepositoryProfile];

    v4 = HDCloudSyncLastPulledUpdateDate(legacyRepositoryProfile);
    cloudSyncManager = [legacyRepositoryProfile cloudSyncManager];
    [cloudSyncManager didCompleteSuccessfulPullOfUpdateWithDate:v4];
  }
}

void __36__HDCloudSyncPipelineStagePull_main__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  [(HDCloudSyncPipelineStagePull *)*(a1 + 32) _reportLastPulledUpdateDate];
  v4 = [*(a1 + 32) profile];
  v5 = [v4 profileType];

  if (v5 == 3)
  {
    v6 = [*(a1 + 32) profile];
    v7 = [v6 daemon];
    v8 = [v7 analyticsSubmissionCoordinator];
    v9 = [*(a1 + 32) configuration];
    [v8 tinker_syncFailedWithError:v10 configuration:v9];
  }

  [*(a1 + 32) finishWithSuccess:0 error:v10];
}

@end