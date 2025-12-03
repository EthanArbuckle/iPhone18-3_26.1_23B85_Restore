@interface HMDHomeWalletKeyManager
+ (id)homekitErrorWithPassLibraryErrorCode:(int64_t)code;
+ (id)logCategory;
+ (id)responsePayloadForPairedWatchesWithMessageName:(id)name responsePayloadByDevice:(id)device error:(id)error;
- (BOOL)canAutoAddWalletKeyWithError:(id *)error;
- (BOOL)canSuspendWalletKey;
- (BOOL)hasHomeKeyInWallet;
- (HMDHome)home;
- (HMDHomeWalletKeyManager)initWithUUID:(id)d workQueue:(id)queue;
- (HMDHomeWalletKeyManager)initWithUUID:(id)d workQueue:(id)queue fileManager:(id)manager passLibrary:(id)library notificationCenter:(id)center watchManager:(id)watchManager keychainStore:(id)store lostModeManager:(id)self0 dataSource:(id)self1 bulletinBoard:(id)self2 applicationRegistry:(id)self3 systemInfo:(id)self4 isoCredentialFactory:(id)self5;
- (NSString)passSerialNumber;
- (id)createPassDirectoryWithResourceFilesWithFlow:(id)flow;
- (id)createPassDirectoryWithoutResourceFilesWithFlow:(id)flow;
- (id)fetchWalletKeyColorOptionWithFlow:(id)flow;
- (id)logIdentifier;
- (id)passSerialNumberWithUserUUID:(id)d;
- (id)paymentApplicationsForWalletKey:(id)key validateNFCInfo:(BOOL)info defaultPaymentApplication:(id)application doesAnyAccessorySupportACB:(BOOL)b flow:(id)flow;
- (id)updatePassJSONAtURL:(id)l withWalletKey:(id)key options:(int64_t)options validateNFCInfo:(BOOL)info flow:(id)flow;
- (id)walletKeyByAddingAccessCodeToWalletKey:(id)key;
- (id)walletKeySettingsFileURL;
- (void)accessoryManager:(id)manager didUpdateWalletKeyColor:(int64_t)color;
- (void)addISOCredentialV0WithPassAtURL:(id)l nfcInfo:(id)info flow:(id)flow completion:(id)completion;
- (void)addISOCredentialV1WithPassAtURL:(id)l nfcInfo:(id)info flow:(id)flow completion:(id)completion;
- (void)addISOCredentialWithPassAtURL:(id)l walletKey:(id)key flow:(id)flow completion:(id)completion;
- (void)addWalletKey:(id)key withOptions:(int64_t)options assertion:(id)assertion flow:(id)flow;
- (void)addWalletKeyWithOptions:(int64_t)options isOnboarding:(BOOL)onboarding flow:(id)flow completion:(id)completion;
- (void)addWalletKeyWithOptions:(int64_t)options nfcReaderKey:(id)key flow:(id)flow completion:(id)completion;
- (void)autoAddWalletKeyWithFlow:(id)flow;
- (void)autoAddWalletKeyWithReason:(id)reason flow:(id)flow completion:(id)completion;
- (void)configureWalletPaymentApplicationsWithNFCReaderKey:(id)key serialNumber:(id)number homeUniqueIdentifier:(id)identifier homeGRK:(id)k flow:(id)flow completion:(id)completion;
- (void)configureWithHome:(id)home;
- (void)createExpressModeSetUpBulletin;
- (void)createPassDirectoryWithWalletKey:(id)key options:(int64_t)options shouldSkipResourceFiles:(BOOL)files shouldCreateZipArchive:(BOOL)archive validateNFCInfo:(BOOL)info flow:(id)flow completion:(id)completion;
- (void)didAddCurrentUserWithUUID:(id)d;
- (void)enableExpressWithOptions:(int64_t)options flow:(id)flow completion:(id)completion;
- (void)enqueueWalletKeyUpdateOperation:(id)operation flow:(id)flow;
- (void)fetchExpressEnablementConflictingPassDescriptionWithFlow:(id)flow completion:(id)completion;
- (void)fetchHomeKeySupportedWithFlow:(id)flow completion:(id)completion;
- (void)fetchOrCreateReaderKeyWithFlow:(id)flow completion:(id)completion;
- (void)fetchPayloadForAddWalletKeyRemoteMessageWithFlow:(id)flow completion:(id)completion;
- (void)fetchShouldAutoEnableExpressWithCompletion:(id)completion;
- (void)fetchShouldSuppressWalletNotificationWithCompletion:(id)completion;
- (void)fetchWalletKeyColorOptionWithFlow:(id)flow completion:(id)completion;
- (void)handleAccessCodeChanged;
- (void)handleAccessorySupportsAccessCodeDidChangeNotification:(id)notification;
- (void)handleAccessorySupportsWalleyKeyDidChangeNotification:(id)notification;
- (void)handleAddWalletKeyMessage:(id)message;
- (void)handleApplicationInstalled:(id)installed;
- (void)handleApplicationUninstalled:(id)uninstalled;
- (void)handleEnableExpressForWalletKeyMessage:(id)message;
- (void)handleFetchAvailableWalletKeyEncodedPKPassMessage:(id)message;
- (void)handleFetchDeviceStateMessage:(id)message;
- (void)handleFetchMissingWalletKeysMessage:(id)message;
- (void)handleFetchWalletKeyColorMessage:(id)message;
- (void)handleHomeAccessoryRemovedNotification:(id)notification;
- (void)handleHomeAddedAccessoryNotification:(id)notification;
- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)notification;
- (void)handleHomeHasOnboardedForWalletKeyChangeNotification:(id)notification;
- (void)handleHomeNameChangedNotification:(id)notification;
- (void)handleHomeUserRemovedNotification:(id)notification;
- (void)handleHomeWillBeRemoved;
- (void)handleLostModeManagerDidExitLostModeWithAuthCompleteNotification;
- (void)handleLostModeUpdated;
- (void)handleMessageForPairedWatches:(id)watches;
- (void)handleNFCReaderKeyUpdatedForWalletKey:(id)key flow:(id)flow;
- (void)handlePendingWalletKeyUpdateOperationsWithFlow:(id)flow;
- (void)handlePersistWalletKeyAddOptionsRemoteMessage:(id)message;
- (void)handleRestoreMissingWalletKeysMessage:(id)message;
- (void)handleSystemInfoMigrationUpdatedNotification:(id)notification;
- (void)passLibrary:(id)library didAddPassWithSerialNumber:(id)number typeIdentifier:(id)identifier;
- (void)passLibrary:(id)library didRemovePassWithSerialNumber:(id)number typeIdentifier:(id)identifier;
- (void)recoverDueToUUIDChangeOfUser:(id)user fromOldUUID:(id)d;
- (void)removeWalletKeyOnboardingBulletin;
- (void)sendMessageWithName:(id)name payload:(id)payload toWatches:(id)watches completion:(id)completion;
- (void)storeWalletKeyMigrationSettingsToDisk;
- (void)syncDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow;
- (void)syncDeviceCredentialKeyForAccessory:(id)accessory paymentApplications:(id)applications flow:(id)flow;
- (void)unconfigure;
- (void)updateDeviceStateWithCanAddWalletKey:(id)key flow:(id)flow completion:(id)completion;
- (void)updateDeviceStateWithExpressEnablementConflictingPassDescription:(id)description flow:(id)flow completion:(id)completion;
- (void)updateDeviceStateWithWalletKey:(id)key flow:(id)flow completion:(id)completion;
- (void)updateWalletKeyAccessCodeFieldWithReason:(id)reason;
- (void)updateWalletKeyByConfiguringEndpointsWithFlow:(id)flow;
- (void)updateWalletKeyStateToState:(int64_t)state flow:(id)flow;
@end

@implementation HMDHomeWalletKeyManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (BOOL)canSuspendWalletKey
{
  home = [(HMDHomeWalletKeyManager *)self home];
  if ([home hasOnboardedForWalletKey])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [home hasAnyAccessoryWithWalletKeySupport] ^ 1;
  }

  return v3;
}

- (void)handleHomeHasOnboardedForWalletKeyChangeNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  home = [(HMDHomeWalletKeyManager *)self home];
  hasOnboardedForWalletKey = [home hasOnboardedForWalletKey];

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    v13 = HMFBooleanToString();
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = uUID;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Home has onboarded flag changed to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  canSuspendWalletKey = [(HMDHomeWalletKeyManager *)selfCopy canSuspendWalletKey];
  workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDHomeWalletKeyManager_handleHomeHasOnboardedForWalletKeyChangeNotification___block_invoke;
  block[3] = &unk_27972EBD8;
  v20 = hasOnboardedForWalletKey;
  v21 = canSuspendWalletKey;
  block[4] = selfCopy;
  v19 = internalOnlyInitializer;
  v16 = internalOnlyInitializer;
  dispatch_async(workQueue, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_handleHomeHasOnboardedForWalletKeyChangeNotification___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    [*(a1 + 32) removeWalletKeyOnboardingBulletin];
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __80__HMDHomeWalletKeyManager_handleHomeHasOnboardedForWalletKeyChangeNotification___block_invoke_2;
    v6[3] = &unk_2797249D8;
    v6[4] = v3;
    v7 = v2;
    [v3 autoAddWalletKeyWithReason:@"onboarded for wallet key" flow:v7 completion:v6];
  }

  else if (*(a1 + 49) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 updateWalletKeyStateToState:6 flow:v5];
  }
}

void __80__HMDHomeWalletKeyManager_handleHomeHasOnboardedForWalletKeyChangeNotification___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add pass when home has onboarded for wallet key: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) UUID];
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added pass when home onboarded for wallet key", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) createExpressModeSetUpBulletin];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateWalletKeyByConfiguringEndpointsWithFlow:(id)flow
{
  v34 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = uUID;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating wallet key by configuring endpoints", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  if (home)
  {
    passSerialNumber = [(HMDHomeWalletKeyManager *)selfCopy passSerialNumber];
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (passSerialNumber)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543618;
        v31 = v16;
        v32 = 2112;
        v33 = uUID2;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generating nfc info for existing wallet key", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      nfcReaderKey = [home nfcReaderKey];
      spiClientIdentifier = [home spiClientIdentifier];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke;
      v28[3] = &unk_279734D18;
      v28[4] = v13;
      v29 = flowCopy;
      [(HMDHomeWalletKeyManager *)v13 configureWalletPaymentApplicationsWithNFCReaderKey:nfcReaderKey serialNumber:passSerialNumber homeUniqueIdentifier:spiClientIdentifier homeGRK:0 flow:v29 completion:v28];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        uUID3 = [flowCopy UUID];
        *buf = 138543618;
        v31 = v25;
        v32 = 2112;
        v33 = uUID3;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update home key, serial number is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = uUID4;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke_397;
    block[3] = &unk_279734960;
    v8 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v16 = v8;
    v17 = v5;
    dispatch_async(v7, block);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to generate nfc info, when handling home did update nfc reader key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke_397(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [a1[5] UUID];
    *buf = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating existing wallet key with nfc info", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = a1[4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke_398;
  v9[3] = &unk_279724FC0;
  v9[4] = v7;
  v10 = a1[6];
  [v7 enqueueWalletKeyUpdateOperation:v9 flow:a1[5]];

  v8 = *MEMORY[0x277D85DE8];
}

id __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke_398(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  v5 = [*(a1 + 32) walletKeyByAddingAccessCodeToWalletKey:a2];
  v6 = [v5 mutableCopy];
  [v6 setNfcInfos:*(a1 + 40)];
  v7 = [v6 copy];

  return v7;
}

- (void)handleNFCReaderKeyUpdatedForWalletKey:(id)key flow:(id)flow
{
  v73 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v64 = v11;
    v65 = 2112;
    v66 = uUID;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling NFC reader key updated for wallet key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  nfcReaderKey = [home nfcReaderKey];
  identifier = [nfcReaderKey identifier];

  nfcReaderKey2 = [home nfcReaderKey];
  publicKey = [nfcReaderKey2 publicKey];
  v18 = [HMDNIST256Utilities identifier16BytesForKey:publicKey];

  v19 = objc_alloc(MEMORY[0x277CBEA90]);
  nfcInfos = [keyCopy nfcInfos];
  firstObject = [nfcInfos firstObject];
  pairedReaderIdentifier = [firstObject pairedReaderIdentifier];
  v54 = [v19 hmf_initWithHexadecimalString:pairedReaderIdentifier options:0];

  nfcInfos2 = [keyCopy nfcInfos];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __70__HMDHomeWalletKeyManager_handleNFCReaderKeyUpdatedForWalletKey_flow___block_invoke;
  v60[3] = &unk_279725010;
  v24 = identifier;
  v61 = v24;
  v25 = v18;
  v62 = v25;
  v26 = [nfcInfos2 na_any:v60];

  v27 = objc_autoreleasePoolPush();
  v28 = selfCopy;
  v29 = HMFGetOSLogHandle();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
  if (v26)
  {
    if (v30)
    {
      v31 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138544386;
      v64 = v31;
      v65 = 2112;
      v66 = uUID2;
      v67 = 2112;
      v68 = v54;
      v69 = 2112;
      v70 = v24;
      v71 = 2112;
      v72 = v25;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reader identifier of the existing wallet key: %@ matches with what exists in home. uaReaderGroupIdentifier: %@, v2ReaderGroupIdentifier: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    if (v30)
    {
      v33 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138544386;
      v64 = v33;
      v65 = 2112;
      v66 = uUID3;
      v67 = 2112;
      v68 = v54;
      v69 = 2112;
      v70 = v24;
      v71 = 2112;
      v72 = v25;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reader identifier of existing wallet key: %@ doesn't match with home uaReaderGroupIdentifier: %@ or v2ReaderGroupIdentifier: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v27);
    dataSource = [(HMDHomeWalletKeyManager *)v28 dataSource];
    hmf_hexadecimalRepresentation = [v24 hmf_hexadecimalRepresentation];
    v37 = [dataSource numberValueFromNoBackupStoreWithKey:hmf_hexadecimalRepresentation];

    if (v37)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v28;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        uUID4 = [flowCopy UUID];
        *buf = 138543874;
        v64 = v41;
        v65 = 2112;
        v66 = uUID4;
        v67 = 2112;
        v68 = v37;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing and re-adding wallet key with default options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v38);
      passLibrary = [(HMDHomeWalletKeyManager *)v39 passLibrary];
      typeIdentifier = [keyCopy typeIdentifier];
      serialNumber = [keyCopy serialNumber];
      v46 = [passLibrary removePassWithTypeIdentifier:typeIdentifier serialNumber:serialNumber flow:flowCopy];

      if (v46)
      {
        objc_initWeak(buf, v39);
        integerValue = [v37 integerValue];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __70__HMDHomeWalletKeyManager_handleNFCReaderKeyUpdatedForWalletKey_flow___block_invoke_396;
        v56[3] = &unk_279725038;
        objc_copyWeak(&v59, buf);
        v57 = flowCopy;
        v58 = keyCopy;
        [(HMDHomeWalletKeyManager *)v39 addWalletKeyWithOptions:integerValue isOnboarding:0 flow:v57 completion:v56];

        objc_destroyWeak(&v59);
        objc_destroyWeak(buf);
      }

      else
      {
        v48 = objc_autoreleasePoolPush();
        v49 = v39;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v51 = HMFGetLogIdentifier();
          uUID5 = [flowCopy UUID];
          *buf = 138543874;
          v64 = v51;
          v65 = 2112;
          v66 = uUID5;
          v67 = 2112;
          v68 = keyCopy;
          _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove wallet key: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v48);
      }
    }

    else
    {
      [(HMDHomeWalletKeyManager *)v28 updateWalletKeyByConfiguringEndpointsWithFlow:flowCopy];
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t __70__HMDHomeWalletKeyManager_handleNFCReaderKeyUpdatedForWalletKey_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 pairedReaderIdentifier];

  v7 = [v5 hmf_initWithHexadecimalString:v6 options:0];

  if ([v7 isEqual:*(a1 + 32)])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v7 isEqual:*(a1 + 40)];
  }

  return v8;
}

void __70__HMDHomeWalletKeyManager_handleNFCReaderKeyUpdatedForWalletKey_flow___block_invoke_396(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) UUID];
      v14 = *(a1 + 40);
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added wallet key: %@", &v17, 0x20u);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v15 = [*(a1 + 32) UUID];
    v17 = 138543874;
    v18 = v12;
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add wallet key: %@", &v17, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = uUID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling HomeDidUpdateNFCReaderKeyNotification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  nfcReaderKey = [home nfcReaderKey];

  if (nfcReaderKey)
  {
    workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HMDHomeWalletKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke;
    v20[3] = &unk_2797359B0;
    v20[4] = selfCopy;
    v21 = internalOnlyInitializer;
    dispatch_async(workQueue, v20);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      uUID2 = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = uUID2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling nfc reader key update because it set to nil on home", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __71__HMDHomeWalletKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__HMDHomeWalletKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke_2;
  v3[3] = &unk_2797249D8;
  v3[4] = v2;
  v4 = v1;
  [v2 autoAddWalletKeyWithReason:@"NFC reader key updated" flow:v4 completion:v3];
}

