@interface HDCloudSyncPipeline
+ (id)operationGroupForContext:(id)a3 syncCircleIdentifier:(id)a4 assetDownloadStagingManager:(id)a5;
+ (id)retrieveAndResetSyncCounts;
+ (uint64_t)_shouldIncrementCountForSyncAnalyticsForContext:(uint64_t)a1;
- (id)analyticsDictionary;
- (id)beginWithCompletion:(id)a3;
- (id)beginWithTaskTree:(id)a3;
- (id)description;
- (id)initForContext:(id)a3 repository:(id)a4 accessibilityAssertion:(id)a5 queue:(id)a6;
- (id)stages;
- (void)addStage:(id)a3;
- (void)cancel;
- (void)dealloc;
@end

@implementation HDCloudSyncPipeline

- (id)initForContext:(id)a3 repository:(id)a4 accessibilityAssertion:(id)a5 queue:(id)a6
{
  v68 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v11 = a4;
  v56 = a5;
  v55 = a6;
  v62.receiver = self;
  v62.super_class = HDCloudSyncPipeline;
  v12 = [(HDCloudSyncPipeline *)&v62 init];
  if (v12)
  {
    if (!v11)
    {
      v53 = [MEMORY[0x277CCA890] currentHandler];
      [v53 handleFailureInMethod:a2 object:v12 file:@"HDCloudSyncPipeline.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"repository"}];
    }

    v12->_status = 0;
    v13 = [v57 copy];
    context = v12->_context;
    v12->_context = v13;

    objc_storeStrong(&v12->_repository, a4);
    objc_storeStrong(&v12->_queue, a6);
    v15 = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = v15;

    v17 = [(NSUUID *)v12->_identifier UUIDString];
    v18 = [v17 substringToIndex:4];
    shortPipelineIdentifier = v12->_shortPipelineIdentifier;
    v12->_shortPipelineIdentifier = v18;

    v12->_pipelineResult = 1;
    v20 = [(HDCloudSyncRepository *)v12->_repository profile];
    v21 = [v20 database];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (v56)
    {
      v61 = 0;
      v24 = [v21 cloneAccessibilityAssertion:v56 ownerIdentifier:v23 error:&v61];
      v25 = &v61;
    }

    else
    {
      v60 = 0;
      v24 = [v21 takeAccessibilityAssertionWithOwnerIdentifier:v23 timeout:&v60 error:600.0];
      v25 = &v60;
    }

    v54 = *v25;
    accessibilityAssertion = v12->_accessibilityAssertion;
    v12->_accessibilityAssertion = v24;

    if (!v12->_accessibilityAssertion)
    {
      _HKInitializeLogging();
      v27 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *location = 138543874;
        *&location[4] = v11;
        v64 = 2114;
        v65 = v12;
        v66 = 2114;
        v67 = v54;
        _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "%{public}@: Failed to acquire database accessibility assertion for cloud sync in repo: %{public}@, with error: %{public}@", location, 0x20u);
      }
    }

    objc_initWeak(location, v12);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __78__HDCloudSyncPipeline_initForContext_repository_accessibilityAssertion_queue___block_invoke;
    v58[3] = &unk_278616F38;
    objc_copyWeak(&v59, location);
    v28 = [HDPowerAssertion powerAssertionWithIdentifier:@"Health Sync" timeout:v58 timeoutHandler:600.0];
    powerAssertion = v12->_powerAssertion;
    v12->_powerAssertion = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stages = v12->_stages;
    v12->_stages = v30;

    v32 = objc_alloc(MEMORY[0x277D10AB8]);
    v33 = [(NSUUID *)v12->_identifier UUIDString];
    v34 = [v32 initWithAssertionIdentifier:@"HDCloudSyncDownloadDirectoryAssertionIdentifier" ownerIdentifier:v33];
    inProgressDownloadDirAssertion = v12->_inProgressDownloadDirAssertion;
    v12->_inProgressDownloadDirAssertion = v34;

    v36 = [v11 profile];
    v37 = [v36 cloudSyncManager];
    v38 = [v37 assetDownloadStagingManagerWithAssertion:v12->_inProgressDownloadDirAssertion];

    v39 = [v11 syncCircleIdentifier];
    v40 = [HDCloudSyncPipeline operationGroupForContext:v57 syncCircleIdentifier:v39 assetDownloadStagingManager:v38];
    operationGroup = v12->_operationGroup;
    v12->_operationGroup = v40;

    v42 = [HDCloudSyncOperationConfiguration alloc];
    v43 = v12->_operationGroup;
    v44 = [v11 syncCircleIdentifier];
    v45 = v12->_accessibilityAssertion;
    v46 = v12->_identifier;
    v47 = [v57 unitTest_syncDateOverride];
    v48 = v47;
    if (!v47)
    {
      v48 = [MEMORY[0x277CBEAA8] date];
    }

    v49 = [(HDCloudSyncOperationConfiguration *)v42 initWithRepository:v11 operationGroup:v43 syncContainerPrefix:v44 context:v57 accessibilityAssertion:v45 syncIdentifier:v46 syncDate:v48];
    operationConfiguration = v12->_operationConfiguration;
    v12->_operationConfiguration = v49;

    if (!v47)
    {
    }

    objc_destroyWeak(&v59);
    objc_destroyWeak(location);
  }

  v51 = *MEMORY[0x277D85DE8];
  return v12;
}

