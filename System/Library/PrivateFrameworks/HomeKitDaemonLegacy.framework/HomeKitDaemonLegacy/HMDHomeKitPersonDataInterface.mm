@interface HMDHomeKitPersonDataInterface
+ (id)logCategory;
- (HMDHomeKitPersonDataInterface)initWithUUID:(id)d messageDispatcher:(id)dispatcher workQueue:(id)queue;
- (HMDHomeKitPersonDataInterface)initWithUUID:(id)d messageDispatcher:(id)dispatcher workQueue:(id)queue clientConnectionsTimer:(id)timer;
- (HMDPersonDataSource)dataSource;
- (id)logIdentifier;
- (void)_notifySubscribersOfMessageWithName:(id)name payload:(id)payload;
- (void)clientConnectionsTimerDidFire:(id)fire;
- (void)configureWithDataSource:(id)source home:(id)home;
- (void)handleAddOrUpdateFaceCropsMessage:(id)message;
- (void)handleAddOrUpdateFaceprintsMessage:(id)message;
- (void)handleAddOrUpdatePersonsMessage:(id)message;
- (void)handleAssociateFaceCropsMessage:(id)message;
- (void)handleDisassociateFaceCropsMessage:(id)message;
- (void)handleFetchFaceCropsMessage:(id)message;
- (void)handleFetchFaceprintsMessage:(id)message;
- (void)handleFetchPersonFaceCropsMessage:(id)message;
- (void)handleFetchPersonsMessage:(id)message;
- (void)handleFetchUnassociatedFaceCropsMessage:(id)message;
- (void)handlePerformCloudPullMessage:(id)message;
- (void)handleRemoveFaceCropsMessage:(id)message;
- (void)handleRemoveFaceprintsMessage:(id)message;
- (void)handleRemovePersonsMessage:(id)message;
- (void)handleRemovedFaceCropWithUUID:(id)d mirrorOutputFuture:(id)future;
- (void)handleRemovedFaceprintWithUUID:(id)d mirrorOutputFuture:(id)future;
- (void)handleRemovedPersonWithUUID:(id)d mirrorOutputFuture:(id)future;
- (void)handleSubscribeMessage:(id)message;
- (void)handleUnsubscribeMessage:(id)message;
- (void)handleUpdatedFaceprint:(id)faceprint mirrorOutputFuture:(id)future;
- (void)handleUpdatedPerson:(id)person mirrorOutputFuture:(id)future;
- (void)handleUpdatedPersonFaceCrop:(id)crop mirrorOutputFuture:(id)future;
- (void)handleUpdatedUnassociatedFaceCrop:(id)crop mirrorOutputFuture:(id)future;
@end

@implementation HMDHomeKitPersonDataInterface

- (HMDPersonDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)clientConnectionsTimerDidFire:(id)fire
{
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDHomeKitPersonDataInterface *)self dataSource];
  performCloudPull = [dataSource performCloudPull];
}