void __71__HMDHomeWalletKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = [v6 domain];
    v9 = v8;
    if (v8 == *MEMORY[0x277CCFD28])
    {
      v15 = [v6 code];

      if (v15 == 1)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = *(a1 + 32);
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v20 = [*(a1 + 40) UUID];
          v27 = 138543874;
          v28 = v19;
          v29 = 2112;
          v30 = v20;
          v31 = 2112;
          v32 = v5;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wallet key already exists: %@, when handling home did update nfc reader key", &v27, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        [*(a1 + 32) handleNFCReaderKeyUpdatedForWalletKey:v5 flow:*(a1 + 40)];
      }
    }

    else
    {
    }

    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [*(a1 + 40) UUID];
      v27 = 138543874;
      v28 = v24;
      v29 = 2112;
      v30 = v25;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add pass when NFC reader key was updated: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) UUID];
      v27 = 138543618;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added pass when NFC reader key was updated", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) createExpressModeSetUpBulletin];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAccessoryRemovedNotification:(id)notification
{
  v34 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

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

  if (v8)
  {
    internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      uUID = [internalOnlyInitializer UUID];
      shortDescription = [v8 shortDescription];
      *buf = 138543874;
      v29 = v13;
      v30 = 2112;
      v31 = uUID;
      v32 = 2112;
      v33 = shortDescription;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling accessory removed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    if ([(HMDHomeWalletKeyManager *)selfCopy canSuspendWalletKey])
    {
      workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__HMDHomeWalletKeyManager_handleHomeAccessoryRemovedNotification___block_invoke;
      block[3] = &unk_279734960;
      block[4] = selfCopy;
      v26 = internalOnlyInitializer;
      v27 = v8;
      dispatch_async(workQueue, block);
    }

    else
    {
      passLibrary = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
      passSerialNumber = [(HMDHomeWalletKeyManager *)selfCopy passSerialNumber];
      v19 = [passLibrary walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber flow:internalOnlyInitializer];

      if (v19)
      {
        workQueue2 = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __66__HMDHomeWalletKeyManager_handleHomeAccessoryRemovedNotification___block_invoke_387;
        v22[3] = &unk_2797359B0;
        v23 = v8;
        v24 = selfCopy;
        dispatch_async(workQueue2, v22);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HMDHomeWalletKeyManager_handleHomeAccessoryRemovedNotification___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [a1[5] UUID];
    v7 = [a1[6] shortDescription];
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Suspending home key when accessory was removed: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [a1[4] updateWalletKeyStateToState:6 flow:a1[5]];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __66__HMDHomeWalletKeyManager_handleHomeAccessoryRemovedNotification___block_invoke_387(uint64_t a1)
{
  result = [*(a1 + 32) supportsAccessCode];
  if (result)
  {
    v3 = *(a1 + 40);

    return [v3 updateWalletKeyAccessCodeFieldWithReason:@"accessory removed"];
  }

  return result;
}

- (void)handleAccessorySupportsWalleyKeyDidChangeNotification:(id)notification
{
  v33 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  home = [v7 home];
  home2 = [(HMDHomeWalletKeyManager *)self home];

  if (home != home2)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      uuid = [home uuid];
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = uuid;
      v15 = "%{public}@Not handling wallet key support change for accessory in other home: %@";
LABEL_13:
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, v15, buf, 0x16u);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (([v7 supportsWalletKey] & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      uuid = [v7 shortDescription];
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = uuid;
      v15 = "%{public}@Not handling wallet key support change, since support was disabled for accessory: %@";
      goto LABEL_13;
    }

LABEL_14:

    objc_autoreleasePoolPop(v10);
    goto LABEL_15;
  }

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543618;
    v30 = v20;
    v31 = 2112;
    v32 = uUID;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling AccessorySupportsWalletKeyDidChangeNotification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  workQueue = [(HMDHomeWalletKeyManager *)selfCopy3 workQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__HMDHomeWalletKeyManager_handleAccessorySupportsWalleyKeyDidChangeNotification___block_invoke;
  v25[3] = &unk_279734870;
  v25[4] = selfCopy3;
  v26 = v7;
  v27 = internalOnlyInitializer;
  v28 = notificationCopy;
  v23 = internalOnlyInitializer;
  dispatch_async(workQueue, v25);

LABEL_15:
  v24 = *MEMORY[0x277D85DE8];
}

void __81__HMDHomeWalletKeyManager_handleAccessorySupportsWalleyKeyDidChangeNotification___block_invoke(id *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v37 = 0;
  v3 = [v2 canAutoAddWalletKeyWithError:&v37];
  v4 = v37;
  if (v3)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __81__HMDHomeWalletKeyManager_handleAccessorySupportsWalleyKeyDidChangeNotification___block_invoke_386;
    v34[3] = &unk_279724FE8;
    v5 = a1[4];
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[5];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v35 = v10;
    v36 = v9;
    [v5 autoAddWalletKeyWithReason:@"wallet key support added" flow:v6 completion:v34];
  }

  else if ([a1[5] wasUpdatedWithServiceType:@"00000266-0000-1000-8000-0026BB765291"] && (objc_msgSend(a1[5], "hasPostedBulletinForWalletKeyOnboarding") & 1) == 0)
  {
    v17 = [a1[4] home];
    if ([v17 isAdminUser] && (objc_msgSend(a1[4], "dataSource"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isWatch"), v18, (v19 & 1) == 0))
    {
      v26 = objc_autoreleasePoolPush();
      v27 = a1[4];
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [a1[6] UUID];
        v31 = [a1[5] shortDescription];
        *buf = 138543874;
        v39 = v29;
        v40 = 2112;
        v41 = v30;
        v42 = 2112;
        v43 = v31;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Home hasn't onboarded, creating lock onboarding bulletin after accessory was updated with wallet key support: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      [a1[5] updateHasPostedBulletinForWalletKeyOnboarding:1];
      v32 = [a1[4] bulletinBoard];
      [v32 insertLockOnboardingBulletinForHome:v17 serviceType:@"00000266-0000-1000-8000-0026BB765291"];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = a1[4];
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [a1[6] UUID];
        v25 = [a1[5] shortDescription];
        *buf = 138543874;
        v39 = v23;
        v40 = 2112;
        v41 = v24;
        v42 = 2112;
        v43 = v25;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not creating lock onboarding bulletin on non-admin or watch after accessory was updated with wallet key support: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = a1[4];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[6] UUID];
      v16 = [a1[5] shortDescription];
      *buf = 138543874;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Home hasn't onboarded, not handling wallet key support update for accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __81__HMDHomeWalletKeyManager_handleAccessorySupportsWalleyKeyDidChangeNotification___block_invoke_386(id *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = [v6 domain];
    v9 = v8;
    if (v8 != *MEMORY[0x277CCFD28])
    {

LABEL_13:
      v26 = objc_autoreleasePoolPush();
      v27 = a1[4];
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [a1[5] UUID];
        v31 = [a1[6] name];
        v32 = [a1[7] shortDescription];
        v34 = 138544386;
        v35 = v29;
        v36 = 2112;
        v37 = v30;
        v38 = 2112;
        v39 = v31;
        v40 = 2112;
        v41 = v32;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key when handling notification: %@ for accessory %@:%@", &v34, 0x34u);
      }

      objc_autoreleasePoolPop(v26);
      goto LABEL_16;
    }

    v17 = [v6 code];

    if (v17 != 1)
    {
      goto LABEL_13;
    }

    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] UUID];
      v23 = [a1[6] name];
      v24 = [a1[7] shortDescription];
      v34 = 138544130;
      v35 = v21;
      v36 = 2112;
      v37 = v22;
      v38 = 2112;
      v39 = v23;
      v40 = 2112;
      v41 = v24;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Home key already exists in wallet when handling notification: %@ for accessory: %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    [a1[4] syncDeviceCredentialKeyForAccessory:a1[7] paymentApplications:MEMORY[0x277CBEBF8] flow:a1[5]];
    if ([a1[7] wasUpdatedWithServiceType:@"00000266-0000-1000-8000-0026BB765291"] && (objc_msgSend(a1[7], "hasPostedBulletinForWalletKeyOnboarding") & 1) == 0)
    {
      [a1[7] updateHasPostedBulletinForWalletKeyOnboarding:1];
      v25 = [a1[4] bulletinBoard];
      [v25 insertWalletKeySupportAddedBulletinForAccessory:a1[7]];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1[4];
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] UUID];
      v15 = [a1[6] name];
      v16 = [a1[7] shortDescription];
      v34 = 138544130;
      v35 = v13;
      v36 = 2112;
      v37 = v14;
      v38 = 2112;
      v39 = v15;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added home key when handling notification: %@ for accessory: %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    [a1[4] createExpressModeSetUpBulletin];
  }

LABEL_16:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedAccessoryNotification:(id)notification
{
  v31 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDNotificationAddedAccessoryKey"];

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

  if (v8)
  {
    if ([v8 supportsWalletKey])
    {
      internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        uUID = [internalOnlyInitializer UUID];
        *buf = 138543618;
        v28 = v13;
        v29 = 2112;
        v30 = uUID;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling accessory added", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__HMDHomeWalletKeyManager_handleHomeAddedAccessoryNotification___block_invoke;
      v23[3] = &unk_279734870;
      v23[4] = selfCopy;
      v24 = internalOnlyInitializer;
      v25 = notificationCopy;
      v26 = v8;
      v16 = internalOnlyInitializer;
      dispatch_async(workQueue, v23);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        shortDescription = [v8 shortDescription];
        *buf = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = shortDescription;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Added accessory does not support wallet key: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __64__HMDHomeWalletKeyManager_handleHomeAddedAccessoryNotification___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDHomeWalletKeyManager_handleHomeAddedAccessoryNotification___block_invoke_2;
  v7[3] = &unk_279724FE8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 autoAddWalletKeyWithReason:@"accessory added" flow:v2 completion:v7];
}

void __64__HMDHomeWalletKeyManager_handleHomeAddedAccessoryNotification___block_invoke_2(id *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 domain];
  v9 = v8;
  if (v8 != *MEMORY[0x277CCFD28])
  {

    goto LABEL_9;
  }

  v10 = [v6 code];

  if (v10 != 1)
  {
LABEL_9:
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    v21 = v20;
    if (v6)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [a1[5] UUID];
        v24 = [a1[6] name];
        v25 = [a1[7] shortDescription];
        v31 = 138544386;
        v32 = v22;
        v33 = 2112;
        v34 = v23;
        v35 = 2112;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        v39 = 2112;
        v40 = v6;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key when handling notification: %@ for accessory %@:%@", &v31, 0x34u);
      }

      objc_autoreleasePoolPop(v18);
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [a1[5] UUID];
        v28 = [a1[6] name];
        v29 = [a1[7] shortDescription];
        v31 = 138544130;
        v32 = v26;
        v33 = 2112;
        v34 = v27;
        v35 = 2112;
        v36 = v28;
        v37 = 2112;
        v38 = v29;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added home key when handling notification: %@ for accessory: %@", &v31, 0x2Au);
      }

      objc_autoreleasePoolPop(v18);
      [a1[4] createExpressModeSetUpBulletin];
    }

    goto LABEL_16;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = a1[4];
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [a1[5] UUID];
    v16 = [a1[6] name];
    v17 = [a1[7] shortDescription];
    v31 = 138544130;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = v16;
    v37 = 2112;
    v38 = v17;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Home key already exists in wallet when handling notification: %@ for accessory: %@", &v31, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if ([a1[7] supportsAccessCode])
  {
    [a1[4] updateWalletKeyAccessCodeFieldWithReason:@"accessory added"];
  }

  [a1[4] syncDeviceCredentialKeyForAccessory:a1[7] paymentApplications:MEMORY[0x277CBEBF8] flow:a1[5]];
LABEL_16:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeNameChangedNotification:(id)notification
{
  v23 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = uUID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling home name changed notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDHomeWalletKeyManager_handleHomeNameChangedNotification___block_invoke;
  block[3] = &unk_279734960;
  v16 = notificationCopy;
  v17 = selfCopy;
  v18 = internalOnlyInitializer;
  v12 = internalOnlyInitializer;
  v13 = notificationCopy;
  dispatch_async(workQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __61__HMDHomeWalletKeyManager_handleHomeNameChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 hmf_stringForKey:@"HMDHomeNameNotificationKey"];

  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __61__HMDHomeWalletKeyManager_handleHomeNameChangedNotification___block_invoke_2;
  v9 = &unk_279724FC0;
  v10 = *(a1 + 40);
  v11 = v3;
  v4 = v3;
  v5 = _Block_copy(&v6);
  [*(a1 + 40) enqueueWalletKeyUpdateOperation:v5 flow:{*(a1 + 48), v6, v7, v8, v9, v10}];
}

id __61__HMDHomeWalletKeyManager_handleHomeNameChangedNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  if ([v3 state] == 6 || objc_msgSend(v3, "state") == 1)
  {
    v5 = [v3 mutableCopy];
    [v5 setHomeName:*(a1 + 40)];
    [v5 setWalletKeyDescription:*(a1 + 40)];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleHomeWillBeRemoved
{
  v21 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeWalletKeyManager *)self home];
  if (home)
  {
    [(HMDHomeWalletKeyManager *)self setIsHomeBeingRemoved:1];
    internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      uUID = [internalOnlyInitializer UUID];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = uUID;
      v19 = 2112;
      v20 = home;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling home will be removed: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDHomeWalletKeyManager *)selfCopy updateWalletKeyStateToState:10 flow:internalOnlyInitializer];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Home was nil in handleHomeWillBeRemoved", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeUserRemovedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDHomeWalletKeyManager_handleHomeUserRemovedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __61__HMDHomeWalletKeyManager_handleHomeUserRemovedNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
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
    v18 = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling notification user removed: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *(a1 + 40);
  v13 = [v5 uuid];
  v14 = [v12 passSerialNumberWithUserUUID:v13];

  v15 = [*(a1 + 40) passSerialNumber];
  v16 = [v15 isEqual:v14];

  if (v16)
  {
    [*(a1 + 40) updateWalletKeyStateToState:10 flow:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleLostModeManagerDidExitLostModeWithAuthCompleteNotification
{
  v18 = *MEMORY[0x277D85DE8];
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = uUID;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling notification did exit lost mode with auth complete notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HMDHomeWalletKeyManager_handleLostModeManagerDidExitLostModeWithAuthCompleteNotification__block_invoke;
  v12[3] = &unk_2797359B0;
  v12[4] = selfCopy;
  v13 = internalOnlyInitializer;
  v10 = internalOnlyInitializer;
  dispatch_async(workQueue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleLostModeUpdated
{
  v24 = *MEMORY[0x277D85DE8];
  lostModeManager = [(HMDHomeWalletKeyManager *)self lostModeManager];
  isLost = [lostModeManager isLost];

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    v11 = HMFBooleanToString();
    *buf = 138543874;
    v19 = v9;
    v20 = 2112;
    v21 = uUID;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling notification lost mode updated to: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDHomeWalletKeyManager_handleLostModeUpdated__block_invoke;
  block[3] = &unk_279734938;
  v17 = isLost;
  block[4] = selfCopy;
  v16 = internalOnlyInitializer;
  v13 = internalOnlyInitializer;
  dispatch_async(workQueue, block);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __48__HMDHomeWalletKeyManager_handleLostModeUpdated__block_invoke(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    return [*(result + 32) updateWalletKeyStateToState:7 flow:*(result + 40)];
  }

  return result;
}

- (void)handleApplicationUninstalled:(id)uninstalled
{
  object = [uninstalled object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  bundleIdentifier = [v6 bundleIdentifier];

  v8 = *MEMORY[0x277CCFE40];
  v9 = [bundleIdentifier isEqualToString:v8];

  if (v9)
  {
    workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDHomeWalletKeyManager_handleApplicationUninstalled___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)handleApplicationInstalled:(id)installed
{
  v35 = *MEMORY[0x277D85DE8];
  installedCopy = installed;
  object = [installedCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  bundleIdentifier = [v7 bundleIdentifier];
  v9 = *MEMORY[0x277CCFE40];
  v10 = [bundleIdentifier isEqualToString:v9];

  if (v10)
  {
    internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      uUID = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v32 = v15;
      v33 = 2112;
      v34 = uUID;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Updating wallet key because Home App was installed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDHomeWalletKeyManager_handleApplicationInstalled___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = selfCopy;
    dispatch_async(workQueue, block);
LABEL_12:

    goto LABEL_13;
  }

  bundleIdentifier2 = [v7 bundleIdentifier];
  v19 = [bundleIdentifier2 isEqualToString:@"com.apple.Passbook"];

  if (v19)
  {
    internalOnlyInitializer2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      uUID2 = [internalOnlyInitializer2 UUID];
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = uUID2;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Auto adding wallet key after wallet app installed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    workQueue2 = [(HMDHomeWalletKeyManager *)selfCopy2 workQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__HMDHomeWalletKeyManager_handleApplicationInstalled___block_invoke_375;
    v28[3] = &unk_2797359B0;
    v28[4] = selfCopy2;
    v29 = internalOnlyInitializer2;
    internalOnlyInitializer = internalOnlyInitializer2;
    dispatch_async(workQueue2, v28);

    workQueue = v29;
    goto LABEL_12;
  }

LABEL_13:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleSystemInfoMigrationUpdatedNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  systemInfo = [(HMDHomeWalletKeyManager *)self systemInfo];
  isMigrating = [systemInfo isMigrating];

  if (isMigrating)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Not handling migration updated notification, migration is in progress", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDHomeWalletKeyManager_handleSystemInfoMigrationUpdatedNotification___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __72__HMDHomeWalletKeyManager_handleSystemInfoMigrationUpdatedNotification___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Auto adding wallet key after device migration has finished", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) autoAddWalletKeyWithFlow:v2];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessorySupportsAccessCodeDidChangeNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  home = [v7 home];
  home2 = [(HMDHomeWalletKeyManager *)self home];

  if (home == home2)
  {
    workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDHomeWalletKeyManager_handleAccessorySupportsAccessCodeDidChangeNotification___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      uuid = [home uuid];
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = uuid;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Not handling access code support change for accessory in other home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)accessoryManager:(id)manager didUpdateWalletKeyColor:(int64_t)color
{
  v24 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    v14 = HMHomeWalletKeyColorAsString();
    *buf = 138543874;
    v19 = v12;
    v20 = 2112;
    v21 = uUID;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling wallet key color did update delegate callback: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HMDHomeWalletKeyManager_accessoryManager_didUpdateWalletKeyColor___block_invoke;
  v17[3] = &unk_279724F98;
  v17[4] = selfCopy;
  v17[5] = color;
  v15 = _Block_copy(v17);
  [(HMDHomeWalletKeyManager *)selfCopy enqueueWalletKeyUpdateOperation:v15 flow:internalOnlyInitializer];

  v16 = *MEMORY[0x277D85DE8];
}

id __68__HMDHomeWalletKeyManager_accessoryManager_didUpdateWalletKeyColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  if ([v3 state] == 1)
  {
    v5 = [v3 mutableCopy];
    [v5 setColor:*(a1 + 40)];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)passLibrary:(id)library didRemovePassWithSerialNumber:(id)number typeIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  numberCopy = number;
  identifierCopy = identifier;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  passSerialNumber = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  if (passSerialNumber && [numberCopy isEqualToString:passSerialNumber] && objc_msgSend(identifierCopy, "isEqualToString:", @"paymentpass.com.apple.dev1"))
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending message that home key was removed from wallet", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCFEB8] messagePayload:0];
    v18 = objc_alloc(MEMORY[0x277D0F820]);
    uuid = [(HMDHomeWalletKeyManager *)selfCopy uuid];
    v20 = [v18 initWithTarget:uuid];

    [v17 setDestination:v20];
    [v17 setRequiresWalletKeyEntitlement];
    messageDispatcher = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v17];

    pendingUpdateWalletKeyOperations = [(HMDHomeWalletKeyManager *)selfCopy pendingUpdateWalletKeyOperations];
    [pendingUpdateWalletKeyOperations removeAllObjects];

    home = [(HMDHomeWalletKeyManager *)selfCopy home];
    nfcReaderKeyManager = [home nfcReaderKeyManager];
    accessoryManager = [nfcReaderKeyManager accessoryManager];
    [accessoryManager handleWalletKeyRemoved];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)passLibrary:(id)library didAddPassWithSerialNumber:(id)number typeIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  numberCopy = number;
  identifierCopy = identifier;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  passSerialNumber = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  if (passSerialNumber && [numberCopy isEqualToString:passSerialNumber] && objc_msgSend(identifierCopy, "isEqualToString:", @"paymentpass.com.apple.dev1"))
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending message that home key was added in wallet", &v35, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CCFEA8] messagePayload:0];
    v18 = objc_alloc(MEMORY[0x277D0F820]);
    uuid = [(HMDHomeWalletKeyManager *)selfCopy uuid];
    v20 = [v18 initWithTarget:uuid];

    [v17 setDestination:v20];
    [v17 setRequiresWalletKeyEntitlement];
    messageDispatcher = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
    [messageDispatcher sendMessage:v17];
  }

  passLibrary = [(HMDHomeWalletKeyManager *)self passLibrary];
  untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v24 = [passLibrary walletKeyWithTypeIdentifier:identifierCopy serialNumber:numberCopy flow:untrackedPlaceholderFlow];

  if (v24)
  {
    home = [(HMDHomeWalletKeyManager *)self home];
    nfcReaderKey = [home nfcReaderKey];

    if (nfcReaderKey)
    {
      dataSource = [(HMDHomeWalletKeyManager *)self dataSource];
      identifier = [nfcReaderKey identifier];
      hmf_hexadecimalRepresentation = [identifier hmf_hexadecimalRepresentation];
      [dataSource persistNumberValueToNoBackupStore:0 withKey:hmf_hexadecimalRepresentation];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Not persisting settings because could not find reader key after pass was added", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  uuid = [(HMDHomeWalletKeyManager *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)autoAddWalletKeyWithReason:(id)reason flow:(id)flow completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v40 = v15;
    v41 = 2112;
    v42 = uUID;
    v43 = 2112;
    v44 = reasonCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Auto adding wallet key with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  homeManager = [home homeManager];
  homeUUIDsWithAutoAddWalletKeySuppressed = [homeManager homeUUIDsWithAutoAddWalletKeySuppressed];
  uuid = [home uuid];
  v21 = [homeUUIDsWithAutoAddWalletKeySuppressed containsObject:uuid];

  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v40 = v25;
      v41 = 2112;
      v42 = uUID2;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot auto add wallet key because it is suppressed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_12:
    completionCopy[2](completionCopy, 0, v27);
    goto LABEL_13;
  }

  v38 = 0;
  v28 = [(HMDHomeWalletKeyManager *)selfCopy canAutoAddWalletKeyWithError:&v38];
  v27 = v38;
  if (!v28)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = selfCopy;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      *buf = 138544130;
      v40 = v32;
      v41 = 2112;
      v42 = uUID3;
      v43 = 2112;
      v44 = reasonCopy;
      v45 = 2112;
      v46 = v27;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot auto add wallet key for reason: %@ with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
    goto LABEL_12;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __70__HMDHomeWalletKeyManager_autoAddWalletKeyWithReason_flow_completion___block_invoke;
  v35[3] = &unk_27972C5A0;
  v35[4] = selfCopy;
  v36 = flowCopy;
  v37 = completionCopy;
  [(HMDHomeWalletKeyManager *)selfCopy fetchShouldSuppressWalletNotificationWithCompletion:v35];

LABEL_13:
  v34 = *MEMORY[0x277D85DE8];
}

void __70__HMDHomeWalletKeyManager_autoAddWalletKeyWithReason_flow_completion___block_invoke(id *a1, char a2)
{
  v4 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = a1[4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HMDHomeWalletKeyManager_autoAddWalletKeyWithReason_flow_completion___block_invoke_2;
  v6[3] = &unk_279724F70;
  v6[4] = v5;
  v9 = a2;
  v7 = a1[5];
  v8 = a1[6];
  [v5 fetchShouldAutoEnableExpressWithCompletion:v6];
}

void __70__HMDHomeWalletKeyManager_autoAddWalletKeyWithReason_flow_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HMDHomeWalletKeyManager_autoAddWalletKeyWithReason_flow_completion___block_invoke_3;
  v6[3] = &unk_279724F48;
  v9 = *(a1 + 56);
  v10 = a2;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  dispatch_async(v4, v6);
}

uint64_t __70__HMDHomeWalletKeyManager_autoAddWalletKeyWithReason_flow_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 57))
  {
    v1 = *(a1 + 56) | 2;
  }

  else
  {
    v1 = *(a1 + 56);
  }

  return [*(a1 + 32) addWalletKeyWithOptions:v1 isOnboarding:0 flow:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)fetchShouldAutoEnableExpressWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDHomeWalletKeyManager *)self dataSource];
  isWatch = [dataSource isWatch];

  if (isWatch)
  {
    dataSource2 = [(HMDHomeWalletKeyManager *)self dataSource];
    [dataSource2 canNotifyAboutExpressModeWithCompletion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)updateWalletKeyAccessCodeFieldWithReason:(id)reason
{
  v21 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = uUID;
    v19 = 2112;
    v20 = reasonCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Updating wallet key access code field with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HMDHomeWalletKeyManager_updateWalletKeyAccessCodeFieldWithReason___block_invoke;
  aBlock[3] = &unk_279724F20;
  aBlock[4] = selfCopy;
  v12 = _Block_copy(aBlock);
  [(HMDHomeWalletKeyManager *)selfCopy enqueueWalletKeyUpdateOperation:v12 flow:internalOnlyInitializer];

  v13 = *MEMORY[0x277D85DE8];
}

id __68__HMDHomeWalletKeyManager_updateWalletKeyAccessCodeFieldWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v4);

  if ([v3 state] == 1)
  {
    v5 = [*(a1 + 32) walletKeyByAddingAccessCodeToWalletKey:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fetchShouldSuppressWalletNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDHomeWalletKeyManager *)self dataSource];
  isWatch = [dataSource isWatch];

  if (isWatch)
  {
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    applicationRegistry = [(HMDHomeWalletKeyManager *)self applicationRegistry];
    v9 = *MEMORY[0x277CCFE40];
    v10 = [applicationRegistry applicationInfoForBundleIdentifier:v9];

    if (v10)
    {
      bulletinBoard = [(HMDHomeWalletKeyManager *)self bulletinBoard];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __79__HMDHomeWalletKeyManager_fetchShouldSuppressWalletNotificationWithCompletion___block_invoke;
      v12[3] = &unk_279724EF8;
      v12[4] = self;
      v13 = completionCopy;
      [bulletinBoard fetchAreUserNotificationsEnabledWithCompletion:v12];
    }

    else
    {
      completionCopy[2](completionCopy, 0);
    }
  }
}

