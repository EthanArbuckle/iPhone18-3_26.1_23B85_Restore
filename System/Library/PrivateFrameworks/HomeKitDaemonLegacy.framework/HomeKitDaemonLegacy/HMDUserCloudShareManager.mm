@interface HMDUserCloudShareManager
+ (id)logCategory;
- (HMDHomeManager)homeManager;
- (HMDUserCloudShareManager)initWithHomeManager:(id)a3;
- (HMDUserCloudShareManager)initWithHomeManager:(id)a3 dependency:(id)a4;
- (id)messageDestination;
- (id)userCloudShareController:(id)a3 timerWithInterval:(double)a4;
- (void)_handleAccessoryAdded:(id)a3;
- (void)_handleDeregisterRequest:(id)a3;
- (void)_handleEnableMultiUserChangedNotification:(id)a3;
- (void)_handleLocalHomeDataRemovedNotification:(id *)a3;
- (void)_handleRegisterRequest:(id)a3;
- (void)_handleUserSettingsUpdatedNotification:(id)a3;
- (void)configureWithMessageDispatcher:(id)a3;
- (void)handleHomeChangedNotification:(id)a3;
- (void)handleRemoteUserClientCloudShareRepairRequest:(id)a3;
- (void)handleRemoteUserClientCloudShareRequest:(id)a3;
- (void)handleUsersChangedNotification:(id)a3;
- (void)handleXPCConnectionInvalidated:(id)a3;
- (void)registerForMessages;
- (void)userCloudShareController:(id)a3 sendRepairInfo:(id)a4 toConnection:(id)a5 home:(id)a6 containerID:(id)a7;
- (void)userCloudShareController:(id)a3 sendShareRequestMessageWithConnection:(id)a4 fromUser:(id)a5 toUser:(id)a6 home:(id)a7 shareURL:(id)a8 shareToken:(id)a9 containerID:(id)a10 completion:(id)a11;
- (void)userCloudShareController:(id)a3 wakeClientForRepairWithContainerID:(id)a4;
- (void)userCloudShareController:(id)a3 wakeClientWithContainerID:(id)a4;
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
  v4 = [(HMDUserCloudShareManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)handleXPCConnectionInvalidated:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDUserCloudShareManager_handleXPCConnectionInvalidated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Received connection invalidated notification, but no connection object was found: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeregisterRequest:(id)a3
{
  v11 = a3;
  v4 = [v11 transport];

  if (v4)
  {
    v5 = [v11 transport];
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

    if (v7)
    {
      v8 = [(HMDUserCloudShareManager *)self userCloudShareController];
      [v8 deregisterXpcClient:v7];
    }
  }

  v9 = [v11 responseHandler];

  if (v9)
  {
    v10 = [v11 responseHandler];
    v10[2](v10, 0, 0);
  }
}

- (void)handleRemoteUserClientCloudShareRepairRequest:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRepairRequest___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Handling share repair message %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [*(a1 + 40) userCloudShareController];
    v12 = [*(a1 + 32) messagePayload];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRepairRequest___block_invoke_80;
    v17[3] = &unk_2797359D8;
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Could not find home for share repair request on remote.", buf, 0xCu);
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

- (void)handleRemoteUserClientCloudShareRequest:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDUserCloudShareManager_handleRemoteUserClientCloudShareRequest___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
    v17[3] = &unk_279730C20;
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
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not find home for share request on remote.", buf, 0xCu);
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
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Forwarding received client info.", buf, 0xCu);
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

- (void)_handleRegisterRequest:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 transport];

  if (v5)
  {
    v6 = [v4 transport];
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

    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Found xpc connection in message", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v14 = [v4 arrayForKey:*MEMORY[0x277CD1320]];
      if (v14)
      {
        v15 = [(HMDUserCloudShareManager *)v10 userCloudShareController];
        [v15 registerWithXpcClient:v8 containerIDs:v14];

        v16 = 0;
      }

      else
      {
        v22 = objc_autoreleasePoolPush();
        v23 = v10;
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          v26 = [v8 applicationBundleIdentifier];
          v30 = 138543618;
          v31 = v25;
          v32 = 2112;
          v33 = v26;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Missing container IDs while trying to register from process %@", &v30, 0x16u);
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
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Transport is not XPC connection.", &v30, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Transport is not XPC" reason:@"Need xpc connection" suggestion:0];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@No transport on message.", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Did not find transport" reason:@"Need xpc connection" suggestion:0];
  }

  v27 = [v4 responseHandler];

  if (v27)
  {
    v28 = [v4 responseHandler];
    (v28)[2](v28, v16, 0);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleLocalHomeDataRemovedNotification:(id *)a3
{
  v4 = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDUserCloudShareManager__handleLocalHomeDataRemovedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Local home data removed, notifying clients", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleUserSettingsUpdatedNotification:(id)a3
{
  v4 = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDUserCloudShareManager__handleUserSettingsUpdatedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@User settings updated, notifying clients.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleEnableMultiUserChangedNotification:(id)a3
{
  v4 = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDUserCloudShareManager__handleEnableMultiUserChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Enable Multi-User changed, notifying clients.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_handleAccessoryAdded:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDUserCloudShareManager__handleAccessoryAdded___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client on adding accessory %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) _postMultiUserStatusChangedNotification];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleUsersChangedNotification:(id)a3
{
  v4 = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDUserCloudShareManager_handleUsersChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client on users changed", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleHomeChangedNotification:(id)a3
{
  v4 = [(HMDUserCloudShareManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDUserCloudShareManager_handleHomeChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
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
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client on home change", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _postMultiUserStatusChangedNotification];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)userCloudShareController:(id)a3 timerWithInterval:(double)a4
{
  v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a4];

  return v4;
}

- (void)userCloudShareController:(id)a3 wakeClientForRepairWithContainerID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%@", *MEMORY[0x277CD1340], v7];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client to repair share %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  notify_post([v8 UTF8String]);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)userCloudShareController:(id)a3 wakeClientWithContainerID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%@", *MEMORY[0x277CD1350], v7];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Posting notification to wake client %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  notify_post([v8 UTF8String]);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)userCloudShareController:(id)a3 sendRepairInfo:(id)a4 toConnection:(id)a5 home:(id)a6 containerID:(id)a7
{
  v27[3] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CD1468];
  v27[0] = a7;
  v12 = *MEMORY[0x277CD1498];
  v26[0] = v11;
  v26[1] = v12;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = encodeRootObjectForIncomingXPCMessage(a4, 0);
  v27[1] = v16;
  v26[2] = *MEMORY[0x277CD1480];
  v17 = [v14 uuid];

  v27[2] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

  v19 = objc_alloc(MEMORY[0x277D0F820]);
  v20 = objc_alloc(MEMORY[0x277CCAD78]);
  v21 = [v20 initWithUUIDString:*MEMORY[0x277CD1348]];
  v22 = [v19 initWithTarget:v21];

  v23 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD1328] destination:v22 payload:v18];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __98__HMDUserCloudShareManager_userCloudShareController_sendRepairInfo_toConnection_home_containerID___block_invoke;
  v25[3] = &unk_2797359D8;
  v25[4] = self;
  [v15 sendMessage:v23 completionHandler:v25];

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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message to client.", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)userCloudShareController:(id)a3 sendShareRequestMessageWithConnection:(id)a4 fromUser:(id)a5 toUser:(id)a6 home:(id)a7 shareURL:(id)a8 shareToken:(id)a9 containerID:(id)a10 completion:(id)a11
{
  v52[6] = *MEMORY[0x277D85DE8];
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v44 = a11;
  v19 = *MEMORY[0x277CD14A8];
  if (v17)
  {
    v51[0] = *MEMORY[0x277CD14A8];
    v20 = a7;
    v21 = a5;
    v22 = a4;
    v23 = encodeRootObjectForIncomingXPCMessage(a6, 0);
    v52[0] = v23;
    v51[1] = *MEMORY[0x277CD1470];
    v24 = encodeRootObjectForIncomingXPCMessage(v21, 0);

    v52[1] = v24;
    v51[2] = *MEMORY[0x277CD1478];
    v25 = encodeRootObjectForIncomingXPCMessage(v20, 0);

    v26 = *MEMORY[0x277CD14B8];
    v52[2] = v25;
    v52[3] = v16;
    v27 = *MEMORY[0x277CD14B0];
    v51[3] = v26;
    v51[4] = v27;
    v51[5] = *MEMORY[0x277CD1468];
    v52[4] = v17;
    v52[5] = v18;
    v28 = MEMORY[0x277CBEAC0];
    v29 = v52;
    v30 = v51;
    v31 = 6;
  }

  else
  {
    v49[0] = *MEMORY[0x277CD14A8];
    v32 = a7;
    v33 = a5;
    v34 = a4;
    v23 = encodeRootObjectForIncomingXPCMessage(a6, 0);
    v50[0] = v23;
    v49[1] = *MEMORY[0x277CD1470];
    v24 = encodeRootObjectForIncomingXPCMessage(v33, 0);

    v50[1] = v24;
    v49[2] = *MEMORY[0x277CD1478];
    v25 = encodeRootObjectForIncomingXPCMessage(v32, 0);

    v35 = *MEMORY[0x277CD14B8];
    v50[2] = v25;
    v50[3] = v16;
    v36 = *MEMORY[0x277CD1468];
    v49[3] = v35;
    v49[4] = v36;
    v50[4] = v18;
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
  v47[3] = &unk_279732CF0;
  v47[4] = self;
  v40 = v44;
  v48 = v40;
  v41 = [v38 messageWithName:v39 messagePayload:v37 responseHandler:v47];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __155__HMDUserCloudShareManager_userCloudShareController_sendShareRequestMessageWithConnection_fromUser_toUser_home_shareURL_shareToken_containerID_completion___block_invoke_47;
  v45[3] = &unk_279733F30;
  v45[4] = self;
  v46 = v40;
  v42 = v40;
  [a4 sendMessage:v41 completionHandler:v45];

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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Got error from client %@.", &v20, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@No error but client did not accept share, treating as error.", &v20, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message to client.", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserCloudShareManager *)self clientQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Registering for user share messages.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDUserCloudShareManager *)v5 messageDispatcher];
  v9 = *MEMORY[0x277CD1338];
  v10 = [HMDXPCMessagePolicy policyWithEntitlements:517];
  v13 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v8 registerForMessage:v9 receiver:v5 policies:v11 selector:sel__handleRegisterRequest_];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserCloudShareManager *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDUserCloudShareManager_configureWithMessageDispatcher___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (HMDUserCloudShareManager)initWithHomeManager:(id)a3 dependency:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = HMDUserCloudShareManager;
  v8 = [(HMDUserCloudShareManager *)&v20 init];
  if (v8)
  {
    v9 = HMDispatchQueueNameString();
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    clientQueue = v8->_clientQueue;
    v8->_clientQueue = v12;

    v14 = objc_alloc(MEMORY[0x277CCAD78]);
    v15 = [v14 initWithUUIDString:*MEMORY[0x277CD1348]];
    identifier = v8->_identifier;
    v8->_identifier = v15;

    objc_storeWeak(&v8->_homeManager, v6);
    v17 = [v7 createUserCloudShareControllerWithDelegate:v8 queue:v8->_clientQueue];
    userCloudShareController = v8->_userCloudShareController;
    v8->_userCloudShareController = v17;
  }

  return v8;
}

- (HMDUserCloudShareManager)initWithHomeManager:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDUserCloudShareManagerCreatorDependency);
  v6 = [(HMDUserCloudShareManager *)self initWithHomeManager:v4 dependency:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26, &__block_literal_global_1827);
  }

  v3 = logCategory__hmf_once_v27;

  return v3;
}

uint64_t __39__HMDUserCloudShareManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v27 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end