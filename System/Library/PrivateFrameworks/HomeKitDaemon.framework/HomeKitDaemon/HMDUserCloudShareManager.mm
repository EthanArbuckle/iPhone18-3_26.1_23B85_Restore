@interface HMDUserCloudShareManager
+ (id)logCategory;
- (HMDHomeManager)homeManager;
- (HMDUserCloudShareManager)initWithHomeManager:(id)manager;
- (HMDUserCloudShareManager)initWithHomeManager:(id)manager dependency:(id)dependency;
- (id)messageDestination;
- (id)userCloudShareController:(id)controller timerWithInterval:(double)interval;
- (void)_handleAccessoryAdded:(id)added;
- (void)_handleDeregisterRequest:(id)request;
- (void)_handleEnableMultiUserChangedNotification:(id)notification;
- (void)_handleLocalHomeDataRemovedNotification:(id *)notification;
- (void)_handleRegisterRequest:(id)request;
- (void)_handleUserSettingsUpdatedNotification:(id)notification;
- (void)configureWithMessageDispatcher:(id)dispatcher;
- (void)handleHomeChangedNotification:(id)notification;
- (void)handleRemoteUserClientCloudShareRepairRequest:(id)request;
- (void)handleRemoteUserClientCloudShareRequest:(id)request;
- (void)handleUsersChangedNotification:(id)notification;
- (void)handleXPCConnectionInvalidated:(id)invalidated;
- (void)registerForMessages;
- (void)userCloudShareController:(id)controller sendRepairInfo:(id)info toConnection:(id)connection home:(id)home containerID:(id)d;
- (void)userCloudShareController:(id)controller sendShareRequestMessageWithConnection:(id)connection fromUser:(id)user toUser:(id)toUser home:(id)home shareURL:(id)l shareToken:(id)token containerID:(id)self0 completion:(id)self1;
- (void)userCloudShareController:(id)controller wakeClientForRepairWithContainerID:(id)d;
- (void)userCloudShareController:(id)controller wakeClientWithContainerID:(id)d;
@end

@implementation HMDUserCloudShareManager

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDUserCloudShareManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)handleXPCConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDUserCloudShareManager_handleXPCConnectionInvalidated___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = invalidatedCopy;
  selfCopy = self;
  v6 = invalidatedCopy;
  dispatch_async(clientQueue, v7);
}

