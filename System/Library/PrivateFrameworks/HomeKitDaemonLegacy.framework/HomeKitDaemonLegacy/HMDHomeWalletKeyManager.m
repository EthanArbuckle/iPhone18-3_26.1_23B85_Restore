@interface HMDHomeWalletKeyManager
+ (id)homekitErrorWithPassLibraryErrorCode:(int64_t)a3;
+ (id)logCategory;
+ (id)responsePayloadForPairedWatchesWithMessageName:(id)a3 responsePayloadByDevice:(id)a4 error:(id)a5;
- (BOOL)canAutoAddWalletKeyWithError:(id *)a3;
- (BOOL)canSuspendWalletKey;
- (BOOL)hasHomeKeyInWallet;
- (HMDHome)home;
- (HMDHomeWalletKeyManager)initWithUUID:(id)a3 workQueue:(id)a4;
- (HMDHomeWalletKeyManager)initWithUUID:(id)a3 workQueue:(id)a4 fileManager:(id)a5 passLibrary:(id)a6 notificationCenter:(id)a7 watchManager:(id)a8 keychainStore:(id)a9 lostModeManager:(id)a10 dataSource:(id)a11 bulletinBoard:(id)a12 applicationRegistry:(id)a13 systemInfo:(id)a14 isoCredentialFactory:(id)a15;
- (NSString)passSerialNumber;
- (id)createPassDirectoryWithResourceFilesWithFlow:(id)a3;
- (id)createPassDirectoryWithoutResourceFilesWithFlow:(id)a3;
- (id)fetchWalletKeyColorOptionWithFlow:(id)a3;
- (id)logIdentifier;
- (id)passSerialNumberWithUserUUID:(id)a3;
- (id)paymentApplicationsForWalletKey:(id)a3 validateNFCInfo:(BOOL)a4 defaultPaymentApplication:(id)a5 doesAnyAccessorySupportACB:(BOOL)a6 flow:(id)a7;
- (id)updatePassJSONAtURL:(id)a3 withWalletKey:(id)a4 options:(int64_t)a5 validateNFCInfo:(BOOL)a6 flow:(id)a7;
- (id)walletKeyByAddingAccessCodeToWalletKey:(id)a3;
- (id)walletKeySettingsFileURL;
- (void)accessoryManager:(id)a3 didUpdateWalletKeyColor:(int64_t)a4;
- (void)addISOCredentialV0WithPassAtURL:(id)a3 nfcInfo:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)addISOCredentialV1WithPassAtURL:(id)a3 nfcInfo:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)addISOCredentialWithPassAtURL:(id)a3 walletKey:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)addWalletKey:(id)a3 withOptions:(int64_t)a4 assertion:(id)a5 flow:(id)a6;
- (void)addWalletKeyWithOptions:(int64_t)a3 isOnboarding:(BOOL)a4 flow:(id)a5 completion:(id)a6;
- (void)addWalletKeyWithOptions:(int64_t)a3 nfcReaderKey:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)autoAddWalletKeyWithFlow:(id)a3;
- (void)autoAddWalletKeyWithReason:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)configureWalletPaymentApplicationsWithNFCReaderKey:(id)a3 serialNumber:(id)a4 homeUniqueIdentifier:(id)a5 homeGRK:(id)a6 flow:(id)a7 completion:(id)a8;
- (void)configureWithHome:(id)a3;
- (void)createExpressModeSetUpBulletin;
- (void)createPassDirectoryWithWalletKey:(id)a3 options:(int64_t)a4 shouldSkipResourceFiles:(BOOL)a5 shouldCreateZipArchive:(BOOL)a6 validateNFCInfo:(BOOL)a7 flow:(id)a8 completion:(id)a9;
- (void)didAddCurrentUserWithUUID:(id)a3;
- (void)enableExpressWithOptions:(int64_t)a3 flow:(id)a4 completion:(id)a5;
- (void)enqueueWalletKeyUpdateOperation:(id)a3 flow:(id)a4;
- (void)fetchExpressEnablementConflictingPassDescriptionWithFlow:(id)a3 completion:(id)a4;
- (void)fetchHomeKeySupportedWithFlow:(id)a3 completion:(id)a4;
- (void)fetchOrCreateReaderKeyWithFlow:(id)a3 completion:(id)a4;
- (void)fetchPayloadForAddWalletKeyRemoteMessageWithFlow:(id)a3 completion:(id)a4;
- (void)fetchShouldAutoEnableExpressWithCompletion:(id)a3;
- (void)fetchShouldSuppressWalletNotificationWithCompletion:(id)a3;
- (void)fetchWalletKeyColorOptionWithFlow:(id)a3 completion:(id)a4;
- (void)handleAccessCodeChanged;
- (void)handleAccessorySupportsAccessCodeDidChangeNotification:(id)a3;
- (void)handleAccessorySupportsWalleyKeyDidChangeNotification:(id)a3;
- (void)handleAddWalletKeyMessage:(id)a3;
- (void)handleApplicationInstalled:(id)a3;
- (void)handleApplicationUninstalled:(id)a3;
- (void)handleEnableExpressForWalletKeyMessage:(id)a3;
- (void)handleFetchAvailableWalletKeyEncodedPKPassMessage:(id)a3;
- (void)handleFetchDeviceStateMessage:(id)a3;
- (void)handleFetchMissingWalletKeysMessage:(id)a3;
- (void)handleFetchWalletKeyColorMessage:(id)a3;
- (void)handleHomeAccessoryRemovedNotification:(id)a3;
- (void)handleHomeAddedAccessoryNotification:(id)a3;
- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)a3;
- (void)handleHomeHasOnboardedForWalletKeyChangeNotification:(id)a3;
- (void)handleHomeNameChangedNotification:(id)a3;
- (void)handleHomeUserRemovedNotification:(id)a3;
- (void)handleHomeWillBeRemoved;
- (void)handleLostModeManagerDidExitLostModeWithAuthCompleteNotification;
- (void)handleLostModeUpdated;
- (void)handleMessageForPairedWatches:(id)a3;
- (void)handleNFCReaderKeyUpdatedForWalletKey:(id)a3 flow:(id)a4;
- (void)handlePendingWalletKeyUpdateOperationsWithFlow:(id)a3;
- (void)handlePersistWalletKeyAddOptionsRemoteMessage:(id)a3;
- (void)handleRestoreMissingWalletKeysMessage:(id)a3;
- (void)handleSystemInfoMigrationUpdatedNotification:(id)a3;
- (void)passLibrary:(id)a3 didAddPassWithSerialNumber:(id)a4 typeIdentifier:(id)a5;
- (void)passLibrary:(id)a3 didRemovePassWithSerialNumber:(id)a4 typeIdentifier:(id)a5;
- (void)recoverDueToUUIDChangeOfUser:(id)a3 fromOldUUID:(id)a4;
- (void)removeWalletKeyOnboardingBulletin;
- (void)sendMessageWithName:(id)a3 payload:(id)a4 toWatches:(id)a5 completion:(id)a6;
- (void)storeWalletKeyMigrationSettingsToDisk;
- (void)syncDeviceCredentialKey:(id)a3 ofType:(int64_t)a4 flow:(id)a5;
- (void)syncDeviceCredentialKeyForAccessory:(id)a3 paymentApplications:(id)a4 flow:(id)a5;
- (void)unconfigure;
- (void)updateDeviceStateWithCanAddWalletKey:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)updateDeviceStateWithExpressEnablementConflictingPassDescription:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)updateDeviceStateWithWalletKey:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)updateWalletKeyAccessCodeFieldWithReason:(id)a3;
- (void)updateWalletKeyByConfiguringEndpointsWithFlow:(id)a3;
- (void)updateWalletKeyStateToState:(int64_t)a3 flow:(id)a4;
@end

@implementation HMDHomeWalletKeyManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (BOOL)canSuspendWalletKey
{
  v2 = [(HMDHomeWalletKeyManager *)self home];
  if ([v2 hasOnboardedForWalletKey])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [v2 hasAnyAccessoryWithWalletKeySupport] ^ 1;
  }

  return v3;
}

- (void)handleHomeHasOnboardedForWalletKeyChangeNotification:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self home];
  v6 = [v5 hasOnboardedForWalletKey];

  v7 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    v13 = HMFBooleanToString();
    *buf = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Home has onboarded flag changed to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = [(HMDHomeWalletKeyManager *)v9 canSuspendWalletKey];
  v15 = [(HMDHomeWalletKeyManager *)v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDHomeWalletKeyManager_handleHomeHasOnboardedForWalletKeyChangeNotification___block_invoke;
  block[3] = &unk_27972EBD8;
  v20 = v6;
  v21 = v14;
  block[4] = v9;
  v19 = v7;
  v16 = v7;
  dispatch_async(v15, block);

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

- (void)updateWalletKeyByConfiguringEndpointsWithFlow:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating wallet key by configuring endpoints", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDHomeWalletKeyManager *)v6 home];
  if (v10)
  {
    v11 = [(HMDHomeWalletKeyManager *)v6 passSerialNumber];
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v4 UUID];
        *buf = 138543618;
        v31 = v16;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generating nfc info for existing wallet key", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v18 = [v10 nfcReaderKey];
      v19 = [v10 spiClientIdentifier];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke;
      v28[3] = &unk_279734D18;
      v28[4] = v13;
      v29 = v4;
      [(HMDHomeWalletKeyManager *)v13 configureWalletPaymentApplicationsWithNFCReaderKey:v18 serialNumber:v11 homeUniqueIdentifier:v19 homeGRK:0 flow:v29 completion:v28];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v4 UUID];
        *buf = 138543618;
        v31 = v25;
        v32 = 2112;
        v33 = v26;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update home key, serial number is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v6;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v4 UUID];
      *buf = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
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

