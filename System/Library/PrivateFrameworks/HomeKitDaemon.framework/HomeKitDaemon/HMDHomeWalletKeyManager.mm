@interface HMDHomeWalletKeyManager
+ (id)allowedClassesForWalletKeySettings;
+ (id)deviceCredentialKeyForAccessory:(id)a3 fromPaymentApplications:(id)a4;
+ (id)homekitErrorWithPassLibraryErrorCode:(int64_t)a3;
+ (id)logCategory;
+ (id)responsePayloadForPairedWatchesWithMessageName:(id)a3 responsePayloadByDevice:(id)a4 error:(id)a5;
- (BOOL)canAutoAddWalletKeyWithError:(id *)a3;
- (BOOL)canSuspendWalletKey;
- (BOOL)hasHomeKeyInWallet;
- (BOOL)shouldEnableExpressModeAfterMigration;
- (BOOL)shouldRollWalletKeyAfterMigration;
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
- (id)walletKeyByAddingAccessCodeToWalletKey:(id)a3;
- (id)walletKeySettingsFileURL;
- (void)_replaceWalletKeyAfterHH2Migration;
- (void)accessoryManager:(id)a3 didUpdateWalletKeyColor:(int64_t)a4;
- (void)addISOCredentialV0WithPassAtURL:(id)a3 nfcInfo:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)addISOCredentialV1WithPassAtURL:(id)a3 nfcInfo:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)addISOCredentialWithPassAtURL:(id)a3 walletKey:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)addIssuerKeysToMatterV1AccessoriesWithFlow:(id)a3;
- (void)addWalletKey:(id)a3 withOptions:(int64_t)a4 assertion:(id)a5 flow:(id)a6;
- (void)addWalletKeyWithOptions:(int64_t)a3 nfcReaderKey:(id)a4 flow:(id)a5 completion:(id)a6;
- (void)auditExistingWalletKeysForDuplicatesWithFlow:(id)a3;
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
- (void)handleHomeWasRemoved;
- (void)handleLostModeManagerDidExitLostModeWithAuthCompleteNotification;
- (void)handleLostModeUpdated;
- (void)handleMessageForPairedWatches:(id)a3;
- (void)handleNFCReaderKeyUpdatedForWalletKey:(id)a3 flow:(id)a4;
- (void)handleOneMinuteSinceHomeManagerHasFinishedStartingUp:(id)a3;
- (void)handlePassUpdatedWithResult:(int64_t)a3 paymentApps:(id)a4 addedPaymentApps:(id)a5 pass:(id)a6 accessoryToSync:(id)a7 showSetupBulletinOnAdd:(BOOL)a8 isUWBCapabilityNewlyEnabled:(BOOL)a9 showExpressBulletinOnAddForWatch:(unint64_t)a10 error:(id)a11 flow:(id)a12 createExpressModeSetUpBulletin:(id)a13;
- (void)handlePendingWalletKeyUpdateOperationsWithFlow:(id)a3;
- (void)handlePersistWalletKeyAddOptionsRemoteMessage:(id)a3;
- (void)handleRestoreMissingWalletKeysMessage:(id)a3;
- (void)handleSetHomeKeyExpressSettingsMessage:(id)a3;
- (void)handleSystemInfoMigrationUpdatedNotification:(id)a3;
- (void)handleSystemKeychainStoreUpdatedNotification:(id)a3;
- (void)handleUserScheduleDidChangeNotification:(id)a3;
- (void)passLibrary:(id)a3 didAddPassWithSerialNumber:(id)a4 typeIdentifier:(id)a5;
- (void)passLibrary:(id)a3 didRemovePassWithSerialNumber:(id)a4 typeIdentifier:(id)a5;
- (void)recoverDueToUUIDChangeOfUser:(id)a3 fromOldUUID:(id)a4;
- (void)removeDuplicateWalletKeysForUser:(id)a3 flow:(id)a4;
- (void)removeWalletKeyMigrationSettingsFileFromDisk;
- (void)removeWalletKeyOnboardingBulletin;
- (void)replaceWalletKeyAfterHH2MigrationIfNecessary;
- (void)sendMessageWithName:(id)a3 payload:(id)a4 toWatches:(id)a5 completion:(id)a6;
- (void)syncDeviceCredentialKey:(id)a3 ofType:(int64_t)a4 flow:(id)a5;
- (void)syncDeviceCredentialKeyForAccessory:(id)a3 paymentApplications:(id)a4 flow:(id)a5;
- (void)unconfigure;
- (void)updateDeviceStateWithCanAddWalletKey:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)updateDeviceStateWithExpressEnablementConflictingPassDescription:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)updateDeviceStateWithWalletKey:(id)a3 flow:(id)a4 completion:(id)a5;
- (void)updateWalletKeyAccessCodeFieldWithReason:(id)a3;
- (void)updateWalletKeyByConfiguringEndpointsWithFlow:(id)a3;
- (void)updateWalletKeyStateToState:(int64_t)a3 flow:(id)a4;
- (void)updateWalletKeyWithReason:(id)a3 syncDeviceKeyToAccessory:(id)a4 flow:(id)a5 completion:(id)a6;
@end

@implementation HMDHomeWalletKeyManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)removeDuplicateWalletKeysForUser:(id)a3 flow:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDHomeWalletKeyManager *)self home];
  if (([v9 isOwnerUser] & 1) == 0)
  {
    v10 = [v9 currentUser];
    if (v10)
    {
      v11 = v10;
      v12 = [v9 currentUser];
      v13 = [v12 isRestrictedGuest];

      if (v13)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v18 = [v7 UUID];
          *buf = 138543618;
          v24 = v17;
          v25 = 2112;
          v26 = v18;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing duplicate wallet keys", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        v19 = [v9 findAdditionalUUIDsForUser:v6];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __65__HMDHomeWalletKeyManager_removeDuplicateWalletKeysForUser_flow___block_invoke;
        v21[3] = &unk_278676860;
        v21[4] = v15;
        v22 = v7;
        [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __65__HMDHomeWalletKeyManager_removeDuplicateWalletKeysForUser_flow___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) passSerialNumberWithUserUUID:v3];
  v5 = [*(a1 + 32) passSerialNumber];
  v6 = [v5 isEqual:v4];

  if (!v6)
  {
    v16 = [*(a1 + 32) passLibrary];
    v17 = [v16 removePassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v4 flow:*(a1 + 40)];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    v18 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (!v18)
      {
        goto LABEL_11;
      }

      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v20 = 138544130;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v4;
      v26 = 2112;
      v27 = v3;
      v12 = "%{public}@[Flow: %@] Removed duplicate wallet key with serial number: %@ for user uuid: %@";
    }

    else
    {
      if (!v18)
      {
        goto LABEL_11;
      }

      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v20 = 138544130;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v4;
      v26 = 2112;
      v27 = v3;
      v12 = "%{public}@[Flow: %@] Did not find wallet key with serial number: %@ for user uuid: %@";
    }

    v13 = v9;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 42;
    goto LABEL_10;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) UUID];
    v20 = 138543874;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v3;
    v12 = "%{public}@[Flow: %@] Duplicate user's wallet key serial number matches to current user's key, user uuid: %@";
    v13 = v9;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 32;
LABEL_10:
    _os_log_impl(&dword_229538000, v13, v14, v12, &v20, v15);
  }

LABEL_11:

  objc_autoreleasePoolPop(v7);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)auditExistingWalletKeysForDuplicatesWithFlow:(id)a3
{
  v4 = a3;
  v6 = [(HMDHomeWalletKeyManager *)self home];
  v5 = [v6 currentUser];
  [(HMDHomeWalletKeyManager *)self removeDuplicateWalletKeysForUser:v5 flow:v4];
}

- (BOOL)canSuspendWalletKey
{
  v2 = [(HMDHomeWalletKeyManager *)self home];
  v3 = [v2 hasAnyAccessoryWithWalletKeySupport];

  return v3 ^ 1;
}

- (void)handleHomeHasOnboardedForWalletKeyChangeNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeWalletKeyManager *)self home];
  [v5 hasOnboardedForWalletKey];

  v6 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    v12 = HMFBooleanToString();
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Home has onboarded flag changed to %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDHomeWalletKeyManager *)v8 updateWalletKeyWithReason:@"onboarded for wallet key" flow:v6 completion:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateWalletKeyByConfiguringEndpointsWithFlow:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating wallet key by configuring endpoints", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDHomeWalletKeyManager *)v6 home];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 acwgGroupResolvingKey];
    v13 = [(HMDHomeWalletKeyManager *)v6 passSerialNumber];
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v4 UUID];
        *buf = 138543618;
        v33 = v18;
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generating nfc info for existing wallet key", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v20 = [v11 nfcReaderKey];
      v21 = [v11 spiClientIdentifier];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke;
      v30[3] = &unk_278688CE8;
      v30[4] = v15;
      v31 = v4;
      [(HMDHomeWalletKeyManager *)v15 configureWalletPaymentApplicationsWithNFCReaderKey:v20 serialNumber:v13 homeUniqueIdentifier:v21 homeGRK:v12 flow:v31 completion:v30];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v4 UUID];
        *buf = 138543618;
        v33 = v27;
        v34 = 2112;
        v35 = v28;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update home key, serial number is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v6;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v4 UUID];
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v29 = *MEMORY[0x277D85DE8];
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
    block[2] = __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke_1330;
    block[3] = &unk_27868A010;
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to generate nfc info, when handling home did update nfc reader key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke_1330(id *a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating existing wallet key with nfc info", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = a1[4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke_1331;
  v9[3] = &unk_278673FF0;
  v9[4] = v7;
  v10 = a1[6];
  [v7 enqueueWalletKeyUpdateOperation:v9 flow:a1[5]];

  v8 = *MEMORY[0x277D85DE8];
}

id __73__HMDHomeWalletKeyManager_updateWalletKeyByConfiguringEndpointsWithFlow___block_invoke_1331(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling NFC reader key updated for wallet key", buf, 0x16u);
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
  v60[3] = &unk_278673FC8;
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
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reader identifier of the existing wallet key: %@ matches with what exists in home. uaReaderGroupIdentifier: %@, v2ReaderGroupIdentifier: %@", buf, 0x34u);
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
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Reader identifier of existing wallet key: %@ doesn't match with home uaReaderGroupIdentifier: %@ or v2ReaderGroupIdentifier: %@", buf, 0x34u);
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
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing and re-adding wallet key with default options: %@", buf, 0x20u);
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
        v56[2] = __70__HMDHomeWalletKeyManager_handleNFCReaderKeyUpdatedForWalletKey_flow___block_invoke_1329;
        v56[3] = &unk_278673A28;
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
          _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove wallet key: %@", buf, 0x20u);
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

void __70__HMDHomeWalletKeyManager_handleNFCReaderKeyUpdatedForWalletKey_flow___block_invoke_1329(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added wallet key: %@", &v17, 0x20u);

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
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add wallet key: %@", &v17, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDidUpdateNFCReaderKeyNotification:(id)a3
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
    v19 = 138543618;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling HomeDidUpdateNFCReaderKeyNotification", &v19, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeWalletKeyManager *)v7 home];
  v12 = [v11 nfcReaderKey];

  if (v12)
  {
    [(HMDHomeWalletKeyManager *)v7 updateWalletKeyWithReason:@"NFC reader key updated" flow:v5 completion:0];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v5 UUID];
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling nfc reader key update because it set to nil on home", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleUserScheduleDidChangeNotification:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
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

  v8 = [v7 uuid];
  v9 = [(HMDHomeWalletKeyManager *)self home];
  v10 = [v9 currentUser];
  v11 = [v10 uuid];
  v12 = HMFEqualObjects();

  if (v12)
  {
    v13 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v13 UUID];
      v19 = [v7 uuid];
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling user schedule did change for user: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDHomeWalletKeyManager *)v15 updateWalletKeyWithReason:@"user schedule changed" flow:v13 completion:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAccessoryRemovedNotification:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
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
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling accessory removed: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDHomeWalletKeyManager *)v11 updateWalletKeyWithReason:@"accessory removed" flow:v9 completion:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessorySupportsWalleyKeyDidChangeNotification:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not handling wallet key support change for accessory in other home: %@", buf, 0x16u);
    }

