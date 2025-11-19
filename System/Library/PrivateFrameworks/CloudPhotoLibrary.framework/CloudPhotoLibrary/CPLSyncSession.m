@interface CPLSyncSession
+ (id)detachedSyncSessionWithScheduler:(id)a3 configuration:(id)a4 scopeFilter:(id)a5;
+ (void)setScopeIdentifierToAutomaticallyExcludeFromMingling:(id)a3;
- (BOOL)isAfterDate:(id)a3;
- (BOOL)isBeforeDate:(id)a3;
- (BOOL)isInLessThanTimeInterval:(double)a3;
- (BOOL)isInMoreThanTimeInverval:(double)a3;
- (BOOL)isJustInCaseSession;
- (BOOL)needsToAcquireRescheduler;
- (BOOL)shouldBeDiscretionary;
- (BOOL)shouldBeTemporarilyNonDiscretionary;
- (BOOL)shouldConsiderRequestingMoreTime;
- (BOOL)shouldDefer;
- (CPLBackgroundActivity)detachedActivity;
- (CPLEngineScheduler)scheduler;
- (CPLSyncSession)initWithSequenceNumber:(unint64_t)a3 expectedDate:(id)a4 scheduler:(id)a5 configuration:(id)a6 scopeFilter:(id)a7;
- (CPLSyncSessionRescheduler)rescheduler;
- (CPLSyncSessionRuntimeCharacteristics)runtimeCharacteristics;
- (NSArray)currentSessionInformation;
- (NSSet)scopeIdentifiersExcludedFromMingling;
- (NSString)description;
- (NSString)whenItWillStartDescription;
- (double)estimatedRemainingTime;
- (id)addDeferHandler:(id)a3;
- (id)makeThroughputReporterForCategory:(id)a3;
- (id)popSessionInformation;
- (int64_t)activityState;
- (unint64_t)currentState;
- (void)_unwatchPredictor;
- (void)_updatePrediction:(id)a3;
- (void)_watchOrUnwatchPredictorIfNecessary;
- (void)_watchPredictor;
- (void)deferWithBlock:(id)a3;
- (void)dropExpectedDate;
- (void)engineIsClosing;
- (void)excludeScopeIdentifierFromMingling:(id)a3;
- (void)excludeScopeIdentifierFromPushToTransport:(id)a3;
- (void)includeScopeIdentifierInMingling:(id)a3;
- (void)includeScopeIdentifierInPushToTransport:(id)a3;
- (void)noteClientNeedsToPullIfNecessary;
- (void)noteSyncSessionInformation:(id)a3 arguments:(char *)a4;
- (void)noteSyncSessionMovedToState:(unint64_t)a3;
- (void)predictor:(id)a3 changedPrediction:(id)a4;
- (void)removeDeferHandler:(id)a3;
- (void)requestSyncStateAtEndOfSyncSession:(unint64_t)a3 reschedule:(BOOL)a4 proposedRescheduleDate:(id)a5;
- (void)resetNoteClientNeedsToPull;
- (void)sessionIsDone;
- (void)sessionWillStart;
- (void)sessionWontHappen;
- (void)setDetachedActivity:(id)a3;
- (void)setIsJustInCaseSession:(BOOL)a3;
- (void)setRescheduler:(id)a3;
- (void)setupWithConfiguration:(id)a3;
- (void)throughputReporter:(id)a3 addedItemCount:(unint64_t)a4;
- (void)throughputReporterDidFinish:(id)a3;
@end

@implementation CPLSyncSession

- (NSString)description
{
  sequenceNumber = self->_sequenceNumber;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (sequenceNumber == -1)
  {
    descriptionSuffix = self->_descriptionSuffix;
    if (!descriptionSuffix)
    {
      descriptionSuffix = &stru_1F57BD298;
    }

    v9 = [v4 initWithFormat:@"[detached session%@]", descriptionSuffix, v12, v13];
  }

  else
  {
    v5 = self->_sequenceNumber;
    if (self->_descriptionSuffix)
    {
      v6 = self->_descriptionSuffix;
    }

    else
    {
      v6 = &stru_1F57BD298;
    }

    v7 = [(CPLSyncSession *)self isJustInCaseSession];
    v8 = @" (just-in-case)";
    if (!v7)
    {
      v8 = &stru_1F57BD298;
    }

    v9 = [v4 initWithFormat:@"[session #%lu%@%@]", v5, v6, v8];
  }

  return v9;
}

