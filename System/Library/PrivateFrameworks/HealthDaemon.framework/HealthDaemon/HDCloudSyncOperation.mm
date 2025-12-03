@interface HDCloudSyncOperation
+ (id)unitTest_operationHandler;
+ (void)unitTest_clearAllOperationHandlers;
+ (void)unitTest_setOperationHandler:(id)handler;
- (BOOL)finishWithSuccess:(BOOL)success error:(id)error;
- (HDCloudSyncOperation)init;
- (HDCloudSyncOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncOperation)initWithPreceedingOperation:(id)operation transitionHandler:(id)handler;
- (HDCloudSyncOperation)operationWithRunCondition:(id)condition;
- (HDProfile)profile;
- (NSString)description;
- (id)analyticsDictionary;
- (id)asPipelineStage;
- (id)onError;
- (id)onSuccess;
- (id)operationIgnoringErrors;
- (id)operationsOfType:(Class)type;
- (void)chainFromOperation:(id)operation transitionHandler:(id)handler;
- (void)delegateToOperation:(id)operation;
- (void)main;
- (void)setOnError:(id)error;
- (void)setOnSuccess:(id)success;
- (void)skip;
- (void)start;
- (void)updateCompletedProgressCount:(int64_t)count;
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

- (HDCloudSyncOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  configurationCopy = configuration;
  stateCopy = state;
  v31.receiver = self;
  v31.super_class = HDCloudSyncOperation;
  v9 = [(HDCloudSyncOperation *)&v31 init];
  if (v9)
  {
    repository = [configurationCopy repository];
    profile = [repository profile];
    legacyRepositoryProfile = [profile legacyRepositoryProfile];
    objc_storeWeak(&v9->_profile, legacyRepositoryProfile);

    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v9->_cloudState, state);
    v13 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(objc_opt_class(), "progressCount")}];
    progress = v9->_progress;
    v9->_progress = v13;

    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v9->_identifier;
    v9->_identifier = uUID;

    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    shortSyncIdentifier = [(HDCloudSyncOperationConfiguration *)v9->_configuration shortSyncIdentifier];
    uUIDString = [(NSUUID *)v9->_identifier UUIDString];
    v19 = [uUIDString substringToIndex:4];
    shortProfileIdentifier = [(HDCloudSyncOperationConfiguration *)v9->_configuration shortProfileIdentifier];
    repository2 = [(HDCloudSyncOperationConfiguration *)v9->_configuration repository];
    [repository2 profileType];
    v22 = HKStringFromProfileType();
    v23 = objc_opt_class();
    NSStringFromClass(v23);
    v24 = configurationCopy;
    v26 = v25 = stateCopy;
    v27 = [v30 initWithFormat:@"[%@:%@] [%@:%@] %@", shortSyncIdentifier, v19, shortProfileIdentifier, v22, v26];
    loggingPrefix = v9->_loggingPrefix;
    v9->_loggingPrefix = v27;

    stateCopy = v25;
    configurationCopy = v24;
  }

  return v9;
}

- (HDCloudSyncOperation)initWithPreceedingOperation:(id)operation transitionHandler:(id)handler
{
  handlerCopy = handler;
  operationCopy = operation;
  configuration = [operationCopy configuration];
  v9 = [(HDCloudSyncOperation *)self initWithConfiguration:configuration cloudState:0];

  [(HDCloudSyncOperation *)v9 chainFromOperation:operationCopy transitionHandler:handlerCopy];
  return v9;
}

- (void)setOnSuccess:(id)success
{
  successCopy = success;
  os_unfair_lock_lock(&self->_lock);
  if (self->_status)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"_status == HDCloudSyncOperationStatusPending"}];
  }

  v5 = [successCopy copy];
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

- (void)setOnError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if (self->_status)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"_status == HDCloudSyncOperationStatusPending"}];
  }

  v5 = [errorCopy copy];
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

