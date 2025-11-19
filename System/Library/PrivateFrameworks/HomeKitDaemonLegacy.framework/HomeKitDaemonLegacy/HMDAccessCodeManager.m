@interface HMDAccessCodeManager
+ (id)logCategory;
- (BOOL)_redispatchToResidentIfNeccesaryForMessage:(id)a3 flow:(id)a4 withNewResponseHandler:(id)a5;
- (BOOL)hasCurrentUserAccessCodeChangedWithChangedAccessCodes:(id)a3 home:(id)a4;
- (HMDAccessCodeManager)initWithContext:(id)a3;
- (HMDAccessCodeManager)initWithContext:(id)a3 utilities:(Class)a4 accessoryReaderWriter:(id)a5 dataManager:(id)a6;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)_accessCodeForUserWithUUID:(id)a3 inHome:(id)a4;
- (id)_createNewAccessCodeForUserWithUUID:(id)a3 flow:(id)a4;
- (id)_removeAccessCode:(id)a3 forUser:(id)a4 removedByUserUUID:(id)a5 flow:(id)a6;
- (id)_removeAccessCode:(id)a3 forUserBeingRemoved:(id)a4 flow:(id)a5;
- (id)_removeAccessCode:(id)a3 forUserWithUUID:(id)a4 removedByUserUUID:(id)a5 flow:(id)a6;
- (id)_removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure:(id)a3 forUserUUID:(id)a4 flow:(id)a5;
- (id)_resetAccessCodesForHomeAccessCode:(id)a3 flow:(id)a4;
- (id)_updateAccessCode:(id)a3 toNewValue:(id)a4 onAccessoriesWithFetchResponses:(id)a5 withRetries:(BOOL)a6 flow:(id)a7;
- (id)_updateModificationRequestsWithUserOrGuestNames:(id)a3 flow:(id)a4;
- (id)_waitUntilDataHasSyncedToResidentForAccessoryUUIDs:(id)a3 flow:(id)a4;
- (id)_waitUntilDataHasSyncedToResidentIfNecessaryForAccessoryUUIDs:(id)a3 flow:(id)a4;
- (id)addNewAccessCode:(id)a3 forUserWithUUID:(id)a4 toAccessoriesWithUUIDs:(id)a5 withRetries:(BOOL)a6 flow:(id)a7;
- (id)logIdentifier;
- (id)removeAccessCode:(id)a3 fromHAPAccessory:(id)a4 flow:(id)a5;
- (void)_fetchAccessCodeConstraintsForMessage:(id)a3;
- (void)_fetchAccessCodesForMessage:(id)a3;
- (void)_generateNewAccessCodeWithFlow:(id)a3 completion:(id)a4;
- (void)_generateNewUserAccessCodeForMessage:(id)a3;
- (void)_notifySubscribersOfMessageWithName:(id)a3 flow:(id)a4 payload:(id)a5;
- (void)_removeSimpleLabelAccessCodeMessage:(id)a3;
- (void)_resetAccessoryAccessCodesForMessage:(id)a3;
- (void)_setAccessCodeForUserForMessage:(id)a3;
- (void)_submitAccessCodeModificationRequestsForMessage:(id)a3;
- (void)_updateAccessoryAccessCodeCacheWithFlow:(id)a3;
- (void)_updateCacheWithModificationResponses:(id)a3 flow:(id)a4;
- (void)accessCodeDataManager:(id)a3 didAddAccessoryAccessCodes:(id)a4 flow:(id)a5;
- (void)accessCodeDataManager:(id)a3 didAddHomeAccessCodes:(id)a4 addedByUserUUID:(id)a5 flow:(id)a6;
- (void)accessCodeDataManager:(id)a3 didRemoveAccessoryAccessCodes:(id)a4 flow:(id)a5;
- (void)accessCodeDataManager:(id)a3 didRemoveHomeAccessCodes:(id)a4 removedByUserUUID:(id)a5 flow:(id)a6;
- (void)accessCodeDataManager:(id)a3 didUpdateAccessoryAccessCodes:(id)a4 flow:(id)a5;
- (void)accessCodeDataManager:(id)a3 didUpdateHomeAccessCodes:(id)a4 changedByUserUUID:(id)a5 flow:(id)a6;
- (void)configureWithMessageDispatcher:(id)a3;
- (void)fetchAccessCodeForIdentifier:(id)a3 accessoryUUID:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)handleAccessorySupportsAccessCodeDidChangeNotification:(id)a3;
- (void)handleConfirmDataHasSyncedToResidentMessage:(id)a3;
- (void)handleFetchAccessCodeConstraintsMessage:(id)a3;
- (void)handleFetchAccessCodesMessage:(id)a3;
- (void)handleFetchCachedAccessCodesMessage:(id)a3;
- (void)handleFetchHomeAccessCodesMessage:(id)a3;
- (void)handleGenerateNewUserAccessCodeMessage:(id)a3;
- (void)handleHomeDidDisableCharacteristicNotification:(id)a3;
- (void)handleHomeDidEnableCharacteristicNotification:(id)a3;
- (void)handleHomeUserRemovedNotification:(id)a3;
- (void)handleRemoveHomeAccessCodeMessage:(id)a3;
- (void)handleRemoveSimpleLabelAccessCodeMessage:(id)a3;
- (void)handleResetAccessoryAccessCodesMessage:(id)a3;
- (void)handleSetAccessCodeForUserMessage:(id)a3;
- (void)handleSetUserInformationMessage:(id)a3;
- (void)handleSubmitAccessCodeModificationRequestsMessage:(id)a3;
- (void)handleSubscribeMessage:(id)a3;
- (void)handleUnsubscribeMessage:(id)a3;
- (void)handleUserAccessCodeDidChangeMessage:(id)a3;
- (void)unconfigure;
@end

@implementation HMDAccessCodeManager