void __78__HDCloudSyncPipeline_initForContext_repository_accessibilityAssertion_queue___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _HKInitializeLogging();
    v1 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v5 = WeakRetained;
      _os_log_impl(&dword_228986000, v1, OS_LOG_TYPE_DEFAULT, "%{public}@: Power assertion has expired.", buf, 0xCu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(HDPowerAssertion *)self->_powerAssertion invalidate];
  [(HDAssertion *)self->_accessibilityAssertion invalidate];
  [(HDAssertion *)self->_inProgressDownloadDirAssertion invalidate];
  cloudKitOperationDelayTimer = self->_cloudKitOperationDelayTimer;
  if (cloudKitOperationDelayTimer)
  {
    dispatch_source_cancel(cloudKitOperationDelayTimer);
    v4 = self->_cloudKitOperationDelayTimer;
    self->_cloudKitOperationDelayTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = HDCloudSyncPipeline;
  [(HDCloudSyncPipeline *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  shortPipelineIdentifier = self->_shortPipelineIdentifier;
  v5 = [(HDCloudSyncOperationConfiguration *)self->_operationConfiguration shortSyncIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"    ";
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [(HDCloudSyncContext *)self->_context reason];
  v10 = HKCloudSyncReasonToString();
  v11 = HDCloudSyncOperationStatusToString(self->_status);
  v12 = [v3 stringWithFormat:@"<[%@:%@] %@ (%@) %@>", shortPipelineIdentifier, v7, v9, v10, v11];

  return v12;
}

- (id)analyticsDictionary
{
  v38[13] = *MEMORY[0x277D85DE8];
  v37[0] = @"syncIdentifier";
  v36 = [(HDCloudSyncOperationConfiguration *)self->_operationConfiguration syncIdentifier];
  v35 = [v36 UUIDString];
  v38[0] = v35;
  v37[1] = @"pipelineIdentifier";
  v34 = [(NSUUID *)self->_identifier UUIDString];
  v38[1] = v34;
  v37[2] = @"syncCircleIdentifier";
  v33 = [(HDCloudSyncRepository *)self->_repository syncCircleIdentifier];
  v38[2] = v33;
  v37[3] = @"primaryContainerIdentifier";
  v32 = [(HDCloudSyncRepository *)self->_repository primaryCKContainer];
  v3 = [v32 containerIdentifier];
  analyticsCloudKitIdentifier = &stru_283BF39C8;
  if (self->_analyticsCloudKitIdentifier)
  {
    analyticsCloudKitIdentifier = self->_analyticsCloudKitIdentifier;
  }

  v31 = v3;
  v38[3] = v3;
  v38[4] = analyticsCloudKitIdentifier;
  v37[4] = @"cloudKitIdentifier";
  v37[5] = @"reason";
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDCloudSyncContext reason](self->_context, "reason")}];
  v38[5] = v30;
  v37[6] = @"options";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HDCloudSyncContext options](self->_context, "options")}];
  v38[6] = v29;
  v37[7] = @"operationType";
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDCloudSyncContext purpose](self->_context, "purpose")}];
  v38[7] = v28;
  v37[8] = @"purpose";
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDCloudSyncContext purpose](self->_context, "purpose")}];
  v38[8] = v27;
  v37[9] = @"duration";
  v5 = MEMORY[0x277CCABB0];
  status = self->_status;
  if ((status - 2) >= 2)
  {
    v8 = 0.0;
    if (status != 1)
    {
      goto LABEL_8;
    }

    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    Current = self->_endTime;
  }

  v8 = Current - self->_startTime;