void __59__HMDUserCloudShareManager_handleXPCConnectionInvalidated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"connection"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 40) userCloudShareController];
    [v6 invalidateXpcClient:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received connection invalidated notification, but no connection object was found: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeregisterRequest:(id)request
{
  requestCopy = request;
  transport = [requestCopy transport];

  if (transport)
  {
    transport2 = [requestCopy transport];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = transport2;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      userCloudShareController = [(HMDUserCloudShareManager *)self userCloudShareController];
      [userCloudShareController deregisterXpcClient:v7];
    }
  }

  responseHandler = [requestCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [requestCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }
}

- (void)handleRemoteUserClientCloudShareRepairRequest:(id)request
{
  requestCopy = request;
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRepairRequest___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(clientQueue, v7);
}

void __74__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRepairRequest___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuidForKey:*MEMORY[0x277CD1478]];
  v3 = [*(a1 + 40) homeManager];
  v4 = [v3 _homeWithUUID:v2];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      *buf = 138543618;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Handling share repair message %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [*(a1 + 40) userCloudShareController];
    v12 = [*(a1 + 32) messagePayload];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRepairRequest___block_invoke_80;
    v17[3] = &unk_27868A250;
    v18 = *(a1 + 32);
    [v11 handleShareRepairForRemoteClientRequest:v12 home:v4 completion:v17];

    v13 = v18;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Could not find home for share repair request on remote.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v15 = *(a1 + 32);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Home in share repair request not found in remote." reason:@"Home is needed for share repair" suggestion:0];
    [v15 respondWithError:v13];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __74__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRepairRequest___block_invoke_80(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

- (void)handleRemoteUserClientCloudShareRequest:(id)request
{
  requestCopy = request;
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRequest___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(clientQueue, v7);
}

void __68__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRequest___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuidForKey:*MEMORY[0x277CD1478]];
  v3 = [*(a1 + 40) homeManager];
  v4 = [v3 _homeWithUUID:v2];

  if (v4)
  {
    v5 = [*(a1 + 40) userCloudShareController];
    v6 = [*(a1 + 32) messagePayload];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRequest___block_invoke_2;
    v17[3] = &unk_278683F48;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v18 = v7;
    v19 = v8;
    [v5 handleShareForRemoteClientRequest:v6 home:v4 completionHandler:v17];

    v9 = v18;
LABEL_7:

    goto LABEL_8;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not find home for share request on remote.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [*(a1 + 32) responseHandler];

  if (v14)
  {
    v9 = [*(a1 + 32) responseHandler];
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Home in share request not found in remote." reason:@"Home is needed to share" suggestion:0];
    (v9)[2](v9, v15, 0);

    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

void __68__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRequest___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) responseHandler];

  if (v7)
  {
    if (v5)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Forwarding received client info.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v15 = *MEMORY[0x277CD1458];
      v16 = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    }

    else
    {
      v12 = 0;
    }

    v13 = [*(a1 + 32) responseHandler];
    (v13)[2](v13, v6, v12);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleRegisterRequest:(id)request
{
  v34 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  transport = [requestCopy transport];

  if (transport)
  {
    transport2 = [requestCopy transport];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = transport2;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Found xpc connection in message", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v14 = [requestCopy arrayForKey:*MEMORY[0x277CD1320]];
      if (v14)
      {
        userCloudShareController = [(HMDUserCloudShareManager *)selfCopy userCloudShareController];
        [userCloudShareController registerWithXpcClient:v8 containerIDs:v14];

        v16 = 0;
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          applicationBundleIdentifier = [v8 applicationBundleIdentifier];
          v30 = 138543618;
          v31 = v25;
          v32 = 2112;
          v33 = applicationBundleIdentifier;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Missing container IDs while trying to register from process %@", &v30, 0x16u);
        }

        objc_autoreleasePoolPop(v22);
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Container IDs required" reason:@"No containerIDs specified" suggestion:0];
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v21;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Transport is not XPC connection.", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Transport is not XPC" reason:@"Need xpc connection" suggestion:0];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@No transport on message.", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Did not find transport" reason:@"Need xpc connection" suggestion:0];
  }

  responseHandler = [requestCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [requestCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v16, 0);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleLocalHomeDataRemovedNotification:(id *)notification
{
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDUserCloudShareManager__handleLocalHomeDataRemovedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __68__HMDUserCloudShareManager__handleLocalHomeDataRemovedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Local home data removed, notifying clients", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleUserSettingsUpdatedNotification:(id)notification
{
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDUserCloudShareManager__handleUserSettingsUpdatedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __67__HMDUserCloudShareManager__handleUserSettingsUpdatedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@User settings updated, notifying clients.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleEnableMultiUserChangedNotification:(id)notification
{
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDUserCloudShareManager__handleEnableMultiUserChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __70__HMDUserCloudShareManager__handleEnableMultiUserChangedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Enable Multi-User changed, notifying clients.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleAccessoryAdded:(id)added
{
  addedCopy = added;
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDUserCloudShareManager__handleAccessoryAdded___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = addedCopy;
  selfCopy = self;
  v6 = addedCopy;
  dispatch_async(clientQueue, v7);
}

void __50__HMDUserCloudShareManager__handleAccessoryAdded___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDNotificationAddedAccessoryKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client on adding accessory %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) _postMultiUserStatusChangedNotification];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleUsersChangedNotification:(id)notification
{
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDUserCloudShareManager_handleUsersChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __59__HMDUserCloudShareManager_handleUsersChangedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client on users changed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleHomeChangedNotification:(id)notification
{
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDUserCloudShareManager_handleHomeChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __58__HMDUserCloudShareManager_handleHomeChangedNotification___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client on home change", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)userCloudShareController:(id)controller timerWithInterval:(double)interval
{
  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:interval];

  return v4;
}

- (void)userCloudShareController:(id)controller wakeClientForRepairWithContainerID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%@", *MEMORY[0x277CD1340], dCopy];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client to repair share %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  notify_post([dCopy UTF8String]);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)userCloudShareController:(id)controller wakeClientWithContainerID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  dCopy = d;
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%@", *MEMORY[0x277CD1350], dCopy];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  notify_post([dCopy UTF8String]);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)userCloudShareController:(id)controller sendRepairInfo:(id)info toConnection:(id)connection home:(id)home containerID:(id)d
{
  v27[3] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CD1468];
  v27[0] = d;
  v12 = *MEMORY[0x277CD1498];
  v26[0] = v11;
  v26[1] = v12;
  dCopy = d;
  homeCopy = home;
  connectionCopy = connection;
  v16 = encodeRootObjectForIncomingXPCMessage(info, 0);
  v27[1] = v16;
  v26[2] = *MEMORY[0x277CD1480];
  uuid = [homeCopy uuid];

  v27[2] = uuid;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

  v19 = objc_alloc(MEMORY[0x277D0F820]);
  v20 = objc_alloc(MEMORY[0x277CCAD78]);
  v21 = [v20 initWithUUIDString:*MEMORY[0x277CD1348]];
  v22 = [v19 initWithTarget:v21];

  v23 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD1328] destination:v22 payload:v18];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__HMDUserCloudShareManager_userCloudShareController_sendRepairInfo_toConnection_home_containerID___block_invoke;
  v25[3] = &unk_27868A250;
  v25[4] = self;
  [connectionCopy sendMessage:v23 completionHandler:v25];

  v24 = *MEMORY[0x277D85DE8];
}