- (OS_dispatch_queue)messageReceiveQueue
{
  v2 = [(HMDAccessCodeManager *)self context];
  v3 = [v2 workQueue];

  return v3;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDAccessCodeManager *)self context];
  v3 = [v2 UUID];

  return v3;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessCodeManager *)self context];
  v3 = [v2 UUID];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)accessCodeDataManager:(id)a3 didRemoveAccessoryAccessCodes:(id)a4 flow:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = [(HMDAccessCodeManager *)self context];
  v10 = [v9 workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = *MEMORY[0x277CCE6B8];
  v15 = *MEMORY[0x277CCE730];
  v12 = encodeRootObjectForIncomingXPCMessage(v8, 0);

  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(HMDAccessCodeManager *)self _notifySubscribersOfMessageWithName:v11 flow:v7 payload:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeDataManager:(id)a3 didUpdateAccessoryAccessCodes:(id)a4 flow:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = [(HMDAccessCodeManager *)self context];
  v10 = [v9 workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = *MEMORY[0x277CCE6C8];
  v15 = *MEMORY[0x277CCE730];
  v12 = encodeRootObjectForIncomingXPCMessage(v8, 0);

  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(HMDAccessCodeManager *)self _notifySubscribersOfMessageWithName:v11 flow:v7 payload:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeDataManager:(id)a3 didAddAccessoryAccessCodes:(id)a4 flow:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a4;
  v9 = [(HMDAccessCodeManager *)self context];
  v10 = [v9 workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = *MEMORY[0x277CCE6A8];
  v15 = *MEMORY[0x277CCE730];
  v12 = encodeRootObjectForIncomingXPCMessage(v8, 0);

  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(HMDAccessCodeManager *)self _notifySubscribersOfMessageWithName:v11 flow:v7 payload:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accessCodeDataManager:(id)a3 didRemoveHomeAccessCodes:(id)a4 removedByUserUUID:(id)a5 flow:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(HMDAccessCodeManager *)self context];
  v13 = [v12 workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__HMDAccessCodeManager_accessCodeDataManager_didRemoveHomeAccessCodes_removedByUserUUID_flow___block_invoke;
  v17[3] = &unk_279734870;
  v17[4] = self;
  v18 = v11;
  v19 = v9;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  dispatch_async(v13, v17);
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

- (void)accessCodeDataManager:(id)a3 didUpdateHomeAccessCodes:(id)a4 changedByUserUUID:(id)a5 flow:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(HMDAccessCodeManager *)self context];
  v13 = [v12 workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__HMDAccessCodeManager_accessCodeDataManager_didUpdateHomeAccessCodes_changedByUserUUID_flow___block_invoke;
  v17[3] = &unk_279734870;
  v17[4] = self;
  v18 = v11;
  v19 = v9;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  dispatch_async(v13, v17);
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

- (void)accessCodeDataManager:(id)a3 didAddHomeAccessCodes:(id)a4 addedByUserUUID:(id)a5 flow:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(HMDAccessCodeManager *)self context];
  v13 = [v12 workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__HMDAccessCodeManager_accessCodeDataManager_didAddHomeAccessCodes_addedByUserUUID_flow___block_invoke;
  v17[3] = &unk_279734870;
  v17[4] = self;
  v18 = v11;
  v19 = v9;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v11;
  dispatch_async(v13, v17);
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

- (id)_waitUntilDataHasSyncedToResidentForAccessoryUUIDs:(id)a3 flow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D2C900];
  v9 = [(HMDAccessCodeManager *)self context];
  v10 = [v9 residentDataSyncVerificationRetries];
  v11 = [(HMDAccessCodeManager *)self context];
  [v11 residentDataSyncVerificationRetryTimeInterval];
  v13 = v12;
  v14 = [(HMDAccessCodeManager *)self context];
  v15 = [v14 workQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __80__HMDAccessCodeManager__waitUntilDataHasSyncedToResidentForAccessoryUUIDs_flow___block_invoke;
  v20[3] = &unk_279720FE0;
  v20[4] = self;
  v21 = v6;
  v22 = v7;
  v16 = v7;
  v17 = v6;
  v18 = [v8 futureWithRetries:v10 timeInterval:v15 workQueue:v20 block:v13];

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

- (id)_waitUntilDataHasSyncedToResidentIfNecessaryForAccessoryUUIDs:(id)a3 flow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessCodeManager *)self context];
  v9 = [v8 isCurrentDevicePrimaryResident];

  if (!v9)
  {
    v10 = [(HMDAccessCodeManager *)self context];
    if ([v10 primaryResidentSupportsAccessCodes])
    {
      v11 = [(HMDAccessCodeManager *)self context];
      v12 = [v11 residentCommunicationHandlerPreferredDevice];

      if (v12)
      {
        v13 = [(HMDAccessCodeManager *)self _waitUntilDataHasSyncedToResidentForAccessoryUUIDs:v6 flow:v7];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v13 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_7:
  v14 = v13;

  return v14;
}

- (void)_updateAccessoryAccessCodeCacheWithFlow:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    v11 = [v4 UUID];
    *buf = 138543874;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Updating cache (aka reading pin codes from all locks)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x277D0F820]);
  v13 = [(HMDAccessCodeManager *)v7 messageTargetUUID];
  v24 = [v12 initWithTarget:v13];

  v14 = MEMORY[0x277D0F848];
  v15 = *MEMORY[0x277CCE6E0];
  v25[0] = *MEMORY[0x277CCE738];
  v16 = [(HMDAccessCodeManager *)v7 context];
  v17 = [v16 UUIDsOfAccessoriesSupportingAccessCodes];
  v18 = encodeRootObject();
  v26[0] = v18;
  v25[1] = *MEMORY[0x277D0F1C8];
  v19 = HMFEncodedRootObject();
  v26[1] = v19;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v21 = v20 = v4;
  v22 = [v14 messageWithName:v15 destination:v24 payload:v21];

  [(HMDAccessCodeManager *)v7 handleFetchAccessCodesMessage:v22];
  v23 = *MEMORY[0x277D85DE8];
}

- (id)_accessCodeForUserWithUUID:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = [a4 users];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HMDAccessCodeManager__accessCodeForUserWithUUID_inHome___block_invoke;
  v16[3] = &unk_27972E540;
  v8 = v6;
  v17 = v8;
  v9 = [v7 na_firstObjectPassingTest:v16];
  v10 = [v9 accessCode];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = [(HMDAccessCodeManager *)self dataManager];
    v13 = [v12 homeAccessCodeWithRemovedUserInfoWithUUID:v8];
    v14 = [v13 accessCodeValue];
    v11 = [v14 stringValue];
  }

  return v11;
}

uint64_t __58__HMDAccessCodeManager__accessCodeForUserWithUUID_inHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = HMFEqualObjects();

  return v4;
}

- (void)_generateNewAccessCodeWithFlow:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 UUID];
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generating new access code", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeManager *)v9 accessoryReaderWriter];
  v14 = [(HMDAccessCodeManager *)v9 context];
  v15 = [v14 UUIDsOfAccessoriesSupportingAccessCodes];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HMDAccessCodeManager__generateNewAccessCodeWithFlow_completion___block_invoke;
  v19[3] = &unk_279720FB8;
  v19[4] = v9;
  v20 = v6;
  v21 = v7;
  v16 = v7;
  v17 = v6;
  [v13 readConstraintsAndAccessCodesFromAccessoriesWithUUIDs:v15 flow:v17 completion:v19];

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