LABEL_8:
  v26 = [v5 numberWithDouble:v8];
  v38[9] = v26;
  v37[10] = @"changesPullOperationCount";
  v9 = MEMORY[0x277CCABB0];
  v25 = [(HDCloudSyncPipeline *)self operationConfiguration];
  v10 = [v25 computedState];
  v11 = [v10 pullTargets];
  v12 = [v9 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v38[10] = v12;
  v37[11] = @"changesPushOperationCount";
  v13 = MEMORY[0x277CCABB0];
  v14 = [(HDCloudSyncPipeline *)self operationConfiguration];
  v15 = [v14 computedState];
  v16 = [v15 pushTargets];
  v17 = [v13 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
  v38[11] = v17;
  v37[12] = @"changesRebaseCount";
  v18 = MEMORY[0x277CCABB0];
  v19 = [(HDCloudSyncPipeline *)self operationConfiguration];
  v20 = [v19 computedState];
  v21 = [v18 numberWithUnsignedInteger:{objc_msgSend(v20, "countOfRebaselineOperations")}];
  v38[12] = v21;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:13];

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)addStage:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (self->_status)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HDCloudSyncPipeline.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"_status == HDCloudSyncOperationStatusPending"}];

    v5 = v7;
  }

  [(NSMutableArray *)self->_stages addObject:v5];
}

- (id)beginWithTaskTree:(id)a3
{
  v5 = a3;
  if (self->_status)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HDCloudSyncPipeline.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"_status == HDCloudSyncOperationStatusPending"}];
  }

  self->_status = 1;
  v6 = [(NSMutableArray *)self->_stages count];
  v7 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100 * v6 + 15];
  progress = self->_progress;
  self->_progress = v7;

  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__HDCloudSyncPipeline_beginWithTaskTree___block_invoke;
  v14[3] = &unk_278617930;
  v14[4] = self;
  [v5 addTaskOnQueue:queue task:v14];
  v10 = self->_progress;
  v11 = v10;

  return v10;
}

void __41__HDCloudSyncPipeline_beginWithTaskTree___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 72) = CFAbsoluteTimeGetCurrent();
  v54 = [*(*(a1 + 32) + 8) hk_map:&__block_literal_global_86];
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    v10 = v7;
    v11 = v5;
    v12 = [v9 count];
    v13 = [*(*(a1 + 32) + 128) profile];
    v14 = [v13 profileIdentifier];
    v15 = [v54 componentsJoinedByString:{@", "}];
    [*(a1 + 32) accessibilityAssertion];
    v17 = v16 = a1;
    *buf = 138544386;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v12;
    v5 = v11;
    *&buf[22] = 2114;
    v66 = v14;
    *v67 = 2114;
    *&v67[2] = v15;
    v68 = 2114;
    v69 = v17;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting %ld-stage pipeline for %{public}@: %{public}@ with assertion: %{public}@", buf, 0x34u);

    a1 = v16;
  }

  v18 = *(a1 + 32);
  if (*(v18 + 104))
  {
    v52 = v6;
  }

  else
  {
    v19 = [*(v18 + 128) profile];
    v20 = [v19 cloudSyncManager];
    v58 = 0;
    v21 = [v20 canPerformCloudSyncWithError:&v58];
    v22 = v58;

    if ((v21 & 1) == 0)
    {
      v6[2](v6, 2, v22);

      goto LABEL_18;
    }

    v52 = v6;

    v18 = *(a1 + 32);
  }

  v23 = *(v18 + 144);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __63__HDCloudSyncPipeline__queue_computeConfigurationWithTaskTree___block_invoke;
  v66 = &unk_278617930;
  *v67 = v18;
  v24 = v5;
  [v24 addTaskOnQueue:v23 task:buf];
  v25 = *(v18 + 144);
  *&v59 = MEMORY[0x277D85DD0];
  *(&v59 + 1) = 3221225472;
  *&v60 = __63__HDCloudSyncPipeline__queue_computeConfigurationWithTaskTree___block_invoke_3;
  *(&v60 + 1) = &unk_278617930;
  *&v61 = v18;
  [v24 addTaskOnQueue:v25 task:&v59];

  v26 = *(a1 + 32);
  v27 = *(v26 + 144);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __41__HDCloudSyncPipeline_beginWithTaskTree___block_invoke_382;
  v57[3] = &unk_27861F748;
  v57[4] = v26;
  [v24 addCheckpointTaskOnQueue:v27 task:v57];
  v28 = *(a1 + 32);
  v53 = v5;
  v50 = v24;
  v51 = a1;
  if (v28)
  {
    v29 = *(v28 + 144);
    v30 = v24;
    dispatch_assert_queue_V2(v29);
    v31 = *(v28 + 144);
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __72__HDCloudSyncPipeline__queue_waitForCloudKitOperationDelayWithTaskTree___block_invoke;
    v66 = &unk_278617930;
    *v67 = v28;
    [v30 addTaskOnQueue:v31 task:buf];

    v32 = *(a1 + 32);
    v33 = v30;
    if (v32)
    {
      v34 = v33;
      dispatch_assert_queue_V2(*(v32 + 144));
      v62 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      obj = *(v32 + 8);
      v35 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v60;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v60 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v59 + 1) + 8 * i);
            v40 = *(v32 + 144);
            v41 = v34;
            dispatch_assert_queue_V2(v40);
            v42 = *(v32 + 144);
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = __48__HDCloudSyncPipeline__queue_runStage_taskTree___block_invoke;
            v63[3] = &unk_278617958;
            v63[4] = v32;
            v43 = v39;
            v64 = v43;
            [v41 addTaskOnQueue:v42 task:v63];
          }

          v36 = [obj countByEnumeratingWithState:&v59 objects:buf count:16];
        }

        while (v36);
      }
    }
  }

  else
  {
    v49 = v24;
  }

  v44 = *(v51 + 32);
  v45 = *(v44 + 144);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __63__HDCloudSyncPipeline__queue_reportFinalAnalyticsWithTaskTree___block_invoke;
  v66 = &unk_27861F748;
  *v67 = v44;
  [v50 addCheckpointTaskOnQueue:v45 task:buf];
  v46 = *(v51 + 32);
  v47 = *(v46 + 144);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __41__HDCloudSyncPipeline_beginWithTaskTree___block_invoke_384;
  v56[3] = &unk_27861F748;
  v56[4] = v46;
  [v50 addCheckpointTaskOnQueue:v47 task:v56];
  v6 = v52;
  v52[2](v52, 0, 0);
  v5 = v53;