void __79__HMDHomeWalletKeyManager_fetchShouldSuppressWalletNotificationWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__HMDHomeWalletKeyManager_fetchShouldSuppressWalletNotificationWithCompletion___block_invoke_2;
  v5[3] = &unk_279725DC0;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

- (void)syncDeviceCredentialKeyForAccessory:(id)accessory paymentApplications:(id)applications flow:(id)flow
{
  v39 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  applicationsCopy = applications;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  passSerialNumber = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v17 = v27 = applicationsCopy;
    [internalOnlyInitializer UUID];
    v26 = passSerialNumber;
    v19 = v18 = flowCopy;
    uUID = [v18 UUID];
    uuid = [accessoryCopy uuid];
    *buf = 138544130;
    v32 = v17;
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = uUID;
    v37 = 2112;
    v38 = uuid;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Syncing device credential key to accessory: %@", buf, 0x2Au);

    flowCopy = v18;
    passSerialNumber = v26;

    applicationsCopy = v27;
  }

  objc_autoreleasePoolPop(v14);
  passLibrary = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__HMDHomeWalletKeyManager_syncDeviceCredentialKeyForAccessory_paymentApplications_flow___block_invoke;
  v28[3] = &unk_279724ED0;
  v28[4] = selfCopy;
  v29 = internalOnlyInitializer;
  v30 = accessoryCopy;
  v23 = accessoryCopy;
  v24 = internalOnlyInitializer;
  [passLibrary fetchTransactionKeyForPassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber completion:v28];

  v25 = *MEMORY[0x277D85DE8];
}

void __88__HMDHomeWalletKeyManager_syncDeviceCredentialKeyForAccessory_paymentApplications_flow___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [a1[4] workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__HMDHomeWalletKeyManager_syncDeviceCredentialKeyForAccessory_paymentApplications_flow___block_invoke_358;
    v14[3] = &unk_279734870;
    v14[4] = a1[4];
    v15 = a1[6];
    v16 = v5;
    v17 = a1[5];
    dispatch_async(v7, v14);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] UUID];
      *buf = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch the transaction key: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __88__HMDHomeWalletKeyManager_syncDeviceCredentialKeyForAccessory_paymentApplications_flow___block_invoke_358(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v3 = [v2 nfcReaderKeyManager];
  v4 = [v3 accessoryManager];
  v5 = *(a1 + 40);
  v6 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:*(a1 + 48)];
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__HMDHomeWalletKeyManager_syncDeviceCredentialKeyForAccessory_paymentApplications_flow___block_invoke_2;
  v8[3] = &unk_279734D88;
  v8[4] = *(a1 + 32);
  v9 = v7;
  v10 = *(a1 + 40);
  [v4 configureAccessory:v5 withDeviceCredentialKey:v6 ofType:0 flow:v9 completion:v8];
}

void __88__HMDHomeWalletKeyManager_syncDeviceCredentialKeyForAccessory_paymentApplications_flow___block_invoke_2(id *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v10 = [a1[6] shortDescription];
      v16 = 138544130;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v3;
      v11 = "%{public}@[Flow: %@] Failed to configured accessory with device credential key %@:%@";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 42;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v12, v13, v11, &v16, v14);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [a1[5] UUID];
    v10 = [a1[6] shortDescription];
    v16 = 138543874;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v11 = "%{public}@[Flow: %@] Successfully configured accessory with device credential key %@";
    v12 = v7;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateWalletKeyStateToState:(int64_t)state flow:(id)flow
{
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HMDHomeWalletKeyManager_updateWalletKeyStateToState_flow___block_invoke;
  aBlock[3] = &unk_279724EA8;
  v11 = flowCopy;
  stateCopy = state;
  aBlock[4] = self;
  v8 = flowCopy;
  v9 = _Block_copy(aBlock);
  [(HMDHomeWalletKeyManager *)self enqueueWalletKeyUpdateOperation:v9 flow:v8];
}

id __60__HMDHomeWalletKeyManager_updateWalletKeyStateToState_flow___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 48);
  if (v7 == 10 || v7 == 6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v14 = *(a1 + 48);
      v27 = 138543874;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2048;
      v32 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing home key from wallet since updated state is: %ld", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = 0;
    *a3 = 1;
  }

  else
  {
    v18 = [v5 state];
    if (v18 == *(a1 + 48))
    {
      v19 = v18;
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 40) UUID];
        v25 = *(a1 + 48);
        v27 = 138544130;
        v28 = v23;
        v29 = 2112;
        v30 = v24;
        v31 = 2048;
        v32 = v19;
        v33 = 2048;
        v34 = v25;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not updating wallet key since existing wallet key state: %lu matches final state: %lu", &v27, 0x2Au);
      }

      objc_autoreleasePoolPop(v20);
      v15 = 0;
    }

    else
    {
      v26 = [v5 mutableCopy];
      [v26 setState:*(a1 + 48)];
      v15 = [*(a1 + 32) walletKeyByAddingAccessCodeToWalletKey:v26];
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)walletKeyByAddingAccessCodeToWalletKey:(id)key
{
  keyCopy = key;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeWalletKeyManager *)self home];
  v7 = [keyCopy mutableCopy];
  currentUser = [home currentUser];
  accessCode = [currentUser accessCode];

  state = [keyCopy state];
  if (state == 1 && accessCode && ([home hasAnyAccessoryWithWalletKeyAndAccessCodeSupport] & 1) != 0)
  {
    [v7 setAccessCode:accessCode];
    applicationRegistry = [(HMDHomeWalletKeyManager *)self applicationRegistry];
    v12 = *MEMORY[0x277CCFE40];
    v13 = [applicationRegistry applicationInfoForBundleIdentifier:v12];

    dataSource = [(HMDHomeWalletKeyManager *)self dataSource];
    LOBYTE(applicationRegistry) = [dataSource isWatch];

    if ((applicationRegistry & 1) == 0 && v13)
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:@"com.apple.Home-private://userLockSettings"];
      contextSPIUniqueIdentifier = [home contextSPIUniqueIdentifier];
      uUIDString = [contextSPIUniqueIdentifier UUIDString];
      v18 = [v15 URLByAppendingPathComponent:uUIDString];

      [v7 setChangeAccessCodeHomeAppCustomURL:v18];
      goto LABEL_9;
    }
  }

  else
  {
    [v7 setAccessCode:0];
  }

  [v7 setChangeAccessCodeHomeAppCustomURL:0];
LABEL_9:
  v19 = [v7 copy];

  return v19;
}

- (id)passSerialNumberWithUserUUID:(id)d
{
  v4 = MEMORY[0x277CD1A60];
  dCopy = d;
  uuid = [(HMDHomeWalletKeyManager *)self uuid];
  v7 = [v4 passSerialNumberWithHomeUUID:uuid userUUID:dCopy];

  return v7;
}

- (id)paymentApplicationsForWalletKey:(id)key validateNFCInfo:(BOOL)info defaultPaymentApplication:(id)application doesAnyAccessorySupportACB:(BOOL)b flow:(id)flow
{
  keyCopy = key;
  applicationCopy = application;
  flowCopy = flow;
  nfcInfos = [keyCopy nfcInfos];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke;
  v20[3] = &unk_279724E80;
  infoCopy = info;
  v20[4] = self;
  v21 = flowCopy;
  v22 = applicationCopy;
  v23 = keyCopy;
  v15 = keyCopy;
  v16 = applicationCopy;
  v17 = flowCopy;
  v18 = [nfcInfos na_map:v20];

  return v18;
}

id __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64) != 1)
  {
    goto LABEL_6;
  }

  v5 = [v3 applicationIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 secureElementIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 subCredentialIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = [v4 pairedReaderIdentifier];

        if (v11)
        {
LABEL_6:
          v12 = [*(a1 + 48) mutableCopy];
          v13 = [v4 paymentCredentialType];
          v14 = @"Aliro";
          if (v13 != 1)
          {
            v14 = 0;
          }

          if (v13)
          {
            v15 = v14;
          }

          else
          {
            v15 = @"UnifiedAccess";
          }

          [v12 setObject:v15 forKeyedSubscript:@"paymentType"];
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "state")}];
          [v12 setObject:v16 forKeyedSubscript:@"state"];

          v17 = [v4 secureElementIdentifier];
          [v12 setObject:v17 forKeyedSubscript:@"secureElementIdentifier"];

          v18 = [v4 applicationIdentifier];
          [v12 setObject:v18 forKeyedSubscript:@"applicationIdentifier"];

          v19 = [*(a1 + 56) serialNumber];
          [v12 setObject:v19 forKeyedSubscript:@"DPANIdentifier"];

          v20 = [*(a1 + 56) serialNumber];
          v21 = [*(a1 + 56) serialNumber];
          v22 = [v20 substringFromIndex:{objc_msgSend(v21, "length") - 4}];
          [v12 setObject:v22 forKeyedSubscript:@"DPANSuffix"];

          v23 = [MEMORY[0x277CBEB38] dictionary];
          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "state")}];
          [v23 setObject:v24 forKeyedSubscript:@"state"];

          v25 = [v4 subCredentialIdentifier];
          [v23 setObject:v25 forKeyedSubscript:@"identifier"];

          v26 = [v4 pairedReaderIdentifier];
          [v23 setObject:v26 forKeyedSubscript:@"pairedReaderIdentifier"];

          v27 = [v12 objectForKeyedSubscript:@"automaticSelectionCriteria"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;

          v30 = [v29 firstObject];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v30;
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;

          if (v32)
          {
            v33 = [v4 pairedReaderIdentifier];
            if (v33)
            {
              v34 = objc_autoreleasePoolPush();
              v35 = *(a1 + 32);
              v36 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                v37 = HMFGetLogIdentifier();
                v38 = [*(a1 + 40) UUID];
                *buf = 138543874;
                v62 = v37;
                v63 = 2112;
                v64 = v38;
                v65 = 2112;
                v66 = v33;
                _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting paired reader identifier in automatic selection criteria: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v34);
              v39 = [v32 mutableCopy];
              v60 = v33;
              v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
              [v39 setObject:v40 forKeyedSubscript:@"readerIDs"];

              v59 = v39;
              v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
              [v12 setObject:v41 forKeyedSubscript:@"automaticSelectionCriteria"];
            }

            [v12 setObject:v23 forKeyedSubscript:@"subcredential"];
            v42 = v12;
          }

          else
          {
            v43 = objc_autoreleasePoolPush();
            v44 = *(a1 + 32);
            v45 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v46 = HMFGetLogIdentifier();
              v47 = [*(a1 + 40) UUID];
              *buf = 138544130;
              v62 = v46;
              v63 = 2112;
              v64 = v47;
              v65 = 2112;
              v66 = @"automaticSelectionCriteria";
              v67 = 2112;
              v68 = v12;
              _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Automatic selection criteria key: %@ does not exist in payment application: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v43);
            v42 = 0;
          }

          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }
  }

LABEL_29:
  v48 = objc_autoreleasePoolPush();
  v49 = *(a1 + 32);
  v50 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v51 = HMFGetLogIdentifier();
    v52 = [*(a1 + 40) UUID];
    v53 = [v4 applicationIdentifier];
    v54 = [v4 secureElementIdentifier];
    v55 = [v4 subCredentialIdentifier];
    v56 = [v4 pairedReaderIdentifier];
    *buf = 138544642;
    v62 = v51;
    v63 = 2112;
    v64 = v52;
    v65 = 2112;
    v66 = v53;
    v67 = 2112;
    v68 = v54;
    v69 = 2112;
    v70 = v55;
    v71 = 2112;
    v72 = v56;
    _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update pass JSON because critical NFC Info is missing. applicationIdentifier: %@, secureElementIdentifier: %@, subCredentialIdentifier: %@, pairedReaderIdentifier: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v48);
  v42 = 0;
LABEL_32:

  v57 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)updatePassJSONAtURL:(id)l withWalletKey:(id)key options:(int64_t)options validateNFCInfo:(BOOL)info flow:(id)flow
{
  infoCopy = info;
  v161 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v18 = HMFBooleanToString();
    *buf = 138544642;
    v150 = v16;
    v151 = 2112;
    v152 = uUID;
    v153 = 2112;
    v154 = lCopy;
    v155 = 2112;
    v156 = keyCopy;
    v157 = 2048;
    optionsCopy = options;
    v159 = 2112;
    v160 = v18;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating pass JSON at URL: %@, withWalletKey: %@, options: %ld, validateNFCInfo: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v13);
  fileManager = [(HMDHomeWalletKeyManager *)selfCopy fileManager];
  v133 = 0;
  v20 = [fileManager JSONObjectWithURL:lCopy error:&v133];
  v21 = v133;

  if (v20)
  {
    v22 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v25 = [(__CFString *)v24 mutableCopy];
    if (v25)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithBool:options & 1];
      [(__CFString *)v25 setObject:v26 forKeyedSubscript:@"muteReadyForUseNotification"];

      serialNumber = [(__CFString *)keyCopy serialNumber];
      [(__CFString *)v25 setObject:serialNumber forKeyedSubscript:@"serialNumber"];

      typeIdentifier = [(__CFString *)keyCopy typeIdentifier];
      [(__CFString *)v25 setObject:typeIdentifier forKeyedSubscript:@"passTypeIdentifier"];

      walletKeyDescription = [(__CFString *)keyCopy walletKeyDescription];
      [(__CFString *)v25 setObject:walletKeyDescription forKeyedSubscript:@"description"];

      [(__CFString *)v25 setObject:@"appleHomeKey" forKeyedSubscript:@"liveRenderType"];
      passColorValue = [(__CFString *)keyCopy passColorValue];
      [(__CFString *)v25 setObject:passColorValue forKeyedSubscript:@"homeKeyLiveType"];

      labelColorValue = [(__CFString *)keyCopy labelColorValue];
      v126 = v25;
      [(__CFString *)v25 setObject:labelColorValue forKeyedSubscript:@"foregroundColor"];

      v32 = [(__CFString *)v22 objectForKeyedSubscript:@"paymentApplications"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;

      v35 = v34;
      firstObject = [v34 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = firstObject;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;

      v39 = [v38 mutableCopy];
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      v43 = v42;
      v127 = v39;
      if (v39)
      {
        v125 = v21;
        v44 = v35;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v45 = HMFGetLogIdentifier();
          [flowCopy UUID];
          v47 = v46 = lCopy;
          HMFBooleanToString();
          v48 = v44;
          v50 = v49 = v20;
          *buf = 138543874;
          v150 = v45;
          v151 = 2112;
          v152 = v47;
          v153 = 2112;
          v154 = v50;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] doesAnyAccessorySupportACB: %@", buf, 0x20u);

          lCopy = v46;
          v20 = v49;
          v44 = v48;
        }

        objc_autoreleasePoolPop(v40);
        v51 = [(HMDHomeWalletKeyManager *)v41 paymentApplicationsForWalletKey:keyCopy validateNFCInfo:infoCopy defaultPaymentApplication:v127 doesAnyAccessorySupportACB:0 flow:flowCopy];
        v52 = v51;
        if (v51 && ![v51 hmf_isEmpty])
        {
          v120 = v41;
          v122 = v20;
          v129 = lCopy;
          [(__CFString *)v126 setObject:v52 forKeyedSubscript:@"paymentApplications"];
          v77 = [(__CFString *)v22 objectForKeyedSubscript:@"paymentCard"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v78 = v77;
          }

          else
          {
            v78 = 0;
          }

          v79 = v78;

          v80 = [v79 mutableCopy];
          v121 = v80;
          if (v80)
          {
            homeName = [(__CFString *)keyCopy homeName];

            if (homeName)
            {
              v146[1] = @"value";
              v147[0] = @"homeName";
              v146[0] = @"key";
              homeName2 = [(__CFString *)keyCopy homeName];
              v147[1] = homeName2;
              v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
              v148 = v83;
              v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
              [v80 setObject:v84 forKeyedSubscript:@"headerFields"];
            }

            array = [MEMORY[0x277CBEB18] array];
            array2 = [MEMORY[0x277CBEB18] array];
            accessCode = [(__CFString *)keyCopy accessCode];

            v124 = array;
            if (accessCode)
            {
              v144[0] = @"key";
              v144[1] = @"label";
              v145[0] = @"arbitrary_supplementary_field_accessCode";
              v145[1] = @"ACCESS_CODE";
              v144[2] = @"value";
              accessCode2 = [(__CFString *)keyCopy accessCode];
              v145[2] = accessCode2;
              v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:3];
              [array2 addObject:v89];

              array = v124;
              [v124 addObject:@"arbitrary_supplementary_field_accessCode"];
            }

            v123 = array2;
            changeAccessCodeHomeAppCustomURL = [(__CFString *)keyCopy changeAccessCodeHomeAppCustomURL];

            if (changeAccessCodeHomeAppCustomURL)
            {
              v142[0] = @"key";
              v142[1] = @"value";
              v143[0] = @"arbitrary_supplementary_field_changeAccessCode";
              v143[1] = @"CHANGE_ACCESS_CODE_BUTTON";
              v142[2] = @"link";
              changeAccessCodeHomeAppCustomURL2 = [(__CFString *)keyCopy changeAccessCodeHomeAppCustomURL];
              absoluteString = [changeAccessCodeHomeAppCustomURL2 absoluteString];
              v143[2] = absoluteString;
              v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:3];
              [array2 addObject:v93];

              array = v124;
              [v124 addObject:@"arbitrary_supplementary_field_changeAccessCode"];
            }

            if ([array count])
            {
              v140[0] = @"key";
              v140[1] = @"label";
              v141[0] = @"arbitrary_supplementary_field_personalPinCode";
              v141[1] = @"PERSONAL_PIN_CODE";
              v140[2] = @"link";
              v141[2] = @"wallet://card/card-id/sections?sections=access_code&authenticationRequirment=deviceOwner&title=PERSONAL_PIN_CODE_TITLE";
              v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:3];
              [array2 addObject:v94];

              v95 = [array2 copy];
              [v80 setObject:v95 forKeyedSubscript:@"backFields"];

              v136 = @"arbitrary_supplementary_field_personalPinCode";
              v137 = @"rows";
              v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
              v138 = v96;
              v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
              v139[0] = v97;
              v134[0] = @"rows";
              v98 = [array copy];
              v135[0] = v98;
              v135[1] = MEMORY[0x277CBEC38];
              v134[1] = @"hidden";
              v134[2] = @"identifier";
              v135[2] = @"access_code";
              v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:3];
              v139[1] = v99;
              v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v139 count:2];
              [v80 setObject:v100 forKeyedSubscript:@"passDetailSections"];
            }

            [(__CFString *)v126 setObject:v80 forKeyedSubscript:@"paymentCard"];
            fileManager2 = [(HMDHomeWalletKeyManager *)v120 fileManager];
            v132 = v125;
            v102 = [fileManager2 writeJSONObject:v126 toURL:v129 error:&v132];
            v103 = v132;

            v104 = objc_autoreleasePoolPush();
            v105 = v120;
            v106 = HMFGetOSLogHandle();
            v107 = v106;
            if (v102)
            {
              v20 = v122;
              v44 = v119;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
              {
                v108 = HMFGetLogIdentifier();
                uUID2 = [flowCopy UUID];
                *buf = 138544130;
                v150 = v108;
                v151 = 2112;
                v152 = uUID2;
                v153 = 2112;
                v154 = v126;
                v155 = 2112;
                v156 = v129;
                _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wrote pass JSON dict: %@, to URL: %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v104);
              v62 = v126;
              v61 = [(__CFString *)v126 copy];
              lCopy = v129;
            }

            else
            {
              v20 = v122;
              v44 = v119;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                v115 = HMFGetLogIdentifier();
                uUID3 = [flowCopy UUID];
                *buf = 138544130;
                v150 = v115;
                v151 = 2112;
                v152 = uUID3;
                v153 = 2112;
                v154 = v129;
                v155 = 2112;
                v156 = v103;
                _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to write pass JSON dict to URL %@:%@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v104);
              v61 = 0;
              lCopy = v129;
              v62 = v126;
            }

            v125 = v103;
          }

          else
          {
            v110 = objc_autoreleasePoolPush();
            v111 = v120;
            v112 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
            {
              v113 = HMFGetLogIdentifier();
              uUID4 = [flowCopy UUID];
              *buf = 138544130;
              v150 = v113;
              v151 = 2112;
              v152 = uUID4;
              v153 = 2112;
              v154 = @"paymentCard";
              v155 = 2112;
              v156 = v22;
              _os_log_impl(&dword_2531F8000, v112, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Key payment card does not exist in pass json %@:%@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v110);
            v61 = 0;
            lCopy = v129;
            v20 = v122;
            v62 = v126;
          }
        }

        else
        {
          v53 = objc_autoreleasePoolPush();
          v54 = v41;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v57 = v56 = lCopy;
            [flowCopy UUID];
            v58 = v44;
            v60 = v59 = v20;
            *buf = 138543618;
            v150 = v57;
            v151 = 2112;
            v152 = v60;
            _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not create any payment applications", buf, 0x16u);

            v20 = v59;
            v44 = v58;

            lCopy = v56;
          }

          objc_autoreleasePoolPop(v53);
          v61 = 0;
          v62 = v126;
        }

        v21 = v125;
      }

      else
      {
        v44 = v35;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v74 = HMFGetLogIdentifier();
          [flowCopy UUID];
          v76 = v75 = v21;
          *buf = 138544130;
          v150 = v74;
          v151 = 2112;
          v152 = v76;
          v153 = 2112;
          v154 = @"paymentApplications";
          v155 = 2112;
          v156 = v126;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Payment application key: %@ does not exist in pass json: %@", buf, 0x2Au);

          v21 = v75;
          v44 = v35;
        }

        objc_autoreleasePoolPop(v40);
        v61 = 0;
        v62 = v126;
      }
    }

    else
    {
      v62 = 0;
      v68 = objc_autoreleasePoolPush();
      v69 = selfCopy;
      v70 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v72 = v71 = v21;
        uUID5 = [flowCopy UUID];
        *buf = 138543874;
        v150 = v72;
        v151 = 2112;
        v152 = uUID5;
        v153 = 2112;
        v154 = v22;
        _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] passJSONObject is not of type NSDictionary: %@", buf, 0x20u);

        v21 = v71;
      }

      objc_autoreleasePoolPop(v68);
      v61 = 0;
    }
  }

  else
  {
    v63 = objc_autoreleasePoolPush();
    v64 = selfCopy;
    v65 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = HMFGetLogIdentifier();
      uUID6 = [flowCopy UUID];
      *buf = 138544130;
      v150 = v66;
      v151 = 2112;
      v152 = uUID6;
      v153 = 2112;
      v154 = lCopy;
      v155 = 2112;
      v156 = v21;
      _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to load pass json at URL %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v63);
    v61 = 0;
  }

  v117 = *MEMORY[0x277D85DE8];

  return v61;
}

