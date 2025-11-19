@interface HMDHomeKitPersonDataInterface
+ (id)logCategory;
- (HMDHomeKitPersonDataInterface)initWithUUID:(id)a3 messageDispatcher:(id)a4 workQueue:(id)a5;
- (HMDHomeKitPersonDataInterface)initWithUUID:(id)a3 messageDispatcher:(id)a4 workQueue:(id)a5 clientConnectionsTimer:(id)a6;
- (HMDPersonDataSource)dataSource;
- (id)logIdentifier;
- (void)_notifySubscribersOfMessageWithName:(id)a3 payload:(id)a4;
- (void)clientConnectionsTimerDidFire:(id)a3;
- (void)configureWithDataSource:(id)a3 home:(id)a4;
- (void)handleAddOrUpdateFaceCropsMessage:(id)a3;
- (void)handleAddOrUpdateFaceprintsMessage:(id)a3;
- (void)handleAddOrUpdatePersonsMessage:(id)a3;
- (void)handleAssociateFaceCropsMessage:(id)a3;
- (void)handleDisassociateFaceCropsMessage:(id)a3;
- (void)handleFetchFaceCropsMessage:(id)a3;
- (void)handleFetchFaceprintsMessage:(id)a3;
- (void)handleFetchPersonFaceCropsMessage:(id)a3;
- (void)handleFetchPersonsMessage:(id)a3;
- (void)handleFetchUnassociatedFaceCropsMessage:(id)a3;
- (void)handlePerformCloudPullMessage:(id)a3;
- (void)handleRemoveFaceCropsMessage:(id)a3;
- (void)handleRemoveFaceprintsMessage:(id)a3;
- (void)handleRemovePersonsMessage:(id)a3;
- (void)handleRemovedFaceCropWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleRemovedFaceprintWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleRemovedPersonWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleSubscribeMessage:(id)a3;
- (void)handleUnsubscribeMessage:(id)a3;
- (void)handleUpdatedFaceprint:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedPerson:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedPersonFaceCrop:(id)a3 mirrorOutputFuture:(id)a4;
- (void)handleUpdatedUnassociatedFaceCrop:(id)a3 mirrorOutputFuture:(id)a4;
@end

@implementation HMDHomeKitPersonDataInterface

- (HMDPersonDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)clientConnectionsTimerDidFire:(id)a3
{
  v4 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v6 = [(HMDHomeKitPersonDataInterface *)self dataSource];
  v5 = [v6 performCloudPull];
}