- (id)addNewAccessCode:(id)a3 forUserWithUUID:(id)a4 toAccessoriesWithUUIDs:(id)a5 withRetries:(BOOL)a6 flow:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_opt_new();
  v17 = [(HMDAccessCodeManager *)self context];
  v18 = [v17 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HMDAccessCodeManager_addNewAccessCode_forUserWithUUID_toAccessoriesWithUUIDs_withRetries_flow___block_invoke;
  block[3] = &unk_279720EE8;
  block[4] = self;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v33 = a6;
  v31 = v15;
  v19 = v16;
  v32 = v19;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  dispatch_async(v18, block);

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

- (id)_updateAccessCode:(id)a3 toNewValue:(id)a4 onAccessoriesWithFetchResponses:(id)a5 withRetries:(BOOL)a6 flow:(id)a7
{
  v11 = a3;
  v12 = a4;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __102__HMDAccessCodeManager__updateAccessCode_toNewValue_onAccessoriesWithFetchResponses_withRetries_flow___block_invoke;
  v26[3] = &unk_279720E98;
  v27 = v11;
  v13 = v11;
  v14 = a7;
  v15 = [a5 na_map:v26];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __102__HMDAccessCodeManager__updateAccessCode_toNewValue_onAccessoriesWithFetchResponses_withRetries_flow___block_invoke_3;
  v24 = &unk_279720EC0;
  v25 = v12;
  v16 = v12;
  v17 = [v15 na_map:&v21];
  v18 = [(HMDAccessCodeManager *)self accessoryReaderWriter:v21];
  v19 = [v18 performAccessCodeModificationRequests:v17 withRetries:1 flow:v14];

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

- (id)_resetAccessCodesForHomeAccessCode:(id)a3 flow:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v6;
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
  v23 = v9;
  v24 = v6;
  v25 = v7;
  v15 = v7;
  v16 = v6;
  [(HMDAccessCodeManager *)v9 _generateNewAccessCodeWithFlow:v15 completion:v21];
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

- (id)_createNewAccessCodeForUserWithUUID:(id)a3 flow:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v6;
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
  v23 = v6;
  v24 = v9;
  v25 = v7;
  v15 = v7;
  v16 = v6;
  [(HMDAccessCodeManager *)v9 _generateNewAccessCodeWithFlow:v15 completion:v21];
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

- (void)_notifySubscribersOfMessageWithName:(id)a3 flow:(id)a4 payload:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(HMDAccessCodeManager *)self context];
  v11 = [v10 workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v8 UUID];
    v17 = [(HMDAccessCodeManager *)v13 subscribedClientConnections];
    *buf = 138544130;
    v43 = v15;
    v44 = 2112;
    v45 = v16;
    v46 = 2048;
    v47 = [v17 count];
    v48 = 2112;
    v49 = v36;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Notifying %lu subscribers of message with name: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v34 = v9;
  v18 = [v9 mutableCopy];
  v19 = HMFEncodedRootObject();
  [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277D0F1C8]];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(HMDAccessCodeManager *)v13 subscribedClientConnections];
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
        v27 = [v25 entitledMessageWithName:v36 messagePayload:v26];

        [v27 setTransport:v24];
        v28 = objc_alloc(MEMORY[0x277D0F820]);
        v29 = [(HMDAccessCodeManager *)v13 messageTargetUUID];
        v30 = [v28 initWithTarget:v29];
        [v27 setDestination:v30];

        v31 = [(HMDAccessCodeManager *)v13 context];
        v32 = [v31 messageDispatcher];
        [v32 sendMessage:v27];
      }

      v21 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v21);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_generateNewUserAccessCodeForMessage:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generating new user access code for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeManager *)v9 context];
  v14 = [v13 remoteMessageForwarder];
  v15 = [v14 messageForForwardedMessage:v4];

  v16 = objc_alloc(MEMORY[0x277CCAD78]);
  v17 = [v15 stringForKey:*MEMORY[0x277CCE758]];
  v18 = [v16 initWithUUIDString:v17];

  v19 = [(HMDAccessCodeManager *)v9 context];
  v20 = [v19 home];
  v21 = [(HMDAccessCodeManager *)v9 _accessCodeForUserWithUUID:v18 inHome:v20];

  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v7 UUID];
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] User already has an access code, so doing nothing.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2600];
    [v15 respondWithError:v27];
  }

  else
  {
    v28 = [(HMDAccessCodeManager *)v9 _createNewAccessCodeForUserWithUUID:v18 flow:v7];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __61__HMDAccessCodeManager__generateNewUserAccessCodeForMessage___block_invoke;
    v31[3] = &unk_279733F88;
    v32 = v15;
    v33 = v9;
    v34 = v7;
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

- (void)_resetAccessoryAccessCodesForMessage:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resetting access code for message", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeManager *)v9 context];
  v14 = [v13 remoteMessageForwarder];
  v15 = [v14 messageForForwardedMessage:v4];

  v16 = *MEMORY[0x277CCE740];
  v28 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v18 = [v15 unarchivedObjectForKey:v16 ofClasses:v17];

  v19 = [(HMDAccessCodeManager *)v9 _resetAccessCodesForHomeAccessCode:v18 flow:v7];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__HMDAccessCodeManager__resetAccessoryAccessCodesForMessage___block_invoke;
  v24[3] = &unk_279733F88;
  v25 = v15;
  v26 = v9;
  v27 = v7;
  v20 = v7;
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

- (id)_removeAccessCode:(id)a3 forUserBeingRemoved:(id)a4 flow:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessCodeManager *)self context];
  v12 = [v11 workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v8];
  v14 = [(HMDAccessCodeManager *)self accessoryReaderWriter];
  v15 = [v9 uuid];
  v16 = [v14 removeAllAccessCodesWithValue:v13 withUserUUID:v15 guestName:0 flow:v10];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __67__HMDAccessCodeManager__removeAccessCode_forUserBeingRemoved_flow___block_invoke;
  v22[3] = &unk_279729DA8;
  v22[4] = self;
  v23 = v10;
  v24 = v9;
  v25 = v8;
  v17 = v8;
  v18 = v9;
  v19 = v10;
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