- (BOOL)isJustInCaseSession
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __37__CPLSyncSession_isJustInCaseSession__block_invoke;
  v7 = &unk_1E861A850;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&v2->_lock);
  v6(v3);
  os_unfair_lock_unlock(&v2->_lock);

  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
}

- (BOOL)shouldDefer
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1181;
  v17 = __Block_byref_object_dispose__1182;
  v18 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __29__CPLSyncSession_shouldDefer__block_invoke;
  v9 = &unk_1E8620288;
  v10 = self;
  v11 = &v19;
  v12 = &v13;
  v3 = v7;
  os_unfair_lock_lock(&self->_lock);
  v8(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v14[5];
  if (v4)
  {
    v5 = [v4 shouldDefer];
  }

  else
  {
    v5 = *(v20 + 24);
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v5 & 1;
}

void __29__CPLSyncSession_shouldDefer__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 80);
  if (v3)
  {
    *(*(a1[5] + 8) + 24) = [v3 shouldDefer];
  }

  else
  {
    v4 = *(v2 + 72);
    if (v4)
    {
      v5 = (*(a1[6] + 8) + 40);

      objc_storeStrong(v5, v4);
    }

    else
    {
      *(*(a1[5] + 8) + 24) = 0;
    }
  }
}

- (BOOL)needsToAcquireRescheduler
{
  if ([(CPLSyncSession *)self isDetached]|| ([(CPLSyncSession *)self detachedActivity], v3 = objc_claimAutoreleasedReturnValue(), v3, v3) || ![(CPLSyncSession *)self shouldBeDiscretionary])
  {
    v5 = 0;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v8 = __43__CPLSyncSession_needsToAcquireRescheduler__block_invoke;
    v9 = &unk_1E861A850;
    v10 = self;
    v11 = &v12;
    v4 = v7;
    os_unfair_lock_lock(&self->_lock);
    v8(v4);
    os_unfair_lock_unlock(&self->_lock);

    v5 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v5 & 1;
}

- (CPLBackgroundActivity)detachedActivity
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1181;
  v15 = __Block_byref_object_dispose__1182;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __34__CPLSyncSession_detachedActivity__block_invoke;
  v8 = &unk_1E861A850;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (BOOL)shouldBeDiscretionary
{
  v3 = [(CPLSyncSession *)self rescheduler];

  if (v3)
  {
    return 1;
  }

  if ([(CPLSyncSession *)self isDetached])
  {
    return 0;
  }

  return ![(CPLSyncSession *)self shouldBeTemporarilyNonDiscretionary];
}

- (CPLSyncSessionRescheduler)rescheduler
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1181;
  v15 = __Block_byref_object_dispose__1182;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __29__CPLSyncSession_rescheduler__block_invoke;
  v8 = &unk_1E861A850;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (BOOL)shouldBeTemporarilyNonDiscretionary
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __53__CPLSyncSession_shouldBeTemporarilyNonDiscretionary__block_invoke;
  v7 = &unk_1E861A850;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&v2->_lock);
  v6(v3);
  os_unfair_lock_unlock(&v2->_lock);

  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
}

- (CPLEngineScheduler)scheduler
{
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);

  return WeakRetained;
}

- (void)throughputReporterDidFinish:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1181;
  v17 = __Block_byref_object_dispose__1182;
  v18 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __46__CPLSyncSession_throughputReporterDidFinish___block_invoke;
  v10 = &unk_1E861A850;
  v11 = self;
  v12 = &v13;
  v5 = v8;
  os_unfair_lock_lock(&self->_lock);
  v9(v5);
  os_unfair_lock_unlock(&self->_lock);

  v6 = v14[5];
  v7 = [v4 metrics];
  [v6 reportThroughputWorkForMetrics:v7 itemCount:0 done:1];

  _Block_object_dispose(&v13, 8);
}

void __46__CPLSyncSession_throughputReporterDidFinish___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4 = v3;
  if (!v3)
  {
    v4 = [*(v2 + 72) currentActivity];
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (!v3)
  {
  }
}

- (void)throughputReporter:(id)a3 addedItemCount:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1181;
  v19 = __Block_byref_object_dispose__1182;
  v20 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __52__CPLSyncSession_throughputReporter_addedItemCount___block_invoke;
  v12 = &unk_1E861A850;
  v13 = self;
  v14 = &v15;
  v7 = v10;
  os_unfair_lock_lock(&self->_lock);
  v11(v7);
  os_unfair_lock_unlock(&self->_lock);

  v8 = v16[5];
  v9 = [v6 metrics];
  [v8 reportThroughputWorkForMetrics:v9 itemCount:a4 done:0];

  _Block_object_dispose(&v15, 8);
}