- (void)chainFromOperation:(id)operation transitionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HDCloudSyncOperation_chainFromOperation_transitionHandler___block_invoke;
  v11[3] = &unk_278613088;
  v11[4] = self;
  operationCopy = operation;
  [operationCopy setOnError:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HDCloudSyncOperation_chainFromOperation_transitionHandler___block_invoke_2;
  v9[3] = &unk_278615FF8;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [operationCopy setOnSuccess:v9];
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"_onSuccess != nil"}];
  }

  if (!self->_onError)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"_onError != nil"}];
  }

  if (self->_status)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"_status == HDCloudSyncOperationStatusPending"}];
  }

  self->_status = 1;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  configuration = self->_configuration;
  operationTagDependencies = [objc_opt_class() operationTagDependencies];
  v37 = 0;
  v6 = [(HDCloudSyncOperationConfiguration *)configuration satisfiesOperationTagDependencies:operationTagDependencies error:&v37];
  v7 = v37;

  if (v6)
  {
    configuration = [(HDCloudSyncOperation *)self configuration];
    canceled = [configuration canceled];

    if (canceled)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
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

      configuration2 = [(HDCloudSyncOperation *)self configuration];
      context = [configuration2 context];
      backgroundTask = [context backgroundTask];
      shouldDefer = [backgroundTask shouldDefer];

      if (!shouldDefer)
      {
LABEL_31:
        if ([objc_opt_class() shouldLogAtOperationStart])
        {
          _HKInitializeLogging();
          v25 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy3 = self;
            _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting.", buf, 0xCu);
          }
        }

        os_unfair_lock_unlock(&self->_lock);
        if ([objc_opt_class() shouldProduceOperationAnalytics])
        {
          repository = [(HDCloudSyncOperationConfiguration *)self->_configuration repository];
          profile = [repository profile];
          daemon = [profile daemon];
          analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
          [analyticsSubmissionCoordinator cloudSync_operationStarted:self];
        }

        unitTest_operationHandler = [objc_opt_class() unitTest_operationHandler];
        v14 = unitTest_operationHandler;
        if (unitTest_operationHandler)
        {
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __29__HDCloudSyncOperation_start__block_invoke;
          v36[3] = &unk_2786130B0;
          v36[4] = self;
          (*(unitTest_operationHandler + 16))(unitTest_operationHandler, self, v36);
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
        configuration3 = [(HDCloudSyncOperation *)self configuration];
        context2 = [configuration3 context];
        backgroundTask2 = [context2 backgroundTask];
        identifier = [backgroundTask2 identifier];
        *buf = 138543618;
        selfCopy3 = self;
        v40 = 2114;
        v41 = identifier;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"status == HDCloudSyncOperationStatusPending"}];
  }
}

- (void)delegateToOperation:(id)operation
{
  operationCopy = operation;
  if ([(HDCloudSyncOperation *)self status]!= 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"self.status == HDCloudSyncOperationStatusActive"}];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__HDCloudSyncOperation_delegateToOperation___block_invoke;
  v13[3] = &unk_278613060;
  v13[4] = self;
  [operationCopy setOnSuccess:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HDCloudSyncOperation_delegateToOperation___block_invoke_2;
  v12[3] = &unk_278613088;
  v12[4] = self;
  [operationCopy setOnError:v12];
  progress = [operationCopy progress];
  totalUnitCount = [progress totalUnitCount];

  progress2 = [(HDCloudSyncOperation *)self progress];
  [progress2 setTotalUnitCount:{objc_msgSend(progress2, "totalUnitCount") + totalUnitCount}];

  progress3 = [(HDCloudSyncOperation *)self progress];
  progress4 = [operationCopy progress];
  [progress3 addChild:progress4 withPendingUnitCount:totalUnitCount];

  [operationCopy start];
}

uint64_t __44__HDCloudSyncOperation_delegateToOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cloudState];
  [*(a1 + 32) setCloudState:v3];

  v4 = *(a1 + 32);

  return [v4 finishWithSuccess:1 error:0];
}