- (id)removeAccessCode:(id)a3 fromHAPAccessory:(id)a4 flow:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = [(HMDAccessCodeManager *)self context];
  v13 = [v12 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDAccessCodeManager_removeAccessCode_fromHAPAccessory_flow___block_invoke;
  block[3] = &unk_2797352C0;
  v22 = v8;
  v23 = self;
  v24 = v9;
  v25 = v10;
  v14 = v11;
  v26 = v14;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  dispatch_async(v13, block);

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

- (id)_removeAccessCode:(id)a3 forUser:(id)a4 removedByUserUUID:(id)a5 flow:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [(HMDAccessCodeManager *)self context];
  v15 = [v14 workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v10];
  v17 = [(HMDAccessCodeManager *)self dataManager];
  v18 = [v17 removeHomeAccessCodeWithValue:v16 removedByUserUUID:v13 flow:v12];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __73__HMDAccessCodeManager__removeAccessCode_forUser_removedByUserUUID_flow___block_invoke;
  v25[3] = &unk_2797339F8;
  v25[4] = self;
  v26 = v16;
  v27 = v11;
  v28 = v12;
  v29 = v10;
  v19 = v10;
  v20 = v12;
  v21 = v11;
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

- (id)_removeAccessCode:(id)a3 forUserWithUUID:(id)a4 removedByUserUUID:(id)a5 flow:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessCodeManager *)self context];
  v15 = [v14 workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [(HMDAccessCodeManager *)self context];
  v17 = [v16 userWithUUID:v11];

  if (v17)
  {
    v18 = [(HMDAccessCodeManager *)self _removeAccessCode:v10 forUser:v17 removedByUserUUID:v12 flow:v13];
  }

  else
  {
    v19 = [(HMDAccessCodeManager *)self dataManager];
    v20 = [v19 homeAccessCodeWithRemovedUserInfoWithUUID:v11];

    if (v20)
    {
      v21 = [v20 accessCodeValue];
      v22 = [(HMDAccessCodeManager *)self _removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure:v21 forUserUUID:v11 flow:v13];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        [v13 UUID];
        v27 = v31 = v23;
        *buf = 138543874;
        v33 = v26;
        v34 = 2112;
        v35 = v27;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not find any current or former user with UUID: %@", buf, 0x20u);

        v23 = v31;
      }

      objc_autoreleasePoolPop(v23);
      v28 = MEMORY[0x277D2C900];
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v22 = [v28 futureWithError:v21];
    }

    v18 = v22;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_setAccessCodeForUserForMessage:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    [v7 UUID];
    v13 = v12 = v7;
    *buf = 138543618;
    v76 = v11;
    v77 = 2112;
    v78 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting access code for user for message.", buf, 0x16u);

    v7 = v12;
  }

  objc_autoreleasePoolPop(v8);
  v14 = [v4 proxyConnection];
  v15 = [v14 clientIdentifier];
  v16 = [v15 isEqualToString:*MEMORY[0x277CD0638]];

  if (v16)
  {
    v17 = objc_alloc_init(HMDAccessCodeSetupLogEvent);
  }

  else
  {
    v17 = 0;
  }

  v18 = [(HMDAccessCodeManager *)v9 context];
  v19 = [v18 remoteMessageForwarder];
  v20 = [v19 messageForForwardedMessage:v4];

  v21 = [v20 stringForKey:*MEMORY[0x277CCE710]];
  v22 = objc_alloc(MEMORY[0x277CCAD78]);
  v23 = [v20 stringForKey:*MEMORY[0x277CCE758]];
  v24 = [v22 initWithUUIDString:v23];

  v25 = [(HMDAccessCodeManager *)v9 context];
  v26 = [v25 userForMessage:v20];

  v27 = [(HMDAccessCodeManager *)v9 context];
  v28 = [v27 home];
  v62 = [(HMDAccessCodeManager *)v9 _accessCodeForUserWithUUID:v24 inHome:v28];

  v61 = v21;
  if ([v26 isAdministrator] & 1) != 0 || (objc_msgSend(v26, "uuid"), v29 = objc_claimAutoreleasedReturnValue(), v30 = HMFEqualObjects(), v29, (v30))
  {
    if (v62 | v21)
    {
      v31 = &unk_253D4B000;
      if (v21)
      {
        v32 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v21];
        v33 = [objc_alloc(MEMORY[0x277CD1640]) initWithSimpleLabel:0 labelIdentifier:0 userUUID:v24 removedUserInfo:0];
        v34 = [(HMDAccessCodeManager *)v9 dataManager];
        [v26 uuid];
        v35 = v58 = v17;
        [v34 setUserInformation:v33 forHomeAccessCodeWithValue:v32 changedByUserUUID:v35 flow:v7];
        v36 = v56 = v4;
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __56__HMDAccessCodeManager__setAccessCodeForUserForMessage___block_invoke;
        v67[3] = &unk_2797339F8;
        v68 = v62;
        v69 = v9;
        v70 = v24;
        v71 = v7;
        v72 = v32;
        v55 = v32;
        v37 = [v36 flatMap:v67];

        v4 = v56;
        v17 = v58;

        v31 = &unk_253D4B000;
      }

      else
      {
        v33 = [v26 uuid];
        v37 = [(HMDAccessCodeManager *)v9 _removeAccessCode:v62 forUserWithUUID:v24 removedByUserUUID:v33 flow:v7];
      }

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = v31[103];
      v63[2] = __56__HMDAccessCodeManager__setAccessCodeForUserForMessage___block_invoke_3;
      v63[3] = &unk_279729DA8;
      v63[4] = v9;
      v64 = v7;
      v65 = v20;
      v66 = v17;
      v53 = [v37 addCompletionBlock:v63];
    }

    else
    {
      v59 = v17;
      v38 = v7;
      v39 = objc_autoreleasePoolPush();
      v40 = v9;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [v38 UUID];
        *buf = 138543618;
        v76 = v42;
        v77 = 2112;
        v78 = v43;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] A nil access code was passed but the user has no access code, so responding with success", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v73 = *MEMORY[0x277CCE708];
      v37 = encodeRootObjectForIncomingXPCMessage(MEMORY[0x277CBEBF8], 0);
      v74 = v37;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      [v20 respondWithPayload:v44];

      v7 = v38;
      v17 = v59;
    }
  }

  else
  {
    v60 = v17;
    v45 = objc_autoreleasePoolPush();
    v46 = v9;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v57 = v45;
      v49 = v48 = v7;
      v50 = [v48 UUID];
      v51 = [v26 uuid];
      *buf = 138544130;
      v76 = v49;
      v77 = 2112;
      v78 = v50;
      v79 = 2112;
      v80 = v51;
      v81 = 2112;
      v82 = v24;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Dropping request: The user: %@ does not have permission to change the access code for the user: %@", buf, 0x2Au);

      v7 = v48;
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

- (id)_removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure:(id)a3 forUserUUID:(id)a4 flow:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277D2C900];
  v11 = a4;
  v12 = objc_alloc_init(v10);
  v13 = [(HMDAccessCodeManager *)self dataManager];
  v14 = [v8 stringValue];
  v15 = [v13 simpleLabelForAccessCode:v14];

  v16 = [(HMDAccessCodeManager *)self accessoryReaderWriter];
  v17 = [v16 removeAllAccessCodesWithValue:v8 withUserUUID:v11 guestName:v15 flow:v9];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__HMDAccessCodeManager__removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure_forUserUUID_flow___block_invoke;
  v25[3] = &unk_279729DA8;
  v25[4] = self;
  v26 = v9;
  v18 = v12;
  v27 = v18;
  v28 = v8;
  v19 = v8;
  v20 = v9;
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

- (void)_removeSimpleLabelAccessCodeMessage:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v40 = v11;
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing simple label access code for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeManager *)v9 context];
  v14 = [v13 remoteMessageForwarder];
  v15 = [v14 messageForForwardedMessage:v4];

  v16 = [v15 stringForKey:*MEMORY[0x277CCE710]];
  v17 = [objc_alloc(MEMORY[0x277CD1648]) initWithStringValue:v16];
  v18 = [(HMDAccessCodeManager *)v9 dataManager];
  v19 = [v18 accessCodeValuesWithSimpleLabel];
  v20 = [v19 containsObject:v17];

  if (v20)
  {
    v21 = [(HMDAccessCodeManager *)v9 _removeAccessCodeFromAccessoriesKeepingiCloudDataUponFailure:v17 forUserUUID:0 flow:v7];
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
    v27 = v9;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [v7 UUID];
      *buf = 138543618;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
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

- (id)_updateModificationRequestsWithUserOrGuestNames:(id)a3 flow:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HMDAccessCodeManager__updateModificationRequestsWithUserOrGuestNames_flow___block_invoke;
  v10[3] = &unk_279720E48;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a3 na_map:v10];

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

