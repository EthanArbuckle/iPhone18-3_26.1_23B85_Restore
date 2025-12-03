@interface HMIAnalysisStateManager
- (HMIAnalysisStateManager)initWithHomeUUID:(id)d;
- (HMIAnalysisStateManagerDelegate)delegate;
- (id)stateUpdateFromFaceEvents:(id)events;
- (void)handleRemoteStateUpdate:(id)update completionHandler:(id)handler;
- (void)publishLocalState:(id)state;
@end

@implementation HMIAnalysisStateManager

- (HMIAnalysisStateManager)initWithHomeUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMIAnalysisStateManager;
  v5 = [(HMIAnalysisStateManager *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    homeUUID = v5->_homeUUID;
    v5->_homeUUID = v6;
  }

  return v5;
}

- (void)publishLocalState:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_22D12F000, v7, OS_LOG_TYPE_INFO, "%{public}@Publishing local state", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMIAnalysisStateManager *)selfCopy delegate];
  [delegate stateManager:selfCopy didReceiveLocalUpdate:stateCopy];
}

- (void)handleRemoteStateUpdate:(id)update completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  handlerCopy = handler;
  v8 = +[HMIPreference sharedInstance];
  shouldEnableTorsoRecognition = [v8 shouldEnableTorsoRecognition];

  if (shouldEnableTorsoRecognition)
  {
    torsoAnnotations = [updateCopy torsoAnnotations];
    v11 = [torsoAnnotations na_filter:&__block_literal_global_40];

    torsoAnnotations2 = [updateCopy torsoAnnotations];
    v13 = [torsoAnnotations2 count];
    v14 = [v11 count];

    if (v13 == v14)
    {
      goto LABEL_10;
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      torsoAnnotations3 = [updateCopy torsoAnnotations];
      v19 = [torsoAnnotations3 count];
      v20 = v19 - [v11 count];
      torsoAnnotations4 = [updateCopy torsoAnnotations];
      *buf = 138543874;
      v40 = v18;
      v41 = 2048;
      v42 = v20;
      v43 = 2048;
      v44 = [torsoAnnotations4 count];
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
      homeUUID = [(HMIAnalysisStateManager *)self homeUUID];
      v37[2] = @"torsoAnnotations";
      v38[1] = homeUUID;
      v38[2] = v11;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __69__HMIAnalysisStateManager_handleRemoteStateUpdate_completionHandler___block_invoke_44;
      v35[3] = &unk_2787545F0;
      v35[4] = self;
      v36 = handlerCopy;
      v29 = [v26 submitTaskWithOptions:v28 progressHandler:0 completionHandler:v35];
      v30 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

- (id)stateUpdateFromFaceEvents:(id)events
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [events na_map:&__block_literal_global_48];
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