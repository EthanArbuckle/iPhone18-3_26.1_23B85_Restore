@interface HMDAccessCodeManager
+ (id)logCategory;
- (BOOL)_redispatchToResidentIfNeccesaryForMessage:(id)message flow:(id)flow withNewResponseHandler:(id)handler;
- (BOOL)hasCurrentUserAccessCodeChangedWithChangedAccessCodes:(id)codes home:(id)home;
- (HMDAccessCodeManager)initWithContext:(id)context;
- (HMDAccessCodeManager)initWithContext:(id)context utilities:(Class)utilities accessoryReaderWriter:(id)writer dataManager:(id)manager;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)_accessCodeForUserWithUUID:(id)d inHome:(id)home;
- (id)_createNewAccessCodeForUserWithUUID:(id)d flow:(id)flow;
- (id)_removeAccessCode:(id)code forUser:(id)user removedByUserUUID:(id)d flow:(id)flow;
- (id)_removeAccessCode:(id)code forUserBeingRemoved:(id)removed flow:(id)flow;
- (id)_removeAccessCode:(id)code forUserWithUUID:(id)d removedByUserUUID:(id)iD flow:(id)flow;
- (id)_removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure:(id)failure forUserUUID:(id)d flow:(id)flow;
- (id)_resetAccessCodesForHomeAccessCode:(id)code flow:(id)flow;
- (id)_updateAccessCode:(id)code toNewValue:(id)value onAccessoriesWithFetchResponses:(id)responses withRetries:(BOOL)retries flow:(id)flow;
- (id)_updateModificationRequestsWithUserOrGuestNames:(id)names flow:(id)flow;
- (id)_waitUntilDataHasSyncedToResidentForAccessoryUUIDs:(id)ds flow:(id)flow;
- (id)_waitUntilDataHasSyncedToResidentIfNecessaryForAccessoryUUIDs:(id)ds flow:(id)flow;
- (id)addNewAccessCode:(id)code forUserWithUUID:(id)d toAccessoriesWithUUIDs:(id)ds withRetries:(BOOL)retries flow:(id)flow;
- (id)logIdentifier;
- (id)removeAccessCode:(id)code fromHAPAccessory:(id)accessory flow:(id)flow;
- (void)_fetchAccessCodeConstraintsForMessage:(id)message;
- (void)_fetchAccessCodesForMessage:(id)message;
- (void)_generateNewAccessCodeWithFlow:(id)flow completion:(id)completion;
- (void)_generateNewUserAccessCodeForMessage:(id)message;
- (void)_notifySubscribersOfMessageWithName:(id)name flow:(id)flow payload:(id)payload;
- (void)_removeSimpleLabelAccessCodeMessage:(id)message;
- (void)_resetAccessoryAccessCodesForMessage:(id)message;
- (void)_setAccessCodeForUserForMessage:(id)message;
- (void)_submitAccessCodeModificationRequestsForMessage:(id)message;
- (void)_updateAccessoryAccessCodeCacheWithFlow:(id)flow;
- (void)_updateCacheWithModificationResponses:(id)responses flow:(id)flow;
- (void)accessCodeDataManager:(id)manager didAddAccessoryAccessCodes:(id)codes flow:(id)flow;
- (void)accessCodeDataManager:(id)manager didAddHomeAccessCodes:(id)codes addedByUserUUID:(id)d flow:(id)flow;
- (void)accessCodeDataManager:(id)manager didRemoveAccessoryAccessCodes:(id)codes flow:(id)flow;
- (void)accessCodeDataManager:(id)manager didRemoveHomeAccessCodes:(id)codes removedByUserUUID:(id)d flow:(id)flow;
- (void)accessCodeDataManager:(id)manager didUpdateAccessoryAccessCodes:(id)codes flow:(id)flow;
- (void)accessCodeDataManager:(id)manager didUpdateHomeAccessCodes:(id)codes changedByUserUUID:(id)d flow:(id)flow;
- (void)configureWithMessageDispatcher:(id)dispatcher;
- (void)fetchAccessCodeForIdentifier:(id)identifier accessoryUUID:(id)d flow:(id)flow completion:(id)completion;
- (void)handleAccessorySupportsAccessCodeDidChangeNotification:(id)notification;
- (void)handleConfirmDataHasSyncedToResidentMessage:(id)message;
- (void)handleFetchAccessCodeConstraintsMessage:(id)message;
- (void)handleFetchAccessCodesMessage:(id)message;
- (void)handleFetchCachedAccessCodesMessage:(id)message;
- (void)handleFetchHomeAccessCodesMessage:(id)message;
- (void)handleGenerateNewUserAccessCodeMessage:(id)message;
- (void)handleHomeDidDisableCharacteristicNotification:(id)notification;
- (void)handleHomeDidEnableCharacteristicNotification:(id)notification;
- (void)handleHomeUserRemovedNotification:(id)notification;
- (void)handleRemoveHomeAccessCodeMessage:(id)message;
- (void)handleRemoveSimpleLabelAccessCodeMessage:(id)message;
- (void)handleResetAccessoryAccessCodesMessage:(id)message;
- (void)handleSetAccessCodeForUserMessage:(id)message;
- (void)handleSetUserInformationMessage:(id)message;
- (void)handleSubmitAccessCodeModificationRequestsMessage:(id)message;
- (void)handleSubscribeMessage:(id)message;
- (void)handleUnsubscribeMessage:(id)message;
- (void)handleUserAccessCodeDidChangeMessage:(id)message;
- (void)unconfigure;
@end

@implementation HMDAccessCodeManager

- (OS_dispatch_queue)messageReceiveQueue
{
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];

  return workQueue;
}

- (NSUUID)messageTargetUUID
{
  context = [(HMDAccessCodeManager *)self context];
  uUID = [context UUID];

  return uUID;
}