- (void)_submitAccessCodeModificationRequestsForMessage:(id)a3
{
  v53[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v48 = v11;
    v49 = 2112;
    v50 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Submitting AccessCodeModificationRequests for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeManager *)v9 context];
  v14 = [v13 remoteMessageForwarder];
  v15 = [v14 messageForForwardedMessage:v4];

  v16 = *MEMORY[0x277CCE700];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v53[2] = objc_opt_class();
  v53[3] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
  v18 = [v15 unarchivedObjectForKey:v16 ofClasses:v17];

  if (v18 && ![v18 hmf_isEmpty])
  {
    v26 = [(HMDAccessCodeManager *)v9 context];
    v25 = [v26 userForMessage:v15];

    v27 = [v25 uuid];
    v28 = [(HMDAccessCodeManager *)v9 context];
    v29 = [v28 home];
    v30 = [(HMDAccessCodeManager *)v9 _accessCodeForUserWithUUID:v27 inHome:v29];

    if ([v25 isAdministrator] & 1) != 0 || (-[objc_class allModificationRequests:areAddingAccessCode:](-[HMDAccessCodeManager utilities](v9, "utilities"), "allModificationRequests:areAddingAccessCode:", v18, v30))
    {
      v31 = [(HMDAccessCodeManager *)v9 _updateModificationRequestsWithUserOrGuestNames:v18 flow:v7];
      v32 = [(HMDAccessCodeManager *)v9 accessoryReaderWriter];
      v33 = [v32 performAccessCodeModificationRequests:v31 withRetries:1 flow:v7];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __72__HMDAccessCodeManager__submitAccessCodeModificationRequestsForMessage___block_invoke;
      v44[3] = &unk_279733F88;
      v44[4] = v9;
      v45 = v7;
      v46 = v15;
      v34 = [v33 addCompletionBlock:v44];
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = v9;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        [v7 UUID];
        v38 = v43 = v35;
        v39 = [v25 uuid];
        *buf = 138543874;
        v48 = v42;
        v49 = 2112;
        v50 = v38;
        v51 = 2112;
        v52 = v39;
        v40 = v39;
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
    v20 = v9;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v7 UUID];
      v24 = [v15 messagePayload];
      *buf = 138543874;
      v48 = v22;
      v49 = 2112;
      v50 = v23;
      v51 = 2112;
      v52 = v24;
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

- (void)_fetchAccessCodeConstraintsForMessage:(id)a3
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching access code constraints for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeManager *)v9 context];
  v14 = [v13 remoteMessageForwarder];
  v15 = [v14 messageForForwardedMessage:v4];

  v16 = *MEMORY[0x277CCE738];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v18 = [v15 unarchivedObjectForKey:v16 ofClasses:v17];

  if (v18 && ![v18 hmf_isEmpty])
  {
    v26 = [(HMDAccessCodeManager *)v9 accessoryReaderWriter];
    v27 = [v26 readConstraintsFromAccessoriesWithUUIDs:v18 flow:v7];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __62__HMDAccessCodeManager__fetchAccessCodeConstraintsForMessage___block_invoke;
    v30[3] = &unk_279733F88;
    v30[4] = v9;
    v31 = v7;
    v32 = v15;
    v28 = [v27 addCompletionBlock:v30];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v9;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v7 UUID];
      v24 = [v15 messagePayload];
      *buf = 138543874;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v24;
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

- (void)_fetchAccessCodesForMessage:(id)a3
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching access codes for message.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeManager *)v9 context];
  v14 = [v13 remoteMessageForwarder];
  v15 = [v14 messageForForwardedMessage:v4];

  v16 = *MEMORY[0x277CCE738];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v18 = [v15 unarchivedObjectForKey:v16 ofClasses:v17];

  if (v18 && ![v18 hmf_isEmpty])
  {
    v26 = [(HMDAccessCodeManager *)v9 accessoryReaderWriter];
    v27 = [v26 readAccessCodesFromAccessoriesWithUUIDs:v18 flow:v7];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __52__HMDAccessCodeManager__fetchAccessCodesForMessage___block_invoke;
    v30[3] = &unk_279733F88;
    v30[4] = v9;
    v31 = v7;
    v32 = v15;
    v28 = [v27 addCompletionBlock:v30];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v9;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v7 UUID];
      v24 = [v15 messagePayload];
      *buf = 138543874;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v24;
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

- (BOOL)_redispatchToResidentIfNeccesaryForMessage:(id)a3 flow:(id)a4 withNewResponseHandler:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessCodeManager *)self context];
  v12 = [v11 isCurrentDevicePrimaryResident];

  if ((v12 & 1) == 0)
  {
    v13 = [(HMDAccessCodeManager *)self context];
    if ([v13 primaryResidentSupportsAccessCodes])
    {
      v14 = [(HMDAccessCodeManager *)self context];
      v15 = [v14 residentCommunicationHandlerPreferredDevice];

      if (v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [v9 UUID];
          v34 = 138543618;
          v35 = v19;
          v36 = 2112;
          v37 = v20;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Redispatching message to resident.", &v34, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        if (v10)
        {
          v21 = [v8 mutableCopy];
          [v21 setResponseHandler:v10];
          v22 = [(HMDAccessCodeManager *)v17 context];
          v23 = [v22 remoteMessageForwarder];
          [v23 redispatchToResidentMessage:v21];
        }

        else
        {
          v21 = [(HMDAccessCodeManager *)v17 context];
          v22 = [v21 remoteMessageForwarder];
          [v22 redispatchToResidentMessage:v8];
        }

LABEL_16:
        v26 = 1;
        goto LABEL_17;
      }
    }

    else
    {
    }

    v24 = [(HMDAccessCodeManager *)self context];
    v25 = [v24 isCurrentDeviceOwnerUser];

    if ((v25 & 1) == 0)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [v9 UUID];
        v34 = 138543618;
        v35 = v30;
        v36 = 2112;
        v37 = v31;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] There is no resident available, so nothing can be done.", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
      [v8 respondWithError:v21];
      goto LABEL_16;
    }
  }

  v26 = 0;
LABEL_17:

  v32 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)_updateCacheWithModificationResponses:(id)a3 flow:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v8 UUID];
      v14 = [v7 UUID];
      v22 = 138543874;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Updating cache with modification responses", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = [(objc_class *)[(HMDAccessCodeManager *)v10 utilities] addedAccessoryAccessCodesFromModificationResponses:v6];
    if ([v15 count])
    {
      v16 = [(HMDAccessCodeManager *)v10 dataManager];
      [v16 updateCacheWithAddedAccessCodes:v15 flow:v8];
    }

    v17 = [(objc_class *)[(HMDAccessCodeManager *)v10 utilities] updatedAccessoryAccessCodesFromModificationResponses:v6];
    if ([v17 count])
    {
      v18 = [(HMDAccessCodeManager *)v10 dataManager];
      [v18 updateCacheWithUpdatedAccessCodes:v17 flow:v8];
    }

    v19 = [(objc_class *)[(HMDAccessCodeManager *)v10 utilities] removedAccessoryAccessCodesFromModificationResponses:v6];
    if ([v19 count])
    {
      v20 = [(HMDAccessCodeManager *)v10 dataManager];
      [v20 updateCacheWithRemovedAccessCodes:v19 flow:v8];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasCurrentUserAccessCodeChangedWithChangedAccessCodes:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDAccessCodeManager *)self context];
  v9 = [v8 workQueue];
  dispatch_assert_queue_V2(v9);

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__HMDAccessCodeManager_hasCurrentUserAccessCodeChangedWithChangedAccessCodes_home___block_invoke;
  v12[3] = &unk_27972E4F0;
  v13 = v6;
  v10 = v6;
  LOBYTE(v6) = [v7 na_any:v12];

  return v6;
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