- (void)handleRemovedFaceprintWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of removed faceprint UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{v6, *MEMORY[0x277CD0BA8]}];
  v17 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  [(HMDHomeKitPersonDataInterface *)v10 _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedFaceCropWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of removed face crop UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{v6, *MEMORY[0x277CD0BA0]}];
  v17 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  [(HMDHomeKitPersonDataInterface *)v10 _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedPersonWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of removed person UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{v6, *MEMORY[0x277CD0BB0]}];
  v17 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

  [(HMDHomeKitPersonDataInterface *)v10 _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedFaceprint:(id)a3 mirrorOutputFuture:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Notifying subscribers of updated faceprint: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{v6, *MEMORY[0x277CD0BC0]}];
  v14 = encodeRootObject();
  v18 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  [(HMDHomeKitPersonDataInterface *)v10 _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedPersonFaceCrop:(id)a3 mirrorOutputFuture:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v6 UUID];
    *buf = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Notifying subscribers of updated person face crop: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [MEMORY[0x277CBEB98] setWithObject:{v6, *MEMORY[0x277CD0BC8]}];
  v15 = encodeRootObject();
  v19 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  [(HMDHomeKitPersonDataInterface *)v10 _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v16];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedUnassociatedFaceCrop:(id)a3 mirrorOutputFuture:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of updated unassociated face crop: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{v6, *MEMORY[0x277CD0BD8]}];
  v14 = encodeRootObject();
  v18 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  [(HMDHomeKitPersonDataInterface *)v10 _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedPerson:(id)a3 mirrorOutputFuture:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v12;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Notifying subscribers of updated person: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [MEMORY[0x277CBEB98] setWithObject:{v6, *MEMORY[0x277CD0BD0]}];
  v14 = encodeRootObject();
  v18 = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

  [(HMDHomeKitPersonDataInterface *)v10 _notifySubscribersOfMessageWithName:*MEMORY[0x277CD0B38] payload:v15];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithDataSource:(id)a3 home:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v48 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring HomeKit person data interface", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDHomeKitPersonDataInterface *)v10 setDataSource:v6];
  v13 = [HMDXPCMessagePolicy policyWithEntitlements:8197];
  v41 = [HMDUserMessagePolicy userMessagePolicyWithHome:v7 userPrivilege:0 remoteAccessRequired:0];
  [HMDUserMessagePolicy userMessagePolicyWithHome:v7 userPrivilege:4 remoteAccessRequired:0];
  v14 = v42 = v6;
  v39 = [HMDConfigurationMessagePolicy policyWithOperationTypes:1];
  v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  v16 = v40 = v7;
  v46[0] = v13;
  v46[1] = v41;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  v18 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v18 registerForMessage:*MEMORY[0x277CD0C00] receiver:v10 policies:v17 selector:sel_handleSubscribeMessage_];

  v19 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v19 registerForMessage:*MEMORY[0x277CD0C08] receiver:v10 policies:v17 selector:sel_handleUnsubscribeMessage_];

  v20 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v20 registerForMessage:*MEMORY[0x277CD0BE0] receiver:v10 policies:v17 selector:sel_handlePerformCloudPullMessage_];

  v21 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v21 registerForMessage:*MEMORY[0x277CD0B60] receiver:v10 policies:v17 selector:sel_handleFetchPersonsMessage_];

  v22 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v22 registerForMessage:*MEMORY[0x277CD0B48] receiver:v10 policies:v17 selector:sel_handleFetchFaceCropsMessage_];

  v23 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v23 registerForMessage:*MEMORY[0x277CD0B58] receiver:v10 policies:v17 selector:sel_handleFetchPersonFaceCropsMessage_];

  v24 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v24 registerForMessage:*MEMORY[0x277CD0B68] receiver:v10 policies:v17 selector:sel_handleFetchUnassociatedFaceCropsMessage_];

  v25 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v25 registerForMessage:*MEMORY[0x277CD0B50] receiver:v10 policies:v17 selector:sel_handleFetchFaceprintsMessage_];

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
  v29 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v29 registerForMessage:*MEMORY[0x277CD0B28] receiver:v10 policies:v26 selector:sel_handleAddOrUpdatePersonsMessage_];

  v30 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v30 registerForMessage:*MEMORY[0x277CD0B18] receiver:v10 policies:v26 selector:sel_handleAddOrUpdateFaceCropsMessage_];

  v31 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v31 registerForMessage:*MEMORY[0x277CD0B20] receiver:v10 policies:v26 selector:sel_handleAddOrUpdateFaceprintsMessage_];

  v32 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v32 registerForMessage:*MEMORY[0x277CD0B30] receiver:v10 policies:v27 selector:sel_handleAssociateFaceCropsMessage_];

  v33 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v33 registerForMessage:*MEMORY[0x277CD0B40] receiver:v10 policies:v27 selector:sel_handleDisassociateFaceCropsMessage_];

  v34 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v34 registerForMessage:*MEMORY[0x277CD0BF8] receiver:v10 policies:v28 selector:sel_handleRemovePersonsMessage_];

  v35 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v35 registerForMessage:*MEMORY[0x277CD0BE8] receiver:v10 policies:v28 selector:sel_handleRemoveFaceCropsMessage_];

  v36 = [(HMDHomeKitPersonDataInterface *)v10 messageDispatcher];
  [v36 registerForMessage:*MEMORY[0x277CD0BF0] receiver:v10 policies:v28 selector:sel_handleRemoveFaceprintsMessage_];

  v37 = [(HMDHomeKitPersonDataInterface *)v10 clientConnectionsTimer];
  [v37 setDelegate:v10];

  v38 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDHomeKitPersonDataInterface *)self UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)handleRemoveFaceprintsMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remove face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 setForKey:*MEMORY[0x277CD0B80]];
  if (v11)
  {
    v12 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
    v13 = [v12 removeFaceprintsWithUUIDs:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __63__HMDHomeKitPersonDataInterface_handleRemoveFaceprintsMessage___block_invoke;
    v22[3] = &unk_279733BC0;
    v23 = v4;
    v14 = [v13 addCompletionBlock:v22];

    v15 = v23;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v4 messagePayload];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find faceprints UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v15];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveFaceCropsMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remove face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 setForKey:*MEMORY[0x277CD0B70]];
  if (v11)
  {
    v12 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
    v13 = [v12 removeFaceCropsWithUUIDs:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __62__HMDHomeKitPersonDataInterface_handleRemoveFaceCropsMessage___block_invoke;
    v22[3] = &unk_279733BC0;
    v23 = v4;
    v14 = [v13 addCompletionBlock:v22];

    v15 = v23;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v4 messagePayload];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crop UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v15];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovePersonsMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remove persons message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 setForKey:*MEMORY[0x277CD0B90]];
  if (v11)
  {
    v12 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
    v13 = [v12 removePersonsWithUUIDs:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__HMDHomeKitPersonDataInterface_handleRemovePersonsMessage___block_invoke;
    v22[3] = &unk_279733BC0;
    v23 = v4;
    v14 = [v13 addCompletionBlock:v22];

    v15 = v23;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v4 messagePayload];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find person UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v15];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleDisassociateFaceCropsMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling disassociate face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 setForKey:*MEMORY[0x277CD0B70]];
  if (v11)
  {
    v12 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
    v13 = [v12 disassociateFaceCropsWithUUIDs:v11];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __68__HMDHomeKitPersonDataInterface_handleDisassociateFaceCropsMessage___block_invoke;
    v22[3] = &unk_279733BC0;
    v23 = v4;
    v14 = [v13 addCompletionBlock:v22];

    v15 = v23;
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v4 messagePayload];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crop UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v15];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleAssociateFaceCropsMessage:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling associate face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 setForKey:*MEMORY[0x277CD0B70]];
  if (v11)
  {
    v12 = [v4 setForKey:*MEMORY[0x277CD0B90]];
    v13 = [v12 anyObject];

    if (v13)
    {
      v14 = [v4 numberForKey:*MEMORY[0x277CD0BB8]];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 integerValue];
        v17 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
        v18 = [v17 associateFaceCropsWithUUIDs:v11 toPersonWithUUID:v13 forSource:v16];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __65__HMDHomeKitPersonDataInterface_handleAssociateFaceCropsMessage___block_invoke;
        v37[3] = &unk_279733BC0;
        v38 = v4;
        v19 = [v18 addCompletionBlock:v37];

        v20 = v38;
      }

      else
      {
        v31 = objc_autoreleasePoolPush();
        v32 = v7;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v4 messagePayload];
          *buf = 138543618;
          v40 = v34;
          v41 = 2112;
          v42 = v35;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Could not find source in message payload: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [v4 respondWithError:v20];
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v7;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v4 messagePayload];
        *buf = 138543618;
        v40 = v29;
        v41 = 2112;
        v42 = v30;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Could not find person UUID in message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v4 respondWithError:v15];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v7;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v4 messagePayload];
      *buf = 138543618;
      v40 = v24;
      v41 = 2112;
      v42 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crop UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v13];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)handleAddOrUpdateFaceprintsMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling add/update faceprints message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277CD0B88];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v13 = [v4 unarchivedObjectForKey:v11 ofClasses:v12];

  if (v13)
  {
    v14 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
    v15 = [v14 addOrUpdateFaceprints:v13];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__HMDHomeKitPersonDataInterface_handleAddOrUpdateFaceprintsMessage___block_invoke;
    v24[3] = &unk_279733BC0;
    v25 = v4;
    v16 = [v15 addCompletionBlock:v24];

    v17 = v25;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v4 messagePayload];
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find faceprints in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v17];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleAddOrUpdateFaceCropsMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling add/update face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277CD0B78];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v13 = [v4 unarchivedObjectForKey:v11 ofClasses:v12];

  if (v13)
  {
    v14 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
    v15 = [v14 addOrUpdateFaceCrops:v13];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __67__HMDHomeKitPersonDataInterface_handleAddOrUpdateFaceCropsMessage___block_invoke;
    v24[3] = &unk_279733BC0;
    v25 = v4;
    v16 = [v15 addCompletionBlock:v24];

    v17 = v25;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v4 messagePayload];
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find face crops in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v17];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleAddOrUpdatePersonsMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling add/update persons message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277CD0B98];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v13 = [v4 unarchivedObjectForKey:v11 ofClasses:v12];

  if (v13)
  {
    v14 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
    v15 = [v14 addOrUpdatePersons:v13];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __65__HMDHomeKitPersonDataInterface_handleAddOrUpdatePersonsMessage___block_invoke;
    v24[3] = &unk_279733BC0;
    v25 = v4;
    v16 = [v15 addCompletionBlock:v24];

    v17 = v25;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v4 messagePayload];
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find persons in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v17];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchFaceprintsMessage:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch faceprints message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
  if ([v11 isDataAvailable])
  {
    v12 = [(HMDHomeKitPersonDataInterface *)v7 fetchServerFactory];
    v13 = (v12)[2](v12, v4);

    if (v13)
    {
      v14 = [v4 setForKey:*MEMORY[0x277CD0B70]];
      if (v14)
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __62__HMDHomeKitPersonDataInterface_handleFetchFaceprintsMessage___block_invoke;
        v29[3] = &unk_27972D400;
        v15 = &v30;
        v30 = v13;
        [v11 enumerateFaceprintsForFaceCropsWithUUIDs:v14 usingBlock:v29];
      }

      else
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __62__HMDHomeKitPersonDataInterface_handleFetchFaceprintsMessage___block_invoke_2;
        v27[3] = &unk_27972D400;
        v15 = &v28;
        v28 = v13;
        [v11 enumerateFaceprintsUsingBlock:v27];
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __62__HMDHomeKitPersonDataInterface_handleFetchFaceprintsMessage___block_invoke_3;
      v25[3] = &unk_279735D00;
      v26 = v4;
      [v13 sendCurrentlyBatchedFetchedObjectsWithCompletion:v25];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v7;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v23;
        v33 = 2112;
        v34 = v4;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v14];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
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
    [v4 respondWithError:v13];
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