- (BOOL)finishWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v53 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  status = self->_status;
  if (status == 1)
  {
    v9 = 2;
    if (!successCopy)
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
      completedUnitCount = [(NSProgress *)self->_progress completedUnitCount];
      if (completedUnitCount > [(NSProgress *)self->_progress totalUnitCount])
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:257 description:{@"Invalid parameter not satisfying: %@", @"_progress.completedUnitCount <= _progress.totalUnitCount"}];
      }
    }

    [(NSProgress *)self->_progress setCompletedUnitCount:[(NSProgress *)self->_progress totalUnitCount]];
    os_unfair_lock_unlock(&self->_lock);
    if (successCopy)
    {
      if ([objc_opt_class() shouldLogAtOperationEnd])
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy4 = self;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Finished.", buf, 0xCu);
        }
      }

      if ([objc_opt_class() shouldProduceOperationAnalytics])
      {
        repository = [(HDCloudSyncOperationConfiguration *)self->_configuration repository];
        profile = [repository profile];
        daemon = [profile daemon];
        analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
        [analyticsSubmissionCoordinator cloudSync_operationFinished:self];
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      finishedOperationTags = [objc_opt_class() finishedOperationTags];
      v21 = [finishedOperationTags countByEnumeratingWithState:&v42 objects:v46 count:16];
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
              objc_enumerationMutation(finishedOperationTags);
            }

            [(HDCloudSyncOperationConfiguration *)self->_configuration didFinishOperationTag:*(*(&v42 + 1) + 8 * i)];
          }

          v22 = [finishedOperationTags countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v22);
      }

      v10[2](v10, self);
    }

    else
    {
      if (!errorCopy)
      {
        errorCopy = [MEMORY[0x277CCA9B8] hk_error:2000 format:{@"%@ failed without reporting an error.", self}];
        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          selfCopy4 = self;
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
          selfCopy4 = self;
          v49 = 2114;
          v50 = errorCopy;
          _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed with error: %{public}@.", buf, 0x16u);
        }
      }

      hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics = [errorCopy hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics];
      v29 = hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics;
      if (hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics)
      {
        v30 = hd_errorSurfacingFatalCloudKitPartialFailureForAnalytics;
      }

      else
      {
        v30 = errorCopy;
      }

      v31 = v30;

      repository2 = [(HDCloudSyncOperationConfiguration *)self->_configuration repository];
      profile2 = [repository2 profile];
      daemon2 = [profile2 daemon];
      analyticsSubmissionCoordinator2 = [daemon2 analyticsSubmissionCoordinator];
      [analyticsSubmissionCoordinator2 cloudSync_operationFailed:self error:v31];

      v11[2](v11, self, errorCopy);
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
      selfCopy4 = self;
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
  analyticsDictionary = [(HDCloudSyncOperationConfiguration *)self->_configuration analyticsDictionary];
  v15 = [v13 hk_dictionaryByAddingEntriesFromDictionary:analyticsDictionary];

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

- (void)updateCompletedProgressCount:(int64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  progress = [(HDCloudSyncOperation *)self progress];
  completedUnitCount = [progress completedUnitCount];

  v8 = completedUnitCount + count;
  if (_HDIsUnitTesting)
  {
    if (count < 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:329 description:{@"Invalid parameter not satisfying: %@", @"updated >= current"}];
    }

    progress2 = [(HDCloudSyncOperation *)self progress];
    totalUnitCount = [progress2 totalUnitCount];

    if (v8 > totalUnitCount)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperation.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"updated <= self.progress.totalUnitCount"}];
    }
  }

  progress3 = [(HDCloudSyncOperation *)self progress];
  [progress3 setCompletedUnitCount:v8];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)operationsOfType:(Class)type
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
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&_MergedGlobals_214);
  v6 = _Block_copy(v5);

  return v6;
}

+ (void)unitTest_setOperationHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&_MergedGlobals_214);
  if (!qword_280D67D68)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = qword_280D67D68;
    qword_280D67D68 = v4;
  }

  v6 = [handlerCopy copy];
  v7 = _Block_copy(v6);
  v8 = qword_280D67D68;
  v9 = NSStringFromClass(self);
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
  configuration = [(HDCloudSyncOperation *)self configuration];
  cloudState = [(HDCloudSyncOperation *)self cloudState];
  v6 = [(HDCloudSyncIgnoredErrorsOperation *)v3 initWithConfiguration:configuration cloudState:cloudState operation:self];

  return v6;
}

- (HDCloudSyncOperation)operationWithRunCondition:(id)condition
{
  conditionCopy = condition;
  v5 = [HDCloudSyncConditionalOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  cloudState = [(HDCloudSyncOperation *)self cloudState];
  v8 = [(HDCloudSyncConditionalOperation *)v5 initWithConfiguration:configuration cloudState:cloudState operation:self shouldRunHandler:conditionCopy];

  return v8;
}

@end