- (void)handleHomeDidDisableCharacteristicNotification:(id)a3
{
  v4 = [(HMDAccessCodeManager *)self context];
  v5 = [v4 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDAccessCodeManager_handleHomeDidDisableCharacteristicNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v5, block);
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

- (void)handleHomeDidEnableCharacteristicNotification:(id)a3
{
  v4 = [(HMDAccessCodeManager *)self context];
  v5 = [v4 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDAccessCodeManager_handleHomeDidEnableCharacteristicNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v5, block);
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

- (void)handleAccessorySupportsAccessCodeDidChangeNotification:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 home];

  v7 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 home];

  if (v10 == v6)
  {
    v15 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v15 UUID];
      v21 = [v9 uuid];
      *buf = 138543874;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Pin Codes}] Handling accessory supports access code did change: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = [(HMDAccessCodeManager *)v17 context];
    v23 = [v22 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HMDAccessCodeManager_handleAccessorySupportsAccessCodeDidChangeNotification___block_invoke;
    block[3] = &unk_279734960;
    v26 = v9;
    v27 = v17;
    v28 = v6;
    dispatch_async(v23, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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

- (void)handleHomeUserRemovedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDAccessCodeManager_handleHomeUserRemovedNotification___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(v6, v8);
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

- (void)handleUserAccessCodeDidChangeMessage:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 flow];
  v6 = [v4 numberForKey:@"HMDAccessCodeManagerMessageKeyUserAccessCodeChangeType"];
  v7 = [v6 unsignedIntegerValue];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v5 UUID];
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2048;
    v23 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling UserAccessCodeDidChangeMessage with changeType: %lu", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeManager *)v9 context];
  v14 = [v13 home];

  switch(v7)
  {
    case 2:
      v15 = [(HMDAccessCodeManager *)v9 context];
      v16 = [v15 bulletinBoard];
      [v16 insertAccessCodeRemovedBulletinForHome:v14];
      goto LABEL_9;
    case 1:
      v15 = [(HMDAccessCodeManager *)v9 context];
      v16 = [v15 bulletinBoard];
      [v16 insertAccessCodeChangedBulletinForHome:v14];
      goto LABEL_9;
    case 0:
      v15 = [(HMDAccessCodeManager *)v9 context];
      v16 = [v15 bulletinBoard];
      [v16 insertAccessCodeAddedBulletinForHome:v14];
LABEL_9:

      break;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleConfirmDataHasSyncedToResidentMessage:(id)a3
{
  v34[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling ConfirmDataHasSyncedToResidentMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277CCE738];
  v34[0] = objc_opt_class();
  v34[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v15 = [v4 unarchivedObjectForKey:v13 ofClasses:v14];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __68__HMDAccessCodeManager_handleConfirmDataHasSyncedToResidentMessage___block_invoke;
  v27[3] = &unk_2797358A0;
  v27[4] = v9;
  v16 = [v15 na_all:v27];
  v17 = objc_autoreleasePoolPush();
  v18 = v9;
  v19 = HMFGetOSLogHandle();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (v16)
  {
    if (v20)
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v7 UUID];
      *buf = 138543874;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resident has all accessories for UUIDs: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [v4 respondWithSuccess];
  }

  else
  {
    if (v20)
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v7 UUID];
      *buf = 138543874;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resident does not have all accessories for UUIDs: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [v4 respondWithError:v25];
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

- (void)handleGenerateNewUserAccessCodeMessage:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling GenerateNewUserAccessCodeMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMDAccessCodeManager_handleGenerateNewUserAccessCodeMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = v7;
  v17 = v13;
  v14 = v4;
  v18 = v14;
  if (![(HMDAccessCodeManager *)v9 _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)v9 _generateNewUserAccessCodeForMessage:v14];
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

- (void)handleResetAccessoryAccessCodesMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling ResetAccessoryAccessCodesMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMDAccessCodeManager_handleResetAccessoryAccessCodesMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = v7;
  v17 = v13;
  v14 = v4;
  v18 = v14;
  if (![(HMDAccessCodeManager *)v9 _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)v9 _resetAccessoryAccessCodesForMessage:v14];
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

- (void)handleFetchCachedAccessCodesMessage:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling FetchCachedAccessCodesMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = objc_autoreleasePoolPush();
  v14 = v9;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v7 UUID];
    v18 = [(HMDAccessCodeManager *)v14 dataManager];
    v19 = [v18 cachedAccessCodes];
    *buf = 138543874;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with cached access codes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v20 = [(HMDAccessCodeManager *)v14 dataManager];
  v21 = [v20 cachedAccessCodes];
  v22 = encodeRootObjectForIncomingXPCMessage(v21, 0);
  v26 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [v4 respondWithPayload:v23];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchHomeAccessCodesMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling FetchHomeAccessCodesMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDAccessCodeManager *)v9 dataManager];
  v14 = [v13 homeAccessCodeValues];

  v15 = objc_autoreleasePoolPush();
  v16 = v9;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v7 UUID];
    *buf = 138543874;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with home access codes: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v23 = *MEMORY[0x277CCE748];
  v20 = encodeRootObjectForIncomingXPCMessage(v14, 0);
  v24 = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  [v4 respondWithPayload:{v21, v23}];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchAccessCodeConstraintsMessage:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v38 = v11;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v4;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling FetchAccessCodeConstraintsMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v14 = [v4 unarchivedObjectForKey:*MEMORY[0x277CCE738] ofClasses:v13];

  if (v14 && ![v14 hmf_isEmpty])
  {
    objc_initWeak(buf, v9);
    v22 = [(HMDAccessCodeManager *)v9 _waitUntilDataHasSyncedToResidentIfNecessaryForAccessoryUUIDs:v14 flow:v7];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __64__HMDAccessCodeManager_handleFetchAccessCodeConstraintsMessage___block_invoke;
    v32[3] = &unk_279720E20;
    objc_copyWeak(&v35, buf);
    v23 = v4;
    v33 = v23;
    v24 = v7;
    v34 = v24;
    v25 = [v22 addSuccessBlock:v32];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __64__HMDAccessCodeManager_handleFetchAccessCodeConstraintsMessage___block_invoke_3;
    v28[3] = &unk_279730430;
    v28[4] = v9;
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
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v7 UUID];
      v20 = [v4 messagePayload];
      *buf = 138543874;
      v38 = v18;
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find accessory UUIDs in message payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v21];
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

- (void)handleFetchAccessCodesMessage:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v38 = v11;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v4;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling FetchAccessCodesMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v14 = [v4 unarchivedObjectForKey:*MEMORY[0x277CCE738] ofClasses:v13];

  if (v14 && ![v14 hmf_isEmpty])
  {
    objc_initWeak(buf, v9);
    v22 = [(HMDAccessCodeManager *)v9 _waitUntilDataHasSyncedToResidentIfNecessaryForAccessoryUUIDs:v14 flow:v7];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__HMDAccessCodeManager_handleFetchAccessCodesMessage___block_invoke;
    v32[3] = &unk_279720E20;
    objc_copyWeak(&v35, buf);
    v23 = v4;
    v33 = v23;
    v24 = v7;
    v34 = v24;
    v25 = [v22 addSuccessBlock:v32];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__HMDAccessCodeManager_handleFetchAccessCodesMessage___block_invoke_3;
    v28[3] = &unk_279730430;
    v28[4] = v9;
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
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v7 UUID];
      v20 = [v4 messagePayload];
      *buf = 138543874;
      v38 = v18;
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v20;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find accessory UUIDs in message payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v21];
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