- (id)logIdentifier
{
  context = [(HMDAccessCodeManager *)self context];
  uUID = [context UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)accessCodeDataManager:(id)manager didRemoveAccessoryAccessCodes:(id)codes flow:(id)flow
{
  v16[1] = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  codesCopy = codes;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = *MEMORY[0x277CCE6B8];
  v15 = *MEMORY[0x277CCE730];
  v12 = encodeRootObjectForIncomingXPCMessage(codesCopy, 0);

  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(HMDAccessCodeManager *)self _notifySubscribersOfMessageWithName:v11 flow:flowCopy payload:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeDataManager:(id)manager didUpdateAccessoryAccessCodes:(id)codes flow:(id)flow
{
  v16[1] = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  codesCopy = codes;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = *MEMORY[0x277CCE6C8];
  v15 = *MEMORY[0x277CCE730];
  v12 = encodeRootObjectForIncomingXPCMessage(codesCopy, 0);

  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(HMDAccessCodeManager *)self _notifySubscribersOfMessageWithName:v11 flow:flowCopy payload:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeDataManager:(id)manager didAddAccessoryAccessCodes:(id)codes flow:(id)flow
{
  v16[1] = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  codesCopy = codes;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = *MEMORY[0x277CCE6A8];
  v15 = *MEMORY[0x277CCE730];
  v12 = encodeRootObjectForIncomingXPCMessage(codesCopy, 0);

  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(HMDAccessCodeManager *)self _notifySubscribersOfMessageWithName:v11 flow:flowCopy payload:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeDataManager:(id)manager didRemoveHomeAccessCodes:(id)codes removedByUserUUID:(id)d flow:(id)flow
{
  codesCopy = codes;
  dCopy = d;
  flowCopy = flow;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__HMDAccessCodeManager_accessCodeDataManager_didRemoveHomeAccessCodes_removedByUserUUID_flow___block_invoke;
  v17[3] = &unk_279734870;
  v17[4] = self;
  v18 = flowCopy;
  v19 = codesCopy;
  v20 = dCopy;
  v14 = dCopy;
  v15 = codesCopy;
  v16 = flowCopy;
  dispatch_async(workQueue, v17);
}

void __94__HMDAccessCodeManager_accessCodeDataManager_didRemoveHomeAccessCodes_removedByUserUUID_flow___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCE6C0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v29 = *MEMORY[0x277CCE748];
  v5 = encodeRootObjectForIncomingXPCMessage(*(a1 + 48), 0);
  v30[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v3 _notifySubscribersOfMessageWithName:v2 flow:v4 payload:v6];

  v7 = [*(a1 + 32) context];
  v8 = [v7 home];

  if (v8 && [*(a1 + 32) hasCurrentUserAccessCodeChangedWithChangedAccessCodes:*(a1 + 48) home:v8])
  {
    if (*(a1 + 56) && ([v8 currentUser], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uuid"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", *(a1 + 56)), v10, v9, (v11 & 1) == 0))
    {
      v18 = [*(a1 + 32) context];
      v19 = [v18 bulletinBoard];
      [v19 insertAccessCodeRemovedBulletinForHome:v8];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 40) UUID];
        v17 = *(a1 + 56);
        v23 = 138543874;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating access code removed bulletin because it was removed by current user: %@", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }

    v20 = [*(a1 + 32) context];
    v21 = [v20 walletKeyManager];
    [v21 handleAccessCodeChanged];
  }

  if ([*(a1 + 32) isHomeAppForegrounded])
  {
    [*(a1 + 32) _updateAccessoryAccessCodeCacheWithFlow:*(a1 + 40)];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeDataManager:(id)manager didUpdateHomeAccessCodes:(id)codes changedByUserUUID:(id)d flow:(id)flow
{
  codesCopy = codes;
  dCopy = d;
  flowCopy = flow;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__HMDAccessCodeManager_accessCodeDataManager_didUpdateHomeAccessCodes_changedByUserUUID_flow___block_invoke;
  v17[3] = &unk_279734870;
  v17[4] = self;
  v18 = flowCopy;
  v19 = codesCopy;
  v20 = dCopy;
  v14 = dCopy;
  v15 = codesCopy;
  v16 = flowCopy;
  dispatch_async(workQueue, v17);
}

void __94__HMDAccessCodeManager_accessCodeDataManager_didUpdateHomeAccessCodes_changedByUserUUID_flow___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCE6D0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v29 = *MEMORY[0x277CCE748];
  v5 = encodeRootObjectForIncomingXPCMessage(*(a1 + 48), 0);
  v30[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v3 _notifySubscribersOfMessageWithName:v2 flow:v4 payload:v6];

  v7 = [*(a1 + 32) context];
  v8 = [v7 home];

  if (v8 && [*(a1 + 32) hasCurrentUserAccessCodeChangedWithChangedAccessCodes:*(a1 + 48) home:v8])
  {
    if (*(a1 + 56) && ([v8 currentUser], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uuid"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", *(a1 + 56)), v10, v9, (v11 & 1) == 0))
    {
      v18 = [*(a1 + 32) context];
      v19 = [v18 bulletinBoard];
      [v19 insertAccessCodeChangedBulletinForHome:v8];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 40) UUID];
        v17 = *(a1 + 56);
        v23 = 138543874;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating access code changed bulletin because it was changed by current user: %@", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }

    v20 = [*(a1 + 32) context];
    v21 = [v20 walletKeyManager];
    [v21 handleAccessCodeChanged];
  }

  if ([*(a1 + 32) isHomeAppForegrounded])
  {
    [*(a1 + 32) _updateAccessoryAccessCodeCacheWithFlow:*(a1 + 40)];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeDataManager:(id)manager didAddHomeAccessCodes:(id)codes addedByUserUUID:(id)d flow:(id)flow
{
  codesCopy = codes;
  dCopy = d;
  flowCopy = flow;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__HMDAccessCodeManager_accessCodeDataManager_didAddHomeAccessCodes_addedByUserUUID_flow___block_invoke;
  v17[3] = &unk_279734870;
  v17[4] = self;
  v18 = flowCopy;
  v19 = codesCopy;
  v20 = dCopy;
  v14 = dCopy;
  v15 = codesCopy;
  v16 = flowCopy;
  dispatch_async(workQueue, v17);
}

void __89__HMDAccessCodeManager_accessCodeDataManager_didAddHomeAccessCodes_addedByUserUUID_flow___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CCE6B0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v29 = *MEMORY[0x277CCE748];
  v5 = encodeRootObjectForIncomingXPCMessage(*(a1 + 48), 0);
  v30[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v3 _notifySubscribersOfMessageWithName:v2 flow:v4 payload:v6];

  v7 = [*(a1 + 32) context];
  v8 = [v7 home];

  if (v8 && [*(a1 + 32) hasCurrentUserAccessCodeChangedWithChangedAccessCodes:*(a1 + 48) home:v8])
  {
    if (*(a1 + 56) && ([v8 currentUser], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uuid"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", *(a1 + 56)), v10, v9, (v11 & 1) == 0))
    {
      v18 = [*(a1 + 32) context];
      v19 = [v18 bulletinBoard];
      [v19 insertAccessCodeAddedBulletinForHome:v8];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [*(a1 + 40) UUID];
        v17 = *(a1 + 56);
        v23 = 138543874;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating access code added bulletin because it was added by current user: %@", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }

    v20 = [*(a1 + 32) context];
    v21 = [v20 walletKeyManager];
    [v21 handleAccessCodeChanged];
  }

  if ([*(a1 + 32) isHomeAppForegrounded])
  {
    [*(a1 + 32) _updateAccessoryAccessCodeCacheWithFlow:*(a1 + 40)];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_waitUntilDataHasSyncedToResidentForAccessoryUUIDs:(id)ds flow:(id)flow
{
  dsCopy = ds;
  flowCopy = flow;
  v8 = MEMORY[0x277D2C900];
  context = [(HMDAccessCodeManager *)self context];
  residentDataSyncVerificationRetries = [context residentDataSyncVerificationRetries];
  context2 = [(HMDAccessCodeManager *)self context];
  [context2 residentDataSyncVerificationRetryTimeInterval];
  v13 = v12;
  context3 = [(HMDAccessCodeManager *)self context];
  workQueue = [context3 workQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__HMDAccessCodeManager__waitUntilDataHasSyncedToResidentForAccessoryUUIDs_flow___block_invoke;
  v20[3] = &unk_279720FE0;
  v20[4] = self;
  v21 = dsCopy;
  v22 = flowCopy;
  v16 = flowCopy;
  v17 = dsCopy;
  v18 = [v8 futureWithRetries:residentDataSyncVerificationRetries timeInterval:workQueue workQueue:v20 block:v13];

  return v18;
}

id __80__HMDAccessCodeManager__waitUntilDataHasSyncedToResidentForAccessoryUUIDs_flow___block_invoke(id *a1)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D2C900]);
  v3 = objc_alloc(MEMORY[0x277D0F848]);
  v4 = objc_alloc(MEMORY[0x277D0F820]);
  v5 = [a1[4] messageTargetUUID];
  v6 = [v4 initWithTarget:v5];
  v33[0] = *MEMORY[0x277CCE738];
  v7 = encodeRootObjectForIncomingXPCMessage(a1[5], 0);
  v34[0] = v7;
  v33[1] = *MEMORY[0x277D0F1C8];
  v8 = a1[6];
  v9 = HMFEncodedRootObject();
  v34[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v11 = [v3 initWithName:@"HMAccessCodeManagerConfirmDataHasSyncedToResidentMessage" qualityOfService:33 destination:v6 payload:v10];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __80__HMDAccessCodeManager__waitUntilDataHasSyncedToResidentForAccessoryUUIDs_flow___block_invoke_2;
  v24[3] = &unk_279730A88;
  v24[4] = a1[4];
  v25 = a1[6];
  v12 = v2;
  v26 = v12;
  [v11 setResponseHandler:v24];
  v13 = objc_autoreleasePoolPush();
  v14 = a1[4];
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [a1[6] UUID];
    v18 = a1[5];
    *buf = 138543874;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Pinging resident to confirm data has synced for accessories: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [a1[4] context];
  [v19 redispatchToResidentMessage:v11];

  v20 = v26;
  v21 = v12;

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

void __80__HMDAccessCodeManager__waitUntilDataHasSyncedToResidentForAccessoryUUIDs_flow___block_invoke_2(id *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] UUID];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to confirm resident has data with error: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithError:v5];
  }

  else
  {
    if (v10)
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] UUID];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resident confirmed that data has synced", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] finishWithNoResult];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_waitUntilDataHasSyncedToResidentIfNecessaryForAccessoryUUIDs:(id)ds flow:(id)flow
{
  dsCopy = ds;
  flowCopy = flow;
  context = [(HMDAccessCodeManager *)self context];
  isCurrentDevicePrimaryResident = [context isCurrentDevicePrimaryResident];

  if (!isCurrentDevicePrimaryResident)
  {
    context2 = [(HMDAccessCodeManager *)self context];
    if ([context2 primaryResidentSupportsAccessCodes])
    {
      context3 = [(HMDAccessCodeManager *)self context];
      residentCommunicationHandlerPreferredDevice = [context3 residentCommunicationHandlerPreferredDevice];

      if (residentCommunicationHandlerPreferredDevice)
      {
        futureWithNoResult = [(HMDAccessCodeManager *)self _waitUntilDataHasSyncedToResidentForAccessoryUUIDs:dsCopy flow:flowCopy];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_7:
  v14 = futureWithNoResult;

  return v14;
}

- (void)_updateAccessoryAccessCodeCacheWithFlow:(id)flow
{
  v33 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [flowCopy UUID];
    *buf = 138543874;
    v28 = v9;
    v29 = 2112;
    v30 = uUID;
    v31 = 2112;
    v32 = uUID2;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Updating cache (aka reading pin codes from all locks)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAccessCodeManager *)selfCopy messageTargetUUID];
  v24 = [v12 initWithTarget:messageTargetUUID];

  v14 = MEMORY[0x277D0F848];
  v15 = *MEMORY[0x277CCE6E0];
  v25[0] = *MEMORY[0x277CCE738];
  context = [(HMDAccessCodeManager *)selfCopy context];
  uUIDsOfAccessoriesSupportingAccessCodes = [context UUIDsOfAccessoriesSupportingAccessCodes];
  v18 = encodeRootObject();
  v26[0] = v18;
  v25[1] = *MEMORY[0x277D0F1C8];
  v19 = HMFEncodedRootObject();
  v26[1] = v19;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v21 = v20 = flowCopy;
  v22 = [v14 messageWithName:v15 destination:v24 payload:v21];

  [(HMDAccessCodeManager *)selfCopy handleFetchAccessCodesMessage:v22];
  v23 = *MEMORY[0x277D85DE8];
}

- (id)_accessCodeForUserWithUUID:(id)d inHome:(id)home
{
  dCopy = d;
  users = [home users];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HMDAccessCodeManager__accessCodeForUserWithUUID_inHome___block_invoke;
  v16[3] = &unk_27972E540;
  v8 = dCopy;
  v17 = v8;
  v9 = [users na_firstObjectPassingTest:v16];
  accessCode = [v9 accessCode];

  if (accessCode)
  {
    stringValue = accessCode;
  }

  else
  {
    dataManager = [(HMDAccessCodeManager *)self dataManager];
    v13 = [dataManager homeAccessCodeWithRemovedUserInfoWithUUID:v8];
    accessCodeValue = [v13 accessCodeValue];
    stringValue = [accessCodeValue stringValue];
  }

  return stringValue;
}

uint64_t __58__HMDAccessCodeManager__accessCodeForUserWithUUID_inHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = HMFEqualObjects();

  return v4;
}

- (void)_generateNewAccessCodeWithFlow:(id)flow completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generating new access code", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  accessoryReaderWriter = [(HMDAccessCodeManager *)selfCopy accessoryReaderWriter];
  context = [(HMDAccessCodeManager *)selfCopy context];
  uUIDsOfAccessoriesSupportingAccessCodes = [context UUIDsOfAccessoriesSupportingAccessCodes];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HMDAccessCodeManager__generateNewAccessCodeWithFlow_completion___block_invoke;
  v19[3] = &unk_279720FB8;
  v19[4] = selfCopy;
  v20 = flowCopy;
  v21 = completionCopy;
  v16 = completionCopy;
  v17 = flowCopy;
  [accessoryReaderWriter readConstraintsAndAccessCodesFromAccessoriesWithUUIDs:uUIDsOfAccessoriesSupportingAccessCodes flow:v17 completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __66__HMDAccessCodeManager__generateNewAccessCodeWithFlow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 na_map:&__block_literal_global_383];
    v9 = [v7 na_flatMap:&__block_literal_global_386];
    v10 = [*(a1 + 32) dataManager];
    v11 = [v10 homeAccessCodeValues];
    v12 = [v11 na_map:&__block_literal_global_392];

    v13 = [*(a1 + 32) context];
    v14 = [v13 generateAccessCodeValueFromConstraints:v8 accessoryAccessCodes:v9 homeAccessCodes:v12];

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v36 = v9;
        [*(a1 + 40) UUID];
        v20 = v34 = v15;
        *buf = 138543618;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully generated new access code", buf, 0x16u);

        v15 = v34;
        v9 = v36;
      }

      objc_autoreleasePoolPop(v15);
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v37 = v9;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        [*(a1 + 40) UUID];
        v30 = v35 = v15;
        *buf = 138543618;
        v39 = v29;
        v40 = 2112;
        v41 = v30;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate new access code", buf, 0x16u);

        v15 = v35;
      }

      objc_autoreleasePoolPop(v15);
      v31 = *(a1 + 48);
      v32 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      (*(v31 + 16))(v31, 0, 0, v32);

      v9 = v37;
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 40) UUID];
      v26 = [*(a1 + 32) context];
      v27 = [v26 UUIDsOfAccessoriesSupportingAccessCodes];
      *buf = 138544386;
      v39 = v24;
      v40 = 2112;
      v41 = v25;
      v42 = 2112;
      v43 = v5;
      v44 = 2112;
      v45 = v7;
      v46 = 2112;
      v47 = v27;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read constraints: %@, and access codes: %@, from accessories with UUIDs: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v21);
    v28 = *(a1 + 48);
    v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v28 + 16))(v28, 0, 0, v8);
  }

  v33 = *MEMORY[0x277D85DE8];
}

id __66__HMDAccessCodeManager__generateNewAccessCodeWithFlow_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 accessCodeValue];
  v3 = [v2 stringValue];

  return v3;
}

id __66__HMDAccessCodeManager__generateNewAccessCodeWithFlow_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 accessoryAccessCodeValues];
  v3 = [v2 na_map:&__block_literal_global_389];

  return v3;
}

id __66__HMDAccessCodeManager__generateNewAccessCodeWithFlow_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 accessCodeValue];
  v3 = [v2 stringValue];

  return v3;
}

id __98__HMDAccessCodeManager__addNewAccessCode_forUserWithUUID_toAccessoriesWithUUIDs_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1600];
  v4 = a2;
  v5 = [[v3 alloc] initWithAccessCodeValue:*(a1 + 32) accessoryUUID:v4];

  [v5 setUserUUID:*(a1 + 40)];

  return v5;
}

- (id)addNewAccessCode:(id)code forUserWithUUID:(id)d toAccessoriesWithUUIDs:(id)ds withRetries:(BOOL)retries flow:(id)flow
{
  codeCopy = code;
  dCopy = d;
  dsCopy = ds;
  flowCopy = flow;
  v16 = objc_opt_new();
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HMDAccessCodeManager_addNewAccessCode_forUserWithUUID_toAccessoriesWithUUIDs_withRetries_flow___block_invoke;
  block[3] = &unk_279720EE8;
  block[4] = self;
  v28 = codeCopy;
  v29 = dCopy;
  v30 = dsCopy;
  retriesCopy = retries;
  v31 = flowCopy;
  v19 = v16;
  v32 = v19;
  v20 = flowCopy;
  v21 = dsCopy;
  v22 = dCopy;
  v23 = codeCopy;
  dispatch_async(workQueue, block);

  v24 = v32;
  v25 = v19;

  return v19;
}

void __97__HMDAccessCodeManager_addNewAccessCode_forUserWithUUID_toAccessoriesWithUUIDs_withRetries_flow___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _addNewAccessCode:*(a1 + 40) forUserWithUUID:*(a1 + 48) toAccessoriesWithUUIDs:*(a1 + 56) withRetries:*(a1 + 80) flow:*(a1 + 64)];
  v2 = [*(a1 + 72) completionHandlerAdapter];
  v3 = [v4 addCompletionBlock:v2];
}