void __98__HMDUserCloudShareManager_userCloudShareController_sendRepairInfo_toConnection_home_containerID___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message to client.", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)userCloudShareController:(id)controller sendShareRequestMessageWithConnection:(id)connection fromUser:(id)user toUser:(id)toUser home:(id)home shareURL:(id)l shareToken:(id)token containerID:(id)self0 completion:(id)self1
{
  v52[6] = *MEMORY[0x277D85DE8];
  lCopy = l;
  tokenCopy = token;
  dCopy = d;
  completionCopy = completion;
  v19 = *MEMORY[0x277CD14A8];
  if (tokenCopy)
  {
    v51[0] = *MEMORY[0x277CD14A8];
    homeCopy = home;
    userCopy = user;
    connectionCopy = connection;
    v23 = encodeRootObjectForIncomingXPCMessage(toUser, 0);
    v52[0] = v23;
    v51[1] = *MEMORY[0x277CD1470];
    v24 = encodeRootObjectForIncomingXPCMessage(userCopy, 0);

    v52[1] = v24;
    v51[2] = *MEMORY[0x277CD1478];
    v25 = encodeRootObjectForIncomingXPCMessage(homeCopy, 0);

    v26 = *MEMORY[0x277CD14B8];
    v52[2] = v25;
    v52[3] = lCopy;
    v27 = *MEMORY[0x277CD14B0];
    v51[3] = v26;
    v51[4] = v27;
    v51[5] = *MEMORY[0x277CD1468];
    v52[4] = tokenCopy;
    v52[5] = dCopy;
    v28 = MEMORY[0x277CBEAC0];
    v29 = v52;
    v30 = v51;
    v31 = 6;
  }

  else
  {
    v49[0] = *MEMORY[0x277CD14A8];
    homeCopy2 = home;
    userCopy2 = user;
    connectionCopy2 = connection;
    v23 = encodeRootObjectForIncomingXPCMessage(toUser, 0);
    v50[0] = v23;
    v49[1] = *MEMORY[0x277CD1470];
    v24 = encodeRootObjectForIncomingXPCMessage(userCopy2, 0);

    v50[1] = v24;
    v49[2] = *MEMORY[0x277CD1478];
    v25 = encodeRootObjectForIncomingXPCMessage(homeCopy2, 0);

    v35 = *MEMORY[0x277CD14B8];
    v50[2] = v25;
    v50[3] = lCopy;
    v36 = *MEMORY[0x277CD1468];
    v49[3] = v35;
    v49[4] = v36;
    v50[4] = dCopy;
    v28 = MEMORY[0x277CBEAC0];
    v29 = v50;
    v30 = v49;
    v31 = 5;
  }

  v37 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];

  v38 = MEMORY[0x277D0F818];
  v39 = *MEMORY[0x277CD1330];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __155__HMDUserCloudShareManager_userCloudShareController_sendShareRequestMessageWithConnection_fromUser_toUser_home_shareURL_shareToken_containerID_completion___block_invoke;
  v47[3] = &unk_278685AF8;
  v47[4] = self;
  v40 = completionCopy;
  v48 = v40;
  v41 = [v38 messageWithName:v39 messagePayload:v37 responseHandler:v47];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __155__HMDUserCloudShareManager_userCloudShareController_sendShareRequestMessageWithConnection_fromUser_toUser_home_shareURL_shareToken_containerID_completion___block_invoke_47;
  v45[3] = &unk_278689A68;
  v45[4] = self;
  v46 = v40;
  v42 = v40;
  [connection sendMessage:v41 completionHandler:v45];

  v43 = *MEMORY[0x277D85DE8];
}

