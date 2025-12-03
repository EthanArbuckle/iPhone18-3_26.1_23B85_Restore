@interface HDWorkoutObserverServer
+ (id)requiredEntitlements;
- (HDWorkoutObserverServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_sendSnapshotForWorkout:(_BYTE *)workout;
- (void)dealloc;
- (void)remote_startTaskServerIfNeeded;
- (void)remote_waitForAutomaticWorkoutRecoveryWithCompletion:(id)completion;
- (void)workoutManager:(id)manager currentWorkout:(id)workout didUpdateDataAccumulator:(id)accumulator;
- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout;
@end

@implementation HDWorkoutObserverServer

- (HDWorkoutObserverServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = HDWorkoutObserverServer;
  v11 = [(HDStandardTaskServer *)&v15 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v11->_lock;
    v11->_lock = v12;

    v11->_reportInactiveSessions = [configurationCopy reportInactiveSessions];
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
  profile = [(HDStandardTaskServer *)self profile];
  workoutManager = [profile workoutManager];
  [workoutManager registerCurrentWorkoutObserver:self];
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

- (void)remote_waitForAutomaticWorkoutRecoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  workoutManager = [profile workoutManager];
  [workoutManager performWhenPostLaunchSessionRecoveryHasCompleted:completionCopy];
}

- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout
{
  workoutCopy = workout;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HDWorkoutObserverServer_workoutManager_didUpdateCurrentWorkout___block_invoke;
  v8[3] = &unk_278613920;
  v9 = workoutCopy;
  selfCopy = self;
  v7 = workoutCopy;
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

- (void)_sendSnapshotForWorkout:(_BYTE *)workout
{
  if (workout)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__HDWorkoutObserverServer__sendSnapshotForWorkout___block_invoke;
    v6[3] = &unk_2786138D0;
    v6[4] = workout;
    v3 = a2;
    v4 = [workout remoteObjectProxyWithErrorHandler:v6];
    currentWorkoutSnapshot = [v3 currentWorkoutSnapshot];

    if ((workout[64] & 1) == 0 && ([currentWorkoutSnapshot isSessionActive] & 1) == 0)
    {

      currentWorkoutSnapshot = 0;
    }

    [v4 clientRemote_didUpdateWorkoutSnapshot:currentWorkoutSnapshot];
  }
}

- (void)workoutManager:(id)manager currentWorkout:(id)workout didUpdateDataAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__HDWorkoutObserverServer_workoutManager_currentWorkout_didUpdateDataAccumulator___block_invoke;
  v11[3] = &unk_278613920;
  v12 = accumulatorCopy;
  selfCopy = self;
  v9 = accumulatorCopy;
  workoutCopy = workout;
  [(NSLock *)lock hk_withLock:v11];
  [(HDWorkoutObserverServer *)self _sendSnapshotForWorkout:workoutCopy];
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