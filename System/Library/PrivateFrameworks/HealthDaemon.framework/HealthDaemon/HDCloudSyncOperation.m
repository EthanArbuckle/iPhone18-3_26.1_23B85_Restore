@interface HDCloudSyncOperation
+ (id)unitTest_operationHandler;
+ (void)unitTest_clearAllOperationHandlers;
+ (void)unitTest_setOperationHandler:(id)a3;
- (BOOL)finishWithSuccess:(BOOL)a3 error:(id)a4;
- (HDCloudSyncOperation)init;
- (HDCloudSyncOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (HDCloudSyncOperation)initWithPreceedingOperation:(id)a3 transitionHandler:(id)a4;
- (HDCloudSyncOperation)operationWithRunCondition:(id)a3;
- (HDProfile)profile;
- (NSString)description;
- (id)analyticsDictionary;
- (id)asPipelineStage;
- (id)onError;
- (id)onSuccess;
- (id)operationIgnoringErrors;
- (id)operationsOfType:(Class)a3;
- (void)chainFromOperation:(id)a3 transitionHandler:(id)a4;
- (void)delegateToOperation:(id)a3;
- (void)main;
- (void)setOnError:(id)a3;
- (void)setOnSuccess:(id)a3;
- (void)skip;
- (void)start;
- (void)updateCompletedProgressCount:(int64_t)a3;
@end

@implementation HDCloudSyncOperation

- (id)asPipelineStage
{
  v2 = [[HDCloudSyncOperationPipelineStage alloc] initWithOperation:self];

  return v2;
}

- (HDCloudSyncOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v7 = a3;
  v8 = a4;
  v31.receiver = self;
  v31.super_class = HDCloudSyncOperation;
  v9 = [(HDCloudSyncOperation *)&v31 init];
  if (v9)
  {
    v10 = [v7 repository];
    v11 = [v10 profile];
    v12 = [v11 legacyRepositoryProfile];
    objc_storeWeak(&v9->_profile, v12);

    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v9->_cloudState, a4);
    v13 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(objc_opt_class(), "progressCount")}];
    progress = v9->_progress;
    v9->_progress = v13;

    v15 = [MEMORY[0x277CCAD78] UUID];
    identifier = v9->_identifier;
    v9->_identifier = v15;

    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = [(HDCloudSyncOperationConfiguration *)v9->_configuration shortSyncIdentifier];
    v18 = [(NSUUID *)v9->_identifier UUIDString];
    v19 = [v18 substringToIndex:4];
    v20 = [(HDCloudSyncOperationConfiguration *)v9->_configuration shortProfileIdentifier];
    v21 = [(HDCloudSyncOperationConfiguration *)v9->_configuration repository];
    [v21 profileType];
    v22 = HKStringFromProfileType();
    v23 = objc_opt_class();
    NSStringFromClass(v23);
    v24 = v7;
    v26 = v25 = v8;
    v27 = [v30 initWithFormat:@"[%@:%@] [%@:%@] %@", v17, v19, v20, v22, v26];
    loggingPrefix = v9->_loggingPrefix;
    v9->_loggingPrefix = v27;

    v8 = v25;
    v7 = v24;
  }

  return v9;
}

- (HDCloudSyncOperation)initWithPreceedingOperation:(id)a3 transitionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 configuration];
  v9 = [(HDCloudSyncOperation *)self initWithConfiguration:v8 cloudState:0];

  [(HDCloudSyncOperation *)v9 chainFromOperation:v7 transitionHandler:v6];
  return v9;
}

- (void)setOnSuccess:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_status)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"_status == HDCloudSyncOperationStatusPending"}];
  }

  v5 = [v8 copy];
  onSuccess = self->_onSuccess;
  self->_onSuccess = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)onSuccess
{
  os_unfair_lock_lock(&self->_lock);
  v3 = _Block_copy(self->_onSuccess);
  os_unfair_lock_unlock(&self->_lock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setOnError:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_status)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"_status == HDCloudSyncOperationStatusPending"}];
  }

  v5 = [v8 copy];
  onError = self->_onError;
  self->_onError = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)onError
{
  os_unfair_lock_lock(&self->_lock);
  v3 = _Block_copy(self->_onError);
  os_unfair_lock_unlock(&self->_lock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)chainFromOperation:(id)a3 transitionHandler:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HDCloudSyncOperation_chainFromOperation_transitionHandler___block_invoke;
  v11[3] = &unk_278613088;
  v11[4] = self;
  v7 = a3;
  [v7 setOnError:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HDCloudSyncOperation_chainFromOperation_transitionHandler___block_invoke_2;
  v9[3] = &unk_278615FF8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 setOnSuccess:v9];
}