void __52__CPLSyncSession_throughputReporter_addedItemCount___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4 = v3;
  if (!v3)
  {
    v4 = [*(v2 + 72) currentActivity];
  }

  v5 = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (!v3)
  {
  }
}

- (id)makeThroughputReporterForCategory:(id)a3
{
  v4 = a3;
  v5 = [[CPLSyncThroughputReporter alloc] initWithCategory:v4 parentReport:0];

  [(CPLSyncThroughputReporter *)v5 setDelegate:self];

  return v5;
}

- (NSArray)currentSessionInformation
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1181;
  v15 = __Block_byref_object_dispose__1182;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __43__CPLSyncSession_currentSessionInformation__block_invoke;
  v8 = &unk_1E861A850;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

uint64_t __43__CPLSyncSession_currentSessionInformation__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (id)popSessionInformation
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1181;
  v15 = __Block_byref_object_dispose__1182;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __39__CPLSyncSession_popSessionInformation__block_invoke;
  v8 = &unk_1E861A850;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

void __39__CPLSyncSession_popSessionInformation__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (unint64_t)currentState
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __30__CPLSyncSession_currentState__block_invoke;
  v8 = &unk_1E861A850;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)noteSyncSessionMovedToState:(unint64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = [(CPLSyncSession *)self isJustInCaseSession];
  if (a3 < 5 && v5)
  {
    v7 = 0x17u >> a3;
  }

  else
  {
    v7 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v14 = __46__CPLSyncSession_noteSyncSessionMovedToState___block_invoke;
  v15 = &unk_1E861BB28;
  v19 = v7 & 1;
  v16 = self;
  v17 = &v20;
  v18 = a3;
  v8 = v13;
  os_unfair_lock_lock(&self->_lock);
  v14(v8);
  os_unfair_lock_unlock(&self->_lock);

  if (*(v21 + 24) == 1)
  {
    if (v7)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLSchedulerOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [CPLEngineSyncManager shortDescriptionForState:a3];
          *buf = 138412546;
          v25 = self;
          v26 = 2112;
          v27 = v10;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Temporarily running %@ non-discretionary for %@", buf, 0x16u);
        }

LABEL_15:
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLSchedulerOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [CPLEngineSyncManager shortDescriptionForState:a3];
        *buf = 138412546;
        v25 = self;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_DEFAULT, "Reverting %@ to discretionary for %@", buf, 0x16u);
      }

      goto LABEL_15;
    }
  }

  _Block_object_dispose(&v20, 8);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __46__CPLSyncSession_noteSyncSessionMovedToState___block_invoke(uint64_t result)
{
  *(*(result + 32) + 96) = *(result + 48);
  if (*(result + 56) != *(*(result + 32) + 56))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 56) = *(result + 56);
  }

  return result;
}

- (void)noteSyncSessionInformation:(id)a3 arguments:(char *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v6 arguments:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __55__CPLSyncSession_noteSyncSessionInformation_arguments___block_invoke;
  v12 = &unk_1E861B290;
  v13 = self;
  v8 = v7;
  v14 = v8;
  v9 = v10;
  os_unfair_lock_lock(&self->_lock);
  v11(v9);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __55__CPLSyncSession_noteSyncSessionInformation_arguments___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)predictor:(id)a3 changedPrediction:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLSchedulerOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = self;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Updating prediction for %@ to %{public}@", buf, 0x16u);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __46__CPLSyncSession_predictor_changedPrediction___block_invoke;
  v14 = &unk_1E861B290;
  v15 = self;
  v9 = v7;
  v16 = v9;
  v10 = v12;
  os_unfair_lock_lock(&self->_lock);
  v13(v10);
  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x1E69E9840];
}

- (NSSet)scopeIdentifiersExcludedFromMingling
{
  scopeIdentifiersExcludedFromMingling = self->_scopeIdentifiersExcludedFromMingling;
  if (_scopeIdentifierToAutomaticallyExcludeFromMingling)
  {
    if (scopeIdentifiersExcludedFromMingling)
    {
      v3 = [(NSMutableSet *)scopeIdentifiersExcludedFromMingling setByAddingObject:?];
    }

    else
    {
      v4 = objc_alloc(MEMORY[0x1E695DFD8]);
      v3 = [v4 initWithObjects:{_scopeIdentifierToAutomaticallyExcludeFromMingling, 0}];
    }
  }

  else
  {
    v3 = scopeIdentifiersExcludedFromMingling;
  }

  return v3;
}