LABEL_18:

  v48 = *MEMORY[0x277D85DE8];
}

NSString *__41__HDCloudSyncPipeline_beginWithTaskTree___block_invoke_2()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

uint64_t __41__HDCloudSyncPipeline_beginWithTaskTree___block_invoke_382(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished computing configuration and beginning pipeline stages", &v6, 0xCu);
  }

  result = [*(*(a1 + 32) + 176) setCompletedUnitCount:10];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __41__HDCloudSyncPipeline_beginWithTaskTree___block_invoke_384(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(*(a1 + 32) + 176) setCompletedUnitCount:{objc_msgSend(*(*(a1 + 32) + 176), "totalUnitCount")}];
  *(*(a1 + 32) + 80) = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  if (v5)
  {
    if (v5 == 1)
    {
      *(v4 + 112) = 2;
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v32 = 138543362;
        v33 = v7;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Pipeline finished.", &v32, 0xCu);
      }

      if ([HDCloudSyncPipeline _shouldIncrementCountForSyncAnalyticsForContext:?]&& *(a1 + 32))
      {
        os_unfair_lock_lock(&_syncCountLock);
        v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v9 = [v8 dictionaryForKey:@"HDCloudSyncCountDictionary"];

        if (v9)
        {
          [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
        }

        else
        {
          [MEMORY[0x277CBEB38] dictionary];
        }
        v15 = ;
        v16 = [v15 valueForKey:@"HDCloudSyncCountOfSuccessfulSyncs"];
        v17 = v16;
        if (v16)
        {
          v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v16, "intValue") + 1}];
          [v15 setValue:v18 forKey:@"HDCloudSyncCountOfSuccessfulSyncs"];
        }

        else
        {
          [v15 setValue:&unk_283CB1FF8 forKey:@"HDCloudSyncCountOfSuccessfulSyncs"];
        }

        v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v20 = [v15 copy];
        [v19 setValue:v20 forKey:@"HDCloudSyncCountDictionary"];

        os_unfair_lock_unlock(&_syncCountLock);
      }
    }
  }

  else
  {
    *(v4 + 112) = 3;
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [v3 allErrors];
      v14 = [v13 firstObject];
      v32 = 138543618;
      v33 = v11;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Pipeline failed: %{public}@.", &v32, 0x16u);
    }
  }

  if ([HDCloudSyncPipeline _shouldIncrementCountForSyncAnalyticsForContext:?])
  {
    os_unfair_lock_lock(&_syncCountLock);
    v21 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v22 = [v21 dictionaryForKey:@"HDCloudSyncCountDictionary"];

    if (v22)
    {
      [MEMORY[0x277CBEB38] dictionaryWithDictionary:v22];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v23 = ;
    v24 = [v23 valueForKey:@"HDCloudSyncCountOfTotalSyncs"];
    v25 = v24;
    if (v24)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v24, "intValue") + 1}];
      [v23 setValue:v26 forKey:@"HDCloudSyncCountOfTotalSyncs"];
    }

    else
    {
      [v23 setValue:&unk_283CB1FF8 forKey:@"HDCloudSyncCountOfTotalSyncs"];
    }

    v27 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v28 = [v23 copy];
    [v27 setValue:v28 forKey:@"HDCloudSyncCountDictionary"];

    os_unfair_lock_unlock(&_syncCountLock);
  }

  [*(*(a1 + 32) + 88) invalidate];
  v29 = *(a1 + 32);
  v30 = *(v29 + 88);
  *(v29 + 88) = 0;

  v31 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)_shouldIncrementCountForSyncAnalyticsForContext:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 reason];

  return (v3 > 0x1F) | (0x7FFFFFD7u >> v3) & 1;
}

