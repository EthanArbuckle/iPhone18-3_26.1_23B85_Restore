@interface HMIUpdateTorsoModelTask
- (HMIUpdateTorsoModelTask)initWithTaskID:(int)a3 homeUUID:(id)a4 torsoAnnotations:(id)a5;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIUpdateTorsoModelTask

- (HMIUpdateTorsoModelTask)initWithTaskID:(int)a3 homeUUID:(id)a4 torsoAnnotations:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v13.receiver = self;
  v13.super_class = HMIUpdateTorsoModelTask;
  v9 = [(HMIHomeTask *)&v13 initWithTaskID:v6 homeUUID:a4 timeout:60.0];
  if (v9)
  {
    v10 = [v8 copy];
    torsoAnnotations = v9->_torsoAnnotations;
    v9->_torsoAnnotations = v10;
  }

  return v9;
}

- (void)mainInsideAutoreleasePool
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[HMIPersonsModelManager sharedInstance];
  v4 = [(HMIHomeTask *)self homeUUID];
  v5 = [(HMIUpdateTorsoModelTask *)self torsoAnnotations];
  v6 = [v5 allObjects];
  v13 = 0;
  v7 = [v3 updateTorsoModelForHome:v4 torsoAnnotations:v6 error:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error during update torso model task: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMFOperation *)v10 cancelWithError:v8];
  }

  [(HMFOperation *)self finish];
}

@end