- (void)handleRemoveHomeAccessCodeMessage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling RemoveHomeAccessCodeMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277CCE718];
  v29 = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v15 = [v4 unarchivedObjectForKey:v13 ofClasses:v14];

  if (v15)
  {
    v16 = [(HMDAccessCodeManager *)v9 dataManager];
    v17 = [v16 removeHomeAccessCodeWithValue:v15 removedByUserUUID:0 flow:v7];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __58__HMDAccessCodeManager_handleRemoveHomeAccessCodeMessage___block_invoke;
    v26[3] = &unk_279733A98;
    v26[4] = v9;
    v27 = v7;
    v28 = v4;
    v18 = [v17 addCompletionBlock:v26];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v9;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v7 UUID];
      *buf = 138543618;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find data in payload while attempting to remove home access code", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v24];
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

- (void)handleSetUserInformationMessage:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling SetUserInformationMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277CCE750];
  v40[0] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v15 = [v4 unarchivedObjectForKey:v13 ofClasses:v14];

  v16 = *MEMORY[0x277CCE718];
  v39 = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
  v18 = [v4 unarchivedObjectForKey:v16 ofClasses:v17];

  if (v15 && v18)
  {
    v19 = [(HMDAccessCodeManager *)v9 dataManager];
    v20 = [v19 setUserInformation:v15 forHomeAccessCodeWithValue:v18 changedByUserUUID:0 flow:v7];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __56__HMDAccessCodeManager_handleSetUserInformationMessage___block_invoke;
    v29[3] = &unk_279721D38;
    v29[4] = v9;
    v30 = v7;
    v31 = v15;
    v32 = v4;
    v21 = [v20 addCompletionBlock:v29];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v7 UUID];
      *buf = 138543874;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find data in payload while attempting to set userInfo: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v27];
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

- (void)handleRemoveSimpleLabelAccessCodeMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling RemoveSimpleLabelAccessCodeMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__HMDAccessCodeManager_handleRemoveSimpleLabelAccessCodeMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = v7;
  v17 = v13;
  v14 = v4;
  v18 = v14;
  if (![(HMDAccessCodeManager *)v9 _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)v9 _removeSimpleLabelAccessCodeMessage:v14];
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

- (void)handleSetAccessCodeForUserMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling SetAccessCodeForUserMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HMDAccessCodeManager_handleSetAccessCodeForUserMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = v7;
  v17 = v13;
  v14 = v4;
  v18 = v14;
  if (![(HMDAccessCodeManager *)v9 _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)v9 _setAccessCodeForUserForMessage:v14];
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

- (void)handleSubmitAccessCodeModificationRequestsMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling SubmitAccessCodeModificationRequestsMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  objc_initWeak(buf, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HMDAccessCodeManager_handleSubmitAccessCodeModificationRequestsMessage___block_invoke;
  v16[3] = &unk_279735248;
  objc_copyWeak(&v19, buf);
  v13 = v7;
  v17 = v13;
  v14 = v4;
  v18 = v14;
  if (![(HMDAccessCodeManager *)v9 _redispatchToResidentIfNeccesaryForMessage:v14 flow:v13 withNewResponseHandler:v16])
  {
    [(HMDAccessCodeManager *)v9 _submitAccessCodeModificationRequestsForMessage:v14];
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

- (void)handleUnsubscribeMessage:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    v31 = 138543618;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling client unsubscribe message", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [(HMDAccessCodeManager *)v9 subscribedClientConnections];
    [v16 removeObject:v15];

    v17 = objc_autoreleasePoolPush();
    v18 = v9;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v7 UUID];
      v31 = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with no payload after removing client from subscribed clients", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [v4 respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v7 UUID];
      v27 = objc_opt_class();
      v28 = [v4 transport];
      v31 = 138544130;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = v28;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Subscribing transport was not of expected class %@: %@", &v31, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v4 respondWithError:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleSubscribeMessage:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [v4 flow];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    v31 = 138543618;
    v32 = v11;
    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling client subscribe message", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [v4 transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = [(HMDAccessCodeManager *)v9 subscribedClientConnections];
    [v16 addObject:v15];

    v17 = objc_autoreleasePoolPush();
    v18 = v9;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v7 UUID];
      v31 = 138543618;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with no payload after adding client to subscribed clients", &v31, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    [v4 respondWithSuccess];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v7 UUID];
      v27 = objc_opt_class();
      v28 = [v4 transport];
      v31 = 138544130;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = v28;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Subscribing transport was not of expected class %@: %@", &v31, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    [v4 respondWithError:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)fetchAccessCodeForIdentifier:(id)a3 accessoryUUID:(id)a4 flow:(id)a5 completion:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAccessCodeManager *)self context];
  v15 = [v14 workQueue];
  dispatch_assert_queue_V2(v15);

  v16 = [(HMDAccessCodeManager *)self dataManager];
  v17 = [v16 cachedAccessCodeForIdentifier:v10 accessoryUUID:v11];

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v21)
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v12 UUID];
      *buf = 138544130;
      v36 = v22;
      v37 = 2112;
      v38 = v23;
      v39 = 2112;
      v40 = v10;
      v41 = 2112;
      v42 = v11;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found cached access code for identifier: %@, accessory UUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [v17 stringValue];
    v13[2](v13, v24, 0);
  }

  else
  {
    if (v21)
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v12 UUID];
      *buf = 138544130;
      v36 = v25;
      v37 = 2112;
      v38 = v26;
      v39 = 2112;
      v40 = v10;
      v41 = 2112;
      v42 = v11;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching access code for identifier: %@, accessory UUID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    v27 = [(HMDAccessCodeManager *)v19 accessoryReaderWriter];
    v28 = [v27 readAccessCodeWithIdentifier:v10 accessoryUUID:v11 flow:v12];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __83__HMDAccessCodeManager_fetchAccessCodeForIdentifier_accessoryUUID_flow_completion___block_invoke;
    v31[3] = &unk_279720DF8;
    v31[4] = v19;
    v32 = v12;
    v33 = v10;
    v34 = v13;
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
  v3 = [(HMDAccessCodeManager *)self context];
  v4 = [v3 messageDispatcher];
  [v4 deregisterReceiver:self];

  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 administratorHandler];
  [v6 deregisterReceiver:self];

  v8 = [(HMDAccessCodeManager *)self context];
  v7 = [v8 notificationCenter];
  [v7 removeObserver:self];
}

