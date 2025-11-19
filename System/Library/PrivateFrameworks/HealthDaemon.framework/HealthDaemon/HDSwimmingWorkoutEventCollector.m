@interface HDSwimmingWorkoutEventCollector
+ (BOOL)isAvailableInCurrentHardware;
- (HDSwimmingWorkoutEventCollector)initWithProfile:(id)a3 delegate:(id)a4;
- (void)_queue_errorOccurred:(void *)a1;
- (void)_queue_querySwimDataWithCompletion:(uint64_t)a1;
- (void)requestPendingEventsThroughDate:(id)a3 completion:(id)a4;
- (void)startWithSessionId:(id)a3;
- (void)stop;
@end

@implementation HDSwimmingWorkoutEventCollector

+ (BOOL)isAvailableInCurrentHardware
{
  if (_HDIsUnitTesting)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x2821208B0](a1, a2);
  }
}

- (HDSwimmingWorkoutEventCollector)initWithProfile:(id)a3 delegate:(id)a4
{
  v12.receiver = self;
  v12.super_class = HDSwimmingWorkoutEventCollector;
  v4 = [(HDWorkoutEventCollector *)&v12 initWithProfile:a3 delegate:a4];
  if (v4)
  {
    v5 = HKCreateSerialDispatchQueue();
    workoutEventQueue = v4->_workoutEventQueue;
    v4->_workoutEventQueue = v5;

    v7 = [(HDWorkoutEventCollector *)v4 profile];
    v8 = [v7 workoutManager];
    v9 = [v8 newCMSwimTracker];
    swimTracker = v4->_swimTracker;
    v4->_swimTracker = v9;
  }

  return v4;
}

- (void)startWithSessionId:(id)a3
{
  v4 = a3;
  workoutEventQueue = self->_workoutEventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HDSwimmingWorkoutEventCollector_startWithSessionId___block_invoke;
  v7[3] = &unk_278613920;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(workoutEventQueue, v7);
}

void __54__HDSwimmingWorkoutEventCollector_startWithSessionId___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2112;
      *&buf[14] = v2;
      v5 = *&buf[4];
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting swim workout event collector for sessionID %@", buf, 0x16u);
    }

    v14.receiver = v1;
    v14.super_class = HDSwimmingWorkoutEventCollector;
    objc_msgSendSuper2(&v14, sel_startWithSessionId_, v2);
    v6 = objc_alloc(MEMORY[0x277CC1D58]);
    v7 = [v1 sessionId];
    v8 = [v6 initWithSessionId:v7];
    v9 = v1[5];
    v1[5] = v8;

    objc_initWeak(&location, v1);
    v10 = v1[4];
    v11 = v1[5];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __71__HDSwimmingWorkoutEventCollector__queue_startCollectionWithSessionId___block_invoke;
    v16 = &unk_27861EAC0;
    objc_copyWeak(v17, &location);
    [v10 startUpdatesFromRecord:v11 handler:buf];
    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  workoutEventQueue = self->_workoutEventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HDSwimmingWorkoutEventCollector_stop__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_sync(workoutEventQueue, block);
}

id __39__HDSwimmingWorkoutEventCollector_stop__block_invoke(id result)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(result + 4);
  if (v1)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = objc_opt_class();
      v5 = v4;
      v6 = [v1 sessionId];
      *v8 = 138543618;
      *&v8[4] = v4;
      *&v8[12] = 2112;
      *&v8[14] = v6;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stopping swim workout event collector for sessionID: %@", v8, 0x16u);
    }

    [v1[4] stopUpdates];
    *v8 = v1;
    *&v8[8] = HDSwimmingWorkoutEventCollector;
    result = objc_msgSendSuper2(v8, sel_stop);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)requestPendingEventsThroughDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  workoutEventQueue = self->_workoutEventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__HDSwimmingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke;
  block[3] = &unk_278614160;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workoutEventQueue, block);
}