- (id)beginWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D10AC8]);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __43__HDCloudSyncPipeline_beginWithCompletion___block_invoke;
  v13 = &unk_27861F770;
  v14 = self;
  v15 = v4;
  v6 = v4;
  v7 = [v5 initWithDescription:@"Sync pipeline" completion:&v10];
  v8 = [(HDCloudSyncPipeline *)self beginWithTaskTree:v7, v10, v11, v12, v13, v14];
  [v7 begin];

  return v8;
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HDCloudSyncPipeline_cancel__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __29__HDCloudSyncPipeline_cancel__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = 138543362;
    v13 = v11;
    _os_log_error_impl(&dword_228986000, v2, OS_LOG_TYPE_ERROR, "%{public}@: Pipeline cancellation requested.", &v12, 0xCu);
  }

  *(*(a1 + 32) + 24) = 1;
  [*(*(a1 + 32) + 168) cancelAllOperations];
  v3 = _Block_copy(*(*(a1 + 32) + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (v3)
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:728 format:@"Pipeline cancelled while waiting for CloudKit operation delay."];
    v3[2](v3, 2, v6);
  }

  v7 = *(*(a1 + 32) + 32);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __63__HDCloudSyncPipeline__queue_computeConfigurationWithTaskTree___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 128);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HDCloudSyncPipeline__queue_computeConfigurationWithTaskTree___block_invoke_2;
  v7[3] = &unk_2786130D8;
  v8 = v4;
  v6 = v4;
  [v5 cacheAllOwnerIdentifiersWithCompletion:v7];
}

void __63__HDCloudSyncPipeline__queue_computeConfigurationWithTaskTree___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  if (v4)
  {
    dispatch_assert_queue_V2(*(v4 + 144));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = *(v4 + 8);
    v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [*(v4 + 160) expectedSendSize];
          v13 = [v11 expectedSendSize];
          if (v12 <= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = v12;
          }

          [*(v4 + 160) setExpectedSendSize:v14];
          v15 = [*(v4 + 160) expectedReceiveSize];
          v16 = [v11 expectedReceiveSize];
          if (v15 <= v16)
          {
            v17 = v16;
          }

          else
          {
            v17 = v15;
          }

          [*(v4 + 160) setExpectedReceiveSize:v17];
        }

        v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }
  }

  v18 = *(*(a1 + 32) + 128);
  v19 = [v18 primaryCKContainer];
  v27 = [v18 cachedOwnerIdentifierForContainer:v19];

  v20 = [v27 cloudKitIdentifier];
  v21 = *(a1 + 32);
  v22 = *(v21 + 64);
  *(v21 + 64) = v20;

  v23 = [*(*(a1 + 32) + 128) profile];
  v24 = [v23 daemon];
  v25 = [v24 analyticsSubmissionCoordinator];
  [v25 cloudSync_reportPipelineStarted:*(a1 + 32)];

  (*(v5 + 2))(v5, 0, 0);
  v26 = *MEMORY[0x277D85DE8];
}