LABEL_13:

    objc_autoreleasePoolPop(v10);
    goto LABEL_14;
  }

  if (([v7 supportsWalletKey] & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v7 shortDescription];
      v27 = [v7 supportsMatterWalletKey];
      [v27 BOOLValue];
      v23 = HMFBooleanToString();
      [v7 supportsACWGProvisioning];
      v24 = HMFBooleanToString();
      [v7 supportsACWGUWB];
      HMFBooleanToString();
      v25 = v28 = v10;
      *buf = 138544386;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not handling wallet key support change, since support was disabled for accessory: %@, supportsMatterWalletKey: %@, supportsACWGProvisioning: %@, supportsACWGUWB: %@", buf, 0x34u);

      v10 = v28;
    }

    goto LABEL_13;
  }

  v15 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v15 UUID];
    *buf = 138543618;
    v30 = v19;
    v31 = 2112;
    v32 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling AccessorySupportsWalletKeyDidChangeNotification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  [(HMDHomeWalletKeyManager *)v17 updateWalletKeyWithReason:@"wallet key support added" syncDeviceKeyToAccessory:v7 flow:v15 completion:&__block_literal_global_1316];

LABEL_14:
  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAddedAccessoryNotification:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
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
        v21 = 138543618;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling accessory added", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDHomeWalletKeyManager *)v11 updateWalletKeyWithReason:@"accessory added" syncDeviceKeyToAccessory:v8 flow:v9 completion:&__block_literal_global_1311];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v8 shortDescription];
        v21 = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Added accessory does not support wallet key: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeWasRemoved
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeWalletKeyManager *)self home];
  if (v3)
  {
    v4 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v4 UUID];
      v22 = 138543874;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling home was removed: %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = +[HMDPassUpdater shared];
    [v10 removeOrphanedPassesWithFlow:v4 completionHandler:&__block_literal_global_1300];

    v11 = +[HMDPassUpdater shared];
    v12 = [v3 uuid];
    [v11 removeOrphanedHomeKeyMiscInfoIncludingHomeUUID:v12 withFlow:v4 completionHandler:&__block_literal_global_1302];

    [(HMDHomeWalletKeyManager *)v6 removeWalletKeyMigrationSettingsFileFromDisk];
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Resetting dismissed UWB onboarding flag and clearing client wallet key UUID", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Home was nil in handleHomeWasRemoved", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling notification did exit lost mode with auth complete notification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [(HMDHomeWalletKeyManager *)v5 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HMDHomeWalletKeyManager_handleLostModeManagerDidExitLostModeWithAuthCompleteNotification__block_invoke;
  v12[3] = &unk_27868A750;
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling notification lost mode updated to: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [(HMDHomeWalletKeyManager *)v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDHomeWalletKeyManager_handleLostModeUpdated__block_invoke;
  block[3] = &unk_278688BD0;
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
    return [*(result + 32) updateWalletKeyWithReason:@"Entered lost mode" flow:*(result + 40) completion:0];
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

    [(HMDHomeWalletKeyManager *)self updateWalletKeyWithReason:@"Home App was uninstalled" flow:0 completion:0];
  }
}

- (void)handleApplicationInstalled:(id)a3
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

  v12 = v5;

  v6 = [v12 bundleIdentifier];
  v7 = *MEMORY[0x277CCFE40];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = @"Home App was installed";
  }

  else
  {
    v10 = [v12 bundleIdentifier];
    v11 = [v10 isEqualToString:@"com.apple.Passbook"];

    if (!v11)
    {
      goto LABEL_9;
    }

    v9 = @"Wallet app installed";
  }

  [(HMDHomeWalletKeyManager *)self updateWalletKeyWithReason:v9 flow:0 completion:0];
LABEL_9:
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Not handling migration updated notification, migration is in progress", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v11 = [(HMDHomeWalletKeyManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDHomeWalletKeyManager_handleSystemInfoMigrationUpdatedNotification___block_invoke;
    block[3] = &unk_27868A728;
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Auto adding wallet key after device migration has finished", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [*(a1 + 32) autoAddWalletKeyWithFlow:v2];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessorySupportsAccessCodeDidChangeNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
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
    [(HMDHomeWalletKeyManager *)self updateWalletKeyWithReason:@"accessory supports access code changed" flow:0 completion:0];
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
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not handling access code support change for accessory in other home: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accessoryManager:(id)a3 didUpdateWalletKeyColor:(int64_t)a4
{
  v5 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = MEMORY[0x277CCACA8];
  v8 = HMHomeWalletKeyColorAsString();
  v7 = [v6 stringWithFormat:@"Wallet key color did update to %@", v8];
  [(HMDHomeWalletKeyManager *)self updateWalletKeyWithReason:v7 flow:0 completion:0];
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending message that home key was removed from wallet", &v27, 0xCu);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending message that home key was added in wallet", &v35, 0xCu);
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
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Not persisting settings because could not find reader key after pass was added", &v35, 0xCu);
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
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Auto adding wallet key with reason: %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cannot auto add wallet key because it is suppressed", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Cannot auto add wallet key for reason: %@ with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v29);
    goto LABEL_12;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __70__HMDHomeWalletKeyManager_autoAddWalletKeyWithReason_flow_completion___block_invoke;
  v35[3] = &unk_27867DF48;
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
  v6[3] = &unk_278673F80;
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
  v6[3] = &unk_278673F58;
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

- (void)handlePassUpdatedWithResult:(int64_t)a3 paymentApps:(id)a4 addedPaymentApps:(id)a5 pass:(id)a6 accessoryToSync:(id)a7 showSetupBulletinOnAdd:(BOOL)a8 isUWBCapabilityNewlyEnabled:(BOOL)a9 showExpressBulletinOnAddForWatch:(unint64_t)a10 error:(id)a11 flow:(id)a12 createExpressModeSetUpBulletin:(id)a13
{
  v54 = a8;
  v83 = *MEMORY[0x277D85DE8];
  v56 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v57 = a11;
  v58 = a12;
  v21 = a13;
  v22 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v22);

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v26 = v53 = v18;
    v27 = [v58 UUID];
    [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v52 = v20;
    v28 = v50 = v24;
    v29 = HMFBooleanToString();
    HMFBooleanToString();
    v30 = v51 = a3;
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a10];
    *buf = 138545922;
    v62 = v26;
    v63 = 2112;
    v64 = v27;
    v65 = 2112;
    v66 = v28;
    v67 = 2112;
    v68 = v56;
    v69 = 2112;
    v70 = v53;
    v71 = 2112;
    v72 = v19;
    v73 = 2112;
    v74 = v52;
    v75 = 2112;
    v76 = v29;
    v77 = 2112;
    v78 = v30;
    v79 = 2112;
    v80 = v31;
    v81 = 2112;
    v82 = v57;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Handling pass update result: %@, paymentApps: %@, addedPaymentApps: %@, pass: %@, accessoryToSync: %@, showSetupBulletinOnAdd: %@, isUWBCapabilityNewlyEnabled: %@, newlyEnabledExpressSettings: %@, error: %@", buf, 0x70u);

    v24 = v50;
    a3 = v51;

    v20 = v52;
    v18 = v53;
  }

  objc_autoreleasePoolPop(v23);
  v32 = v57;
  if (v57)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = v24;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v36 = v21;
      v38 = v37 = v20;
      v39 = [v58 UUID];
      *buf = 138543874;
      v62 = v38;
      v63 = 2112;
      v64 = v39;
      v65 = 2112;
      v66 = v57;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling pass update result because PassUpdater threw an error: %@", buf, 0x20u);

      v32 = v57;
      v20 = v37;
      v21 = v36;
    }

    objc_autoreleasePoolPop(v33);
  }

  else
  {
    v40 = [(HMDHomeWalletKeyManager *)v24 home];
    if (v40)
    {
      if (a3 == 2)
      {
        goto LABEL_20;
      }

      if (([v18 hmf_isEmpty] & 1) == 0)
      {
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __231__HMDHomeWalletKeyManager_handlePassUpdatedWithResult_paymentApps_addedPaymentApps_pass_accessoryToSync_showSetupBulletinOnAdd_isUWBCapabilityNewlyEnabled_showExpressBulletinOnAddForWatch_error_flow_createExpressModeSetUpBulletin___block_invoke;
        v59[3] = &unk_278673F30;
        v59[4] = v24;
        v60 = v58;
        [v18 na_each:v59];
      }

      if (v20)
      {
        v41 = [objc_opt_class() deviceCredentialKeyForAccessory:v20 fromPaymentApplications:v18];

        if (!v41)
        {
          [(HMDHomeWalletKeyManager *)v24 syncDeviceCredentialKeyForAccessory:v20 paymentApplications:v56 flow:v58];
        }
      }

      v42 = !a9;
      if (!a3)
      {
        v42 = 0;
      }

      if (!v42 && v54)
      {
        v21[2](v21);
      }

      if (!a3)
      {
LABEL_20:
        logAndPostNotification(@"HMDWalletKeyUpdatedNotification", v24, 0);
      }
    }

    else
    {
      v55 = v21;
      v43 = v20;
      v44 = objc_autoreleasePoolPush();
      v45 = v24;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        v48 = [v58 UUID];
        *buf = 138543618;
        v62 = v47;
        v63 = 2112;
        v64 = v48;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Home is nil", buf, 0x16u);

        v32 = 0;
      }

      objc_autoreleasePoolPop(v44);
      v20 = v43;
      v21 = v55;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __231__HMDHomeWalletKeyManager_handlePassUpdatedWithResult_paymentApps_addedPaymentApps_pass_accessoryToSync_showSetupBulletinOnAdd_isUWBCapabilityNewlyEnabled_showExpressBulletinOnAddForWatch_error_flow_createExpressModeSetUpBulletin___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 subcredentials];
  v5 = [v4 anyObject];
  v6 = [v5 transactionKey];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 40) UUID];
    v22 = 138544130;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2048;
    v27 = [v3 paymentType];
    v28 = 2048;
    v29 = [v3 paymentNetworkIdentifier];
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Payment application added with paymentType: %ld paymentNetworkIdentifier: %ld", &v22, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v3 paymentNetworkIdentifier];
  if (v12 == 139)
  {
    [*(a1 + 32) syncDeviceCredentialKey:v6 ofType:1 flow:*(a1 + 40)];
  }

  else if (v12 == 133)
  {
    v13 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:v6];
    [*(a1 + 32) syncDeviceCredentialKey:v13 ofType:0 flow:*(a1 + 40)];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 40) UUID];
      v19 = [v3 paymentType];
      v20 = [v3 paymentNetworkIdentifier];
      v22 = 138544130;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2048;
      v27 = v19;
      v28 = 2048;
      v29 = v20;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unrecognized added payment application with paymentType: %ld paymentNetworkIdentifier: %ld", &v22, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateWalletKeyWithReason:(id)a3 syncDeviceKeyToAccessory:(id)a4 flow:(id)a5 completion:(id)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v40 = a6;
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v12 UUID];
      *buf = 138543874;
      v46 = v16;
      v47 = 2112;
      v48 = v17;
      v49 = 2112;
      v50 = v10;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating wallet key with reason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = v12;
  }

  else
  {
    v18 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v18 UUID];
      *buf = 138543874;
      v46 = v22;
      v47 = 2112;
      v48 = v23;
      v49 = 2112;
      v50 = v10;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Updating wallet key with reason: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v24 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  if (v24)
  {
    v25 = [(HMDHomeWalletKeyManager *)self home];
    if (v25)
    {
      v26 = +[HMDPassUpdater shared];
      v27 = [(HMDHomeWalletKeyManager *)self uuid];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __94__HMDHomeWalletKeyManager_updateWalletKeyWithReason_syncDeviceKeyToAccessory_flow_completion___block_invoke;
      v41[3] = &unk_278673F08;
      v41[4] = self;
      v42 = v11;
      v43 = v18;
      v44 = v40;
      [v26 updatePassForHomeUUID:v27 isOnboarding:0 ignoreCache:v11 != 0 flow:v43 completionHandler:v41];
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v36 = v39 = v33;
        v37 = [v18 UUID];
        *buf = 138543618;
        v46 = v36;
        v47 = 2112;
        v48 = v37;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Nil home", buf, 0x16u);

        v33 = v39;
      }

      objc_autoreleasePoolPop(v33);
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [v18 UUID];
      *buf = 138543618;
      v46 = v31;
      v47 = 2112;
      v48 = v32;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No pass serial number", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __94__HMDHomeWalletKeyManager_updateWalletKeyWithReason_syncDeviceKeyToAccessory_flow_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, char a7, void *a8)
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__HMDHomeWalletKeyManager_updateWalletKeyWithReason_syncDeviceKeyToAccessory_flow_completion___block_invoke_2;
  block[3] = &unk_278673EE0;
  v33 = a2;
  v20 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v35 = a7;
  v34 = a6;
  v29 = v20;
  v30 = v18;
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  dispatch_async(v19, block);
}