void __155__HMDUserCloudShareManager_userCloudShareController_sendShareRequestMessageWithConnection_fromUser_toUser_home_shareURL_shareToken_containerID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Got error from client %@.", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD1318]];
  v13 = [v12 BOOLValue];

  if ((v13 & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@No error but client did not accept share, treating as error.", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Client failed to accept share" reason:@"Did not accept share" suggestion:0];
    goto LABEL_10;
  }

  v14 = [v7 hmf_dataForKey:*MEMORY[0x277CD1310]];
  v5 = 0;
LABEL_11:
  (*(*(a1 + 40) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

void __155__HMDUserCloudShareManager_userCloudShareController_sendShareRequestMessageWithConnection_fromUser_toUser_home_shareURL_shareToken_containerID_completion___block_invoke_47(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message to client.", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v16 = *MEMORY[0x277D85DE8];
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  dispatch_assert_queue_V2(clientQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Registering for user share messages.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  messageDispatcher = [(HMDUserCloudShareManager *)selfCopy messageDispatcher];
  v9 = *MEMORY[0x277CD1338];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v13 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [messageDispatcher registerForMessage:v9 receiver:selfCopy policies:v11 selector:sel__handleRegisterRequest_];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  clientQueue = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDUserCloudShareManager_configureWithMessageDispatcher___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dispatcherCopy;
  v6 = dispatcherCopy;
  dispatch_async(clientQueue, v7);
}

void __59__HMDUserCloudShareManager_configureWithMessageDispatcher___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) homeManager];
  [*(a1 + 32) setMessageDispatcher:*(a1 + 40)];
  [*(a1 + 32) registerForMessages];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_handleHomeChangedNotification_ name:@"HMDHomeAddedNotification" object:v10];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel_handleHomeChangedNotification_ name:@"HMDHomeRemovedNotification" object:v10];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel_handleXPCConnectionInvalidated_ name:@"HMDXPCClientConnectionDidInvalidateNotification" object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel__handleAccessoryAdded_ name:@"HMDNotificationHomeAddedAccessory" object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__handleEnableMultiUserChangedNotification_ name:*MEMORY[0x277CD0448] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:*(a1 + 32) selector:sel__handleUserSettingsUpdatedNotification_ name:@"HMDUserSettingsUpdatedNotificationKey" object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:*(a1 + 32) selector:sel__handleLocalHomeDataRemovedNotification_ name:@"HMDHomeManagerLocalHomeDataRemovedNotification" object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:*(a1 + 32) selector:sel_handleUsersChangedNotification_ name:@"HMDHomeUserRemovedNotification" object:0];
}

- (HMDUserCloudShareManager)initWithHomeManager:(id)manager dependency:(id)dependency
{
  managerCopy = manager;
  dependencyCopy = dependency;
  v20.receiver = self;
  v20.super_class = HMDUserCloudShareManager;
  v8 = [(HMDUserCloudShareManager *)&v20 init];
  if (v8)
  {
    v9 = HMDispatchQueueNameString();
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    clientQueue = v8->_clientQueue;
    v8->_clientQueue = v12;

    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    v15 = [v14 initWithUUIDString:*MEMORY[0x277CD1348]];
    identifier = v8->_identifier;
    v8->_identifier = v15;

    objc_storeWeak(&v8->_homeManager, managerCopy);
    v17 = [dependencyCopy createUserCloudShareControllerWithDelegate:v8 queue:v8->_clientQueue];
    userCloudShareController = v8->_userCloudShareController;
    v8->_userCloudShareController = v17;
  }

  return v8;
}

- (HMDUserCloudShareManager)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v5 = objc_alloc_init(HMDUserCloudShareManagerCreatorDependency);
  v6 = [(HMDUserCloudShareManager *)self initWithHomeManager:managerCopy dependency:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26, &__block_literal_global_2488);
  }

  v3 = logCategory__hmf_once_v27;

  return v3;
}

void __39__HMDUserCloudShareManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27;
  logCategory__hmf_once_v27 = v1;
}

@end