- (void)createPassDirectoryWithWalletKey:(id)key options:(int64_t)options shouldSkipResourceFiles:(BOOL)files shouldCreateZipArchive:(BOOL)archive validateNFCInfo:(BOOL)info flow:(id)flow completion:(id)completion
{
  LODWORD(v41) = info;
  HIDWORD(v41) = archive;
  filesCopy = files;
  v64 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v20 = HMFBooleanToString();
    v21 = HMFBooleanToString();
    *buf = 138544642;
    v53 = v18;
    v54 = 2112;
    v55 = uUID;
    v56 = 2112;
    v57 = keyCopy;
    v58 = 2048;
    optionsCopy = options;
    v60 = 2112;
    v61 = v20;
    v62 = 2112;
    v63 = v21;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating pass directory with wallet key: %@, options: %ld, shouldSkipResourceFiles: %@, shouldCreateZipArchive: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v15);
  if (filesCopy)
  {
    [(HMDHomeWalletKeyManager *)selfCopy createPassDirectoryWithoutResourceFilesWithFlow:flowCopy];
  }

  else
  {
    [(HMDHomeWalletKeyManager *)selfCopy createPassDirectoryWithResourceFilesWithFlow:flowCopy];
  }
  v22 = ;
  v23 = v22;
  if (v22)
  {
    v24 = [v22 URLByAppendingPathComponent:@"pass.json"];
    v25 = [(HMDHomeWalletKeyManager *)selfCopy updatePassJSONAtURL:v24 withWalletKey:keyCopy options:options validateNFCInfo:v41 flow:flowCopy];
    if (v25)
    {
      objc_initWeak(buf, selfCopy);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __147__HMDHomeWalletKeyManager_createPassDirectoryWithWalletKey_options_shouldSkipResourceFiles_shouldCreateZipArchive_validateNFCInfo_flow_completion___block_invoke;
      v44[3] = &unk_279731E90;
      objc_copyWeak(&v49, buf);
      v48 = completionCopy;
      v50 = BYTE4(v41);
      v45 = v23;
      v46 = v25;
      v47 = flowCopy;
      [(HMDHomeWalletKeyManager *)selfCopy addISOCredentialWithPassAtURL:v45 walletKey:keyCopy flow:v47 completion:v44];

      objc_destroyWeak(&v49);
      objc_destroyWeak(buf);
      v26 = 0;
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543874;
        v53 = v30;
        v54 = 2112;
        v55 = uUID2;
        v56 = 2112;
        v57 = v24;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update pass JSON at URL: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      fileManager = [(HMDHomeWalletKeyManager *)v28 fileManager];
      v51 = 0;
      v33 = [fileManager removeItemAtURL:v23 error:&v51];
      v26 = v51;

      if ((v33 & 1) == 0)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v28;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          uUID3 = [flowCopy UUID];
          *buf = 138544130;
          v53 = v37;
          v54 = 2112;
          v55 = uUID3;
          v56 = 2112;
          v57 = v23;
          v58 = 2112;
          optionsCopy = v26;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove item at URL %@:%@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v34);
      }

      v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{52, v41}];
      (*(completionCopy + 2))(completionCopy, 0, 0, v39);
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(completionCopy + 2))(completionCopy, 0, 0, v26);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __147__HMDHomeWalletKeyManager_createPassDirectoryWithWalletKey_options_shouldSkipResourceFiles_shouldCreateZipArchive_validateNFCInfo_flow_completion___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = [WeakRetained workQueue];
  dispatch_assert_queue_V2(v5);

  if (!v3)
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v6 = *(*(a1 + 56) + 16);
      goto LABEL_8;
    }

    v7 = [*(a1 + 32) URLByAppendingPathExtension:@"pkpass"];
    v8 = [WeakRetained fileManager];
    v9 = *(a1 + 32);
    v39 = 0;
    v10 = [v8 zipItemAtURL:v9 toURL:v7 error:&v39];
    v11 = v39;

    v12 = [WeakRetained fileManager];
    v13 = *(a1 + 32);
    v38 = 0;
    v14 = [v12 removeItemAtURL:v13 error:&v38];
    v15 = v38;

    if (v14)
    {
      if (v10)
      {
        v16 = *(a1 + 40);
        (*(*(a1 + 56) + 16))();
LABEL_17:

        goto LABEL_9;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = WeakRetained;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v30 = v37 = v27;
        [*(a1 + 48) UUID];
        v32 = v31 = v11;
        v33 = *(a1 + 32);
        *buf = 138544130;
        v41 = v30;
        v42 = 2112;
        v43 = v32;
        v44 = 2112;
        v45 = v33;
        v46 = 2112;
        v47 = v31;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create the zip file at URL %@:%@", buf, 0x2Au);

        v11 = v31;
        v27 = v37;
      }

      v26 = v27;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = WeakRetained;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v23 = v36 = v11;
        v24 = [*(a1 + 48) UUID];
        v25 = *(a1 + 32);
        *buf = 138544130;
        v41 = v23;
        v42 = 2112;
        v43 = v24;
        v44 = 2112;
        v45 = v25;
        v46 = 2112;
        v47 = v15;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove item at URL %@:%@", buf, 0x2Au);

        v11 = v36;
      }

      v26 = v20;
    }

    objc_autoreleasePoolPop(v26);
    v34 = *(a1 + 56);
    v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v34 + 16))(v34, 0, 0, v35);

    goto LABEL_17;
  }

  v6 = *(*(a1 + 56) + 16);
LABEL_8:
  v6();
LABEL_9:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)createPassDirectoryWithoutResourceFilesWithFlow:(id)flow
{
  v58 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v51 = v9;
    v52 = 2112;
    v53 = uUID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating pass directory without resources files", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourceURL = [v11 resourceURL];

  v13 = [resourceURL URLByAppendingPathComponent:@"HomeKey-Wallet.pass"];
  passLibrary = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
  createTemporaryPassDirectoryURL = [passLibrary createTemporaryPassDirectoryURL];

  fileManager = [(HMDHomeWalletKeyManager *)selfCopy fileManager];
  v49 = 0;
  v17 = [fileManager createDirectoryAtURL:createTemporaryPassDirectoryURL withIntermediateDirectories:0 attributes:0 error:&v49];
  v18 = v49;

  if (v17)
  {
    v46 = flowCopy;
    v19 = [v13 URLByAppendingPathComponent:@"pass.json"];
    v20 = [createTemporaryPassDirectoryURL URLByAppendingPathComponent:@"pass.json"];
    fileManager2 = [(HMDHomeWalletKeyManager *)selfCopy fileManager];
    v48 = v18;
    v22 = [fileManager2 copyItemAtURL:v19 toURL:v20 error:&v48];
    v23 = v48;

    if (v22)
    {
      v18 = v23;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v33 = v44 = v30;
        uUID2 = [v46 UUID];
        *buf = 138544130;
        v51 = v33;
        v52 = 2112;
        v53 = uUID2;
        v54 = 2112;
        v55 = createTemporaryPassDirectoryURL;
        v56 = 2112;
        v57 = v23;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create directory at path %@:%@", buf, 0x2Au);

        v30 = v44;
      }

      objc_autoreleasePoolPop(v30);
      fileManager3 = [(HMDHomeWalletKeyManager *)v31 fileManager];
      v47 = v23;
      v36 = [fileManager3 removeItemAtURL:createTemporaryPassDirectoryURL error:&v47];
      v18 = v47;

      if ((v36 & 1) == 0)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v31;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v40 = v45 = v37;
          uUID3 = [v46 UUID];
          *buf = 138544130;
          v51 = v40;
          v52 = 2112;
          v53 = uUID3;
          v54 = 2112;
          v55 = createTemporaryPassDirectoryURL;
          v56 = 2112;
          v57 = v18;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove item at URL %@:%@", buf, 0x2Au);

          v37 = v45;
        }

        objc_autoreleasePoolPop(v37);
      }
    }

    flowCopy = v46;
    v29 = createTemporaryPassDirectoryURL;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      uUID4 = [flowCopy UUID];
      *buf = 138544130;
      v51 = v27;
      v52 = 2112;
      v53 = uUID4;
      v54 = 2112;
      v55 = createTemporaryPassDirectoryURL;
      v56 = 2112;
      v57 = v18;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create directory at path %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    v29 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)createPassDirectoryWithResourceFilesWithFlow:(id)flow
{
  v38 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = uUID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating pass directory with resources files", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourceURL = [v11 resourceURL];

  v13 = [resourceURL URLByAppendingPathComponent:@"HomeKey-Wallet.pass"];
  passLibrary = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
  createTemporaryPassDirectoryURL = [passLibrary createTemporaryPassDirectoryURL];

  fileManager = [(HMDHomeWalletKeyManager *)selfCopy fileManager];
  v27 = 0;
  v17 = [fileManager copyItemAtURL:v13 toURL:createTemporaryPassDirectoryURL error:&v27];
  v18 = v27;

  if (v17)
  {
    v19 = createTemporaryPassDirectoryURL;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138544386;
      v29 = v23;
      v30 = 2112;
      v31 = uUID2;
      v32 = 2112;
      v33 = v13;
      v34 = 2112;
      v35 = createTemporaryPassDirectoryURL;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to copy item at URL %@ to %@ : %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)addISOCredentialV1WithPassAtURL:(id)l nfcInfo:(id)info flow:(id)flow completion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  completionCopy[2](completionCopy, 0);
}

- (void)addISOCredentialV0WithPassAtURL:(id)l nfcInfo:(id)info flow:(id)flow completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  lCopy = l;
  infoCopy = info;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  deviceCredentialKey = [infoCopy deviceCredentialKey];
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (deviceCredentialKey)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v46 = v20;
      v47 = 2112;
      v48 = uUID;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating iso credential...", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    keychainStore = [(HMDHomeWalletKeyManager *)selfCopy keychainStore];
    v44 = 0;
    v23 = [keychainStore getLocalPairingIdentity:&v44];
    v24 = v44;

    if (v23)
    {
      [(HMDHomeWalletKeyManager *)selfCopy isoCredentialFactory];
      v26 = v25 = lCopy;
      dictionary = (v26)[2](v26, v23, deviceCredentialKey);

      lCopy = v25;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __83__HMDHomeWalletKeyManager_addISOCredentialV0WithPassAtURL_nfcInfo_flow_completion___block_invoke;
      v39[3] = &unk_279724E58;
      v39[4] = selfCopy;
      v40 = flowCopy;
      v43 = completionCopy;
      v41 = infoCopy;
      v42 = v25;
      [dictionary encodeWithCompletion:v39];
    }

    else
    {
      v38 = lCopy;
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        [flowCopy UUID];
        v34 = v37 = v30;
        *buf = 138543874;
        v46 = v33;
        v47 = 2112;
        v48 = v34;
        v49 = 2112;
        v50 = v24;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to get local pairing identity %@", buf, 0x20u);

        v30 = v37;
      }

      objc_autoreleasePoolPop(v30);
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:v24 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 userInfo:dictionary];
      (*(completionCopy + 2))(completionCopy, v35);

      lCopy = v38;
    }
  }

  else
  {
    if (v19)
    {
      v28 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v46 = v28;
      v47 = 2112;
      v48 = uUID2;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not adding ISO credential because there is no device credential key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    (*(completionCopy + 2))(completionCopy, 0);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __83__HMDHomeWalletKeyManager_addISOCredentialV0WithPassAtURL_nfcInfo_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDHomeWalletKeyManager_addISOCredentialV0WithPassAtURL_nfcInfo_flow_completion___block_invoke_2;
  block[3] = &unk_279733820;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v19 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void __83__HMDHomeWalletKeyManager_addISOCredentialV0WithPassAtURL_nfcInfo_flow_completion___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [*(a1 + 64) subCredentialIdentifier];
    v4 = [v2 stringWithFormat:@"ISO18013-%@", v3];

    v5 = [*(a1 + 72) URLByAppendingPathComponent:v4];
    v6 = [*(a1 + 40) fileManager];
    v7 = *(a1 + 32);
    v29 = 0;
    v8 = [v6 writeData:v7 toURL:v5 options:0 error:&v29];
    v9 = v29;

    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 48) UUID];
        *buf = 138543618;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully created UA iso credential", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      (*(*(a1 + 80) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [*(a1 + 48) UUID];
        *buf = 138544130;
        v31 = v23;
        v32 = 2112;
        v33 = v24;
        v34 = 2112;
        v35 = v5;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to write UA ISO credential to file at url %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      v25 = [MEMORY[0x277CBEB38] dictionary];
      [v25 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v26 = *(a1 + 80);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 userInfo:v25];
      (*(v26 + 16))(v26, v27);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 48) UUID];
      v21 = *(a1 + 56);
      *buf = 138543874;
      v31 = v19;
      v32 = 2112;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create encoded UA ISO credential %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = *(a1 + 56);
    (*(*(a1 + 80) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)addISOCredentialWithPassAtURL:(id)l walletKey:(id)key flow:(id)flow completion:(id)completion
{
  lCopy = l;
  flowCopy = flow;
  completionCopy = completion;
  nfcInfos = [key nfcInfos];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __83__HMDHomeWalletKeyManager_addISOCredentialWithPassAtURL_walletKey_flow_completion___block_invoke;
  v26[3] = &unk_279724E08;
  v26[4] = self;
  v27 = lCopy;
  v28 = flowCopy;
  v14 = flowCopy;
  v15 = lCopy;
  v16 = [nfcInfos na_map:v26];
  combineAllFutures = [v16 combineAllFutures];
  v18 = MEMORY[0x277D2C938];
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  v20 = [v18 schedulerWithDispatchQueue:workQueue];
  v21 = [combineAllFutures reschedule:v20];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __83__HMDHomeWalletKeyManager_addISOCredentialWithPassAtURL_walletKey_flow_completion___block_invoke_2;
  v24[3] = &unk_279724E30;
  v25 = completionCopy;
  v22 = completionCopy;
  v23 = [v21 addCompletionBlock:v24];
}

id __83__HMDHomeWalletKeyManager_addISOCredentialWithPassAtURL_walletKey_flow_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 paymentCredentialType];
  if (v5 == 1)
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v9 = [v4 errorOnlyCompletionHandlerAdapter];
    [v10 addISOCredentialV1WithPassAtURL:v11 nfcInfo:v3 flow:v12 completion:v9];
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];
    v9 = [v4 errorOnlyCompletionHandlerAdapter];
    [v6 addISOCredentialV0WithPassAtURL:v7 nfcInfo:v3 flow:v8 completion:v9];
  }

LABEL_6:

  return v4;
}

- (void)handlePendingWalletKeyUpdateOperationsWithFlow:(id)flow
{
  v76 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(HMDHomeWalletKeyManager *)self isWalletKeyUpdateOperationInProgress])
  {
    pendingUpdateWalletKeyOperations = [(HMDHomeWalletKeyManager *)self pendingUpdateWalletKeyOperations];
    hmf_isEmpty = [pendingUpdateWalletKeyOperations hmf_isEmpty];

    if ((hmf_isEmpty & 1) == 0)
    {
      pendingUpdateWalletKeyOperations2 = [(HMDHomeWalletKeyManager *)self pendingUpdateWalletKeyOperations];
      v9 = [pendingUpdateWalletKeyOperations2 copy];

      pendingUpdateWalletKeyOperations3 = [(HMDHomeWalletKeyManager *)self pendingUpdateWalletKeyOperations];
      [pendingUpdateWalletKeyOperations3 removeAllObjects];

      passSerialNumber = [(HMDHomeWalletKeyManager *)self passSerialNumber];
      passLibrary = [(HMDHomeWalletKeyManager *)self passLibrary];
      passSerialNumber2 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
      v14 = [passLibrary walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber2 flow:flowCopy];

      if (!v14)
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          uUID = [flowCopy UUID];
          *buf = 138543874;
          v68 = v18;
          v69 = 2112;
          v70 = uUID;
          v71 = 2112;
          v72 = passSerialNumber;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping wallet key update since key with serial number does not exist: %@", buf, 0x20u);
          goto LABEL_9;
        }

LABEL_10:

        objc_autoreleasePoolPop(v15);
LABEL_41:

        goto LABEL_42;
      }

      if ([v14 isMissingNFCInfo])
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          uUID = [flowCopy UUID];
          nfcInfos = [v14 nfcInfos];
          *buf = 138543874;
          v68 = v18;
          v69 = 2112;
          v70 = uUID;
          v71 = 2112;
          v72 = nfcInfos;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Can't update wallet key because we are missing NFC info for the current wallet key. NFCInfo: %@", buf, 0x20u);

LABEL_9:
          goto LABEL_10;
        }

        goto LABEL_10;
      }

      v55 = v14;
      v56 = passSerialNumber;
      v21 = v14;
      v66 = 0;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v57 = v9;
      v22 = v9;
      v23 = [v22 countByEnumeratingWithState:&v62 objects:v75 count:16];
      v54 = v21;
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = *v63;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v63 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v62 + 1) + 8 * i);
            buf[0] = 0;
            v29 = (*(v28 + 16))();
            v30 = v29;
            if (v66)
            {

              goto LABEL_24;
            }

            if (v29)
            {
              v25 |= buf[0];
              v31 = v29;

              v21 = v31;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v62 objects:v75 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v25 = 0;
      }