void __61__HDCloudSyncOperation_chainFromOperation_transitionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 onError];
  v7[2](v7, v6, v5);
}

void __61__HDCloudSyncOperation_chainFromOperation_transitionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 cloudState];
  [*(a1 + 32) setCloudState:v3];

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5, *(a1 + 32));
  }

  [*(a1 + 32) start];
}

- (void)start
{
  v42 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_onSuccess)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"_onSuccess != nil"}];
  }

  if (!self->_onError)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"_onError != nil"}];
  }

  if (self->_status)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"_status == HDCloudSyncOperationStatusPending"}];
  }

  self->_status = 1;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  configuration = self->_configuration;
  v5 = [objc_opt_class() operationTagDependencies];
  v37 = 0;
  v6 = [(HDCloudSyncOperationConfiguration *)configuration satisfiesOperationTagDependencies:v5 error:&v37];
  v7 = v37;

  if (v6)
  {
    v8 = [(HDCloudSyncOperation *)self configuration];
    v9 = [v8 canceled];

    if (v9)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v39 = self;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Operation cancellation requested.", buf, 0xCu);
      }

      os_unfair_lock_unlock(&self->_lock);
      v11 = MEMORY[0x277CCA9B8];
      v12 = @"Operation cancellation requested.";
      v13 = 728;
    }

    else
    {
      if (![objc_opt_class() shouldFailOnXPCActivityDeferral])
      {
        goto LABEL_31;
      }

      v15 = [(HDCloudSyncOperation *)self configuration];
      v16 = [v15 context];
      v17 = [v16 backgroundTask];
      v18 = [v17 shouldDefer];

      if (!v18)
      {
LABEL_31:
        if ([objc_opt_class() shouldLogAtOperationStart])
        {
          _HKInitializeLogging();
          v25 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v39 = self;
            _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting.", buf, 0xCu);
          }
        }

        os_unfair_lock_unlock(&self->_lock);
        if ([objc_opt_class() shouldProduceOperationAnalytics])
        {
          v26 = [(HDCloudSyncOperationConfiguration *)self->_configuration repository];
          v27 = [v26 profile];
          v28 = [v27 daemon];
          v29 = [v28 analyticsSubmissionCoordinator];
          [v29 cloudSync_operationStarted:self];
        }

        v30 = [objc_opt_class() unitTest_operationHandler];
        v14 = v30;
        if (v30)
        {
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __29__HDCloudSyncOperation_start__block_invoke;
          v36[3] = &unk_2786130B0;
          v36[4] = self;
          (*(v30 + 16))(v30, self, v36);
        }

        else
        {
          v31 = objc_autoreleasePoolPush();
          [(HDCloudSyncOperation *)self main];
          objc_autoreleasePoolPop(v31);
        }

        goto LABEL_27;
      }

      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [(HDCloudSyncOperation *)self configuration];
        v22 = [v21 context];
        v23 = [v22 backgroundTask];
        v24 = [v23 identifier];
        *buf = 138543618;
        v39 = self;
        v40 = 2114;
        v41 = v24;
        _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: Operation deferral requested for activity %{public}@.", buf, 0x16u);
      }

      os_unfair_lock_unlock(&self->_lock);
      v11 = MEMORY[0x277CCA9B8];
      v12 = @"Operation activity deferred.";
      v13 = 708;
    }

    v14 = [v11 hk_error:v13 format:v12];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v14];
LABEL_27:

    goto LABEL_28;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v7];
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)skip
{
  os_unfair_lock_lock(&self->_lock);
  status = self->_status;
  onSuccess = self->_onSuccess;
  self->_onSuccess = 0;

  onError = self->_onError;
  self->_onError = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (status)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"status == HDCloudSyncOperationStatusPending"}];
  }
}

