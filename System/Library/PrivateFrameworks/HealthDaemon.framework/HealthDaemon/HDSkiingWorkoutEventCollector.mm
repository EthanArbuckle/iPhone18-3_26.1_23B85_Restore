@interface HDSkiingWorkoutEventCollector
+ (BOOL)isAvailableInCurrentHardware;
- (HDSkiingWorkoutEventCollector)initWithProfile:(id)profile delegate:(id)delegate;
- (void)_queue_errorOccurred:(void *)occurred;
- (void)_queue_querySkiDataWithCompletion:(uint64_t)completion;
- (void)requestPendingEventsThroughDate:(id)date completion:(id)completion;
- (void)startWithSessionId:(id)id;
- (void)stop;
@end

@implementation HDSkiingWorkoutEventCollector

+ (BOOL)isAvailableInCurrentHardware
{
  if (_HDIsUnitTesting)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x2821208A8](self, a2);
  }
}

- (HDSkiingWorkoutEventCollector)initWithProfile:(id)profile delegate:(id)delegate
{
  v13.receiver = self;
  v13.super_class = HDSkiingWorkoutEventCollector;
  v4 = [(HDWorkoutEventCollector *)&v13 initWithProfile:profile delegate:delegate];
  v5 = v4;
  if (v4)
  {
    profile = [(HDWorkoutEventCollector *)v4 profile];
    workoutManager = [profile workoutManager];
    newCMSkiTracker = [workoutManager newCMSkiTracker];
    skiTracker = v5->_skiTracker;
    v5->_skiTracker = newCMSkiTracker;

    v10 = HKCreateSerialDispatchQueue();
    workoutEventQueue = v5->_workoutEventQueue;
    v5->_workoutEventQueue = v10;
  }

  return v5;
}

- (void)startWithSessionId:(id)id
{
  idCopy = id;
  workoutEventQueue = self->_workoutEventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HDSkiingWorkoutEventCollector_startWithSessionId___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_sync(workoutEventQueue, v7);
}

void __52__HDSkiingWorkoutEventCollector_startWithSessionId___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v2;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "Starting ski workout event collector for sessionID %@", &buf, 0xCu);
    }

    v12.receiver = v1;
    v12.super_class = HDSkiingWorkoutEventCollector;
    objc_msgSendSuper2(&v12, sel_startWithSessionId_, v2);
    v4 = objc_alloc(MEMORY[0x277CC1D40]);
    v5 = [v1 sessionId];
    v6 = [v4 initWithSessionId:v5];
    v7 = v1[5];
    v1[5] = v6;

    objc_initWeak(&location, v1);
    v8 = v1[4];
    v9 = v1[5];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v14 = __69__HDSkiingWorkoutEventCollector__queue_startCollectionWithSessionId___block_invoke;
    v15 = &unk_27861EAC0;
    objc_copyWeak(v16, &location);
    [v8 startUpdatesFromRecord:v9 handler:&buf];
    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  workoutEventQueue = self->_workoutEventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HDSkiingWorkoutEventCollector_stop__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(workoutEventQueue, block);
}

id __37__HDSkiingWorkoutEventCollector_stop__block_invoke(id result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(result + 4);
  if (v1)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = [v1 sessionId];
      LODWORD(v6.receiver) = 138412290;
      *(&v6.receiver + 4) = v4;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "Stopping ski workout event collector for sessionID: %@", &v6, 0xCu);
    }

    [v1[4] stopUpdates];
    v6.receiver = v1;
    v6.super_class = HDSkiingWorkoutEventCollector;
    result = objc_msgSendSuper2(&v6, sel_stop);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requestPendingEventsThroughDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  workoutEventQueue = self->_workoutEventQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HDSkiingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke;
  v8[3] = &unk_278614E28;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(workoutEventQueue, v8);
}

void __76__HDSkiingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionId];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [(HDSkiingWorkoutEventCollector *)v3 _queue_querySkiDataWithCompletion:v4];
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Terminating request for collecting pending ski events as sessionId is nil", v7, 2u);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 1, 0);
    }
  }
}

