@interface HMIUpdateTorsoModelTask
- (HMIUpdateTorsoModelTask)initWithTaskID:(int)d homeUUID:(id)iD torsoAnnotations:(id)annotations;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIUpdateTorsoModelTask

- (HMIUpdateTorsoModelTask)initWithTaskID:(int)d homeUUID:(id)iD torsoAnnotations:(id)annotations
{
  v6 = *&d;
  annotationsCopy = annotations;
  v13.receiver = self;
  v13.super_class = HMIUpdateTorsoModelTask;
  v9 = [(HMIHomeTask *)&v13 initWithTaskID:v6 homeUUID:iD timeout:60.0];
  if (v9)
  {
    v10 = [annotationsCopy copy];
    torsoAnnotations = v9->_torsoAnnotations;
    v9->_torsoAnnotations = v10;
  }

  return v9;
}

- (void)mainInsideAutoreleasePool
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[HMIPersonsModelManager sharedInstance];
  homeUUID = [(HMIHomeTask *)self homeUUID];
  torsoAnnotations = [(HMIUpdateTorsoModelTask *)self torsoAnnotations];
  allObjects = [torsoAnnotations allObjects];
  v13 = 0;
  v7 = [v3 updateTorsoModelForHome:homeUUID torsoAnnotations:allObjects error:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    [(HMFOperation *)selfCopy cancelWithError:v8];
  }

  [(HMFOperation *)self finish];
}

@end