void __94__HMDHomeWalletKeyManager_updateWalletKeyWithReason_syncDeviceKeyToAccessory_flow_completion___block_invoke_2(uint64_t a1)
{
  LOBYTE(v5) = *(a1 + 112);
  [*(a1 + 32) handlePassUpdatedWithResult:*(a1 + 96) paymentApps:*(a1 + 40) addedPaymentApps:*(a1 + 48) pass:*(a1 + 56) accessoryToSync:*(a1 + 64) showSetupBulletinOnAdd:1 isUWBCapabilityNewlyEnabled:v5 showExpressBulletinOnAddForWatch:*(a1 + 104) error:*(a1 + 72) flow:*(a1 + 80)];
  v2 = *(a1 + 72);
  v3 = _Block_copy(*(a1 + 88));
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v4 = 3;
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v4 = *(a1 + 96);
  }

  v6 = v3;
  v3[2](v3, v4, *(a1 + 72));
  v3 = v6;
LABEL_7:
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Updating wallet key access code field with reason: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HMDHomeWalletKeyManager_updateWalletKeyAccessCodeFieldWithReason___block_invoke;
  aBlock[3] = &unk_278673EB8;
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
      v12[3] = &unk_278673E90;
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
  v5[3] = &unk_2786750D0;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

- (void)syncDeviceCredentialKeyForAccessory:(id)a3 paymentApplications:(id)a4 flow:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v32 = a5;
  v10 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v31 = [(HMDHomeWalletKeyManager *)self passSerialNumber];
  v11 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    v17 = [v32 UUID];
    v18 = [v8 uuid];
    *buf = 138544130;
    v37 = v15;
    v38 = 2112;
    v39 = v16;
    v40 = 2112;
    v41 = v17;
    v42 = 2112;
    v43 = v18;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Syncing device credential key to accessory: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v19 = [objc_opt_class() deviceCredentialKeyForAccessory:v8 fromPaymentApplications:v9];
  if (v19)
  {
    v20 = [(HMDHomeWalletKeyManager *)v13 home];
    v21 = [v20 nfcReaderKeyManager];
    v22 = [v21 accessoryManager];
    v23 = [v8 supportsACWGProvisioning];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __88__HMDHomeWalletKeyManager_syncDeviceCredentialKeyForAccessory_paymentApplications_flow___block_invoke;
    v33[3] = &unk_278688D58;
    v33[4] = v13;
    v34 = v11;
    v35 = v8;
    [v22 configureAccessory:v35 withDeviceCredentialKey:v19 ofType:v23 flow:v34 completion:v33];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v13;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v11 UUID];
      v29 = [v8 uuid];
      *buf = 138544130;
      v37 = v27;
      v38 = 2112;
      v39 = v28;
      v40 = 2112;
      v41 = v29;
      v42 = 2112;
      v43 = v9;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find device credential key for accessory: %@ in payment applications: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __88__HMDHomeWalletKeyManager_syncDeviceCredentialKeyForAccessory_paymentApplications_flow___block_invoke(id *a1, void *a2)
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
      _os_log_impl(&dword_229538000, v12, v13, v11, &v16, v14);
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
  aBlock[3] = &unk_278673E48;
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing home key from wallet since updated state is: %ld", &v27, 0x20u);
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
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not updating wallet key since existing wallet key state: %lu matches final state: %lu", &v27, 0x2Au);
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
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = [v12 nfcInfos];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke;
  v21[3] = &unk_278673E20;
  v25 = a4;
  v21[4] = self;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v26 = a6;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = [v15 na_map:v21];

  return v19;
}

id __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64) != 1)
  {
LABEL_6:
    v9 = [*(a1 + 48) mutableCopy];
    v10 = [v4 paymentCredentialType];
    v11 = @"Aliro";
    if (v10 != 1)
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = @"UnifiedAccess";
    }

    [v9 setObject:v12 forKeyedSubscript:@"paymentType"];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "state")}];
    [v9 setObject:v13 forKeyedSubscript:@"state"];

    v14 = [v4 secureElementIdentifier];
    [v9 setObject:v14 forKeyedSubscript:@"secureElementIdentifier"];

    v15 = [v4 applicationIdentifier];
    [v9 setObject:v15 forKeyedSubscript:@"applicationIdentifier"];

    v16 = [*(a1 + 56) serialNumber];
    [v9 setObject:v16 forKeyedSubscript:@"DPANIdentifier"];

    v17 = [*(a1 + 56) serialNumber];
    v18 = [*(a1 + 56) serialNumber];
    v19 = [v17 substringFromIndex:{objc_msgSend(v18, "length") - 4}];
    [v9 setObject:v19 forKeyedSubscript:@"DPANSuffix"];

    v20 = [MEMORY[0x277CBEB38] dictionary];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "state")}];
    [v20 setObject:v21 forKeyedSubscript:@"state"];

    v22 = [v4 subCredentialIdentifier];
    [v20 setObject:v22 forKeyedSubscript:@"identifier"];

    v23 = [v4 pairedReaderIdentifier];
    [v20 setObject:v23 forKeyedSubscript:@"pairedReaderIdentifier"];

    v24 = [v9 objectForKeyedSubscript:@"automaticSelectionCriteria"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v27 = [v26 firstObject];

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

    if (!v29)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = *(a1 + 32);
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [*(a1 + 40) UUID];
        *buf = 138544130;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v42;
        *&buf[22] = 2112;
        v72 = @"automaticSelectionCriteria";
        v73 = 2112;
        v74 = v9;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Automatic selection criteria key: %@ does not exist in payment application: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v38);
      v43 = 0;
      goto LABEL_43;
    }

    v64 = [v4 pairedReaderIdentifier];
    if (v64)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 32);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [*(a1 + 40) UUID];
        *buf = 138543874;
        *&buf[4] = v33;
        *&buf[12] = 2112;
        *&buf[14] = v34;
        *&buf[22] = 2112;
        v72 = v64;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting paired reader identifier in automatic selection criteria: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      v35 = [v29 mutableCopy];
      v70 = v64;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      [v35 setObject:v36 forKeyedSubscript:@"readerIDs"];

      v37 = [v4 paymentCredentialType];
      if (v37 == 1)
      {
        [v35 setObject:&unk_283E756C8 forKeyedSubscript:@"tcis"];
        if (*(a1 + 65))
        {
          v44 = &unk_283E721B8;
        }

        else
        {
          v44 = &unk_283E721A0;
        }

        [v20 setObject:v44 forKeyedSubscript:@"allSupportedRadioTechnologies"];
        [v20 setObject:@"aliro" forKeyedSubscript:@"isoFormat"];
      }

      else if (!v37)
      {
        [v35 setObject:&unk_283E756B0 forKeyedSubscript:@"tcis"];
        [v20 setObject:&unk_283E721A0 forKeyedSubscript:@"allSupportedRadioTechnologies"];
      }

      if ([v4 paymentCredentialType] == 1)
      {
        v63 = [MEMORY[0x277CBEB18] array];
        v45 = [MEMORY[0x277CBEB18] array];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v72) = 0;
        v46 = [*(a1 + 32) home];
        v47 = [v46 backingStore];
        v48 = [v47 context];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke_1222;
        v65[3] = &unk_278689D98;
        v49 = *(a1 + 40);
        v65[4] = *(a1 + 32);
        v65[5] = v45;
        v68 = buf;
        v66 = v49;
        v67 = v63;
        [v48 unsafeSynchronousBlock:v65];

        v50 = *(*&buf[8] + 24);
        if (v50)
        {

          _Block_object_dispose(buf, 8);
          v43 = 0;
LABEL_42:

LABEL_43:
          goto LABEL_44;
        }

        [v35 setObject:v63 forKeyedSubscript:@"associatedReaderIDs"];
        [v20 setObject:v45 forKeyedSubscript:@"aliroGroupResolvingKeys"];

        _Block_object_dispose(buf, 8);
      }

      v69 = v35;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
      [v9 setObject:v60 forKeyedSubscript:@"automaticSelectionCriteria"];
    }

    [v9 setObject:v20 forKeyedSubscript:@"subcredential"];
    v43 = v9;
    goto LABEL_42;
  }

  v5 = [v3 applicationIdentifier];
  if (v5)
  {
    v6 = [v4 secureElementIdentifier];
    if (v6)
    {
      v7 = [v4 subCredentialIdentifier];
      if (v7)
      {
        v8 = [v4 pairedReaderIdentifier];

        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_36;
      }
    }
  }

LABEL_36:
  v51 = objc_autoreleasePoolPush();
  v52 = *(a1 + 32);
  v53 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
  {
    v54 = HMFGetLogIdentifier();
    v55 = [*(a1 + 40) UUID];
    v56 = [v4 applicationIdentifier];
    v57 = [v4 secureElementIdentifier];
    v58 = [v4 subCredentialIdentifier];
    v59 = [v4 pairedReaderIdentifier];
    *buf = 138544642;
    *&buf[4] = v54;
    *&buf[12] = 2112;
    *&buf[14] = v55;
    *&buf[22] = 2112;
    v72 = v56;
    v73 = 2112;
    v74 = v57;
    v75 = 2112;
    v76 = v58;
    v77 = 2112;
    v78 = v59;
    _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update pass JSON because critical NFC Info is missing. applicationIdentifier: %@, secureElementIdentifier: %@, subCredentialIdentifier: %@, pairedReaderIdentifier: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v51);
  v43 = 0;
LABEL_44:

  v61 = *MEMORY[0x277D85DE8];

  return v43;
}

void __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke_1222(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 uuid];
  v4 = [HMCContext findHomeWithModelID:v3];

  v5 = [v4 matCredGRK];
  v6 = [v5 hmf_hexadecimalRepresentation];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v4 matCredGRK];
    v9 = [v8 hmf_hexadecimalRepresentation];
    [v7 addObject:v9];

    v10 = [v4 accessories];
    v11 = [v10 na_map:&__block_literal_global_1226];
    v12 = [v11 na_filter:&__block_literal_global_1229];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke_3;
    v23[3] = &unk_278673DF8;
    v22 = *(a1 + 32);
    v13 = *(a1 + 48);
    *&v14 = *(a1 + 56);
    *(&v14 + 1) = *(a1 + 40);
    *&v15 = v22;
    *(&v15 + 1) = v13;
    v24 = v15;
    v25 = v14;
    [v12 na_each:v23];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 48) UUID];
      *buf = 138543618;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] matCredGRK is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 preexistingMatCredRGI];
  v5 = [v3 preexistingMatCredRPK];
  v6 = [v3 preexistingMatCredGRK];
  v7 = v6;
  if (v4 && v5 && v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      [v3 modelID];
      v13 = v22 = v8;
      *buf = 138544642;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v4;
      v37 = 2112;
      v38 = v5;
      v39 = 2112;
      v40 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Setting ACWG data from other fabrics for accessory: %@, preexistingMatCredRGI: %@, preexistingMatCredRPK: %@, preexistingMatCredGRK: %@", buf, 0x3Eu);

      v8 = v22;
    }

    objc_autoreleasePoolPop(v8);
    v23 = *(a1 + 48);
    v27[0] = @"readerID";
    v14 = [v4 hmf_hexadecimalRepresentation];
    v28[0] = v14;
    v28[1] = &unk_283E721D0;
    v27[1] = @"priority";
    v27[2] = @"readerCAs";
    v24[0] = @"scheme";
    v24[1] = @"publicKey";
    v25[0] = @"secp256r1";
    v15 = [v5 hmf_hexadecimalRepresentation];
    v25[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v26 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v28[2] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
    [v23 addObject:v18];

    v19 = *(a1 + 56);
    v20 = [v7 hmf_hexadecimalRepresentation];
    [v19 addObject:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

BOOL __133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 preexistingMatCredRGI];
  v3 = v2 != 0;

  return v3;
}

