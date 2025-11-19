@interface HMDBackgroundTaskManager
+ (HMDBackgroundTaskManager)sharedManager;
+ (id)logCategory;
- (BOOL)hasOutstandingTaskWithIdentifier:(id)a3;
- (BOOL)scheduleTaskWithIdentifier:(id)a3 fireDate:(id)a4 onObserver:(id)a5 selector:(SEL)a6 error:(id *)a7;
- (HMDBackgroundTaskManager)init;
- (HMDBackgroundTaskManager)initWithNotificationCenter:(id)a3 dateProvider:(id)a4 logger:(id)a5;
- (id)_taskForIdentifier:(id)a3;
- (id)expectedFireDateForTaskWithIdentifier:(id)a3;
- (void)_handleEvent:(id)a3;
- (void)_handlePendingTaskWithIdentifier:(id)a3 date:(id)a4;
- (void)_postNotificationWithIdentifier:(id)a3;
- (void)_registerEventWithIdentifier:(id)a3 fireDate:(id)a4;
- (void)_setTask:(id)a3 forIdentifier:(id)a4;
- (void)_unregisterEventWithIdentifier:(id)a3;
- (void)cancelTaskWithIdentifier:(id)a3 onObserver:(id)a4;
- (void)configure;
@end

@implementation HMDBackgroundTaskManager

- (id)_taskForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDBackgroundTaskManager *)self tasksByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_setTask:(id)a3 forIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMDBackgroundTaskManager *)self tasksByIdentifier];
  [v7 setObject:v8 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_unregisterEventWithIdentifier:(id)a3
{
  [a3 UTF8String];

  xpc_set_event();
}

- (void)_registerEventWithIdentifier:(id)a3 fireDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  xdict = xpc_dictionary_create(0, 0, 0);
  [v5 timeIntervalSince1970];
  v8 = v7;

  v9 = xpc_date_create(1000000000 * v8);
  value = xpc_date_get_value(v9);
  xpc_dictionary_set_date(xdict, "Date", value);
  xpc_dictionary_set_BOOL(xdict, "UserVisible", 1);
  [v6 UTF8String];

  xpc_set_event();
}