- (void)handleNFCReaderKeyUpdatedForWalletKey:(id)a3 flow:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v55 = a4;
  v7 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v55 UUID];
    *buf = 138543618;
    v64 = v11;
    v65 = 2112;
    v66 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling NFC reader key updated for wallet key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMDHomeWalletKeyManager *)v9 home];
  v14 = [v13 nfcReaderKey];
  v15 = [v14 identifier];

  v16 = [v13 nfcReaderKey];
  v17 = [v16 publicKey];
  v18 = [HMDNIST256Utilities identifier16BytesForKey:v17];

  v19 = objc_alloc(MEMORY[0x277CBEA90]);
  v20 = [v6 nfcInfos];
  v21 = [v20 firstObject];
  v22 = [v21 pairedReaderIdentifier];
  v54 = [v19 hmf_initWithHexadecimalString:v22 options:0];

  v23 = [v6 nfcInfos];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __70__HMDHomeWalletKeyManager_handleNFCReaderKeyUpdatedForWalletKey_flow___block_invoke;
  v60[3] = &unk_279725010;
  v24 = v15;
  v61 = v24;
  v25 = v18;
  v62 = v25;
  v26 = [v23 na_any:v60];

  v27 = objc_autoreleasePoolPush();
  v28 = v9;
  v29 = HMFGetOSLogHandle();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
  if (v26)
  {
    if (v30)
    {
      v31 = HMFGetLogIdentifier();
      v32 = [v55 UUID];
      *buf = 138544386;
      v64 = v31;
      v65 = 2112;
      v66 = v32;
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
      v34 = [v55 UUID];
      *buf = 138544386;
      v64 = v33;
      v65 = 2112;
      v66 = v34;
      v67 = 2112;
      v68 = v54;
      v69 = 2112;
      v70 = v24;
      v71 = 2112;
      v72 = v25;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reader identifier of existing wallet key: %@ doesn't match with home uaReaderGroupIdentifier: %@ or v2ReaderGroupIdentifier: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v27);
    v35 = [(HMDHomeWalletKeyManager *)v28 dataSource];
    v36 = [v24 hmf_hexadecimalRepresentation];
    v37 = [v35 numberValueFromNoBackupStoreWithKey:v36];

    if (v37)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v28;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [v55 UUID];
        *buf = 138543874;
        v64 = v41;
        v65 = 2112;
        v66 = v42;
        v67 = 2112;
        v68 = v37;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing and re-adding wallet key with default options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v38);
      v43 = [(HMDHomeWalletKeyManager *)v39 passLibrary];
      v44 = [v6 typeIdentifier];
      v45 = [v6 serialNumber];
      v46 = [v43 removePassWithTypeIdentifier:v44 serialNumber:v45 flow:v55];

      if (v46)
      {
        objc_initWeak(buf, v39);
        v47 = [v37 integerValue];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __70__HMDHomeWalletKeyManager_handleNFCReaderKeyUpdatedForWalletKey_flow___block_invoke_396;
        v56[3] = &unk_279725038;
        objc_copyWeak(&v59, buf);
        v57 = v55;
        v58 = v6;
        [(HMDHomeWalletKeyManager *)v39 addWalletKeyWithOptions:v47 isOnboarding:0 flow:v57 completion:v56];

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
          v52 = [v55 UUID];
          *buf = 138543874;
          v64 = v51;
          v65 = 2112;
          v66 = v52;
          v67 = 2112;
          v68 = v6;
          _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove wallet key: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v48);
      }
    }

    else
    {
      [(HMDHomeWalletKeyManager *)v28 updateWalletKeyByConfiguringEndpointsWithFlow:v55];
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

- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    *buf = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling HomeDidUpdateNFCReaderKeyNotification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeWalletKeyManager *)v7 home];
  v12 = [v11 nfcReaderKey];

  if (v12)
  {
    v13 = [(HMDHomeWalletKeyManager *)v7 workQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__HMDHomeWalletKeyManager_handleHomeDidUpdateNFCReaderKeyNotification___block_invoke;
    v20[3] = &unk_2797359B0;
    v20[4] = v7;
    v21 = v5;
    dispatch_async(v13, v20);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v5 UUID];
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
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

- (void)handleHomeAccessoryRemovedNotification:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDAccessoryNotificationKey"];

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
    v9 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v9 UUID];
      v15 = [v8 shortDescription];
      *buf = 138543874;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v15;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling accessory removed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    if ([(HMDHomeWalletKeyManager *)v11 canSuspendWalletKey])
    {
      v16 = [(HMDHomeWalletKeyManager *)v11 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__HMDHomeWalletKeyManager_handleHomeAccessoryRemovedNotification___block_invoke;
      block[3] = &unk_279734960;
      block[4] = v11;
      v26 = v9;
      v27 = v8;
      dispatch_async(v16, block);
    }

    else
    {
      v17 = [(HMDHomeWalletKeyManager *)v11 passLibrary];
      v18 = [(HMDHomeWalletKeyManager *)v11 passSerialNumber];
      v19 = [v17 walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v18 flow:v9];

      if (v19)
      {
        v20 = [(HMDHomeWalletKeyManager *)v11 workQueue];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __66__HMDHomeWalletKeyManager_handleHomeAccessoryRemovedNotification___block_invoke_387;
        v22[3] = &unk_2797359B0;
        v23 = v8;
        v24 = v11;
        dispatch_async(v20, v22);
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

- (void)handleAccessorySupportsWalleyKeyDidChangeNotification:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
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

  v8 = [v7 home];
  v9 = [(HMDHomeWalletKeyManager *)self home];

  if (v8 != v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v8 uuid];
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
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
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v7 shortDescription];
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      v15 = "%{public}@Not handling wallet key support change, since support was disabled for accessory: %@";
      goto LABEL_13;
    }

LABEL_14:

    objc_autoreleasePoolPop(v10);
    goto LABEL_15;
  }

  v16 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [v16 UUID];
    *buf = 138543618;
    v30 = v20;
    v31 = 2112;
    v32 = v21;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling AccessorySupportsWalletKeyDidChangeNotification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = [(HMDHomeWalletKeyManager *)v18 workQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __81__HMDHomeWalletKeyManager_handleAccessorySupportsWalleyKeyDidChangeNotification___block_invoke;
  v25[3] = &unk_279734870;
  v25[4] = v18;
  v26 = v7;
  v27 = v16;
  v28 = v4;
  v23 = v16;
  dispatch_async(v22, v25);

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

- (void)handleHomeAddedAccessoryNotification:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDNotificationAddedAccessoryKey"];

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
      v9 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v9 UUID];
        *buf = 138543618;
        v28 = v13;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling accessory added", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      v15 = [(HMDHomeWalletKeyManager *)v11 workQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__HMDHomeWalletKeyManager_handleHomeAddedAccessoryNotification___block_invoke;
      v23[3] = &unk_279734870;
      v23[4] = v11;
      v24 = v9;
      v25 = v4;
      v26 = v8;
      v16 = v9;
      dispatch_async(v15, v23);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v8 shortDescription];
        *buf = 138543618;
        v28 = v20;
        v29 = 2112;
        v30 = v21;
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

- (void)handleHomeNameChangedNotification:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    *buf = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling home name changed notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeWalletKeyManager *)v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDHomeWalletKeyManager_handleHomeNameChangedNotification___block_invoke;
  block[3] = &unk_279734960;
  v16 = v4;
  v17 = v7;
  v18 = v5;
  v12 = v5;
  v13 = v4;
  dispatch_async(v11, block);

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
  v3 = [(HMDHomeWalletKeyManager *)self home];
  if (v3)
  {
    [(HMDHomeWalletKeyManager *)self setIsHomeBeingRemoved:1];
    v4 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 UUID];
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling home will be removed: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDHomeWalletKeyManager *)v6 updateWalletKeyStateToState:10 flow:v4];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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

- (void)handleHomeUserRemovedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDHomeWalletKeyManager_handleHomeUserRemovedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v3 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 UUID];
    *buf = 138543618;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling notification did exit lost mode with auth complete notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [(HMDHomeWalletKeyManager *)v5 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HMDHomeWalletKeyManager_handleLostModeManagerDidExitLostModeWithAuthCompleteNotification__block_invoke;
  v12[3] = &unk_2797359B0;
  v12[4] = v5;
  v13 = v3;
  v10 = v3;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleLostModeUpdated
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeWalletKeyManager *)self lostModeManager];
  v4 = [v3 isLost];

  v5 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 UUID];
    v11 = HMFBooleanToString();
    *buf = 138543874;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling notification lost mode updated to: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [(HMDHomeWalletKeyManager *)v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDHomeWalletKeyManager_handleLostModeUpdated__block_invoke;
  block[3] = &unk_279734938;
  v17 = v4;
  block[4] = v7;
  v16 = v5;
  v13 = v5;
  dispatch_async(v12, block);

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

- (void)handleApplicationUninstalled:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 bundleIdentifier];

  v8 = *MEMORY[0x277CCFE40];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(HMDHomeWalletKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDHomeWalletKeyManager_handleApplicationUninstalled___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v10, block);
  }
}

- (void)handleApplicationInstalled:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
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

  v8 = [v7 bundleIdentifier];
  v9 = *MEMORY[0x277CCFE40];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v11 UUID];
      *buf = 138543618;
      v32 = v15;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Updating wallet key because Home App was installed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [(HMDHomeWalletKeyManager *)v13 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HMDHomeWalletKeyManager_handleApplicationInstalled___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = v13;
    dispatch_async(v17, block);
LABEL_12:

    goto LABEL_13;
  }

  v18 = [v7 bundleIdentifier];
  v19 = [v18 isEqualToString:@"com.apple.Passbook"];

  if (v19)
  {
    v20 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v20 UUID];
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Auto adding wallet key after wallet app installed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = [(HMDHomeWalletKeyManager *)v22 workQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__HMDHomeWalletKeyManager_handleApplicationInstalled___block_invoke_375;
    v28[3] = &unk_2797359B0;
    v28[4] = v22;
    v29 = v20;
    v11 = v20;
    dispatch_async(v26, v28);

    v17 = v29;
    goto LABEL_12;
  }

LABEL_13:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleSystemInfoMigrationUpdatedNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self systemInfo];
  v6 = [v5 isMigrating];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
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
    v11 = [(HMDHomeWalletKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDHomeWalletKeyManager_handleSystemInfoMigrationUpdatedNotification___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v11, block);
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

- (void)handleAccessorySupportsAccessCodeDidChangeNotification:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
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

  v8 = [v7 home];
  v9 = [(HMDHomeWalletKeyManager *)self home];

  if (v8 == v9)
  {
    v15 = [(HMDHomeWalletKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDHomeWalletKeyManager_handleAccessorySupportsAccessCodeDidChangeNotification___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v15, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v8 uuid];
      *buf = 138543618;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Not handling access code support change for accessory in other home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)accessoryManager:(id)a3 didUpdateWalletKeyColor:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    v14 = HMHomeWalletKeyColorAsString();
    *buf = 138543874;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling wallet key color did update delegate callback: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__HMDHomeWalletKeyManager_accessoryManager_didUpdateWalletKeyColor___block_invoke;
  v17[3] = &unk_279724F98;
  v17[4] = v10;
  v17[5] = a4;
  v15 = _Block_copy(v17);
  [(HMDHomeWalletKeyManager *)v10 enqueueWalletKeyUpdateOperation:v15 flow:v8];

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

- (void)passLibrary:(id)a3 didRemovePassWithSerialNumber:(id)a4 typeIdentifier:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  if (v12 && [v9 isEqualToString:v12] && objc_msgSend(v10, "isEqualToString:", @"paymentpass.com.apple.dev1"))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v19 = [(HMDHomeWalletKeyManager *)v14 uuid];
    v20 = [v18 initWithTarget:v19];

    [v17 setDestination:v20];
    [v17 setRequiresWalletKeyEntitlement];
    v21 = [(HMDHomeWalletKeyManager *)v14 messageDispatcher];
    [v21 sendMessage:v17];

    v22 = [(HMDHomeWalletKeyManager *)v14 pendingUpdateWalletKeyOperations];
    [v22 removeAllObjects];

    v23 = [(HMDHomeWalletKeyManager *)v14 home];
    v24 = [v23 nfcReaderKeyManager];
    v25 = [v24 accessoryManager];
    [v25 handleWalletKeyRemoved];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)passLibrary:(id)a3 didAddPassWithSerialNumber:(id)a4 typeIdentifier:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  if (v12 && [v9 isEqualToString:v12] && objc_msgSend(v10, "isEqualToString:", @"paymentpass.com.apple.dev1"))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v19 = [(HMDHomeWalletKeyManager *)v14 uuid];
    v20 = [v18 initWithTarget:v19];

    [v17 setDestination:v20];
    [v17 setRequiresWalletKeyEntitlement];
    v21 = [(HMDHomeWalletKeyManager *)v14 messageDispatcher];
    [v21 sendMessage:v17];
  }

  v22 = [(HMDHomeWalletKeyManager *)self passLibrary];
  v23 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v24 = [v22 walletKeyWithTypeIdentifier:v10 serialNumber:v9 flow:v23];

  if (v24)
  {
    v25 = [(HMDHomeWalletKeyManager *)self home];
    v26 = [v25 nfcReaderKey];

    if (v26)
    {
      v27 = [(HMDHomeWalletKeyManager *)self dataSource];
      v28 = [v26 identifier];
      v29 = [v28 hmf_hexadecimalRepresentation];
      [v27 persistNumberValueToNoBackupStore:0 withKey:v29];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = self;
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
  v2 = [(HMDHomeWalletKeyManager *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)autoAddWalletKeyWithReason:(id)a3 flow:(id)a4 completion:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v9 UUID];
    *buf = 138543874;
    v40 = v15;
    v41 = 2112;
    v42 = v16;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Auto adding wallet key with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [(HMDHomeWalletKeyManager *)v13 home];
  v18 = [v17 homeManager];
  v19 = [v18 homeUUIDsWithAutoAddWalletKeySuppressed];
  v20 = [v17 uuid];
  v21 = [v19 containsObject:v20];

  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v13;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v9 UUID];
      *buf = 138543618;
      v40 = v25;
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot auto add wallet key because it is suppressed", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_12:
    v10[2](v10, 0, v27);
    goto LABEL_13;
  }

  v38 = 0;
  v28 = [(HMDHomeWalletKeyManager *)v13 canAutoAddWalletKeyWithError:&v38];
  v27 = v38;
  if (!v28)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v13;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [v9 UUID];
      *buf = 138544130;
      v40 = v32;
      v41 = 2112;
      v42 = v33;
      v43 = 2112;
      v44 = v8;
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
  v35[4] = v13;
  v36 = v9;
  v37 = v10;
  [(HMDHomeWalletKeyManager *)v13 fetchShouldSuppressWalletNotificationWithCompletion:v35];

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

- (void)fetchShouldAutoEnableExpressWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDHomeWalletKeyManager *)self dataSource];
  v6 = [v5 isWatch];

  if (v6)
  {
    v7 = [(HMDHomeWalletKeyManager *)self dataSource];
    [v7 canNotifyAboutExpressModeWithCompletion:v8];
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (void)updateWalletKeyAccessCodeFieldWithReason:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Updating wallet key access code field with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HMDHomeWalletKeyManager_updateWalletKeyAccessCodeFieldWithReason___block_invoke;
  aBlock[3] = &unk_279724F20;
  aBlock[4] = v8;
  v12 = _Block_copy(aBlock);
  [(HMDHomeWalletKeyManager *)v8 enqueueWalletKeyUpdateOperation:v12 flow:v6];

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

- (void)fetchShouldSuppressWalletNotificationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDHomeWalletKeyManager *)self dataSource];
  v7 = [v6 isWatch];

  if (v7)
  {
    v4[2](v4, 1);
  }

  else
  {
    v8 = [(HMDHomeWalletKeyManager *)self applicationRegistry];
    v9 = *MEMORY[0x277CCFE40];
    v10 = [v8 applicationInfoForBundleIdentifier:v9];

    if (v10)
    {
      v11 = [(HMDHomeWalletKeyManager *)self bulletinBoard];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __79__HMDHomeWalletKeyManager_fetchShouldSuppressWalletNotificationWithCompletion___block_invoke;
      v12[3] = &unk_279724EF8;
      v12[4] = self;
      v13 = v4;
      [v11 fetchAreUserNotificationsEnabledWithCompletion:v12];
    }

    else
    {
      v4[2](v4, 0);
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

- (void)syncDeviceCredentialKeyForAccessory:(id)a3 paymentApplications:(id)a4 flow:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  v13 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v17 = v27 = v9;
    [v13 UUID];
    v26 = v12;
    v19 = v18 = v10;
    v20 = [v18 UUID];
    v21 = [v8 uuid];
    *buf = 138544130;
    v32 = v17;
    v33 = 2112;
    v34 = v19;
    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Syncing device credential key to accessory: %@", buf, 0x2Au);

    v10 = v18;
    v12 = v26;

    v9 = v27;
  }

  objc_autoreleasePoolPop(v14);
  v22 = [(HMDHomeWalletKeyManager *)v15 passLibrary];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__HMDHomeWalletKeyManager_syncDeviceCredentialKeyForAccessory_paymentApplications_flow___block_invoke;
  v28[3] = &unk_279724ED0;
  v28[4] = v15;
  v29 = v13;
  v30 = v8;
  v23 = v8;
  v24 = v13;
  [v22 fetchTransactionKeyForPassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v12 completion:v28];

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

- (void)updateWalletKeyStateToState:(int64_t)a3 flow:(id)a4
{
  v6 = a4;
  v7 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HMDHomeWalletKeyManager_updateWalletKeyStateToState_flow___block_invoke;
  aBlock[3] = &unk_279724EA8;
  v11 = v6;
  v12 = a3;
  aBlock[4] = self;
  v8 = v6;
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

- (id)walletKeyByAddingAccessCodeToWalletKey:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDHomeWalletKeyManager *)self home];
  v7 = [v4 mutableCopy];
  v8 = [v6 currentUser];
  v9 = [v8 accessCode];

  v10 = [v4 state];
  if (v10 == 1 && v9 && ([v6 hasAnyAccessoryWithWalletKeyAndAccessCodeSupport] & 1) != 0)
  {
    [v7 setAccessCode:v9];
    v11 = [(HMDHomeWalletKeyManager *)self applicationRegistry];
    v12 = *MEMORY[0x277CCFE40];
    v13 = [v11 applicationInfoForBundleIdentifier:v12];

    v14 = [(HMDHomeWalletKeyManager *)self dataSource];
    LOBYTE(v11) = [v14 isWatch];

    if ((v11 & 1) == 0 && v13)
    {
      v15 = [MEMORY[0x277CBEBC0] URLWithString:@"com.apple.Home-private://userLockSettings"];
      v16 = [v6 contextSPIUniqueIdentifier];
      v17 = [v16 UUIDString];
      v18 = [v15 URLByAppendingPathComponent:v17];

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

- (id)passSerialNumberWithUserUUID:(id)a3
{
  v4 = MEMORY[0x277CD1A60];
  v5 = a3;
  v6 = [(HMDHomeWalletKeyManager *)self uuid];
  v7 = [v4 passSerialNumberWithHomeUUID:v6 userUUID:v5];

  return v7;
}

- (id)paymentApplicationsForWalletKey:(id)a3 validateNFCInfo:(BOOL)a4 defaultPaymentApplication:(id)a5 doesAnyAccessorySupportACB:(BOOL)a6 flow:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = [v11 nfcInfos];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke;
  v20[3] = &unk_279724E80;
  v24 = a4;
  v20[4] = self;
  v21 = v13;
  v22 = v12;
  v23 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = [v14 na_map:v20];

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

- (id)updatePassJSONAtURL:(id)a3 withWalletKey:(id)a4 options:(int64_t)a5 validateNFCInfo:(BOOL)a6 flow:(id)a7
{
  v128 = a6;
  v161 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v131 = a4;
  v130 = a7;
  v12 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v130 UUID];
    v18 = HMFBooleanToString();
    *buf = 138544642;
    v150 = v16;
    v151 = 2112;
    v152 = v17;
    v153 = 2112;
    v154 = v11;
    v155 = 2112;
    v156 = v131;
    v157 = 2048;
    v158 = a5;
    v159 = 2112;
    v160 = v18;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating pass JSON at URL: %@, withWalletKey: %@, options: %ld, validateNFCInfo: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [(HMDHomeWalletKeyManager *)v14 fileManager];
  v133 = 0;
  v20 = [v19 JSONObjectWithURL:v11 error:&v133];
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
      v26 = [MEMORY[0x277CCABB0] numberWithBool:a5 & 1];
      [(__CFString *)v25 setObject:v26 forKeyedSubscript:@"muteReadyForUseNotification"];

      v27 = [(__CFString *)v131 serialNumber];
      [(__CFString *)v25 setObject:v27 forKeyedSubscript:@"serialNumber"];

      v28 = [(__CFString *)v131 typeIdentifier];
      [(__CFString *)v25 setObject:v28 forKeyedSubscript:@"passTypeIdentifier"];

      v29 = [(__CFString *)v131 walletKeyDescription];
      [(__CFString *)v25 setObject:v29 forKeyedSubscript:@"description"];

      [(__CFString *)v25 setObject:@"appleHomeKey" forKeyedSubscript:@"liveRenderType"];
      v30 = [(__CFString *)v131 passColorValue];
      [(__CFString *)v25 setObject:v30 forKeyedSubscript:@"homeKeyLiveType"];

      v31 = [(__CFString *)v131 labelColorValue];
      v126 = v25;
      [(__CFString *)v25 setObject:v31 forKeyedSubscript:@"foregroundColor"];

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
      v36 = [v34 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;

      v39 = [v38 mutableCopy];
      v40 = objc_autoreleasePoolPush();
      v41 = v14;
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
          [v130 UUID];
          v47 = v46 = v11;
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

          v11 = v46;
          v20 = v49;
          v44 = v48;
        }

        objc_autoreleasePoolPop(v40);
        v51 = [(HMDHomeWalletKeyManager *)v41 paymentApplicationsForWalletKey:v131 validateNFCInfo:v128 defaultPaymentApplication:v127 doesAnyAccessorySupportACB:0 flow:v130];
        v52 = v51;
        if (v51 && ![v51 hmf_isEmpty])
        {
          v120 = v41;
          v122 = v20;
          v129 = v11;
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
            v81 = [(__CFString *)v131 homeName];

            if (v81)
            {
              v146[1] = @"value";
              v147[0] = @"homeName";
              v146[0] = @"key";
              v82 = [(__CFString *)v131 homeName];
              v147[1] = v82;
              v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
              v148 = v83;
              v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v148 count:1];
              [v80 setObject:v84 forKeyedSubscript:@"headerFields"];
            }

            v85 = [MEMORY[0x277CBEB18] array];
            v86 = [MEMORY[0x277CBEB18] array];
            v87 = [(__CFString *)v131 accessCode];

            v124 = v85;
            if (v87)
            {
              v144[0] = @"key";
              v144[1] = @"label";
              v145[0] = @"arbitrary_supplementary_field_accessCode";
              v145[1] = @"ACCESS_CODE";
              v144[2] = @"value";
              v88 = [(__CFString *)v131 accessCode];
              v145[2] = v88;
              v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:3];
              [v86 addObject:v89];

              v85 = v124;
              [v124 addObject:@"arbitrary_supplementary_field_accessCode"];
            }

            v123 = v86;
            v90 = [(__CFString *)v131 changeAccessCodeHomeAppCustomURL];

            if (v90)
            {
              v142[0] = @"key";
              v142[1] = @"value";
              v143[0] = @"arbitrary_supplementary_field_changeAccessCode";
              v143[1] = @"CHANGE_ACCESS_CODE_BUTTON";
              v142[2] = @"link";
              v91 = [(__CFString *)v131 changeAccessCodeHomeAppCustomURL];
              v92 = [v91 absoluteString];
              v143[2] = v92;
              v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:3];
              [v86 addObject:v93];

              v85 = v124;
              [v124 addObject:@"arbitrary_supplementary_field_changeAccessCode"];
            }

            if ([v85 count])
            {
              v140[0] = @"key";
              v140[1] = @"label";
              v141[0] = @"arbitrary_supplementary_field_personalPinCode";
              v141[1] = @"PERSONAL_PIN_CODE";
              v140[2] = @"link";
              v141[2] = @"wallet://card/card-id/sections?sections=access_code&authenticationRequirment=deviceOwner&title=PERSONAL_PIN_CODE_TITLE";
              v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:3];
              [v86 addObject:v94];

              v95 = [v86 copy];
              [v80 setObject:v95 forKeyedSubscript:@"backFields"];

              v136 = @"arbitrary_supplementary_field_personalPinCode";
              v137 = @"rows";
              v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
              v138 = v96;
              v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
              v139[0] = v97;
              v134[0] = @"rows";
              v98 = [v85 copy];
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
            v101 = [(HMDHomeWalletKeyManager *)v120 fileManager];
            v132 = v125;
            v102 = [v101 writeJSONObject:v126 toURL:v129 error:&v132];
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
                v109 = [v130 UUID];
                *buf = 138544130;
                v150 = v108;
                v151 = 2112;
                v152 = v109;
                v153 = 2112;
                v154 = v126;
                v155 = 2112;
                v156 = v129;
                _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wrote pass JSON dict: %@, to URL: %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v104);
              v62 = v126;
              v61 = [(__CFString *)v126 copy];
              v11 = v129;
            }

            else
            {
              v20 = v122;
              v44 = v119;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                v115 = HMFGetLogIdentifier();
                v116 = [v130 UUID];
                *buf = 138544130;
                v150 = v115;
                v151 = 2112;
                v152 = v116;
                v153 = 2112;
                v154 = v129;
                v155 = 2112;
                v156 = v103;
                _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to write pass JSON dict to URL %@:%@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v104);
              v61 = 0;
              v11 = v129;
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
              v114 = [v130 UUID];
              *buf = 138544130;
              v150 = v113;
              v151 = 2112;
              v152 = v114;
              v153 = 2112;
              v154 = @"paymentCard";
              v155 = 2112;
              v156 = v22;
              _os_log_impl(&dword_2531F8000, v112, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Key payment card does not exist in pass json %@:%@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v110);
            v61 = 0;
            v11 = v129;
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
            v57 = v56 = v11;
            [v130 UUID];
            v58 = v44;
            v60 = v59 = v20;
            *buf = 138543618;
            v150 = v57;
            v151 = 2112;
            v152 = v60;
            _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not create any payment applications", buf, 0x16u);

            v20 = v59;
            v44 = v58;

            v11 = v56;
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
          [v130 UUID];
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
      v69 = v14;
      v70 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v72 = v71 = v21;
        v73 = [v130 UUID];
        *buf = 138543874;
        v150 = v72;
        v151 = 2112;
        v152 = v73;
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
    v64 = v14;
    v65 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = HMFGetLogIdentifier();
      v67 = [v130 UUID];
      *buf = 138544130;
      v150 = v66;
      v151 = 2112;
      v152 = v67;
      v153 = 2112;
      v154 = v11;
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