void *__133__HMDHomeWalletKeyManager_paymentApplicationsForWalletKey_validateNFCInfo_defaultPaymentApplication_doesAnyAccessorySupportACB_flow___block_invoke_1223(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_283F59838])
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

void __90__HMDHomeWalletKeyManager_updatePassJSONAtURL_withWalletKey_options_validateNFCInfo_flow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v3 = [v2 uuid];
  v5 = [HMCContext findHomeWithModelID:v3];

  v4 = [v5 accessories];
  *(*(*(a1 + 40) + 8) + 24) = [v4 na_any:&__block_literal_global_394_50339];
}

uint64_t __90__HMDHomeWalletKeyManager_updatePassJSONAtURL_withWalletKey_options_validateNFCInfo_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_283F59838])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 supportsMatCredACB];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating pass directory with wallet key: %@, options: %ld, shouldSkipResourceFiles: %@, shouldCreateZipArchive: %@", buf, 0x3Eu);
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
      v44[3] = &unk_278673D70;
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
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update pass JSON at URL: %@", buf, 0x20u);
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
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove item at URL %@:%@", buf, 0x2Au);
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
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create the zip file at URL %@:%@", buf, 0x2Au);

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
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove item at URL %@:%@", buf, 0x2Au);

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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating pass directory without resources files", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create directory at path %@:%@", buf, 0x2Au);

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
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove item at URL %@:%@", buf, 0x2Au);

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
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create directory at path %@:%@", buf, 0x2Au);
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating pass directory with resources files", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to copy item at URL %@ to %@ : %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)addISOCredentialV1WithPassAtURL:(id)a3 nfcInfo:(id)a4 flow:(id)a5 completion:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v14);

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v12 UUID];
    v21 = 138543618;
    v22 = v18;
    v23 = 2112;
    v24 = v19;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not adding ISO credential because this is legacy path", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v13[2](v13, 0);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addISOCredentialV0WithPassAtURL:(id)a3 nfcInfo:(id)a4 flow:(id)a5 completion:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
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
      v42 = v20;
      v43 = 2112;
      v44 = v21;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Creating iso credential...", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = [(HMDHomeWalletKeyManager *)v17 keychainStore];
    v23 = [v22 getPreferredHH2ControllerKey];

    if (v23)
    {
      v24 = [(HMDHomeWalletKeyManager *)v17 isoCredentialFactory];
      v25 = (v24)[2](v24, v23, v15);

      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __83__HMDHomeWalletKeyManager_addISOCredentialV0WithPassAtURL_nfcInfo_flow_completion___block_invoke;
      v36[3] = &unk_278673D48;
      v36[4] = v17;
      v37 = v12;
      v40 = v13;
      v38 = v11;
      v39 = v10;
      [v25 encodeWithCompletion:v36];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v17;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        [v12 UUID];
        v32 = v35 = v28;
        *buf = 138543874;
        v42 = v31;
        v43 = 2112;
        v44 = v32;
        v45 = 2112;
        v46 = 0;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to get local pairing identity %@", buf, 0x20u);

        v28 = v35;
      }

      objc_autoreleasePoolPop(v28);
      v25 = [MEMORY[0x277CBEB38] dictionary];
      [v25 setObject:0 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 userInfo:v25];
      (*(v13 + 2))(v13, v33);
    }
  }

  else
  {
    if (v19)
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v12 UUID];
      *buf = 138543618;
      v42 = v26;
      v43 = 2112;
      v44 = v27;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not adding ISO credential because there is no device credential key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    (*(v13 + 2))(v13, 0);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __83__HMDHomeWalletKeyManager_addISOCredentialV0WithPassAtURL_nfcInfo_flow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDHomeWalletKeyManager_addISOCredentialV0WithPassAtURL_nfcInfo_flow_completion___block_invoke_2;
  block[3] = &unk_2786873D8;
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully created UA iso credential", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to write UA ISO credential to file at url %@:%@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create encoded UA ISO credential %@", buf, 0x20u);
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
  v26[3] = &unk_278673D20;
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
  v24[3] = &unk_27867B428;
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
  v92 = *MEMORY[0x277D85DE8];
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

      if (v14)
      {
        if (![v14 isMissingNFCInfo])
        {
          v71 = v11;
          v73 = v14;
          v21 = v14;
          v82 = 0;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v72 = v9;
          v22 = v9;
          v23 = [v22 countByEnumeratingWithState:&v78 objects:v91 count:16];
          v70 = v21;
          if (v23)
          {
            v24 = v23;
            v25 = 0;
            v26 = *v79;
            while (2)
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v79 != v26)
                {
                  objc_enumerationMutation(v22);
                }

                v28 = *(*(&v78 + 1) + 8 * i);
                buf[0] = 0;
                v29 = (*(v28 + 16))();
                v30 = v29;
                if (v82)
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

              v24 = [v22 countByEnumeratingWithState:&v78 objects:v91 count:16];
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

          if (v82 == 1)
          {
            v32 = [(HMDHomeWalletKeyManager *)self passLibrary];
            v11 = v71;
            v33 = [v32 removePassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v71 flow:v4];

            v34 = objc_autoreleasePoolPush();
            v35 = self;
            v36 = HMFGetOSLogHandle();
            v37 = v36;
            v14 = v73;
            if (v33)
            {
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                v38 = HMFGetLogIdentifier();
                v39 = [v4 UUID];
                *buf = 138543618;
                v84 = v38;
                v85 = 2112;
                v86 = v39;
                _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully removed home key fom wallet", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v34);
              v40 = objc_autoreleasePoolPush();
              v41 = v35;
              v42 = HMFGetOSLogHandle();
              v9 = v72;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = HMFGetLogIdentifier();
                v44 = [v4 UUID];
                *buf = 138543618;
                v84 = v43;
                v85 = 2112;
                v86 = v44;
                _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Resetting dismissed UWB onboarding flag and clearing client wallet key UUID", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v40);
              v45 = [(HMDHomeWalletKeyManager *)v41 home];
              [v45 resetHomeKeyMiscInfo];
            }

            else
            {
              v9 = v72;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v54 = HMFGetLogIdentifier();
                v55 = [v4 UUID];
                *buf = 138543618;
                v84 = v54;
                v85 = 2112;
                v86 = v55;
                _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove home key from wallet", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v34);
            }
          }

          else
          {
            v46 = [v21 isMissingNFCInfo];
            v47 = objc_autoreleasePoolPush();
            v48 = self;
            v49 = HMFGetOSLogHandle();
            v50 = v49;
            v14 = v73;
            if (v46)
            {
              v9 = v72;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                v51 = HMFGetLogIdentifier();
                v52 = [v4 UUID];
                v53 = [v21 nfcInfos];
                *buf = 138543874;
                v84 = v51;
                v85 = 2112;
                v86 = v52;
                v87 = 2112;
                v88 = v53;
                _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update wallet key because we have lost NFC info: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v47);
              v11 = v71;
            }

            else
            {
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                v56 = HMFGetLogIdentifier();
                v57 = [v4 UUID];
                *buf = 138544130;
                v84 = v56;
                v85 = 2112;
                v86 = v57;
                v87 = 2112;
                v88 = v70;
                v89 = 2112;
                v90 = v21;
                _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Updating home key in Wallet from %@ to %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v47);
              v58 = [(HMDHomeWalletKeyManager *)v48 home];
              v59 = [v58 clientWalletKeyUUID];

              v9 = v72;
              if (!v59)
              {
                v60 = objc_autoreleasePoolPush();
                v61 = v48;
                v62 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                {
                  v68 = HMFGetLogIdentifier();
                  v69 = v60;
                  v63 = [v4 UUID];
                  v64 = [v70 uuid];
                  *buf = 138543874;
                  v84 = v68;
                  v85 = 2112;
                  v86 = v63;
                  v87 = 2112;
                  v88 = v64;
                  v65 = v64;
                  _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wallet key UUID for client has not been set, the existing wallet key being updated is pre-UWB, so saving the existingWalletKey as the wallet key's UUID: %@ going forward", buf, 0x20u);

                  v60 = v69;
                }

                objc_autoreleasePoolPop(v60);
                v66 = [v70 uuid];
                [v58 saveClientWalletKeyUUIDToLocalStore:v66];
              }

              [(HMDHomeWalletKeyManager *)v48 setIsWalletKeyUpdateOperationInProgress:1];
              v74[0] = MEMORY[0x277D85DD0];
              v74[1] = 3221225472;
              v74[2] = __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke;
              v74[3] = &unk_278673CF8;
              v74[4] = v48;
              v75 = v4;
              v77 = v25 & 1;
              v76 = v21;
              [(HMDHomeWalletKeyManager *)v48 createPassDirectoryWithWalletKey:v76 options:0 shouldSkipResourceFiles:0 shouldCreateZipArchive:1 validateNFCInfo:1 flow:v75 completion:v74];

              v11 = v71;
              v14 = v73;
            }
          }

          goto LABEL_46;
        }

        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v4 UUID];
          v20 = [v14 nfcInfos];
          *buf = 138543874;
          v84 = v18;
          v85 = 2112;
          v86 = v19;
          v87 = 2112;
          v88 = v20;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Can't update wallet key because we are missing NFC info for the current wallet key. NFCInfo: %@", buf, 0x20u);

LABEL_9:
        }
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v4 UUID];
          *buf = 138543874;
          v84 = v18;
          v85 = 2112;
          v86 = v19;
          v87 = 2112;
          v88 = v11;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Skipping wallet key update since key with serial number does not exist: %@", buf, 0x20u);
          goto LABEL_9;
        }
      }

      objc_autoreleasePoolPop(v15);