- (void)_queue_querySkiDataWithCompletion:(uint64_t)completion
{
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    v5 = *(completion + 32);
    v6 = *(completion + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__HDSkiingWorkoutEventCollector__queue_querySkiDataWithCompletion___block_invoke;
    v7[3] = &unk_27861B2F8;
    v7[4] = completion;
    v8 = v3;
    [v5 querySkiUpdatesFromRecord:v6 handler:v7];
  }
}

void __69__HDSkiingWorkoutEventCollector__queue_startCollectionWithSessionId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HDSkiingWorkoutEventCollector__startUpdatesFromRecordHandlerWithError___block_invoke;
    block[3] = &unk_278613920;
    v9 = v5;
    v10 = WeakRetained;
    dispatch_async(v6, block);
  }
}

void __73__HDSkiingWorkoutEventCollector__startUpdatesFromRecordHandlerWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    [(HDSkiingWorkoutEventCollector *)v1 _queue_errorOccurred:v2];
  }

  else
  {
    [(HDSkiingWorkoutEventCollector *)v1 _queue_querySkiDataWithCompletion:?];
  }
}

- (void)_queue_errorOccurred:(void *)occurred
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (occurred)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Error getting ski data: %{public}@", &v10, 0xCu);
    }

    v5 = objc_alloc(MEMORY[0x277CCDE58]);
    sessionId = [occurred sessionId];
    v7 = [v5 initWithSessionId:sessionId error:v3];

    delegate = [occurred delegate];
    [delegate receivedWorkoutEvent:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __67__HDSkiingWorkoutEventCollector__queue_querySkiDataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__HDSkiingWorkoutEventCollector__queue_querySkiDataWithCompletion___block_invoke_2;
  v12[3] = &unk_278613680;
  v12[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

uint64_t __67__HDSkiingWorkoutEventCollector__queue_querySkiDataWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v95 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = v5;
  if (v2)
  {
    if (v5)
    {
      [(HDSkiingWorkoutEventCollector *)v2 _queue_errorOccurred:v5];
      goto LABEL_34;
    }

    v71 = v1;
    v7 = [v2[5] recordId];
    v8 = MEMORY[0x277CCC330];
    if (!v7)
    {
      v9 = [v4 firstObject];
      v10 = v2[5];
      v2[5] = v9;

      _HKInitializeLogging();
      v11 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v69 = v2[5];
        *v88 = 138412290;
        v89 = v69;
        _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "Setting initial reference ski data to %@", v88, 0xCu);
      }
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v70 = v4;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v84 objects:v88 count:16];
    if (v13)
    {
      v14 = v13;
      v83 = *v85;
      v75 = *MEMORY[0x277CCC470];
      v74 = *MEMORY[0x277CCC4E8];
      v72 = *MEMORY[0x277CCC490];
      v73 = *MEMORY[0x277CCC430];
      v77 = v12;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v85 != v83)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v84 + 1) + 8 * i);
          _HKInitializeLogging();
          v17 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v16;
            _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "Processing ski data: %@", buf, 0xCu);
          }

          v18 = [v16 sessionId];
          v19 = [v2 sessionId];
          v20 = [v18 isEqual:v19];

          if ((v20 & 1) == 0)
          {
            _HKInitializeLogging();
            v30 = *v8;
            if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
            {
              continue;
            }

            v27 = v30;
            v28 = [v16 sessionId];
            v29 = [v2 sessionId];
            *buf = 138412546;
            *&buf[4] = v28;
            *&buf[12] = 2112;
            *&buf[14] = v29;
            _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "Ignoring ski data with mismatched session id. Ski data session id: %@ [self sessionID]: %@", buf, 0x16u);
            goto LABEL_21;
          }

          v21 = [v16 recordId];
          if (v21 <= [v2[5] recordId])
          {
            continue;
          }

          v22 = [v16 endDate];
          v23 = [v16 startDate];
          v24 = [v22 hk_isBeforeDate:v23];

          if (v24)
          {
            _HKInitializeLogging();
            v25 = *MEMORY[0x277CCC298];
            if (!os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            v26 = v2[5];
            v27 = v25;
            v28 = [v26 startDate];
            v29 = [v2[5] endDate];
            *buf = 138543618;
            *&buf[4] = v28;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "Out-of-order CMSkiData samples: %{public}@, %{public}@", buf, 0x16u);
LABEL_21:

            continue;
          }

          [v16 runDistance];
          v32 = v31;
          [v2[5] runDistance];
          if (v32 - v33 > 2.22044605e-16)
          {
            v34 = v2[5];
            v35 = v16;
            v36 = MEMORY[0x277CCDAB0];
            v37 = v34;
            v38 = [v36 unitFromString:@"m/s"];
            v39 = MEMORY[0x277CCD7E8];
            [v35 runAvgSpeed];
            v80 = [v39 quantityWithUnit:v38 doubleValue:?];
            v40 = MEMORY[0x277CCD7E8];
            [v35 runMaxSpeed];
            v79 = v38;
            v82 = [v40 quantityWithUnit:v38 doubleValue:?];
            v41 = MEMORY[0x277CCD7E8];
            v42 = [MEMORY[0x277CCDAB0] percentUnit];
            [v35 runSlope];
            v81 = [v41 quantityWithUnit:v42 doubleValue:(tan(v43) * 100.0)];

            [v35 runElevationDescent];
            v45 = v44;
            [v37 runElevationDescent];
            v47 = v46;

            v48 = MEMORY[0x277CCD7E8];
            v49 = [MEMORY[0x277CCDAB0] meterUnit];
            v50 = [v48 quantityWithUnit:v49 doubleValue:v45 - v47];

            v51 = objc_alloc(MEMORY[0x277CCA970]);
            v52 = [v35 startDate];
            v53 = [v35 endDate];
            v54 = [v51 initWithStartDate:v52 endDate:v53];

            [v54 duration];
            v78 = v50;
            if (v55 == 0.0)
            {
              _HKInitializeLogging();
              v8 = MEMORY[0x277CCC330];
              v56 = *MEMORY[0x277CCC330];
              v57 = v80;
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v35;
                _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "Dropping zero-duration segment created from data: %{public}@", buf, 0xCu);
              }
            }

            else
            {
              v92[0] = v75;
              v92[1] = v74;
              *buf = v80;
              *&buf[8] = v82;
              v92[2] = v73;
              v92[3] = v72;
              *&buf[16] = v81;
              v94 = v50;
              v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v92 count:4];
              v59 = objc_alloc(MEMORY[0x277CCDE58]);
              v60 = [v2 sessionId];
              v76 = v58;
              v61 = [v59 initWithEventType:9 sessionId:v60 dateInterval:v54 metadata:v58];

              _HKInitializeLogging();
              v8 = MEMORY[0x277CCC330];
              v62 = *MEMORY[0x277CCC330];
              v57 = v80;
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                *v90 = 138412290;
                v91 = v61;
                _os_log_impl(&dword_228986000, v62, OS_LOG_TYPE_DEFAULT, "Generating workout segment event: %@", v90, 0xCu);
              }

              v63 = [v2 delegate];
              [v63 receivedWorkoutEvent:v61];
            }

            v12 = v77;
          }

          objc_storeStrong(v2 + 5, v16);
        }

        v14 = [v12 countByEnumeratingWithState:&v84 objects:v88 count:16];
      }

      while (v14);
    }

    v4 = v70;
    v1 = v71;
    v6 = 0;
  }

LABEL_34:

  result = *(v1 + 56);
  if (result)
  {
    v65 = *(v1 + 48) == 0;
    v66 = *(result + 16);
    v67 = *MEMORY[0x277D85DE8];

    return v66();
  }

  else
  {
    v68 = *MEMORY[0x277D85DE8];
  }

  return result;
}

@end