- (void)delegateToOperation:(id)a3
{
  v5 = a3;
  if ([(HDCloudSyncOperation *)self status]!= 1)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusActive"}];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__HDCloudSyncOperation_delegateToOperation___block_invoke;
  v13[3] = &unk_278613060;
  v13[4] = self;
  [v5 setOnSuccess:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HDCloudSyncOperation_delegateToOperation___block_invoke_2;
  v12[3] = &unk_278613088;
  v12[4] = self;
  [v5 setOnError:v12];
  v6 = [v5 progress];
  v7 = [v6 totalUnitCount];

  v8 = [(HDCloudSyncOperation *)self progress];
  [v8 setTotalUnitCount:{objc_msgSend(v8, "totalUnitCount") + v7}];

  v9 = [(HDCloudSyncOperation *)self progress];
  v10 = [v5 progress];
  [v9 addChild:v10 withPendingUnitCount:v7];

  [v5 start];
}

uint64_t __44__HDCloudSyncOperation_delegateToOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cloudState];
  [*(a1 + 32) setCloudState:v3];

  v4 = *(a1 + 32);

  return [v4 finishWithSuccess:1 error:0];
}

- (BOOL)finishWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  status = self->_status;
  if (status == 1)
  {
    v9 = 2;
    if (!v4)
    {
      v9 = 3;
    }

    self->_status = v9;
    v10 = _Block_copy(self->_onSuccess);
    v11 = _Block_copy(self->_onError);
    onSuccess = self->_onSuccess;
    self->_onSuccess = 0;

    onError = self->_onError;
    self->_onError = 0;

    self->_endTime = CFAbsoluteTimeGetCurrent();
    if (_HDIsUnitTesting)
    {
      v14 = [(NSProgress *)self->_progress completedUnitCount];
      if (v14 > [(NSProgress *)self->_progress totalUnitCount])
      {
        v41 = [MEMORY[0x277CCA890] currentHandler];
        [v41 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"_progress.completedUnitCount <= _progress.totalUnitCount"}];
      }
    }

    [(NSProgress *)self->_progress setCompletedUnitCount:[(NSProgress *)self->_progress totalUnitCount]];
    os_unfair_lock_unlock(&self->_lock);
    if (v4)
    {
      if ([objc_opt_class() shouldLogAtOperationEnd])
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v48 = self;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished.", buf, 0xCu);
        }
      }

      if ([objc_opt_class() shouldProduceOperationAnalytics])
      {
        v16 = [(HDCloudSyncOperationConfiguration *)self->_configuration repository];
        v17 = [v16 profile];
        v18 = [v17 daemon];
        v19 = [v18 analyticsSubmissionCoordinator];
        [v19 cloudSync_operationFinished:self];
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v20 = [objc_opt_class() finishedOperationTags];
      v21 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v43;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v43 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(HDCloudSyncOperationConfiguration *)self->_configuration didFinishOperationTag:*(*(&v42 + 1) + 8 * i)];
          }

          v22 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v22);
      }

      v10[2](v10, self);
    }

    else
    {
      if (!v7)
      {
        v7 = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"%@ failed without reporting an error.", self}];
        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v48 = self;
          _os_log_fault_impl(&dword_228986000, v26, OS_LOG_TYPE_FAULT, "%{public}@: Failed but did not provide an error.", buf, 0xCu);
        }
      }

      if ([objc_opt_class() shouldLogAtOperationEnd])
      {
        _HKInitializeLogging();
        v27 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v48 = self;
          v49 = 2114;
          v50 = v7;
          _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed with error: %{public}@.", buf, 0x16u);
        }
      }

      v28 = [v7 hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics];
      v29 = v28;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = v7;
      }

      v31 = v30;

      v32 = [(HDCloudSyncOperationConfiguration *)self->_configuration repository];
      v33 = [v32 profile];
      v34 = [v33 daemon];
      v35 = [v34 analyticsSubmissionCoordinator];
      [v35 cloudSync_operationFailed:self error:v31];

      v11[2](v11, self, v7);
    }
  }

  else
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v38 = v25;
      v39 = NSStringFromSelector(a2);
      v40 = HDCloudSyncOperationStatusToString(self->_status);
      *buf = 138543874;
      v48 = self;
      v49 = 2114;
      v50 = v39;
      v51 = 2114;
      v52 = v40;
      _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ called in unexpected state %{public}@", buf, 0x20u);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v36 = *MEMORY[0x277D85DE8];
  return status == 1;
}