LABEL_46:
    }
  }

  v67 = *MEMORY[0x277D85DE8];
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
    v28[2] = __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_382;
    v28[3] = &unk_2786801C8;
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
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove file at URL %@:%@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create zipped pass: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    [*(a1 + 32) setIsWalletKeyUpdateOperationInProgress:0];
    [*(a1 + 32) handlePendingWalletKeyUpdateOperationsWithFlow:*(a1 + 40)];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_382(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update home key in Wallet :%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if (v7)
    {
LABEL_5:
      v12 = [v7 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_2;
      block[3] = &unk_27868A750;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated home key in Wallet", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (*(a1 + 72) == 1)
    {
      v16 = [v7 workQueue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_383;
      v20[3] = &unk_27868A010;
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

void __74__HMDHomeWalletKeyManager_handlePendingWalletKeyUpdateOperationsWithFlow___block_invoke_383(uint64_t a1)
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Wallet key update operation in progress, update will happen later", &v18, 0x16u);
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
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] Syncing device credential key", buf, 0x20u);
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
    v27[3] = &unk_27868A1D8;
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
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No accessory manager found to sync device credential key", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v11, v12, v10, &v15, v13);
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
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Can not remove wallet key onboarding bulletin because home is nil", &v13, 0xCu);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Not creating express mode setup bulletin on this device", &v16, 0xCu);
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
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Can not create express mode setup bulletin because home is nil", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enableExpressWithOptions:(int64_t)a3 flow:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if ((a3 & 6) != 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v8 UUID];
      *buf = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Enabling express after adding home key", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMDHomeWalletKeyManager *)v12 passLibrary];
    v17 = [(HMDHomeWalletKeyManager *)v12 passSerialNumber];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__HMDHomeWalletKeyManager_enableExpressWithOptions_flow_completion___block_invoke;
    v19[3] = &unk_278688DD0;
    v20 = v10;
    [v16 setExpressSettingsWithAuthData:0 enableUWB:(a3 >> 2) & 1 enableNFCExpress:(a3 >> 1) & 1 passTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v17 flow:v8 completion:v19];
  }

  else
  {
    (*(v9 + 2))(v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addWalletKey:(id)a3 withOptions:(int64_t)a4 assertion:(id)a5 flow:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
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
    v37 = v17;
    v38 = 2112;
    v39 = v18;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v19;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding wallet key: %@ with options: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v20 = [MEMORY[0x277CCAD78] UUID];
  v21 = objc_autoreleasePoolPush();
  v22 = v15;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [v12 UUID];
    *buf = 138543874;
    v37 = v24;
    v38 = 2112;
    v39 = v25;
    v40 = 2112;
    v41 = v20;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] New Wallet key in process of adding, creating client wallet key uuid: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = [(HMDHomeWalletKeyManager *)v22 home];
  [v26 saveClientWalletKeyUUIDToLocalStore:v20];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke;
  v31[3] = &unk_278673CD0;
  v31[4] = v22;
  v32 = v12;
  v33 = v11;
  v34 = v10;
  v35 = a4;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  [(HMDHomeWalletKeyManager *)v22 createPassDirectoryWithWalletKey:v27 options:a4 shouldSkipResourceFiles:0 shouldCreateZipArchive:1 validateNFCInfo:1 flow:v29 completion:v31];

  v30 = *MEMORY[0x277D85DE8];
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
    v35[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_378;
    v35[3] = &unk_278673CA8;
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
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove file at URL %@:%@", buf, 0x2Au);

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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create zipped pass", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    [*(a1 + 48) invalidate];
    v30 = [*(a1 + 32) addWalletKeyFuture];
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v30 finishWithError:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_378(uint64_t a1, void *a2)
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
      v22[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_380;
      v22[3] = &unk_2786891E0;
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to add home key in wallet at URL %@:%@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to add home key in wallet at URL, object got invalidated", buf, 0x16u);
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

void __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_380(id *a1)
{
  [a1[4] invalidate];
  v2 = [a1[5] addWalletKeyFuture];
  [v2 finishWithResult:a1[6]];

  v3 = [a1[5] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDHomeWalletKeyManager_addWalletKey_withOptions_assertion_flow___block_invoke_2;
  block[3] = &unk_27868A010;
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
  v4[3] = &unk_278673C80;
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
  v85 = *MEMORY[0x277D85DE8];
  v61 = a4;
  v62 = a5;
  v9 = a6;
  v10 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v62 UUID];
    *buf = 138544130;
    v78 = v14;
    v79 = 2112;
    v80 = v15;
    v81 = 2048;
    v82 = a3;
    v83 = 2112;
    v84 = v61;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Adding wallet key with options: %ld, readerKey: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDHomeWalletKeyManager *)v12 home];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 name];
    if (v18)
    {
      v59 = [(HMDHomeWalletKeyManager *)v12 passSerialNumber];
      if (v59)
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
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke;
        v71[3] = &unk_278673BB8;
        objc_copyWeak(&v75, &location);
        v57 = v62;
        v72 = v57;
        v74 = v9;
        v27 = v21;
        v73 = v27;
        v28 = [v26 addCompletionBlock:v71];

        if (v19)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = v12;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            v33 = [v57 UUID];
            *buf = 138543618;
            v78 = v32;
            v79 = 2112;
            v80 = v33;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Add wallet key is already in progress", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
        }

        else
        {
          v49 = [v17 acwgGroupResolvingKey];
          v50 = objc_autoreleasePoolPush();
          v51 = v12;
          v52 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = HMFGetLogIdentifier();
            v54 = [v57 UUID];
            *buf = 138543618;
            v78 = v53;
            v79 = 2112;
            v80 = v54;
            _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetching home key supported", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v50);
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_368;
          v63[3] = &unk_278673C58;
          v63[4] = v51;
          v64 = v57;
          v65 = v61;
          v66 = v59;
          v67 = v17;
          v55 = v49;
          v68 = v55;
          v69 = v18;
          v70 = a3;
          [(HMDHomeWalletKeyManager *)v51 fetchHomeKeySupportedWithFlow:v64 completion:v63];
        }

        objc_destroyWeak(&v75);
        objc_destroyWeak(&location);
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        v45 = v12;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          v48 = [v62 UUID];
          *buf = 138543618;
          v78 = v47;
          v79 = 2112;
          v80 = v48;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, serial number is nil", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (*(v9 + 2))(v9, 0, v27);
      }
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = v12;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [v62 UUID];
        *buf = 138543618;
        v78 = v42;
        v79 = 2112;
        v80 = v43;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, no name configured for home", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v60 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v9 + 2))(v9, 0, v60);
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v12;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [v62 UUID];
      *buf = 138543618;
      v78 = v37;
      v79 = 2112;
      v80 = v38;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, home is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v9 + 2))(v9, 0, v18);
  }

  v56 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Self became nil while waiting for add wallet key future to finish", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    (*(*(a1 + 48) + 16))();
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_368(uint64_t a1, char a2, void *a3)
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Acquiring wallet provisioning assertion", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [*(a1 + 32) passLibrary];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_372;
    v24[3] = &unk_278673C30;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Adding home key in wallet is not supported: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v21 = [*(a1 + 32) addWalletKeyFuture];
    [v21 finishWithError:v5];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_372(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generating home key nfc info with reader key: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = [*(a1 + 64) spiClientIdentifier];
    v18 = *(a1 + 72);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_373;
    v27[3] = &unk_278673C08;
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Did not add home key in wallet, failed to acquire assertion: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v24 = [*(a1 + 32) addWalletKeyFuture];
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v24 finishWithError:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_373(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Generated NFC info: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_374;
    block[3] = &unk_278678238;
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to generate nfc info for home key: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 48) invalidate];
    v22 = [*(a1 + 32) addWalletKeyFuture];
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v22 finishWithError:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_374(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchWalletKeyColorOptionWithFlow:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_nfcReaderKey_flow_completion___block_invoke_2;
  v7[3] = &unk_278673BE0;
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] fetchWalletKeyColorOption", buf, 0x16u);
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
    v27[3] = &unk_2786838E8;
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
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No accessory manager found, using default wallet key color", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully fetch wallet key color: %@", &v22, 0x20u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to fetch wallet key color: %@, using default wallet key color: %@", &v22, 0x2Au);
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
  block[3] = &unk_278689F98;
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
  v4[3] = &unk_278688DA8;
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
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Fetch or create reader key", &v29, 0x16u);
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add home key, home is nil", &v29, 0x16u);
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
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home doesn't have any accessory that supports wallet key", &v29, 0x16u);
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

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_isOnboarding_flow_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, char a7, void *a8)
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = [*(a1 + 32) workQueue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_isOnboarding_flow_completion___block_invoke_2;
  v25[3] = &unk_278680308;
  v20 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v34 = a7;
  v32 = a2;
  v33 = a6;
  v29 = v18;
  v30 = v20;
  v31 = *(a1 + 48);
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  dispatch_async(v19, v25);
}

void __80__HMDHomeWalletKeyManager_addWalletKeyWithOptions_isOnboarding_flow_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  LOBYTE(v3) = *(a1 + 104);
  [*(a1 + 32) handlePassUpdatedWithResult:*(a1 + 88) paymentApps:*(a1 + 40) addedPaymentApps:*(a1 + 48) pass:*(a1 + 56) accessoryToSync:0 showSetupBulletinOnAdd:0 isUWBCapabilityNewlyEnabled:v3 showExpressBulletinOnAddForWatch:*(a1 + 96) error:*(a1 + 64) flow:*(a1 + 72)];
  v4 = [[HMDHomeWalletKey alloc] initWithPKPass:*(a1 + 56) flow:*(a1 + 72)];
  (*(*(a1 + 80) + 16))();
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
  v10[3] = &unk_278673B68;
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
  v52[3] = &unk_22A7E2FC5;
  v53 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__50433;
  v49[4] = __Block_byref_object_dispose__50434;
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
        v37[3] = &unk_278673B18;
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
  block[2] = __76__HMDHomeWalletKeyManager_sendMessageWithName_payload_toWatches_completion___block_invoke_363;
  block[3] = &unk_278673B40;
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Watch: %@ failed to handle message %@:%@ ", &v27, 0x2Au);
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Watch: %@ successfully handled message %@", &v27, 0x20u);
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

void __76__HMDHomeWalletKeyManager_sendMessageWithName_payload_toWatches_completion___block_invoke_363(uint64_t a1)
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
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode error by device", &v11, 0xCu);
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
  v15[3] = &unk_278673AF0;
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
  v12[3] = &unk_278688B58;
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express conflicting pass description: %@", buf, 0x20u);
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
    v13 = +[HMDPassUpdater shared];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__HMDHomeWalletKeyManager_updateDeviceStateWithWalletKey_flow_completion___block_invoke;
    v15[3] = &unk_278673AC8;
    v15[4] = self;
    v16 = v9;
    v19 = v10;
    v17 = v12;
    v18 = v8;
    [v13 passWithExpressConfigurationWithSerialNumber:v17 completionHandler:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v10 + 2))(v10, 0, v14);
  }
}

void __74__HMDHomeWalletKeyManager_updateDeviceStateWithWalletKey_flow_completion___block_invoke(uint64_t a1, void *a2, char a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = [*(a1 + 32) workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HMDHomeWalletKeyManager_updateDeviceStateWithWalletKey_flow_completion___block_invoke_2;
  v16[3] = &unk_278673AA0;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v17 = v10;
  v18 = v12;
  v19 = v13;
  v23 = *(a1 + 64);
  v20 = v9;
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v24 = a3;
  v25 = a4;
  v14 = v9;
  v15 = v10;
  dispatch_async(v11, v16);
}

void __74__HMDHomeWalletKeyManager_updateDeviceStateWithWalletKey_flow_completion___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
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
      v32 = 138543874;
      v33 = v5;
      v34 = 2112;
      v35 = v6;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to either fetch pass or fetch existing express settings: %@", &v32, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = *(a1 + 80);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v8 + 16))(v8, 0, v9);
LABEL_15:

    goto LABEL_16;
  }

  if (*(a1 + 56))
  {
    v9 = [[HMDHomeWalletKey alloc] initWithPKPass:*(a1 + 56) flow:*(a1 + 48)];
    v10 = *(a1 + 88);
    v11 = *(a1 + 89);
    v12 = [*(a1 + 40) home];
    v13 = [v12 clientWalletKeyUUID];
    v14 = [(HMDHomeWalletKey *)v9 xpcWalletKeyWithExpressEnabled:v10 uwbEnabled:v11 clientWalletKeyUUID:v13];

    if (v14)
    {
      v15 = [*(a1 + 72) mutableCopy];
      [v15 setWalletKey:v14];
      v16 = *(a1 + 80);
      v17 = [v15 copy];
      (*(v16 + 16))(v16, v17, 0);
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 40);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [*(a1 + 48) UUID];
        v32 = 138543874;
        v33 = v28;
        v34 = 2112;
        v35 = v29;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create xpc wallet key with wallet key: %@", &v32, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = *(a1 + 80);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      (*(v30 + 16))(v30, 0, v15);
    }

    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 40);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [*(a1 + 48) UUID];
    v23 = *(a1 + 64);
    v32 = 138543874;
    v33 = v21;
    v34 = 2112;
    v35 = v22;
    v36 = 2112;
    v37 = v23;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find pass in wallet for serial number: %@", &v32, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v24 = *(a1 + 72);
  (*(*(a1 + 80) + 16))();