- (void)createPassDirectoryWithWalletKey:(id)a3 options:(int64_t)a4 shouldSkipResourceFiles:(BOOL)a5 shouldCreateZipArchive:(BOOL)a6 validateNFCInfo:(BOOL)a7 flow:(id)a8 completion:(id)a9
{
  LODWORD(v41) = a7;
  HIDWORD(v41) = a6;
  v10 = a5;
  v64 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v13 = a8;
  v42 = a9;
  v14 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v13 UUID];
    v20 = HMFBooleanToString();
    v21 = HMFBooleanToString();
    *buf = 138544642;
    v53 = v18;
    v54 = 2112;
    v55 = v19;
    v56 = 2112;
    v57 = v43;
    v58 = 2048;
    v59 = a4;
    v60 = 2112;
    v61 = v20;
    v62 = 2112;
    v63 = v21;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating pass directory with wallet key: %@, options: %ld, shouldSkipResourceFiles: %@, shouldCreateZipArchive: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v15);
  if (v10)
  {
    [(HMDHomeWalletKeyManager *)v16 createPassDirectoryWithoutResourceFilesWithFlow:v13];
  }

  else
  {
    [(HMDHomeWalletKeyManager *)v16 createPassDirectoryWithResourceFilesWithFlow:v13];
  }
  v22 = ;
  v23 = v22;
  if (v22)
  {
    v24 = [v22 URLByAppendingPathComponent:@"pass.json"];
    v25 = [(HMDHomeWalletKeyManager *)v16 updatePassJSONAtURL:v24 withWalletKey:v43 options:a4 validateNFCInfo:v41 flow:v13];
    if (v25)
    {
      objc_initWeak(buf, v16);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __147__HMDHomeWalletKeyManager_createPassDirectoryWithWalletKey_options_shouldSkipResourceFiles_shouldCreateZipArchive_validateNFCInfo_flow_completion___block_invoke;
      v44[3] = &unk_279731E90;
      objc_copyWeak(&v49, buf);
      v48 = v42;
      v50 = BYTE4(v41);
      v45 = v23;
      v46 = v25;
      v47 = v13;
      [(HMDHomeWalletKeyManager *)v16 addISOCredentialWithPassAtURL:v45 walletKey:v43 flow:v47 completion:v44];

      objc_destroyWeak(&v49);
      objc_destroyWeak(buf);
      v26 = 0;
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v16;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [v13 UUID];
        *buf = 138543874;
        v53 = v30;
        v54 = 2112;
        v55 = v31;
        v56 = 2112;
        v57 = v24;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update pass JSON at URL: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      v32 = [(HMDHomeWalletKeyManager *)v28 fileManager];
      v51 = 0;
      v33 = [v32 removeItemAtURL:v23 error:&v51];
      v26 = v51;

      if ((v33 & 1) == 0)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = v28;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          v38 = [v13 UUID];
          *buf = 138544130;
          v53 = v37;
          v54 = 2112;
          v55 = v38;
          v56 = 2112;
          v57 = v23;
          v58 = 2112;
          v59 = v26;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove item at URL %@:%@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v34);
      }

      v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{52, v41}];
      (*(v42 + 2))(v42, 0, 0, v39);
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v42 + 2))(v42, 0, 0, v26);
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

- (id)createPassDirectoryWithoutResourceFilesWithFlow:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 UUID];
    *buf = 138543618;
    v51 = v9;
    v52 = 2112;
    v53 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating pass directory without resources files", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 resourceURL];

  v13 = [v12 URLByAppendingPathComponent:@"HomeKey-Wallet.pass"];
  v14 = [(HMDHomeWalletKeyManager *)v7 passLibrary];
  v15 = [v14 createTemporaryPassDirectoryURL];

  v16 = [(HMDHomeWalletKeyManager *)v7 fileManager];
  v49 = 0;
  v17 = [v16 createDirectoryAtURL:v15 withIntermediateDirectories:0 attributes:0 error:&v49];
  v18 = v49;

  if (v17)
  {
    v46 = v4;
    v19 = [v13 URLByAppendingPathComponent:@"pass.json"];
    v20 = [v15 URLByAppendingPathComponent:@"pass.json"];
    v21 = [(HMDHomeWalletKeyManager *)v7 fileManager];
    v48 = v18;
    v22 = [v21 copyItemAtURL:v19 toURL:v20 error:&v48];
    v23 = v48;

    if (v22)
    {
      v18 = v23;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v7;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v33 = v44 = v30;
        v34 = [v46 UUID];
        *buf = 138544130;
        v51 = v33;
        v52 = 2112;
        v53 = v34;
        v54 = 2112;
        v55 = v15;
        v56 = 2112;
        v57 = v23;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create directory at path %@:%@", buf, 0x2Au);

        v30 = v44;
      }

      objc_autoreleasePoolPop(v30);
      v35 = [(HMDHomeWalletKeyManager *)v31 fileManager];
      v47 = v23;
      v36 = [v35 removeItemAtURL:v15 error:&v47];
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
          v41 = [v46 UUID];
          *buf = 138544130;
          v51 = v40;
          v52 = 2112;
          v53 = v41;
          v54 = 2112;
          v55 = v15;
          v56 = 2112;
          v57 = v18;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove item at URL %@:%@", buf, 0x2Au);

          v37 = v45;
        }

        objc_autoreleasePoolPop(v37);
      }
    }

    v4 = v46;
    v29 = v15;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v7;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v4 UUID];
      *buf = 138544130;
      v51 = v27;
      v52 = 2112;
      v53 = v28;
      v54 = 2112;
      v55 = v15;
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

- (id)createPassDirectoryWithResourceFilesWithFlow:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 UUID];
    *buf = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating pass directory with resources files", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 resourceURL];

  v13 = [v12 URLByAppendingPathComponent:@"HomeKey-Wallet.pass"];
  v14 = [(HMDHomeWalletKeyManager *)v7 passLibrary];
  v15 = [v14 createTemporaryPassDirectoryURL];

  v16 = [(HMDHomeWalletKeyManager *)v7 fileManager];
  v27 = 0;
  v17 = [v16 copyItemAtURL:v13 toURL:v15 error:&v27];
  v18 = v27;

  if (v17)
  {
    v19 = v15;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v4 UUID];
      *buf = 138544386;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v13;
      v34 = 2112;
      v35 = v15;
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

- (void)addISOCredentialV1WithPassAtURL:(id)a3 nfcInfo:(id)a4 flow:(id)a5 completion:(id)a6
{
  v8 = a6;
  v7 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8[2](v8, 0);
}