void __78__HDSwimmingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke(id *a1)
{
  location[3] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] sessionId];

  if (v2)
  {
    v3 = (a1 + 4);
    objc_initWeak(location, a1[4]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__HDSwimmingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke_2;
    aBlock[3] = &unk_27861EA98;
    objc_copyWeak(&v14, location);
    v12 = a1[5];
    v13 = a1[6];
    v4 = _Block_copy(aBlock);
    [(HDSwimmingWorkoutEventCollector *)*v3 _queue_querySwimDataWithCompletion:v4];

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = v5;
      LODWORD(location[0]) = 138543362;
      *(location + 4) = objc_opt_class();
      v10 = *(location + 4);
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Terminating request for collecting pending swim events as sessionId is nil", location, 0xCu);
    }

    v6 = a1[6];
    if (v6)
    {
      v6[2](v6, 1, 0);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __78__HDSwimmingWorkoutEventCollector_requestPendingEventsThroughDate_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(WeakRetained + 7) == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_18;
    }

    v7 = *(WeakRetained + 8);
    v8 = [*(WeakRetained + 6) endDate];
    LOBYTE(v7) = [v7 isEqualToDate:v8];

    if (v7)
    {
      goto LABEL_18;
    }

    v9 = [*(WeakRetained + 6) endDate];
    if (!v9 || [*(WeakRetained + 7) hk_isAfterDate:v9])
    {
      v10 = v5;

      v9 = v10;
    }

    v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:*(WeakRetained + 7) endDate:v9];
    [v11 duration];
    if (v12 == 0.0)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC330];
      if (!os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
LABEL_17:

LABEL_18:
        v23 = *(WeakRetained + 7);
        *(WeakRetained + 7) = 0;

        goto LABEL_19;
      }

      v14 = v13;
      v15 = objc_opt_class();
      v16 = *(WeakRetained + 7);
      *buf = 138544130;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      v30 = 2114;
      v31 = v9;
      v32 = 2114;
      v33 = v5;
      v17 = v15;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Dropping zero-duration segment created with start date: %{public}@, end date: %{public}@ and fallback end date: %{public}@", buf, 0x2Au);
    }

    else
    {
      v18 = objc_alloc(MEMORY[0x277CCDE58]);
      v19 = [WeakRetained sessionId];
      v14 = [v18 initWithEventType:9 sessionId:v19 dateInterval:v11 metadata:0];

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        *buf = 138543618;
        v27 = objc_opt_class();
        v28 = 2114;
        v29 = v14;
        v22 = v27;
        _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Collection stopping: Adding workout segment event %{public}@", buf, 0x16u);
      }

      v17 = [WeakRetained delegate];
      [v17 receivedWorkoutEvent:v14];
    }

    goto LABEL_17;
  }

LABEL_19:
  (*(*(a1 + 40) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_queue_querySwimDataWithCompletion:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__HDSwimmingWorkoutEventCollector__queue_querySwimDataWithCompletion___block_invoke;
    v7[3] = &unk_27861B2F8;
    v7[4] = a1;
    v8 = v3;
    [v5 querySwimUpdatesFromRecord:v6 handler:v7];
  }
}

void __71__HDSwimmingWorkoutEventCollector__queue_startCollectionWithSessionId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v5;
  if (WeakRetained)
  {
    v8 = WeakRetained[9];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HDSwimmingWorkoutEventCollector__startUpdatesFromRecordHandler_error___block_invoke;
    block[3] = &unk_278613920;
    v11 = v7;
    v12 = WeakRetained;
    dispatch_async(v8, block);
  }
}

void __72__HDSwimmingWorkoutEventCollector__startUpdatesFromRecordHandler_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    [(HDSwimmingWorkoutEventCollector *)v1 _queue_errorOccurred:v2];
  }

  else
  {
    [(HDSwimmingWorkoutEventCollector *)v1 _queue_querySwimDataWithCompletion:?];
  }
}