- (void)excludeScopeIdentifierFromMingling:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSMutableSet *)self->_scopeIdentifiersExcludedFromMingling containsObject:v4]& 1) == 0)
  {
    if (!self->_scopeIdentifiersExcludedFromMingling)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      scopeIdentifiersExcludedFromMingling = self->_scopeIdentifiersExcludedFromMingling;
      self->_scopeIdentifiersExcludedFromMingling = v5;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLSchedulerOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = self;
        v11 = 2114;
        v12 = v4;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "%@ will exclude %{public}@ from mingling", &v9, 0x16u);
      }
    }

    [(NSMutableSet *)self->_scopeIdentifiersExcludedFromMingling addObject:v4];
  }

  [(CPLSyncSession *)self requestSyncStateAtEndOfSyncSession:4 reschedule:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)includeScopeIdentifierInMingling:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableSet *)self->_scopeIdentifiersExcludedFromMingling containsObject:v4])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLSchedulerOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = self;
        v9 = 2114;
        v10 = v4;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "%@ will finally include %{public}@ in mingling", &v7, 0x16u);
      }
    }

    [(NSMutableSet *)self->_scopeIdentifiersExcludedFromMingling removeObject:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)excludeScopeIdentifierFromPushToTransport:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(NSMutableSet *)self->_scopeIdentifiersExcludedFromPushToTransport containsObject:v4]& 1) == 0)
  {
    if (!self->_scopeIdentifiersExcludedFromPushToTransport)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      scopeIdentifiersExcludedFromPushToTransport = self->_scopeIdentifiersExcludedFromPushToTransport;
      self->_scopeIdentifiersExcludedFromPushToTransport = v5;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLSchedulerOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = self;
        v11 = 2114;
        v12 = v4;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "%@ will exclude %{public}@ from push-to-transport", &v9, 0x16u);
      }
    }

    [(NSMutableSet *)self->_scopeIdentifiersExcludedFromPushToTransport addObject:v4];
  }

  [(CPLSyncSession *)self excludeScopeIdentifierFromMingling:v4];
  [(CPLSyncSession *)self requestSyncStateAtEndOfSyncSession:4 reschedule:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)includeScopeIdentifierInPushToTransport:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableSet *)self->_scopeIdentifiersExcludedFromPushToTransport containsObject:v4])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = __CPLSchedulerOSLogDomain();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = self;
        v9 = 2114;
        v10 = v4;
        _os_log_impl(&dword_1DC05A000, v5, OS_LOG_TYPE_DEFAULT, "%@ will finally include %{public}@ in push-to-transport", &v7, 0x16u);
      }
    }

    [(NSMutableSet *)self->_scopeIdentifiersExcludedFromPushToTransport removeObject:v4];
  }

  [(CPLSyncSession *)self includeScopeIdentifierInMingling:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setupWithConfiguration:(id)a3
{
  v4 = a3;
  self->_allowsLocalConflictResolutionWhenOverQuota = [v4 allowsLocalConflictResolutionWhenOverQuota];
  self->_allowsLocalConflictResolution = [v4 allowsLocalConflictResolution];
  self->_maximumComputeStatesToUploadPerBatch = [v4 maximumComputeStatesToUploadPerBatch];
  self->_isComputeStateTaskUploadEnabled = [v4 isComputeStateTaskUploadEnabled];
  v5 = [v4 shouldCheckEPPCapability];

  self->_shouldCheckEPPCapability = v5;
}

- (double)estimatedRemainingTime
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x40AC200000000000;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __40__CPLSyncSession_estimatedRemainingTime__block_invoke;
  v8 = &unk_1E861F818;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v4;
}

double __40__CPLSyncSession_estimatedRemainingTime__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    [v2 estimatedRemainingTime];
    *(*(*(a1 + 40) + 8) + 24) = v3;
    v4 = *(*(a1 + 40) + 8);
    result = fmax(fmin(*(v4 + 24), 3600.0), 10.0);
    *(v4 + 24) = result;
  }

  return result;
}