void __63__HDCloudSyncPipeline__queue_reportFinalAnalyticsWithTaskTree___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v45 = v3;
  if (*(v4 + 56) == 1)
  {
    v5 = [*(v4 + 128) profile];
    v6 = [v5 daemon];
    v7 = [v6 analyticsSubmissionCoordinator];
    [v7 cloudSync_reportPipelineFinished:*(a1 + 32)];
  }

  else
  {
    v8 = [v3 allErrors];
    v9 = [v8 firstObject];
    v10 = [v9 hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics];
    v11 = v10;
    if (v10)
    {
      v5 = v10;
    }

    else
    {
      v12 = [v45 allErrors];
      v5 = [v12 firstObject];
    }

    v6 = [*(*(a1 + 32) + 128) profile];
    v7 = [v6 daemon];
    v13 = [v7 analyticsSubmissionCoordinator];
    [v13 cloudSync_reportPipelineFailed:*(a1 + 32) error:v5];
  }

  v14 = [*(*(a1 + 32) + 128) profile];
  v15 = [v14 daemon];
  v16 = [v15 analyticsSubmissionCoordinator];
  v17 = *(a1 + 32);
  v18 = [v17 operationConfiguration];
  v19 = [v18 cachedCloudState];
  [v16 cloudCache_reportCacheSyncAnalyticsForPipeline:v17 operationCount:{objc_msgSend(v19, "operationCountForAnalytics")}];

  v44 = [*(*(a1 + 32) + 128) profile];
  v43 = [v44 daemon];
  v20 = [v43 analyticsSubmissionCoordinator];
  v21 = *(a1 + 32);
  v42 = [v21 operationConfiguration];
  v41 = [v42 cachedCloudState];
  v39 = [v41 changedZonesCount];
  v40 = [*(a1 + 32) operationConfiguration];
  v22 = [v40 cachedCloudState];
  v23 = [v22 deletedZonesCount];
  v24 = [*(a1 + 32) operationConfiguration];
  v25 = [v24 cachedCloudState];
  v26 = [v25 changedRecordsCount];
  v27 = [*(a1 + 32) operationConfiguration];
  v28 = [v27 cachedCloudState];
  [v20 cloudCache_reportCacheFetchAndUpdateAnalyticsForPipeline:v21 changedZonesCount:v39 deletedZonesCount:v23 changedRecordsCount:v26 deletedRecordsCount:{objc_msgSend(v28, "deletedRecordsCount")}];

  [*(*(a1 + 32) + 152) invalidate];
  v29 = *(a1 + 32);
  v30 = *(v29 + 152);
  *(v29 + 152) = 0;

  v31 = _Block_copy(*(*(a1 + 32) + 184));
  v32 = *(a1 + 32);
  v33 = *(v32 + 184);
  *(v32 + 184) = 0;

  if (v31)
  {
    v34 = *(a1 + 32);
    v35 = *(v34 + 48);
    v36 = *(v34 + 56);
    v37 = [v45 allErrors];
    v38 = [v37 firstObject];
    v31[2](v31, v35, v36, v38);
  }
}