- (id)analyticsDictionary
{
  v19[5] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v18[0] = @"operationClass";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v19[0] = v4;
  v18[1] = @"status";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  v19[1] = v5;
  v18[2] = @"startTime";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startTime];
  v19[2] = v6;
  v18[3] = @"endTime";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endTime];
  v19[3] = v7;
  v18[4] = @"duration";
  v8 = MEMORY[0x277CCABB0];
  os_unfair_lock_assert_owner(&self->_lock);
  status = self->_status;
  if ((status - 2) >= 2)
  {
    v11 = 0.0;
    if (status != 1)
    {
      goto LABEL_6;
    }

    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    Current = self->_endTime;
  }

  v11 = Current - self->_startTime;
LABEL_6:
  v12 = [v8 numberWithDouble:v11];
  v19[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v14 = [(HDCloudSyncOperationConfiguration *)self->_configuration analyticsDictionary];
  v15 = [v13 hk_dictionaryByAddingEntriesFromDictionary:v14];

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  loggingPrefix = self->_loggingPrefix;
  v4 = HDCloudSyncOperationStatusToString(self->_status);
  v5 = [v2 stringWithFormat:@"<%@ %@>", loggingPrefix, v4];

  return v5;
}

- (void)updateCompletedProgressCount:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v6 = [(HDCloudSyncOperation *)self progress];
  v7 = [v6 completedUnitCount];

  v8 = v7 + a3;
  if (_HDIsUnitTesting)
  {
    if (a3 < 0)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:329 description:{@"Invalid parameter not satisfying: %@", @"updated >= current"}];
    }

    v9 = [(HDCloudSyncOperation *)self progress];
    v10 = [v9 totalUnitCount];

    if (v8 > v10)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"updated <= self.progress.totalUnitCount"}];
    }
  }

  v11 = [(HDCloudSyncOperation *)self progress];
  [v11 setCompletedUnitCount:v8];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)operationsOfType:(Class)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_isKindOfClass())
  {
    v7[0] = self;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)unitTest_operationHandler
{
  os_unfair_lock_lock(&_MergedGlobals_214);
  v3 = qword_280D67D68;
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&_MergedGlobals_214);
  v6 = _Block_copy(v5);

  return v6;
}

+ (void)unitTest_setOperationHandler:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock(&_MergedGlobals_214);
  if (!qword_280D67D68)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = qword_280D67D68;
    qword_280D67D68 = v4;
  }

  v6 = [v10 copy];
  v7 = _Block_copy(v6);
  v8 = qword_280D67D68;
  v9 = NSStringFromClass(a1);
  [v8 setObject:v7 forKeyedSubscript:v9];

  os_unfair_lock_unlock(&_MergedGlobals_214);
}

+ (void)unitTest_clearAllOperationHandlers
{
  os_unfair_lock_lock(&_MergedGlobals_214);
  v2 = qword_280D67D68;
  qword_280D67D68 = 0;

  os_unfair_lock_unlock(&_MergedGlobals_214);
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (id)operationIgnoringErrors
{
  v3 = [HDCloudSyncIgnoredErrorsOperation alloc];
  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncIgnoredErrorsOperation *)v3 initWithConfiguration:v4 cloudState:v5 operation:self];

  return v6;
}

- (HDCloudSyncOperation)operationWithRunCondition:(id)a3
{
  v4 = a3;
  v5 = [HDCloudSyncConditionalOperation alloc];
  v6 = [(HDCloudSyncOperation *)self configuration];
  v7 = [(HDCloudSyncOperation *)self cloudState];
  v8 = [(HDCloudSyncConditionalOperation *)v5 initWithConfiguration:v6 cloudState:v7 operation:self shouldRunHandler:v4];

  return v8;
}

@end