- (id)_updateAccessCode:(id)code toNewValue:(id)value onAccessoriesWithFetchResponses:(id)responses withRetries:(BOOL)retries flow:(id)flow
{
  codeCopy = code;
  valueCopy = value;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __102__HMDAccessCodeManager__updateAccessCode_toNewValue_onAccessoriesWithFetchResponses_withRetries_flow___block_invoke;
  v26[3] = &unk_279720E98;
  v27 = codeCopy;
  v13 = codeCopy;
  flowCopy = flow;
  v15 = [responses na_map:v26];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __102__HMDAccessCodeManager__updateAccessCode_toNewValue_onAccessoriesWithFetchResponses_withRetries_flow___block_invoke_3;
  v24 = &unk_279720EC0;
  v25 = valueCopy;
  v16 = valueCopy;
  v17 = [v15 na_map:&v21];
  v18 = [(HMDAccessCodeManager *)self accessoryReaderWriter:v21];
  v19 = [v18 performAccessCodeModificationRequests:v17 withRetries:1 flow:flowCopy];

  return v19;
}

id __102__HMDAccessCodeManager__updateAccessCode_toNewValue_onAccessoriesWithFetchResponses_withRetries_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessoryAccessCodeValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__HMDAccessCodeManager__updateAccessCode_toNewValue_onAccessoriesWithFetchResponses_withRetries_flow___block_invoke_2;
  v6[3] = &unk_27972E680;
  v7 = *(a1 + 32);
  v4 = [v3 na_firstObjectPassingTest:v6];

  return v4;
}

id __102__HMDAccessCodeManager__updateAccessCode_toNewValue_onAccessoriesWithFetchResponses_withRetries_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD1630];
  v4 = a2;
  v5 = [[v3 alloc] initWithAccessoryAccessCodeValue:v4 updatedAccessCodeValue:*(a1 + 32)];

  return v5;
}

uint64_t __102__HMDAccessCodeManager__updateAccessCode_toNewValue_onAccessoriesWithFetchResponses_withRetries_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accessCodeValue];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_resetAccessCodesForHomeAccessCode:(id)code flow:(id)flow
{
  v32 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  flowCopy = flow;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v27 = v11;
    v28 = 2112;
    v29 = uUID;
    v30 = 2112;
    v31 = codeCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resetting access codes for home access code: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = objc_alloc_init(MEMORY[0x277D2C900]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__HMDAccessCodeManager__resetAccessCodesForHomeAccessCode_flow___block_invoke;
  v21[3] = &unk_279720E70;
  v14 = v13;
  v22 = v14;
  v23 = selfCopy;
  v24 = codeCopy;
  v25 = flowCopy;
  v15 = flowCopy;
  v16 = codeCopy;
  [(HMDAccessCodeManager *)selfCopy _generateNewAccessCodeWithFlow:v15 completion:v21];
  v17 = v25;
  v18 = v14;

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

void __64__HMDAccessCodeManager__resetAccessCodesForHomeAccessCode_flow___block_invoke(id *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = [a1[5] dataManager];
    v10 = [a1[6] userInformationValue];
    v11 = [a1[6] accessCodeValue];
    v12 = [v9 updateUserInformation:v10 forHomeAccessCodeWithOldValue:v11 newAccessCodeValue:v7 flow:a1[7]];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__HMDAccessCodeManager__resetAccessCodesForHomeAccessCode_flow___block_invoke_2;
    v17[3] = &unk_2797339F8;
    v13 = a1[6];
    v17[4] = a1[5];
    v18 = v13;
    v19 = v7;
    v20 = v8;
    v21 = a1[7];
    v14 = [v12 flatMap:v17];
    v15 = [a1[4] completionHandlerAdapter];
    v16 = [v14 addCompletionBlock:v15];
  }

  else
  {
    [a1[4] finishWithError:a4];
  }
}

id __64__HMDAccessCodeManager__resetAccessCodesForHomeAccessCode_flow___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accessCodeValue];
  v4 = [v2 _updateAccessCode:v3 toNewValue:*(a1 + 48) onAccessoriesWithFetchResponses:*(a1 + 56) withRetries:1 flow:*(a1 + 64)];

  return v4;
}

- (id)_createNewAccessCodeForUserWithUUID:(id)d flow:(id)flow
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  flowCopy = flow;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v27 = v11;
    v28 = 2112;
    v29 = uUID;
    v30 = 2112;
    v31 = dCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating new access code for user with UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = objc_alloc_init(MEMORY[0x277D2C900]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__HMDAccessCodeManager__createNewAccessCodeForUserWithUUID_flow___block_invoke;
  v21[3] = &unk_279720E70;
  v14 = v13;
  v22 = v14;
  v23 = dCopy;
  v24 = selfCopy;
  v25 = flowCopy;
  v15 = flowCopy;
  v16 = dCopy;
  [(HMDAccessCodeManager *)selfCopy _generateNewAccessCodeWithFlow:v15 completion:v21];
  v17 = v25;
  v18 = v14;

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

void __65__HMDAccessCodeManager__createNewAccessCodeForUserWithUUID_flow___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CD1640]) initWithSimpleLabel:0 labelIdentifier:0 userUUID:a1[5] removedUserInfo:0];
    v8 = [a1[6] dataManager];
    v9 = [v8 setUserInformation:v7 forHomeAccessCodeWithValue:v6 changedByUserUUID:0 flow:a1[7]];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __65__HMDAccessCodeManager__createNewAccessCodeForUserWithUUID_flow___block_invoke_2;
    v16 = &unk_27972E518;
    v17 = a1[6];
    v18 = v6;
    v19 = a1[5];
    v20 = a1[7];
    v10 = [v9 flatMap:&v13];
    v11 = [a1[4] completionHandlerAdapter];
    v12 = [v10 addCompletionBlock:v11];
  }

  else
  {
    [a1[4] finishWithError:a4];
  }
}

id __65__HMDAccessCodeManager__createNewAccessCodeForUserWithUUID_flow___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = [v2 context];
  v6 = [v5 UUIDsOfAccessoriesSupportingAccessCodes];
  v7 = [v2 _addNewAccessCode:v3 forUserWithUUID:v4 toAccessoriesWithUUIDs:v6 withRetries:1 flow:a1[7]];

  return v7;
}

- (void)_notifySubscribersOfMessageWithName:(id)name flow:(id)flow payload:(id)payload
{
  v50 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  flowCopy = flow;
  payloadCopy = payload;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    subscribedClientConnections = [(HMDAccessCodeManager *)selfCopy subscribedClientConnections];
    *buf = 138544130;
    v43 = v15;
    v44 = 2112;
    v45 = uUID;
    v46 = 2048;
    v47 = [subscribedClientConnections count];
    v48 = 2112;
    v49 = nameCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Notifying %lu subscribers of message with name: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v34 = payloadCopy;
  v18 = [payloadCopy mutableCopy];
  v19 = HMFEncodedRootObject();
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277D0F1C8]];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(HMDAccessCodeManager *)selfCopy subscribedClientConnections];
  v20 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v37 + 1) + 8 * i);
        v25 = MEMORY[0x277D0F848];
        v26 = [v18 copy];
        v27 = [v25 entitledMessageWithName:nameCopy messagePayload:v26];

        [v27 setTransport:v24];
        v28 = objc_alloc(MEMORY[0x277D0F820]);
        messageTargetUUID = [(HMDAccessCodeManager *)selfCopy messageTargetUUID];
        v30 = [v28 initWithTarget:messageTargetUUID];
        [v27 setDestination:v30];

        context2 = [(HMDAccessCodeManager *)selfCopy context];
        messageDispatcher = [context2 messageDispatcher];
        [messageDispatcher sendMessage:v27];
      }

      v21 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v21);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_generateNewUserAccessCodeForMessage:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v36 = v11;
    v37 = 2112;
    v38 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generating new user access code for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context2 = [(HMDAccessCodeManager *)selfCopy context];
  remoteMessageForwarder = [context2 remoteMessageForwarder];
  v15 = [remoteMessageForwarder messageForForwardedMessage:messageCopy];

  v16 = objc_alloc(MEMORY[0x277CCAD78]);
  v17 = [v15 stringForKey:*MEMORY[0x277CCE758]];
  v18 = [v16 initWithUUIDString:v17];

  context3 = [(HMDAccessCodeManager *)selfCopy context];
  home = [context3 home];
  v21 = [(HMDAccessCodeManager *)selfCopy _accessCodeForUserWithUUID:v18 inHome:home];

  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = uUID2;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User already has an access code, so doing nothing.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2600];
    [v15 respondWithError:v27];
  }

  else
  {
    v28 = [(HMDAccessCodeManager *)selfCopy _createNewAccessCodeForUserWithUUID:v18 flow:flow];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __61__HMDAccessCodeManager__generateNewUserAccessCodeForMessage___block_invoke;
    v31[3] = &unk_279733F88;
    v32 = v15;
    v33 = selfCopy;
    v34 = flow;
    v29 = [v28 addCompletionBlock:v31];

    v27 = v32;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __61__HMDAccessCodeManager__generateNewUserAccessCodeForMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [a1[5] _updateCacheWithModificationResponses:v5 flow:a1[6]];
    v7 = objc_autoreleasePoolPush();
    v8 = a1[5];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[6] UUID];
      *buf = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to message with modification responses: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = a1[4];
    v16 = *MEMORY[0x277CCE708];
    v13 = encodeRootObjectForIncomingXPCMessage(v5, 0);
    v17 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v12 respondWithPayload:{v14, v16}];
  }

  else
  {
    [a1[4] respondWithError:v6];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_resetAccessoryAccessCodesForMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resetting access code for message", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context2 = [(HMDAccessCodeManager *)selfCopy context];
  remoteMessageForwarder = [context2 remoteMessageForwarder];
  v15 = [remoteMessageForwarder messageForForwardedMessage:messageCopy];

  v16 = *MEMORY[0x277CCE740];
  v28 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v18 = [v15 unarchivedObjectForKey:v16 ofClasses:v17];

  v19 = [(HMDAccessCodeManager *)selfCopy _resetAccessCodesForHomeAccessCode:v18 flow:flow];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__HMDAccessCodeManager__resetAccessoryAccessCodesForMessage___block_invoke;
  v24[3] = &unk_279733F88;
  v25 = v15;
  v26 = selfCopy;
  v27 = flow;
  v20 = flow;
  v21 = v15;
  v22 = [v19 addCompletionBlock:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __61__HMDAccessCodeManager__resetAccessoryAccessCodesForMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [a1[5] _updateCacheWithModificationResponses:v5 flow:a1[6]];
    v7 = objc_autoreleasePoolPush();
    v8 = a1[5];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[6] UUID];
      *buf = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to message with modification responses: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = a1[4];
    v16 = *MEMORY[0x277CCE708];
    v13 = encodeRootObjectForIncomingXPCMessage(v5, 0);
    v17 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v12 respondWithPayload:{v14, v16}];
  }

  else
  {
    [a1[4] respondWithError:v6];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_removeAccessCode:(id)code forUserBeingRemoved:(id)removed flow:(id)flow
{
  codeCopy = code;
  removedCopy = removed;
  flowCopy = flow;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:codeCopy];
  accessoryReaderWriter = [(HMDAccessCodeManager *)self accessoryReaderWriter];
  uuid = [removedCopy uuid];
  v16 = [accessoryReaderWriter removeAllAccessCodesWithValue:v13 withUserUUID:uuid guestName:0 flow:flowCopy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__HMDAccessCodeManager__removeAccessCode_forUserBeingRemoved_flow___block_invoke;
  v22[3] = &unk_279729DA8;
  v22[4] = self;
  v23 = flowCopy;
  v24 = removedCopy;
  v25 = codeCopy;
  v17 = codeCopy;
  v18 = removedCopy;
  v19 = flowCopy;
  v20 = [v16 addCompletionBlock:v22];

  return v20;
}

void __67__HMDAccessCodeManager__removeAccessCode_forUserBeingRemoved_flow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5 || [objc_msgSend(*(a1 + 32) "utilities")])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v21 = 138543618;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] At least one modification response failed, so saving removedUserAccessCode", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = objc_alloc(MEMORY[0x277CD1D50]);
    v13 = [*(a1 + 48) displayName];
    v14 = [*(a1 + 48) uuid];
    v15 = [*(a1 + 48) userID];
    v16 = [MEMORY[0x277CBEAA8] date];
    v17 = [v12 initWithName:v13 userUUID:v14 userID:v15 dateRemoved:v16];

    v18 = [*(a1 + 32) dataManager];
    v19 = [v18 saveRemovedUserAccessCode:*(a1 + 56) withRemovedUserInfo:v17 flow:*(a1 + 40)];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)removeAccessCode:(id)code fromHAPAccessory:(id)accessory flow:(id)flow
{
  codeCopy = code;
  accessoryCopy = accessory;
  flowCopy = flow;
  v11 = objc_opt_new();
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDAccessCodeManager_removeAccessCode_fromHAPAccessory_flow___block_invoke;
  block[3] = &unk_2797352C0;
  v22 = codeCopy;
  selfCopy = self;
  v24 = accessoryCopy;
  v25 = flowCopy;
  v14 = v11;
  v26 = v14;
  v15 = flowCopy;
  v16 = accessoryCopy;
  v17 = codeCopy;
  dispatch_async(workQueue, block);

  v18 = v26;
  v19 = v14;

  return v14;
}