- (void)addISOCredentialV0WithPassAtURL:(id)a3 nfcInfo:(id)a4 flow:(id)a5 completion:(id)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [v11 deviceCredentialKey];
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v15)
  {
    if (v19)
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v12 UUID];
      *buf = 138543618;
      v46 = v20;
      v47 = 2112;
      v48 = v21;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating iso credential...", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = [(HMDHomeWalletKeyManager *)v17 keychainStore];
    v44 = 0;
    v23 = [v22 getLocalPairingIdentity:&v44];
    v24 = v44;

    if (v23)
    {
      [(HMDHomeWalletKeyManager *)v17 isoCredentialFactory];
      v26 = v25 = v10;
      v27 = (v26)[2](v26, v23, v15);

      v10 = v25;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __83__HMDHomeWalletKeyManager_addISOCredentialV0WithPassAtURL_nfcInfo_flow_completion___block_invoke;
      v39[3] = &unk_279724E58;
      v39[4] = v17;
      v40 = v12;
      v43 = v13;
      v41 = v11;
      v42 = v25;
      [v27 encodeWithCompletion:v39];
    }

    else
    {
      v38 = v10;
      v30 = objc_autoreleasePoolPush();
      v31 = v17;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        [v12 UUID];
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
      v27 = [MEMORY[0x277CBEB38] dictionary];
      [v27 setObject:v24 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 userInfo:v27];
      (*(v13 + 2))(v13, v35);

      v10 = v38;
    }
  }

  else
  {
    if (v19)
    {
      v28 = HMFGetLogIdentifier();
      v29 = [v12 UUID];
      *buf = 138543618;
      v46 = v28;
      v47 = 2112;
      v48 = v29;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not adding ISO credential because there is no device credential key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    (*(v13 + 2))(v13, 0);
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

- (void)addISOCredentialWithPassAtURL:(id)a3 walletKey:(id)a4 flow:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [a4 nfcInfos];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __83__HMDHomeWalletKeyManager_addISOCredentialWithPassAtURL_walletKey_flow_completion___block_invoke;
  v26[3] = &unk_279724E08;
  v26[4] = self;
  v27 = v10;
  v28 = v11;
  v14 = v11;
  v15 = v10;
  v16 = [v13 na_map:v26];
  v17 = [v16 combineAllFutures];
  v18 = MEMORY[0x277D2C938];
  v19 = [(HMDHomeWalletKeyManager *)self workQueue];
  v20 = [v18 schedulerWithDispatchQueue:v19];
  v21 = [v17 reschedule:v20];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __83__HMDHomeWalletKeyManager_addISOCredentialWithPassAtURL_walletKey_flow_completion___block_invoke_2;
  v24[3] = &unk_279724E30;
  v25 = v12;
  v22 = v12;
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

- (void)handlePendingWalletKeyUpdateOperationsWithFlow:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (![(HMDHomeWalletKeyManager *)self isWalletKeyUpdateOperationInProgress])
  {
    v6 = [(HMDHomeWalletKeyManager *)self pendingUpdateWalletKeyOperations];
    v7 = [v6 hmf_isEmpty];

    if ((v7 & 1) == 0)
    {
      v8 = [(HMDHomeWalletKeyManager *)self pendingUpdateWalletKeyOperations];
      v9 = [v8 copy];

      v10 = [(HMDHomeWalletKeyManager *)self pendingUpdateWalletKeyOperations];
      [v10 removeAllObjects];

      v11 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
      v12 = [(HMDHomeWalletKeyManager *)self passLibrary];
      v13 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
      v14 = [v12 walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v13 flow:v4];

      if (!v14)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v4 UUID];
          *buf = 138543874;
          v68 = v18;
          v69 = 2112;
          v70 = v19;
          v71 = 2112;
          v72 = v11;
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
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v4 UUID];
          v20 = [v14 nfcInfos];
          *buf = 138543874;
          v68 = v18;
          v69 = 2112;
          v70 = v19;
          v71 = 2112;
          v72 = v20;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Can't update wallet key because we are missing NFC info for the current wallet key. NFCInfo: %@", buf, 0x20u);

LABEL_9:
          goto LABEL_10;
        }

        goto LABEL_10;
      }

      v55 = v14;
      v56 = v11;
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
        v43 = [v21 isMissingNFCInfo];
        v44 = objc_autoreleasePoolPush();
        v45 = self;
        v46 = HMFGetOSLogHandle();
        v47 = v46;
        if (v43)
        {
          v9 = v57;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v48 = HMFGetLogIdentifier();
            v49 = [v4 UUID];
            v50 = [v21 nfcInfos];
            *buf = 138543874;
            v68 = v48;
            v69 = 2112;
            v70 = v49;
            v71 = 2112;
            v72 = v50;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update wallet key because we have lost NFC info: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v44);
        }

        else
        {
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v51 = HMFGetLogIdentifier();
            v52 = [v4 UUID];
            *buf = 138544130;
            v68 = v51;
            v69 = 2112;
            v70 = v52;
            v71 = 2112;
            v72 = v54;
            v73 = 2112;
            v74 = v21;
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating home key in Wallet from %@ to %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v44);
          [(HMDHomeWalletKeyManager *)v45 setIsWalletKeyUpdateOperationInProgress:1];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke;
          v58[3] = &unk_279724DE0;
          v58[4] = v45;
          v59 = v4;
          v61 = v25 & 1;
          v60 = v21;
          [(HMDHomeWalletKeyManager *)v45 createPassDirectoryWithWalletKey:v60 options:0 shouldSkipResourceFiles:0 shouldCreateZipArchive:1 validateNFCInfo:1 flow:v59 completion:v58];

          v9 = v57;
        }

        v11 = v56;
        goto LABEL_40;
      }

      v32 = [(HMDHomeWalletKeyManager *)self passLibrary];
      v11 = v56;
      v33 = [v32 removePassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v56 flow:v4];

      v34 = objc_autoreleasePoolPush();
      v35 = self;
      v36 = HMFGetOSLogHandle();
      v37 = v36;
      if (v33)
      {
        v9 = v57;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          v39 = [v4 UUID];
          *buf = 138543618;
          v68 = v38;
          v69 = 2112;
          v70 = v39;
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
          v39 = [v4 UUID];
          *buf = 138543618;
          v68 = v38;
          v69 = 2112;
          v70 = v39;
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

- (void)enqueueWalletKeyUpdateOperation:(id)a3 flow:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDHomeWalletKeyManager *)self pendingUpdateWalletKeyOperations];
  v10 = _Block_copy(v6);
  [v9 addObject:v10];

  if ([(HMDHomeWalletKeyManager *)self isWalletKeyUpdateOperationInProgress]|| ([(HMDHomeWalletKeyManager *)self addWalletKeyFuture], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v7 UUID];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wallet key update operation in progress, update will happen later", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    [(HMDHomeWalletKeyManager *)self handlePendingWalletKeyUpdateOperationsWithFlow:v7];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)syncDeviceCredentialKey:(id)a3 ofType:(int64_t)a4 flow:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    v17 = [v9 UUID];
    *buf = 138543874;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Syncing device credential key", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v18 = [(HMDHomeWalletKeyManager *)v13 home];
  v19 = [v18 nfcReaderKeyManager];
  v20 = [v19 accessoryManager];

  if (v20)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__HMDHomeWalletKeyManager_syncDeviceCredentialKey_ofType_flow___block_invoke;
    v27[3] = &unk_2797358C8;
    v27[4] = v13;
    v28 = v11;
    [v20 configureAllAccessoriesWithDeviceCredentialKey:v8 ofType:a4 flow:v28 completion:v27];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v13;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v11 UUID];
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
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
  v3 = [(HMDHomeWalletKeyManager *)self dataSource];
  v4 = [v3 isWatch];

  if ((v4 & 1) == 0)
  {
    v5 = [(HMDHomeWalletKeyManager *)self home];
    v6 = v5;
    if (v5)
    {
      if ([v5 hasPostedWalletKeyOnboardingBulletinForAnyAccessory])
      {
        v7 = [(HMDHomeWalletKeyManager *)self bulletinBoard];
        [v7 removeWalletKeyOnboardingBulletinForHome:v6];
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
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
  v3 = [(HMDHomeWalletKeyManager *)self dataSource];
  v4 = [v3 isWatch];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
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
    v9 = [(HMDHomeWalletKeyManager *)self home];
    if (v9)
    {
      v10 = [(HMDHomeWalletKeyManager *)self bulletinBoard];
      [v10 insertWalletKeyExpressModeSetUpBulletinForHome:v9];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
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

- (void)enableExpressWithOptions:(int64_t)a3 flow:(id)a4 completion:(id)a5
{
  v6 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if ((v6 & 2) != 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v8 UUID];
      *buf = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Enabling express after adding home key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMDHomeWalletKeyManager *)v12 passLibrary];
    v17 = [(HMDHomeWalletKeyManager *)v12 passSerialNumber];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__HMDHomeWalletKeyManager_enableExpressWithOptions_flow_completion___block_invoke;
    v19[3] = &unk_279735168;
    v19[4] = v12;
    v20 = v8;
    v21 = v10;
    [v16 enableExpressWithAuthData:0 passTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v17 flow:v20 completion:v19];
  }

  else
  {
    (*(v9 + 2))(v9);
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

- (void)addWalletKey:(id)a3 withOptions:(int64_t)a4 assertion:(id)a5 flow:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v13);

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v12 UUID];
    v19 = HMHomeAddWalletKeyOptionsDescription();
    *buf = 138544130;
    v30 = v17;
    v31 = 2112;
    v32 = v18;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding wallet key: %@ with options: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke;
  v24[3] = &unk_279724DB8;
  v24[4] = v15;
  v25 = v12;
  v26 = v11;
  v27 = v10;
  v28 = a4;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  [(HMDHomeWalletKeyManager *)v15 createPassDirectoryWithWalletKey:v20 options:a4 shouldSkipResourceFiles:0 shouldCreateZipArchive:1 validateNFCInfo:1 flow:v22 completion:v24];

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

- (void)configureWalletPaymentApplicationsWithNFCReaderKey:(id)a3 serialNumber:(id)a4 homeUniqueIdentifier:(id)a5 homeGRK:(id)a6 flow:(id)a7 completion:(id)a8
{
  v11 = a8;
  v12 = a7;
  v13 = a3;
  v16 = [(HMDHomeWalletKeyManager *)self passLibrary];
  v14 = [v13 publicKeyExternalRepresentation];
  v15 = [v13 identifier];

  [v16 generateHomeKeyNFCInfoWithReaderPublicKey:v14 readerIdentifier:v15 flow:v12 completion:v11];
}

- (void)addWalletKeyWithOptions:(int64_t)a3 nfcReaderKey:(id)a4 flow:(id)a5 completion:(id)a6
{
  v82 = *MEMORY[0x277D85DE8];
  v58 = a4;
  v59 = a5;
  v9 = a6;
  v10 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v59 UUID];
    *buf = 138544130;
    v75 = v14;
    v76 = 2112;
    v77 = v15;
    v78 = 2048;
    v79 = a3;
    v80 = 2112;
    v81 = v58;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding wallet key with options: %ld, readerKey: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDHomeWalletKeyManager *)v12 home];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 name];
    if (v18)
    {
      v56 = [(HMDHomeWalletKeyManager *)v12 passSerialNumber];
      if (v56)
      {
        v19 = [(HMDHomeWalletKeyManager *)v12 addWalletKeyFuture];

        if (!v19)
        {
          v20 = objc_alloc_init(MEMORY[0x277D2C900]);
          [(HMDHomeWalletKeyManager *)v12 setAddWalletKeyFuture:v20];
        }

        v21 = [(HMDHomeWalletKeyManager *)v12 addWalletKeyFuture];
        objc_initWeak(&location, v12);
        v22 = [(HMDHomeWalletKeyManager *)v12 addWalletKeyFuture];
        v23 = MEMORY[0x277D2C938];
        v24 = [(HMDHomeWalletKeyManager *)v12 workQueue];
        v25 = [v23 schedulerWithDispatchQueue:v24];
        v26 = [v22 reschedule:v25];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke;
        v68[3] = &unk_279724CA0;
        objc_copyWeak(&v72, &location);
        v54 = v59;
        v69 = v54;
        v71 = v9;
        v27 = v21;
        v70 = v27;
        v28 = [v26 addCompletionBlock:v68];

        v29 = v27;
        v30 = objc_autoreleasePoolPush();
        v31 = v12;
        if (v19)
        {
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            v34 = [v54 UUID];
            *buf = 138543618;
            v75 = v33;
            v76 = 2112;
            v77 = v34;
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
            v52 = [v54 UUID];
            *buf = 138543618;
            v75 = v51;
            v76 = 2112;
            v77 = v52;
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching home key supported", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_326;
          v60[3] = &unk_279724D40;
          v60[4] = v31;
          v61 = v54;
          v62 = v58;
          v63 = v56;
          v64 = v17;
          v65 = 0;
          v66 = v18;
          v67 = a3;
          [(HMDHomeWalletKeyManager *)v31 fetchHomeKeySupportedWithFlow:v61 completion:v60];
        }

        objc_destroyWeak(&v72);
        objc_destroyWeak(&location);
      }

      else
      {
        v45 = objc_autoreleasePoolPush();
        v46 = v12;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          v49 = [v59 UUID];
          *buf = 138543618;
          v75 = v48;
          v76 = 2112;
          v77 = v49;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, serial number is nil", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v45);
        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (*(v9 + 2))(v9, 0, v29);
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v12;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        v44 = [v59 UUID];
        *buf = 138543618;
        v75 = v43;
        v76 = 2112;
        v77 = v44;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, no name configured for home", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v57 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v9 + 2))(v9, 0, v57);
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v12;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      v39 = [v59 UUID];
      *buf = 138543618;
      v75 = v38;
      v76 = 2112;
      v77 = v39;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v9 + 2))(v9, 0, v18);
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