LABEL_24:

      if (v66 != 1)
      {
        isMissingNFCInfo = [v21 isMissingNFCInfo];
        v44 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v46 = HMFGetOSLogHandle();
        v47 = v46;
        if (isMissingNFCInfo)
        {
          v9 = v57;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v48 = HMFGetLogIdentifier();
            uUID2 = [flowCopy UUID];
            nfcInfos2 = [v21 nfcInfos];
            *buf = 138543874;
            v68 = v48;
            v69 = 2112;
            v70 = uUID2;
            v71 = 2112;
            v72 = nfcInfos2;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update wallet key because we have lost NFC info: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v44);
        }

        else
        {
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v51 = HMFGetLogIdentifier();
            uUID3 = [flowCopy UUID];
            *buf = 138544130;
            v68 = v51;
            v69 = 2112;
            v70 = uUID3;
            v71 = 2112;
            v72 = v54;
            v73 = 2112;
            v74 = v21;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating home key in Wallet from %@ to %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v44);
          [(HMDHomeWalletKeyManager *)selfCopy3 setIsWalletKeyUpdateOperationInProgress:1];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke;
          v58[3] = &unk_279724DE0;
          v58[4] = selfCopy3;
          v59 = flowCopy;
          v61 = v25 & 1;
          v60 = v21;
          [(HMDHomeWalletKeyManager *)selfCopy3 createPassDirectoryWithWalletKey:v60 options:0 shouldSkipResourceFiles:0 shouldCreateZipArchive:1 validateNFCInfo:1 flow:v59 completion:v58];

          v9 = v57;
        }

        passSerialNumber = v56;
        goto LABEL_40;
      }

      passLibrary2 = [(HMDHomeWalletKeyManager *)self passLibrary];
      passSerialNumber = v56;
      v33 = [passLibrary2 removePassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v56 flow:flowCopy];

      v34 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v36 = HMFGetOSLogHandle();
      v37 = v36;
      if (v33)
      {
        v9 = v57;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          *buf = 138543618;
          v68 = v38;
          v69 = 2112;
          v70 = uUID4;
          v40 = "%{public}@[Flow: %@] Successfully removed home key fom wallet";
          v41 = v37;
          v42 = OS_LOG_TYPE_INFO;
LABEL_34:
          _os_log_impl(&dword_2531F8000, v41, v42, v40, buf, 0x16u);
        }
      }

      else
      {
        v9 = v57;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          *buf = 138543618;
          v68 = v38;
          v69 = 2112;
          v70 = uUID4;
          v40 = "%{public}@[Flow: %@] Failed to remove home key from wallet";
          v41 = v37;
          v42 = OS_LOG_TYPE_ERROR;
          goto LABEL_34;
        }
      }

      objc_autoreleasePoolPop(v34);
LABEL_40:

      v14 = v55;
      goto LABEL_41;
    }
  }

LABEL_42:

  v53 = *MEMORY[0x277D85DE8];
}

void __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v10);

  if (v7)
  {
    objc_initWeak(&location, *(a1 + 32));
    v11 = [*(a1 + 32) passLibrary];
    v12 = *(a1 + 40);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_339;
    v28[3] = &unk_27972DBF0;
    objc_copyWeak(&v33, &location);
    v29 = v9;
    v30 = *(a1 + 40);
    v34 = *(a1 + 56);
    v31 = *(a1 + 48);
    v32 = v8;
    [v11 updatePassAtURL:v7 flow:v12 completion:v28];

    v13 = [*(a1 + 32) fileManager];
    v27 = 0;
    v14 = [v13 removeItemAtURL:v7 error:&v27];
    v15 = v27;

    if ((v14 & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 40) UUID];
        *buf = 138544130;
        v37 = v19;
        v38 = 2112;
        v39 = v20;
        v40 = 2112;
        v41 = v7;
        v42 = 2112;
        v43 = v15;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove file at URL %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
    }

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
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
      *buf = 138543874;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      v40 = 2112;
      v41 = v9;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create zipped pass: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    [*(a1 + 32) setIsWalletKeyUpdateOperationInProgress:0];
    [*(a1 + 32) handlePendingWalletKeyUpdateOperationsWithFlow:*(a1 + 40)];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_339(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = *(a1 + 32);
  v6 = objc_autoreleasePoolPush();
  v7 = WeakRetained;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      *buf = 138543874;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update home key in Wallet :%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if (v7)
    {
LABEL_5:
      v12 = [v7 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_2;
      block[3] = &unk_2797359B0;
      block[4] = v7;
      v19 = *(a1 + 40);
      dispatch_async(v12, block);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated home key in Wallet", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (*(a1 + 72) == 1)
    {
      v16 = [v7 workQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_340;
      v20[3] = &unk_279734960;
      v21 = *(a1 + 48);
      v22 = v7;
      v23 = *(a1 + 40);
      dispatch_async(v16, v20);
    }

    v17 = +[HMDHomeKeyDataRecorder sharedRecorder];
    [v17 recordUpdatedWalletKey:*(a1 + 48) passJSONDict:*(a1 + 56)];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_340(uint64_t a1)
{
  v2 = [*(a1 + 32) nfcInfos];
  v3 = [v2 firstObject];
  v4 = [v3 deviceCredentialKey];
  v5 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:v4];

  [*(a1 + 40) syncDeviceCredentialKey:v5 ofType:0 flow:*(a1 + 48)];
}

uint64_t __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsWalletKeyUpdateOperationInProgress:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 handlePendingWalletKeyUpdateOperationsWithFlow:v3];
}

- (void)enqueueWalletKeyUpdateOperation:(id)operation flow:(id)flow
{
  v22 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingUpdateWalletKeyOperations = [(HMDHomeWalletKeyManager *)self pendingUpdateWalletKeyOperations];
  v10 = _Block_copy(operationCopy);
  [pendingUpdateWalletKeyOperations addObject:v10];

  if ([(HMDHomeWalletKeyManager *)self isWalletKeyUpdateOperationInProgress]|| ([(HMDHomeWalletKeyManager *)self addWalletKeyFuture], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = uUID;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wallet key update operation in progress, update will happen later", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    [(HMDHomeWalletKeyManager *)self handlePendingWalletKeyUpdateOperationsWithFlow:flowCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)syncDeviceCredentialKey:(id)key ofType:(int64_t)type flow:(id)flow
{
  v35 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    uUID2 = [flowCopy UUID];
    *buf = 138543874;
    v30 = v15;
    v31 = 2112;
    v32 = uUID;
    v33 = 2112;
    v34 = uUID2;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Syncing device credential key", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  nfcReaderKeyManager = [home nfcReaderKeyManager];
  accessoryManager = [nfcReaderKeyManager accessoryManager];

  if (accessoryManager)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__HMDHomeWalletKeyManager_syncDeviceCredentialKey_ofType_flow___block_invoke;
    v27[3] = &unk_2797358C8;
    v27[4] = selfCopy;
    v28 = internalOnlyInitializer;
    [accessoryManager configureAllAccessoriesWithDeviceCredentialKey:keyCopy ofType:type flow:v28 completion:v27];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      uUID3 = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = uUID3;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No accessory manager found to sync device credential key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __63__HMDHomeWalletKeyManager_syncDeviceCredentialKey_ofType_flow___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) UUID];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      v10 = "%{public}@[Flow: %@] Failed to configure accessory with device credential key: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) UUID];
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v10 = "%{public}@[Flow: %@] Successfully configured accessory with device credential key";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeWalletKeyOnboardingBulletin
{
  v15 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHomeWalletKeyManager *)self dataSource];
  isWatch = [dataSource isWatch];

  if ((isWatch & 1) == 0)
  {
    home = [(HMDHomeWalletKeyManager *)self home];
    v6 = home;
    if (home)
    {
      if ([home hasPostedWalletKeyOnboardingBulletinForAnyAccessory])
      {
        bulletinBoard = [(HMDHomeWalletKeyManager *)self bulletinBoard];
        [bulletinBoard removeWalletKeyOnboardingBulletinForHome:v6];
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Can not remove wallet key onboarding bulletin because home is nil", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)createExpressModeSetUpBulletin
{
  v18 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDHomeWalletKeyManager *)self dataSource];
  isWatch = [dataSource isWatch];

  if (isWatch)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Not creating express mode setup bulletin on this device", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    home = [(HMDHomeWalletKeyManager *)self home];
    if (home)
    {
      bulletinBoard = [(HMDHomeWalletKeyManager *)self bulletinBoard];
      [bulletinBoard insertWalletKeyExpressModeSetUpBulletinForHome:home];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Can not create express mode setup bulletin because home is nil", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enableExpressWithOptions:(int64_t)options flow:(id)flow completion:(id)completion
{
  optionsCopy = options;
  v26 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  v10 = completionCopy;
  if ((optionsCopy & 2) != 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      uUID = [flowCopy UUID];
      *buf = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = uUID;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Enabling express after adding home key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    passLibrary = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
    passSerialNumber = [(HMDHomeWalletKeyManager *)selfCopy passSerialNumber];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__HMDHomeWalletKeyManager_enableExpressWithOptions_flow_completion___block_invoke;
    v19[3] = &unk_279735168;
    v19[4] = selfCopy;
    v20 = flowCopy;
    v21 = v10;
    [passLibrary enableExpressWithAuthData:0 passTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber flow:v20 completion:v19];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __68__HMDHomeWalletKeyManager_enableExpressWithOptions_flow_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) UUID];
      v18 = 138543874;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      v10 = "%{public}@[Flow: %@] Failed to enable express for home key: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v18, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 40) UUID];
    v18 = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v10 = "%{public}@[Flow: %@] Successfully enabled express for home key";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v14, v15, v16);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addWalletKey:(id)key withOptions:(int64_t)options assertion:(id)assertion flow:(id)flow
{
  v37 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  assertionCopy = assertion;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v19 = HMHomeAddWalletKeyOptionsDescription();
    *buf = 138544130;
    v30 = v17;
    v31 = 2112;
    v32 = uUID;
    v33 = 2112;
    v34 = keyCopy;
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding wallet key: %@ with options: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke;
  v24[3] = &unk_279724DB8;
  v24[4] = selfCopy;
  v25 = flowCopy;
  v26 = assertionCopy;
  v27 = keyCopy;
  optionsCopy = options;
  v20 = keyCopy;
  v21 = assertionCopy;
  v22 = flowCopy;
  [(HMDHomeWalletKeyManager *)selfCopy createPassDirectoryWithWalletKey:v20 options:options shouldSkipResourceFiles:0 shouldCreateZipArchive:1 validateNFCInfo:1 flow:v22 completion:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v10);

  if (v7)
  {
    objc_initWeak(&location, *(a1 + 32));
    v11 = [*(a1 + 32) passLibrary];
    v12 = *(a1 + 40);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_335;
    v35[3] = &unk_279724D90;
    objc_copyWeak(v42, &location);
    v36 = *(a1 + 40);
    v37 = *(a1 + 48);
    v38 = v9;
    v13 = v7;
    v39 = v13;
    v40 = *(a1 + 56);
    v14 = v8;
    v15 = *(a1 + 64);
    v41 = v14;
    v42[1] = v15;
    [v11 addPassAtURL:v13 flow:v12 completion:v35];

    v16 = [*(a1 + 32) fileManager];
    v34 = 0;
    v17 = [v16 removeItemAtURL:v13 error:&v34];
    v18 = v34;

    if ((v17 & 1) == 0)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v33 = v19;
        v22 = HMFGetLogIdentifier();
        v23 = [*(a1 + 40) UUID];
        *buf = 138544130;
        v45 = v22;
        v46 = 2112;
        v47 = v23;
        v48 = 2112;
        v49 = v13;
        v50 = 2112;
        v51 = v18;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove file at URL %@:%@", buf, 0x2Au);

        v19 = v33;
      }

      objc_autoreleasePoolPop(v19);
    }

    v24 = [*(a1 + 32) logEvent];
    [v24 submitSuccess];

    objc_destroyWeak(v42);
    objc_destroyWeak(&location);
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v29 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v45 = v28;
      v46 = 2112;
      v47 = v29;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create zipped pass", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    [*(a1 + 48) invalidate];
    v30 = [*(a1 + 32) addWalletKeyFuture];
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v30 finishWithError:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_335(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (!*(a1 + 48))
    {
      v11 = +[HMDHomeKeyDataRecorder sharedRecorder];
      [v11 recordAddedWalletKey:*(a1 + 64) passJSONDict:*(a1 + 72)];
      v19 = *(a1 + 88);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_337;
      v22[3] = &unk_279734870;
      v20 = *(a1 + 32);
      v23 = *(a1 + 40);
      v24 = WeakRetained;
      v25 = *(a1 + 64);
      v26 = *(a1 + 32);
      [WeakRetained enableExpressWithOptions:v19 flow:v20 completion:v22];

      v18 = v23;
      goto LABEL_11;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) UUID];
      v10 = *(a1 + 56);
      *buf = 138544130;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to add home key in wallet at URL %@:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 40) invalidate];
    v11 = [v6 addWalletKeyFuture];
    v12 = MEMORY[0x277CCA9B8];
    v13 = -1;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [*(a1 + 32) UUID];
      *buf = 138543618;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to add home key in wallet at URL, object got invalidated", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [*(a1 + 40) invalidate];
    v11 = [0 addWalletKeyFuture];
    v12 = MEMORY[0x277CCA9B8];
    v13 = 23;
  }

  v18 = [v12 hmErrorWithCode:v13];
  [v11 finishWithError:v18];
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
}

void __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_337(id *a1)
{
  [a1[4] invalidate];
  v2 = [a1[5] addWalletKeyFuture];
  [v2 finishWithResult:a1[6]];

  v3 = [a1[5] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_2;
  block[3] = &unk_279734960;
  v4 = a1[6];
  v5 = a1[5];
  v7 = v4;
  v8 = v5;
  v9 = a1[7];
  dispatch_async(v3, block);
}

void __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) nfcInfos];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_3;
  v4[3] = &unk_279724D68;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  [v2 na_each:v4];
}

void __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 paymentCredentialType];
  if (v3 == 1)
  {
    v10 = *(a1 + 32);
    v5 = [v11 deviceCredentialKey];
    v7 = *(a1 + 40);
    v6 = v10;
    v8 = v5;
    v9 = 1;
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = [v11 deviceCredentialKey];
    v5 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:v4];

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v5;
    v9 = 0;
  }

  [v6 syncDeviceCredentialKey:v8 ofType:v9 flow:v7];

LABEL_6:
}

- (void)configureWalletPaymentApplicationsWithNFCReaderKey:(id)key serialNumber:(id)number homeUniqueIdentifier:(id)identifier homeGRK:(id)k flow:(id)flow completion:(id)completion
{
  completionCopy = completion;
  flowCopy = flow;
  keyCopy = key;
  passLibrary = [(HMDHomeWalletKeyManager *)self passLibrary];
  publicKeyExternalRepresentation = [keyCopy publicKeyExternalRepresentation];
  identifier = [keyCopy identifier];

  [passLibrary generateHomeKeyNFCInfoWithReaderPublicKey:publicKeyExternalRepresentation readerIdentifier:identifier flow:flowCopy completion:completionCopy];
}

- (void)addWalletKeyWithOptions:(int64_t)options nfcReaderKey:(id)key flow:(id)flow completion:(id)completion
{
  v82 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138544130;
    v75 = v14;
    v76 = 2112;
    v77 = uUID;
    v78 = 2048;
    optionsCopy = options;
    v80 = 2112;
    v81 = keyCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding wallet key with options: %ld, readerKey: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  v17 = home;
  if (home)
  {
    name = [home name];
    if (name)
    {
      passSerialNumber = [(HMDHomeWalletKeyManager *)selfCopy passSerialNumber];
      if (passSerialNumber)
      {
        addWalletKeyFuture = [(HMDHomeWalletKeyManager *)selfCopy addWalletKeyFuture];

        if (!addWalletKeyFuture)
        {
          v20 = objc_alloc_init(MEMORY[0x277D2C900]);
          [(HMDHomeWalletKeyManager *)selfCopy setAddWalletKeyFuture:v20];
        }

        addWalletKeyFuture2 = [(HMDHomeWalletKeyManager *)selfCopy addWalletKeyFuture];
        objc_initWeak(&location, selfCopy);
        addWalletKeyFuture3 = [(HMDHomeWalletKeyManager *)selfCopy addWalletKeyFuture];
        v23 = MEMORY[0x277D2C938];
        workQueue2 = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
        v25 = [v23 schedulerWithDispatchQueue:workQueue2];
        v26 = [addWalletKeyFuture3 reschedule:v25];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke;
        v68[3] = &unk_279724CA0;
        objc_copyWeak(&v72, &location);
        v54 = flowCopy;
        v69 = v54;
        v71 = completionCopy;
        v27 = addWalletKeyFuture2;
        v70 = v27;
        v28 = [v26 addCompletionBlock:v68];

        v29 = v27;
        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        if (addWalletKeyFuture)
        {
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            uUID2 = [v54 UUID];
            *buf = 138543618;
            v75 = v33;
            v76 = 2112;
            v77 = uUID2;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Add wallet key is already in progress", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
        }

        else
        {
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v51 = HMFGetLogIdentifier();
            uUID3 = [v54 UUID];
            *buf = 138543618;
            v75 = v51;
            v76 = 2112;
            v77 = uUID3;
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching home key supported", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_326;
          v60[3] = &unk_279724D40;
          v60[4] = v31;
          v61 = v54;
          v62 = keyCopy;
          v63 = passSerialNumber;
          v64 = v17;
          v65 = 0;
          v66 = name;
          optionsCopy2 = options;
          [(HMDHomeWalletKeyManager *)v31 fetchHomeKeySupportedWithFlow:v61 completion:v60];
        }

        objc_destroyWeak(&v72);
        objc_destroyWeak(&location);
      }

      else
      {
        v45 = objc_autoreleasePoolPush();
        v46 = selfCopy;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          uUID4 = [flowCopy UUID];
          *buf = 138543618;
          v75 = v48;
          v76 = 2112;
          v77 = uUID4;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, serial number is nil", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v45);
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (*(completionCopy + 2))(completionCopy, 0, v29);
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = selfCopy;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        uUID5 = [flowCopy UUID];
        *buf = 138543618;
        v75 = v43;
        v76 = 2112;
        v77 = uUID5;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, no name configured for home", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v57 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, 0, v57);
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      uUID6 = [flowCopy UUID];
      *buf = 138543618;
      v75 = v38;
      v76 = 2112;
      v77 = uUID6;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    name = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, name);
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained addWalletKeyFuture];
    v10 = *(a1 + 40);

    if (v9 == v10)
    {
      [v8 setAddWalletKeyFuture:0];
      (*(*(a1 + 48) + 16))();
      [v8 handlePendingWalletKeyUpdateOperationsWithFlow:*(a1 + 32)];
    }

    else
    {
      v11 = *(a1 + 48);
      if (v5)
      {
        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
        (*(v11 + 16))(v11, v5, v12);
      }

      else
      {
        (*(v11 + 16))(v11, 0, v6);
      }
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 32) UUID];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Self became nil while waiting for add wallet key future to finish", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    (*(*(a1 + 48) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_326(uint64_t a1, char a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v32 = v10;
      v33 = 2112;
      v34 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Acquiring wallet provisioning assertion", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [*(a1 + 32) passLibrary];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_330;
    v24[3] = &unk_279724D18;
    v23 = *(a1 + 32);
    v13 = *(&v23 + 1);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    v25 = v23;
    v26 = v16;
    v27 = *(a1 + 64);
    v28 = *(a1 + 72);
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    v29 = v17;
    v30 = v18;
    [v12 acquireAssertionOfType:1 withReason:@"Adding Home Key" completion:v24];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) UUID];
      *buf = 138543874;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Adding home key in wallet is not supported: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v21 = [*(a1 + 32) addWalletKeyFuture];
    [v21 finishWithError:v5];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_330(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v13 = *(a1 + 48);
      *buf = 138543874;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generating home key nfc info with reader key: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = [*(a1 + 64) spiClientIdentifier];
    v18 = *(a1 + 72);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_331;
    v27[3] = &unk_279724CF0;
    v19 = *(a1 + 40);
    v27[4] = *(a1 + 32);
    v28 = v19;
    v29 = v5;
    v30 = *(a1 + 56);
    v20 = *(a1 + 80);
    v21 = *(a1 + 88);
    v31 = v20;
    v32 = v21;
    [v14 configureWalletPaymentApplicationsWithNFCReaderKey:v15 serialNumber:v16 homeUniqueIdentifier:v17 homeGRK:v18 flow:v28 completion:v27];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [*(a1 + 40) UUID];
      *buf = 138543874;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not add home key in wallet, failed to acquire assertion: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v24 = [*(a1 + 32) addWalletKeyFuture];
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v24 finishWithError:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_331(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      *buf = 138543874;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generated NFC info: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_332;
    block[3] = &unk_279728560;
    v25 = *(a1 + 32);
    v14 = *(&v25 + 1);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v27 = v25;
    v28 = v17;
    v18 = v5;
    v19 = *(a1 + 72);
    v29 = v18;
    v31 = v19;
    v30 = *(a1 + 48);
    dispatch_async(v13, block);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [*(a1 + 40) UUID];
      *buf = 138543874;
      v33 = v20;
      v34 = 2112;
      v35 = v21;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate nfc info for home key: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) invalidate];
    v22 = [*(a1 + 32) addWalletKeyFuture];
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v22 finishWithError:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_332(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchWalletKeyColorOptionWithFlow:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_2;
  v7[3] = &unk_279724CC8;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  v10 = v3;
  v13 = v4;
  v11 = v5;
  v12 = *(a1 + 40);
  v6 = [v2 addSuccessBlock:v7];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [HMDHomeWalletKey alloc];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = [v4 integerValue];

  v10 = [(HMDHomeWalletKey *)v6 initWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v7 state:1 walletKeyDescription:v8 homeName:v8 color:v9 nfcInfos:*(a1 + 56)];
  v11 = [*(a1 + 32) walletKeyByAddingAccessCodeToWalletKey:v10];

  [*(a1 + 32) addWalletKey:v11 withOptions:*(a1 + 80) assertion:*(a1 + 64) flow:*(a1 + 72)];
}