LABEL_16:
  v31 = *MEMORY[0x277D85DE8];
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
    v13[3] = &unk_278677380;
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
  v14[3] = &unk_278682000;
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
  v9[3] = &unk_278685C18;
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
      v35[3] = &unk_278673A78;
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
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express enablement conflicting pass description, secure element identifier is nil", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch express enablement conflicting pass description, wallet key serial number is nil", buf, 0x16u);
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
    v20[2] = __95__HMDHomeWalletKeyManager_fetchExpressEnablementConflictingPassDescriptionWithFlow_completion___block_invoke_356;
    v20[3] = &unk_278673A50;
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, pass creation failed: %@", buf, 0x20u);
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
  v24 = *MEMORY[0x277D85DE8];
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
          v22 = 138543362;
          v23 = v17;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Cannot auto add wallet key because home is currently being removed", &v22, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        goto LABEL_20;
      }

      if (![(HMDHomeWalletKeyManager *)self shouldRollWalletKeyAfterMigration])
      {
        v7 = 1;
        goto LABEL_22;
      }

      if (!a3)
      {
        goto LABEL_20;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = 3;
    }

    else
    {
      if (!a3)
      {
LABEL_20:
        v7 = 0;
        goto LABEL_22;
      }

      v18 = MEMORY[0x277CCA9B8];
      v19 = 2;
    }

    [v18 errorWithDomain:@"HMDHomeAutoAddWalletKeyErrorDomain" code:v19 userInfo:0];
    *a3 = v7 = 0;
LABEL_22:

    goto LABEL_23;
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

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)addIssuerKeysToMatterV1AccessoriesWithFlow:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
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
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[ChildFlow: %@ Parent: %@] addIssuerKeysToMatterAccessories", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [(HMDHomeWalletKeyManager *)v7 home];
  if ([v12 hasAnyResident])
  {
    v13 = MEMORY[0x277D0F848];
    v29 = *MEMORY[0x277D0F1C8];
    v14 = HMFEncodedRootObject();
    v30 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v16 = [v13 entitledMessageWithName:@"HMDHomeWalletKeyAccessoryManagerAddIssuerKeysToAccessoriesMessage" messagePayload:v15];

    v17 = [v12 nfcReaderKeyManager];
    v18 = [v17 accessoryManager];
    v19 = [v18 messageTargetUUID];

    v20 = [objc_alloc(MEMORY[0x277D0F820]) initWithTarget:v19];
    [v16 setDestination:v20];
    v21 = objc_autoreleasePoolPush();
    v22 = v7;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v24 = v28 = v4;
      v25 = [v5 UUID];
      *buf = 138543874;
      v32 = v24;
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] sending message: %@", buf, 0x20u);

      v4 = v28;
    }

    objc_autoreleasePoolPop(v21);
    v26 = [(HMDHomeWalletKeyManager *)v22 workQueue];
    [v12 redispatchToResidentMessage:v16 target:v19 responseQueue:v26];
  }

  else
  {
    v16 = [v12 nfcReaderKeyManager];
    v19 = [v16 accessoryManager];
    [v19 addIssuerKeysToMatterV1AccessoriesWithFlow:v5];
  }

  v27 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling RestoreMissingWalletKeysMessage: %@", &v15, 0x16u);
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling FetchMissingWalletKeysMessage: %@", &v15, 0x16u);
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling remote message to add wallet key: %@ payload: %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Missing nfc reader key in the message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v4 respondWithError:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleAddWalletKeyMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
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
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v4;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling message to add wallet key %@ payload: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = [v4 numberForKey:*MEMORY[0x277CCFE28]];
  v14 = [v13 integerValue];

  objc_initWeak(buf, v8);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __53__HMDHomeWalletKeyManager_handleAddWalletKeyMessage___block_invoke;
  v18[3] = &unk_278673A28;
  objc_copyWeak(&v21, buf);
  v15 = v4;
  v19 = v15;
  v16 = v6;
  v20 = v16;
  [(HMDHomeWalletKeyManager *)v8 addWalletKeyWithOptions:v14 isOnboarding:1 flow:v16 completion:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x277D85DE8];
}

void __53__HMDHomeWalletKeyManager_handleAddWalletKeyMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    [*(a1 + 32) respondWithError:v6];
  }

  else
  {
    v9 = [WeakRetained home];
    v10 = [v5 uuid];
    v11 = [v9 clientWalletKeyUUID];

    if (v11)
    {
      v12 = [v9 clientWalletKeyUUID];

      v13 = objc_autoreleasePoolPush();
      v14 = v8;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        [v5 uuid];
        v17 = v23 = v13;
        *buf = 138543874;
        v27 = v16;
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Client Wallet Key UUID saved to local store, using it: %@ instead of %@", buf, 0x20u);

        v13 = v23;
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      v12 = v10;
    }

    v18 = *(a1 + 32);
    v24 = *MEMORY[0x277CD0730];
    v25 = v12;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v18 respondWithPayload:v19];

    v20 = [v9 nfcReaderKeyManager];
    v21 = [v20 accessoryManager];
    [v21 configureNFCReaderKeyForAllAccessoriesWithReason:@"Add wallet key message"];

    if ((_os_feature_enabled_impl() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"MatterTTU", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
    {
      [v8 addIssuerKeysToMatterV1AccessoriesWithFlow:*(a1 + 40)];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling message for watch: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDHomeWalletKeyManager *)v8 watchManager];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 connectedWatches];
    v15 = [v14 na_filter:&__block_literal_global_330];
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
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Connected supported watch count: %lu is not equal to paired watch count: %lu", buf, 0x2Au);

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
        v63[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_332;
        v63[3] = &unk_27867DBA0;
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
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Message is not supported for paired watches: %@", buf, 0x20u);

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
      v61[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_334;
      v61[3] = &unk_27868A250;
      v45 = v4;
      v62 = v45;
      v46 = [v28 addFailureBlock:v61];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_2;
      v56[3] = &unk_278673A00;
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
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not handling message for paired watches:%@ connected watches count is %lu but none are supported", buf, 0x2Au);

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

void __57__HMDHomeWalletKeyManager_handleMessageForPairedWatches___block_invoke_332(uint64_t a1, void *a2)
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
  v11[3] = &unk_2786739D8;
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
  v14 = a3;
  if (!v14)
  {
    v14 = a1[4];
  }

  v5 = a1[5];
  v6 = a2;
  v7 = objc_opt_class();
  v8 = [a1[6] name];
  v9 = [v7 responsePayloadForPairedWatchesWithMessageName:v8 responsePayloadByDevice:v6 error:v14];

  v10 = [a1[6] name];
  LOBYTE(v6) = [v10 isEqualToString:*MEMORY[0x277CCFE30]];

  if ((v6 & 1) != 0 && ([v14 code] == 2008 || !v14))
  {
    v11 = [a1[5] home];
    v12 = [v11 nfcReaderKeyManager];
    v13 = [v12 accessoryManager];
    [v13 configureNFCReaderKeyForAllAccessoriesWithReason:@"Handle message for paired watches"];

    [a1[6] respondWithPayload:v9 error:v14];
  }

  else
  {
    [a1[6] respondWithPayload:v9 error:v14];
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

- (void)handleSetHomeKeyExpressSettingsMessage:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
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
    v40 = v10;
    v41 = 2112;
    v42 = v11;
    v43 = 2112;
    v44 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling set express settings message: %@", buf, 0x20u);
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
      v16 = [v4 numberForKey:*MEMORY[0x277CD0428]];
      v17 = [v16 BOOLValue];

      v18 = [v4 numberForKey:*MEMORY[0x277CD0420]];
      v19 = [v18 BOOLValue];

      v20 = +[HMDPassUpdater shared];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __66__HMDHomeWalletKeyManager_handleSetHomeKeyExpressSettingsMessage___block_invoke;
      v34[3] = &unk_278673990;
      v34[4] = v8;
      v35 = v6;
      v36 = v4;
      v37 = v19;
      v38 = v17;
      [v20 setExpressSettingsForPassSerialNumber:v12 enableNFCExpress:v19 enableUWB:v17 authData:v15 flow:v35 completionHandler:v34];
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v8;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v6 UUID];
        v31 = [v4 messagePayload];
        *buf = 138544130;
        v40 = v29;
        v41 = 2112;
        v42 = v30;
        v43 = 2112;
        v44 = v31;
        v45 = 2112;
        v46 = v13;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set express settings, missing key is payload %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v4 respondWithError:v32];

      v15 = 0;
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v8;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v6 UUID];
      *buf = 138543618;
      v40 = v24;
      v41 = 2112;
      v42 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set express settings, serial number is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v4 respondWithError:v15];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __66__HMDHomeWalletKeyManager_handleSetHomeKeyExpressSettingsMessage___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
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
      v17 = 138543874;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set express settings for home key: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = *(a1 + 56);
      v13 = HMFBooleanToString();
      v14 = *(a1 + 57);
      v15 = HMFBooleanToString();
      v17 = 138544130;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully set express settings for home key. isNFCExpressEnabled: %@, isUWBEnabled: %@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 48) respondWithPayload:MEMORY[0x277CBEC10]];
  }

  v16 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling message to enable express: %@", buf, 0x20u);
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
      v30[3] = &unk_278688D58;
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
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to enable express, missing key is payload %@:%@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to enable express, serial number is nil", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to enable express for home key: %@", &v13, 0x20u);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully enabled express for home key", &v13, 0x16u);
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] handleFetchAvailableWalletKeyEncodedPKPassMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v4 messagePayload];
  v13 = [v12 hmf_setForKey:*MEMORY[0x277CD0718]];
  v14 = [v13 na_map:&__block_literal_global_319_50495];

  v15 = [(HMDHomeWalletKeyManager *)v8 home];
  if ([v15 hasAnyAccessoryWithWalletKeySupport] & 1) != 0 || (objc_msgSend(v14, "containsObject:", &unk_283E72170))
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
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, serial number is nil", buf, 0x16u);
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

      if (!v19 || ([v14 containsObject:&unk_283E72188] & 1) != 0)
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
        v54[2] = __77__HMDHomeWalletKeyManager_handleFetchAvailableWalletKeyEncodedPKPassMessage___block_invoke_325;
        v54[3] = &unk_278673968;
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
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, pass already exists", buf, 0x16u);

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
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, no name configured for home", buf, 0x16u);

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
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] No accessory in home supports wallet key", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  [v4 respondWithError:v16];
LABEL_25:

  v49 = *MEMORY[0x277D85DE8];
}

void __77__HMDHomeWalletKeyManager_handleFetchAvailableWalletKeyEncodedPKPassMessage___block_invoke_325(id *a1, void *a2, void *a3, void *a4)
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
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove file at URL %@:%@", buf, 0x2Au);
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
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, file handle creation failed for file %@:%@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch encoded PKPass, pass creation failed: %@", buf, 0x20u);
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling FetchWalletKeyColorMessage", buf, 0xCu);
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
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling FetchWalletKeyColorMessage", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMDHomeWalletKeyManager *)v12 fetchWalletKeyColorOptionWithFlow:v10];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__HMDHomeWalletKeyManager_handleFetchWalletKeyColorMessage___block_invoke;
  v21[3] = &unk_278679A08;
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding to FetchWalletKeyColorMessage with color: %@", buf, 0x20u);
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
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] handleFetchDeviceStateMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = objc_alloc_init(MEMORY[0x277CD1AC0]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HMDHomeWalletKeyManager_handleFetchDeviceStateMessage___block_invoke;
  v16[3] = &unk_278673940;
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
  v8[3] = &unk_278673918;
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
    v10[3] = &unk_278673918;
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Responding with wallet key device state: %@", buf, 0x20u);
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to encode wallet key device state %@:%@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update device state with express conflict. Error: %@", buf, 0x20u);
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
  v5 = a3;
  v4 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  [(HMDHomeWalletKeyManager *)self updateWalletKeyWithReason:@"autoAddWalletKey API invocation" flow:v5 completion:0];
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
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@currentUser is nil, so using cached currentUserUUID: %@", &v14, 0x16u);
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

  [(HMDHomeWalletKeyManager *)self updateWalletKeyWithReason:@"access code changed" flow:0 completion:0];
}