- (void)removeDeferHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__1181;
    v15 = __Block_byref_object_dispose__1182;
    v16 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v7 = __37__CPLSyncSession_removeDeferHandler___block_invoke;
    v8 = &unk_1E861A850;
    v9 = self;
    v10 = &v11;
    v5 = v6;
    os_unfair_lock_lock(&self->_lock);
    v7(v5);
    os_unfair_lock_unlock(&self->_lock);

    [v12[5] removeDeferHandler:v4];
    _Block_object_dispose(&v11, 8);
  }
}

void __37__CPLSyncSession_removeDeferHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) currentActivity];
  v3 = v2;
  if (!v2)
  {
    v2 = *(*(a1 + 32) + 80);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (id)addDeferHandler:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1181;
  v17 = __Block_byref_object_dispose__1182;
  v18 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __34__CPLSyncSession_addDeferHandler___block_invoke;
  v10 = &unk_1E861A850;
  v11 = self;
  v12 = &v13;
  v5 = v8;
  os_unfair_lock_lock(&self->_lock);
  v9(v5);
  os_unfair_lock_unlock(&self->_lock);

  v6 = [v14[5] addDeferHandler:v4];
  _Block_object_dispose(&v13, 8);

  return v6;
}

void __34__CPLSyncSession_addDeferHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) currentActivity];
  v3 = v2;
  if (!v2)
  {
    v2 = *(*(a1 + 32) + 80);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (BOOL)shouldConsiderRequestingMoreTime
{
  if (self->_shouldHaveRequestedMoreTime)
  {
    v2 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v7 = __50__CPLSyncSession_shouldConsiderRequestingMoreTime__block_invoke;
    v8 = &unk_1E861F818;
    v9 = self;
    v10 = &v11;
    v4 = v6;
    os_unfair_lock_lock(&self->_lock);
    v7(v4);
    os_unfair_lock_unlock(&self->_lock);

    v2 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v2 & 1;
}

void *__50__CPLSyncSession_shouldConsiderRequestingMoreTime__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 72);
  if (result)
  {
    result = [result shouldConsiderRequestingMoreTime];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setDetachedActivity:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __38__CPLSyncSession_setDetachedActivity___block_invoke;
  v9 = &unk_1E861B290;
  v10 = self;
  v5 = v4;
  v11 = v5;
  v6 = v7;
  os_unfair_lock_lock(&self->_lock);
  v8(v6);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __38__CPLSyncSession_setDetachedActivity___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _watchOrUnwatchPredictorIfNecessary];
}

- (void)resetNoteClientNeedsToPull
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __44__CPLSyncSession_resetNoteClientNeedsToPull__block_invoke;
  v6 = &unk_1E861A940;
  v7 = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_lock);
  v5(v3);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)noteClientNeedsToPullIfNecessary
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __50__CPLSyncSession_noteClientNeedsToPullIfNecessary__block_invoke;
  v7 = &unk_1E861F818;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&self->_lock);
  v6(v3);
  os_unfair_lock_unlock(&self->_lock);

  if (*(v11 + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scheduler);
    [WeakRetained noteClientNeedsToPull];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __50__CPLSyncSession_noteClientNeedsToPullIfNecessary__block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 40) & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 40) = 1;
  }

  return result;
}

- (CPLSyncSessionRuntimeCharacteristics)runtimeCharacteristics
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1181;
  v15 = __Block_byref_object_dispose__1182;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __40__CPLSyncSession_runtimeCharacteristics__block_invoke;
  v8 = &unk_1E861A850;
  v9 = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