- (void)handleFetchUnassociatedFaceCropsMessage:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch unassociated face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
  if ([v11 isDataAvailable])
  {
    v12 = [(HMDHomeKitPersonDataInterface *)v7 fetchServerFactory];
    v13 = (v12)[2](v12, v4);

    if (v13)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __73__HMDHomeKitPersonDataInterface_handleFetchUnassociatedFaceCropsMessage___block_invoke;
      v27[3] = &unk_27972D3B0;
      v14 = v13;
      v28 = v14;
      [v11 enumerateUnassociatedFaceCropsUsingBlock:v27];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __73__HMDHomeKitPersonDataInterface_handleFetchUnassociatedFaceCropsMessage___block_invoke_2;
      v25[3] = &unk_279735D00;
      v26 = v4;
      [v14 sendCurrentlyBatchedFetchedObjectsWithCompletion:v25];

      v15 = v28;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v7;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v23;
        v31 = 2112;
        v32 = v4;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [v4 respondWithError:v15];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
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
    [v4 respondWithError:v13];
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

- (void)handleFetchPersonFaceCropsMessage:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v39 = v9;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch person face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
  if ([v11 isDataAvailable])
  {
    v12 = [v4 setForKey:*MEMORY[0x277CD0B90]];
    if (v12)
    {
      v13 = [v11 fetchFaceCropsForPersonsWithUUIDs:v12];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __67__HMDHomeKitPersonDataInterface_handleFetchPersonFaceCropsMessage___block_invoke;
      v36[3] = &unk_27972FFC8;
      v14 = v4;
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
      v22 = [(HMDHomeKitPersonDataInterface *)v7 fetchServerFactory];
      v17 = (v22)[2](v22, v4);

      if (v17)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __67__HMDHomeKitPersonDataInterface_handleFetchPersonFaceCropsMessage___block_invoke_15;
        v32[3] = &unk_27972D3D8;
        v23 = v17;
        v33 = v23;
        [v11 enumeratePersonFaceCropsUsingBlock:v32];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __67__HMDHomeKitPersonDataInterface_handleFetchPersonFaceCropsMessage___block_invoke_2_17;
        v30[3] = &unk_279735D00;
        v31 = v4;
        [v23 sendCurrentlyBatchedFetchedObjectsWithCompletion:v30];

        v24 = v33;
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v7;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = v4;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [v4 respondWithError:v24];
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
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
    [v4 respondWithError:v12];
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

- (void)handleFetchFaceCropsMessage:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v39 = v9;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch face crops message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
  if ([v11 isDataAvailable])
  {
    v12 = [v4 setForKey:*MEMORY[0x277CD0B70]];
    if (v12)
    {
      v13 = [v11 fetchFaceCropsWithUUIDs:v12];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __61__HMDHomeKitPersonDataInterface_handleFetchFaceCropsMessage___block_invoke;
      v36[3] = &unk_27972FFC8;
      v14 = v4;
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
      v22 = [(HMDHomeKitPersonDataInterface *)v7 fetchServerFactory];
      v17 = (v22)[2](v22, v4);

      if (v17)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __61__HMDHomeKitPersonDataInterface_handleFetchFaceCropsMessage___block_invoke_12;
        v32[3] = &unk_27972D3B0;
        v23 = v17;
        v33 = v23;
        [v11 enumerateFaceCropsUsingBlock:v32];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __61__HMDHomeKitPersonDataInterface_handleFetchFaceCropsMessage___block_invoke_2_14;
        v30[3] = &unk_279735D00;
        v31 = v4;
        [v23 sendCurrentlyBatchedFetchedObjectsWithCompletion:v30];

        v24 = v33;
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v7;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v28;
          v40 = 2112;
          v41 = v4;
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [v4 respondWithError:v24];
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
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
    [v4 respondWithError:v12];
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

- (void)handleFetchPersonsMessage:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling fetch persons message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
  if ([v11 isDataAvailable])
  {
    v12 = [v4 setForKey:*MEMORY[0x277CD0B90]];
    if (v12)
    {
      v13 = [v11 personsWithUUIDs:v12];
      v31 = *MEMORY[0x277CD0B98];
      v14 = encodeRootObjectForIncomingXPCMessage(v13, 0);
      v32 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      [v4 respondWithPayload:v15];
    }

    else
    {
      v20 = [(HMDHomeKitPersonDataInterface *)v7 fetchServerFactory];
      v21 = (v20)[2](v20, v4);

      if (v21)
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __59__HMDHomeKitPersonDataInterface_handleFetchPersonsMessage___block_invoke;
        v29[3] = &unk_27972D388;
        v13 = v21;
        v30 = v13;
        [v11 enumeratePersonsUsingBlock:v29];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __59__HMDHomeKitPersonDataInterface_handleFetchPersonsMessage___block_invoke_2;
        v27[3] = &unk_279735D00;
        v28 = v4;
        [v13 sendCurrentlyBatchedFetchedObjectsWithCompletion:v27];

        v14 = v30;
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v7;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v25;
          v35 = 2112;
          v36 = v4;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create fetch server from message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        [v4 respondWithError:v14];
        v13 = 0;
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v7;
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
    [v4 respondWithError:v12];
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

- (void)handlePerformCloudPullMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v18 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling perform cloud pull message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDHomeKitPersonDataInterface *)v7 dataSource];
  v11 = [v10 performCloudPull];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__HMDHomeKitPersonDataInterface_handlePerformCloudPullMessage___block_invoke;
  v15[3] = &unk_279733BC0;
  v16 = v4;
  v12 = v4;
  v13 = [v11 addCompletionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleUnsubscribeMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling unsubscribe message", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HMDHomeKitPersonDataInterface *)v7 clientConnectionsTimer];
    [v13 removeClientConnection:v12];

    [v4 respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      v19 = [v4 transport];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unsubscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleSubscribeMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling subscribe message", &v22, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [(HMDHomeKitPersonDataInterface *)v7 clientConnectionsTimer];
    [v13 addClientConnection:v12];

    [v4 respondWithSuccess];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = objc_opt_class();
      v19 = [v4 transport];
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Subscribing transport was not of expected class %@: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_notifySubscribersOfMessageWithName:(id)a3 payload:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v31 = a4;
  v6 = [(HMDHomeKitPersonDataInterface *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDHomeKitPersonDataInterface *)self clientConnectionsTimer];
  v8 = [v7 clientConnections];
  v9 = [v8 count];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDHomeKitPersonDataInterface *)v11 clientConnectionsTimer];
      v16 = [v15 clientConnections];
      *buf = 138543618;
      v39 = v14;
      v40 = 2048;
      v41 = [v16 count];
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Notifying %lu subscribers", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = [(HMDHomeKitPersonDataInterface *)v11 clientConnectionsTimer];
    v18 = [v17 clientConnections];

    v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v33 + 1) + 8 * v22);
          v24 = [MEMORY[0x277D0F848] entitledMessageWithName:v32 messagePayload:v31];
          [v24 setTransport:v23];
          v25 = objc_alloc(MEMORY[0x277D0F820]);
          v26 = [(HMDHomeKitPersonDataInterface *)v11 UUID];
          v27 = [v25 initWithTarget:v26];
          [v24 setDestination:v27];

          [v24 setRequiresPersonManagerEntitlement];
          v28 = [(HMDHomeKitPersonDataInterface *)v11 messageDispatcher];
          [v28 sendMessage:v24];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
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

- (HMDHomeKitPersonDataInterface)initWithUUID:(id)a3 messageDispatcher:(id)a4 workQueue:(id)a5 clientConnectionsTimer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = HMDHomeKitPersonDataInterface;
  v14 = [(HMDHomeKitPersonDataInterface *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_workQueue, a5);
    v16 = [v10 copy];
    UUID = v15->_UUID;
    v15->_UUID = v16;

    objc_storeStrong(&v15->_messageDispatcher, a4);
    objc_storeStrong(&v15->_clientConnectionsTimer, a6);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__HMDHomeKitPersonDataInterface_initWithUUID_messageDispatcher_workQueue_clientConnectionsTimer___block_invoke;
    aBlock[3] = &unk_27972E7F0;
    v22 = v12;
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

- (HMDHomeKitPersonDataInterface)initWithUUID:(id)a3 messageDispatcher:(id)a4 workQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [HMDActiveXPCClientConnectionsPeriodicTimer alloc];
  v12 = [v10 UUIDString];
  v13 = [(HMDActiveXPCClientConnectionsPeriodicTimer *)v11 initWithTimeInterval:v12 logIdentifier:v8 workQueue:60.0];

  v14 = [(HMDHomeKitPersonDataInterface *)self initWithUUID:v10 messageDispatcher:v9 workQueue:v8 clientConnectionsTimer:v13];
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