- (id)fetchWalletKeyColorOptionWithFlow:(id)flow
{
  v34 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543618;
    v31 = v9;
    v32 = 2112;
    v33 = uUID;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] fetchWalletKeyColorOption", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = objc_alloc_init(MEMORY[0x277D2C900]);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  nfcReaderKeyManager = [home nfcReaderKeyManager];
  accessoryManager = [nfcReaderKeyManager accessoryManager];

  if (accessoryManager)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__HMDHomeWalletKeyManager_fetchWalletKeyColorOptionWithFlow___block_invoke;
    v27[3] = &unk_2797307B8;
    v27[4] = selfCopy;
    v28 = flowCopy;
    v15 = v11;
    v29 = v15;
    [accessoryManager fetchWalletKeyColorWithFlow:v28 completion:v27];
    v16 = v29;
    dataSource = v15;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v31 = v21;
      v32 = 2112;
      v33 = uUID2;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No accessory manager found, using default wallet key color", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = MEMORY[0x277CCABB0];
    dataSource = [(HMDHomeWalletKeyManager *)v19 dataSource];
    v24 = [v23 numberWithInteger:{objc_msgSend(dataSource, "walletKeyColor")}];
    [v11 finishWithResult:v24];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

void __61__HMDHomeWalletKeyManager_fetchWalletKeyColorOptionWithFlow___block_invoke(id *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      [v5 integerValue];
      v14 = HMHomeWalletKeyColorAsString();
      v22 = 138543874;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully fetch wallet key color: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] UUID];
      v17 = [a1[4] dataSource];
      [v17 walletKeyColor];
      v18 = HMHomeWalletKeyColorAsString();
      v22 = 138544130;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to fetch wallet key color: %@, using default wallet key color: %@", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v19 = MEMORY[0x277CCABB0];
    v20 = [a1[4] dataSource];
    v5 = [v19 numberWithInteger:{objc_msgSend(v20, "walletKeyColor")}];
  }

  [a1[6] finishWithResult:v5];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)fetchWalletKeyColorOptionWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDHomeWalletKeyManager_fetchWalletKeyColorOptionWithFlow_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = flowCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = flowCopy;
  dispatch_async(workQueue, block);
}

void __72__HMDHomeWalletKeyManager_fetchWalletKeyColorOptionWithFlow_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchWalletKeyColorOptionWithFlow:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HMDHomeWalletKeyManager_fetchWalletKeyColorOptionWithFlow_completion___block_invoke_2;
  v4[3] = &unk_279734DD8;
  v5 = *(a1 + 48);
  v3 = [v2 addSuccessBlock:v4];
}

- (void)fetchOrCreateReaderKeyWithFlow:(id)flow completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    v29 = 138543618;
    v30 = v12;
    v31 = 2112;
    v32 = uUID;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetch or create reader key", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  v15 = home;
  if (!home)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      v29 = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = uUID2;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, home is nil", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    goto LABEL_12;
  }

  if (([home hasAnyAccessoryWithWalletKeySupport] & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      uUID3 = [flowCopy UUID];
      v29 = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = uUID3;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home doesn't have any accessory that supports wallet key", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 userInfo:0];
LABEL_12:
    nfcReaderKeyManager = v22;
    completionCopy[2](completionCopy, 0, v22);
    goto LABEL_13;
  }

  nfcReaderKeyManager = [v15 nfcReaderKeyManager];
  [nfcReaderKeyManager fetchOrCreateReaderKeyWithRequiresPrivateKey:0 flow:flowCopy completion:completionCopy];
LABEL_13:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)addWalletKeyWithOptions:(int64_t)options isOnboarding:(BOOL)onboarding flow:(id)flow completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    uUID = [flowCopy UUID];
    *buf = 138543874;
    v41 = v15;
    v42 = 2112;
    v43 = uUID;
    v44 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding wallet key with options: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  passSerialNumber = [(HMDHomeWalletKeyManager *)selfCopy passSerialNumber];
  if (passSerialNumber)
  {
    passLibrary = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
    v19 = [passLibrary walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber flow:flowCopy];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        uUID2 = [flowCopy UUID];
        *buf = 138543874;
        v41 = v23;
        v42 = 2112;
        v43 = uUID2;
        v44 = 2112;
        optionsCopy = v19;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Home Key already exists in Wallet: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
      completionCopy[2](completionCopy, v19, v25);
    }

    else
    {
      logEvent = [(HMDHomeWalletKeyManager *)selfCopy logEvent];

      if (!logEvent)
      {
        v32 = [HMDHomeKeySetupWalletLogEvent alloc];
        workQueue2 = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
        v34 = [(HMDHomeKeySetupWalletLogEvent *)v32 initWithQueue:workQueue2];
        [(HMDHomeWalletKeyManager *)selfCopy setLogEvent:v34];
      }

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_isOnboarding_flow_completion___block_invoke;
      v36[3] = &unk_279724C78;
      v36[4] = selfCopy;
      v37 = flowCopy;
      v38 = completionCopy;
      optionsCopy2 = options;
      [(HMDHomeWalletKeyManager *)selfCopy fetchOrCreateReaderKeyWithFlow:v37 completion:v36];

      v19 = 0;
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
      uUID3 = [flowCopy UUID];
      *buf = 138543874;
      v41 = v29;
      v42 = 2112;
      v43 = uUID3;
      v44 = 2112;
      optionsCopy = 0;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find passSerialNumber: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, 0, v19);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_isOnboarding_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    [*(a1 + 32) addWalletKeyWithOptions:*(a1 + 56) nfcReaderKey:v5 flow:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch or create reader key: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 48) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchPayloadForAddWalletKeyRemoteMessageWithFlow:(id)flow completion:(id)completion
{
  completionCopy = completion;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HMDHomeWalletKeyManager_fetchPayloadForAddWalletKeyRemoteMessageWithFlow_completion___block_invoke;
  v10[3] = &unk_279724C50;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [(HMDHomeWalletKeyManager *)self fetchOrCreateReaderKeyWithFlow:flowCopy completion:v10];
}

void __87__HMDHomeWalletKeyManager_fetchPayloadForAddWalletKeyRemoteMessageWithFlow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    v12 = 0;
    v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v12];
    v9 = v12;
    if (v8)
    {
      v13 = @"HMDHomeWalletKeyManagerRemoteMessageKeyNFCReaderKey";
      v14[0] = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendMessageWithName:(id)name payload:(id)payload toWatches:(id)watches completion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  payloadCopy = payload;
  watchesCopy = watches;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = dispatch_group_create();
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v55 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2810000000;
  v52[3] = "";
  v53 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__33507;
  v49[4] = __Block_byref_object_dispose__33508;
  v50 = 0;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = watchesCopy;
  v14 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v14)
  {
    v15 = *v46;
    do
    {
      v16 = 0;
      do
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v45 + 1) + 8 * v16);
        dispatch_group_enter(v13);
        v18 = [HMDRemoteDeviceMessageDestination alloc];
        uuid = [(HMDHomeWalletKeyManager *)self uuid];
        v20 = [(HMDRemoteDeviceMessageDestination *)v18 initWithTarget:uuid device:v17];

        v21 = [[HMDRemoteMessage alloc] initWithName:nameCopy qualityOfService:25 destination:v20 payload:payloadCopy type:0 timeout:1 secure:10.0];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __76__HMDHomeWalletKeyManager_sendMessageWithName_payload_toWatches_completion___block_invoke;
        v37[3] = &unk_279724C00;
        v37[4] = self;
        v37[5] = v17;
        v38 = nameCopy;
        v41 = v52;
        v42 = v54;
        v43 = v51;
        v44 = v49;
        v39 = strongToStrongObjectsMapTable;
        v40 = v13;
        [(HMDRemoteMessage *)v21 setResponseHandler:v37];
        messageDispatcher = [(HMDHomeWalletKeyManager *)self messageDispatcher];
        [messageDispatcher sendMessage:v21];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v14);
  }

  workQueue2 = [(HMDHomeWalletKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDHomeWalletKeyManager_sendMessageWithName_payload_toWatches_completion___block_invoke_320;
  block[3] = &unk_279724C28;
  v32 = strongToStrongObjectsMapTable;
  selfCopy = self;
  v34 = completionCopy;
  v35 = v51;
  v36 = v49;
  v24 = completionCopy;
  v25 = strongToStrongObjectsMapTable;
  dispatch_group_notify(v13, workQueue2, block);

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v54, 8);

  v26 = *MEMORY[0x277D85DE8];
}

void __76__HMDHomeWalletKeyManager_sendMessageWithName_payload_toWatches_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v27 = 138544130;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Watch: %@ failed to handle message %@:%@ ", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    v14 = (*(*(a1 + 72) + 8) + 32);
    os_unfair_lock_lock_with_options();
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      v15 = *(*(a1 + 88) + 8);
      v16 = 2008;
    }

    else
    {
      v25 = [v5 code];
      v15 = *(*(a1 + 88) + 8);
      if (v25 == 1)
      {
        if (*(v15 + 24) != 52)
        {
          *(*(*(a1 + 88) + 8) + 24) = [v5 code];
        }

        goto LABEL_18;
      }

      v16 = 52;
    }

    *(v15 + 24) = v16;
LABEL_18:
    [*(a1 + 56) setObject:v5 forKey:*(a1 + 40)];
    goto LABEL_19;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v27 = 138543874;
    v28 = v17;
    v29 = 2112;
    v30 = v18;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Watch: %@ successfully handled message %@", &v27, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v14 = (*(*(a1 + 72) + 8) + 32);
  os_unfair_lock_lock_with_options();
  *(*(*(a1 + 80) + 8) + 24) = 1;
  v20 = *(*(a1 + 88) + 8);
  if (*(v20 + 24))
  {
    *(v20 + 24) = 2008;
  }

  v21 = *(*(*(a1 + 96) + 8) + 40);
  if (!v21)
  {
    v22 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v23 = *(*(a1 + 96) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v21 = *(*(*(a1 + 96) + 8) + 40);
  }

  [v21 setObject:v6 forKey:*(a1 + 40)];
LABEL_19:
  os_unfair_lock_unlock(v14);
  dispatch_group_leave(*(a1 + 64));

  v26 = *MEMORY[0x277D85DE8];
}

void __76__HMDHomeWalletKeyManager_sendMessageWithName_payload_toWatches_completion___block_invoke_320(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    v3 = encodeRootObjectForIncomingXPCMessage(*(a1 + 32), 0);
    if (v3)
    {
      [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277CD06E0]];
    }

    else
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 40);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode error by device", &v11, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:*(*(*(a1 + 56) + 8) + 24) userInfo:v2];
  }

  else
  {
    v4 = 0;
  }

  v9 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateDeviceStateWithExpressEnablementConflictingPassDescription:(id)description flow:(id)flow completion:(id)completion
{
  descriptionCopy = description;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__HMDHomeWalletKeyManager_updateDeviceStateWithExpressEnablementConflictingPassDescription_flow_completion___block_invoke;
  v15[3] = &unk_279724BD8;
  v15[4] = self;
  v16 = flowCopy;
  v17 = descriptionCopy;
  v18 = completionCopy;
  v12 = descriptionCopy;
  v13 = completionCopy;
  v14 = flowCopy;
  [(HMDHomeWalletKeyManager *)self fetchExpressEnablementConflictingPassDescriptionWithFlow:v14 completion:v15];
}

void __108__HMDHomeWalletKeyManager_updateDeviceStateWithExpressEnablementConflictingPassDescription_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __108__HMDHomeWalletKeyManager_updateDeviceStateWithExpressEnablementConflictingPassDescription_flow_completion___block_invoke_2;
  v12[3] = &unk_279734848;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v9;
  v18 = *(a1 + 56);
  v16 = *(a1 + 48);
  v17 = v5;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __108__HMDHomeWalletKeyManager_updateDeviceStateWithExpressEnablementConflictingPassDescription_flow_completion___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && [v2 code] != 2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v11 = *(a1 + 32);
      *buf = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflicting pass description: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = *(a1 + 32);
    (*(*(a1 + 72) + 16))();
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = [*(a1 + 56) mutableCopy];
    [v14 setExpressEnablementConflictingPassDescription:*(a1 + 64)];
    v3 = *(a1 + 72);
    v4 = [v14 copy];
    (*(v3 + 16))(v3, v4, 0);

    v5 = *MEMORY[0x277D85DE8];
  }
}

- (void)updateDeviceStateWithWalletKey:(id)key flow:(id)flow completion:(id)completion
{
  keyCopy = key;
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  passSerialNumber = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  if (passSerialNumber)
  {
    passLibrary = [(HMDHomeWalletKeyManager *)self passLibrary];
    v14 = [passLibrary walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber flow:flowCopy];

    if (v14)
    {
      passLibrary2 = [(HMDHomeWalletKeyManager *)self passLibrary];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __74__HMDHomeWalletKeyManager_updateDeviceStateWithWalletKey_flow_completion___block_invoke;
      v16[3] = &unk_279724BB0;
      v16[4] = self;
      v17 = flowCopy;
      v20 = completionCopy;
      v18 = v14;
      v19 = keyCopy;
      [passLibrary2 fetchIsExpressEnabledForPassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber flow:v17 completion:v16];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, keyCopy, 0);
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, v14);
  }
}

void __74__HMDHomeWalletKeyManager_updateDeviceStateWithWalletKey_flow_completion___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDHomeWalletKeyManager_updateDeviceStateWithWalletKey_flow_completion___block_invoke_2;
  block[3] = &unk_2797325D0;
  v14 = v5;
  v12 = *(a1 + 2);
  v7 = *(&v12 + 1);
  v17 = a1[8];
  v8 = a1[6];
  v18 = a2;
  v9 = a1[7];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v15 = v12;
  v16 = v10;
  v11 = v5;
  dispatch_async(v6, block);
}

void __74__HMDHomeWalletKeyManager_updateDeviceStateWithWalletKey_flow_completion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) UUID];
      v7 = *(a1 + 32);
      v23 = 138543874;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express setting of existing pass: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = *(a1 + 72);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    v10 = [*(a1 + 56) xpcWalletKeyWithExpressEnabled:*(a1 + 80)];
    if (v10)
    {
      v9 = v10;
      v11 = [*(a1 + 64) mutableCopy];
      [v11 setWalletKey:v9];
      v12 = *(a1 + 72);
      v13 = [v11 copy];
      (*(v12 + 16))(v12, v13, 0);
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 40);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [*(a1 + 48) UUID];
        v19 = *(a1 + 56);
        v23 = 138543874;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create xpc wallet key with wallet key: %@", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v20 = *(a1 + 72);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v20 + 16))(v20, 0, v21);

      v9 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)fetchHomeKeySupportedWithFlow:(id)flow completion:(id)completion
{
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  passLibrary = [(HMDHomeWalletKeyManager *)self passLibrary];
  isWalletVisible = [passLibrary isWalletVisible];

  if (isWalletVisible)
  {
    passLibrary2 = [(HMDHomeWalletKeyManager *)self passLibrary];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__HMDHomeWalletKeyManager_fetchHomeKeySupportedWithFlow_completion___block_invoke;
    v13[3] = &unk_279724B88;
    v13[4] = self;
    v14 = completionCopy;
    [passLibrary2 fetchHomeKeySupportedWithFlow:flowCopy completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD06D8] code:8 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

void __68__HMDHomeWalletKeyManager_fetchHomeKeySupportedWithFlow_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = a3;
    v7 = objc_opt_class();
    v8 = [v6 code];

    v4 = [v7 homekitErrorWithPassLibraryErrorCode:v8];
  }

  v9 = v4;
  (*(*(a1 + 40) + 16))();
}

- (void)updateDeviceStateWithCanAddWalletKey:(id)key flow:(id)flow completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HMDHomeWalletKeyManager_updateDeviceStateWithCanAddWalletKey_flow_completion___block_invoke;
  v14[3] = &unk_27972F8D8;
  v14[4] = self;
  v15 = keyCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = keyCopy;
  [(HMDHomeWalletKeyManager *)self fetchHomeKeySupportedWithFlow:flowCopy completion:v14];
}

void __80__HMDHomeWalletKeyManager_updateDeviceStateWithCanAddWalletKey_flow_completion___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HMDHomeWalletKeyManager_updateDeviceStateWithCanAddWalletKey_flow_completion___block_invoke_2;
  v9[3] = &unk_279732430;
  v7 = a1[5];
  v13 = a2;
  v10 = v7;
  v11 = v5;
  v12 = a1[6];
  v8 = v5;
  dispatch_async(v6, v9);
}

void __80__HMDHomeWalletKeyManager_updateDeviceStateWithCanAddWalletKey_flow_completion___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) mutableCopy];
  [v4 setCanAddWalletKey:*(a1 + 56)];
  if ((*(a1 + 56) & 1) == 0)
  {
    [v4 setCanAddWalletKeyErrorCode:{objc_msgSend(*(a1 + 40), "code")}];
  }

  v2 = *(a1 + 48);
  v3 = [v4 copy];
  (*(v2 + 16))(v2, v3);
}