- (void)_queue_errorOccurred:(void *)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v10 = v4;
      v12 = 138543618;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v3;
      v11 = v13;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error getting swim data for lap events: %{public}@", &v12, 0x16u);
    }

    v5 = objc_alloc(MEMORY[0x277CCDE58]);
    v6 = [a1 sessionId];
    v7 = [v5 initWithSessionId:v6 error:v3];

    v8 = [a1 delegate];
    [v8 receivedWorkoutEvent:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __70__HDSwimmingWorkoutEventCollector__queue_querySwimDataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 72);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HDSwimmingWorkoutEventCollector__queue_querySwimDataWithCompletion___block_invoke_2;
  v12[3] = &unk_278613680;
  v12[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

uint64_t __70__HDSwimmingWorkoutEventCollector__queue_querySwimDataWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v135 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  v6 = v5;
  if (v2)
  {
    if (v5)
    {
      [(HDSwimmingWorkoutEventCollector *)v2 _queue_errorOccurred:v5];
      goto LABEL_58;
    }

    v7 = 0x280D58000uLL;
    v8 = [*(v2 + 40) recordId];
    v9 = MEMORY[0x277CCC330];
    if (!v8)
    {
      v10 = [v4 firstObject];
      v11 = *(v2 + 40);
      *(v2 + 40) = v10;

      _HKInitializeLogging();
      v12 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        v102 = v12;
        v103 = objc_opt_class();
        v104 = *(v2 + 40);
        *v121 = 138543618;
        v122 = v103;
        v123 = 2112;
        v124 = v104;
        v105 = v103;
        _os_log_debug_impl(&dword_228986000, v102, OS_LOG_TYPE_DEBUG, "[%{public}@] Setting initial reference swim data to %@", v121, 0x16u);
      }
    }

    v107 = v1;
    if (!*(v2 + 56))
    {
      v13 = [*(v2 + 40) startDate];
      v14 = *(v2 + 56);
      *(v2 + 56) = v13;
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v106 = v4;
    obj = v4;
    v116 = [obj countByEnumeratingWithState:&v117 objects:v121 count:16];
    if (v116)
    {
      v115 = *v118;
      v111 = *MEMORY[0x277CCC518];
      v110 = *MEMORY[0x277CCC500];
      do
      {
        for (i = 0; i != v116; ++i)
        {
          if (*v118 != v115)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v117 + 1) + 8 * i);
          _HKInitializeLogging();
          v17 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            v19 = objc_opt_class();
            *buf = 138543618;
            v128 = v19;
            v129 = 2112;
            v130 = v16;
            v20 = v19;
            _os_log_impl(&dword_228986000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Processing swim data: %@", buf, 0x16u);
          }

          v21 = [v16 sessionId];
          v22 = [v2 sessionId];
          v23 = [v21 isEqual:v22];

          if (v23)
          {
            v24 = [v16 lapCount];
            v25 = [*(v2 + *(v7 + 3020)) lapCount];
            if (v24 > v25)
            {
              v112 = v24;
              v26 = v16;
              v27 = MEMORY[0x277CCABB0];
              v28 = [v26 strokeType];
              if (v28 >= 7)
              {
                v36 = [MEMORY[0x277CCA890] currentHandler];
                v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"HKSwimmingStrokeStyle _HKSwimmingStrokeStyleFromCMSwimStrokeType(CMSwimStrokeType)"];
                [v36 handleFailureInFunction:v37 file:@"HDSwimmingWorkoutEventCollector.m" lineNumber:352 description:@"Invalid swimming stroke style"];

                v29 = 0;
              }

              else
              {
                v29 = qword_22916AB38[v28];
              }

              v38 = [v27 numberWithInteger:v29];
              if ([v26 isSWOLFValid])
              {
                v39 = MEMORY[0x277CCABB0];
                [v26 SWOLF];
                v40 = [v39 numberWithDouble:?];
                v125[0] = v111;
                v125[1] = v110;
                v126[0] = v38;
                v126[1] = v40;
                v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];
              }

              else
              {
                v125[0] = v111;
                v126[0] = v38;
                v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:1];
              }

              v41 = [v26 endDate];
              v42 = [v26 startDate];
              v43 = [v41 hk_isBeforeDate:v42];

              if (v43)
              {
                _HKInitializeLogging();
                v44 = *MEMORY[0x277CCC298];
                v45 = os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT);
                v9 = MEMORY[0x277CCC330];
                if (v45)
                {
                  log = v44;
                  v46 = objc_opt_class();
                  v109 = v46;
                  v47 = [v26 startDate];
                  v48 = [v26 endDate];
                  *buf = 138543874;
                  v128 = v46;
                  v129 = 2114;
                  v130 = v47;
                  v131 = 2114;
                  v132 = v48;
                  _os_log_fault_impl(&dword_228986000, log, OS_LOG_TYPE_FAULT, "[%{public}@] Out-of-order CMSwimData lap events: %{public}@, %{public}@", buf, 0x20u);

                  v9 = MEMORY[0x277CCC330];
                }
              }

              else
              {
                v49 = objc_alloc(MEMORY[0x277CCA970]);
                v50 = [v26 startDate];
                v51 = [v26 endDate];
                v52 = [v49 initWithStartDate:v50 endDate:v51];

                v53 = objc_alloc(MEMORY[0x277CCDE58]);
                v54 = [v2 sessionId];
                v55 = [v53 initWithEventType:5 sessionId:v54 dateInterval:v52 metadata:v114];

                _HKInitializeLogging();
                v56 = *MEMORY[0x277CCC330];
                if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
                {
                  v57 = v56;
                  v58 = objc_opt_class();
                  *buf = 138543618;
                  v128 = v58;
                  v129 = 2112;
                  v130 = v55;
                  v59 = v58;
                  _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding workout lap event: %@", buf, 0x16u);
                }

                v7 = 0x280D58000uLL;
                if (*(v2 + 80) == 1)
                {
                  v60 = [v26 startDate];
                  v61 = *(v2 + 56);
                  *(v2 + 56) = v60;

                  *(v2 + 80) = 0;
                }

                v62 = [v2 delegate];
                [v62 receivedWorkoutEvent:v55];

                v9 = MEMORY[0x277CCC330];
              }

              v24 = v112;
            }

            v63 = [v16 segment];
            if (v63 <= [*(v2 + *(v7 + 3020)) segment])
            {
              if (v24 > v25)
              {
                goto LABEL_53;
              }

              goto LABEL_54;
            }

            v64 = v16;
            v65 = [*(v2 + 48) endDate];
            v66 = [v65 hk_isBeforeDate:*(v2 + 56)];

            if (v66)
            {
              _HKInitializeLogging();
              v67 = *MEMORY[0x277CCC298];
              if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
              {
                v68 = v67;
                v69 = objc_opt_class();
                v70 = *(v2 + 56);
                v71 = *(v2 + 48);
                v72 = v69;
                v73 = [v71 endDate];
                *buf = 138543874;
                v128 = v69;
                v129 = 2114;
                v130 = v70;
                v9 = MEMORY[0x277CCC330];
                v131 = 2114;
                v132 = v73;
                _os_log_fault_impl(&dword_228986000, v68, OS_LOG_TYPE_FAULT, "[%{public}@] Out-of-order CMSwimData segment events: %{public}@, %{public}@", buf, 0x20u);

                goto LABEL_51;
              }

LABEL_52:

LABEL_53:
              objc_storeStrong((v2 + *(v7 + 3020)), v16);
LABEL_54:
              objc_storeStrong((v2 + 48), v16);
              continue;
            }

            v74 = objc_alloc(MEMORY[0x277CCA970]);
            v75 = *(v2 + 56);
            v76 = [*(v2 + 48) endDate];
            v68 = [v74 initWithStartDate:v75 endDate:v76];

            [v68 duration];
            if (v77 == 0.0)
            {
              _HKInitializeLogging();
              v78 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
              {
                v79 = v78;
                v80 = objc_opt_class();
                v81 = *(v2 + 56);
                v82 = *(v2 + 48);
                v83 = v80;
                v84 = [v82 endDate];
                *buf = 138544130;
                v128 = v80;
                v129 = 2114;
                v130 = v64;
                v131 = 2114;
                v132 = v81;
                v7 = 0x280D58000;
                v133 = 2114;
                v134 = v84;
                _os_log_error_impl(&dword_228986000, v79, OS_LOG_TYPE_ERROR, "[%{public}@] Dropping zero-duration segment created from data: %{public}@ with start date: %{public}@ and end date: %{public}@", buf, 0x2Au);

                v9 = MEMORY[0x277CCC330];
                goto LABEL_50;
              }
            }

            else
            {
              if ([v64 isSegmentSWOLFValid])
              {
                v85 = MEMORY[0x277CCABB0];
                [v64 segmentSWOLF];
                v86 = [v85 numberWithDouble:?];
                v125[0] = v110;
                v126[0] = v86;
                v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:1];
              }

              else
              {
                v79 = 0;
              }

              v87 = objc_alloc(MEMORY[0x277CCDE58]);
              v88 = [v2 sessionId];
              v89 = [v87 initWithEventType:9 sessionId:v88 dateInterval:v68 metadata:v79];

              *(v2 + 80) = 1;
              v90 = [v64 endDate];
              v91 = *(v2 + 64);
              *(v2 + 64) = v90;

              _HKInitializeLogging();
              v92 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v93 = v92;
                v94 = objc_opt_class();
                *buf = 138543618;
                v128 = v94;
                v129 = 2114;
                v130 = v89;
                v95 = v94;
                _os_log_impl(&dword_228986000, v93, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding workout segment event: %{public}@", buf, 0x16u);

                v9 = MEMORY[0x277CCC330];
              }

              v96 = [v2 delegate];
              [v96 receivedWorkoutEvent:v89];

LABEL_50:
            }

LABEL_51:

            goto LABEL_52;
          }

          _HKInitializeLogging();
          v30 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            v32 = objc_opt_class();
            v33 = v32;
            v34 = [v16 sessionId];
            v35 = [v2 sessionId];
            *buf = 138543874;
            v128 = v32;
            v129 = 2112;
            v130 = v34;
            v131 = 2112;
            v132 = v35;
            _os_log_impl(&dword_228986000, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring swim data with mismatched session id. Swim data session id: %@ [self sessionID]: %@", buf, 0x20u);
          }
        }

        v116 = [obj countByEnumeratingWithState:&v117 objects:v121 count:16];
      }

      while (v116);
    }

    v4 = v106;
    v1 = v107;
    v6 = 0;
  }

LABEL_58:

  result = *(v1 + 56);
  if (result)
  {
    v98 = *(v1 + 48) == 0;
    v99 = *(result + 16);
    v100 = *MEMORY[0x277D85DE8];

    return v99();
  }

  else
  {
    v101 = *MEMORY[0x277D85DE8];
  }

  return result;
}

@end