void __63__HMDAccessCodeManager_removeAccessCode_fromHAPAccessory_flow___block_invoke(uint64_t a1)
{
  v6 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:*(a1 + 32)];
  v2 = [*(a1 + 40) accessoryReaderWriter];
  v3 = [v2 removeAllHAPAccessCodesWithValue:v6 forSpecificAccessory:*(a1 + 48) flow:*(a1 + 56)];
  v4 = [*(a1 + 64) completionHandlerAdapter];
  v5 = [v3 addCompletionBlock:v4];
}

- (id)_removeAccessCode:(id)code forUser:(id)user removedByUserUUID:(id)d flow:(id)flow
{
  codeCopy = code;
  userCopy = user;
  flowCopy = flow;
  dCopy = d;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v16 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:codeCopy];
  dataManager = [(HMDAccessCodeManager *)self dataManager];
  v18 = [dataManager removeHomeAccessCodeWithValue:v16 removedByUserUUID:dCopy flow:flowCopy];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__HMDAccessCodeManager__removeAccessCode_forUser_removedByUserUUID_flow___block_invoke;
  v25[3] = &unk_2797339F8;
  v25[4] = self;
  v26 = v16;
  v27 = userCopy;
  v28 = flowCopy;
  v29 = codeCopy;
  v19 = codeCopy;
  v20 = flowCopy;
  v21 = userCopy;
  v22 = v16;
  v23 = [v18 flatMap:v25];

  return v23;
}

id __73__HMDAccessCodeManager__removeAccessCode_forUser_removedByUserUUID_flow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessoryReaderWriter];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) uuid];
  v5 = [v2 removeAllAccessCodesWithValue:v3 withUserUUID:v4 guestName:0 flow:*(a1 + 56)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HMDAccessCodeManager__removeAccessCode_forUser_removedByUserUUID_flow___block_invoke_2;
  v8[3] = &unk_279729DA8;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v6 = [v5 addCompletionBlock:v8];

  return v6;
}

void __73__HMDAccessCodeManager__removeAccessCode_forUser_removedByUserUUID_flow___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5 || [objc_msgSend(*(a1 + 32) "utilities")])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v21 = 138543618;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] At least one modification response failed, so saving removedUserAccessCode", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = objc_alloc(MEMORY[0x277CD1D50]);
    v13 = [*(a1 + 48) displayName];
    v14 = [*(a1 + 48) uuid];
    v15 = [*(a1 + 48) userID];
    v16 = [MEMORY[0x277CBEAA8] date];
    v17 = [v12 initWithName:v13 userUUID:v14 userID:v15 dateRemoved:v16];

    v18 = [*(a1 + 32) dataManager];
    v19 = [v18 saveRemovedUserAccessCode:*(a1 + 56) withRemovedUserInfo:v17 flow:*(a1 + 40)];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_removeAccessCode:(id)code forUserWithUUID:(id)d removedByUserUUID:(id)iD flow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  dCopy = d;
  iDCopy = iD;
  flowCopy = flow;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeManager *)self context];
  v17 = [context2 userWithUUID:dCopy];

  if (v17)
  {
    v18 = [(HMDAccessCodeManager *)self _removeAccessCode:codeCopy forUser:v17 removedByUserUUID:iDCopy flow:flowCopy];
  }

  else
  {
    dataManager = [(HMDAccessCodeManager *)self dataManager];
    v20 = [dataManager homeAccessCodeWithRemovedUserInfoWithUUID:dCopy];

    if (v20)
    {
      accessCodeValue = [v20 accessCodeValue];
      v22 = [(HMDAccessCodeManager *)self _removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure:accessCodeValue forUserUUID:dCopy flow:flowCopy];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v27 = v31 = v23;
        *buf = 138543874;
        v33 = v26;
        v34 = 2112;
        v35 = v27;
        v36 = 2112;
        v37 = dCopy;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find any current or former user with UUID: %@", buf, 0x20u);

        v23 = v31;
      }

      objc_autoreleasePoolPop(v23);
      v28 = MEMORY[0x277D2C900];
      accessCodeValue = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v22 = [v28 futureWithError:accessCodeValue];
    }

    v18 = v22;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_setAccessCodeForUserForMessage:(id)message
{
  v83 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    [flow UUID];
    v13 = v12 = flow;
    *buf = 138543618;
    v76 = v11;
    v77 = 2112;
    v78 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting access code for user for message.", buf, 0x16u);

    flow = v12;
  }

  objc_autoreleasePoolPop(v8);
  proxyConnection = [messageCopy proxyConnection];
  clientIdentifier = [proxyConnection clientIdentifier];
  v16 = [clientIdentifier isEqualToString:*MEMORY[0x277CD0638]];

  if (v16)
  {
    v17 = objc_alloc_init(HMDAccessCodeSetupLogEvent);
  }

  else
  {
    v17 = 0;
  }

  context2 = [(HMDAccessCodeManager *)selfCopy context];
  remoteMessageForwarder = [context2 remoteMessageForwarder];
  v20 = [remoteMessageForwarder messageForForwardedMessage:messageCopy];

  v21 = [v20 stringForKey:*MEMORY[0x277CCE710]];
  v22 = objc_alloc(MEMORY[0x277CCAD78]);
  v23 = [v20 stringForKey:*MEMORY[0x277CCE758]];
  v24 = [v22 initWithUUIDString:v23];

  context3 = [(HMDAccessCodeManager *)selfCopy context];
  v26 = [context3 userForMessage:v20];

  context4 = [(HMDAccessCodeManager *)selfCopy context];
  home = [context4 home];
  v62 = [(HMDAccessCodeManager *)selfCopy _accessCodeForUserWithUUID:v24 inHome:home];

  v61 = v21;
  if ([v26 isAdministrator] & 1) != 0 || (objc_msgSend(v26, "uuid"), v29 = objc_claimAutoreleasedReturnValue(), v30 = HMFEqualObjects(), v29, (v30))
  {
    if (v62 | v21)
    {
      v31 = &unk_253D4B000;
      if (v21)
      {
        v32 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v21];
        uuid = [objc_alloc(MEMORY[0x277CD1640]) initWithSimpleLabel:0 labelIdentifier:0 userUUID:v24 removedUserInfo:0];
        dataManager = [(HMDAccessCodeManager *)selfCopy dataManager];
        [v26 uuid];
        v35 = v58 = v17;
        [dataManager setUserInformation:uuid forHomeAccessCodeWithValue:v32 changedByUserUUID:v35 flow:flow];
        v36 = v56 = messageCopy;
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __56__HMDAccessCodeManager__setAccessCodeForUserForMessage___block_invoke;
        v67[3] = &unk_2797339F8;
        v68 = v62;
        v69 = selfCopy;
        v70 = v24;
        v71 = flow;
        v72 = v32;
        v55 = v32;
        v37 = [v36 flatMap:v67];

        messageCopy = v56;
        v17 = v58;

        v31 = &unk_253D4B000;
      }

      else
      {
        uuid = [v26 uuid];
        v37 = [(HMDAccessCodeManager *)selfCopy _removeAccessCode:v62 forUserWithUUID:v24 removedByUserUUID:uuid flow:flow];
      }

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = v31[103];
      v63[2] = __56__HMDAccessCodeManager__setAccessCodeForUserForMessage___block_invoke_3;
      v63[3] = &unk_279729DA8;
      v63[4] = selfCopy;
      v64 = flow;
      v65 = v20;
      v66 = v17;
      v53 = [v37 addCompletionBlock:v63];
    }

    else
    {
      v59 = v17;
      v38 = flow;
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        uUID = [v38 UUID];
        *buf = 138543618;
        v76 = v42;
        v77 = 2112;
        v78 = uUID;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] A nil access code was passed but the user has no access code, so responding with success", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v73 = *MEMORY[0x277CCE708];
      v37 = encodeRootObjectForIncomingXPCMessage(MEMORY[0x277CBEBF8], 0);
      v74 = v37;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      [v20 respondWithPayload:v44];

      flow = v38;
      v17 = v59;
    }
  }

  else
  {
    v60 = v17;
    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v57 = v45;
      v49 = v48 = flow;
      uUID2 = [v48 UUID];
      uuid2 = [v26 uuid];
      *buf = 138544130;
      v76 = v49;
      v77 = 2112;
      v78 = uUID2;
      v79 = 2112;
      v80 = uuid2;
      v81 = 2112;
      v82 = v24;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Dropping request: The user: %@ does not have permission to change the access code for the user: %@", buf, 0x2Au);

      flow = v48;
      v45 = v57;
    }

    objc_autoreleasePoolPop(v45);
    v52 = [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
    [v20 respondWithError:v52];

    v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
    v17 = v60;
    [(HMDAccessCodeSetupLogEvent *)v60 submitFailureWithReason:2 error:v37];
  }

  v54 = *MEMORY[0x277D85DE8];
}

id __56__HMDAccessCodeManager__setAccessCodeForUserForMessage___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEBF8]];
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) accessoryReaderWriter];
    v4 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:*(a1 + 32)];
    v5 = [v3 removeAllAccessCodesWithValue:v4 withUserUUID:*(a1 + 48) guestName:0 flow:*(a1 + 56)];

    v2 = v5;
  }

  v6 = objc_alloc_init(MEMORY[0x277D2C900]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__HMDAccessCodeManager__setAccessCodeForUserForMessage___block_invoke_2;
  v18[3] = &unk_27972F7A8;
  v17 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v17;
  *(&v11 + 1) = v7;
  v19 = v11;
  v20 = v10;
  v12 = v6;
  v21 = v12;
  v13 = [v2 addCompletionBlock:v18];
  v14 = v21;
  v15 = v12;

  return v12;
}

void __56__HMDAccessCodeManager__setAccessCodeForUserForMessage___block_invoke_3(id *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] UUID];
      *buf = 138543874;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to message with modification responses: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = a1[6];
    v24 = *MEMORY[0x277CCE708];
    v14 = encodeRootObjectForIncomingXPCMessage(v5, 0);
    v25 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v13 respondWithPayload:{v15, v24}];

    [a1[7] submitSuccess];
  }

  else
  {
    if (v6)
    {
      v16 = v6;
    }

    else
    {
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    }

    v17 = v16;
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] UUID];
      *buf = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to message with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    [a1[6] respondWithError:v17];
    [a1[7] submitFailureWithReason:1 error:v7];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __56__HMDAccessCodeManager__setAccessCodeForUserForMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v6 = [v2 UUIDsOfAccessoriesSupportingAccessCodes];

  v3 = [*(a1 + 32) _addNewAccessCode:*(a1 + 40) forUserWithUUID:*(a1 + 48) toAccessoriesWithUUIDs:v6 withRetries:1 flow:*(a1 + 56)];
  v4 = [*(a1 + 64) completionHandlerAdapter];
  v5 = [v3 addCompletionBlock:v4];
}

