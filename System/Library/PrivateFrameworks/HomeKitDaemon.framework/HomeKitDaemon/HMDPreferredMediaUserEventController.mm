@interface HMDPreferredMediaUserEventController
- (HMDPreferredMediaUserEventController)initWithDataSource:(id)source queue:(id)queue driver:(id)driver;
- (HMDPreferredMediaUserEventControllerDataSource)dataSource;
- (id)eventSource;
- (void)_postUpdateEventsIfDifferent:(id)different;
- (void)driver:(id)driver didUpdatePrimaryUserInfo:(id)info;
- (void)driver:(id)driver didUpdateSettings:(id)settings;
- (void)driverDidReload:(id)reload;
- (void)updatePreferredMediaUserWithPrimaryUserInfo:(id)info completion:(id)completion;
@end

@implementation HMDPreferredMediaUserEventController

- (HMDPreferredMediaUserEventControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)driverDidReload:(id)reload
{
  v12 = *MEMORY[0x277D85DE8];
  reloadCopy = reload;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@PrimaryUserInfo fetch is not supported", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)driver:(id)driver didUpdatePrimaryUserInfo:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  driverCopy = driver;
  infoCopy = info;
  queue = [(HMDPreferredMediaUserEventController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = infoCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received primaryUserInfo updates: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMDPreferredMediaUserEventController *)selfCopy _postUpdateEventsIfDifferent:infoCopy];
  dataSource = [(HMDPreferredMediaUserEventController *)selfCopy dataSource];
  if (dataSource)
  {
    uuidString = [infoCopy uuidString];
    [dataSource updatePreferredMediaUser:uuidString selectionType:{objc_msgSend(infoCopy, "selectionType")}];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot update primaryUserInfo in the accessory because dataSource is nil", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)driver:(id)driver didUpdateSettings:(id)settings
{
  v15 = *MEMORY[0x277D85DE8];
  driverCopy = driver;
  settingsCopy = settings;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Only primaryUserInfo settings is supported.", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_postUpdateEventsIfDifferent:(id)different
{
  v58 = *MEMORY[0x277D85DE8];
  differentCopy = different;
  queue = [(HMDPreferredMediaUserEventController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v9;
    v54 = 2112;
    v55 = differentCopy;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Posting event to update primaryUserInfo: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  dataSource = [(HMDPreferredMediaUserEventController *)selfCopy dataSource];
  v11 = dataSource;
  if (dataSource)
  {
    accessoryUUID = [dataSource accessoryUUID];
    homeUUID = [v11 homeUUID];
    if (![v11 isCurrentAccessory])
    {
LABEL_27:

      goto LABEL_28;
    }

    if (!accessoryUUID || !homeUUID)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v53 = v31;
        v54 = 2112;
        v55 = homeUUID;
        v56 = 2112;
        v57 = accessoryUUID;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unexpected nil value in homeUUID: %@, accessoryUUID: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_27;
    }

    v14 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA78] homeUUID:homeUUID accessoryUUID:accessoryUUID];
    eventStoreReadHandle = [v11 eventStoreReadHandle];
    v16 = [eventStoreReadHandle lastEventForTopic:v14];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CD1708]);
      encodedData = [v16 encodedData];
      v19 = [v17 initWithProtoData:encodedData];

      if (v19)
      {
        if ([v19 isEqual:differentCopy])
        {
          v20 = objc_autoreleasePoolPush();
          v21 = selfCopy;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v23 = v48 = v20;
            *buf = 138543362;
            v53 = v23;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Skip sending event update for primaryUserInfo as it matches stored", buf, 0xCu);

            v20 = v48;
          }

          objc_autoreleasePoolPop(v20);
LABEL_26:

          goto LABEL_27;
        }

LABEL_23:
        v50 = v16;
        v36 = objc_autoreleasePoolPush();
        v37 = selfCopy;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543874;
          v53 = v39;
          v54 = 2112;
          v55 = v14;
          v56 = 2112;
          v57 = differentCopy;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Forwarding event with topic: %@ for primaryUserInfo: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v36);
        v40 = objc_alloc(MEMORY[0x277D174B0]);
        eventSource = [(HMDPreferredMediaUserEventController *)v37 eventSource];
        [(HMDPreferredMediaUserEventController *)v37 eventTimestamp];
        v42 = [v40 initWithSource:eventSource cachePolicy:2 combineType:2 timestamp:?];

        v43 = objc_alloc(MEMORY[0x277D174A0]);
        protoData = [differentCopy protoData];
        v45 = [v43 initWithEventData:protoData metadata:v42];

        eventForwarder = [v11 eventForwarder];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __69__HMDPreferredMediaUserEventController__postUpdateEventsIfDifferent___block_invoke;
        v51[3] = &unk_27868A250;
        v51[4] = v37;
        [eventForwarder forwardEvent:v45 topic:v14 completion:v51];

        v16 = v50;
        goto LABEL_26;
      }

      v32 = objc_autoreleasePoolPush();
      v33 = selfCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v49 = v32;
        *buf = 138543618;
        v53 = v35;
        v54 = 2112;
        v55 = v14;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Error reading stored primary user for topic %@", buf, 0x16u);

        v32 = v49;
      }

      objc_autoreleasePoolPop(v32);
    }

    v19 = 0;
    goto LABEL_23;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = selfCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v27;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot post primaryUserInfo update event because dataSource is nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
LABEL_28:

  v47 = *MEMORY[0x277D85DE8];
}

void __69__HMDPreferredMediaUserEventController__postUpdateEventsIfDifferent___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error in forwarding the primary user event: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)eventSource
{
  dataSource = [(HMDPreferredMediaUserEventController *)self dataSource];
  accessoryUUID = [dataSource accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];

  return uUIDString;
}

- (void)updatePreferredMediaUserWithPrimaryUserInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  queue = [(HMDPreferredMediaUserEventController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__HMDPreferredMediaUserEventController_updatePreferredMediaUserWithPrimaryUserInfo_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

void __95__HMDPreferredMediaUserEventController_updatePreferredMediaUserWithPrimaryUserInfo_completion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) uuidString];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "selectionType")}];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating preferred media user: %@, type: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) driver];
  [v8 updateSettingWithKeyPath:@"root.home.primaryUser" primaryUserInfo:*(a1 + 40) completion:*(a1 + 48)];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDPreferredMediaUserEventController)initWithDataSource:(id)source queue:(id)queue driver:(id)driver
{
  sourceCopy = source;
  queueCopy = queue;
  driverCopy = driver;
  v14.receiver = self;
  v14.super_class = HMDPreferredMediaUserEventController;
  v11 = [(HMDPreferredMediaUserEventController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v12->_driver, driver);
    [(HMDFetchedSettingsDriver *)v12->_driver setDelegate:v12];
  }

  return v12;
}

@end