void __48__HDCloudSyncPipeline__queue_runStage_taskTree___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(a1 + 32);
  if (*(v5 + 24) == 1)
  {
    v6 = [MEMORY[0x277CCA9B8] hk_error:728 format:@"Pipeline canceled."];
    v4[2](v4, 2, v6);
  }

  else
  {
    v7 = [*(v5 + 8) indexOfObject:*(a1 + 40)] + 1;
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543874;
      v27 = v9;
      v28 = 2048;
      v29 = v7;
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Stage %ld: %{public}@: Starting...", buf, 0x20u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__HDCloudSyncPipeline__queue_runStage_taskTree___block_invoke_399;
    v23[3] = &unk_27861F798;
    v23[4] = *(a1 + 32);
    v25 = v7;
    v11 = v4;
    v24 = v11;
    [*(a1 + 40) setOnSuccess:v23];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __48__HDCloudSyncPipeline__queue_runStage_taskTree___block_invoke_401;
    v19 = &unk_27861F7C0;
    v20 = *(a1 + 32);
    v22 = v7;
    v21 = v11;
    [*(a1 + 40) setOnError:&v16];
    [*(a1 + 40) setCloudState:{*(*(a1 + 32) + 48), v16, v17, v18, v19, v20}];
    [*(a1 + 40) start];
    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 176);
    v14 = [v12 progress];
    [v13 addChild:v14 withPendingUnitCount:100];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __48__HDCloudSyncPipeline__queue_runStage_taskTree___block_invoke_399(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[6];
    v11 = 138543874;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Stage %ld: %{public}@: Finished successfully.", &v11, 0x20u);
  }

  v7 = [v3 cloudState];
  v8 = a1[4];
  v9 = *(v8 + 48);
  *(v8 + 48) = v7;

  (*(a1[5] + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

void __48__HDCloudSyncPipeline__queue_runStage_taskTree___block_invoke_401(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [v6 hd_cloudKitRetryDelay];
  if (v7 > 0.0)
  {
    v8 = v7;
    v9 = [*(a1 + 32) repository];
    v10 = [v9 profile];
    v11 = [v10 daemon];
    v12 = [v11 cloudSyncCoordinator];
    [v12 delayNextCloudKitOperation:v8];
  }

  if (![v6 hk_isHealthKitErrorWithCode:701])
  {
    _HKInitializeLogging();
    v19 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 48);
      v28 = 138544130;
      v29 = v20;
      v30 = 2048;
      v31 = v21;
      v32 = 2114;
      v33 = v5;
      v34 = 2114;
      v35 = v6;
      _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: Stage %ld: %{public}@: Finished with error: %{public}@", &v28, 0x2Au);
    }

    *(*(a1 + 32) + 56) = 0;
    v22 = *(a1 + 40);
    [v5 criticalFailureOnError];
    v18 = *(v22 + 16);
    goto LABEL_11;
  }

  v13 = *(*(a1 + 32) + 104);
  _HKInitializeLogging();
  v14 = *MEMORY[0x277CCC328];
  v15 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
  if (v13 == 1)
  {
    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v28 = 138543874;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      v32 = 2114;
      v33 = v5;
      _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Stage %ld: %{public}@: Detected cloud sync disabled but pipeline is configured to continue anyway.", &v28, 0x20u);
    }

    v18 = *(*(a1 + 40) + 16);
LABEL_11:
    v18();
    goto LABEL_15;
  }

  if (v15)
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    v28 = 138543874;
    v29 = v23;
    v30 = 2048;
    v31 = v24;
    v32 = 2114;
    v33 = v5;
    _os_log_impl(&dword_228986000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Stage %ld: %{public}@: Detected cloud sync disabled; disabling locally and failing pipeline.", &v28, 0x20u);
  }

  *(*(a1 + 32) + 56) = 0;
  v25 = *(a1 + 40);
  v26 = [MEMORY[0x277CCA9B8] hk_error:701 format:@"Sync has been disabled for this account."];
  (*(v25 + 16))(v25, 2, v26);

LABEL_15:
  v27 = *MEMORY[0x277D85DE8];
}

void __72__HDCloudSyncPipeline__queue_waitForCloudKitOperationDelayWithTaskTree___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [*(*(a1 + 32) + 128) profile];
  v6 = [v5 daemon];
  v7 = [v6 cloudSyncCoordinator];
  [v7 nextCloudKitOperationDelay];
  v9 = v8;

  if (v9 <= 0.0)
  {
LABEL_5:
    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_11;
  }

  v10 = *(*(a1 + 32) + 105);
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  v12 = os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT);
  if (v10 == 1)
  {
    if (v12)
    {
      v13 = *(a1 + 32);
      *buf = 138543618;
      v32 = v13;
      v33 = 2048;
      v34 = v9;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring %0.2lfs CloudKit operation delay because this pipeline has ignoreCloudKitOperationDelay=YES", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if (v12)
  {
    v14 = *(a1 + 32);
    *buf = 138543618;
    v32 = v14;
    v33 = 2048;
    v34 = v9;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Waiting %0.2lfs for the CloudKit operation delay before beginning pipeline.", buf, 0x16u);
  }

  v15 = *(a1 + 32);
  v16 = v15[4];
  if (v16)
  {
    dispatch_source_cancel(v16);
    v17 = *(a1 + 32);
    v18 = *(v17 + 32);
    *(v17 + 32) = 0;

    v15 = *(a1 + 32);
  }

  objc_initWeak(buf, v15);
  v19 = _Block_copy(v4);
  v20 = *(a1 + 32);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 144));
  v23 = *(a1 + 32);
  v24 = *(v23 + 32);
  *(v23 + 32) = v22;

  v25 = *(*(a1 + 32) + 32);
  v26 = dispatch_walltime(0, (v9 * 1000000000.0));
  dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
  v27 = *(*(a1 + 32) + 32);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __72__HDCloudSyncPipeline__queue_waitForCloudKitOperationDelayWithTaskTree___block_invoke_406;
  handler[3] = &unk_278616F38;
  objc_copyWeak(&v30, buf);
  dispatch_source_set_event_handler(v27, handler);
  dispatch_resume(*(*(a1 + 32) + 32));
  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