uint64_t __40__CPLSyncSession_runtimeCharacteristics__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) runtimeCharacteristics];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setRescheduler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __33__CPLSyncSession_setRescheduler___block_invoke;
  v11 = &unk_1E861F868;
  v12 = self;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  v6 = v9;
  os_unfair_lock_lock(&self->_lock);
  v10(v6);
  os_unfair_lock_unlock(&self->_lock);

  if (*(v16 + 24) == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v7 = __CPLSchedulerOSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = self;
      _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Removing just-in-case from %@ as it has been associated with a rescheduler", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v15, 8);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __33__CPLSyncSession_setRescheduler___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  result = [*(a1 + 32) _watchOrUnwatchPredictorIfNecessary];
  v3 = *(a1 + 32);
  if (*(v3 + 57) == 1)
  {
    *(v3 + 57) = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)_watchOrUnwatchPredictorIfNecessary
{
  rescheduler = self->_rescheduler;
  if (self->_watchingPredictor)
  {
    if (!rescheduler && !self->_detachedActivity)
    {
      [(CPLSyncSession *)self _unwatchPredictor];
    }
  }

  else if (rescheduler || self->_detachedActivity)
  {
    [(CPLSyncSession *)self _watchPredictor];
  }

  if (self->_watchingPredictor && self->_detachedActivity)
  {
    v4 = [(CPLSyncSessionPredictor *)self->_predictor currentPrediction];
    [(CPLSyncSession *)self _updatePrediction:v4];
  }
}

- (void)_unwatchPredictor
{
  if (self->_watchingPredictor)
  {
    [(CPLSyncSessionPredictor *)self->_predictor removeObserver:self];
    self->_watchingPredictor = 0;
  }
}

- (void)_watchPredictor
{
  if (!self->_watchingPredictor)
  {
    [(CPLSyncSessionPredictor *)self->_predictor addObserver:self];
    self->_watchingPredictor = 1;
  }
}

- (void)_updatePrediction:(id)a3
{
  v4 = a3;
  rescheduler = self->_rescheduler;
  if (rescheduler)
  {
    [(CPLSyncSessionRescheduler *)rescheduler updateSyncSessionPrediction:v4];
  }

  else
  {
    detachedActivity = self->_detachedActivity;
    if (detachedActivity)
    {
      [(CPLBackgroundActivity *)detachedActivity updatePrediction:v4];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (NSString)whenItWillStartDescription
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CPLSyncSession *)self isDetached])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        *buf = 138412290;
        v17 = v12;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@ called on a detached sync session", buf, 0xCu);
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncSession.m"];
    v15 = NSStringFromSelector(a2);
    [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:281 description:{@"%@ called on a detached sync session", v15}];

    abort();
  }

  expectedDate = self->_expectedDate;
  if (!expectedDate)
  {
    v7 = [(CPLSyncSessionRescheduler *)self->_rescheduler goodConditionsDescription];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"when conditions are good (%@)", v7];
    }

    else
    {
      v8 = @"when conditions are good";
    }

    goto LABEL_13;
  }

  [(NSDate *)expectedDate timeIntervalSinceNow];
  if (v5 > 1.0)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"in %.1fs", *&v5];
LABEL_9:
    v8 = v6;
    goto LABEL_13;
  }

  if (v5 < -1.0)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"very soon (%.1fs overdue)", -v5];
    goto LABEL_9;
  }

  v8 = @"very soon";
LABEL_13:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)engineIsClosing
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CPLSyncSession *)self isDetached])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(a2);
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "%@ called on a detached sync session", buf, 0xCu);
      }
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncSession.m"];
    v11 = NSStringFromSelector(a2);
    [v9 handleFailureInMethod:a2 object:self file:v10 lineNumber:272 description:{@"%@ called on a detached sync session", v11}];

    abort();
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = __CPLSchedulerOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = self;
      _os_log_impl(&dword_1DC05A000, v4, OS_LOG_TYPE_DEFAULT, "%@ won't happen in this life: engine is closing", buf, 0xCu);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __33__CPLSyncSession_engineIsClosing__block_invoke;
  v14 = &unk_1E861A940;
  v15 = self;
  v5 = v12;
  os_unfair_lock_lock(&self->_lock);
  v13(v5);
  os_unfair_lock_unlock(&self->_lock);

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __33__CPLSyncSession_engineIsClosing__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) engineIsClosing];
  v2 = *(a1 + 32);

  return [v2 _unwatchPredictor];
}

- (void)sessionWontHappen
{
  v12 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSchedulerOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = self;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "%@ won't happen", buf, 0xCu);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __35__CPLSyncSession_sessionWontHappen__block_invoke;
  v8 = &unk_1E861A940;
  v9 = self;
  v4 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v4);
  os_unfair_lock_unlock(&self->_lock);

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __35__CPLSyncSession_sessionWontHappen__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) sessionWontHappen];
  v2 = *(a1 + 32);

  return [v2 _unwatchPredictor];
}

- (void)sessionIsDone
{
  v12 = *MEMORY[0x1E69E9840];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = __CPLSchedulerOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = self;
      _os_log_impl(&dword_1DC05A000, v3, OS_LOG_TYPE_DEFAULT, "%@ is done", buf, 0xCu);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __31__CPLSyncSession_sessionIsDone__block_invoke;
  v8 = &unk_1E861A940;
  v9 = self;
  v4 = v6;
  os_unfair_lock_lock(&self->_lock);
  v7(v4);
  os_unfair_lock_unlock(&self->_lock);

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __31__CPLSyncSession_sessionIsDone__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 72) sessionIsDone];
  v2 = *(a1 + 32);

  return [v2 _unwatchPredictor];
}