- (void)configureWithMessageDispatcher:(id)a3
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessCodeManager *)self context];
  v6 = [v5 workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDAccessCodeManager *)self context];
  [v7 configureWithMessageDispatcher:v4];

  v8 = [(HMDAccessCodeManager *)self context];
  v9 = [v8 home];

  if (!v9)
  {
    _HMFPreconditionFailure();
  }

  v66 = v4;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [(HMDAccessCodeManager *)v11 context];
    v15 = [v14 UUID];
    *buf = 138543874;
    v72 = v13;
    v73 = 2112;
    v74 = v15;
    v75 = 2112;
    v76 = v9;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Configuring HMDAccessCodeManager with UUID: %@, for home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v17 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v18 = [HMDUserMessagePolicy userMessagePolicyWithHome:v9 userPrivilege:0 remoteAccessRequired:0];
  v19 = [HMDUserMessagePolicy userMessagePolicyWithHome:v9 userPrivilege:4 remoteAccessRequired:0];
  v70[0] = v16;
  v70[1] = v18;
  v65 = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
  v69[0] = v16;
  v69[1] = v17;
  v64 = v17;
  v69[2] = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  v22 = [(HMDAccessCodeManager *)v11 context];
  v23 = [v22 messageDispatcher];
  [v23 registerForMessage:*MEMORY[0x277CCE790] receiver:v11 policies:v20 selector:sel_handleSubscribeMessage_];

  v24 = [(HMDAccessCodeManager *)v11 context];
  v25 = [v24 messageDispatcher];
  [v25 registerForMessage:*MEMORY[0x277CCE798] receiver:v11 policies:v20 selector:sel_handleUnsubscribeMessage_];

  v26 = [(HMDAccessCodeManager *)v11 context];
  v27 = [v26 messageDispatcher];
  [v27 registerForMessage:*MEMORY[0x277CCE6E0] receiver:v11 policies:v21 selector:sel_handleFetchAccessCodesMessage_];

  v28 = [(HMDAccessCodeManager *)v11 context];
  v29 = [v28 messageDispatcher];
  [v29 registerForMessage:*MEMORY[0x277CCE6D8] receiver:v11 policies:v21 selector:sel_handleFetchAccessCodeConstraintsMessage_];

  v30 = [(HMDAccessCodeManager *)v11 context];
  v31 = [v30 messageDispatcher];
  [v31 registerForMessage:*MEMORY[0x277CCE6F0] receiver:v11 policies:v20 selector:sel_handleFetchHomeAccessCodesMessage_];

  v32 = [(HMDAccessCodeManager *)v11 context];
  v33 = [v32 messageDispatcher];
  [v33 registerForMessage:*MEMORY[0x277CCE6E8] receiver:v11 policies:v20 selector:sel_handleFetchCachedAccessCodesMessage_];

  v34 = [(HMDAccessCodeManager *)v11 context];
  v35 = [v34 messageDispatcher];
  [v35 registerForMessage:*MEMORY[0x277CCE770] receiver:v11 policies:v21 selector:sel_handleResetAccessoryAccessCodesMessage_];

  v36 = [(HMDAccessCodeManager *)v11 context];
  v37 = [v36 messageDispatcher];
  [v37 registerForMessage:*MEMORY[0x277CCE778] receiver:v11 policies:v21 selector:sel_handleSetAccessCodeForUserMessage_];

  v38 = [(HMDAccessCodeManager *)v11 context];
  v39 = [v38 messageDispatcher];
  [v39 registerForMessage:*MEMORY[0x277CCE788] receiver:v11 policies:v21 selector:sel_handleSubmitAccessCodeModificationRequestsMessage_];

  v40 = [(HMDAccessCodeManager *)v11 context];
  v41 = [v40 messageDispatcher];
  [v41 registerForMessage:@"HMAccessCodeManagerConfirmDataHasSyncedToResidentMessage" receiver:v11 policies:v21 selector:sel_handleConfirmDataHasSyncedToResidentMessage_];

  v42 = [(HMDAccessCodeManager *)v11 context];
  v43 = [v42 messageDispatcher];
  [v43 registerForMessage:@"HMDAccessCodeManagerUserAccessCodeDidChangeMessage" receiver:v11 policies:v21 selector:sel_handleUserAccessCodeDidChangeMessage_];

  v68[0] = v16;
  v68[1] = v19;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v67[0] = v16;
  v67[1] = v17;
  v67[2] = v19;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
  v46 = [(HMDAccessCodeManager *)v11 context];
  v47 = [v46 administratorHandler];
  [v47 registerForMessage:*MEMORY[0x277CCE780] receiver:v11 policies:v44 selector:sel_handleSetUserInformationMessage_];

  v48 = [(HMDAccessCodeManager *)v11 context];
  v49 = [v48 administratorHandler];
  [v49 registerForMessage:*MEMORY[0x277CCE760] receiver:v11 policies:v44 selector:sel_handleRemoveHomeAccessCodeMessage_];

  v50 = [(HMDAccessCodeManager *)v11 context];
  v51 = [v50 messageDispatcher];
  [v51 registerForMessage:*MEMORY[0x277CCE6F8] receiver:v11 policies:v45 selector:sel_handleGenerateNewUserAccessCodeMessage_];

  v52 = [(HMDAccessCodeManager *)v11 context];
  v53 = [v52 messageDispatcher];
  [v53 registerForMessage:*MEMORY[0x277CCE768] receiver:v11 policies:v45 selector:sel_handleRemoveSimpleLabelAccessCodeMessage_];

  v54 = [(HMDAccessCodeManager *)v11 context];
  v55 = [v54 notificationCenter];
  [v55 addObserver:v11 selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v9];

  v56 = [(HMDAccessCodeManager *)v11 context];
  v57 = [v56 notificationCenter];
  [v57 addObserver:v11 selector:sel_handleAccessorySupportsAccessCodeDidChangeNotification_ name:@"HMDAccessorySupportsAccessCodeDidChangeNotification" object:0];

  v58 = [(HMDAccessCodeManager *)v11 context];
  v59 = [v58 notificationCenter];
  [v59 addObserver:v11 selector:sel_handleHomeDidEnableCharacteristicNotification_ name:@"HMDHomeDidEnableCharacteristicNotifyEventNotification" object:v9];

  v60 = [(HMDAccessCodeManager *)v11 context];
  v61 = [v60 notificationCenter];
  [v61 addObserver:v11 selector:sel_handleHomeDidDisableCharacteristicNotification_ name:@"HMDHomeDidDisableCharacteristicNotifyEventNotification" object:v9];

  v62 = [(HMDAccessCodeManager *)v11 dataManager];
  [v62 configure];

  v63 = *MEMORY[0x277D85DE8];
}

- (HMDAccessCodeManager)initWithContext:(id)a3 utilities:(Class)a4 accessoryReaderWriter:(id)a5 dataManager:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = HMDAccessCodeManager;
  v14 = [(HMDAccessCodeManager *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_context, a3);
    objc_storeStrong(&v15->_utilities, a4);
    objc_storeStrong(&v15->_accessoryReaderWriter, a5);
    objc_storeStrong(&v15->_dataManager, a6);
    v16 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    subscribedClientConnections = v15->_subscribedClientConnections;
    v15->_subscribedClientConnections = v16;
  }

  return v15;
}

- (HMDAccessCodeManager)initWithContext:(id)a3
{
  v4 = a3;
  v5 = [[HMDAccessoryAccessCodeReaderWriter alloc] initWithContext:v4];
  v6 = [[HMDAccessCodeDataManager alloc] initWithContext:v4 delegate:self];
  v7 = [(HMDAccessCodeManager *)self initWithContext:v4 utilities:objc_opt_class() accessoryReaderWriter:v5 dataManager:v6];

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