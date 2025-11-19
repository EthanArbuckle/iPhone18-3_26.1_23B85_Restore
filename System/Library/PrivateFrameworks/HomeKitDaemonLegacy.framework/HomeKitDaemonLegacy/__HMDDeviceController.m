@interface __HMDDeviceController
- (__HMDDeviceController)initWithDevice:(id)a3 accountRegistry:(id)a4;
- (void)__handleAddedAccount:(id)a3;
- (void)__handleAddedDevice:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateWithDevice:(id)a3 completionHandler:(id)a4;
@end

@implementation __HMDDeviceController

- (void)__handleAddedDevice:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 identifier];
  v13 = [(HMDDeviceController *)self identifier];
  if ([v12 hmf_isEqualToUUID:v13])
  {
    v14 = [(__HMDDeviceController *)self accountRegistry];
    v15 = [v14 accounts];
    v16 = [v15 containsObject:v7];

    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v7 shortDescription];
        v23 = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Target device added to account: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      __HMDDeviceControllerUpdateDevice(v18, v11);
    }
  }

  else
  {
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)__handleAddedAccount:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDAccountNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 devices];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46____HMDDeviceController___handleAddedAccount___block_invoke;
    v17[3] = &unk_27972A7A8;
    v17[4] = self;
    v10 = [v9 hmf_objectPassingTest:v17];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v8 shortDescription];
        *buf = 138543618;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Account added containing target device: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      __HMDDeviceControllerUpdateDevice(v12, v10);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (__HMDAccountRegistryStartedContext == a6)
  {
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if ([v16 BOOLValue])
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Registry is available", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [(__HMDDeviceController *)v18 accountRegistry];
      v22 = [(HMDDeviceController *)v18 identifier];
      v23 = [v21 deviceForIdentifier:v22];

      if (v23)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v18;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v31 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Device present in registry, updating", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        __HMDDeviceControllerUpdateDevice(v25, v23);
      }
    }
  }

  else
  {
    v29.receiver = self;
    v29.super_class = __HMDDeviceController;
    [(__HMDDeviceController *)&v29 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateWithDevice:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32 = 0;
  v8 = [(HMDDeviceController *)self device];
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Device not found." reason:@"Unknown device." suggestion:0];
    v10 = 0;
    v11 = 0;
    if (!v7)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v9 = [(__HMDDeviceController *)self accountRegistry];
  v10 = [v9 deviceForDevice:v8 exists:&v32];

  if (v32 == 1)
  {
    if (v10 != v8)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v34 = v29;
        v35 = 2112;
        v36 = v8;
        v37 = 2112;
        v38 = v10;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Device controller is not backed by registry device: %@ != %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v30 = [[HMDAssertionLogEvent alloc] initWithReason:@"Device controller is not backed by registry device: %@ != %@", v8, v10];
      v31 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v31 submitLogEvent:v30];
    }

    v11 = [v8 account];
    if ([v11 isCurrentAccount])
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported." reason:@"Cannot update device on current account." suggestion:0];
      if (!v7)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating with device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [v8 updateWithDevice:v6];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || [v8 shouldMergeObject:v6])
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v16;
        v35 = 2112;
        v36 = v6;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Merging with device: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      if ([v8 mergeObject:v6])
      {
        v17 = objc_autoreleasePoolPush();
        v18 = v14;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v20;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated device", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v17);
      }
    }

    v11 = 0;
  }

  v12 = 0;
  if (v7)
  {
LABEL_22:
    v7[2](v7, v12);
  }

LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(__HMDDeviceController *)self accountRegistry];
  v4 = NSStringFromSelector(sel_started);
  [v3 removeObserver:self forKeyPath:v4 context:__HMDAccountRegistryStartedContext];

  v5.receiver = self;
  v5.super_class = __HMDDeviceController;
  [(HMDDeviceController *)&v5 dealloc];
}

- (__HMDDeviceController)initWithDevice:(id)a3 accountRegistry:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 identifier];
  v14.receiver = self;
  v14.super_class = __HMDDeviceController;
  v10 = [(HMDDeviceController *)&v14 initWithDevice:v8 identifier:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_accountRegistry, a4);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v10 selector:sel___handleAddedAccount_ name:@"HMDAccountRegistryAddedAccountNotification" object:v7];
    [v11 addObserver:v10 selector:sel___handleAddedDevice_ name:@"HMDAccountAddedDeviceNotification" object:0];
    v12 = NSStringFromSelector(sel_started);
    [v7 addObserver:v10 forKeyPath:v12 options:5 context:__HMDAccountRegistryStartedContext];
  }

  return v10;
}

@end