- (void)handleRemovedFaceprintWithUUID:(id)d mirrorOutputFuture:(id)future
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  futureCopy = future;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of removed faceprint UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{dCopy, *MEMORY[0x277CD0BA8]}];
  v17 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  [(HMDHomeKitPersonDataInterface *)selfCopy _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedFaceCropWithUUID:(id)d mirrorOutputFuture:(id)future
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  futureCopy = future;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of removed face crop UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{dCopy, *MEMORY[0x277CD0BA0]}];
  v17 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  [(HMDHomeKitPersonDataInterface *)selfCopy _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedPersonWithUUID:(id)d mirrorOutputFuture:(id)future
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  futureCopy = future;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = dCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of removed person UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{dCopy, *MEMORY[0x277CD0BB0]}];
  v17 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  [(HMDHomeKitPersonDataInterface *)selfCopy _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedFaceprint:(id)faceprint mirrorOutputFuture:(id)future
{
  v23 = *MEMORY[0x277D85DE8];
  faceprintCopy = faceprint;
  futureCopy = future;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = faceprintCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Notifying subscribers of updated faceprint: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{faceprintCopy, *MEMORY[0x277CD0BC0]}];
  v14 = encodeRootObject();
  v18 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  [(HMDHomeKitPersonDataInterface *)selfCopy _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedPersonFaceCrop:(id)crop mirrorOutputFuture:(id)future
{
  v24 = *MEMORY[0x277D85DE8];
  cropCopy = crop;
  futureCopy = future;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [cropCopy UUID];
    *buf = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = uUID;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Notifying subscribers of updated person face crop: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [MEMORY[0x277CBEB98] setWithObject:{cropCopy, *MEMORY[0x277CD0BC8]}];
  v15 = encodeRootObject();
  v19 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  [(HMDHomeKitPersonDataInterface *)selfCopy _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v16];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedUnassociatedFaceCrop:(id)crop mirrorOutputFuture:(id)future
{
  v23 = *MEMORY[0x277D85DE8];
  cropCopy = crop;
  futureCopy = future;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = cropCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of updated unassociated face crop: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{cropCopy, *MEMORY[0x277CD0BD8]}];
  v14 = encodeRootObject();
  v18 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  [(HMDHomeKitPersonDataInterface *)selfCopy _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedPerson:(id)person mirrorOutputFuture:(id)future
{
  v23 = *MEMORY[0x277D85DE8];
  personCopy = person;
  futureCopy = future;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = personCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of updated person: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{personCopy, *MEMORY[0x277CD0BD0]}];
  v14 = encodeRootObject();
  v18 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  [(HMDHomeKitPersonDataInterface *)selfCopy _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithDataSource:(id)source home:(id)home
{
  v49 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  homeCopy = home;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!sourceCopy)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  if (!homeCopy)
  {
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring HomeKit person data interface", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDHomeKitPersonDataInterface *)selfCopy setDataSource:sourceCopy];
  v13 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
  v41 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];
  [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];
  v14 = v42 = sourceCopy;
  v39 = [HMDConfigurationMessagePolicy policyWithOperationTypes:1];
  v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  v16 = v40 = homeCopy;
  v46[0] = v13;
  v46[1] = v41;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  messageDispatcher = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher registerForMessage:*MEMORY[0x277CD0C00] receiver:selfCopy policies:v17 selector:sel_handleSubscribeMessage_];

  messageDispatcher2 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher2 registerForMessage:*MEMORY[0x277CD0C08] receiver:selfCopy policies:v17 selector:sel_handleUnsubscribeMessage_];

  messageDispatcher3 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher3 registerForMessage:*MEMORY[0x277CD0BE0] receiver:selfCopy policies:v17 selector:sel_handlePerformCloudPullMessage_];

  messageDispatcher4 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher4 registerForMessage:*MEMORY[0x277CD0B60] receiver:selfCopy policies:v17 selector:sel_handleFetchPersonsMessage_];

  messageDispatcher5 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher5 registerForMessage:*MEMORY[0x277CD0B48] receiver:selfCopy policies:v17 selector:sel_handleFetchFaceCropsMessage_];

  messageDispatcher6 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher6 registerForMessage:*MEMORY[0x277CD0B58] receiver:selfCopy policies:v17 selector:sel_handleFetchPersonFaceCropsMessage_];

  messageDispatcher7 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher7 registerForMessage:*MEMORY[0x277CD0B68] receiver:selfCopy policies:v17 selector:sel_handleFetchUnassociatedFaceCropsMessage_];

  messageDispatcher8 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher8 registerForMessage:*MEMORY[0x277CD0B50] receiver:selfCopy policies:v17 selector:sel_handleFetchFaceprintsMessage_];

  v45[0] = v13;
  v45[1] = v14;
  v45[2] = v39;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
  v44[0] = v13;
  v44[1] = v14;
  v44[2] = v15;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
  v43[0] = v13;
  v43[1] = v14;
  v43[2] = v16;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
  messageDispatcher9 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher9 registerForMessage:*MEMORY[0x277CD0B28] receiver:selfCopy policies:v26 selector:sel_handleAddOrUpdatePersonsMessage_];

  messageDispatcher10 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher10 registerForMessage:*MEMORY[0x277CD0B18] receiver:selfCopy policies:v26 selector:sel_handleAddOrUpdateFaceCropsMessage_];

  messageDispatcher11 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher11 registerForMessage:*MEMORY[0x277CD0B20] receiver:selfCopy policies:v26 selector:sel_handleAddOrUpdateFaceprintsMessage_];

  messageDispatcher12 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher12 registerForMessage:*MEMORY[0x277CD0B30] receiver:selfCopy policies:v27 selector:sel_handleAssociateFaceCropsMessage_];

  messageDispatcher13 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher13 registerForMessage:*MEMORY[0x277CD0B40] receiver:selfCopy policies:v27 selector:sel_handleDisassociateFaceCropsMessage_];

  messageDispatcher14 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher14 registerForMessage:*MEMORY[0x277CD0BF8] receiver:selfCopy policies:v28 selector:sel_handleRemovePersonsMessage_];

  messageDispatcher15 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher15 registerForMessage:*MEMORY[0x277CD0BE8] receiver:selfCopy policies:v28 selector:sel_handleRemoveFaceCropsMessage_];

  messageDispatcher16 = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
  [messageDispatcher16 registerForMessage:*MEMORY[0x277CD0BF0] receiver:selfCopy policies:v28 selector:sel_handleRemoveFaceprintsMessage_];

  clientConnectionsTimer = [(HMDHomeKitPersonDataInterface *)selfCopy clientConnectionsTimer];
  [clientConnectionsTimer setDelegate:selfCopy];

  v38 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  uUID = [(HMDHomeKitPersonDataInterface *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)handleRemoveFaceprintsMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remove face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy setForKey:*MEMORY[0x277CD0B80]];
  if (v11)
  {
    dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
    v13 = [dataSource removeFaceprintsWithUUIDs:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __63__HMDHomeKitPersonDataInterface_handleRemoveFaceprintsMessage___block_invoke;
    v22[3] = &unk_279733BC0;
    v23 = messageCopy;
    v14 = [v13 addCompletionBlock:v22];

    v15 = v23;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find faceprints UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v15];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveFaceCropsMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remove face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy setForKey:*MEMORY[0x277CD0B70]];
  if (v11)
  {
    dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
    v13 = [dataSource removeFaceCropsWithUUIDs:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __62__HMDHomeKitPersonDataInterface_handleRemoveFaceCropsMessage___block_invoke;
    v22[3] = &unk_279733BC0;
    v23 = messageCopy;
    v14 = [v13 addCompletionBlock:v22];

    v15 = v23;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crop UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v15];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovePersonsMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remove persons message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy setForKey:*MEMORY[0x277CD0B90]];
  if (v11)
  {
    dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
    v13 = [dataSource removePersonsWithUUIDs:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__HMDHomeKitPersonDataInterface_handleRemovePersonsMessage___block_invoke;
    v22[3] = &unk_279733BC0;
    v23 = messageCopy;
    v14 = [v13 addCompletionBlock:v22];

    v15 = v23;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find person UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v15];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleDisassociateFaceCropsMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling disassociate face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy setForKey:*MEMORY[0x277CD0B70]];
  if (v11)
  {
    dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
    v13 = [dataSource disassociateFaceCropsWithUUIDs:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __68__HMDHomeKitPersonDataInterface_handleDisassociateFaceCropsMessage___block_invoke;
    v22[3] = &unk_279733BC0;
    v23 = messageCopy;
    v14 = [v13 addCompletionBlock:v22];

    v15 = v23;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crop UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v15];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleAssociateFaceCropsMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v40 = v9;
    v41 = 2112;
    v42 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling associate face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy setForKey:*MEMORY[0x277CD0B70]];
  if (v11)
  {
    v12 = [messageCopy setForKey:*MEMORY[0x277CD0B90]];
    anyObject = [v12 anyObject];

    if (anyObject)
    {
      v14 = [messageCopy numberForKey:*MEMORY[0x277CD0BB8]];
      v15 = v14;
      if (v14)
      {
        integerValue = [v14 integerValue];
        dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
        v18 = [dataSource associateFaceCropsWithUUIDs:v11 toPersonWithUUID:anyObject forSource:integerValue];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __65__HMDHomeKitPersonDataInterface_handleAssociateFaceCropsMessage___block_invoke;
        v37[3] = &unk_279733BC0;
        v38 = messageCopy;
        v19 = [v18 addCompletionBlock:v37];

        v20 = v38;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          messagePayload2 = [messageCopy messagePayload];
          *buf = 138543618;
          v40 = v34;
          v41 = 2112;
          v42 = messagePayload2;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not find source in message payload: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [messageCopy respondWithError:v20];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        messagePayload3 = [messageCopy messagePayload];
        *buf = 138543618;
        v40 = v29;
        v41 = 2112;
        v42 = messagePayload3;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not find person UUID in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [messageCopy respondWithError:v15];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      messagePayload4 = [messageCopy messagePayload];
      *buf = 138543618;
      v40 = v24;
      v41 = 2112;
      v42 = messagePayload4;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crop UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    anyObject = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:anyObject];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)handleAddOrUpdateFaceprintsMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling add/update faceprints message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277CD0B88];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v13 = [messageCopy unarchivedObjectForKey:v11 ofClasses:v12];

  if (v13)
  {
    dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
    v15 = [dataSource addOrUpdateFaceprints:v13];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__HMDHomeKitPersonDataInterface_handleAddOrUpdateFaceprintsMessage___block_invoke;
    v24[3] = &unk_279733BC0;
    v25 = messageCopy;
    v16 = [v15 addCompletionBlock:v24];

    v17 = v25;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find faceprints in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v17];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleAddOrUpdateFaceCropsMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling add/update face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277CD0B78];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v13 = [messageCopy unarchivedObjectForKey:v11 ofClasses:v12];

  if (v13)
  {
    dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
    v15 = [dataSource addOrUpdateFaceCrops:v13];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __67__HMDHomeKitPersonDataInterface_handleAddOrUpdateFaceCropsMessage___block_invoke;
    v24[3] = &unk_279733BC0;
    v25 = messageCopy;
    v16 = [v15 addCompletionBlock:v24];

    v17 = v25;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crops in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v17];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleAddOrUpdatePersonsMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling add/update persons message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277CD0B98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v13 = [messageCopy unarchivedObjectForKey:v11 ofClasses:v12];

  if (v13)
  {
    dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
    v15 = [dataSource addOrUpdatePersons:v13];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__HMDHomeKitPersonDataInterface_handleAddOrUpdatePersonsMessage___block_invoke;
    v24[3] = &unk_279733BC0;
    v25 = messageCopy;
    v16 = [v15 addCompletionBlock:v24];

    v17 = v25;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find persons in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v17];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchFaceprintsMessage:(id)message
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v32 = v9;
    v33 = 2112;
    v34 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch faceprints message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
  if ([dataSource isDataAvailable])
  {
    fetchServerFactory = [(HMDHomeKitPersonDataInterface *)selfCopy fetchServerFactory];
    v13 = (fetchServerFactory)[2](fetchServerFactory, messageCopy);

    if (v13)
    {
      v14 = [messageCopy setForKey:*MEMORY[0x277CD0B70]];
      if (v14)
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __62__HMDHomeKitPersonDataInterface_handleFetchFaceprintsMessage___block_invoke;
        v29[3] = &unk_27972D400;
        v15 = &v30;
        v30 = v13;
        [dataSource enumerateFaceprintsForFaceCropsWithUUIDs:v14 usingBlock:v29];
      }

      else
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __62__HMDHomeKitPersonDataInterface_handleFetchFaceprintsMessage___block_invoke_2;
        v27[3] = &unk_27972D400;
        v15 = &v28;
        v28 = v13;
        [dataSource enumerateFaceprintsUsingBlock:v27];
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __62__HMDHomeKitPersonDataInterface_handleFetchFaceprintsMessage___block_invoke_3;
      v25[3] = &unk_279735D00;
      v26 = messageCopy;
      [v13 sendCurrentlyBatchedFetchedObjectsWithCompletion:v25];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v23;
        v33 = 2112;
        v34 = messageCopy;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v14];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch faceprints because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v13];
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __62__HMDHomeKitPersonDataInterface_handleFetchFaceprintsMessage___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