- (id)fetchWalletKeyColorOptionWithFlow:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 UUID];
    *buf = 138543618;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] fetchWalletKeyColorOption", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = objc_alloc_init(MEMORY[0x277D2C900]);
  v12 = [(HMDHomeWalletKeyManager *)v7 home];
  v13 = [v12 nfcReaderKeyManager];
  v14 = [v13 accessoryManager];

  if (v14)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __61__HMDHomeWalletKeyManager_fetchWalletKeyColorOptionWithFlow___block_invoke;
    v27[3] = &unk_2797307B8;
    v27[4] = v7;
    v28 = v4;
    v15 = v11;
    v29 = v15;
    [v14 fetchWalletKeyColorWithFlow:v28 completion:v27];
    v16 = v29;
    v17 = v15;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v4 UUID];
      *buf = 138543618;
      v31 = v21;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No accessory manager found, using default wallet key color", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = MEMORY[0x277CCABB0];
    v17 = [(HMDHomeWalletKeyManager *)v19 dataSource];
    v24 = [v23 numberWithInteger:{objc_msgSend(v17, "walletKeyColor")}];
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

- (void)fetchWalletKeyColorOptionWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDHomeWalletKeyManager_fetchWalletKeyColorOptionWithFlow_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)fetchOrCreateReaderKeyWithFlow:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v6 UUID];
    v29 = 138543618;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetch or create reader key", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMDHomeWalletKeyManager *)v10 home];
  v15 = v14;
  if (!v14)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v10;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v6 UUID];
      v29 = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, home is nil", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    goto LABEL_12;
  }

  if (([v14 hasAnyAccessoryWithWalletKeySupport] & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v10;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v6 UUID];
      v29 = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = v27;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home doesn't have any accessory that supports wallet key", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 userInfo:0];
LABEL_12:
    v16 = v22;
    v7[2](v7, 0, v22);
    goto LABEL_13;
  }

  v16 = [v15 nfcReaderKeyManager];
  [v16 fetchOrCreateReaderKeyWithRequiresPrivateKey:0 flow:v6 completion:v7];
LABEL_13:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)addWalletKeyWithOptions:(int64_t)a3 isOnboarding:(BOOL)a4 flow:(id)a5 completion:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v9 UUID];
    *buf = 138543874;
    v41 = v15;
    v42 = 2112;
    v43 = v16;
    v44 = 2048;
    v45 = a3;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding wallet key with options: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [(HMDHomeWalletKeyManager *)v13 passSerialNumber];
  if (v17)
  {
    v18 = [(HMDHomeWalletKeyManager *)v13 passLibrary];
    v19 = [v18 walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v17 flow:v9];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v13;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v9 UUID];
        *buf = 138543874;
        v41 = v23;
        v42 = 2112;
        v43 = v24;
        v44 = 2112;
        v45 = v19;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Home Key already exists in Wallet: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
      v10[2](v10, v19, v25);
    }

    else
    {
      v31 = [(HMDHomeWalletKeyManager *)v13 logEvent];

      if (!v31)
      {
        v32 = [HMDHomeKeySetupWalletLogEvent alloc];
        v33 = [(HMDHomeWalletKeyManager *)v13 workQueue];
        v34 = [(HMDHomeKeySetupWalletLogEvent *)v32 initWithQueue:v33];
        [(HMDHomeWalletKeyManager *)v13 setLogEvent:v34];
      }

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_isOnboarding_flow_completion___block_invoke;
      v36[3] = &unk_279724C78;
      v36[4] = v13;
      v37 = v9;
      v38 = v10;
      v39 = a3;
      [(HMDHomeWalletKeyManager *)v13 fetchOrCreateReaderKeyWithFlow:v37 completion:v36];

      v19 = 0;
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v13;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [v9 UUID];
      *buf = 138543874;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      v44 = 2112;
      v45 = 0;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find passSerialNumber: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v10[2](v10, 0, v19);
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

- (void)fetchPayloadForAddWalletKeyRemoteMessageWithFlow:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__HMDHomeWalletKeyManager_fetchPayloadForAddWalletKeyRemoteMessageWithFlow_completion___block_invoke;
  v10[3] = &unk_279724C50;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(HMDHomeWalletKeyManager *)self fetchOrCreateReaderKeyWithFlow:v7 completion:v10];
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

- (void)sendMessageWithName:(id)a3 payload:(id)a4 toWatches:(id)a5 completion:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v30 = a4;
  v11 = a5;
  v27 = a6;
  v12 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v12);

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
  v29 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v11;
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
        v19 = [(HMDHomeWalletKeyManager *)self uuid];
        v20 = [(HMDRemoteDeviceMessageDestination *)v18 initWithTarget:v19 device:v17];

        v21 = [[HMDRemoteMessage alloc] initWithName:v10 qualityOfService:25 destination:v20 payload:v30 type:0 timeout:1 secure:10.0];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __76__HMDHomeWalletKeyManager_sendMessageWithName_payload_toWatches_completion___block_invoke;
        v37[3] = &unk_279724C00;
        v37[4] = self;
        v37[5] = v17;
        v38 = v10;
        v41 = v52;
        v42 = v54;
        v43 = v51;
        v44 = v49;
        v39 = v29;
        v40 = v13;
        [(HMDRemoteMessage *)v21 setResponseHandler:v37];
        v22 = [(HMDHomeWalletKeyManager *)self messageDispatcher];
        [v22 sendMessage:v21];

        ++v16;
      }

      while (v14 != v16);
      v14 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v14);
  }

  v23 = [(HMDHomeWalletKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDHomeWalletKeyManager_sendMessageWithName_payload_toWatches_completion___block_invoke_320;
  block[3] = &unk_279724C28;
  v32 = v29;
  v33 = self;
  v34 = v27;
  v35 = v51;
  v36 = v49;
  v24 = v27;
  v25 = v29;
  dispatch_group_notify(v13, v23, block);

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

- (void)updateDeviceStateWithExpressEnablementConflictingPassDescription:(id)a3 flow:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__HMDHomeWalletKeyManager_updateDeviceStateWithExpressEnablementConflictingPassDescription_flow_completion___block_invoke;
  v15[3] = &unk_279724BD8;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
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

- (void)updateDeviceStateWithWalletKey:(id)a3 flow:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  if (v12)
  {
    v13 = [(HMDHomeWalletKeyManager *)self passLibrary];
    v14 = [v13 walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v12 flow:v9];

    if (v14)
    {
      v15 = [(HMDHomeWalletKeyManager *)self passLibrary];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __74__HMDHomeWalletKeyManager_updateDeviceStateWithWalletKey_flow_completion___block_invoke;
      v16[3] = &unk_279724BB0;
      v16[4] = self;
      v17 = v9;
      v20 = v10;
      v18 = v14;
      v19 = v8;
      [v15 fetchIsExpressEnabledForPassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v12 flow:v17 completion:v16];
    }

    else
    {
      (*(v10 + 2))(v10, v8, 0);
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v10 + 2))(v10, 0, v14);
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

- (void)fetchHomeKeySupportedWithFlow:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDHomeWalletKeyManager *)self passLibrary];
  v10 = [v9 isWalletVisible];

  if (v10)
  {
    v11 = [(HMDHomeWalletKeyManager *)self passLibrary];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__HMDHomeWalletKeyManager_fetchHomeKeySupportedWithFlow_completion___block_invoke;
    v13[3] = &unk_279724B88;
    v13[4] = self;
    v14 = v7;
    [v11 fetchHomeKeySupportedWithFlow:v6 completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD06D8] code:8 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
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

- (void)updateDeviceStateWithCanAddWalletKey:(id)a3 flow:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HMDHomeWalletKeyManager_updateDeviceStateWithCanAddWalletKey_flow_completion___block_invoke;
  v14[3] = &unk_27972F8D8;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [(HMDHomeWalletKeyManager *)self fetchHomeKeySupportedWithFlow:v10 completion:v14];
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

- (void)fetchExpressEnablementConflictingPassDescriptionWithFlow:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  if (v9)
  {
    v10 = [(HMDHomeWalletKeyManager *)self passLibrary];
    v11 = [v10 secureElementIdentifier];

    if (v11)
    {
      v12 = [(HMDHomeWalletKeyManager *)self home];
      v13 = [v12 name];

      v34 = [HMDHomeWalletKeySecureElementInfo createForExpressConflictCheckWithSecureElementIdentifier:v11];
      v14 = [HMDHomeWalletKey alloc];
      v15 = [(HMDHomeWalletKeyManager *)self dataSource];
      v16 = v6;
      v17 = [v15 walletKeyColor];
      v38 = v34;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
      v18 = v7;
      v20 = v19 = v9;
      v21 = v17;
      v6 = v16;
      v22 = [(HMDHomeWalletKey *)v14 initWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v19 state:1 walletKeyDescription:v13 homeName:v13 color:v21 nfcInfos:v20];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __95__HMDHomeWalletKeyManager_fetchExpressEnablementConflictingPassDescriptionWithFlow_completion___block_invoke;
      v35[3] = &unk_279724B60;
      v35[4] = self;
      v36 = v16;
      v37 = v18;
      v9 = v19;
      v7 = v18;
      [(HMDHomeWalletKeyManager *)self createPassDirectoryWithWalletKey:v22 options:0 shouldSkipResourceFiles:1 shouldCreateZipArchive:0 validateNFCInfo:0 flow:v36 completion:v35];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v6 UUID];
        *buf = 138543618;
        v40 = v31;
        v41 = 2112;
        v42 = v32;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express enablement conflicting pass description, secure element identifier is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v7 + 2))(v7, 0, v13);
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v6 UUID];
      *buf = 138543618;
      v40 = v26;
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express enablement conflicting pass description, wallet key serial number is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v7 + 2))(v7, 0, v11);
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

