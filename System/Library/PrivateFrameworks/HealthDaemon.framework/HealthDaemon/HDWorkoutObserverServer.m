@interface HDWorkoutObserverServer
+ (id)requiredEntitlements;
- (HDWorkoutObserverServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_sendSnapshotForWorkout:(_BYTE *)a1;
- (void)dealloc;
- (void)remote_startTaskServerIfNeeded;
- (void)remote_waitForAutomaticWorkoutRecoveryWithCompletion:(id)a3;
- (void)workoutManager:(id)a3 currentWorkout:(id)a4 didUpdateDataAccumulator:(id)a5;
- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4;
@end

@implementation HDWorkoutObserverServer

- (HDWorkoutObserverServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HDWorkoutObserverServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v11->_lock;
    v11->_lock = v12;

    v11->_reportInactiveSessions = [v10 reportInactiveSessions];
  }

  return v11;
}

- (void)dealloc
{
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__HDWorkoutObserverServer_dealloc__block_invoke;
  v5[3] = &unk_278613968;
  v5[4] = self;
  [(NSLock *)lock hk_withLock:v5];
  v4.receiver = self;
  v4.super_class = HDWorkoutObserverServer;
  [(HDWorkoutObserverServer *)&v4 dealloc];
}

void __34__HDWorkoutObserverServer_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40) == 1)
  {
    v4 = [*(v2 + 48) workoutDataAccumulator];
    [v4 removeDataAccumulationObserver:*(a1 + 32)];

    v6 = [*(a1 + 32) profile];
    v5 = [v6 workoutManager];
    [v5 unregisterCurrentWorkoutObserver:*(a1 + 32)];
  }
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)remote_startTaskServerIfNeeded
{
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HDWorkoutObserverServer_remote_startTaskServerIfNeeded__block_invoke;
  v6[3] = &unk_278613968;
  v6[4] = self;
  [(NSLock *)lock hk_withLock:v6];
  v4 = [(HDStandardTaskServer *)self profile];
  v5 = [v4 workoutManager];
  [v5 registerCurrentWorkoutObserver:self];
}

uint64_t __57__HDWorkoutObserverServer_remote_startTaskServerIfNeeded__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    *(v1 + 40) = 1;
  }

  return result;
}

- (void)remote_waitForAutomaticWorkoutRecoveryWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(HDStandardTaskServer *)self profile];
  v5 = [v6 workoutManager];
  [v5 performWhenPostLaunchSessionRecoveryHasCompleted:v4];
}

- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4
{
  v5 = a4;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HDWorkoutObserverServer_workoutManager_didUpdateCurrentWorkout___block_invoke;
  v8[3] = &unk_278613920;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(NSLock *)lock hk_withLock:v8];
  [(HDWorkoutObserverServer *)self _sendSnapshotForWorkout:v7];
}

void __66__HDWorkoutObserverServer_workoutManager_didUpdateCurrentWorkout___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = *(*(a1 + 40) + 48);
    if (v3)
    {
      v4 = [v3 workoutDataAccumulator];
      [v4 removeDataAccumulationObserver:*(a1 + 40)];

      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }
  }

  objc_storeStrong((*(a1 + 40) + 48), v2);
  v5 = [*(a1 + 32) workoutDataAccumulator];

  if (v5)
  {
    v6 = [*(a1 + 32) workoutDataAccumulator];
    [v6 addDataAccumulationObserver:*(a1 + 40)];
  }
}

- (void)_sendSnapshotForWorkout:(_BYTE *)a1
{
  if (a1)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__HDWorkoutObserverServer__sendSnapshotForWorkout___block_invoke;
    v6[3] = &unk_2786138D0;
    v6[4] = a1;
    v3 = a2;
    v4 = [a1 remoteObjectProxyWithErrorHandler:v6];
    v5 = [v3 currentWorkoutSnapshot];

    if ((a1[64] & 1) == 0 && ([v5 isSessionActive] & 1) == 0)
    {

      v5 = 0;
    }

    [v4 clientRemote_didUpdateWorkoutSnapshot:v5];
  }
}

- (void)workoutManager:(id)a3 currentWorkout:(id)a4 didUpdateDataAccumulator:(id)a5
{
  v7 = a5;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HDWorkoutObserverServer_workoutManager_currentWorkout_didUpdateDataAccumulator___block_invoke;
  v11[3] = &unk_278613920;
  v12 = v7;
  v13 = self;
  v9 = v7;
  v10 = a4;
  [(NSLock *)lock hk_withLock:v11];
  [(HDWorkoutObserverServer *)self _sendSnapshotForWorkout:v10];
}

void __51__HDWorkoutObserverServer__sendSnapshotForWorkout___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to notify client of new snapshot: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end