- (void)fetchExpressEnablementConflictingPassDescriptionWithFlow:(id)flow completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  completionCopy = completion;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  passSerialNumber = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  if (passSerialNumber)
  {
    passLibrary = [(HMDHomeWalletKeyManager *)self passLibrary];
    secureElementIdentifier = [passLibrary secureElementIdentifier];

    if (secureElementIdentifier)
    {
      home = [(HMDHomeWalletKeyManager *)self home];
      name = [home name];

      v34 = [HMDHomeWalletKeySecureElementInfo createForExpressConflictCheckWithSecureElementIdentifier:secureElementIdentifier];
      v14 = [HMDHomeWalletKey alloc];
      dataSource = [(HMDHomeWalletKeyManager *)self dataSource];
      v16 = flowCopy;
      walletKeyColor = [dataSource walletKeyColor];
      v38 = v34;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v18 = completionCopy;
      v20 = v19 = passSerialNumber;
      v21 = walletKeyColor;
      flowCopy = v16;
      v22 = [(HMDHomeWalletKey *)v14 initWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v19 state:1 walletKeyDescription:name homeName:name color:v21 nfcInfos:v20];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __95__HMDHomeWalletKeyManager_fetchExpressEnablementConflictingPassDescriptionWithFlow_completion___block_invoke;
      v35[3] = &unk_279724B60;
      v35[4] = self;
      v36 = v16;
      v37 = v18;
      passSerialNumber = v19;
      completionCopy = v18;
      [(HMDHomeWalletKeyManager *)self createPassDirectoryWithWalletKey:v22 options:0 shouldSkipResourceFiles:1 shouldCreateZipArchive:0 validateNFCInfo:0 flow:v36 completion:v35];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        uUID = [flowCopy UUID];
        *buf = 138543618;
        v40 = v31;
        v41 = 2112;
        v42 = uUID;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express enablement conflicting pass description, secure element identifier is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      name = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(completionCopy + 2))(completionCopy, 0, name);
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      uUID2 = [flowCopy UUID];
      *buf = 138543618;
      v40 = v26;
      v41 = 2112;
      v42 = uUID2;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express enablement conflicting pass description, wallet key serial number is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    secureElementIdentifier = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(completionCopy + 2))(completionCopy, 0, secureElementIdentifier);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __95__HMDHomeWalletKeyManager_fetchExpressEnablementConflictingPassDescriptionWithFlow_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v10);

  if (v7)
  {
    v11 = [a1[4] passLibrary];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __95__HMDHomeWalletKeyManager_fetchExpressEnablementConflictingPassDescriptionWithFlow_completion___block_invoke_314;
    v20[3] = &unk_279724B38;
    v21 = a1[6];
    [v11 fetchExpressEnablementConflictingPassDescriptionForPassAtURL:v7 completion:v20];

    v12 = v21;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[4];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [a1[5] UUID];
      *buf = 138543874;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, pass creation failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = a1[6];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v18[2](v18, 0, v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)canAutoAddWalletKeyWithError:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  systemInfo = [(HMDHomeWalletKeyManager *)self systemInfo];
  isMigrating = [systemInfo isMigrating];

  if (!isMigrating)
  {
    home = [(HMDHomeWalletKeyManager *)self home];
    nfcReaderKey = [home nfcReaderKey];
    identifier = [nfcReaderKey identifier];
    hmf_hexadecimalRepresentation = [identifier hmf_hexadecimalRepresentation];

    if (hmf_hexadecimalRepresentation && (-[HMDHomeWalletKeyManager dataSource](self, "dataSource"), v12 = objc_claimAutoreleasedReturnValue(), [v12 numberValueFromNoBackupStoreWithKey:hmf_hexadecimalRepresentation], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13) || (objc_msgSend(home, "hasOnboardedForWalletKey") & 1) != 0)
    {
      if ([(HMDHomeWalletKeyManager *)self isHomeBeingRemoved])
      {
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDHomeAutoAddWalletKeyErrorDomain" code:4 userInfo:0];
        }

        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v20 = 138543362;
          v21 = v17;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Cannot auto add wallet key because home is currently being removed", &v20, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        goto LABEL_17;
      }

      v7 = 1;
    }

    else
    {
      if (!error)
      {
LABEL_17:
        v7 = 0;
        goto LABEL_18;
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDHomeAutoAddWalletKeyErrorDomain" code:2 userInfo:0];
      *error = v7 = 0;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDHomeAutoAddWalletKeyErrorDomain" code:1 userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)handleRestoreMissingWalletKeysMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling RestoreMissingWalletKeysMessage: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  nfcReaderKeyManager = [home nfcReaderKeyManager];
  accessoryManager = [nfcReaderKeyManager accessoryManager];
  messageTargetUUID = [accessoryManager messageTargetUUID];

  workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
  [home redispatchToResidentMessage:messageCopy target:messageTargetUUID responseQueue:workQueue];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchMissingWalletKeysMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling FetchMissingWalletKeysMessage: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  nfcReaderKeyManager = [home nfcReaderKeyManager];
  accessoryManager = [nfcReaderKeyManager accessoryManager];
  messageTargetUUID = [accessoryManager messageTargetUUID];

  workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
  [home redispatchToResidentMessage:messageCopy target:messageTargetUUID responseQueue:workQueue];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handlePersistWalletKeyAddOptionsRemoteMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543874;
    v26 = v9;
    v27 = 2112;
    v28 = messageCopy;
    v29 = 2112;
    v30 = messagePayload;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remote message to add wallet key: %@ payload: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v24 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v12 = [messageCopy unarchivedObjectForKey:@"HMDHomeWalletKeyManagerRemoteMessageKeyNFCReaderKey" ofClasses:v11];

  if (v12)
  {
    dataSource = [(HMDHomeWalletKeyManager *)selfCopy dataSource];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    identifier = [v12 identifier];
    hmf_hexadecimalRepresentation = [identifier hmf_hexadecimalRepresentation];
    [dataSource persistNumberValueToNoBackupStore:v14 withKey:hmf_hexadecimalRepresentation];

    [messageCopy respondWithPayload:MEMORY[0x277CBEC10]];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      messagePayload2 = [messageCopy messagePayload];
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Missing nfc reader key in the message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [messageCopy respondWithError:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleAddWalletKeyMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    messagePayload = [messageCopy messagePayload];
    *buf = 138544130;
    v21 = v10;
    v22 = 2112;
    v23 = uUID;
    v24 = 2112;
    v25 = messageCopy;
    v26 = 2112;
    v27 = messagePayload;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling message to add wallet key %@ payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [messageCopy numberForKey:*MEMORY[0x277CCFE28]];
  integerValue = [v13 integerValue];

  objc_initWeak(buf, selfCopy);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__HMDHomeWalletKeyManager_handleAddWalletKeyMessage___block_invoke;
  v17[3] = &unk_279724A00;
  objc_copyWeak(&v19, buf);
  v15 = messageCopy;
  v18 = v15;
  [(HMDHomeWalletKeyManager *)selfCopy addWalletKeyWithOptions:integerValue isOnboarding:1 flow:internalOnlyInitializer completion:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __53__HMDHomeWalletKeyManager_handleAddWalletKeyMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    [*(a1 + 32) respondWithError:v6];
  }

  else
  {
    v9 = [WeakRetained home];
    v10 = [v5 uuid];
    v11 = *(a1 + 32);
    v16 = *MEMORY[0x277CD0730];
    v17[0] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v11 respondWithPayload:v12];

    v13 = [v9 nfcReaderKeyManager];
    v14 = [v13 accessoryManager];
    [v14 configureNFCReaderKeyForAllAccessoriesWithReason:@"Add wallet key message"];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleMessageForPairedWatches:(id)watches
{
  v74 = *MEMORY[0x277D85DE8];
  watchesCopy = watches;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v67 = v10;
    v68 = 2112;
    v69 = uUID;
    v70 = 2112;
    v71 = watchesCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling message for watch: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  watchManager = [(HMDHomeWalletKeyManager *)selfCopy watchManager];
  v13 = watchManager;
  if (watchManager)
  {
    connectedWatches = [watchManager connectedWatches];
    v15 = [connectedWatches na_filter:&__block_literal_global_297];
    v16 = [v15 count];
    v17 = [connectedWatches count];
    if (v16)
    {
      v54 = v15;
      watches = [v13 watches];
      v19 = [watches count];

      if (v16 == v19)
      {
        v20 = 0;
      }

      else
      {
        v52 = internalOnlyInitializer;
        v29 = objc_autoreleasePoolPush();
        v30 = selfCopy;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          [v52 UUID];
          v33 = v50 = v29;
          *buf = 138544130;
          v67 = v32;
          v68 = 2112;
          v69 = v33;
          v70 = 2048;
          v71 = v16;
          v72 = 2048;
          v73 = v19;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Connected supported watch count: %lu is not equal to paired watch count: %lu", buf, 0x2Au);

          v29 = v50;
        }

        objc_autoreleasePoolPop(v29);
        v20 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2008];
        internalOnlyInitializer = v52;
      }

      v28 = objc_alloc_init(MEMORY[0x277D2C900]);
      name = [watchesCopy name];
      v35 = [name isEqualToString:*MEMORY[0x277CCFE30]];

      if (v35)
      {
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_299;
        v63[3] = &unk_2797354B8;
        v64 = v28;
        v65 = watchesCopy;
        [(HMDHomeWalletKeyManager *)selfCopy fetchPayloadForAddWalletKeyRemoteMessageWithFlow:internalOnlyInitializer completion:v63];

        v36 = @"HMDHomeWalletKeyManagerPersistWalletKeyAddOptionsRemoteMessage";
      }

      else
      {
        name2 = [watchesCopy name];
        v38 = [name2 isEqualToString:*MEMORY[0x277CD06E8]];

        if (v38)
        {
          [v28 finishWithResult:MEMORY[0x277CBEC10]];
          v36 = @"HMDHomeWalletKeyManagerFetchWalletKeyDeviceStateRemoteMessage";
        }

        else
        {
          v53 = internalOnlyInitializer;
          v39 = objc_autoreleasePoolPush();
          v40 = selfCopy;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v42 = v51 = v39;
            uUID2 = [v53 UUID];
            *buf = 138543874;
            v67 = v42;
            v68 = 2112;
            v69 = uUID2;
            v70 = 2112;
            v71 = watchesCopy;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Message is not supported for paired watches: %@", buf, 0x20u);

            v39 = v51;
          }

          objc_autoreleasePoolPop(v39);
          v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [v28 finishWithError:v44];

          v36 = 0;
          internalOnlyInitializer = v53;
        }
      }

      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_301;
      v61[3] = &unk_2797359D8;
      v45 = watchesCopy;
      v62 = v45;
      v46 = [v28 addFailureBlock:v61];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_2;
      v56[3] = &unk_279724B10;
      v56[4] = selfCopy;
      v57 = v36;
      v15 = v54;
      v58 = v54;
      v59 = v20;
      v60 = v45;
      v47 = v20;
      v48 = [v28 addSuccessBlock:v56];
    }

    else
    {
      v21 = v17;
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v26 = v25 = internalOnlyInitializer;
        [v25 UUID];
        v27 = v55 = v15;
        *buf = 138544130;
        v67 = v26;
        v68 = 2112;
        v69 = v27;
        v70 = 2112;
        v71 = watchesCopy;
        v72 = 2048;
        v73 = v21;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling message for paired watches:%@ connected watches count is %lu but none are supported", buf, 0x2Au);

        v15 = v55;
        internalOnlyInitializer = v25;
      }

      objc_autoreleasePoolPop(v22);
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [watchesCopy respondWithError:v28];
    }
  }

  else
  {
    connectedWatches = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [watchesCopy respondWithError:connectedWatches];
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_299(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6 = [a2 mutableCopy];
    v3 = [*(a1 + 40) messagePayload];

    if (v3)
    {
      v4 = [*(a1 + 40) messagePayload];
      [v6 addEntriesFromDictionary:v4];
    }

    [*(a1 + 32) finishWithResult:v6];
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 finishWithError:?];
  }
}

void __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_3;
  v11[3] = &unk_279724AE8;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  v14 = *(a1 + 64);
  [v6 sendMessageWithName:v7 payload:v4 toWatches:v8 completion:v11];
}

void __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_3(id *a1, void *a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v5 = a1[4];
  }

  v6 = a1[5];
  v7 = a2;
  v8 = objc_opt_class();
  v9 = [a1[6] name];
  v10 = [v8 responsePayloadForPairedWatchesWithMessageName:v9 responsePayloadByDevice:v7 error:v5];

  v11 = [a1[6] name];
  LOBYTE(v7) = [v11 isEqualToString:*MEMORY[0x277CCFE30]];

  if ((v7 & 1) != 0 && ([v5 code] == 2008 || !v5))
  {
    v12 = [a1[5] home];
    v13 = [v12 nfcReaderKeyManager];
    v14 = [v13 accessoryManager];
    [v14 configureNFCReaderKeyForAllAccessoriesWithReason:@"Handle message for paired watches"];

    v15 = [v12 homeManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_4;
    v16[3] = &unk_279734960;
    v17 = a1[6];
    v18 = v10;
    v19 = v5;
    [v15 sendHomeDataToAllWatchesWithCompletion:v16];
  }

  else
  {
    [a1[6] respondWithPayload:v10 error:v5];
  }
}

BOOL __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 productInfo];
  v3 = [v2 softwareVersion];
  v4 = v3;
  if (v3)
  {
    [v3 operatingSystemVersion];
  }

  v7 = *MEMORY[0x277D0F498];
  v8 = *(MEMORY[0x277D0F498] + 16);
  v5 = HMFOperatingSystemVersionCompare() != 1;

  return v5;
}

- (void)handleEnableExpressForWalletKeyMessage:(id)message
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v34 = v10;
    v35 = 2112;
    v36 = uUID;
    v37 = 2112;
    v38 = messageCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling message to enable express: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  passSerialNumber = [(HMDHomeWalletKeyManager *)selfCopy passSerialNumber];
  if (passSerialNumber)
  {
    v13 = *MEMORY[0x277CD0418];
    v14 = [messageCopy dataForKey:*MEMORY[0x277CD0418]];
    if (v14)
    {
      v15 = v14;
      passLibrary = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__HMDHomeWalletKeyManager_handleEnableExpressForWalletKeyMessage___block_invoke;
      v30[3] = &unk_279734D88;
      v30[4] = selfCopy;
      v31 = internalOnlyInitializer;
      v32 = messageCopy;
      [passLibrary enableExpressWithAuthData:v15 passTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber flow:v31 completion:v30];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        uUID2 = [internalOnlyInitializer UUID];
        messagePayload = [messageCopy messagePayload];
        *buf = 138544130;
        v34 = v25;
        v35 = 2112;
        v36 = uUID2;
        v37 = 2112;
        v38 = messagePayload;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to enable express, missing key is payload %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [messageCopy respondWithError:v28];

      v15 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      uUID3 = [internalOnlyInitializer UUID];
      *buf = 138543618;
      v34 = v20;
      v35 = 2112;
      v36 = uUID3;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to enable express, serial number is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v15];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __66__HMDHomeWalletKeyManager_handleEnableExpressForWalletKeyMessage___block_invoke(id *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] UUID];
      v13 = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to enable express for home key: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] UUID];
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully enabled express for home key", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] respondWithPayload:MEMORY[0x277CBEC10]];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchAvailableWalletKeyEncodedPKPassMessage:(id)message
{
  v64 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v59 = v10;
    v60 = 2112;
    v61 = uUID;
    v62 = 2112;
    v63 = messageCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] handleFetchAvailableWalletKeyEncodedPKPassMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  messagePayload = [messageCopy messagePayload];
  v13 = [messagePayload hmf_setForKey:*MEMORY[0x277CD0718]];
  v14 = [v13 na_map:&__block_literal_global_286];

  home = [(HMDHomeWalletKeyManager *)selfCopy home];
  if ([home hasAnyAccessoryWithWalletKeySupport] & 1) != 0 || (objc_msgSend(v14, "containsObject:", &unk_286627CA0))
  {
    passSerialNumber = [(HMDHomeWalletKeyManager *)selfCopy passSerialNumber];
    if (!passSerialNumber)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        uUID2 = [internalOnlyInitializer UUID];
        *buf = 138543618;
        v59 = v30;
        v60 = 2112;
        v61 = uUID2;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, serial number is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      name = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:name];
      goto LABEL_24;
    }

    name = [home name];
    if (name)
    {
      passLibrary = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
      v19 = [passLibrary walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber flow:internalOnlyInitializer];

      if (!v19 || ([v14 containsObject:&unk_286627CB8] & 1) != 0)
      {
        v20 = [HMDHomeWalletKey alloc];
        dataSource = [(HMDHomeWalletKeyManager *)selfCopy dataSource];
        walletKeyColor = [dataSource walletKeyColor];
        +[HMDHomeWalletKeySecureElementInfo createForEasyProvisioning];
        v23 = v51 = v14;
        v57 = v23;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        v50 = home;
        v25 = v24 = internalOnlyInitializer;
        v26 = [(HMDHomeWalletKey *)v20 initWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber state:1 walletKeyDescription:name homeName:name color:walletKeyColor nfcInfos:v25];

        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __77__HMDHomeWalletKeyManager_handleFetchAvailableWalletKeyEncodedPKPassMessage___block_invoke_292;
        v54[3] = &unk_279724AA0;
        v54[4] = selfCopy;
        v55 = v24;
        v56 = messageCopy;
        internalOnlyInitializer = v24;
        home = v50;
        v14 = v51;
        [(HMDHomeWalletKeyManager *)selfCopy createPassDirectoryWithWalletKey:v26 options:0 shouldSkipResourceFiles:0 shouldCreateZipArchive:1 validateNFCInfo:0 flow:v55 completion:v54];

LABEL_23:
LABEL_24:

        goto LABEL_25;
      }

      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        [internalOnlyInitializer UUID];
        v48 = v53 = v44;
        *buf = 138543618;
        v59 = v47;
        v60 = 2112;
        v61 = v48;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, pass already exists", buf, 0x16u);

        v44 = v53;
      }

      objc_autoreleasePoolPop(v44);
      v42 = MEMORY[0x277CCA9B8];
      v43 = 1;
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        [internalOnlyInitializer UUID];
        v41 = v52 = v37;
        *buf = 138543618;
        v59 = v40;
        v60 = 2112;
        v61 = v41;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, no name configured for home", buf, 0x16u);

        v37 = v52;
      }

      objc_autoreleasePoolPop(v37);
      v42 = MEMORY[0x277CCA9B8];
      v43 = 2;
    }

    v26 = [v42 hmErrorWithCode:v43];
    [messageCopy respondWithError:v26];
    goto LABEL_23;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = selfCopy;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = HMFGetLogIdentifier();
    uUID3 = [internalOnlyInitializer UUID];
    *buf = 138543618;
    v59 = v35;
    v60 = 2112;
    v61 = uUID3;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] No accessory in home supports wallet key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  passSerialNumber = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [messageCopy respondWithError:passSerialNumber];
LABEL_25:

  v49 = *MEMORY[0x277D85DE8];
}

void __77__HMDHomeWalletKeyManager_handleFetchAvailableWalletKeyEncodedPKPassMessage___block_invoke_292(id *a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] workQueue];
  dispatch_assert_queue_V2(v10);

  if (v7)
  {
    v11 = [a1[4] fileManager];
    v37 = v9;
    v12 = [v11 fileHandleForReadingFromURL:v7 error:&v37];
    v13 = v37;

    if (v12)
    {
      v14 = [a1[4] fileManager];
      v36 = v13;
      v15 = [v14 removeItemAtURL:v7 error:&v36];
      v16 = v36;

      if ((v15 & 1) == 0)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = a1[4];
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          v21 = [a1[5] UUID];
          *buf = 138544130;
          v41 = v20;
          v42 = 2112;
          v43 = v21;
          v44 = 2112;
          v45 = v7;
          v46 = 2112;
          v47 = v16;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove file at URL %@:%@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v17);
      }

      v38 = *MEMORY[0x277CCFF50];
      v39 = v12;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [a1[6] respondWithPayload:v22];
      v13 = v16;
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = a1[4];
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [a1[5] UUID];
        *buf = 138544130;
        v41 = v32;
        v42 = 2112;
        v43 = v33;
        v44 = 2112;
        v45 = v7;
        v46 = 2112;
        v47 = v13;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, file handle creation failed for file %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v29);
      v34 = a1[6];
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v34 respondWithError:v22];
    }

    v9 = v13;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = a1[4];
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [a1[5] UUID];
      *buf = 138543874;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, pass creation failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = a1[6];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v28 respondWithError:v12];
  }

  v35 = *MEMORY[0x277D85DE8];
}

void *__77__HMDHomeWalletKeyManager_handleFetchAvailableWalletKeyEncodedPKPassMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)handleFetchWalletKeyColorMessage:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling FetchWalletKeyColorMessage", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v11 = objc_autoreleasePoolPush();
  v12 = selfCopy;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543618;
    v25 = v14;
    v26 = 2112;
    v27 = uUID;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling FetchWalletKeyColorMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDHomeWalletKeyManager *)v12 fetchWalletKeyColorOptionWithFlow:internalOnlyInitializer];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__HMDHomeWalletKeyManager_handleFetchWalletKeyColorMessage___block_invoke;
  v21[3] = &unk_279724A78;
  v21[4] = v12;
  v22 = internalOnlyInitializer;
  v23 = messageCopy;
  v17 = messageCopy;
  v18 = internalOnlyInitializer;
  v19 = [v16 addSuccessBlock:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __60__HMDHomeWalletKeyManager_handleFetchWalletKeyColorMessage___block_invoke(id *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    *buf = 138543874;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to FetchWalletKeyColorMessage with color: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277CCFFA0];
  v12 = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [a1[6] respondWithPayload:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchDeviceStateMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    uUID = [internalOnlyInitializer UUID];
    *buf = 138543874;
    v20 = v10;
    v21 = 2112;
    v22 = uUID;
    v23 = 2112;
    v24 = messageCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] handleFetchDeviceStateMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = objc_alloc_init(MEMORY[0x277CD1AC0]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HMDHomeWalletKeyManager_handleFetchDeviceStateMessage___block_invoke;
  v16[3] = &unk_279724A50;
  v16[4] = selfCopy;
  v17 = internalOnlyInitializer;
  v18 = messageCopy;
  v13 = messageCopy;
  v14 = internalOnlyInitializer;
  [(HMDHomeWalletKeyManager *)selfCopy updateDeviceStateWithCanAddWalletKey:v12 flow:v14 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __57__HMDHomeWalletKeyManager_handleFetchDeviceStateMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HMDHomeWalletKeyManager_handleFetchDeviceStateMessage___block_invoke_2;
  v8[3] = &unk_279724A28;
  v8[4] = v6;
  v9 = *(a1 + 48);
  v10 = *(a1 + 40);
  [v6 updateDeviceStateWithWalletKey:v4 flow:v7 completion:v8];
}

void __57__HMDHomeWalletKeyManager_handleFetchDeviceStateMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__HMDHomeWalletKeyManager_handleFetchDeviceStateMessage___block_invoke_3;
    v10[3] = &unk_279724A28;
    v10[4] = v8;
    v11 = v9;
    v12 = *(a1 + 40);
    [v8 updateDeviceStateWithExpressEnablementConflictingPassDescription:v5 flow:v11 completion:v10];
  }

  else
  {
    [*(a1 + 40) respondWithError:v6];
  }
}

void __57__HMDHomeWalletKeyManager_handleFetchDeviceStateMessage___block_invoke_3(id *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v26 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v26];
    v8 = v26;
    v9 = objc_autoreleasePoolPush();
    v10 = a1[4];
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v7)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [a1[5] UUID];
        *buf = 138543874;
        v30 = v13;
        v31 = 2112;
        v32 = v14;
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with wallet key device state: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v15 = a1[6];
      v27 = *MEMORY[0x277CD0708];
      v28 = v7;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [v15 respondWithPayload:v16];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [a1[5] UUID];
        *buf = 138544130;
        v30 = v22;
        v31 = 2112;
        v32 = v23;
        v33 = 2112;
        v34 = v5;
        v35 = 2112;
        v36 = v8;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to encode wallet key device state %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v24 = a1[6];
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      [v24 respondWithError:v16];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1[4];
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[5] UUID];
      *buf = 138543874;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update device state with express conflict. Error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    [a1[6] respondWithError:v6];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  messageDispatcher = [(HMDHomeWalletKeyManager *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  notificationCenter = [(HMDHomeWalletKeyManager *)self notificationCenter];
  [notificationCenter removeObserver:self];
}

- (void)autoAddWalletKeyWithFlow:(id)flow
{
  flowCopy = flow;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDHomeWalletKeyManager_autoAddWalletKeyWithFlow___block_invoke;
  v7[3] = &unk_2797249D8;
  v7[4] = self;
  v8 = flowCopy;
  v6 = flowCopy;
  [(HMDHomeWalletKeyManager *)self autoAddWalletKeyWithReason:@"autoAddWalletKey API invocation" flow:v6 completion:v7];
}

void __52__HMDHomeWalletKeyManager_autoAddWalletKeyWithFlow___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 domain];
  v9 = v8;
  if (v8 == *MEMORY[0x277CCFD28])
  {
    v10 = [v6 code];

    if (v10 == 1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [*(a1 + 40) UUID];
        v21 = 138543874;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
        v25 = 2112;
        v26 = v5;
        v16 = "%{public}@[Flow: %@] Did not auto add wallet key, it already exists: %@";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, v16, &v21, 0x20u);
      }

LABEL_13:

      objc_autoreleasePoolPop(v11);
      goto LABEL_14;
    }
  }

  else
  {
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (v17)
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) UUID];
      v21 = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v6;
      v16 = "%{public}@[Flow: %@] Failed to auto add wallet key: %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    v19 = [*(a1 + 40) UUID];
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = v19;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully auto added wallet key: %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  [*(a1 + 32) createExpressModeSetUpBulletin];
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

