@interface HMDBackgroundTaskManager
+ (HMDBackgroundTaskManager)sharedManager;
+ (id)logCategory;
- (BOOL)hasOutstandingTaskWithIdentifier:(id)identifier;
- (BOOL)scheduleTaskWithIdentifier:(id)identifier fireDate:(id)date onObserver:(id)observer selector:(SEL)selector error:(id *)error;
- (HMDBackgroundTaskManager)init;
- (HMDBackgroundTaskManager)initWithNotificationCenter:(id)center dateProvider:(id)provider logger:(id)logger;
- (id)_taskForIdentifier:(id)identifier;
- (id)expectedFireDateForTaskWithIdentifier:(id)identifier;
- (void)_handleEvent:(id)event;
- (void)_handlePendingTaskWithIdentifier:(id)identifier date:(id)date;
- (void)_postNotificationWithIdentifier:(id)identifier;
- (void)_registerEventWithIdentifier:(id)identifier fireDate:(id)date;
- (void)_setTask:(id)task forIdentifier:(id)identifier;
- (void)_unregisterEventWithIdentifier:(id)identifier;
- (void)cancelTaskWithIdentifier:(id)identifier onObserver:(id)observer;
- (void)configure;
@end

@implementation HMDBackgroundTaskManager

- (id)_taskForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  tasksByIdentifier = [(HMDBackgroundTaskManager *)self tasksByIdentifier];
  v6 = [tasksByIdentifier objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_setTask:(id)task forIdentifier:(id)identifier
{
  taskCopy = task;
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  tasksByIdentifier = [(HMDBackgroundTaskManager *)self tasksByIdentifier];
  [tasksByIdentifier setObject:taskCopy forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_unregisterEventWithIdentifier:(id)identifier
{
  [identifier UTF8String];

  xpc_set_event();
}

- (void)_registerEventWithIdentifier:(id)identifier fireDate:(id)date
{
  dateCopy = date;
  identifierCopy = identifier;
  xdict = xpc_dictionary_create(0, 0, 0);
  [dateCopy timeIntervalSince1970];
  v8 = v7;

  v9 = xpc_date_create(1000000000 * v8);
  value = xpc_date_get_value(v9);
  xpc_dictionary_set_date(xdict, "Date", value);
  xpc_dictionary_set_BOOL(xdict, "UserVisible", 1);
  [identifierCopy UTF8String];

  xpc_set_event();
}

- (void)_postNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDBackgroundTaskManager__postNotificationWithIdentifier___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(v5, v7);
}

void __60__HMDBackgroundTaskManager__postNotificationWithIdentifier___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) notificationCenter];
  v3 = *(a1 + 40);
  v6 = @"HMD.BGTM.NK";
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"HMD.BGTM.NN" object:0 userInfo:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handlePendingTaskWithIdentifier:(id)identifier date:(id)date
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  pendingTaskDateByIdentifier = [(HMDBackgroundTaskManager *)self pendingTaskDateByIdentifier];
  v9 = [pendingTaskDateByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    [v9 timeIntervalSinceDate:dateCopy];
    if (v10 <= 10.0)
    {
      pendingTaskDateByIdentifier2 = [(HMDBackgroundTaskManager *)self pendingTaskDateByIdentifier];
      [pendingTaskDateByIdentifier2 setObject:0 forKeyedSubscript:identifierCopy];

      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Executing pending task identifier: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [(HMDBackgroundTaskManager *)selfCopy _postNotificationWithIdentifier:identifierCopy];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v21 = 138543874;
        v22 = v14;
        v23 = 2112;
        v24 = v9;
        v25 = 2112;
        v26 = identifierCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Not executing pending task because client was registered too late, expected fire date: %@, identifier: %@", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleEvent:(id)event
{
  v43 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  string = xpc_dictionary_get_string(eventCopy, *MEMORY[0x277D86430]);
  if (string)
  {
    v6 = string;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (v7)
    {
      v8 = [(HMDBackgroundTaskManager *)self _taskForIdentifier:v7];
      [(HMDBackgroundTaskManager *)self _setTask:0 forIdentifier:v7];
      [(HMDBackgroundTaskManager *)self _unregisterEventWithIdentifier:v7];
      dateProvider = [(HMDBackgroundTaskManager *)self dateProvider];
      v10 = [dateProvider now];

      if (v8)
      {
        expectedFireDate = [v8 expectedFireDate];
        [expectedFireDate timeIntervalSinceDate:v10];
        v13 = v12 > 10.0;

        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        v17 = v16;
        if (v13)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            expectedFireDate2 = [v8 expectedFireDate];
            v37 = 138543874;
            v38 = v18;
            v39 = 2112;
            v40 = expectedFireDate2;
            v41 = 2112;
            v42 = v7;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Not executing task because xpc event was delivered too late, expected fire date: %@, identifier: %@", &v37, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          logger = [(HMDBackgroundTaskManager *)selfCopy logger];
          [logger submitNotFiredLogEventForTask:v8];
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            v37 = 138543618;
            v38 = v34;
            v39 = 2112;
            v40 = v8;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Executing task %@", &v37, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          [(HMDBackgroundTaskManager *)selfCopy _postNotificationWithIdentifier:v7];
          logger2 = [(HMDBackgroundTaskManager *)selfCopy logger];
          [logger2 submitLogEventForTask:v8];
        }
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          v37 = 138543618;
          v38 = v32;
          v39 = 2112;
          v40 = v7;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Pausing scheduled task until observer is added, identifier: %@", &v37, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        os_unfair_lock_lock_with_options();
        pendingTaskDateByIdentifier = [(HMDBackgroundTaskManager *)selfCopy2 pendingTaskDateByIdentifier];
        [pendingTaskDateByIdentifier setObject:v10 forKeyedSubscript:v7];

        os_unfair_lock_unlock(&selfCopy2->_lock);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v28;
        v39 = 2080;
        v40 = v6;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to execute task with missing identifier for event key name: %s", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v37 = 138543362;
      v38 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to execute task because xpc event key name is missing", &v37, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__HMDBackgroundTaskManager_configure__block_invoke;
  handler[3] = &unk_279727800;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.alarm", 0, handler);
}

- (id)expectedFireDateForTaskWithIdentifier:(id)identifier
{
  v3 = [(HMDBackgroundTaskManager *)self _taskForIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    expectedFireDate = [v3 expectedFireDate];
  }

  else
  {
    expectedFireDate = 0;
  }

  return expectedFireDate;
}

- (BOOL)hasOutstandingTaskWithIdentifier:(id)identifier
{
  v3 = [(HMDBackgroundTaskManager *)self _taskForIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)cancelTaskWithIdentifier:(id)identifier onObserver:(id)observer
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  observerCopy = observer;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Cancelling task with identifier: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  notificationCenter = [(HMDBackgroundTaskManager *)selfCopy notificationCenter];
  [notificationCenter removeObserver:observerCopy name:@"HMD.BGTM.NN" object:0];

  os_unfair_lock_lock_with_options();
  pendingTaskDateByIdentifier = [(HMDBackgroundTaskManager *)selfCopy pendingTaskDateByIdentifier];
  [pendingTaskDateByIdentifier setObject:0 forKeyedSubscript:identifierCopy];

  tasksByIdentifier = [(HMDBackgroundTaskManager *)selfCopy tasksByIdentifier];
  v15 = [tasksByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v15)
  {
    logger = [(HMDBackgroundTaskManager *)selfCopy logger];
    [logger submitNotFiredLogEventForTask:v15];
  }

  tasksByIdentifier2 = [(HMDBackgroundTaskManager *)selfCopy tasksByIdentifier];
  [tasksByIdentifier2 setObject:0 forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&selfCopy->_lock);
  [(HMDBackgroundTaskManager *)selfCopy _unregisterEventWithIdentifier:identifierCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)scheduleTaskWithIdentifier:(id)identifier fireDate:(id)date onObserver:(id)observer selector:(SEL)selector error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  observerCopy = observer;
  notificationCenter = [(HMDBackgroundTaskManager *)self notificationCenter];
  [notificationCenter removeObserver:observerCopy name:@"HMD.BGTM.NN" object:0];

  notificationCenter2 = [(HMDBackgroundTaskManager *)self notificationCenter];
  [notificationCenter2 addObserver:observerCopy selector:selector name:@"HMD.BGTM.NN" object:0];

  dateProvider = [(HMDBackgroundTaskManager *)self dateProvider];
  v18 = [dateProvider now];

  os_unfair_lock_lock_with_options();
  [(HMDBackgroundTaskManager *)self _handlePendingTaskWithIdentifier:identifierCopy date:v18];
  tasksByIdentifier = [(HMDBackgroundTaskManager *)self tasksByIdentifier];
  v20 = [tasksByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v20)
  {
    logger = [(HMDBackgroundTaskManager *)self logger];
    [logger submitNotFiredLogEventForTask:v20];
  }

  os_unfair_lock_unlock(&self->_lock);
  v22 = [dateCopy compare:v18];
  if (v22 == -1)
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v35 = 138543874;
      v36 = v32;
      v37 = 2112;
      v38 = identifierCopy;
      v39 = 2112;
      v40 = dateCopy;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to schedule task for identifier %@ with fire date in the past: %@", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    }
  }

  else
  {
    [(HMDBackgroundTaskManager *)self _unregisterEventWithIdentifier:identifierCopy];
    v23 = [[HMDBackgroundTask alloc] initWithIdentifier:identifierCopy expectedFireDate:dateCopy scheduledDate:v18];
    [(HMDBackgroundTaskManager *)self _setTask:v23 forIdentifier:identifierCopy];
    v24 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      [dateCopy timeIntervalSinceDate:v18];
      v35 = 138543874;
      v36 = v27;
      v37 = 2112;
      v38 = v23;
      v39 = 2048;
      v40 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Scheduling task %@ (in %fs)", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDBackgroundTaskManager *)selfCopy2 _registerEventWithIdentifier:identifierCopy fireDate:dateCopy];
  }

  v33 = *MEMORY[0x277D85DE8];
  return v22 != -1;
}

- (HMDBackgroundTaskManager)initWithNotificationCenter:(id)center dateProvider:(id)provider logger:(id)logger
{
  centerCopy = center;
  providerCopy = provider;
  loggerCopy = logger;
  v19.receiver = self;
  v19.super_class = HMDBackgroundTaskManager;
  v12 = [(HMDBackgroundTaskManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tasksByIdentifier = v13->_tasksByIdentifier;
    v13->_tasksByIdentifier = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    pendingTaskDateByIdentifier = v13->_pendingTaskDateByIdentifier;
    v13->_pendingTaskDateByIdentifier = dictionary2;

    objc_storeStrong(&v13->_dateProvider, provider);
    objc_storeStrong(&v13->_logger, logger);
    objc_storeStrong(&v13->_notificationCenter, center);
  }

  return v13;
}

- (HMDBackgroundTaskManager)init
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = objc_alloc_init(MEMORY[0x277D0F798]);
  v5 = objc_alloc_init(HMDBackgroundTaskLogger);
  v6 = [(HMDBackgroundTaskManager *)self initWithNotificationCenter:defaultCenter dateProvider:v4 logger:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_41978 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_41978, &__block_literal_global_18_41979);
  }

  v3 = logCategory__hmf_once_v19_41980;

  return v3;
}

uint64_t __39__HMDBackgroundTaskManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_41980;
  logCategory__hmf_once_v19_41980 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (HMDBackgroundTaskManager)sharedManager
{
  if (sharedManager__hmf_once_t0 != -1)
  {
    dispatch_once(&sharedManager__hmf_once_t0, &__block_literal_global_41985);
  }

  v3 = sharedManager__hmf_once_v1;

  return v3;
}

uint64_t __41__HMDBackgroundTaskManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HMDBackgroundTaskManager);
  v1 = sharedManager__hmf_once_v1;
  sharedManager__hmf_once_v1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end