- (void)recoverDueToUUIDChangeOfUser:(id)a3 fromOldUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeWalletKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHomeWalletKeyManager_recoverDueToUUIDChangeOfUser_fromOldUUID___block_invoke;
  block[3] = &unk_27868A010;
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
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Recovering due to uuid change of user: %@, old uuid: %@", buf, 0x2Au);
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
    v21[2] = __68__HMDHomeWalletKeyManager_recoverDueToUUIDChangeOfUser_fromOldUUID___block_invoke_304;
    v21[3] = &unk_2786738F0;
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
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not recovering due to user UUID change because no home key exists in Wallet", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__HMDHomeWalletKeyManager_recoverDueToUUIDChangeOfUser_fromOldUUID___block_invoke_304(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to recover due to user UUID change: %@", &v17, 0x20u);
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully recovered due to user UUID change", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 createExpressModeSetUpBulletin];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_replaceWalletKeyAfterHH2Migration
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeWalletKeyManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDHomeWalletKeyManager *)self home];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 currentUser];
    if (v6)
    {
      if ([v5 hasAnyAccessoryWithWalletKeySupport])
      {
        if (![(HMDHomeWalletKeyManager *)self isWalletKeyRollForHH2InProgress])
        {
          v17 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
          v18 = objc_autoreleasePoolPush();
          v19 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            v22 = [v17 UUID];
            *buf = 138543618;
            v38 = v21;
            v39 = 2112;
            v40 = v22;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Deleting and re-adding wallet key because we just upgraded to HH2", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          v23 = [(HMDHomeWalletKeyManager *)v19 passLibrary];
          v24 = [(HMDHomeWalletKeyManager *)v19 passSerialNumber];
          v25 = [v23 removePassWithTypeIdentifier:@"paymentpass.com.apple.dev1" serialNumber:v24 flow:v17];

          if ((v25 & 1) == 0)
          {
            v26 = objc_autoreleasePoolPush();
            v27 = v19;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = HMFGetLogIdentifier();
              v30 = [v17 UUID];
              *buf = 138543618;
              v38 = v29;
              v39 = 2112;
              v40 = v30;
              _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not remove pass because no home key exists in Wallet", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v26);
          }

          if ([(HMDHomeWalletKeyManager *)v19 shouldEnableExpressModeAfterMigration])
          {
            v31 = 3;
          }

          else
          {
            v31 = 1;
          }

          [(HMDHomeWalletKeyManager *)v19 setIsWalletKeyRollForHH2InProgress:1];
          objc_initWeak(buf, v19);
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __61__HMDHomeWalletKeyManager__replaceWalletKeyAfterHH2Migration__block_invoke;
          v34[3] = &unk_2786738F0;
          objc_copyWeak(&v36, buf);
          v32 = v17;
          v35 = v32;
          [(HMDHomeWalletKeyManager *)v19 addWalletKeyWithOptions:v31 isOnboarding:0 flow:v32 completion:v34];

          objc_destroyWeak(&v36);
          objc_destroyWeak(buf);

          goto LABEL_27;
        }

        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138543362;
          v38 = v10;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@HH2 key roll is already in progress", buf, 0xCu);
        }
      }

      else
      {
        v7 = objc_autoreleasePoolPush();
        v8 = self;
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543362;
          v38 = v16;
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Can not migrate home key to HH2 because home does not have any accessory that supports wallet key", buf, 0xCu);
        }
      }
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v15;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No current user yet", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v7);
LABEL_27:

    goto LABEL_28;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@home is unexpectedly nil; cannot replace wallet key after HH2 migration", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
LABEL_28:

  v33 = *MEMORY[0x277D85DE8];
}

void __61__HMDHomeWalletKeyManager__replaceWalletKeyAfterHH2Migration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsWalletKeyRollForHH2InProgress:0];
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to re-add wallet pass after update to HH2 with error: %@", &v17, 0x20u);
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added new wallet key after update to HH2, removing settings from disk", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 removeWalletKeyMigrationSettingsFileFromDisk];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleSystemKeychainStoreUpdatedNotification:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
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
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling handleSystemKeychainStoreUpdatedNotification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeWalletKeyManager *)v7 home];
  v12 = +[HMDPassUpdater shared];
  v13 = [v11 uuid];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__HMDHomeWalletKeyManager_handleSystemKeychainStoreUpdatedNotification___block_invoke;
  v16[3] = &unk_2786738C8;
  v16[4] = v7;
  v17 = v5;
  v14 = v5;
  [v12 updatePassOnKeychainUpdateForHomeUUID:v13 flow:v14 completionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __72__HMDHomeWalletKeyManager_handleSystemKeychainStoreUpdatedNotification___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, char a7, void *a8)
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDHomeWalletKeyManager_handleSystemKeychainStoreUpdatedNotification___block_invoke_2;
  block[3] = &unk_2786738A0;
  v20 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v33 = a7;
  v31 = a2;
  v32 = a6;
  v29 = v18;
  v30 = v20;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  dispatch_async(v19, block);
}

- (void)replaceWalletKeyAfterHH2MigrationIfNecessary
{
  v3 = [(HMDHomeWalletKeyManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDHomeWalletKeyManager_replaceWalletKeyAfterHH2MigrationIfNecessary__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __71__HMDHomeWalletKeyManager_replaceWalletKeyAfterHH2MigrationIfNecessary__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shouldRollWalletKeyAfterMigration];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _replaceWalletKeyAfterHH2Migration];
  }

  return result;
}

- (void)handleOneMinuteSinceHomeManagerHasFinishedStartingUp:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
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
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling HMDOneMinuteSinceHomeManagerFinishedStartingUpNotification", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [(HMDHomeWalletKeyManager *)v7 home];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 currentUser];
    v14 = [v13 uuid];
    if (v14)
    {
      v15 = v14;

LABEL_11:
      v20 = +[HMDACWGKeyManager shared];
      v21 = [(HMDHomeWalletKeyManager *)v7 uuid];
      v22 = [v12 backingStore];
      v23 = [v22 context];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __80__HMDHomeWalletKeyManager_handleOneMinuteSinceHomeManagerHasFinishedStartingUp___block_invoke;
      v26[3] = &unk_278683F48;
      v26[4] = v7;
      v27 = v5;
      [v20 getOrCreateIssuerKeyAndSaveIfNeededWithHome:v21 user:v15 context:v23 shouldRoll:0 completionHandler:v26];

      goto LABEL_12;
    }

    v15 = [(HMDHomeWalletKeyManager *)v7 currentUserUUID];

    if (v15)
    {
      goto LABEL_11;
    }

    v16 = objc_autoreleasePoolPush();
    v17 = v7;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v25 = [v5 UUID];
      *buf = 138543618;
      v29 = v19;
      v30 = 2112;
      v31 = v25;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] currentUserUUID is nil", buf, 0x16u);

      goto LABEL_8;
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
      v29 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@home is unexpectedly nil", buf, 0xCu);
LABEL_8:
    }
  }

  objc_autoreleasePoolPop(v16);
LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
}

void __80__HMDHomeWalletKeyManager_handleOneMinuteSinceHomeManagerHasFinishedStartingUp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create or fetch ACWG issuer key with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  [*(a1 + 32) updateWalletKeyWithReason:@"home data loaded" flow:*(a1 + 40) completion:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeWalletKeyMigrationSettingsFileFromDisk
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeWalletKeyManager *)self walletKeySettingsFileURL];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing wallet key express mode settings from disk", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDHomeWalletKeyManager *)v5 fileManager];
  v15 = 0;
  [v8 removeItemAtURL:v3 error:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v5;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while removing wallet key migration settings file from disk : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEnableExpressModeAfterMigration
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeWalletKeyManager *)self walletKeySettingsFileURL];
  v4 = [(HMDHomeWalletKeyManager *)self fileManager];
  if ([v4 fileExistsAtURL:v3])
  {
    v36 = 0;
    v5 = [v4 dataWithContentsOfURL:v3 options:2 error:&v36];
    v6 = v36;
    if (v5)
    {
      v7 = MEMORY[0x277CCAAC8];
      v8 = [objc_opt_class() allowedClassesForWalletKeySettings];
      v35 = v6;
      v9 = [v7 unarchivedObjectOfClasses:v8 fromData:v5 error:&v35];
      v10 = v35;

      if (v9)
      {
        v11 = v9;
        objc_opt_class();
        v12 = objc_opt_isKindOfClass() & 1;
        if (v12)
        {
          v13 = v11;
        }

        else
        {
          v13 = 0;
        }

        v34 = v13;

        if (v12)
        {
          v14 = [v11 objectForKeyedSubscript:@"HMDHomeWalletKeySettingsExpressModeEnabledForMigrationCodingKey"];
          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v38 = v18;
            v39 = 2112;
            v40 = v14;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Found express mode enabled: %@ for migration", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v15);
          v19 = [v14 BOOLValue];
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = self;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138543618;
            v38 = v31;
            v39 = 2112;
            v40 = v11;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unarchived data is the wrong type : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v19 = 0;
        }
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v27;
          v39 = 2112;
          v40 = v10;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive from disk : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v19 = 0;
      }

      v6 = v10;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v38 = v23;
        v39 = 2112;
        v40 = v3;
        v41 = 2112;
        v42 = v6;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to read data from wallet key settings file %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)shouldRollWalletKeyAfterMigration
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeWalletKeyManager *)self walletKeySettingsFileURL];
  v4 = [(HMDHomeWalletKeyManager *)self fileManager];
  if ([v4 fileExistsAtURL:v3])
  {
    v34 = 0;
    v5 = [v4 dataWithContentsOfURL:v3 options:2 error:&v34];
    v6 = v34;
    if (v5)
    {
      v7 = MEMORY[0x277CCAAC8];
      v8 = [objc_opt_class() allowedClassesForWalletKeySettings];
      v33 = v6;
      v9 = [v7 unarchivedObjectOfClasses:v8 fromData:v5 error:&v33];
      v10 = v33;

      if (v9)
      {
        v11 = v9;
        objc_opt_class();
        v12 = objc_opt_isKindOfClass() & 1;
        if (v12)
        {
          v13 = v11;
        }

        else
        {
          v13 = 0;
        }

        v32 = v13;

        v14 = objc_autoreleasePoolPush();
        v15 = self;
        v16 = HMFGetOSLogHandle();
        v17 = v16;
        if (v12)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v36 = v18;
            v37 = 2112;
            v38 = v11;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Found wallet key settings for migration: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          v19 = [v11 objectForKeyedSubscript:@"HMDHomeWalletKeySettingsNeedsKeyRollAfterMigration"];
          v20 = [v19 BOOLValue];
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543618;
            v36 = v29;
            v37 = 2112;
            v38 = v11;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unarchived data is the wrong type : %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          v20 = 0;
        }
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v36 = v28;
          v37 = 2112;
          v38 = v10;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to unarchive from disk : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v20 = 0;
      }

      v6 = v10;
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543874;
        v36 = v24;
        v37 = 2112;
        v38 = v3;
        v39 = 2112;
        v40 = v6;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unable to read data from wallet key settings file %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v20;
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
  v43 = *MEMORY[0x277D85DE8];
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
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      v41 = 2112;
      v42 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Did add current user: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [(HMDHomeWalletKeyManager *)v8 home];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 currentUser];
      v16 = [v15 uuid];
      if (v16)
      {
        v17 = v16;

LABEL_12:
        v22 = [v14 backingStore];
        v23 = [v22 context];

        if (v23)
        {
          v24 = +[HMDACWGKeyManager shared];
          v25 = [(HMDHomeWalletKeyManager *)v8 uuid];
          v26 = [v14 backingStore];
          v27 = [v26 context];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __53__HMDHomeWalletKeyManager_didAddCurrentUserWithUUID___block_invoke;
          v35[3] = &unk_278683F48;
          v35[4] = v8;
          v36 = v6;
          [v24 getOrCreateIssuerKeyAndSaveIfNeededWithHome:v25 user:v17 context:v27 shouldRoll:0 completionHandler:v35];
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = v8;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            v32 = [v6 UUID];
            *buf = 138543618;
            v38 = v31;
            v39 = 2112;
            v40 = v32;
            _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Home backing store context is not set", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
        }

        goto LABEL_18;
      }

      v17 = [(HMDHomeWalletKeyManager *)v8 currentUserUUID];

      if (v17)
      {
        goto LABEL_12;
      }

      v18 = objc_autoreleasePoolPush();
      v19 = v8;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v34 = [v6 UUID];
        *buf = 138543618;
        v38 = v21;
        v39 = 2112;
        v40 = v34;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] currentUserUUID is nil", buf, 0x16u);

        goto LABEL_9;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v8;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@home is unexpectedly nil", buf, 0xCu);