- (void)deferWithBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(CPLSyncSession *)self isDetached])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        *buf = 138412290;
        v22 = v12;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "%@ called on a detached sync session", buf, 0xCu);
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncSession.m"];
    v15 = NSStringFromSelector(a2);
    [v13 handleFailureInMethod:a2 object:self file:v14 lineNumber:246 description:{@"%@ called on a detached sync session", v15}];

    abort();
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLSchedulerOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = self;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, "Deferring %@", buf, 0xCu);
    }
  }

  expectedDate = self->_expectedDate;
  self->_expectedDate = 0;

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __33__CPLSyncSession_deferWithBlock___block_invoke;
  v18 = &unk_1E861AA50;
  v19 = self;
  v8 = v5;
  v20 = v8;
  v9 = v16;
  os_unfair_lock_lock(&self->_lock);
  v17(v9);
  os_unfair_lock_unlock(&self->_lock);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)sessionWillStart
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __34__CPLSyncSession_sessionWillStart__block_invoke;
  v6 = &unk_1E861A940;
  v7 = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_lock);
  v5(v3);
  os_unfair_lock_unlock(&self->_lock);

  if (self->_shouldRequestMoreTime)
  {
    [(CPLSyncSession *)self noteSyncSessionInformation:@"Session will request more time"];
  }
}

void __34__CPLSyncSession_sessionWillStart__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (void)dropExpectedDate
{
  expectedDate = self->_expectedDate;
  self->_expectedDate = 0;
  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isInLessThanTimeInterval:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(CPLSyncSession *)self isDetached])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@ called on a detached sync session", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncSession.m"];
    v13 = NSStringFromSelector(a2);
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:227 description:{@"%@ called on a detached sync session", v13}];

    abort();
  }

  v6 = [(CPLSyncSession *)self isInLessThanTimeInterval:a3];
  v7 = *MEMORY[0x1E69E9840];
  return !v6;
}

- (BOOL)isInMoreThanTimeInverval:(double)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(CPLSyncSession *)self isDetached])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "%@ called on a detached sync session", buf, 0xCu);
      }
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncSession.m"];
    v14 = NSStringFromSelector(a2);
    [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:216 description:{@"%@ called on a detached sync session", v14}];

    abort();
  }

  expectedDate = self->_expectedDate;
  if (expectedDate)
  {
    [(NSDate *)expectedDate timeIntervalSinceNow];
    result = v7 > a3;
  }

  else
  {
    result = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isBeforeDate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(CPLSyncSession *)self isDetached])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@ called on a detached sync session", buf, 0xCu);
      }
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncSession.m"];
    v13 = NSStringFromSelector(a2);
    [v11 handleFailureInMethod:a2 object:self file:v12 lineNumber:211 description:{@"%@ called on a detached sync session", v13}];

    abort();
  }

  v6 = [(CPLSyncSession *)self isAfterDate:v5];

  v7 = *MEMORY[0x1E69E9840];
  return !v6;
}

- (BOOL)isAfterDate:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(CPLSyncSession *)self isDetached])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_ERROR, "%@ called on a detached sync session", buf, 0xCu);
      }
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncSession.m"];
    v14 = NSStringFromSelector(a2);
    [v12 handleFailureInMethod:a2 object:self file:v13 lineNumber:201 description:{@"%@ called on a detached sync session", v14}];

    abort();
  }

  expectedDate = self->_expectedDate;
  if (expectedDate)
  {
    v7 = [(NSDate *)expectedDate compare:v5]== NSOrderedDescending;
  }

  else
  {
    v7 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)requestSyncStateAtEndOfSyncSession:(unint64_t)a3 reschedule:(BOOL)a4 proposedRescheduleDate:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (self->_requiredStateAtEndOfSyncSession > a3)
  {
    self->_requiredStateAtEndOfSyncSession = a3;
    if (v5)
    {
      self->_shouldRescheduleASyncSession = 1;
      if (!v8)
      {
        v9 = [MEMORY[0x1E695DF00] date];
      }

      proposedRescheduleDate = self->_proposedRescheduleDate;
      v13 = v9;
      if (proposedRescheduleDate)
      {
        v11 = [(NSDate *)proposedRescheduleDate earlierDate:v9];
      }

      else
      {
        v11 = v9;
      }

      v12 = self->_proposedRescheduleDate;
      self->_proposedRescheduleDate = v11;

      v9 = v13;
    }
  }

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (int64_t)activityState
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1181;
  v17 = __Block_byref_object_dispose__1182;
  v18 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v8 = __31__CPLSyncSession_activityState__block_invoke;
  v9 = &unk_1E8620288;
  v10 = self;
  v11 = &v19;
  v12 = &v13;
  v3 = v7;
  os_unfair_lock_lock(&self->_lock);
  v8(v3);
  os_unfair_lock_unlock(&self->_lock);

  v4 = v14[5];
  if (v4)
  {
    v5 = [v4 activityState];
  }

  else
  {
    v5 = v20[3];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v5;
}