- (void)_postNotificationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDBackgroundTaskManager__postNotificationWithIdentifier___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)_handlePendingTaskWithIdentifier:(id)a3 date:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBackgroundTaskManager *)self pendingTaskDateByIdentifier];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    [v9 timeIntervalSinceDate:v7];
    if (v10 <= 10.0)
    {
      v15 = [(HMDBackgroundTaskManager *)self pendingTaskDateByIdentifier];
      [v15 setObject:0 forKeyedSubscript:v6];

      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Executing pending task identifier: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [(HMDBackgroundTaskManager *)v17 _postNotificationWithIdentifier:v6];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v21 = 138543874;
        v22 = v14;
        v23 = 2112;
        v24 = v9;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Not executing pending task because client was registered too late, expected fire date: %@, identifier: %@", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleEvent:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  string = xpc_dictionary_get_string(v4, *MEMORY[0x277D86430]);
  if (string)
  {
    v6 = string;
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (v7)
    {
      v8 = [(HMDBackgroundTaskManager *)self _taskForIdentifier:v7];
      [(HMDBackgroundTaskManager *)self _setTask:0 forIdentifier:v7];
      [(HMDBackgroundTaskManager *)self _unregisterEventWithIdentifier:v7];
      v9 = [(HMDBackgroundTaskManager *)self dateProvider];
      v10 = [v9 now];

      if (v8)
      {
        v11 = [v8 expectedFireDate];
        [v11 timeIntervalSinceDate:v10];
        v13 = v12 > 10.0;

        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        v17 = v16;
        if (v13)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v18 = HMFGetLogIdentifier();
            v19 = [v8 expectedFireDate];
            v37 = 138543874;
            v38 = v18;
            v39 = 2112;
            v40 = v19;
            v41 = 2112;
            v42 = v7;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Not executing task because xpc event was delivered too late, expected fire date: %@, identifier: %@", &v37, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          v20 = [(HMDBackgroundTaskManager *)v15 logger];
          [v20 submitNotFiredLogEventForTask:v8];
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
          [(HMDBackgroundTaskManager *)v15 _postNotificationWithIdentifier:v7];
          v35 = [(HMDBackgroundTaskManager *)v15 logger];
          [v35 submitLogEventForTask:v8];
        }
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = self;
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
        v33 = [(HMDBackgroundTaskManager *)v30 pendingTaskDateByIdentifier];
        [v33 setObject:v10 forKeyedSubscript:v7];

        os_unfair_lock_unlock(&v30->_lock);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
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
    v22 = self;
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

- (id)expectedFireDateForTaskWithIdentifier:(id)a3
{
  v3 = [(HMDBackgroundTaskManager *)self _taskForIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 expectedFireDate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasOutstandingTaskWithIdentifier:(id)a3
{
  v3 = [(HMDBackgroundTaskManager *)self _taskForIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)cancelTaskWithIdentifier:(id)a3 onObserver:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v19 = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Cancelling task with identifier: %@", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDBackgroundTaskManager *)v9 notificationCenter];
  [v12 removeObserver:v7 name:@"HMD.BGTM.NN" object:0];

  os_unfair_lock_lock_with_options();
  v13 = [(HMDBackgroundTaskManager *)v9 pendingTaskDateByIdentifier];
  [v13 setObject:0 forKeyedSubscript:v6];

  v14 = [(HMDBackgroundTaskManager *)v9 tasksByIdentifier];
  v15 = [v14 objectForKeyedSubscript:v6];

  if (v15)
  {
    v16 = [(HMDBackgroundTaskManager *)v9 logger];
    [v16 submitNotFiredLogEventForTask:v15];
  }

  v17 = [(HMDBackgroundTaskManager *)v9 tasksByIdentifier];
  [v17 setObject:0 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&v9->_lock);
  [(HMDBackgroundTaskManager *)v9 _unregisterEventWithIdentifier:v6];

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)scheduleTaskWithIdentifier:(id)a3 fireDate:(id)a4 onObserver:(id)a5 selector:(SEL)a6 error:(id *)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(HMDBackgroundTaskManager *)self notificationCenter];
  [v15 removeObserver:v14 name:@"HMD.BGTM.NN" object:0];

  v16 = [(HMDBackgroundTaskManager *)self notificationCenter];
  [v16 addObserver:v14 selector:a6 name:@"HMD.BGTM.NN" object:0];

  v17 = [(HMDBackgroundTaskManager *)self dateProvider];
  v18 = [v17 now];

  os_unfair_lock_lock_with_options();
  [(HMDBackgroundTaskManager *)self _handlePendingTaskWithIdentifier:v12 date:v18];
  v19 = [(HMDBackgroundTaskManager *)self tasksByIdentifier];
  v20 = [v19 objectForKeyedSubscript:v12];

  if (v20)
  {
    v21 = [(HMDBackgroundTaskManager *)self logger];
    [v21 submitNotFiredLogEventForTask:v20];
  }

  os_unfair_lock_unlock(&self->_lock);
  v22 = [v13 compare:v18];
  if (v22 == -1)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v35 = 138543874;
      v36 = v32;
      v37 = 2112;
      v38 = v12;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to schedule task for identifier %@ with fire date in the past: %@", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    if (a7)
    {
      *a7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    }
  }

  else
  {
    [(HMDBackgroundTaskManager *)self _unregisterEventWithIdentifier:v12];
    v23 = [[HMDBackgroundTask alloc] initWithIdentifier:v12 expectedFireDate:v13 scheduledDate:v18];
    [(HMDBackgroundTaskManager *)self _setTask:v23 forIdentifier:v12];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      [v13 timeIntervalSinceDate:v18];
      v35 = 138543874;
      v36 = v27;
      v37 = 2112;
      v38 = v23;
      v39 = 2048;
      v40 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Scheduling task %@ (in %fs)", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDBackgroundTaskManager *)v25 _registerEventWithIdentifier:v12 fireDate:v13];
  }

  v33 = *MEMORY[0x277D85DE8];
  return v22 != -1;
}

- (HMDBackgroundTaskManager)initWithNotificationCenter:(id)a3 dateProvider:(id)a4 logger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HMDBackgroundTaskManager;
  v12 = [(HMDBackgroundTaskManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = [MEMORY[0x277CBEB38] dictionary];
    tasksByIdentifier = v13->_tasksByIdentifier;
    v13->_tasksByIdentifier = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    pendingTaskDateByIdentifier = v13->_pendingTaskDateByIdentifier;
    v13->_pendingTaskDateByIdentifier = v16;

    objc_storeStrong(&v13->_dateProvider, a4);
    objc_storeStrong(&v13->_logger, a5);
    objc_storeStrong(&v13->_notificationCenter, a3);
  }

  return v13;
}

- (HMDBackgroundTaskManager)init
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = objc_alloc_init(MEMORY[0x277D0F798]);
  v5 = objc_alloc_init(HMDBackgroundTaskLogger);
  v6 = [(HMDBackgroundTaskManager *)self initWithNotificationCenter:v3 dateProvider:v4 logger:v5];

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