LABEL_11:

  v28 = *MEMORY[0x277D85DE8];
}

void __72__HDCloudSyncPipeline__queue_waitForCloudKitOperationDelayWithTaskTree___block_invoke_406(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    dispatch_assert_queue_V2(WeakRetained[18]);
    v2 = _Block_copy(v8[5]);
    v3 = v8[5];
    v8[5] = 0;

    v4 = v8[4];
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = v8[4];
      v8[4] = 0;
    }

    if (v2)
    {
      _HKInitializeLogging();
      v6 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v10 = v8;
        _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished waiting for CloudKit operation delay.", buf, 0xCu);
      }

      (*(v2 + 2))(v2, 0, 0);
    }

    WeakRetained = v8;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)stages
{
  v2 = [(NSMutableArray *)self->_stages copy];

  return v2;
}

+ (id)retrieveAndResetSyncCounts
{
  os_unfair_lock_lock(&_syncCountLock);
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"HDCloudSyncCountDictionary"];

  if (v3)
  {
    [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];
  }

  else
  {
    [MEMORY[0x277CBEB38] dictionary];
  }
  v4 = ;
  v5 = [v4 valueForKey:@"HDCloudSyncCountOfSuccessfulSyncs"];
  if (!v5)
  {
    [v4 setValue:&unk_283CB2010 forKey:@"HDCloudSyncCountOfSuccessfulSyncs"];
  }

  v6 = [v4 valueForKey:@"HDCloudSyncCountOfTotalSyncs"];
  if (!v6)
  {
    [v4 setValue:&unk_283CB2010 forKey:@"HDCloudSyncCountOfTotalSyncs"];
  }

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v7 setValue:0 forKey:@"HDCloudSyncCountDictionary"];

  os_unfair_lock_unlock(&_syncCountLock);
  v8 = [v4 copy];

  return v8;
}

+ (id)operationGroupForContext:(id)a3 syncCircleIdentifier:(id)a4 assetDownloadStagingManager:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277CBC4F8];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v12 = MEMORY[0x277CCACA8];
  v13 = HDCloudSyncContextPurposeToString([v7 purpose]);
  v14 = [v12 stringWithFormat:@"CloudSync-%@-%@-%zd", v10, v13, objc_msgSend(v7, "reason")];

  [v11 setName:v14];
  [v11 setQuantity:{objc_msgSend(v7, "options")}];
  v15 = 1;
  [v11 setExpectedSendSize:1];
  [v11 setExpectedReceiveSize:1];
  v16 = v7;
  objc_opt_self();
  if (([v16 options] & 0x400) == 0)
  {
    v17 = [v16 reason];
    if (v17 <= 0x21)
    {
      v15 = 0x4FFFFFD2uLL >> v17;
    }

    else
    {
      v15 = 0;
    }
  }

  v18 = [v11 defaultConfiguration];
  [v18 setAllowsCellularAccess:v15 & 1];

  v19 = v16;
  objc_opt_self();
  v20 = [v19 reason];

  if (v20 <= 0x21 && ((1 << v20) & 0x3B000012DLL) != 0)
  {
    v21 = [v11 defaultConfiguration];
    [v21 setQualityOfService:17];
  }

  else
  {
    v21 = HKCreateSerialDispatchQueueWithQOSClass();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__HDCloudSyncPipeline_operationGroupForContext_syncCircleIdentifier_assetDownloadStagingManager___block_invoke;
    block[3] = &unk_2786138F8;
    v29 = v11;
    v30 = 25;
    dispatch_async_and_wait(v21, block);
  }

  v22 = [v19 backgroundTask];

  if (v22)
  {
    v23 = [v11 defaultConfiguration];
    v24 = [v19 backgroundTask];
    v25 = [v24 currentTask];
    [v23 setSystemTask:v25];
  }

  if (v8)
  {
    v26 = [v11 defaultConfiguration];
    [v26 setAssetDownloadStagingManager:v8];
  }

  return v11;
}

void __97__HDCloudSyncPipeline_operationGroupForContext_syncCircleIdentifier_assetDownloadStagingManager___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) defaultConfiguration];
  [v2 setQualityOfService:v1];
}

@end