void __31__CPLSyncSession_activityState__block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1[10] || v1[15] == -1)
  {
    *(*(a1[5] + 8) + 24) = 2;
  }

  else
  {
    v2 = v1[9];
    if (v2)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), v2);
    }

    else
    {
      *(*(a1[5] + 8) + 24) = 0;
    }
  }
}

- (void)setIsJustInCaseSession:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __41__CPLSyncSession_setIsJustInCaseSession___block_invoke;
  v12 = &unk_1E861BB00;
  v16 = a3;
  v13 = self;
  v14 = &v21;
  v15 = &v17;
  v5 = v10;
  os_unfair_lock_lock(&self->_lock);
  v11(v5);
  os_unfair_lock_unlock(&self->_lock);

  if (*(v22 + 24) == 1)
  {
    if (v3)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = __CPLSchedulerOSLogDomain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = self;
          v7 = "Marking %@ as just-in-case session";
LABEL_9:
          _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLSchedulerOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = self;
        v7 = "Removing just-in-case from %@";
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  if (*(v18 + 24) == 1 && (_CPLSilentLogging & 1) == 0)
  {
    v8 = __CPLSchedulerOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = self;
      _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEFAULT, "Automatically reverting %@ to discretionary", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __41__CPLSyncSession_setIsJustInCaseSession___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 57);
  v3 = *(result + 56);
  if (v2 == v3)
  {
    if (v2)
    {
      return result;
    }
  }

  else
  {
    *(v1 + 57) = v3;
    *(*(*(result + 40) + 8) + 24) = 1;
    if (*(result + 56))
    {
      return result;
    }

    v1 = *(result + 32);
  }

  if (*(v1 + 56) == 1)
  {
    *(v1 + 56) = 0;
    *(*(*(result + 48) + 8) + 24) = 1;
  }

  return result;
}

- (CPLSyncSession)initWithSequenceNumber:(unint64_t)a3 expectedDate:(id)a4 scheduler:(id)a5 configuration:(id)a6 scopeFilter:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = CPLSyncSession;
  v17 = [(CPLSyncSession *)&v30 init];
  v18 = v17;
  if (v17)
  {
    v17->_lock._os_unfair_lock_opaque = 0;
    v17->_sequenceNumber = a3;
    objc_storeStrong(&v17->_expectedDate, a4);
    objc_storeWeak(&v18->_scheduler, v14);
    objc_storeStrong(&v18->_scopeFilter, a7);
    WeakRetained = objc_loadWeakRetained(&v18->_scheduler);
    v20 = [WeakRetained predictor];
    predictor = v18->_predictor;
    v18->_predictor = v20;

    v18->_requiredStateAtEndOfSyncSession = 14;
    v22 = [v14 engineLibrary];
    v23 = [v22 libraryIdentifier];

    if (([v23 isEqualToString:@"SystemLibrary"] & 1) == 0)
    {
      v24 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = [v14 engineLibrary];
      v26 = [v25 clientAppBundleIdentifier];
      v27 = [v24 initWithFormat:@" <%@>", v26];
      descriptionSuffix = v18->_descriptionSuffix;
      v18->_descriptionSuffix = v27;
    }

    [(CPLSyncSession *)v18 setupWithConfiguration:v15];
  }

  return v18;
}

+ (void)setScopeIdentifierToAutomaticallyExcludeFromMingling:(id)a3
{
  v3 = [a3 copy];
  v4 = _scopeIdentifierToAutomaticallyExcludeFromMingling;
  _scopeIdentifierToAutomaticallyExcludeFromMingling = v3;

  MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)detachedSyncSessionWithScheduler:(id)a3 configuration:(id)a4 scopeFilter:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CPLSyncSession alloc] initWithSequenceNumber:-1 expectedDate:0 scheduler:v9 configuration:v8 scopeFilter:v7];

  return v10;
}

@end