LABEL_9:
      }
    }

    objc_autoreleasePoolPop(v18);
LABEL_18:
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __53__HMDHomeWalletKeyManager_didAddCurrentUserWithUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create ACWG issuer key with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  [*(a1 + 32) updateWalletKeyWithReason:@"Current user added" flow:*(a1 + 40) completion:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v90 = v8;
    v91 = 2112;
    v92 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home: %@", buf, 0x16u);
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
  v88 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
  [v15 registerForMessage:*MEMORY[0x277CCFE20] receiver:v6 policies:v16 selector:sel_handleAddWalletKeyMessage_];

  v17 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v87 = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
  [v17 registerForMessage:*MEMORY[0x277CCFE30] receiver:v6 policies:v18 selector:sel_handleMessageForPairedWatches_];

  v19 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v86 = v14;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  [v19 registerForMessage:*MEMORY[0x277CCFED0] receiver:v6 policies:v20 selector:sel_handleEnableExpressForWalletKeyMessage_];

  v21 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v85 = v14;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
  [v21 registerForMessage:*MEMORY[0x277CD0598] receiver:v6 policies:v22 selector:sel_handleSetHomeKeyExpressSettingsMessage_];

  v23 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v23 setRoles:{objc_msgSend(v23, "roles") | 1}];
  v24 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:5 remoteAccessRequired:0];
  v25 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v84[0] = v23;
  v84[1] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
  [v25 registerForMessage:@"HMDHomeWalletKeyManagerPersistWalletKeyAddOptionsRemoteMessage" receiver:v6 policies:v26 selector:sel_handlePersistWalletKeyAddOptionsRemoteMessage_];

  v27 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v83[0] = v23;
  v83[1] = v24;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
  [v27 registerForMessage:@"HMDHomeWalletKeyManagerFetchWalletKeyDeviceStateRemoteMessage" receiver:v6 policies:v28 selector:sel_handleFetchDeviceStateMessage_];

  v29 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v82 = v14;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  [v29 registerForMessage:*MEMORY[0x277CCFF48] receiver:v6 policies:v30 selector:sel_handleFetchAvailableWalletKeyEncodedPKPassMessage_];

  v31 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v81 = v14;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
  [v31 registerForMessage:*MEMORY[0x277CCFF98] receiver:v6 policies:v32 selector:sel_handleFetchWalletKeyColorMessage_];

  v33 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v80 = v14;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  [v33 registerForMessage:*MEMORY[0x277CD06F0] receiver:v6 policies:v34 selector:sel_handleFetchDeviceStateMessage_];

  v35 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v79 = v14;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  [v35 registerForMessage:*MEMORY[0x277CD06E8] receiver:v6 policies:v36 selector:sel_handleMessageForPairedWatches_];

  v37 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v78 = v14;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  [v37 registerForMessage:*MEMORY[0x277CD06F8] receiver:v6 policies:v38 selector:sel_handleFetchMissingWalletKeysMessage_];

  v39 = [(HMDHomeWalletKeyManager *)v6 messageDispatcher];
  v77 = v14;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  [v39 registerForMessage:*MEMORY[0x277CD0738] receiver:v6 policies:v40 selector:sel_handleRestoreMissingWalletKeysMessage_];

  v41 = [(HMDHomeWalletKeyManager *)v6 passLibrary];
  [v41 setDelegate:v6];

  v42 = [(HMDHomeWalletKeyManager *)v6 passLibrary];
  [v42 start];

  v43 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v43 addObserver:v6 selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v4];

  v44 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v44 addObserver:v6 selector:sel_handleHomeNameChangedNotification_ name:@"HMDHomeNameChangedNotification" object:v4];

  v45 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v45 addObserver:v6 selector:sel_handleHomeAddedAccessoryNotification_ name:@"HMDNotificationHomeAddedAccessory" object:v4];

  v46 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v46 addObserver:v6 selector:sel_handleHomeAccessoryRemovedNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:v4];

  v47 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v47 addObserver:v6 selector:sel_handleAccessorySupportsWalleyKeyDidChangeNotification_ name:@"HMDAccessorySupportsWalletKeyDidChangeNotification" object:0];

  v48 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v48 addObserver:v6 selector:sel_handleHomeDidUpdateNFCReaderKeyNotification_ name:@"HMDHomeDidUpdateNFCReaderKeyNotification" object:v4];

  v49 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  v50 = [(HMDHomeWalletKeyManager *)v6 lostModeManager];
  [v49 addObserver:v6 selector:sel_handleLostModeUpdated name:@"HMDLostModeManagerUpdatedNotification" object:v50];

  v51 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v51 addObserver:v6 selector:sel_handleHomeHasOnboardedForWalletKeyChangeNotification_ name:@"HMDHomeHasOnboardedForWalletKeyChangeNotification" object:v4];

  v52 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  v53 = [(HMDHomeWalletKeyManager *)v6 lostModeManager];
  [v52 addObserver:v6 selector:sel_handleLostModeManagerDidExitLostModeWithAuthCompleteNotification name:@"HMDLostModeManagerDidExitLostModeWithAuthCompleteNotification" object:v53];

  v54 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v54 addObserver:v6 selector:sel_handleApplicationInstalled_ name:@"HMDApplicationInstalledNotification" object:0];

  v55 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v55 addObserver:v6 selector:sel_handleAccessorySupportsAccessCodeDidChangeNotification_ name:@"HMDAccessorySupportsAccessCodeDidChangeNotification" object:0];

  v56 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v56 addObserver:v6 selector:sel_handleLocalAliroVersionDidChangeNotification_ name:@"HMDLocalAliroVersionDidChangeNotification" object:0];

  v57 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v57 addObserver:v6 selector:sel_handleApplicationUninstalled_ name:@"HMDApplicationUninstalledNotification" object:0];

  v58 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  v59 = [(HMDHomeWalletKeyManager *)v6 systemInfo];
  [v58 addObserver:v6 selector:sel_handleSystemInfoMigrationUpdatedNotification_ name:*MEMORY[0x277D0F750] object:v59];

  v60 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v60 addObserver:v6 selector:sel_handleUserScheduleDidChangeNotification_ name:@"HMDUserScheduleDidChangeNotification" object:0];

  v61 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  [v61 addObserver:v6 selector:sel_handleOneMinuteSinceHomeManagerHasFinishedStartingUp_ name:@"HMDOneMinuteSinceHomeManagerFinishedStartingUpNotification" object:0];

  v62 = [(HMDHomeWalletKeyManager *)v6 notificationCenter];
  v63 = [MEMORY[0x277CFEC78] systemStore];
  [v62 addObserver:v6 selector:sel_handleSystemKeychainStoreUpdatedNotification_ name:*MEMORY[0x277CFE930] object:v63];

  objc_initWeak(&location, v6);
  v64 = [(HMDHomeWalletKeyManager *)v6 dataSource];
  v65 = [(HMDHomeWalletKeyManager *)v6 workQueue];
  v71 = MEMORY[0x277D85DD0];
  v72 = 3221225472;
  v73 = __45__HMDHomeWalletKeyManager_configureWithHome___block_invoke;
  v74 = &unk_278686B80;
  objc_copyWeak(&v75, &location);
  LOBYTE(v36) = [v64 registerForPasscodeChangeNotificationWithQueue:v65 callback:&v71];

  if ((v36 & 1) == 0)
  {
    v66 = objc_autoreleasePoolPush();
    v67 = v6;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      *buf = 138543362;
      v90 = v69;
      _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to register for passcode change notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v66);
  }

  [(HMDHomeWalletKeyManager *)v6 handleLostModeUpdated:v71];
  objc_destroyWeak(&v75);
  objc_destroyWeak(&location);

  v70 = *MEMORY[0x277D85DE8];
}

void __45__HMDHomeWalletKeyManager_configureWithHome___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
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
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Home Key}] Handling passcode changed", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 updateWalletKeyWithReason:@"passcode changed" flow:v4 completion:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDHomeWalletKeyManager)initWithUUID:(id)a3 workQueue:(id)a4 fileManager:(id)a5 passLibrary:(id)a6 notificationCenter:(id)a7 watchManager:(id)a8 keychainStore:(id)a9 lostModeManager:(id)a10 dataSource:(id)a11 bulletinBoard:(id)a12 applicationRegistry:(id)a13 systemInfo:(id)a14 isoCredentialFactory:(id)a15
{
  v44 = a3;
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
    objc_storeStrong(&v25->_workQueue, a4);
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
    isoCredentialACWGFactory = v25->_isoCredentialACWGFactory;
    v25->_isoCredentialACWGFactory = &__block_literal_global_219_50592;
  }

  return v25;
}

HMDHomeWalletKeyISOCredentialACWG *__213__HMDHomeWalletKeyManager_initWithUUID_workQueue_fileManager_passLibrary_notificationCenter_watchManager_keychainStore_lostModeManager_dataSource_bulletinBoard_applicationRegistry_systemInfo_isoCredentialFactory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HMDHomeWalletKeyISOCredentialACWG alloc] initWithIssuerKeyPairExternalRepresentation:v5 deviceCredentialPublicKeyExternalRepresentation:v4];

  return v6;
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
  v19 = [(HMDHomeWalletKeyManager *)self initWithUUID:v6 workQueue:v5 fileManager:v15 passLibrary:v17 notificationCenter:v16 watchManager:v7 keychainStore:v14 lostModeManager:v8 dataSource:v9 bulletinBoard:v10 applicationRegistry:v11 systemInfo:v12 isoCredentialFactory:&__block_literal_global_50600];

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
  if (logCategory__hmf_once_t219 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t219, &__block_literal_global_1269);
  }

  v3 = logCategory__hmf_once_v220;

  return v3;
}

void __38__HMDHomeWalletKeyManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v220;
  logCategory__hmf_once_v220 = v1;
}

+ (id)deviceCredentialKeyForAccessory:(id)a3 fromPaymentApplications:(id)a4
{
  v5 = a4;
  if ([a3 supportsACWGProvisioning])
  {
    v6 = [v5 na_firstObjectPassingTest:&__block_literal_global_1263];

    v7 = [v6 subcredentials];
    v8 = [v7 anyObject];
    v9 = [v8 transactionKey];
  }

  else
  {
    v10 = [v5 na_firstObjectPassingTest:&__block_literal_global_1265];

    v11 = [v10 subcredentials];
    v12 = [v11 anyObject];
    v6 = [v12 transactionKey];

    if (v6)
    {
      v9 = [HMDHomeNFCReaderKey publicKeyWithPublicKeyExternalRepresentation:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)homekitErrorWithPassLibraryErrorCode:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_22A587130[a3 - 1];
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
                _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode wallet key device state %@:%@", buf, 0x20u);

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
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to encoded wallet key device state by device %@", buf, 0x16u);

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

+ (id)allowedClassesForWalletKeySettings
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v4 = [v2 setWithArray:{v3, v7, v8}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end