- (NSString)passSerialNumber
{
  v18 = *MEMORY[0x277D85DE8];
  home = [(HMDHomeWalletKeyManager *)self home];
  currentUser = [home currentUser];
  uuid = [currentUser uuid];

  if (uuid)
  {
    goto LABEL_6;
  }

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v9;
    v16 = 2112;
    v17 = 0;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@currentUser is nil, so using cached currentUserUUID: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  currentUserUUID = [(HMDHomeWalletKeyManager *)selfCopy currentUserUUID];
  if (currentUserUUID)
  {
    uuid = currentUserUUID;
LABEL_6:
    v11 = [(HMDHomeWalletKeyManager *)self passSerialNumberWithUserUUID:uuid];

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)hasHomeKeyInWallet
{
  passSerialNumber = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  passLibrary = [(HMDHomeWalletKeyManager *)self passLibrary];
  untrackedPlaceholderFlow = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v6 = [passLibrary walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber flow:untrackedPlaceholderFlow];
  v7 = v6 != 0;

  return v7;
}

- (void)handleAccessCodeChanged
{
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDHomeWalletKeyManager *)self updateWalletKeyAccessCodeFieldWithReason:@"access code changed"];
}

- (void)recoverDueToUUIDChangeOfUser:(id)user fromOldUUID:(id)d
{
  userCopy = user;
  dCopy = d;
  workQueue = [(HMDHomeWalletKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHomeWalletKeyManager_recoverDueToUUIDChangeOfUser_fromOldUUID___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = userCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = userCopy;
  dispatch_async(workQueue, block);
}

void __68__HMDHomeWalletKeyManager_recoverDueToUUIDChangeOfUser_fromOldUUID___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138544130;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Recovering due to uuid change of user: %@, old uuid: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  if ([*(a1 + 40) isCurrentUser])
  {
    v10 = [*(a1 + 40) uuid];
    [*(a1 + 32) setCurrentUserUUID:v10];
  }

  v11 = [*(a1 + 32) passSerialNumberWithUserUUID:*(a1 + 48)];
  v12 = [*(a1 + 32) passLibrary];
  v13 = [v12 removePassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v11 flow:v2];

  if (v13)
  {
    objc_initWeak(buf, *(a1 + 32));
    v14 = *(a1 + 32);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__HMDHomeWalletKeyManager_recoverDueToUUIDChangeOfUser_fromOldUUID___block_invoke_272;
    v21[3] = &unk_279724A00;
    objc_copyWeak(&v23, buf);
    v22 = v2;
    [v14 addWalletKeyWithOptions:1 isOnboarding:0 flow:v22 completion:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v2 UUID];
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not recovering due to user UUID change because no home key exists in Wallet", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__HMDHomeWalletKeyManager_recoverDueToUUIDChangeOfUser_fromOldUUID___block_invoke_272(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) UUID];
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to recover due to user UUID change: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 32) UUID];
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully recovered due to user UUID change", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 createExpressModeSetUpBulletin];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)storeWalletKeyMigrationSettingsToDisk
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HMDHomeWalletKeyManager *)self hasHomeKeyInWallet])
  {
    passLibrary = [(HMDHomeWalletKeyManager *)self passLibrary];
    passSerialNumber = [(HMDHomeWalletKeyManager *)self passSerialNumber];
    v5 = [passLibrary isExpressModeEnabledForPassUniqueIdentifier:@"paymentpass.com.apple.dev1" serialNumber:passSerialNumber];

    v6 = *MEMORY[0x277D85DE8];

    [(HMDHomeWalletKeyManager *)self _storeWalletKeyMigrationSettingsToDisk:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      home = [(HMDHomeWalletKeyManager *)selfCopy home];
      shortDescription = [home shortDescription];
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = shortDescription;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not storing wallet key settings on disk because home: %@ does not have wallet key", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = *MEMORY[0x277D85DE8];
  }
}

- (id)walletKeySettingsFileURL
{
  v3 = MEMORY[0x277CCACA8];
  v4 = hh1ToHH2PerDeviceMigrationDirectoryPath;
  home = [(HMDHomeWalletKeyManager *)self home];
  uuid = [home uuid];
  v7 = [v3 stringWithFormat:@"%@/HMDHomeWalletKeySetting-%@.plist", v4, uuid];

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];

  return v8;
}

- (void)didAddCurrentUserWithUUID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  uuid = [dCopy uuid];
  [(HMDHomeWalletKeyManager *)self setCurrentUserUUID:uuid];

  if (([dCopy isOwner] & 1) == 0)
  {
    internalOnlyInitializer = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      uUID = [internalOnlyInitializer UUID];
      uuid2 = [dCopy uuid];
      *buf = 138543874;
      v25 = v10;
      v26 = 2112;
      v27 = uUID;
      v28 = 2112;
      v29 = uuid2;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Did add current user: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    home = [(HMDHomeWalletKeyManager *)selfCopy home];
    if (home)
    {
      workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__HMDHomeWalletKeyManager_didAddCurrentUserWithUUID___block_invoke;
      block[3] = &unk_279734960;
      v21 = home;
      v22 = selfCopy;
      v23 = internalOnlyInitializer;
      dispatch_async(workQueue, block);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@home is unexpectedly nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __53__HMDHomeWalletKeyManager_didAddCurrentUserWithUUID___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] hapAccessories];
  v3 = [v2 na_any:&__block_literal_global_255];

  if (v3)
  {
    v4 = [a1[5] passLibrary];
    v5 = [a1[5] passSerialNumber];
    v6 = [v4 walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v5 flow:a1[6]];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = a1[5];
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [a1[6] UUID];
        *buf = 138543618;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wallet key exists", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v18 = a1[5];
      v17 = a1[6];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53__HMDHomeWalletKeyManager_didAddCurrentUserWithUUID___block_invoke_259;
      v20[3] = &unk_2797249D8;
      v20[4] = v18;
      v21 = v17;
      [v18 autoAddWalletKeyWithReason:@"did add current user" flow:v21 completion:v20];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[5];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[6] UUID];
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No accessories support wallet key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __53__HMDHomeWalletKeyManager_didAddCurrentUserWithUUID___block_invoke_259(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add pass when current user was added: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) UUID];
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added pass when current user was added", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) createExpressModeSetUpBulletin];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)home
{
  v83 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v80 = v8;
    v81 = 2112;
    v82 = homeCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  msgDispatcher = [homeCopy msgDispatcher];
  [(HMDHomeWalletKeyManager *)selfCopy setMessageDispatcher:msgDispatcher];

  [(HMDHomeWalletKeyManager *)selfCopy setHome:homeCopy];
  currentUser = [homeCopy currentUser];
  uuid = [currentUser uuid];
  [(HMDHomeWalletKeyManager *)selfCopy setCurrentUserUUID:uuid];

  nfcReaderKeyManager = [homeCopy nfcReaderKeyManager];
  accessoryManager = [nfcReaderKeyManager accessoryManager];
  [accessoryManager setDelegate:selfCopy];

  v14 = [HMDXPCMessagePolicy policyWithEntitlements:131077];
  messageDispatcher = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v78 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  [messageDispatcher registerForMessage:*MEMORY[0x277CCFE20] receiver:selfCopy policies:v16 selector:sel_handleAddWalletKeyMessage_];

  messageDispatcher2 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v77 = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  [messageDispatcher2 registerForMessage:*MEMORY[0x277CCFE30] receiver:selfCopy policies:v18 selector:sel_handleMessageForPairedWatches_];

  messageDispatcher3 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v76 = v14;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  [messageDispatcher3 registerForMessage:*MEMORY[0x277CCFED0] receiver:selfCopy policies:v20 selector:sel_handleEnableExpressForWalletKeyMessage_];

  v21 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v21 setRoles:{objc_msgSend(v21, "roles") | 1}];
  v22 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];
  messageDispatcher4 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v75[0] = v21;
  v75[1] = v22;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  [messageDispatcher4 registerForMessage:@"HMDHomeWalletKeyManagerPersistWalletKeyAddOptionsRemoteMessage" receiver:selfCopy policies:v24 selector:sel_handlePersistWalletKeyAddOptionsRemoteMessage_];

  messageDispatcher5 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v74[0] = v21;
  v74[1] = v22;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  [messageDispatcher5 registerForMessage:@"HMDHomeWalletKeyManagerFetchWalletKeyDeviceStateRemoteMessage" receiver:selfCopy policies:v26 selector:sel_handleFetchDeviceStateMessage_];

  messageDispatcher6 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v73 = v14;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
  [messageDispatcher6 registerForMessage:*MEMORY[0x277CCFF48] receiver:selfCopy policies:v28 selector:sel_handleFetchAvailableWalletKeyEncodedPKPassMessage_];

  messageDispatcher7 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v72 = v14;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
  [messageDispatcher7 registerForMessage:*MEMORY[0x277CCFF98] receiver:selfCopy policies:v30 selector:sel_handleFetchWalletKeyColorMessage_];

  messageDispatcher8 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v71 = v14;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
  [messageDispatcher8 registerForMessage:*MEMORY[0x277CD06F0] receiver:selfCopy policies:v32 selector:sel_handleFetchDeviceStateMessage_];

  messageDispatcher9 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v70 = v14;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  [messageDispatcher9 registerForMessage:*MEMORY[0x277CD06E8] receiver:selfCopy policies:v34 selector:sel_handleMessageForPairedWatches_];

  messageDispatcher10 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v69 = v14;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  [messageDispatcher10 registerForMessage:*MEMORY[0x277CD06F8] receiver:selfCopy policies:v36 selector:sel_handleFetchMissingWalletKeysMessage_];

  messageDispatcher11 = [(HMDHomeWalletKeyManager *)selfCopy messageDispatcher];
  v68 = v14;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
  [messageDispatcher11 registerForMessage:*MEMORY[0x277CD0738] receiver:selfCopy policies:v38 selector:sel_handleRestoreMissingWalletKeysMessage_];

  passLibrary = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
  [passLibrary setDelegate:selfCopy];

  passLibrary2 = [(HMDHomeWalletKeyManager *)selfCopy passLibrary];
  [passLibrary2 start];

  notificationCenter = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:homeCopy];

  notificationCenter2 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter2 addObserver:selfCopy selector:sel_handleHomeNameChangedNotification_ name:@"HMDHomeNameChangedNotification" object:homeCopy];

  notificationCenter3 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter3 addObserver:selfCopy selector:sel_handleHomeAddedAccessoryNotification_ name:@"HMDNotificationHomeAddedAccessory" object:homeCopy];

  notificationCenter4 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter4 addObserver:selfCopy selector:sel_handleHomeAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:homeCopy];

  notificationCenter5 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter5 addObserver:selfCopy selector:sel_handleAccessorySupportsWalleyKeyDidChangeNotification_ name:@"HMDAccessorySupportsWalletKeyDidChangeNotification" object:0];

  notificationCenter6 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter6 addObserver:selfCopy selector:sel_handleHomeDidUpdateNFCReaderKeyNotification_ name:@"HMDHomeDidUpdateNFCReaderKeyNotification" object:homeCopy];

  notificationCenter7 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  lostModeManager = [(HMDHomeWalletKeyManager *)selfCopy lostModeManager];
  [notificationCenter7 addObserver:selfCopy selector:sel_handleLostModeUpdated name:@"HMDLostModeManagerUpdatedNotification" object:lostModeManager];

  notificationCenter8 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter8 addObserver:selfCopy selector:sel_handleHomeHasOnboardedForWalletKeyChangeNotification_ name:@"HMDHomeHasOnboardedForWalletKeyChangeNotification" object:homeCopy];

  notificationCenter9 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  lostModeManager2 = [(HMDHomeWalletKeyManager *)selfCopy lostModeManager];
  [notificationCenter9 addObserver:selfCopy selector:sel_handleLostModeManagerDidExitLostModeWithAuthCompleteNotification name:@"HMDLostModeManagerDidExitLostModeWithAuthCompleteNotification" object:lostModeManager2];

  notificationCenter10 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter10 addObserver:selfCopy selector:sel_handleApplicationInstalled_ name:@"HMDApplicationInstalledNotification" object:0];

  notificationCenter11 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter11 addObserver:selfCopy selector:sel_handleAccessorySupportsAccessCodeDidChangeNotification_ name:@"HMDAccessorySupportsAccessCodeDidChangeNotification" object:0];

  notificationCenter12 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter12 addObserver:selfCopy selector:sel_handleLocalAliroVersionDidChangeNotification_ name:@"HMDLocalAliroVersionDidChangeNotification" object:0];

  notificationCenter13 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  [notificationCenter13 addObserver:selfCopy selector:sel_handleApplicationUninstalled_ name:@"HMDApplicationUninstalledNotification" object:0];

  notificationCenter14 = [(HMDHomeWalletKeyManager *)selfCopy notificationCenter];
  systemInfo = [(HMDHomeWalletKeyManager *)selfCopy systemInfo];
  [notificationCenter14 addObserver:selfCopy selector:sel_handleSystemInfoMigrationUpdatedNotification_ name:*MEMORY[0x277D0F750] object:systemInfo];

  objc_initWeak(&location, selfCopy);
  dataSource = [(HMDHomeWalletKeyManager *)selfCopy dataSource];
  workQueue = [(HMDHomeWalletKeyManager *)selfCopy workQueue];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __45__HMDHomeWalletKeyManager_configureWithHome___block_invoke;
  v65[3] = &unk_279732FD8;
  objc_copyWeak(&v66, &location);
  LOBYTE(v34) = [dataSource registerForPasscodeChangeNotificationWithQueue:workQueue callback:v65];

  if ((v34 & 1) == 0)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = selfCopy;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138543362;
      v80 = v63;
      _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for passcode change notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v60);
  }

  [(HMDHomeWalletKeyManager *)selfCopy handleLostModeUpdated];
  objc_destroyWeak(&v66);
  objc_destroyWeak(&location);

  v64 = *MEMORY[0x277D85DE8];
}

void __45__HMDHomeWalletKeyManager_configureWithHome___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v3);

    v4 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v5 = objc_autoreleasePoolPush();
    v6 = v2;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 UUID];
      *buf = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling passcode changed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__HMDHomeWalletKeyManager_configureWithHome___block_invoke_250;
    v12[3] = &unk_2797249D8;
    v12[4] = v6;
    v13 = v4;
    v10 = v4;
    [v6 autoAddWalletKeyWithReason:@"passcode changed" flow:v10 completion:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __45__HMDHomeWalletKeyManager_configureWithHome___block_invoke_250(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) UUID];
      v17 = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key because passcode changed: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) UUID];
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added home key because passcode changed", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) createExpressModeSetUpBulletin];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDHomeWalletKeyManager)initWithUUID:(id)d workQueue:(id)queue fileManager:(id)manager passLibrary:(id)library notificationCenter:(id)center watchManager:(id)watchManager keychainStore:(id)store lostModeManager:(id)self0 dataSource:(id)self1 bulletinBoard:(id)self2 applicationRegistry:(id)self3 systemInfo:(id)self4 isoCredentialFactory:(id)self5
{
  dCopy = d;
  queueCopy = queue;
  queueCopy2 = queue;
  managerCopy = manager;
  managerCopy2 = manager;
  libraryCopy = library;
  centerCopy = center;
  centerCopy2 = center;
  watchManagerCopy = watchManager;
  storeCopy = store;
  modeManagerCopy = modeManager;
  sourceCopy = source;
  boardCopy = board;
  registryCopy = registry;
  infoCopy = info;
  factoryCopy = factory;
  v45.receiver = self;
  v45.super_class = HMDHomeWalletKeyManager;
  v24 = [(HMDHomeWalletKeyManager *)&v45 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_uuid, d);
    objc_storeStrong(&v25->_workQueue, queueCopy);
    objc_storeStrong(&v25->_fileManager, managerCopy);
    objc_storeStrong(&v25->_passLibrary, library);
    objc_storeStrong(&v25->_notificationCenter, centerCopy);
    objc_storeStrong(&v25->_watchManager, watchManager);
    v26 = _Block_copy(factoryCopy);
    isoCredentialFactory = v25->_isoCredentialFactory;
    v25->_isoCredentialFactory = v26;

    objc_storeStrong(&v25->_keychainStore, store);
    objc_storeStrong(&v25->_lostModeManager, modeManager);
    objc_storeStrong(&v25->_dataSource, source);
    array = [MEMORY[0x277CBEB18] array];
    pendingUpdateWalletKeyOperations = v25->_pendingUpdateWalletKeyOperations;
    v25->_pendingUpdateWalletKeyOperations = array;

    objc_storeStrong(&v25->_bulletinBoard, board);
    objc_storeStrong(&v25->_applicationRegistry, registry);
    objc_storeStrong(&v25->_systemInfo, info);
  }

  return v25;
}

- (HMDHomeWalletKeyManager)initWithUUID:(id)d workQueue:(id)queue
{
  queueCopy = queue;
  dCopy = d;
  v15 = objc_alloc_init(HMDFileManager);
  v17 = [[HMDWalletPassLibrary alloc] initWithWorkQueue:queueCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = +[HMDWatchManager sharedManager];
  systemStore = [MEMORY[0x277CFEC78] systemStore];
  v8 = +[HMDLostModeManager sharedManager];
  v9 = objc_alloc_init(HMDHomeWalletDataSource);
  v10 = +[HMDBulletinBoard sharedBulletinBoard];
  v11 = +[HMDApplicationRegistry sharedRegistry];
  systemInfo = [MEMORY[0x277D0F910] systemInfo];
  v19 = [(HMDHomeWalletKeyManager *)self initWithUUID:dCopy workQueue:queueCopy fileManager:v15 passLibrary:v17 notificationCenter:defaultCenter watchManager:v7 keychainStore:systemStore lostModeManager:v8 dataSource:v9 bulletinBoard:v10 applicationRegistry:v11 systemInfo:systemInfo isoCredentialFactory:&__block_literal_global_33630];

  return v19;
}

HMDHomeWalletKeyISOCredential *__50__HMDHomeWalletKeyManager_initWithUUID_workQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HMDHomeWalletKeyISOCredential alloc] initWithHAPPairingIdentity:v5 deviceCredentialKeyExternalRepresentation:v4];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t162 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t162, &__block_literal_global_361);
  }

  v3 = logCategory__hmf_once_v163;

  return v3;
}

uint64_t __38__HMDHomeWalletKeyManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v163;
  logCategory__hmf_once_v163 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)homekitErrorWithPassLibraryErrorCode:(int64_t)code
{
  if ((code - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_253D4B738[code - 1];
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD06D8] code:v5 userInfo:{0, v3}];

  return v6;
}

+ (id)responsePayloadForPairedWatchesWithMessageName:(id)name responsePayloadByDevice:(id)device error:(id)error
{
  v66 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  deviceCopy = device;
  errorCopy = error;
  code = [errorCopy code];
  v11 = [nameCopy isEqual:*MEMORY[0x277CD06E8]];
  if (errorCopy)
  {
    v12 = code == 2008;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (v11)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (errorCopy)
    {
      v15 = 0;
    }

    else
    {
      v15 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v45 = errorCopy;
    v47 = nameCopy;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v46 = deviceCopy;
    v17 = deviceCopy;
    v18 = [v17 countByEnumeratingWithState:&v53 objects:v65 count:16];
    v48 = strongToStrongObjectsMapTable;
    if (v18)
    {
      v19 = v18;
      v20 = *v54;
      v21 = *MEMORY[0x277CD0708];
      v49 = *MEMORY[0x277CD0708];
      do
      {
        v22 = 0;
        v51 = v19;
        do
        {
          if (*v54 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v53 + 1) + 8 * v22);
          v24 = [v17 objectForKey:v23];
          v25 = [v24 objectForKey:v21];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;

          if (v27)
          {
            v28 = MEMORY[0x277CCAAC8];
            v29 = objc_opt_class();
            v52 = 0;
            v30 = [v28 unarchivedObjectOfClass:v29 fromData:v27 error:&v52];
            v31 = v52;
            if (v30)
            {
              [strongToStrongObjectsMapTable setObject:v30 forKey:v23];
            }

            else
            {
              v32 = v20;
              v33 = objc_autoreleasePoolPush();
              selfCopy = self;
              v35 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v36 = HMFGetLogIdentifier();
                *buf = 138543874;
                v60 = v36;
                v61 = 2112;
                v62 = v27;
                v63 = 2112;
                v64 = v31;
                _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode wallet key device state %@:%@", buf, 0x20u);

                strongToStrongObjectsMapTable = v48;
              }

              objc_autoreleasePoolPop(v33);
              v20 = v32;
              v21 = v49;
              v19 = v51;
            }
          }

          ++v22;
        }

        while (v19 != v22);
        v19 = [v17 countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v19);
    }

    v37 = encodeRootObjectForIncomingXPCMessage(strongToStrongObjectsMapTable, 0);
    v38 = v37;
    if (v37)
    {
      v57 = *MEMORY[0x277CD0710];
      v58 = v37;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      errorCopy = v45;
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v41 = HMFGetOSLogHandle();
      errorCopy = v45;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v42;
        v61 = 2112;
        v62 = 0;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to encoded wallet key device state by device %@", buf, 0x16u);

        strongToStrongObjectsMapTable = v48;
      }

      objc_autoreleasePoolPop(v39);
      v15 = 0;
    }

    deviceCopy = v46;
    nameCopy = v47;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v15;
}

@end