- (BOOL)canAutoAddWalletKeyWithError:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(HMDHomeWalletKeyManager *)self systemInfo];
  v6 = [v5 isMigrating];

  if (!v6)
  {
    v8 = [(HMDHomeWalletKeyManager *)self home];
    v9 = [v8 nfcReaderKey];
    v10 = [v9 identifier];
    v11 = [v10 hmf_hexadecimalRepresentation];

    if (v11 && (-[HMDHomeWalletKeyManager dataSource](self, "dataSource"), v12 = objc_claimAutoreleasedReturnValue(), [v12 numberValueFromNoBackupStoreWithKey:v11], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13) || (objc_msgSend(v8, "hasOnboardedForWalletKey") & 1) != 0)
    {
      if ([(HMDHomeWalletKeyManager *)self isHomeBeingRemoved])
      {
        if (a3)
        {
          *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDHomeAutoAddWalletKeyErrorDomain" code:4 userInfo:0];
        }

        v14 = objc_autoreleasePoolPush();
        v15 = self;
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
      if (!a3)
      {
LABEL_17:
        v7 = 0;
        goto LABEL_18;
      }

      [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDHomeAutoAddWalletKeyErrorDomain" code:2 userInfo:0];
      *a3 = v7 = 0;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDHomeAutoAddWalletKeyErrorDomain" code:1 userInfo:0];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)handleRestoreMissingWalletKeysMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling RestoreMissingWalletKeysMessage: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDHomeWalletKeyManager *)v6 home];
  v10 = [v9 nfcReaderKeyManager];
  v11 = [v10 accessoryManager];
  v12 = [v11 messageTargetUUID];

  v13 = [(HMDHomeWalletKeyManager *)v6 workQueue];
  [v9 redispatchToResidentMessage:v4 target:v12 responseQueue:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchMissingWalletKeysMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling FetchMissingWalletKeysMessage: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDHomeWalletKeyManager *)v6 home];
  v10 = [v9 nfcReaderKeyManager];
  v11 = [v10 accessoryManager];
  v12 = [v11 messageTargetUUID];

  v13 = [(HMDHomeWalletKeyManager *)v6 workQueue];
  [v9 redispatchToResidentMessage:v4 target:v12 responseQueue:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handlePersistWalletKeyAddOptionsRemoteMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543874;
    v26 = v9;
    v27 = 2112;
    v28 = v4;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remote message to add wallet key: %@ payload: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v24 = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v12 = [v4 unarchivedObjectForKey:@"HMDHomeWalletKeyManagerRemoteMessageKeyNFCReaderKey" ofClasses:v11];

  if (v12)
  {
    v13 = [(HMDHomeWalletKeyManager *)v7 dataSource];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:3];
    v15 = [v12 identifier];
    v16 = [v15 hmf_hexadecimalRepresentation];
    [v13 persistNumberValueToNoBackupStore:v14 withKey:v16];

    [v4 respondWithPayload:MEMORY[0x277CBEC10]];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v7;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v4 messagePayload];
      *buf = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Missing nfc reader key in the message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v4 respondWithError:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleAddWalletKeyMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    v12 = [v4 messagePayload];
    *buf = 138544130;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v4;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling message to add wallet key %@ payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [v4 numberForKey:*MEMORY[0x277CCFE28]];
  v14 = [v13 integerValue];

  objc_initWeak(buf, v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__HMDHomeWalletKeyManager_handleAddWalletKeyMessage___block_invoke;
  v17[3] = &unk_279724A00;
  objc_copyWeak(&v19, buf);
  v15 = v4;
  v18 = v15;
  [(HMDHomeWalletKeyManager *)v8 addWalletKeyWithOptions:v14 isOnboarding:1 flow:v6 completion:v17];

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

- (void)handleMessageForPairedWatches:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v67 = v10;
    v68 = 2112;
    v69 = v11;
    v70 = 2112;
    v71 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling message for watch: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDHomeWalletKeyManager *)v8 watchManager];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 connectedWatches];
    v15 = [v14 na_filter:&__block_literal_global_297];
    v16 = [v15 count];
    v17 = [v14 count];
    if (v16)
    {
      v54 = v15;
      v18 = [v13 watches];
      v19 = [v18 count];

      if (v16 == v19)
      {
        v20 = 0;
      }

      else
      {
        v52 = v6;
        v29 = objc_autoreleasePoolPush();
        v30 = v8;
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
        v6 = v52;
      }

      v28 = objc_alloc_init(MEMORY[0x277D2C900]);
      v34 = [v4 name];
      v35 = [v34 isEqualToString:*MEMORY[0x277CCFE30]];

      if (v35)
      {
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_299;
        v63[3] = &unk_2797354B8;
        v64 = v28;
        v65 = v4;
        [(HMDHomeWalletKeyManager *)v8 fetchPayloadForAddWalletKeyRemoteMessageWithFlow:v6 completion:v63];

        v36 = @"HMDHomeWalletKeyManagerPersistWalletKeyAddOptionsRemoteMessage";
      }

      else
      {
        v37 = [v4 name];
        v38 = [v37 isEqualToString:*MEMORY[0x277CD06E8]];

        if (v38)
        {
          [v28 finishWithResult:MEMORY[0x277CBEC10]];
          v36 = @"HMDHomeWalletKeyManagerFetchWalletKeyDeviceStateRemoteMessage";
        }

        else
        {
          v53 = v6;
          v39 = objc_autoreleasePoolPush();
          v40 = v8;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v42 = v51 = v39;
            v43 = [v53 UUID];
            *buf = 138543874;
            v67 = v42;
            v68 = 2112;
            v69 = v43;
            v70 = 2112;
            v71 = v4;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Message is not supported for paired watches: %@", buf, 0x20u);

            v39 = v51;
          }

          objc_autoreleasePoolPop(v39);
          v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          [v28 finishWithError:v44];

          v36 = 0;
          v6 = v53;
        }
      }

      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_301;
      v61[3] = &unk_2797359D8;
      v45 = v4;
      v62 = v45;
      v46 = [v28 addFailureBlock:v61];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_2;
      v56[3] = &unk_279724B10;
      v56[4] = v8;
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
      v23 = v8;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v26 = v25 = v6;
        [v25 UUID];
        v27 = v55 = v15;
        *buf = 138544130;
        v67 = v26;
        v68 = 2112;
        v69 = v27;
        v70 = 2112;
        v71 = v4;
        v72 = 2048;
        v73 = v21;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling message for paired watches:%@ connected watches count is %lu but none are supported", buf, 0x2Au);

        v15 = v55;
        v6 = v25;
      }

      objc_autoreleasePoolPop(v22);
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v28];
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    [v4 respondWithError:v14];
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

- (void)handleEnableExpressForWalletKeyMessage:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling message to enable express: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDHomeWalletKeyManager *)v8 passSerialNumber];
  if (v12)
  {
    v13 = *MEMORY[0x277CD0418];
    v14 = [v4 dataForKey:*MEMORY[0x277CD0418]];
    if (v14)
    {
      v15 = v14;
      v16 = [(HMDHomeWalletKeyManager *)v8 passLibrary];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __66__HMDHomeWalletKeyManager_handleEnableExpressForWalletKeyMessage___block_invoke;
      v30[3] = &unk_279734D88;
      v30[4] = v8;
      v31 = v6;
      v32 = v4;
      [v16 enableExpressWithAuthData:v15 passTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v12 flow:v31 completion:v30];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v8;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [v6 UUID];
        v27 = [v4 messagePayload];
        *buf = 138544130;
        v34 = v25;
        v35 = 2112;
        v36 = v26;
        v37 = 2112;
        v38 = v27;
        v39 = 2112;
        v40 = v13;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to enable express, missing key is payload %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      v28 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v4 respondWithError:v28];

      v15 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v8;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v6 UUID];
      *buf = 138543618;
      v34 = v20;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to enable express, serial number is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v15];
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

- (void)handleFetchAvailableWalletKeyEncodedPKPassMessage:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v59 = v10;
    v60 = 2112;
    v61 = v11;
    v62 = 2112;
    v63 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] handleFetchAvailableWalletKeyEncodedPKPassMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v4 messagePayload];
  v13 = [v12 hmf_setForKey:*MEMORY[0x277CD0718]];
  v14 = [v13 na_map:&__block_literal_global_286];

  v15 = [(HMDHomeWalletKeyManager *)v8 home];
  if ([v15 hasAnyAccessoryWithWalletKeySupport] & 1) != 0 || (objc_msgSend(v14, "containsObject:", &unk_286627CA0))
  {
    v16 = [(HMDHomeWalletKeyManager *)v8 passSerialNumber];
    if (!v16)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v8;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [v6 UUID];
        *buf = 138543618;
        v59 = v30;
        v60 = 2112;
        v61 = v31;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, serial number is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v4 respondWithError:v17];
      goto LABEL_24;
    }

    v17 = [v15 name];
    if (v17)
    {
      v18 = [(HMDHomeWalletKeyManager *)v8 passLibrary];
      v19 = [v18 walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v16 flow:v6];

      if (!v19 || ([v14 containsObject:&unk_286627CB8] & 1) != 0)
      {
        v20 = [HMDHomeWalletKey alloc];
        v21 = [(HMDHomeWalletKeyManager *)v8 dataSource];
        v22 = [v21 walletKeyColor];
        +[HMDHomeWalletKeySecureElementInfo createForEasyProvisioning];
        v23 = v51 = v14;
        v57 = v23;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        v50 = v15;
        v25 = v24 = v6;
        v26 = [(HMDHomeWalletKey *)v20 initWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v16 state:1 walletKeyDescription:v17 homeName:v17 color:v22 nfcInfos:v25];

        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __77__HMDHomeWalletKeyManager_handleFetchAvailableWalletKeyEncodedPKPassMessage___block_invoke_292;
        v54[3] = &unk_279724AA0;
        v54[4] = v8;
        v55 = v24;
        v56 = v4;
        v6 = v24;
        v15 = v50;
        v14 = v51;
        [(HMDHomeWalletKeyManager *)v8 createPassDirectoryWithWalletKey:v26 options:0 shouldSkipResourceFiles:0 shouldCreateZipArchive:1 validateNFCInfo:0 flow:v55 completion:v54];

LABEL_23:
LABEL_24:

        goto LABEL_25;
      }

      v44 = objc_autoreleasePoolPush();
      v45 = v8;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        [v6 UUID];
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
      v38 = v8;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        [v6 UUID];
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
    [v4 respondWithError:v26];
    goto LABEL_23;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = v8;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = HMFGetLogIdentifier();
    v36 = [v6 UUID];
    *buf = 138543618;
    v59 = v35;
    v60 = 2112;
    v61 = v36;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] No accessory in home supports wallet key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [v4 respondWithError:v16];
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

- (void)handleFetchWalletKeyColorMessage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling FetchWalletKeyColorMessage", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v11 = objc_autoreleasePoolPush();
  v12 = v7;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138543618;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling FetchWalletKeyColorMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDHomeWalletKeyManager *)v12 fetchWalletKeyColorOptionWithFlow:v10];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__HMDHomeWalletKeyManager_handleFetchWalletKeyColorMessage___block_invoke;
  v21[3] = &unk_279724A78;
  v21[4] = v12;
  v22 = v10;
  v23 = v4;
  v17 = v4;
  v18 = v10;
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

- (void)handleFetchDeviceStateMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] handleFetchDeviceStateMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = objc_alloc_init(MEMORY[0x277CD1AC0]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HMDHomeWalletKeyManager_handleFetchDeviceStateMessage___block_invoke;
  v16[3] = &unk_279724A50;
  v16[4] = v8;
  v17 = v6;
  v18 = v4;
  v13 = v4;
  v14 = v6;
  [(HMDHomeWalletKeyManager *)v8 updateDeviceStateWithCanAddWalletKey:v12 flow:v14 completion:v16];

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
  v3 = [(HMDHomeWalletKeyManager *)self messageDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [(HMDHomeWalletKeyManager *)self notificationCenter];
  [v4 removeObserver:self];
}

- (void)autoAddWalletKeyWithFlow:(id)a3
{
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDHomeWalletKeyManager_autoAddWalletKeyWithFlow___block_invoke;
  v7[3] = &unk_2797249D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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
  v3 = [(HMDHomeWalletKeyManager *)self home];
  v4 = [v3 currentUser];
  v5 = [v4 uuid];

  if (v5)
  {
    goto LABEL_6;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
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
  v10 = [(HMDHomeWalletKeyManager *)v7 currentUserUUID];
  if (v10)
  {
    v5 = v10;
LABEL_6:
    v11 = [(HMDHomeWalletKeyManager *)self passSerialNumberWithUserUUID:v5];

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)hasHomeKeyInWallet
{
  v3 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  v4 = [(HMDHomeWalletKeyManager *)self passLibrary];
  v5 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v6 = [v4 walletKeyWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v3 flow:v5];
  v7 = v6 != 0;

  return v7;
}

- (void)handleAccessCodeChanged
{
  v3 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  [(HMDHomeWalletKeyManager *)self updateWalletKeyAccessCodeFieldWithReason:@"access code changed"];
}

- (void)recoverDueToUUIDChangeOfUser:(id)a3 fromOldUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHomeWalletKeyManager_recoverDueToUUIDChangeOfUser_fromOldUUID___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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
    v3 = [(HMDHomeWalletKeyManager *)self passLibrary];
    v4 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
    v5 = [v3 isExpressModeEnabledForPassUniqueIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v4];

    v6 = *MEMORY[0x277D85DE8];

    [(HMDHomeWalletKeyManager *)self _storeWalletKeyMigrationSettingsToDisk:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDHomeWalletKeyManager *)v8 home];
      v12 = [v11 shortDescription];
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
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
  v5 = [(HMDHomeWalletKeyManager *)self home];
  v6 = [v5 uuid];
  v7 = [v3 stringWithFormat:@"%@/HMDHomeWalletKeySetting-%@.plist", v4, v6];

  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];

  return v8;
}