- (id)_removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure:(id)failure forUserUUID:(id)d flow:(id)flow
{
  failureCopy = failure;
  flowCopy = flow;
  v10 = MEMORY[0x277D2C900];
  dCopy = d;
  v12 = objc_alloc_init(v10);
  dataManager = [(HMDAccessCodeManager *)self dataManager];
  stringValue = [failureCopy stringValue];
  v15 = [dataManager simpleLabelForAccessCode:stringValue];

  accessoryReaderWriter = [(HMDAccessCodeManager *)self accessoryReaderWriter];
  v17 = [accessoryReaderWriter removeAllAccessCodesWithValue:failureCopy withUserUUID:dCopy guestName:v15 flow:flowCopy];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__HMDAccessCodeManager__removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure_forUserUUID_flow___block_invoke;
  v25[3] = &unk_279729DA8;
  v25[4] = self;
  v26 = flowCopy;
  v18 = v12;
  v27 = v18;
  v28 = failureCopy;
  v19 = failureCopy;
  v20 = flowCopy;
  v21 = [v17 addCompletionBlock:v25];

  v22 = v28;
  v23 = v18;

  return v18;
}

void __102__HMDAccessCodeManager__removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure_forUserUUID_flow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_msgSend(*(a1 + 32) "utilities")];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v13 = [*(a1 + 40) UUID];
        *buf = 138543618;
        v32 = v12;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] At least one modification failed, so we will not remove the home access code.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [*(a1 + 48) finishWithResult:v5];
    }

    else
    {
      if (v11)
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 40) UUID];
        *buf = 138543618;
        v32 = v19;
        v33 = 2112;
        v34 = v20;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory access code removals succeeded, so now removing the home access code.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v21 = [*(a1 + 32) dataManager];
      v22 = [v21 removeHomeAccessCodeWithValue:*(a1 + 56) removedByUserUUID:0 flow:*(a1 + 40)];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __102__HMDAccessCodeManager__removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure_forUserUUID_flow___block_invoke_369;
      v28[3] = &unk_279735918;
      v29 = *(a1 + 48);
      v30 = v5;
      v23 = [v22 addSuccessBlock:v28];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __102__HMDAccessCodeManager__removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure_forUserUUID_flow___block_invoke_2;
      v26[3] = &unk_2797359D8;
      v27 = *(a1 + 48);
      v24 = [v23 addFailureBlock:v26];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v32 = v17;
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to remove accessory access codes", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [*(a1 + 48) finishWithError:v6];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_removeSimpleLabelAccessCodeMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v40 = v11;
    v41 = 2112;
    v42 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing simple label access code for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context2 = [(HMDAccessCodeManager *)selfCopy context];
  remoteMessageForwarder = [context2 remoteMessageForwarder];
  v15 = [remoteMessageForwarder messageForForwardedMessage:messageCopy];

  v16 = [v15 stringForKey:*MEMORY[0x277CCE710]];
  v17 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v16];
  dataManager = [(HMDAccessCodeManager *)selfCopy dataManager];
  accessCodeValuesWithSimpleLabel = [dataManager accessCodeValuesWithSimpleLabel];
  v20 = [accessCodeValuesWithSimpleLabel containsObject:v17];

  if (v20)
  {
    v21 = [(HMDAccessCodeManager *)selfCopy _removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure:v17 forUserUUID:0 flow:flow];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __60__HMDAccessCodeManager__removeSimpleLabelAccessCodeMessage___block_invoke;
    v35[3] = &unk_279730038;
    v22 = v15;
    v36 = v22;
    v23 = [v21 addSuccessBlock:v35];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __60__HMDAccessCodeManager__removeSimpleLabelAccessCodeMessage___block_invoke_2;
    v33[3] = &unk_2797359D8;
    v34 = v22;
    v24 = [v23 addFailureBlock:v33];

    v25 = v36;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      *buf = 138543618;
      v40 = v29;
      v41 = 2112;
      v42 = uUID2;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] A home access code with the specified value does not exist, so we have nothing to do.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v37 = *MEMORY[0x277CCE708];
    v25 = encodeRootObjectForIncomingXPCMessage(MEMORY[0x277CBEBF8], 0);
    v38 = v25;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v15 respondWithPayload:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __60__HMDAccessCodeManager__removeSimpleLabelAccessCodeMessage___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = *MEMORY[0x277CCE708];
  v3 = encodeRootObjectForIncomingXPCMessage(a2, 0);
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 respondWithPayload:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_updateModificationRequestsWithUserOrGuestNames:(id)names flow:(id)flow
{
  flowCopy = flow;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HMDAccessCodeManager__updateModificationRequestsWithUserOrGuestNames_flow___block_invoke;
  v10[3] = &unk_279720E48;
  v10[4] = self;
  v11 = flowCopy;
  v7 = flowCopy;
  v8 = [names na_map:v10];

  return v8;
}