uint64_t __62__HMDHomeKitPersonDataInterface_handleFetchFaceprintsMessage___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

- (void)handleFetchUnassociatedFaceCropsMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch unassociated face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
  if ([dataSource isDataAvailable])
  {
    fetchServerFactory = [(HMDHomeKitPersonDataInterface *)selfCopy fetchServerFactory];
    v13 = (fetchServerFactory)[2](fetchServerFactory, messageCopy);

    if (v13)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __73__HMDHomeKitPersonDataInterface_handleFetchUnassociatedFaceCropsMessage___block_invoke;
      v27[3] = &unk_27972D3B0;
      v14 = v13;
      v28 = v14;
      [dataSource enumerateUnassociatedFaceCropsUsingBlock:v27];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __73__HMDHomeKitPersonDataInterface_handleFetchUnassociatedFaceCropsMessage___block_invoke_2;
      v25[3] = &unk_279735D00;
      v26 = messageCopy;
      [v14 sendCurrentlyBatchedFetchedObjectsWithCompletion:v25];

      v15 = v28;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v23;
        v31 = 2112;
        v32 = messageCopy;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [messageCopy respondWithError:v15];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch face crops because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v13];
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMDHomeKitPersonDataInterface_handleFetchUnassociatedFaceCropsMessage___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

- (void)handleFetchPersonFaceCropsMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v39 = v9;
    v40 = 2112;
    v41 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch person face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
  if ([dataSource isDataAvailable])
  {
    v12 = [messageCopy setForKey:*MEMORY[0x277CD0B90]];
    if (v12)
    {
      v13 = [dataSource fetchFaceCropsForPersonsWithUUIDs:v12];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __67__HMDHomeKitPersonDataInterface_handleFetchPersonFaceCropsMessage___block_invoke;
      v36[3] = &unk_27972FFC8;
      v14 = messageCopy;
      v37 = v14;
      v15 = [v13 addSuccessBlock:v36];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __67__HMDHomeKitPersonDataInterface_handleFetchPersonFaceCropsMessage___block_invoke_2;
      v34[3] = &unk_2797359D8;
      v35 = v14;
      v16 = [v15 addFailureBlock:v34];

      v17 = v37;
    }

    else
    {
      fetchServerFactory = [(HMDHomeKitPersonDataInterface *)selfCopy fetchServerFactory];
      v17 = (fetchServerFactory)[2](fetchServerFactory, messageCopy);

      if (v17)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __67__HMDHomeKitPersonDataInterface_handleFetchPersonFaceCropsMessage___block_invoke_15;
        v32[3] = &unk_27972D3D8;
        v23 = v17;
        v33 = v23;
        [dataSource enumeratePersonFaceCropsUsingBlock:v32];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __67__HMDHomeKitPersonDataInterface_handleFetchPersonFaceCropsMessage___block_invoke_2_17;
        v30[3] = &unk_279735D00;
        v31 = messageCopy;
        [v23 sendCurrentlyBatchedFetchedObjectsWithCompletion:v30];

        v24 = v33;
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = messageCopy;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [messageCopy respondWithError:v24];
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch person face crops because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __67__HMDHomeKitPersonDataInterface_handleFetchPersonFaceCropsMessage___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *MEMORY[0x277CD0B78];
  v3 = encodeRootObjectForIncomingXPCMessage(a2, 0);
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 respondWithPayload:v4];

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __67__HMDHomeKitPersonDataInterface_handleFetchPersonFaceCropsMessage___block_invoke_15(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

- (void)handleFetchFaceCropsMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v39 = v9;
    v40 = 2112;
    v41 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
  if ([dataSource isDataAvailable])
  {
    v12 = [messageCopy setForKey:*MEMORY[0x277CD0B70]];
    if (v12)
    {
      v13 = [dataSource fetchFaceCropsWithUUIDs:v12];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __61__HMDHomeKitPersonDataInterface_handleFetchFaceCropsMessage___block_invoke;
      v36[3] = &unk_27972FFC8;
      v14 = messageCopy;
      v37 = v14;
      v15 = [v13 addSuccessBlock:v36];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __61__HMDHomeKitPersonDataInterface_handleFetchFaceCropsMessage___block_invoke_2;
      v34[3] = &unk_2797359D8;
      v35 = v14;
      v16 = [v15 addFailureBlock:v34];

      v17 = v37;
    }

    else
    {
      fetchServerFactory = [(HMDHomeKitPersonDataInterface *)selfCopy fetchServerFactory];
      v17 = (fetchServerFactory)[2](fetchServerFactory, messageCopy);

      if (v17)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __61__HMDHomeKitPersonDataInterface_handleFetchFaceCropsMessage___block_invoke_12;
        v32[3] = &unk_27972D3B0;
        v23 = v17;
        v33 = v23;
        [dataSource enumerateFaceCropsUsingBlock:v32];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __61__HMDHomeKitPersonDataInterface_handleFetchFaceCropsMessage___block_invoke_2_14;
        v30[3] = &unk_279735D00;
        v31 = messageCopy;
        [v23 sendCurrentlyBatchedFetchedObjectsWithCompletion:v30];

        v24 = v33;
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = messageCopy;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [messageCopy respondWithError:v24];
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch person face crops because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __61__HMDHomeKitPersonDataInterface_handleFetchFaceCropsMessage___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *MEMORY[0x277CD0B78];
  v3 = encodeRootObjectForIncomingXPCMessage(a2, 0);
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 respondWithPayload:v4];

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __61__HMDHomeKitPersonDataInterface_handleFetchFaceCropsMessage___block_invoke_12(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

- (void)handleFetchPersonsMessage:(id)message
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v34 = v9;
    v35 = 2112;
    v36 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch persons message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
  if ([dataSource isDataAvailable])
  {
    v12 = [messageCopy setForKey:*MEMORY[0x277CD0B90]];
    if (v12)
    {
      v13 = [dataSource personsWithUUIDs:v12];
      v31 = *MEMORY[0x277CD0B98];
      v14 = encodeRootObjectForIncomingXPCMessage(v13, 0);
      v32 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [messageCopy respondWithPayload:v15];
    }

    else
    {
      fetchServerFactory = [(HMDHomeKitPersonDataInterface *)selfCopy fetchServerFactory];
      v21 = (fetchServerFactory)[2](fetchServerFactory, messageCopy);

      if (v21)
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __59__HMDHomeKitPersonDataInterface_handleFetchPersonsMessage___block_invoke;
        v29[3] = &unk_27972D388;
        v13 = v21;
        v30 = v13;
        [dataSource enumeratePersonsUsingBlock:v29];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __59__HMDHomeKitPersonDataInterface_handleFetchPersonsMessage___block_invoke_2;
        v27[3] = &unk_279735D00;
        v28 = messageCopy;
        [v13 sendCurrentlyBatchedFetchedObjectsWithCompletion:v27];

        v14 = v30;
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v25;
          v35 = 2112;
          v36 = messageCopy;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [messageCopy respondWithError:v14];
        v13 = 0;
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch persons because data is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v12];
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __59__HMDHomeKitPersonDataInterface_handleFetchPersonsMessage___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [*(a1 + 32) handleFetchedObject:a2];
  result = [*(a1 + 32) canHandleMoreFetchedObjects];
  *a3 = result ^ 1;
  return result;
}

- (void)handlePerformCloudPullMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling perform cloud pull message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDHomeKitPersonDataInterface *)selfCopy dataSource];
  performCloudPull = [dataSource performCloudPull];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__HMDHomeKitPersonDataInterface_handlePerformCloudPullMessage___block_invoke;
  v15[3] = &unk_279733BC0;
  v16 = messageCopy;
  v12 = messageCopy;
  v13 = [performCloudPull addCompletionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleUnsubscribeMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling unsubscribe message", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = transport;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    clientConnectionsTimer = [(HMDHomeKitPersonDataInterface *)selfCopy clientConnectionsTimer];
    [clientConnectionsTimer removeClientConnection:v12];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      transport2 = [messageCopy transport];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = transport2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unsubscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleSubscribeMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = transport;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    clientConnectionsTimer = [(HMDHomeKitPersonDataInterface *)selfCopy clientConnectionsTimer];
    [clientConnectionsTimer addClientConnection:v12];

    [messageCopy respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      transport2 = [messageCopy transport];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = transport2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [messageCopy respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifySubscribersOfMessageWithName:(id)name payload:(id)payload
{
  v42 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  payloadCopy = payload;
  workQueue = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientConnectionsTimer = [(HMDHomeKitPersonDataInterface *)self clientConnectionsTimer];
  clientConnections = [clientConnectionsTimer clientConnections];
  v9 = [clientConnections count];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      clientConnectionsTimer2 = [(HMDHomeKitPersonDataInterface *)selfCopy clientConnectionsTimer];
      clientConnections2 = [clientConnectionsTimer2 clientConnections];
      *buf = 138543618;
      v39 = v14;
      v40 = 2048;
      v41 = [clientConnections2 count];
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu subscribers", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    clientConnectionsTimer3 = [(HMDHomeKitPersonDataInterface *)selfCopy clientConnectionsTimer];
    clientConnections3 = [clientConnectionsTimer3 clientConnections];

    v19 = [clientConnections3 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        v22 = 0;
        do
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(clientConnections3);
          }

          v23 = *(*(&v33 + 1) + 8 * v22);
          v24 = [MEMORY[0x277D0F848] entitledMessageWithName:nameCopy messagePayload:payloadCopy];
          [v24 setTransport:v23];
          v25 = objc_alloc(MEMORY[0x277D0F820]);
          uUID = [(HMDHomeKitPersonDataInterface *)selfCopy UUID];
          v27 = [v25 initWithTarget:uUID];
          [v24 setDestination:v27];

          [v24 setRequiresPersonManagerEntitlement];
          messageDispatcher = [(HMDHomeKitPersonDataInterface *)selfCopy messageDispatcher];
          [messageDispatcher sendMessage:v24];

          ++v22;
        }

        while (v20 != v22);
        v20 = [clientConnections3 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v20);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v29;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@No subscribed transports to notify", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (HMDHomeKitPersonDataInterface)initWithUUID:(id)d messageDispatcher:(id)dispatcher workQueue:(id)queue clientConnectionsTimer:(id)timer
{
  dCopy = d;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  timerCopy = timer;
  v23.receiver = self;
  v23.super_class = HMDHomeKitPersonDataInterface;
  v14 = [(HMDHomeKitPersonDataInterface *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, queue);
    v16 = [dCopy copy];
    UUID = v15->_UUID;
    v15->_UUID = v16;

    objc_storeStrong(&v15->_messageDispatcher, dispatcher);
    objc_storeStrong(&v15->_clientConnectionsTimer, timer);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__HMDHomeKitPersonDataInterface_initWithUUID_messageDispatcher_workQueue_clientConnectionsTimer___block_invoke;
    aBlock[3] = &unk_27972E7F0;
    v22 = queueCopy;
    v18 = _Block_copy(aBlock);
    fetchServerFactory = v15->_fetchServerFactory;
    v15->_fetchServerFactory = v18;
  }

  return v15;
}

id __97__HMDHomeKitPersonDataInterface_initWithUUID_messageDispatcher_workQueue_clientConnectionsTimer___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1918];
  v4 = a2;
  v5 = [[v3 alloc] initWithFetchMessage:v4 workQueue:*(a1 + 32)];

  return v5;
}

- (HMDHomeKitPersonDataInterface)initWithUUID:(id)d messageDispatcher:(id)dispatcher workQueue:(id)queue
{
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  dCopy = d;
  v11 = [HMDActiveXPCClientConnectionsPeriodicTimer alloc];
  uUIDString = [dCopy UUIDString];
  v13 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)v11 initWithTimeInterval:uUIDString logIdentifier:queueCopy workQueue:60.0];

  v14 = [(HMDHomeKitPersonDataInterface *)self initWithUUID:dCopy messageDispatcher:dispatcherCopy workQueue:queueCopy clientConnectionsTimer:v13];
  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42_135305 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42_135305, &__block_literal_global_135306);
  }

  v3 = logCategory__hmf_once_v43_135307;

  return v3;
}

uint64_t __44__HMDHomeKitPersonDataInterface_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v43_135307;
  logCategory__hmf_once_v43_135307 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end