- (void)didAddCurrentUserWithUUID:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  [(HMDHomeWalletKeyManager *)self setCurrentUserUUID:v5];

  if (([v4 isOwner] & 1) == 0)
  {
    v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v6 UUID];
      v12 = [v4 uuid];
      *buf = 138543874;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Did add current user: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [(HMDHomeWalletKeyManager *)v8 home];
    if (v13)
    {
      v14 = [(HMDHomeWalletKeyManager *)v8 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__HMDHomeWalletKeyManager_didAddCurrentUserWithUUID___block_invoke;
      block[3] = &unk_279734960;
      v21 = v13;
      v22 = v8;
      v23 = v6;
      dispatch_async(v14, block);
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v8;
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

- (void)configureWithHome:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v80 = v8;
    v81 = 2112;
    v82 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 msgDispatcher];
  [(HMDHomeWalletKeyManager *)v6 setMessageDispatcher:v9];

  [(HMDHomeWalletKeyManager *)v6 setHome:v4];
  v10 = [v4 currentUser];
  v11 = [v10 uuid];
  [(HMDHomeWalletKeyManager *)v6 setCurrentUserUUID:v11];

  v12 = [v4 nfcReaderKeyManager];
  v13 = [v12 accessoryManager];
  [v13 setDelegate:v6];

  v14 = [HMDXPCMessagePolicy policyWithEntitlements:131077];
  v15 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v78 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  [v15 registerForMessage:*MEMORY[0x277CCFE20] receiver:v6 policies:v16 selector:sel_handleAddWalletKeyMessage_];

  v17 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v77 = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  [v17 registerForMessage:*MEMORY[0x277CCFE30] receiver:v6 policies:v18 selector:sel_handleMessageForPairedWatches_];

  v19 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v76 = v14;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
  [v19 registerForMessage:*MEMORY[0x277CCFED0] receiver:v6 policies:v20 selector:sel_handleEnableExpressForWalletKeyMessage_];

  v21 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v21 setRoles:{objc_msgSend(v21, "roles") | 1}];
  v22 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:0 remoteAccessRequired:0];
  v23 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v75[0] = v21;
  v75[1] = v22;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  [v23 registerForMessage:@"HMDHomeWalletKeyManagerPersistWalletKeyAddOptionsRemoteMessage" receiver:v6 policies:v24 selector:sel_handlePersistWalletKeyAddOptionsRemoteMessage_];

  v25 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v74[0] = v21;
  v74[1] = v22;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  [v25 registerForMessage:@"HMDHomeWalletKeyManagerFetchWalletKeyDeviceStateRemoteMessage" receiver:v6 policies:v26 selector:sel_handleFetchDeviceStateMessage_];

  v27 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v73 = v14;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
  [v27 registerForMessage:*MEMORY[0x277CCFF48] receiver:v6 policies:v28 selector:sel_handleFetchAvailableWalletKeyEncodedPKPassMessage_];

  v29 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v72 = v14;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
  [v29 registerForMessage:*MEMORY[0x277CCFF98] receiver:v6 policies:v30 selector:sel_handleFetchWalletKeyColorMessage_];

  v31 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v71 = v14;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
  [v31 registerForMessage:*MEMORY[0x277CD06F0] receiver:v6 policies:v32 selector:sel_handleFetchDeviceStateMessage_];

  v33 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v70 = v14;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
  [v33 registerForMessage:*MEMORY[0x277CD06E8] receiver:v6 policies:v34 selector:sel_handleMessageForPairedWatches_];

  v35 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v69 = v14;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
  [v35 registerForMessage:*MEMORY[0x277CD06F8] receiver:v6 policies:v36 selector:sel_handleFetchMissingWalletKeysMessage_];

  v37 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v68 = v14;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
  [v37 registerForMessage:*MEMORY[0x277CD0738] receiver:v6 policies:v38 selector:sel_handleRestoreMissingWalletKeysMessage_];

  v39 = [(HMDHomeWalletKeyManager *)v6 passLibrary];
  [v39 setDelegate:v6];

  v40 = [(HMDHomeWalletKeyManager *)v6 passLibrary];
  [v40 start];

  v41 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v41 addObserver:v6 selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v4];

  v42 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v42 addObserver:v6 selector:sel_handleHomeNameChangedNotification_ name:@"HMDHomeNameChangedNotification" object:v4];

  v43 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v43 addObserver:v6 selector:sel_handleHomeAddedAccessoryNotification_ name:@"HMDNotificationHomeAddedAccessory" object:v4];

  v44 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v44 addObserver:v6 selector:sel_handleHomeAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:v4];

  v45 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v45 addObserver:v6 selector:sel_handleAccessorySupportsWalleyKeyDidChangeNotification_ name:@"HMDAccessorySupportsWalletKeyDidChangeNotification" object:0];

  v46 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v46 addObserver:v6 selector:sel_handleHomeDidUpdateNFCReaderKeyNotification_ name:@"HMDHomeDidUpdateNFCReaderKeyNotification" object:v4];

  v47 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  v48 = [(HMDHomeWalletKeyManager *)v6 lostModeManager];
  [v47 addObserver:v6 selector:sel_handleLostModeUpdated name:@"HMDLostModeManagerUpdatedNotification" object:v48];

  v49 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v49 addObserver:v6 selector:sel_handleHomeHasOnboardedForWalletKeyChangeNotification_ name:@"HMDHomeHasOnboardedForWalletKeyChangeNotification" object:v4];

  v50 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  v51 = [(HMDHomeWalletKeyManager *)v6 lostModeManager];
  [v50 addObserver:v6 selector:sel_handleLostModeManagerDidExitLostModeWithAuthCompleteNotification name:@"HMDLostModeManagerDidExitLostModeWithAuthCompleteNotification" object:v51];

  v52 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v52 addObserver:v6 selector:sel_handleApplicationInstalled_ name:@"HMDApplicationInstalledNotification" object:0];

  v53 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v53 addObserver:v6 selector:sel_handleAccessorySupportsAccessCodeDidChangeNotification_ name:@"HMDAccessorySupportsAccessCodeDidChangeNotification" object:0];

  v54 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v54 addObserver:v6 selector:sel_handleLocalAliroVersionDidChangeNotification_ name:@"HMDLocalAliroVersionDidChangeNotification" object:0];

  v55 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v55 addObserver:v6 selector:sel_handleApplicationUninstalled_ name:@"HMDApplicationUninstalledNotification" object:0];

  v56 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  v57 = [(HMDHomeWalletKeyManager *)v6 systemInfo];
  [v56 addObserver:v6 selector:sel_handleSystemInfoMigrationUpdatedNotification_ name:*MEMORY[0x277D0F750] object:v57];

  objc_initWeak(&location, v6);
  v58 = [(HMDHomeWalletKeyManager *)v6 dataSource];
  v59 = [(HMDHomeWalletKeyManager *)v6 workQueue];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __45__HMDHomeWalletKeyManager_configureWithHome___block_invoke;
  v65[3] = &unk_279732FD8;
  objc_copyWeak(&v66, &location);
  LOBYTE(v34) = [v58 registerForPasscodeChangeNotificationWithQueue:v59 callback:v65];

  if ((v34 & 1) == 0)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = v6;
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

  [(HMDHomeWalletKeyManager *)v6 handleLostModeUpdated];
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

- (HMDHomeWalletKeyManager)initWithUUID:(id)a3 workQueue:(id)a4 fileManager:(id)a5 passLibrary:(id)a6 notificationCenter:(id)a7 watchManager:(id)a8 keychainStore:(id)a9 lostModeManager:(id)a10 dataSource:(id)a11 bulletinBoard:(id)a12 applicationRegistry:(id)a13 systemInfo:(id)a14 isoCredentialFactory:(id)a15
{
  v44 = a3;
  v32 = a4;
  v43 = a4;
  v33 = a5;
  v42 = a5;
  v41 = a6;
  v34 = a7;
  v40 = a7;
  v39 = a8;
  v38 = a9;
  v37 = a10;
  v36 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v45.receiver = self;
  v45.super_class = HMDHomeWalletKeyManager;
  v24 = [(HMDHomeWalletKeyManager *)&v45 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_uuid, a3);
    objc_storeStrong(&v25->_workQueue, v32);
    objc_storeStrong(&v25->_fileManager, v33);
    objc_storeStrong(&v25->_passLibrary, a6);
    objc_storeStrong(&v25->_notificationCenter, v34);
    objc_storeStrong(&v25->_watchManager, a8);
    v26 = _Block_copy(v23);
    isoCredentialFactory = v25->_isoCredentialFactory;
    v25->_isoCredentialFactory = v26;

    objc_storeStrong(&v25->_keychainStore, a9);
    objc_storeStrong(&v25->_lostModeManager, a10);
    objc_storeStrong(&v25->_dataSource, a11);
    v28 = [MEMORY[0x277CBEB18] array];
    pendingUpdateWalletKeyOperations = v25->_pendingUpdateWalletKeyOperations;
    v25->_pendingUpdateWalletKeyOperations = v28;

    objc_storeStrong(&v25->_bulletinBoard, a12);
    objc_storeStrong(&v25->_applicationRegistry, a13);
    objc_storeStrong(&v25->_systemInfo, a14);
  }

  return v25;
}

- (HMDHomeWalletKeyManager)initWithUUID:(id)a3 workQueue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v15 = objc_alloc_init(HMDFileManager);
  v17 = [[HMDWalletPassLibrary alloc] initWithWorkQueue:v5];
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = +[HMDWatchManager sharedManager];
  v14 = [MEMORY[0x277CFEC78] systemStore];
  v8 = +[HMDLostModeManager sharedManager];
  v9 = objc_alloc_init(HMDHomeWalletDataSource);
  v10 = +[HMDBulletinBoard sharedBulletinBoard];
  v11 = +[HMDApplicationRegistry sharedRegistry];
  v12 = [MEMORY[0x277D0F910] systemInfo];
  v19 = [(HMDHomeWalletKeyManager *)self initWithUUID:v6 workQueue:v5 fileManager:v15 passLibrary:v17 notificationCenter:v16 watchManager:v7 keychainStore:v14 lostModeManager:v8 dataSource:v9 bulletinBoard:v10 applicationRegistry:v11 systemInfo:v12 isoCredentialFactory:&__block_literal_global_33630];

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

+ (id)homekitErrorWithPassLibraryErrorCode:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_253D4B738[a3 - 1];
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD06D8] code:v5 userInfo:{0, v3}];

  return v6;
}

+ (id)responsePayloadForPairedWatchesWithMessageName:(id)a3 responsePayloadByDevice:(id)a4 error:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 code];
  v11 = [v7 isEqual:*MEMORY[0x277CD06E8]];
  if (v9)
  {
    v12 = v10 == 2008;
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
    if (v9)
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
    v45 = v9;
    v47 = v7;
    v16 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v46 = v8;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v53 objects:v65 count:16];
    v48 = v16;
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
              [v16 setObject:v30 forKey:v23];
            }

            else
            {
              v32 = v20;
              v33 = objc_autoreleasePoolPush();
              v34 = a1;
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

                v16 = v48;
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

    v37 = encodeRootObjectForIncomingXPCMessage(v16, 0);
    v38 = v37;
    if (v37)
    {
      v57 = *MEMORY[0x277CD0710];
      v58 = v37;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v9 = v45;
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = a1;
      v41 = HMFGetOSLogHandle();
      v9 = v45;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v42;
        v61 = 2112;
        v62 = 0;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to encoded wallet key device state by device %@", buf, 0x16u);

        v16 = v48;
      }

      objc_autoreleasePoolPop(v39);
      v15 = 0;
    }

    v8 = v46;
    v7 = v47;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v15;
}

@end