id __77__HMDAccessCodeManager__updateModificationRequestsWithUserOrGuestNames_flow___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
  v6 = v3;
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

  v9 = v6;
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

  if (v5)
  {
    v12 = [v5 accessCodeValue];
    v13 = [v12 stringValue];
LABEL_17:

    v16 = [*(a1 + 32) dataManager];
    v17 = [v16 simpleLabelForAccessCode:v13];
    [v9 setGuestName:v17];

    v18 = [*(a1 + 32) dataManager];
    v19 = [v18 userUUIDForAccessCode:v13];
    [v9 setUserUUID:v19];

    v20 = v9;
    goto LABEL_18;
  }

  if (v8)
  {
    v14 = v8;
LABEL_16:
    v12 = [v14 accessoryAccessCodeValue];
    v15 = [v12 accessCodeValue];
    v13 = [v15 stringValue];

    goto LABEL_17;
  }

  if (v11)
  {
    v14 = v11;
    goto LABEL_16;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = *(a1 + 32);
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    v27 = [*(a1 + 40) UUID];
    v29 = 138543618;
    v30 = v26;
    v31 = 2112;
    v32 = v27;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Received modification request of unknown type", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v28 = v9;
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_submitAccessCodeModificationRequestsForMessage:(id)message
{
  v53[4] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v48 = v11;
    v49 = 2112;
    v50 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Submitting AccessCodeModificationRequests for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context2 = [(HMDAccessCodeManager *)selfCopy context];
  remoteMessageForwarder = [context2 remoteMessageForwarder];
  v15 = [remoteMessageForwarder messageForForwardedMessage:messageCopy];

  v16 = *MEMORY[0x277CCE700];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v53[2] = objc_opt_class();
  v53[3] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
  v18 = [v15 unarchivedObjectForKey:v16 ofClasses:v17];

  if (v18 && ![v18 hmf_isEmpty])
  {
    context3 = [(HMDAccessCodeManager *)selfCopy context];
    v25 = [context3 userForMessage:v15];

    uuid = [v25 uuid];
    context4 = [(HMDAccessCodeManager *)selfCopy context];
    home = [context4 home];
    v30 = [(HMDAccessCodeManager *)selfCopy _accessCodeForUserWithUUID:uuid inHome:home];

    if ([v25 isAdministrator] & 1) != 0 || (-[objc_class allModificationRequests:areAddingAccessCode:](-[HMDAccessCodeManager utilities](selfCopy, "utilities"), "allModificationRequests:areAddingAccessCode:", v18, v30))
    {
      v31 = [(HMDAccessCodeManager *)selfCopy _updateModificationRequestsWithUserOrGuestNames:v18 flow:flow];
      accessoryReaderWriter = [(HMDAccessCodeManager *)selfCopy accessoryReaderWriter];
      v33 = [accessoryReaderWriter performAccessCodeModificationRequests:v31 withRetries:1 flow:flow];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __72__HMDAccessCodeManager__submitAccessCodeModificationRequestsForMessage___block_invoke;
      v44[3] = &unk_279733F88;
      v44[4] = selfCopy;
      v45 = flow;
      v46 = v15;
      v34 = [v33 addCompletionBlock:v44];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        [flow UUID];
        v38 = v43 = v35;
        uuid2 = [v25 uuid];
        *buf = 138543874;
        v48 = v42;
        v49 = 2112;
        v50 = v38;
        v51 = 2112;
        v52 = uuid2;
        v40 = uuid2;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Dropping request: The user: %@ is not an admin and attempted to change an access code that does not belong to them", buf, 0x20u);

        v35 = v43;
      }

      objc_autoreleasePoolPop(v35);
      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:53];
      [v15 respondWithError:v31];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      messagePayload = [v15 messagePayload];
      *buf = 138543874;
      v48 = v22;
      v49 = 2112;
      v50 = uUID2;
      v51 = 2112;
      v52 = messagePayload;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find modification requests in message payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v15 respondWithError:v25];
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __72__HMDAccessCodeManager__submitAccessCodeModificationRequestsForMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [a1[4] _updateCacheWithModificationResponses:v5 flow:a1[5]];
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] UUID];
      *buf = 138543874;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to client with modification response values: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = a1[6];
    v21 = *MEMORY[0x277CCE708];
    v13 = encodeRootObjectForIncomingXPCMessage(v5, 0);
    v22 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v12 respondWithPayload:{v14, v21}];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1[4];
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [a1[5] UUID];
      *buf = 138543874;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to perform modification requests with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    [a1[6] respondWithError:v6];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAccessCodeConstraintsForMessage:(id)message
{
  v39[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching access code constraints for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context2 = [(HMDAccessCodeManager *)selfCopy context];
  remoteMessageForwarder = [context2 remoteMessageForwarder];
  v15 = [remoteMessageForwarder messageForForwardedMessage:messageCopy];

  v16 = *MEMORY[0x277CCE738];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v18 = [v15 unarchivedObjectForKey:v16 ofClasses:v17];

  if (v18 && ![v18 hmf_isEmpty])
  {
    accessoryReaderWriter = [(HMDAccessCodeManager *)selfCopy accessoryReaderWriter];
    v27 = [accessoryReaderWriter readConstraintsFromAccessoriesWithUUIDs:v18 flow:flow];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __62__HMDAccessCodeManager__fetchAccessCodeConstraintsForMessage___block_invoke;
    v30[3] = &unk_279733F88;
    v30[4] = selfCopy;
    v31 = flow;
    v32 = v15;
    v28 = [v27 addCompletionBlock:v30];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      messagePayload = [v15 messagePayload];
      *buf = 138543874;
      v34 = v22;
      v35 = 2112;
      v36 = uUID2;
      v37 = 2112;
      v38 = messagePayload;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find accessory UUIDs in message payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v15 respondWithError:v25];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __62__HMDAccessCodeManager__fetchAccessCodeConstraintsForMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] UUID];
      *buf = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with constraints: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = a1[6];
    v19 = *MEMORY[0x277CCE720];
    v14 = encodeRootObjectForIncomingXPCMessage(v5, 0);
    v20 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [v13 respondWithPayload:{v15, v19}];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [a1[5] UUID];
      *buf = 138543874;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read access code constraints with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] respondWithError:v6];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAccessCodesForMessage:(id)message
{
  v39[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching access codes for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  context2 = [(HMDAccessCodeManager *)selfCopy context];
  remoteMessageForwarder = [context2 remoteMessageForwarder];
  v15 = [remoteMessageForwarder messageForForwardedMessage:messageCopy];

  v16 = *MEMORY[0x277CCE738];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v18 = [v15 unarchivedObjectForKey:v16 ofClasses:v17];

  if (v18 && ![v18 hmf_isEmpty])
  {
    accessoryReaderWriter = [(HMDAccessCodeManager *)selfCopy accessoryReaderWriter];
    v27 = [accessoryReaderWriter readAccessCodesFromAccessoriesWithUUIDs:v18 flow:flow];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __52__HMDAccessCodeManager__fetchAccessCodesForMessage___block_invoke;
    v30[3] = &unk_279733F88;
    v30[4] = selfCopy;
    v31 = flow;
    v32 = v15;
    v28 = [v27 addCompletionBlock:v30];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      messagePayload = [v15 messagePayload];
      *buf = 138543874;
      v34 = v22;
      v35 = 2112;
      v36 = uUID2;
      v37 = 2112;
      v38 = messagePayload;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find accessory UUIDs in message payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v15 respondWithError:v25];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __52__HMDAccessCodeManager__fetchAccessCodesForMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [a1[4] context];
    v8 = [v7 userForMessage:a1[6]];

    if (v8)
    {
      v9 = [a1[4] dataManager];
      [v9 updateCacheWithFetchResponses:v5 flow:a1[5]];

      v10 = [objc_msgSend(a1[4] "utilities")];
      v11 = objc_autoreleasePoolPush();
      v12 = a1[4];
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [a1[5] UUID];
        *buf = 138543874;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = v10;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to message with fetch responses: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = a1[6];
      v32 = *MEMORY[0x277CCE728];
      v17 = encodeRootObjectForIncomingXPCMessage(v10, 0);
      v33 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      [v16 respondWithPayload:{v18, v32}];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = a1[4];
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [a1[5] UUID];
        v29 = a1[6];
        *buf = 138543874;
        v35 = v27;
        v36 = 2112;
        v37 = v28;
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to determine which user sent the message: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v30 = a1[6];
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v30 respondWithError:v10];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = a1[4];
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [a1[5] UUID];
      *buf = 138543874;
      v35 = v22;
      v36 = 2112;
      v37 = v23;
      v38 = 2112;
      v39 = v6;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read access codes with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [a1[6] respondWithError:v6];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)_redispatchToResidentIfNeccesaryForMessage:(id)message flow:(id)flow withNewResponseHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  flowCopy = flow;
  handlerCopy = handler;
  context = [(HMDAccessCodeManager *)self context];
  isCurrentDevicePrimaryResident = [context isCurrentDevicePrimaryResident];

  if ((isCurrentDevicePrimaryResident & 1) == 0)
  {
    context2 = [(HMDAccessCodeManager *)self context];
    if ([context2 primaryResidentSupportsAccessCodes])
    {
      context3 = [(HMDAccessCodeManager *)self context];
      residentCommunicationHandlerPreferredDevice = [context3 residentCommunicationHandlerPreferredDevice];

      if (residentCommunicationHandlerPreferredDevice)
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          uUID = [flowCopy UUID];
          v34 = 138543618;
          v35 = v19;
          v36 = 2112;
          v37 = uUID;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Redispatching message to resident.", &v34, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        if (handlerCopy)
        {
          context5 = [messageCopy mutableCopy];
          [context5 setResponseHandler:handlerCopy];
          context4 = [(HMDAccessCodeManager *)selfCopy context];
          remoteMessageForwarder = [context4 remoteMessageForwarder];
          [remoteMessageForwarder redispatchToResidentMessage:context5];
        }

        else
        {
          context5 = [(HMDAccessCodeManager *)selfCopy context];
          context4 = [context5 remoteMessageForwarder];
          [context4 redispatchToResidentMessage:messageCopy];
        }

LABEL_16:
        v26 = 1;
        goto LABEL_17;
      }
    }

    else
    {
    }

    context6 = [(HMDAccessCodeManager *)self context];
    isCurrentDeviceOwnerUser = [context6 isCurrentDeviceOwnerUser];

    if ((isCurrentDeviceOwnerUser & 1) == 0)
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        v34 = 138543618;
        v35 = v30;
        v36 = 2112;
        v37 = uUID2;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] There is no resident available, so nothing can be done.", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      context5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
      [messageCopy respondWithError:context5];
      goto LABEL_16;
    }
  }

  v26 = 0;
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)_updateCacheWithModificationResponses:(id)responses flow:(id)flow
{
  v28 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  flowCopy = flow;
  if (responsesCopy)
  {
    internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uUID = [internalOnlyInitializer UUID];
      uUID2 = [flowCopy UUID];
      v22 = 138543874;
      v23 = v12;
      v24 = 2112;
      v25 = uUID;
      v26 = 2112;
      v27 = uUID2;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Updating cache with modification responses", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [(objc_class *)[(HMDAccessCodeManager *)selfCopy utilities] addedAccessoryAccessCodesFromModificationResponses:responsesCopy];
    if ([v15 count])
    {
      dataManager = [(HMDAccessCodeManager *)selfCopy dataManager];
      [dataManager updateCacheWithAddedAccessCodes:v15 flow:internalOnlyInitializer];
    }

    v17 = [(objc_class *)[(HMDAccessCodeManager *)selfCopy utilities] updatedAccessoryAccessCodesFromModificationResponses:responsesCopy];
    if ([v17 count])
    {
      dataManager2 = [(HMDAccessCodeManager *)selfCopy dataManager];
      [dataManager2 updateCacheWithUpdatedAccessCodes:v17 flow:internalOnlyInitializer];
    }

    v19 = [(objc_class *)[(HMDAccessCodeManager *)selfCopy utilities] removedAccessoryAccessCodesFromModificationResponses:responsesCopy];
    if ([v19 count])
    {
      dataManager3 = [(HMDAccessCodeManager *)selfCopy dataManager];
      [dataManager3 updateCacheWithRemovedAccessCodes:v19 flow:internalOnlyInitializer];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasCurrentUserAccessCodeChangedWithChangedAccessCodes:(id)codes home:(id)home
{
  homeCopy = home;
  codesCopy = codes;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HMDAccessCodeManager_hasCurrentUserAccessCodeChangedWithChangedAccessCodes_home___block_invoke;
  v12[3] = &unk_27972E4F0;
  v13 = homeCopy;
  v10 = homeCopy;
  LOBYTE(homeCopy) = [codesCopy na_any:v12];

  return homeCopy;
}

uint64_t __83__HMDAccessCodeManager_hasCurrentUserAccessCodeChangedWithChangedAccessCodes_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInformationValue];
  v4 = [v3 userUUID];
  v5 = [*(a1 + 32) currentUser];
  v6 = [v5 uuid];
  v7 = HMFEqualObjects();

  return v7;
}

- (void)handleHomeDidDisableCharacteristicNotification:(id)notification
{
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDAccessCodeManager_handleHomeDidDisableCharacteristicNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __71__HMDAccessCodeManager_handleHomeDidDisableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling home did disable characteristic notification", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) setHomeAppForegrounded:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDidEnableCharacteristicNotification:(id)notification
{
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDAccessCodeManager_handleHomeDidEnableCharacteristicNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __70__HMDAccessCodeManager_handleHomeDidEnableCharacteristicNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling home did enable characteristic notification", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) setHomeAppForegrounded:1];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessorySupportsAccessCodeDidChangeNotification:(id)notification
{
  v35 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  context = [(HMDAccessCodeManager *)self context];
  home = [context home];

  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = object;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  home2 = [v9 home];

  if (home2 == home)
  {
    internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      uUID = [internalOnlyInitializer UUID];
      uuid = [v9 uuid];
      *buf = 138543874;
      v30 = v19;
      v31 = 2112;
      v32 = uUID;
      v33 = 2112;
      v34 = uuid;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling accessory supports access code did change: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    context2 = [(HMDAccessCodeManager *)selfCopy context];
    workQueue = [context2 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HMDAccessCodeManager_handleAccessorySupportsAccessCodeDidChangeNotification___block_invoke;
    block[3] = &unk_279734960;
    v26 = v9;
    v27 = selfCopy;
    v28 = home;
    dispatch_async(workQueue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Not handling access code support change for accessory in other home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __79__HMDAccessCodeManager_handleAccessorySupportsAccessCodeDidChangeNotification___block_invoke(id *a1)
{
  if ([a1[4] supportsAccessCode] && objc_msgSend(a1[4], "wasUpdatedWithServiceType:", @"00000260-0000-1000-8000-0026BB765291") && (objc_msgSend(a1[4], "hasPostedBulletinForAccessCodeOnboarding") & 1) == 0)
  {
    v5 = [a1[5] context];
    if (([v5 hasHomeOnboardedForAccessCodes] & 1) == 0 && objc_msgSend(a1[6], "isAdminUser"))
    {
      v2 = [a1[5] context];
      v3 = [v2 isCurrentDeviceWatch];

      if (v3)
      {
        return;
      }

      [a1[4] setHasPostedBulletinForAccessCodeOnboarding:1];
      v5 = [a1[5] context];
      v4 = [v5 bulletinBoard];
      [v4 insertLockOnboardingBulletinForHome:a1[6] serviceType:@"00000260-0000-1000-8000-0026BB765291"];
    }
  }
}

- (void)handleHomeUserRemovedNotification:(id)notification
{
  notificationCopy = notification;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDAccessCodeManager_handleHomeUserRemovedNotification___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = notificationCopy;
  selfCopy = self;
  v7 = notificationCopy;
  dispatch_async(workQueue, v8);
}

void __58__HMDAccessCodeManager_handleHomeUserRemovedNotification___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDUserNotificationKey"];

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

  v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    v41 = 2112;
    v42 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling removed user: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v5 accessCode];

  if (!v12)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 40);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v6 UUID];
      *buf = 138543618;
      v38 = v27;
      v39 = 2112;
      v40 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removed user does not have an access code, so nothing to do.", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v13 = *(a1 + 40);
  v14 = [v13 dataManager];
  v15 = MEMORY[0x277CD1A68];
  v16 = [v5 accessCode];
  v17 = [v5 uuid];
  v18 = [v15 homeAccessCodeValueWithStringValue:v16 userUUID:v17];
  v36 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [v13 accessCodeDataManager:v14 didRemoveHomeAccessCodes:v19 removedByUserUUID:0 flow:v6];

  v20 = [*(a1 + 40) context];
  LOBYTE(v13) = [v20 isCurrentDevicePrimaryResident];

  if ((v13 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v29 = *(a1 + 40);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [v6 UUID];
      v33 = [*(a1 + 40) context];
      [v33 isCurrentDevicePrimaryResident];
      v34 = HMFBooleanToString();
      *buf = 138543874;
      v38 = v31;
      v39 = 2112;
      v40 = v32;
      v41 = 2112;
      v42 = v34;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not removing access codes for removed user since isCurrentDevicePrimaryResident: %@", buf, 0x20u);
    }

LABEL_15:
    objc_autoreleasePoolPop(v24);
    goto LABEL_16;
  }

  v21 = *(a1 + 40);
  v22 = [v5 accessCode];
  v23 = [v21 _removeAccessCode:v22 forUserBeingRemoved:v5 flow:v6];

LABEL_16:
  v35 = *MEMORY[0x277D85DE8];
}

- (void)handleUserAccessCodeDidChangeMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  flow = [messageCopy flow];
  v6 = [messageCopy numberForKey:@"HMDAccessCodeManagerMessageKeyUserAccessCodeChangeType"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = uUID;
    v22 = 2048;
    v23 = unsignedIntegerValue;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling UserAccessCodeDidChangeMessage with changeType: %lu", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  context = [(HMDAccessCodeManager *)selfCopy context];
  home = [context home];

  switch(unsignedIntegerValue)
  {
    case 2:
      context2 = [(HMDAccessCodeManager *)selfCopy context];
      bulletinBoard = [context2 bulletinBoard];
      [bulletinBoard insertAccessCodeRemovedBulletinForHome:home];
      goto LABEL_9;
    case 1:
      context2 = [(HMDAccessCodeManager *)selfCopy context];
      bulletinBoard = [context2 bulletinBoard];
      [bulletinBoard insertAccessCodeChangedBulletinForHome:home];
      goto LABEL_9;
    case 0:
      context2 = [(HMDAccessCodeManager *)selfCopy context];
      bulletinBoard = [context2 bulletinBoard];
      [bulletinBoard insertAccessCodeAddedBulletinForHome:home];
LABEL_9:

      break;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleConfirmDataHasSyncedToResidentMessage:(id)message
{
  v34[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling ConfirmDataHasSyncedToResidentMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277CCE738];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v15 = [messageCopy unarchivedObjectForKey:v13 ofClasses:v14];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __68__HMDAccessCodeManager_handleConfirmDataHasSyncedToResidentMessage___block_invoke;
  v27[3] = &unk_2797358A0;
  v27[4] = selfCopy;
  v16 = [v15 na_all:v27];
  v17 = objc_autoreleasePoolPush();
  v18 = selfCopy;
  v19 = HMFGetOSLogHandle();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (v20)
    {
      v21 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      *buf = 138543874;
      v29 = v21;
      v30 = 2112;
      v31 = uUID2;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resident has all accessories for UUIDs: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [messageCopy respondWithSuccess];
  }

  else
  {
    if (v20)
    {
      v23 = HMFGetLogIdentifier();
      uUID3 = [flow UUID];
      *buf = 138543874;
      v29 = v23;
      v30 = 2112;
      v31 = uUID3;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resident does not have all accessories for UUIDs: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [messageCopy respondWithError:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

BOOL __68__HMDAccessCodeManager_handleConfirmDataHasSyncedToResidentMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 context];
  v5 = [v4 hapAccessoryWithUUID:v3];

  return v5 != 0;
}

- (void)handleGenerateNewUserAccessCodeMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling GenerateNewUserAccessCodeMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, selfCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMDAccessCodeManager_handleGenerateNewUserAccessCodeMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = flow;
  v17 = v13;
  v14 = messageCopy;
  v18 = v14;
  if (![(HMDAccessCodeManager *)selfCopy _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)selfCopy _generateNewUserAccessCodeForMessage:v14];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __63__HMDAccessCodeManager_handleGenerateNewUserAccessCodeMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *MEMORY[0x277CCE708];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v5 hmf_unarchivedObjectForKey:v8 ofClasses:v9];

  [WeakRetained _updateCacheWithModificationResponses:v10 flow:*(a1 + 32)];
  [*(a1 + 40) respondWithPayload:v5 error:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleResetAccessoryAccessCodesMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = uUID;
    v24 = 2112;
    v25 = messageCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling ResetAccessoryAccessCodesMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, selfCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMDAccessCodeManager_handleResetAccessoryAccessCodesMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = flow;
  v17 = v13;
  v14 = messageCopy;
  v18 = v14;
  if (![(HMDAccessCodeManager *)selfCopy _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)selfCopy _resetAccessoryAccessCodesForMessage:v14];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __63__HMDAccessCodeManager_handleResetAccessoryAccessCodesMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *MEMORY[0x277CCE708];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v5 hmf_unarchivedObjectForKey:v8 ofClasses:v9];

  [WeakRetained _updateCacheWithModificationResponses:v10 flow:*(a1 + 32)];
  [*(a1 + 40) respondWithPayload:v5 error:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchCachedAccessCodesMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling FetchCachedAccessCodesMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = objc_autoreleasePoolPush();
  v14 = selfCopy;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID2 = [flow UUID];
    dataManager = [(HMDAccessCodeManager *)v14 dataManager];
    cachedAccessCodes = [dataManager cachedAccessCodes];
    *buf = 138543874;
    v28 = v16;
    v29 = 2112;
    v30 = uUID2;
    v31 = 2112;
    v32 = cachedAccessCodes;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with cached access codes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  dataManager2 = [(HMDAccessCodeManager *)v14 dataManager];
  cachedAccessCodes2 = [dataManager2 cachedAccessCodes];
  v22 = encodeRootObjectForIncomingXPCMessage(cachedAccessCodes2, 0);
  v26 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [messageCopy respondWithPayload:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchHomeAccessCodesMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling FetchHomeAccessCodesMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  dataManager = [(HMDAccessCodeManager *)selfCopy dataManager];
  homeAccessCodeValues = [dataManager homeAccessCodeValues];

  v15 = objc_autoreleasePoolPush();
  v16 = selfCopy;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    uUID2 = [flow UUID];
    *buf = 138543874;
    v26 = v18;
    v27 = 2112;
    v28 = uUID2;
    v29 = 2112;
    v30 = homeAccessCodeValues;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with home access codes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v23 = *MEMORY[0x277CCE748];
  v20 = encodeRootObjectForIncomingXPCMessage(homeAccessCodeValues, 0);
  v24 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [messageCopy respondWithPayload:{v21, v23}];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchAccessCodeConstraintsMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v38 = v11;
    v39 = 2112;
    v40 = uUID;
    v41 = 2112;
    v42 = messageCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling FetchAccessCodeConstraintsMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v14 = [messageCopy unarchivedObjectForKey:*MEMORY[0x277CCE738] ofClasses:v13];

  if (v14 && ![v14 hmf_isEmpty])
  {
    objc_initWeak(buf, selfCopy);
    v22 = [(HMDAccessCodeManager *)selfCopy _waitUntilDataHasSyncedToResidentIfNecessaryForAccessoryUUIDs:v14 flow:flow];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __64__HMDAccessCodeManager_handleFetchAccessCodeConstraintsMessage___block_invoke;
    v32[3] = &unk_279720E20;
    objc_copyWeak(&v35, buf);
    v23 = messageCopy;
    v33 = v23;
    v24 = flow;
    v34 = v24;
    v25 = [v22 addSuccessBlock:v32];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__HMDAccessCodeManager_handleFetchAccessCodeConstraintsMessage___block_invoke_3;
    v28[3] = &unk_279730430;
    v28[4] = selfCopy;
    v29 = v24;
    v30 = v14;
    v31 = v23;
    v26 = [v25 addFailureBlock:v28];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      messagePayload = [messageCopy messagePayload];
      *buf = 138543874;
      v38 = v18;
      v39 = 2112;
      v40 = uUID2;
      v41 = 2112;
      v42 = messagePayload;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find accessory UUIDs in message payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v21];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __64__HMDAccessCodeManager_handleFetchAccessCodeConstraintsMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__HMDAccessCodeManager_handleFetchAccessCodeConstraintsMessage___block_invoke_2;
  v5[3] = &unk_279734E00;
  v6 = v3;
  if (([WeakRetained _redispatchToResidentIfNeccesaryForMessage:v6 flow:v4 withNewResponseHandler:v5] & 1) == 0)
  {
    [WeakRetained _fetchAccessCodeConstraintsForMessage:*(a1 + 32)];
  }
}

void __64__HMDAccessCodeManager_handleFetchAccessCodeConstraintsMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v13 = 138543874;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Data never synced to the resident for accessories: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [v10 respondWithError:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchAccessCodesMessage:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v38 = v11;
    v39 = 2112;
    v40 = uUID;
    v41 = 2112;
    v42 = messageCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling FetchAccessCodesMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v14 = [messageCopy unarchivedObjectForKey:*MEMORY[0x277CCE738] ofClasses:v13];

  if (v14 && ![v14 hmf_isEmpty])
  {
    objc_initWeak(buf, selfCopy);
    v22 = [(HMDAccessCodeManager *)selfCopy _waitUntilDataHasSyncedToResidentIfNecessaryForAccessoryUUIDs:v14 flow:flow];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__HMDAccessCodeManager_handleFetchAccessCodesMessage___block_invoke;
    v32[3] = &unk_279720E20;
    objc_copyWeak(&v35, buf);
    v23 = messageCopy;
    v33 = v23;
    v24 = flow;
    v34 = v24;
    v25 = [v22 addSuccessBlock:v32];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__HMDAccessCodeManager_handleFetchAccessCodesMessage___block_invoke_3;
    v28[3] = &unk_279730430;
    v28[4] = selfCopy;
    v29 = v24;
    v30 = v14;
    v31 = v23;
    v26 = [v25 addFailureBlock:v28];

    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      messagePayload = [messageCopy messagePayload];
      *buf = 138543874;
      v38 = v18;
      v39 = 2112;
      v40 = uUID2;
      v41 = 2112;
      v42 = messagePayload;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find accessory UUIDs in message payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v21];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __54__HMDAccessCodeManager_handleFetchAccessCodesMessage___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = a1[4];
  v6 = a1[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDAccessCodeManager_handleFetchAccessCodesMessage___block_invoke_2;
  v7[3] = &unk_279735248;
  objc_copyWeak(&v10, a1 + 6);
  v8 = a1[5];
  v9 = a1[4];
  if (([WeakRetained _redispatchToResidentIfNeccesaryForMessage:v5 flow:v6 withNewResponseHandler:v7] & 1) == 0)
  {
    [WeakRetained _fetchAccessCodesForMessage:a1[4]];
  }

  objc_destroyWeak(&v10);
}

void __54__HMDAccessCodeManager_handleFetchAccessCodesMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v13 = 138543874;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Data never synced to the resident for accessories: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 56);
  v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
  [v10 respondWithError:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void __54__HMDAccessCodeManager_handleFetchAccessCodesMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *MEMORY[0x277CCE728];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v5 hmf_unarchivedObjectForKey:v8 ofClasses:v9];

  v11 = [WeakRetained dataManager];
  [v11 updateCacheWithFetchResponses:v10 flow:*(a1 + 32)];

  [*(a1 + 40) respondWithPayload:v5 error:v6];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveHomeAccessCodeMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v31 = v11;
    v32 = 2112;
    v33 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling RemoveHomeAccessCodeMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277CCE718];
  v29 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v15 = [messageCopy unarchivedObjectForKey:v13 ofClasses:v14];

  if (v15)
  {
    dataManager = [(HMDAccessCodeManager *)selfCopy dataManager];
    v17 = [dataManager removeHomeAccessCodeWithValue:v15 removedByUserUUID:0 flow:flow];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __58__HMDAccessCodeManager_handleRemoveHomeAccessCodeMessage___block_invoke;
    v26[3] = &unk_279733A98;
    v26[4] = selfCopy;
    v27 = flow;
    v28 = messageCopy;
    v18 = [v17 addCompletionBlock:v26];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      *buf = 138543618;
      v31 = v22;
      v32 = 2112;
      v33 = uUID2;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find data in payload while attempting to remove home access code", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __58__HMDAccessCodeManager_handleRemoveHomeAccessCodeMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] UUID];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove home access code with error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [a1[6] respondWithError:v6];
  }

  else
  {
    [a1[6] respondWithSuccess];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleSetUserInformationMessage:(id)message
{
  v40[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling SetUserInformationMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277CCE750];
  v40[0] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v15 = [messageCopy unarchivedObjectForKey:v13 ofClasses:v14];

  v16 = *MEMORY[0x277CCE718];
  v39 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v18 = [messageCopy unarchivedObjectForKey:v16 ofClasses:v17];

  if (v15 && v18)
  {
    dataManager = [(HMDAccessCodeManager *)selfCopy dataManager];
    v20 = [dataManager setUserInformation:v15 forHomeAccessCodeWithValue:v18 changedByUserUUID:0 flow:flow];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __56__HMDAccessCodeManager_handleSetUserInformationMessage___block_invoke;
    v29[3] = &unk_279721D38;
    v29[4] = selfCopy;
    v30 = flow;
    v31 = v15;
    v32 = messageCopy;
    v21 = [v20 addCompletionBlock:v29];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      *buf = 138543874;
      v34 = v25;
      v35 = 2112;
      v36 = uUID2;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find data in payload while attempting to set userInfo: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [messageCopy respondWithError:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __56__HMDAccessCodeManager_handleSetUserInformationMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = *(a1 + 48);
      v14 = 138544130;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set userInfo: %@, with error: %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 56) respondWithError:v6];
  }

  else
  {
    [*(a1 + 56) respondWithSuccess];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleRemoveSimpleLabelAccessCodeMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = uUID;
    v24 = 2112;
    v25 = messageCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling RemoveSimpleLabelAccessCodeMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, selfCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__HMDAccessCodeManager_handleRemoveSimpleLabelAccessCodeMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = flow;
  v17 = v13;
  v14 = messageCopy;
  v18 = v14;
  if (![(HMDAccessCodeManager *)selfCopy _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)selfCopy _removeSimpleLabelAccessCodeMessage:v14];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __65__HMDAccessCodeManager_handleRemoveSimpleLabelAccessCodeMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *MEMORY[0x277CCE708];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v5 hmf_unarchivedObjectForKey:v8 ofClasses:v9];

  [WeakRetained _updateCacheWithModificationResponses:v10 flow:*(a1 + 32)];
  [*(a1 + 40) respondWithPayload:v5 error:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleSetAccessCodeForUserMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = uUID;
    v24 = 2112;
    v25 = messageCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling SetAccessCodeForUserMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, selfCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HMDAccessCodeManager_handleSetAccessCodeForUserMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = flow;
  v17 = v13;
  v14 = messageCopy;
  v18 = v14;
  if (![(HMDAccessCodeManager *)selfCopy _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)selfCopy _setAccessCodeForUserForMessage:v14];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __58__HMDAccessCodeManager_handleSetAccessCodeForUserMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *MEMORY[0x277CCE708];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v5 hmf_unarchivedObjectForKey:v8 ofClasses:v9];

  [WeakRetained _updateCacheWithModificationResponses:v10 flow:*(a1 + 32)];
  [*(a1 + 40) respondWithPayload:v5 error:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleSubmitAccessCodeModificationRequestsMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = uUID;
    v24 = 2112;
    v25 = messageCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling SubmitAccessCodeModificationRequestsMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, selfCopy);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HMDAccessCodeManager_handleSubmitAccessCodeModificationRequestsMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = flow;
  v17 = v13;
  v14 = messageCopy;
  v18 = v14;
  if (![(HMDAccessCodeManager *)selfCopy _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)selfCopy _submitAccessCodeModificationRequestsForMessage:v14];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __74__HMDAccessCodeManager_handleSubmitAccessCodeModificationRequestsMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *MEMORY[0x277CCE708];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v5 hmf_unarchivedObjectForKey:v8 ofClasses:v9];

  [WeakRetained _updateCacheWithModificationResponses:v10 flow:*(a1 + 32)];
  [*(a1 + 40) respondWithPayload:v5 error:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleUnsubscribeMessage:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    v31 = 138543618;
    v32 = v11;
    v33 = 2112;
    v34 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling client unsubscribe message", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = transport;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    subscribedClientConnections = [(HMDAccessCodeManager *)selfCopy subscribedClientConnections];
    [subscribedClientConnections removeObject:v15];

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      v31 = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = uUID2;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with no payload after removing client from subscribed clients", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [messageCopy respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID3 = [flow UUID];
      v27 = objc_opt_class();
      transport2 = [messageCopy transport];
      v31 = 138544130;
      v32 = v25;
      v33 = 2112;
      v34 = uUID3;
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = transport2;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Subscribing transport was not of expected class %@: %@", &v31, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [messageCopy respondWithError:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleSubscribeMessage:(id)message
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  flow = [messageCopy flow];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flow UUID];
    v31 = 138543618;
    v32 = v11;
    v33 = 2112;
    v34 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling client subscribe message", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = transport;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    subscribedClientConnections = [(HMDAccessCodeManager *)selfCopy subscribedClientConnections];
    [subscribedClientConnections addObject:v15];

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      uUID2 = [flow UUID];
      v31 = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = uUID2;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with no payload after adding client to subscribed clients", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [messageCopy respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      uUID3 = [flow UUID];
      v27 = objc_opt_class();
      transport2 = [messageCopy transport];
      v31 = 138544130;
      v32 = v25;
      v33 = 2112;
      v34 = uUID3;
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = transport2;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Subscribing transport was not of expected class %@: %@", &v31, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [messageCopy respondWithError:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)fetchAccessCodeForIdentifier:(id)identifier accessoryUUID:(id)d flow:(id)flow completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  flowCopy = flow;
  completionCopy = completion;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataManager = [(HMDAccessCodeManager *)self dataManager];
  v17 = [dataManager cachedAccessCodeForIdentifier:identifierCopy accessoryUUID:dCopy];

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v21)
    {
      v22 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138544130;
      v36 = v22;
      v37 = 2112;
      v38 = uUID;
      v39 = 2112;
      v40 = identifierCopy;
      v41 = 2112;
      v42 = dCopy;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found cached access code for identifier: %@, accessory UUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    stringValue = [v17 stringValue];
    completionCopy[2](completionCopy, stringValue, 0);
  }

  else
  {
    if (v21)
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138544130;
      v36 = v25;
      v37 = 2112;
      v38 = uUID2;
      v39 = 2112;
      v40 = identifierCopy;
      v41 = 2112;
      v42 = dCopy;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching access code for identifier: %@, accessory UUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    accessoryReaderWriter = [(HMDAccessCodeManager *)selfCopy accessoryReaderWriter];
    v28 = [accessoryReaderWriter readAccessCodeWithIdentifier:identifierCopy accessoryUUID:dCopy flow:flowCopy];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __83__HMDAccessCodeManager_fetchAccessCodeForIdentifier_accessoryUUID_flow_completion___block_invoke;
    v31[3] = &unk_279720DF8;
    v31[4] = selfCopy;
    v32 = flowCopy;
    v33 = identifierCopy;
    v34 = completionCopy;
    v29 = [v28 addCompletionBlock:v31];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __83__HMDAccessCodeManager_fetchAccessCodeForIdentifier_accessoryUUID_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      v20 = 138543874;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetched access code for access code identifier: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 56);
    v15 = [v5 stringValue];
    (*(v14 + 16))(v14, v15, 0);
  }

  else
  {
    if (v10)
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 40) UUID];
      v18 = *(a1 + 48);
      v20 = 138544130;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to fetch access code for access code identifier: %@ with error: %@", &v20, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  context = [(HMDAccessCodeManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  context2 = [(HMDAccessCodeManager *)self context];
  administratorHandler = [context2 administratorHandler];
  [administratorHandler deregisterReceiver:self];

  context3 = [(HMDAccessCodeManager *)self context];
  notificationCenter = [context3 notificationCenter];
  [notificationCenter removeObserver:self];
}

- (void)configureWithMessageDispatcher:(id)dispatcher
{
  v77 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  context = [(HMDAccessCodeManager *)self context];
  workQueue = [context workQueue];
  dispatch_assert_queue_V2(workQueue);

  context2 = [(HMDAccessCodeManager *)self context];
  [context2 configureWithMessageDispatcher:dispatcherCopy];

  context3 = [(HMDAccessCodeManager *)self context];
  home = [context3 home];

  if (!home)
  {
    _HMFPreconditionFailure();
  }

  v66 = dispatcherCopy;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    context4 = [(HMDAccessCodeManager *)selfCopy context];
    uUID = [context4 UUID];
    *buf = 138543874;
    v72 = v13;
    v73 = 2112;
    v74 = uUID;
    v75 = 2112;
    v76 = home;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Configuring HMDAccessCodeManager with UUID: %@, for home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v17 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v18 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v19 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v70[0] = v16;
  v70[1] = v18;
  v65 = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v69[0] = v16;
  v69[1] = v17;
  v64 = v17;
  v69[2] = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  context5 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher = [context5 messageDispatcher];
  [messageDispatcher registerForMessage:*MEMORY[0x277CCE790] receiver:selfCopy policies:v20 selector:sel_handleSubscribeMessage_];

  context6 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher2 = [context6 messageDispatcher];
  [messageDispatcher2 registerForMessage:*MEMORY[0x277CCE798] receiver:selfCopy policies:v20 selector:sel_handleUnsubscribeMessage_];

  context7 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher3 = [context7 messageDispatcher];
  [messageDispatcher3 registerForMessage:*MEMORY[0x277CCE6E0] receiver:selfCopy policies:v21 selector:sel_handleFetchAccessCodesMessage_];

  context8 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher4 = [context8 messageDispatcher];
  [messageDispatcher4 registerForMessage:*MEMORY[0x277CCE6D8] receiver:selfCopy policies:v21 selector:sel_handleFetchAccessCodeConstraintsMessage_];

  context9 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher5 = [context9 messageDispatcher];
  [messageDispatcher5 registerForMessage:*MEMORY[0x277CCE6F0] receiver:selfCopy policies:v20 selector:sel_handleFetchHomeAccessCodesMessage_];

  context10 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher6 = [context10 messageDispatcher];
  [messageDispatcher6 registerForMessage:*MEMORY[0x277CCE6E8] receiver:selfCopy policies:v20 selector:sel_handleFetchCachedAccessCodesMessage_];

  context11 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher7 = [context11 messageDispatcher];
  [messageDispatcher7 registerForMessage:*MEMORY[0x277CCE770] receiver:selfCopy policies:v21 selector:sel_handleResetAccessoryAccessCodesMessage_];

  context12 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher8 = [context12 messageDispatcher];
  [messageDispatcher8 registerForMessage:*MEMORY[0x277CCE778] receiver:selfCopy policies:v21 selector:sel_handleSetAccessCodeForUserMessage_];

  context13 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher9 = [context13 messageDispatcher];
  [messageDispatcher9 registerForMessage:*MEMORY[0x277CCE788] receiver:selfCopy policies:v21 selector:sel_handleSubmitAccessCodeModificationRequestsMessage_];

  context14 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher10 = [context14 messageDispatcher];
  [messageDispatcher10 registerForMessage:@"HMAccessCodeManagerConfirmDataHasSyncedToResidentMessage" receiver:selfCopy policies:v21 selector:sel_handleConfirmDataHasSyncedToResidentMessage_];

  context15 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher11 = [context15 messageDispatcher];
  [messageDispatcher11 registerForMessage:@"HMDAccessCodeManagerUserAccessCodeDidChangeMessage" receiver:selfCopy policies:v21 selector:sel_handleUserAccessCodeDidChangeMessage_];

  v68[0] = v16;
  v68[1] = v19;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v67[0] = v16;
  v67[1] = v17;
  v67[2] = v19;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
  context16 = [(HMDAccessCodeManager *)selfCopy context];
  administratorHandler = [context16 administratorHandler];
  [administratorHandler registerForMessage:*MEMORY[0x277CCE780] receiver:selfCopy policies:v44 selector:sel_handleSetUserInformationMessage_];

  context17 = [(HMDAccessCodeManager *)selfCopy context];
  administratorHandler2 = [context17 administratorHandler];
  [administratorHandler2 registerForMessage:*MEMORY[0x277CCE760] receiver:selfCopy policies:v44 selector:sel_handleRemoveHomeAccessCodeMessage_];

  context18 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher12 = [context18 messageDispatcher];
  [messageDispatcher12 registerForMessage:*MEMORY[0x277CCE6F8] receiver:selfCopy policies:v45 selector:sel_handleGenerateNewUserAccessCodeMessage_];

  context19 = [(HMDAccessCodeManager *)selfCopy context];
  messageDispatcher13 = [context19 messageDispatcher];
  [messageDispatcher13 registerForMessage:*MEMORY[0x277CCE768] receiver:selfCopy policies:v45 selector:sel_handleRemoveSimpleLabelAccessCodeMessage_];

  context20 = [(HMDAccessCodeManager *)selfCopy context];
  notificationCenter = [context20 notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:home];

  context21 = [(HMDAccessCodeManager *)selfCopy context];
  notificationCenter2 = [context21 notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleAccessorySupportsAccessCodeDidChangeNotification_ name:@"HMDAccessorySupportsAccessCodeDidChangeNotification" object:0];

  context22 = [(HMDAccessCodeManager *)selfCopy context];
  notificationCenter3 = [context22 notificationCenter];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleHomeDidEnableCharacteristicNotification_ name:@"HMDHomeDidEnableCharacteristicNotifyEventNotification" object:home];

  context23 = [(HMDAccessCodeManager *)selfCopy context];
  notificationCenter4 = [context23 notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handleHomeDidDisableCharacteristicNotification_ name:@"HMDHomeDidDisableCharacteristicNotifyEventNotification" object:home];

  dataManager = [(HMDAccessCodeManager *)selfCopy dataManager];
  [dataManager configure];

  v63 = *MEMORY[0x277D85DE8];
}

- (HMDAccessCodeManager)initWithContext:(id)context utilities:(Class)utilities accessoryReaderWriter:(id)writer dataManager:(id)manager
{
  contextCopy = context;
  writerCopy = writer;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = HMDAccessCodeManager;
  v14 = [(HMDAccessCodeManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_context, context);
    objc_storeStrong(&v15->_utilities, utilities);
    objc_storeStrong(&v15->_accessoryReaderWriter, writer);
    objc_storeStrong(&v15->_dataManager, manager);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    subscribedClientConnections = v15->_subscribedClientConnections;
    v15->_subscribedClientConnections = weakObjectsHashTable;
  }

  return v15;
}

- (HMDAccessCodeManager)initWithContext:(id)context
{
  contextCopy = context;
  v5 = [[HMDAccessoryAccessCodeReaderWriter alloc] initWithContext:contextCopy];
  v6 = [[HMDAccessCodeDataManager alloc] initWithContext:contextCopy delegate:self];
  v7 = [(HMDAccessCodeManager *)self initWithContext:contextCopy utilities:objc_opt_class() accessoryReaderWriter:v5 dataManager:v6];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t112 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t112, &__block_literal_global_396);
  }

  v3 = logCategory__hmf_once_v113;

  return v3;
}

uint64_t __35__HMDAccessCodeManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v113 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end