@interface HMIAnalysisStateManager
- (HMIAnalysisStateManager)initWithHomeUUID:(id)a3;
- (HMIAnalysisStateManagerDelegate)delegate;
- (id)stateUpdateFromFaceEvents:(id)a3;
- (void)handleRemoteStateUpdate:(id)a3 completionHandler:(id)a4;
- (void)publishLocalState:(id)a3;
@end

@implementation HMIAnalysisStateManager

- (HMIAnalysisStateManager)initWithHomeUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMIAnalysisStateManager;
  v5 = [(HMIAnalysisStateManager *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v6;
  }

  return v5;
}

- (void)publishLocalState:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Publishing local state", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMIAnalysisStateManager *)v6 delegate];
  [v9 stateManager:v6 didReceiveLocalUpdate:v4];
}

- (void)handleRemoteStateUpdate:(id)a3 completionHandler:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMIPreference sharedInstance];
  v9 = [v8 shouldEnableTorsoRecognition];

  if (v9)
  {
    v10 = [v6 torsoAnnotations];
    v11 = [v10 na_filter:&__block_literal_global_40];

    v12 = [v6 torsoAnnotations];
    v13 = [v12 count];
    v14 = [v11 count];

    if (v13 == v14)
    {
      goto LABEL_10;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v34 = [v6 torsoAnnotations];
      v19 = [v34 count];
      v20 = v19 - [v11 count];
      v21 = [v6 torsoAnnotations];
      *buf = 138543874;
      v40 = v18;
      v41 = 2048;
      v42 = v20;
      v43 = 2048;
      v44 = [v21 count];
      _os_log_impl(&dword_22D12F000, v17, OS_LOG_TYPE_INFO, "%{public}@Dropped %lu incompatible torsoprint annotations out of %lu total", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (![v11 hmf_isEmpty])
    {
LABEL_10:
      v26 = +[HMITaskService taskServiceClient];
      v38[0] = HMITaskTypeUpdateTorsoModelTask;
      v37[0] = @"taskType";
      v37[1] = @"homeUUID";
      v27 = [(HMIAnalysisStateManager *)self homeUUID];
      v37[2] = @"torsoAnnotations";
      v38[1] = v27;
      v38[2] = v11;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __69__HMIAnalysisStateManager_handleRemoteStateUpdate_completionHandler___block_invoke_44;
      v35[3] = &unk_2787545F0;
      v35[4] = self;
      v36 = v7;
      v29 = [v26 submitTaskWithOptions:v28 progressHandler:0 completionHandler:v35];
      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v33;
        v41 = 1024;
        LODWORD(v42) = v29;
        _os_log_impl(&dword_22D12F000, v32, OS_LOG_TYPE_INFO, "%{public}@Submitted torso model update task, taskID:%u", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v30);
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v25;
      _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Dropping remote analysis torso update since torso rec is not enabled on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }
}

uint64_t __69__HMIAnalysisStateManager_handleRemoteStateUpdate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 torsoModelVersion];
  v3 = +[HMITorsoprinter currentModelUUID];
  v4 = [v2 hmf_isEqualToUUID:v3];

  return v4;
}

void __69__HMIAnalysisStateManager_handleRemoteStateUpdate_completionHandler___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"resultCode"];
  v8 = HMITaskResultCodeAsString(0);
  v9 = [v7 isEqualToString:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v14;
      v15 = "%{public}@Successfully update torso model";
      v16 = v13;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 12;
LABEL_6:
      _os_log_impl(&dword_22D12F000, v16, v17, v15, &v21, v18);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v14;
    v23 = 2112;
    v24 = v6;
    v15 = "%{public}@Error in update torso model, error:%@";
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v10);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v6, v19, v20);
}

- (id)stateUpdateFromFaceEvents:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a3 na_map:&__block_literal_global_48];
  v5 = [v3 setWithArray:v4];

  if (v5 && ([v5 hmf_isEmpty] & 1) == 0)
  {
    v6 = [[HMIAnalysisStateUpdate alloc] initWithTorsoAnnotations:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HMIAnalysisStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end