@interface _HDAWDPeriodicAction
- (id)lastProcessedDate;
- (void)_queue_setIntervalCounter:(uint64_t)counter;
- (void)_queue_setLastProcessedDate:(uint64_t)date;
- (void)_queue_setLastSubmissionAttemptDate:(uint64_t)date;
- (void)_queue_setWaitingToRun:(uint64_t)run;
- (void)dealloc;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
@end

@implementation _HDAWDPeriodicAction

- (void)dealloc
{
  [(HDAssertion *)self->_preparedDatabaseAccessibilityAssertion invalidate];
  v3.receiver = self;
  v3.super_class = _HDAWDPeriodicAction;
  [(_HDAWDPeriodicAction *)&v3 dealloc];
}

- (void)_queue_setWaitingToRun:(uint64_t)run
{
  if (run)
  {
    *(run + 128) = a2;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:a2 forKey:*(run + 8)];
  }
}

- (void)_queue_setIntervalCounter:(uint64_t)counter
{
  if (counter)
  {
    *(counter + 144) = a2;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setInteger:*(counter + 144) forKey:*(counter + 24)];
  }
}

- (void)_queue_setLastSubmissionAttemptDate:(uint64_t)date
{
  v5 = a2;
  if (date)
  {
    objc_storeStrong((date + 136), a2);
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:v5 forKey:*(date + 16)];
  }
}

- (void)_queue_setLastProcessedDate:(uint64_t)date
{
  v5 = a2;
  if (date)
  {
    objc_storeStrong((date + 152), a2);
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:*(date + 152) forKey:*(date + 32)];
  }
}

- (id)lastProcessedDate
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__97;
    v9 = __Block_byref_object_dispose__97;
    v10 = 0;
    v1 = *(self + 96);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __41___HDAWDPeriodicAction_lastProcessedDate__block_invoke;
    v4[3] = &unk_278613990;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  xdict = criteria;
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86288], self->_repeatInterval);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86270], self->_graceInterval);
  xpc_dictionary_set_string(xdict, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  if (self->_requiresClassB)
  {
    xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86378], 1);
  }
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  completionCopy = completion;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
  {
    taskName = self->_taskName;
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = taskName;
    *&buf[22] = 2112;
    v28 = activityCopy;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ fired with activity %@", buf, 0x20u);
    v10 = self == 0;
LABEL_5:
    queue = self->_queue;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __42___HDAWDPeriodicAction__beginWaitingToRun__block_invoke;
    v28 = &unk_278613968;
    selfCopy3 = self;
    dispatch_sync(queue, buf);
    goto LABEL_6;
  }

  if (self)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v10 = 1;
LABEL_6:
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __59___HDAWDPeriodicAction_performPeriodicActivity_completion___block_invoke;
  v24 = &unk_278616CC8;
  selfCopy2 = self;
  v26 = completionCopy;
  v12 = completionCopy;
  v13 = &v21;
  v14 = v13;
  if (!v10)
  {
    v15 = self->_taskName;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __69___HDAWDPeriodicAction__doIfWaitingOnMaintenanceQueueWithCompletion___block_invoke;
    v28 = &unk_278621600;
    selfCopy3 = self;
    v30 = v13;
    v16 = [HDMaintenanceOperation maintenanceOperationWithName:v15 asynchronousBlock:buf, v21, v22, v23, v24, selfCopy2, v26];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    daemon = [WeakRetained daemon];
    maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
    [maintenanceWorkCoordinator enqueueMaintenanceOperation:v16];
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end