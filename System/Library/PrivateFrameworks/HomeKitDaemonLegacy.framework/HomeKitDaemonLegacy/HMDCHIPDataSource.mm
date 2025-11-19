@interface HMDCHIPDataSource
+ (id)logCategory;
- (BOOL)_getLocationAuthorized;
- (BOOL)hasMatterThreadAccessoryInHomeWithFabricUUID:(id)a3;
- (BOOL)isCurrentDevicePrimaryResident;
- (HMDCHIPDataSource)initWithHomeManager:(id)a3 notificationCenter:(id)a4 vendorMetadataRefreshTimer:(id)a5 attestationDataRefreshTimer:(id)a6 dialogPresenter:(id)a7 threadClientFactory:(id)a8;
- (HMDCHIPDataSource)initWithHomeManager:(id)a3 threadClientFactory:(id)a4;
- (HMDHomeManager)homeManager;
- (HMMTRAccessoryServerBrowser)matterAccessoryServerBrowser;
- (HMMTRThreadRadioManager)matterThreadRadioManager;
- (NSSet)allFabricIDs;
- (NSSet)allPairedHAPServerIdentifiers;
- (NSSet)allTargetFabricUUIDs;
- (NSUUID)currentFabricUUID;
- (id)appleHomeFabricWithTargetFabricUUID:(id)a3;
- (id)fabricIDFromFabricUUID:(id)a3;
- (id)getDefaultThreadNetworkMetadataStore;
- (id)home;
- (id)homeWithCHIPFabric:(id)a3;
- (id)storageDataSourceForFabricUUID:(id)a3;
- (int64_t)getThreadNetworkConnectionStateWithFabricUUID:(id)a3;
- (int64_t)getThreadNetworkNodeTypeWithFabricUUID:(id)a3;
- (int64_t)getUserPreferredThreadNetworkConnectionStateWithError:(id *)a3;
- (int64_t)getUserPreferredThreadNetworkNodeTypeWithError:(id *)a3;
- (void)_getPreferredNetworkExistsWithCompletion:(id)a3;
- (void)_scheduleThreadNetworkRestart;
- (void)_stopNetworkListenerForUserPreferredNetwork;
- (void)browser:(id)a3 didRemoveAccessoryPairingWithNodeID:(id)a4;
- (void)configureWithAccessoryServerBrowser:(id)a3;
- (void)configureWithAttestationDataStore:(id)a3;
- (void)configureWithResidentStateManager:(id)a3;
- (void)configureWithStorage:(id)a3;
- (void)configureWithThreadRadioManager:(id)a3;
- (void)configureWithUIDialogPresenter:(id)a3;
- (void)configureWithVendorMetadataStore:(id)a3;
- (void)connectToAccessoryForUserPreferredNetworkWithExtendedMACAddress:(id)a3 completion:(id)a4;
- (void)connectToAccessoryWithExtendedMACAddress:(id)a3 withFabricUUID:(id)a4 completion:(id)a5;
- (void)dispatchAfter:(unint64_t)a3 block:(id)a4;
- (void)forAllPairedMatterServersFetchVidPid:(id)a3;
- (void)forAllStorageDataSourcesDo:(id)a3;
- (void)handleAccessoryCHIPStorageChangedNotification:(id)a3;
- (void)handleHomeCHIPStorageChangedNotification:(id)a3;
- (void)handleHomeDidArriveHomeNotification:(id)a3;
- (void)handleHomeDidLeaveHomeNotification:(id)a3;
- (void)handleHomeRemovedNotification:(id)a3;
- (void)handleLocationAuthorizationChangedNotification:(id)a3;
- (void)handleNetworkStateChange;
- (void)handlePrimaryResidentUpdatedNotification:(id)a3;
- (void)handleResidentReachabilityNotification:(id)a3;
- (void)handleThreadBTCallStateChange:(BOOL)a3;
- (void)handleThreadNetworkPeripheralDeviceNodeTypeChangedNotification:(id)a3;
- (void)handleThreadNetworkStateChangedNotification:(id)a3;
- (void)handleThreadNetworkWakeOnConnectionStateChangedNotification:(id)a3;
- (void)hasValidGeoOrPreferredNetworkForHome:(id)a3 completion:(id)a4;
- (void)overrideLocationCheckForPairingForFabricUUID:(id)a3;
- (void)registerForArrivalNotifications:(id)a3;
- (void)registerForLeaveNotifications:(id)a3;
- (void)requestUserPermissionForBridgeAccessory:(id)a3 withContext:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)requestUserPermissionForUnauthenticatedAccessory:(id)a3 withContext:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)a3 fabricUUID:(id)a4 isWedDevice:(BOOL)a5 completion:(id)a6;
- (void)startAccessoryPairingWithExtendedMACAddress:(id)a3 fabricUUID:(id)a4 isWedDevice:(BOOL)a5 completion:(id)a6;
- (void)startThreadRadioForHomeWithFabricUUID:(id)a3;
- (void)startThreadRadioForUserPreferredNetwork;
- (void)startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck;
- (void)stopAccessoryFirmwareUpdateWithFabricUUID:(id)a3 completion:(id)a4;
- (void)stopAccessoryPairingWithFabricUUID:(id)a3 completion:(id)a4;
- (void)stopThreadRadioForHome:(id)a3;
- (void)stopThreadRadioForHomeWithFabricUUID:(id)a3;
- (void)stopThreadRadioForUserPreferredNetwork;
- (void)stopThreadRadioOnDeviceLock;
- (void)timerDidFire:(id)a3;
- (void)unprotectedRegisterForArrivalNotifications:(id)a3;
- (void)unprotectedRegisterForLeaveNotifications:(id)a3;
- (void)unregisterForArrivalNotifications:(id)a3;
- (void)unregisterForLeaveNotifications:(id)a3;
- (void)unregisterPresenceNotificationsForHome:(id)a3;
@end

@implementation HMDCHIPDataSource

- (HMMTRThreadRadioManager)matterThreadRadioManager
{
  WeakRetained = objc_loadWeakRetained(&self->_matterThreadRadioManager);

  return WeakRetained;
}

- (HMMTRAccessoryServerBrowser)matterAccessoryServerBrowser
{
  WeakRetained = objc_loadWeakRetained(&self->_matterAccessoryServerBrowser);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)dispatchAfter:(unint64_t)a3 block:(id)a4
{
  v6 = dispatch_get_global_queue(21, 0);
  dispatch_after(a3, v6, a4);
}

- (BOOL)hasMatterThreadAccessoryInHomeWithFabricUUID:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (!v5)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v29;
      v30 = "%{public}@Home manager reference is nil";
LABEL_29:
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    }

LABEL_30:

    objc_autoreleasePoolPop(v26);
    goto LABEL_31;
  }

  if (!v4)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v29;
      v30 = "%{public}@Fabric UUID is nil";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [v5 homes];
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    v36 = v7;
    v34 = *v42;
    do
    {
      v11 = 0;
      v35 = v9;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v13 = [v12 targetFabricUUID];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v15 = [v12 hapAccessories];
          v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v38;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v38 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v37 + 1) + 8 * i);
                if ([v20 supportsCHIP])
                {
                  v21 = [v20 supportedLinkLayerTypes];

                  if (!v21)
                  {
                    goto LABEL_26;
                  }

                  v22 = [v20 supportedLinkLayerTypes];
                  v23 = [v22 unsignedIntValue];

                  v24 = [v20 supportedLinkLayerTypes];
                  v25 = [v24 unsignedIntValue];

                  if ((v23 & 0x10) != 0 || !v25)
                  {
LABEL_26:

                    v31 = 1;
                    goto LABEL_32;
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v9 = v35;
          v7 = v36;
          v10 = v34;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v9);
  }

LABEL_31:
  v31 = 0;
LABEL_32:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)stopAccessoryFirmwareUpdateWithFabricUUID:(id)a3 completion:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCHIPDataSource *)self homeManager];
  v9 = v8;
  if (!v8)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v25;
      v26 = "%{public}@Home manager reference is nil";
LABEL_20:
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
    }

LABEL_21:

    objc_autoreleasePoolPop(v22);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v7[2](v7, v10);
    goto LABEL_22;
  }

  if (!v6)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v25;
      v26 = "%{public}@Fabric UUID is nil";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = v8;
  v10 = [v8 homes];
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = [v15 targetFabricUUID];
        v17 = [v16 isEqual:v6];

        if (v17)
        {
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __74__HMDCHIPDataSource_stopAccessoryFirmwareUpdateWithFabricUUID_completion___block_invoke;
          v29[3] = &unk_279733F30;
          v29[4] = self;
          v30 = v7;
          [v15 stopThreadAccessoryFirmwareUpdateWithCompletion:v29];

          goto LABEL_17;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v21;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v7[2](v7, v10);
LABEL_17:
  v9 = v28;
LABEL_22:

  v27 = *MEMORY[0x277D85DE8];
}

void __74__HMDCHIPDataSource_stopAccessoryFirmwareUpdateWithFabricUUID_completion___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop thread accessory firmware update, error %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startAccessoryFirmwareUpdateWithExtendedMACAddress:(id)a3 fabricUUID:(id)a4 isWedDevice:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HMDCHIPDataSource *)self homeManager];
  v14 = v13;
  if (!v13)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v30;
      v31 = "%{public}@Home manager reference is nil";
LABEL_20:
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);
    }

LABEL_21:

    objc_autoreleasePoolPop(v27);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v12[2](v12, v15);
    goto LABEL_22;
  }

  if (!v11)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v30;
      v31 = "%{public}@Fabric UUID is nil";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v33 = v7;
  v34 = v13;
  v35 = v10;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = [v13 homes];
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v39 + 1) + 8 * i);
        v21 = [v20 targetFabricUUID];
        v22 = [v21 isEqual:v11];

        if (v22)
        {
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __106__HMDCHIPDataSource_startAccessoryFirmwareUpdateWithExtendedMACAddress_fabricUUID_isWedDevice_completion___block_invoke;
          v36[3] = &unk_279735168;
          v36[4] = self;
          v10 = v35;
          v37 = v35;
          v38 = v12;
          [v20 startThreadAccessoryFirmwareUpdateWithExtendedMACAddress:v37 isWedDevice:v33 completion:v36];

          goto LABEL_17;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v26;
    v45 = 2112;
    v46 = v11;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v12[2](v12, v15);
  v10 = v35;
LABEL_17:
  v14 = v34;
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];
}

void __106__HMDCHIPDataSource_startAccessoryFirmwareUpdateWithExtendedMACAddress_fabricUUID_isWedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start thread accessory firmware update with emac %@, error %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopAccessoryPairingWithFabricUUID:(id)a3 completion:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCHIPDataSource *)self homeManager];
  v9 = v8;
  if (!v8)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v25;
      v26 = "%{public}@Home manager reference is nil";
LABEL_22:
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
    }

LABEL_23:

    objc_autoreleasePoolPop(v22);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v7[2](v7, v10);
    goto LABEL_24;
  }

  if (!v6)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v25;
      v26 = "%{public}@Fabric UUID is nil";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v32 = v8;
  v10 = [v8 homes];
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = [v15 targetFabricUUID];
        v17 = [v16 isEqual:v6];

        if (v17)
        {
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __67__HMDCHIPDataSource_stopAccessoryPairingWithFabricUUID_completion___block_invoke;
          v33[3] = &unk_279733F30;
          v33[4] = self;
          v34 = v7;
          [v15 stopThreadAccessoryPairingWithCompletion:v33];
          [(HMDCHIPDataSource *)self setThreadPairingOverride:0];
          [(HMDCHIPDataSource *)self setThreadPairingFabricUUID:0];
          v27 = objc_autoreleasePoolPush();
          v28 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            *buf = 138543618;
            v40 = v30;
            v41 = 2112;
            v42 = v15;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Setting thread start pairing override to NO for home %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
          goto LABEL_19;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v21;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v7[2](v7, v10);
LABEL_19:
  v9 = v32;
LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
}

void __67__HMDCHIPDataSource_stopAccessoryPairingWithFabricUUID_completion___block_invoke(uint64_t a1, void *a2)
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
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop thread accessory pairing, error %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)overrideLocationCheckForPairingForFabricUUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(HMDCHIPDataSource *)self setThreadPairingOverride:1];
    [(HMDCHIPDataSource *)self setThreadPairingFabricUUID:v4];
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMDCHIPDataSource *)v6 threadPairingFabricUUID];
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Allowing thread start for pairing with fabric: %@", &v13, 0x16u);
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v10 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Not setting pairing override as fabricID is null.", &v13, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)startAccessoryPairingWithExtendedMACAddress:(id)a3 fabricUUID:(id)a4 isWedDevice:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HMDCHIPDataSource *)self homeManager];
  v14 = v13;
  if (!v13)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v30;
      v31 = "%{public}@Home manager reference is nil";
LABEL_20:
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);
    }

LABEL_21:

    objc_autoreleasePoolPop(v27);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    v12[2](v12, v15);
    goto LABEL_22;
  }

  if (!v11)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v30;
      v31 = "%{public}@Fabric UUID is nil";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v33 = v7;
  v34 = v13;
  v35 = v10;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = [v13 homes];
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v39 + 1) + 8 * i);
        v21 = [v20 targetFabricUUID];
        v22 = [v21 isEqual:v11];

        if (v22)
        {
          [(HMDCHIPDataSource *)self overrideLocationCheckForPairingForFabricUUID:v11];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __99__HMDCHIPDataSource_startAccessoryPairingWithExtendedMACAddress_fabricUUID_isWedDevice_completion___block_invoke;
          v36[3] = &unk_279735168;
          v36[4] = self;
          v10 = v35;
          v37 = v35;
          v38 = v12;
          [v20 startThreadAccessoryPairingWithExtendedMACAddress:v37 isWedDevice:v33 completion:v36];

          goto LABEL_17;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v26;
    v45 = 2112;
    v46 = v11;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  v12[2](v12, v15);
  v10 = v35;
LABEL_17:
  v14 = v34;
LABEL_22:

  v32 = *MEMORY[0x277D85DE8];
}

void __99__HMDCHIPDataSource_startAccessoryPairingWithExtendedMACAddress_fabricUUID_isWedDevice_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start thread accessory pairing with emac %@, error %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)getUserPreferredThreadNetworkNodeTypeWithError:(id *)a3
{
  v5 = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];

  if (v5)
  {
    *a3 = 0;
    v6 = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];
    v7 = [v6 threadNetworkNodeType];

    return v7;
  }

  else
  {
    *a3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    return 0;
  }
}

- (int64_t)getUserPreferredThreadNetworkConnectionStateWithError:(id *)a3
{
  v5 = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];

  if (v5)
  {
    *a3 = 0;
    v6 = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];
    v7 = [v6 threadNetworkConnectionState];

    return v7;
  }

  else
  {
    *a3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    return 0;
  }
}

- (int64_t)getThreadNetworkNodeTypeWithFabricUUID:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (!v5)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v18;
    v19 = "%{public}@Home manager reference is nil";
LABEL_18:
    v20 = v17;
    v21 = 12;
    goto LABEL_19;
  }

  if (!v4)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v18;
    v19 = "%{public}@fabricUUID is nil";
    goto LABEL_18;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v5 homes];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 targetFabricUUID];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v22 = [v12 threadNetworkNodeType];

          goto LABEL_21;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v18;
    v31 = 2112;
    v32 = v4;
    v19 = "%{public}@No home found with fabric %@";
    v20 = v17;
    v21 = 22;
LABEL_19:
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
  }

LABEL_20:

  objc_autoreleasePoolPop(v15);
  v22 = 0;
LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (int64_t)getThreadNetworkConnectionStateWithFabricUUID:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (!v5)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v18;
    v19 = "%{public}@Home manager reference is nil";
LABEL_18:
    v20 = v17;
    v21 = 12;
    goto LABEL_19;
  }

  if (!v4)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v18;
    v19 = "%{public}@fabricUUID is nil";
    goto LABEL_18;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v5 homes];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 targetFabricUUID];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v22 = [v12 threadNetworkConnectionState];

          goto LABEL_21;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v18;
    v31 = 2112;
    v32 = v4;
    v19 = "%{public}@No home found with fabric %@";
    v20 = v17;
    v21 = 22;
LABEL_19:
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
  }

LABEL_20:

  objc_autoreleasePoolPop(v15);
  v22 = 0;
LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)handleThreadNetworkPeripheralDeviceNodeTypeChangedNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
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

  if (v7)
  {
    v8 = [(HMDCHIPDataSource *)self matterThreadRadioManager];
    [v8 notifyPeripheralDeviceNodeTypeChanged:{objc_msgSend(v7, "peripheralDeviceNodeType")}];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Event not of type HMDThreadNetworkPeripheralDeviceNodeTypeEvent", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleThreadNetworkWakeOnConnectionStateChangedNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
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

  if (v7)
  {
    v8 = [(HMDCHIPDataSource *)self matterThreadRadioManager];
    v9 = [v7 connectionState];
    v10 = [v7 eMACAddressAsString];
    [v8 notifyWakeOnDeviceConnectionChanged:v9 eMACAddress:v10];
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Event not of type thread wake on connection state changed", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleThreadNetworkStateChangedNotification:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
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

  if (v7)
  {
    if (![(HMDCHIPDataSource *)self pendingRadioStateChangeNotification])
    {
      [(HMDCHIPDataSource *)self setPendingRadioStateChangeNotification:1];
      objc_initWeak(location, self);
      v8 = dispatch_time(0, 50000000);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65__HMDCHIPDataSource_handleThreadNetworkStateChangedNotification___block_invoke;
      v14[3] = &unk_279732E78;
      objc_copyWeak(&v16, location);
      v15 = v7;
      [(HMDCHIPDataSource *)self dispatchAfter:v8 block:v14];

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@No home associated with network connection state change notification", location, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __65__HMDCHIPDataSource_handleThreadNetworkStateChangedNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPendingRadioStateChangeNotification:0];
  v2 = [WeakRetained matterThreadRadioManager];
  v3 = [*(a1 + 32) threadNetworkConnectionState];
  v4 = [*(a1 + 32) threadNetworkNodeType];
  v5 = [*(a1 + 32) targetFabricUUID];
  [v2 notifyThreadRadioStateChanged:v3 nodeType:v4 fabricUUID:v5];
}

- (void)connectToAccessoryForUserPreferredNetworkWithExtendedMACAddress:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCHIPDataSource *)self getSharedThreadResidentCommissioner];
  [v8 connectToThreadAccessoryWithExtendedMACAddress:v7 completion:v6];
}

- (void)connectToAccessoryWithExtendedMACAddress:(id)a3 withFabricUUID:(id)a4 completion:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCHIPDataSource *)self homeManager];
  v12 = v11;
  if (v11)
  {
    v30 = v10;
    v31 = v8;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = [v11 homes];
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if (v9)
          {
            v18 = *(*(&v35 + 1) + 8 * i);
            v19 = [v18 targetFabricUUID];
            v20 = [v19 isEqual:v9];

            if (v20)
            {
              v32[0] = MEMORY[0x277D85DD0];
              v32[1] = 3221225472;
              v32[2] = __88__HMDCHIPDataSource_connectToAccessoryWithExtendedMACAddress_withFabricUUID_completion___block_invoke;
              v32[3] = &unk_279735168;
              v32[4] = self;
              v8 = v31;
              v33 = v31;
              v10 = v30;
              v34 = v30;
              [v18 connectToThreadAccessoryWithExtendedMACAddress:v33 completion:v32];

              goto LABEL_18;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v24;
      v41 = 2112;
      v42 = v9;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with CHIP fabric: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v10 = v30;
    (v30)[2](v30, v13);
    v8 = v31;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v10 + 2))(v10, v13);
  }

LABEL_18:

  v29 = *MEMORY[0x277D85DE8];
}

void __88__HMDCHIPDataSource_connectToAccessoryWithExtendedMACAddress_withFabricUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to connect to accessory with emac %@, error %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadRadioOnDeviceLock
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping Thread network after device lock", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCHIPDataSource *)v4 getSharedThreadResidentCommissioner];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__HMDCHIPDataSource_stopThreadRadioOnDeviceLock__block_invoke;
  v9[3] = &unk_2797359D8;
  v9[4] = v4;
  [v7 stopThreadNetworkOnDeviceLockWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __48__HMDCHIPDataSource_stopThreadRadioOnDeviceLock__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v9 = "%{public}@Failed to stop Thread network with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Successfully stopped Thread network";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_stopNetworkListenerForUserPreferredNetwork
{
  [(HMDCHIPDataSource *)self setThreadNetworkShouldRestartOnNetworkChange:0];
  v3 = [(HMDCHIPDataSource *)self userPreferredThreadNetworkEventListener];
  [v3 stopListeningForEvents];

  [(HMDCHIPDataSource *)self setUserPreferredThreadNetworkEventListener:0];
}

- (void)stopThreadRadioForUserPreferredNetwork
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping Thread network for user preferred network", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDCHIPDataSource *)v4 _stopNetworkListenerForUserPreferredNetwork];
  v7 = [(HMDCHIPDataSource *)v4 getSharedThreadResidentCommissioner];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HMDCHIPDataSource_stopThreadRadioForUserPreferredNetwork__block_invoke;
  v9[3] = &unk_2797359D8;
  v9[4] = v4;
  [v7 stopThreadNetworkWithCompletion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __59__HMDCHIPDataSource_stopThreadRadioForUserPreferredNetwork__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v9 = "%{public}@Failed to stop Thread network with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    v9 = "%{public}@Successfully stopped Thread network for user preferred network";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)startThreadRadioForUserPreferredNetwork
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(HMDCHIPDataSource *)self startThreadOnWakeEnabled])
  {
    v3 = *MEMORY[0x277D85DE8];

    [(HMDCHIPDataSource *)self startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting Thread network for user preferred network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMDCHIPDataSource *)v5 getDefaultThreadNetworkMetadataStore];
    if (v8)
    {
      v9 = [(HMDCHIPDataSource *)v5 getSharedThreadResidentCommissioner];
      [(HMDCHIPDataSource *)v5 _startNetworkListenerForUserPreferredNetwork:0];
      objc_initWeak(buf, v5);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __60__HMDCHIPDataSource_startThreadRadioForUserPreferredNetwork__block_invoke;
      v16[3] = &unk_27972A9B8;
      objc_copyWeak(&v18, buf);
      v10 = v9;
      v17 = v10;
      [v8 retrievePreferredNetwork:0 completion:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v5;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v20 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@No thread network metadata store", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }

    v15 = *MEMORY[0x277D85DE8];
  }
}

void __60__HMDCHIPDataSource_startThreadRadioForUserPreferredNetwork__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = WeakRetained;
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (!v11 || v12)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v23;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve operationalDataset for thread network: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [v15 _stopNetworkListenerForUserPreferredNetwork];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138544130;
        v28 = v18;
        v29 = 2112;
        v30 = v9;
        v31 = 2112;
        v32 = v10;
        v33 = 2112;
        v34 = v11;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved preferred thread credentials %@ with UUID %@ and operationalDataset %@ from network metadata store", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
      [*(a1 + 32) setGeoAvailable:1];
      v19 = *(a1 + 32);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __60__HMDCHIPDataSource_startThreadRadioForUserPreferredNetwork__block_invoke_173;
      v25[3] = &unk_2797358C8;
      v25[4] = v15;
      v26 = v10;
      [v19 startThreadNetworkWithOperationalDataset:v11 threadNetworkID:v26 isOwnerUser:0 completion:v25];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to get strong reference to self - abort", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __60__HMDCHIPDataSource_startThreadRadioForUserPreferredNetwork__block_invoke_173(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v13 = 138543874;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to attach to user preferred thread network %@: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _stopNetworkListenerForUserPreferredNetwork];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Attached to thread network %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting Thread network for user preferred network with GEO and BR check", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v51 = [(HMDCHIPDataSource *)v4 getDefaultThreadNetworkMetadataStore];
  if (v51)
  {
    v50 = [(HMDCHIPDataSource *)v4 _getLocationAuthorized];
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__99799;
    v81 = __Block_byref_object_dispose__99800;
    v82 = 0;
    group = dispatch_group_create();
    v7 = [(HMDCHIPDataSource *)v4 homeManager];
    if (v7)
    {
      v8 = v50;
    }

    else
    {
      v8 = 0;
    }

    v49 = v7;
    if (v8)
    {
      v9 = [v7 homes];
      v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_164_99801];

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v63 objects:v77 count:16];
      if (v12)
      {
        v13 = *v64;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v64 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v63 + 1) + 8 * i);
            v16 = [v15 fabric];
            v17 = [v16 fabricID];

            if (v17)
            {
              v18 = [v15 matterAccessories];
              if ([v18 count])
              {
                dispatch_group_enter(group);
                v59[0] = MEMORY[0x277D85DD0];
                v59[1] = 3221225472;
                v59[2] = __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_2;
                v59[3] = &unk_27972A940;
                v59[4] = v4;
                v59[5] = v15;
                v61 = &v67;
                p_buf = &buf;
                v60 = group;
                [(HMDCHIPDataSource *)v4 hasValidGeoOrPreferredNetworkForHome:v15 completion:v59];
              }
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v63 objects:v77 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v4;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *v71 = 138543362;
        v72 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil - skipping in-geo && matter check", v71, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
    }

    v27 = dispatch_time(0, 2000000000);
    if (dispatch_group_wait(group, v27))
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v4;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *v71 = 138543362;
        v72 = v31;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Timed out while fetching preferred network.", v71, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
    }

    v32 = objc_autoreleasePoolPush();
    v33 = v4;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = HMFBooleanToString();
      v37 = *(v68 + 24);
      v38 = HMFBooleanToString();
      *v71 = 138543874;
      v72 = v35;
      v73 = 2112;
      v74 = v36;
      v75 = 2112;
      v76 = v38;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@startThreadRadioForUserPreferredNetwork: isLocationAuthorized = %@. isInGeoForAnyHome = %@", v71, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    if (v50 && (v68[3] & 1) == 0)
    {
      v39 = CFPreferencesGetAppBooleanValue(@"StartThreadOnWakeBypassAccessoryRequirement", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0) == 0;
      v40 = objc_autoreleasePoolPush();
      v41 = v33;
      if (v39)
      {
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = HMFGetLogIdentifier();
          *v71 = 138543362;
          v72 = v48;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Not in-geo for any home and no accessories in matter locker, not starting thread", v71, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        goto LABEL_39;
      }

      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *v71 = 138543362;
        v72 = v43;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Not in-geo for any home and no accessories in matter locker, allowing thread start anyways", v71, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
    }

    v44 = [(HMDCHIPDataSource *)v33 getSharedThreadResidentCommissioner];
    [(HMDCHIPDataSource *)v33 _startNetworkListenerForUserPreferredNetwork:1];
    objc_initWeak(v71, v33);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_169;
    v53[3] = &unk_27972A990;
    objc_copyWeak(&v58, v71);
    v54 = v51;
    v56 = &buf;
    v45 = v44;
    v55 = v45;
    v57 = &v67;
    [v54 retrieveBorderRouterPreferredNetworkWithCompletion:v53];

    objc_destroyWeak(&v58);
    objc_destroyWeak(v71);

LABEL_39:
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v67, 8);
    goto LABEL_40;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v4;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@No thread network metadata store", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_40:

  v46 = *MEMORY[0x277D85DE8];
}

void __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMFBooleanToString();
    v20 = 138543874;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@GeoAvailable: %@, error %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if (a2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) fabric];
      v16 = [v15 fabricID];
      v17 = *(a1 + 40);
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Is in Geo for home with fabricID %@ - %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v18 = [*(a1 + 40) threadOperationalDataset];

      if (v18)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
      }
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v19 = *MEMORY[0x277D85DE8];
}

void __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_169(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained userPreferredThreadNetworkEventListener];

    if (v9)
    {
      if (!v5 || v6)
      {
        objc_initWeak(buf, v8);
        v18 = *(a1 + 32);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_170;
        v22[3] = &unk_27972A968;
        objc_copyWeak(&v27, buf);
        v25 = *(a1 + 48);
        v23 = v5;
        v19 = *(a1 + 40);
        v20 = *(a1 + 56);
        v24 = v19;
        v26 = v20;
        [v18 retrievePreferredNetwork:0 completion:v22];

        objc_destroyWeak(&v27);
        objc_destroyWeak(buf);
        goto LABEL_15;
      }

      v10 = objc_autoreleasePoolPush();
      v11 = v8;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Border router present on network - not starting thread", buf, 0xCu);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v8;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v17;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Aborting thread start after border router check - thread was started for a home", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unable to get strong reference to self - abort", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

LABEL_15:

  v21 = *MEMORY[0x277D85DE8];
}

void __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_170(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v14 = WeakRetained;
  if (!WeakRetained)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
LABEL_17:

      v35 = v31;
      goto LABEL_18;
    }

    v33 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v33;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unable to get strong reference to self - abort", buf, 0xCu);
LABEL_16:

    goto LABEL_17;
  }

  v15 = [WeakRetained userPreferredThreadNetworkEventListener];

  if (!v15)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = v14;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v34;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Aborting thread start after getting preferred network - thread was started for a home", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (!v11 || v12)
  {
    v16 = *(*(*(a1 + 48) + 8) + 40);
    v17 = objc_autoreleasePoolPush();
    v18 = v14;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v38 = [*(*(*(a1 + 48) + 8) + 40) fabric];
        [v38 fabricID];
        v22 = v39 = v17;
        v23 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543874;
        v43 = v21;
        v44 = 2112;
        v45 = v22;
        v46 = 2112;
        v47 = v23;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Using cached AOD from home with fabricID %@ - %@", buf, 0x20u);

        v17 = v39;
      }

      objc_autoreleasePoolPop(v17);
      v24 = [*(*(*(a1 + 48) + 8) + 40) threadOperationalDataset];

      v11 = v24;
      goto LABEL_9;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v37;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@No cached AOD available as a fallback, aborting thread start", buf, 0xCu);
    }

    v35 = v17;
LABEL_18:
    objc_autoreleasePoolPop(v35);
    goto LABEL_19;
  }

LABEL_9:
  v25 = objc_autoreleasePoolPush();
  v26 = v14;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = *(a1 + 32);
    *buf = 138544130;
    v43 = v28;
    v44 = 2112;
    v45 = v29;
    v46 = 2112;
    v47 = v10;
    v48 = 2112;
    v49 = v11;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved preferred thread credentials %@ with UUID %@ and operationalDataset %@ from network metadata store", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v25);
  [*(a1 + 40) setGeoAvailable:*(*(*(a1 + 56) + 8) + 24)];
  v30 = *(a1 + 40);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_171;
  v40[3] = &unk_2797358C8;
  v40[4] = v26;
  v41 = v10;
  [v30 startThreadNetworkWithOperationalDataset:v11 threadNetworkID:v41 isOwnerUser:0 completion:v40];

LABEL_19:
  v36 = *MEMORY[0x277D85DE8];
}

void __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke_171(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v10 = "%{public}@Failed to attach to user preferred thread network %@: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v16, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v10 = "%{public}@Attached to thread network %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __87__HMDCHIPDataSource_startThreadRadioForUserPreferredNetworkWithGeoAndBorderRouterCheck__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 reachableAccessoriesCount];
  if (v6 == [v5 reachableAccessoriesCount])
  {
    v7 = [v4 uuid];
    v8 = [v7 UUIDString];
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    v11 = [v8 compare:v10];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "reachableAccessoriesCount")}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "reachableAccessoriesCount")}];
    v11 = [v7 compare:v8];
  }

  return v11;
}

- (void)_getPreferredNetworkExistsWithCompletion:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0;
  v5 = WiFiCopyCurrentNetworkInfoEx();
  v6 = [v5 objectForKeyedSubscript:@"ssid"];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v10;
    v24 = 2112;
    v25 = v6;
    v26 = 1024;
    v27 = v21;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Checking if preferred network exists for SSID: %@ error: %d", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)v8 setPnExistsOnCurrentNetwork:0];
  v11 = [(HMDCHIPDataSource *)v8 getDefaultThreadNetworkMetadataStore];
  if (v11)
  {
    objc_initWeak(buf, v8);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__HMDCHIPDataSource__getPreferredNetworkExistsWithCompletion___block_invoke;
    v18[3] = &unk_27972A918;
    objc_copyWeak(&v20, buf);
    v19 = v4;
    [v11 retrievePreferredNetwork:0 completion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v8;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@No thread network metadata store", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    (*(v4 + 2))(v4, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __62__HMDCHIPDataSource__getPreferredNetworkExistsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = WeakRetained;
    v16 = HMFGetOSLogHandle();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v17)
      {
        v18 = HMFGetLogIdentifier();
        v26 = 138544130;
        v27 = v18;
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved preferred thread credentials %@ with UUID %@ and operationalDataset %@ for current network", &v26, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
      [v15 setPnExistsOnCurrentNetwork:1];
      v19 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (v17)
      {
        v24 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v24;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@No thread network found for current Wifi", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v19 = *(*(a1 + 32) + 16);
    }

    v19();
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to get strong reference to self - abort", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_getLocationAuthorized
{
  v2 = +[HMDLocation sharedManager];
  v3 = [v2 locationAuthorized] == 1;

  return v3;
}

- (void)handleNetworkStateChange
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Received network state change from Thread network event listener", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDCHIPDataSource *)v4 matterThreadRadioManager];
  v8 = [(HMDCHIPDataSource *)v4 userPreferredThreadNetworkEventListener];
  v9 = [v8 threadNetworkConnectionState];
  v10 = [(HMDCHIPDataSource *)v4 userPreferredThreadNetworkEventListener];
  [v7 notifyThreadRadioStateChanged:v9 nodeType:objc_msgSend(v10 fabricUUID:{"threadNetworkNodeType"), 0}];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleThreadBTCallStateChange:(BOOL)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received thread call state change - isInCall = %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (!a3)
  {
    [(HMDCHIPDataSource *)v6 startThreadRadioForUserPreferredNetwork];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadRadioForHomeWithFabricUUID:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (!v5)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v18;
    v19 = "%{public}@Home manager reference is nil";
LABEL_18:
    v20 = v17;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 12;
    goto LABEL_19;
  }

  if (!v4)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v18;
    v19 = "%{public}@fabricID is nil";
    goto LABEL_18;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 homes];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 targetFabricUUID];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          [(HMDCHIPDataSource *)self stopThreadRadioForHome:v12];

          goto LABEL_21;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v29 = v18;
    v30 = 2112;
    v31 = v4;
    v19 = "%{public}@Could not find home with CHIP fabric: %@";
    v20 = v17;
    v21 = OS_LOG_TYPE_DEFAULT;
    v22 = 22;
LABEL_19:
    _os_log_impl(&dword_2531F8000, v20, v21, v19, buf, v22);
  }

LABEL_20:

  objc_autoreleasePoolPop(v15);
LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadRadioForHome:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 targetFabricUUID];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Calling thread stop for home with fabric: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v4 stopThreadNetwork:1];
  [(HMDCHIPDataSource *)v6 unregisterPresenceNotificationsForHome:v4];
  if ([(HMDCHIPDataSource *)v6 startThreadOnWakeEnabled])
  {
    [(HMDCHIPDataSource *)v6 _startNetworkListenerForUserPreferredNetwork:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startThreadRadioForHomeWithFabricUUID:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v7 = [v5 homes];
      v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = v8;
      v10 = *v33;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = [v12 targetFabricUUID];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v9)
          {
            goto LABEL_5;
          }

LABEL_11:

          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = HMFGetLogIdentifier();
            *buf = 138543618;
            v37 = v18;
            v38 = 2112;
            v39 = v4;
            v19 = "%{public}@Could not find home with fabric: %@";
            v20 = v17;
            v21 = OS_LOG_TYPE_DEFAULT;
            v22 = 22;
            goto LABEL_23;
          }

          goto LABEL_24;
        }
      }

      if (![(HMDCHIPDataSource *)self threadPairingOverride])
      {
        if (([(HMDCHIPDataSource *)self checkPresenceForHome:v12]& 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v37 = v26;
            v38 = 2112;
            v39 = v4;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Not calling thread start for home with fabric: %@ as user is not home", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          [(HMDCHIPDataSource *)v24 registerForArrivalNotifications:v12];
LABEL_31:

          goto LABEL_32;
        }

        [(HMDCHIPDataSource *)self registerForLeaveNotifications:v12];
      }

      if ([(HMDCHIPDataSource *)self startThreadOnWakeEnabled])
      {
        [(HMDCHIPDataSource *)self _stopNetworkListenerForUserPreferredNetwork];
      }

      [(HMDCHIPDataSource *)self registerForLeaveNotifications:v12];
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v30;
        v38 = 2112;
        v39 = v4;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Calling thread start for home with fabric: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      [v12 startThreadNetwork:1];
      goto LABEL_31;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v18;
    v19 = "%{public}@fabric UUID is nil";
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v18;
    v19 = "%{public}@Home manager reference is nil";
  }

  v20 = v17;
  v21 = OS_LOG_TYPE_ERROR;
  v22 = 12;
LABEL_23:
  _os_log_impl(&dword_2531F8000, v20, v21, v19, buf, v22);

LABEL_24:
  objc_autoreleasePoolPop(v15);
LABEL_32:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleThreadNetworkRestart
{
  v3 = dispatch_time(0, 2000000000);
  [(HMDCHIPDataSource *)self setNetworkChangedLastUpdatedTime:v3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HMDCHIPDataSource__scheduleThreadNetworkRestart__block_invoke;
  v4[3] = &unk_279734BB8;
  v4[4] = self;
  v4[5] = v3;
  [(HMDCHIPDataSource *)self dispatchAfter:v3 block:v4];
}

void __50__HMDCHIPDataSource__scheduleThreadNetworkRestart__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) networkChangedLastUpdatedTime])
  {
    v4 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Ignoring Wifi network changed as newer request is queued.", &v14, 0xCu);
    }

    goto LABEL_12;
  }

  [*(a1 + 32) _getPreferredNetworkExistsWithCompletion:&__block_literal_global_158_99851];
  v3 = [*(a1 + 32) threadNetworkShouldRestartOnNetworkChange];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (!v3)
  {
    if (v7)
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Ignoring WiFi network changed notification when Thread is not up", &v14, 0xCu);
    }

LABEL_12:
    objc_autoreleasePoolPop(v4);
    goto LABEL_13;
  }

  if (v7)
  {
    v8 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Restarting Thread network for user preferred network upon WiFi network changed notification", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) startThreadRadioForUserPreferredNetwork];
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)hasValidGeoOrPreferredNetworkForHome:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMDCHIPDataSource *)self checkPresenceForHome:v6];
    if (v8 == 1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v12;
        v31 = 2112;
        v32 = v6;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Allowing geo as user is at home for: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v7[2](v7, 1, 0);
    }

    else
    {
      v14 = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __69__HMDCHIPDataSource_hasValidGeoOrPreferredNetworkForHome_completion___block_invoke;
      aBlock[3] = &unk_27972A8F0;
      aBlock[4] = self;
      v28 = v8 == 0;
      v15 = v6;
      v25 = v15;
      v26 = v7;
      v27 = v14;
      v16 = _Block_copy(aBlock);
      if ([(HMDCHIPDataSource *)self pnExistsOnCurrentNetwork])
      {
        v16[2](v16, 0);
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        v18 = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v30 = v20;
          v31 = 2112;
          v32 = v15;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Fetching preferred network as location is unknown for home: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __69__HMDCHIPDataSource_hasValidGeoOrPreferredNetworkForHome_completion___block_invoke_155;
        v22[3] = &unk_279733F30;
        v22[4] = v18;
        v23 = v16;
        [(HMDCHIPDataSource *)v18 _getPreferredNetworkExistsWithCompletion:v22];
      }
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:2 userInfo:0];
    (v7)[2](v7, 0, v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __69__HMDCHIPDataSource_hasValidGeoOrPreferredNetworkForHome_completion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _getLocationAuthorized];
  if (*(a1 + 64) == 1 && ([*(a1 + 32) pnExistsOnCurrentNetwork] & v4) == 1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v17 = 138543874;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Allowing geo due to valid preferred network for: %@ and error: %@", &v17, 0x20u);
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 56);
      v12 = HMStringFromHomeLocation();
      v13 = HMFBooleanToString();
      [*(a1 + 32) pnExistsOnCurrentNetwork];
      v14 = HMFBooleanToString();
      v15 = *(a1 + 40);
      v17 = 138544642;
      v18 = v10;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Denying geo due to presence: %@, location authorization: %@, preferred network: %@ for: %@ error: %@", &v17, 0x3Eu);
    }
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 48) + 16))();

  v16 = *MEMORY[0x277D85DE8];
}

void __69__HMDCHIPDataSource_hasValidGeoOrPreferredNetworkForHome_completion___block_invoke_155(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Done fetching.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)unregisterPresenceNotificationsForHome:(id)a3
{
  v12 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCHIPDataSource *)self activeThreadHome];
  v5 = [v4 uuid];
  v6 = [v12 uuid];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    [(HMDCHIPDataSource *)self unregisterForLeaveNotifications:v12];
    [(HMDCHIPDataSource *)self setActiveThreadHome:0];
  }

  v8 = [(HMDCHIPDataSource *)self pendingThreadHome];
  v9 = [v8 uuid];
  v10 = [v12 uuid];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    [(HMDCHIPDataSource *)self unregisterForArrivalNotifications:v12];
    [(HMDCHIPDataSource *)self setPendingThreadHome:0];
  }

  os_unfair_lock_unlock(&self->_geo_lock);
}

- (void)unregisterForArrivalNotifications:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Unregistering arrival notifications.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCHIPDataSource *)v6 notificationCenter];
  [v9 removeObserver:v6 name:@"HMDHomeDidArriveHomeNotificationKey" object:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForArrivalNotifications:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMDCHIPDataSource *)self unprotectedRegisterForArrivalNotifications:v4];
  os_unfair_lock_unlock(&self->_geo_lock);
}

- (void)unprotectedRegisterForArrivalNotifications:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self pendingThreadHome];
  v6 = [v5 uuid];
  v7 = [v4 uuid];
  v8 = [v6 isEqual:v7];

  if (v4 && (v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering for arrival notifications.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDCHIPDataSource *)v10 pendingThreadHome];

    if (v13)
    {
      v14 = [(HMDCHIPDataSource *)v10 pendingThreadHome];
      [(HMDCHIPDataSource *)v10 unregisterForArrivalNotifications:v14];
    }

    v15 = [(HMDCHIPDataSource *)v10 notificationCenter];
    [v15 addObserver:v10 selector:sel_handleHomeDidArriveHomeNotification_ name:@"HMDHomeDidArriveHomeNotificationKey" object:v4];

    [(HMDCHIPDataSource *)v10 setPendingThreadHome:v4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForLeaveNotifications:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Unregistering leave notifications.", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDCHIPDataSource *)v6 notificationCenter];
  [v9 removeObserver:v6 name:@"HMDHomeDidLeaveHomeNotificationKey" object:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)registerForLeaveNotifications:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMDCHIPDataSource *)self unprotectedRegisterForLeaveNotifications:v4];
  os_unfair_lock_unlock(&self->_geo_lock);
}

- (void)unprotectedRegisterForLeaveNotifications:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self activeThreadHome];
  v6 = [v5 uuid];
  v7 = [v4 uuid];
  v8 = [v6 isEqual:v7];

  if (v4 && (v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Registering for leave notifications.", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDCHIPDataSource *)v10 activeThreadHome];

    if (v13)
    {
      v14 = [(HMDCHIPDataSource *)v10 activeThreadHome];
      [(HMDCHIPDataSource *)v10 unregisterForLeaveNotifications:v14];
    }

    v15 = [(HMDCHIPDataSource *)v10 notificationCenter];
    [v15 addObserver:v10 selector:sel_handleHomeDidLeaveHomeNotification_ name:@"HMDHomeDidLeaveHomeNotificationKey" object:v4];

    [(HMDCHIPDataSource *)v10 setActiveThreadHome:v4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDidArriveHomeNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCHIPDataSource *)self pendingThreadHome];
  [(HMDCHIPDataSource *)self setPendingThreadHome:0];
  [(HMDCHIPDataSource *)self unregisterForArrivalNotifications:v5];
  [(HMDCHIPDataSource *)self unprotectedRegisterForLeaveNotifications:v5];
  os_unfair_lock_unlock(&self->_geo_lock);
  if ([(HMDCHIPDataSource *)self startThreadOnWakeEnabled])
  {
    [(HMDCHIPDataSource *)self _stopNetworkListenerForUserPreferredNetwork];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 fabric];
    v11 = [v10 fabricID];
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@User arrived home, starting thread network for fabric ID: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [v5 startThreadNetwork:1];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeDidLeaveHomeNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDCHIPDataSource *)self activeThreadHome];
  [(HMDCHIPDataSource *)self setActiveThreadHome:0];
  [(HMDCHIPDataSource *)self unregisterForLeaveNotifications:v5];
  [(HMDCHIPDataSource *)self unprotectedRegisterForArrivalNotifications:v5];
  os_unfair_lock_unlock(&self->_geo_lock);
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 fabric];
    v11 = [v10 fabricID];
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@User left home, stopping thread network for fabric ID: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [v5 stopThreadNetwork:1];
  if ([(HMDCHIPDataSource *)v7 startThreadOnWakeEnabled])
  {
    [(HMDCHIPDataSource *)v7 _startNetworkListenerForUserPreferredNetwork:1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleLocationAuthorizationChangedNotification:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_numberForKey:@"HMLocationAuthorizationKey"];

  if (v6)
  {
    v7 = [v6 integerValue];
    if ([(HMDCHIPDataSource *)self locationAuthorization]!= v7)
    {
      [(HMDCHIPDataSource *)self setLocationAuthorization:v7];
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = HMLocationAuthorizationAsString();
        v20 = 138543618;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Location Authorization is changing to %@, stopping thread network", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [(HMDCHIPDataSource *)v9 activeThreadHome];

      if (v13)
      {
        v14 = [(HMDCHIPDataSource *)v9 activeThreadHome];
        [v14 stopThreadNetwork:1];

        [(HMDCHIPDataSource *)v9 setActiveThreadHome:0];
      }
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@No location authorization key in the message", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)browser:(id)a3 didRemoveAccessoryPairingWithNodeID:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v6 = a4;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v36 = self;
  v7 = [(HMDCHIPDataSource *)self homeManager];
  v8 = [v7 homes];

  v32 = [v8 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v32)
  {
    v9 = *v45;
    v35 = v8;
    v31 = *v45;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v44 + 1) + 8 * v10);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v33 = v10;
        v34 = v11;
        v12 = [v11 hapAccessories];
        v13 = [v12 countByEnumeratingWithState:&v40 objects:v54 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v41;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v41 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v40 + 1) + 8 * i);
              v18 = [v17 matterNodeID];
              if ([v18 isEqual:&unk_2866287E0])
              {
              }

              else
              {
                v19 = [v17 matterNodeID];
                v20 = [v19 isEqualToNumber:v6];

                if (v20)
                {
                  v25 = objc_autoreleasePoolPush();
                  v26 = v36;
                  v27 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    v28 = HMFGetLogIdentifier();
                    v29 = [v17 shortDescription];
                    *buf = 138543874;
                    v49 = v28;
                    v50 = 2112;
                    v51 = v6;
                    v52 = 2112;
                    v53 = v29;
                    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Found accessory to remove from Apple Home with Matter node ID %@: %@", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v25);
                  v38[0] = MEMORY[0x277D85DD0];
                  v38[1] = 3221225472;
                  v38[2] = __65__HMDCHIPDataSource_browser_didRemoveAccessoryPairingWithNodeID___block_invoke;
                  v38[3] = &unk_2797358C8;
                  v38[4] = v26;
                  v39 = v6;
                  [v34 handleRemoveAccessory:v17 completion:v38];

                  goto LABEL_24;
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v40 objects:v54 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v10 = v33 + 1;
        v8 = v35;
        v9 = v31;
      }

      while (v33 + 1 != v32);
      v32 = [v35 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v32);
  }

  v21 = objc_autoreleasePoolPush();
  v22 = v36;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v49 = v24;
    v50 = 2112;
    v51 = v6;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@No accessory found in any homes with matter node id %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
LABEL_24:

  v30 = *MEMORY[0x277D85DE8];
}

void __65__HMDCHIPDataSource_browser_didRemoveAccessoryPairingWithNodeID___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
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
      v9 = *(a1 + 40);
      v16 = 138543874;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v3;
      v10 = "%{public}@Failed to remove accessory from Apple Home with Matter node ID %@: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v11, v12, v10, &v16, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v14 = *(a1 + 40);
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v14;
    v10 = "%{public}@Successfully removed accessory from Apple Home with Matter node ID: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionForBridgeAccessory:(id)a3 withContext:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HMDCHIPDataSource_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279734668;
  v21 = v12;
  v22 = v13;
  block[4] = self;
  v19 = v10;
  v20 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v13;
  dispatch_async(v14, block);
}

void __97__HMDCHIPDataSource_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dialogPresenter];
  v3 = [v2 shouldSkipAuthPromptDialog];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Defaults write set - skipping auth prompt for bridge accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Presenting user with auth prompt for bridge accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) dialogPresenter];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__HMDCHIPDataSource_requestUserPermissionForBridgeAccessory_withContext_queue_completionHandler___block_invoke_149;
    v15[3] = &unk_279730A60;
    v13 = *(a1 + 56);
    v16 = *(a1 + 64);
    [v10 requestUserPermissionForBridgeAccessory:v11 withContext:v12 queue:v13 completionHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)requestUserPermissionForUnauthenticatedAccessory:(id)a3 withContext:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__HMDCHIPDataSource_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke;
  block[3] = &unk_279734668;
  v21 = v12;
  v22 = v13;
  block[4] = self;
  v19 = v10;
  v20 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v13;
  dispatch_async(v14, block);
}

void __106__HMDCHIPDataSource_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dialogPresenter];
  v3 = [v2 shouldSkipAuthPromptDialog];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Defaults write set - skipping auth prompt for unauthenticated accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Presenting user with auth prompt for unauthenticated accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [*(a1 + 32) dialogPresenter];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __106__HMDCHIPDataSource_requestUserPermissionForUnauthenticatedAccessory_withContext_queue_completionHandler___block_invoke_147;
    v15[3] = &unk_279730A60;
    v13 = *(a1 + 56);
    v16 = *(a1 + 64);
    [v10 requestUserPermissionForUnauthenticatedAccessory:v11 withContext:v12 queue:v13 completionHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self vendorMetadataRefreshTimer];

  if (v5 == v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Vendor metadata refresh timer fired; fetching vendor metadata from cloud", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMDCHIPDataSource *)v7 vendorMetadataStore];
    [v10 fetchCloudMetadata];
  }

  v11 = [(HMDCHIPDataSource *)self attestationDataRefreshTimer];

  if (v11 == v4)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Attestation data refresh timer fired; fetching attestation data from cloud", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HMDCHIPDataSource *)v13 attestationDataStore];
    [v16 fetchCloudAttestationData];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)forAllPairedMatterServersFetchVidPid:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (v5)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v5;
    obj = [v5 homes];
    v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v26 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v11 = [v10 matterAccessories];
          v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v28;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v28 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v27 + 1) + 8 * j);
                v17 = [v16 matterVendorID];
                v18 = [v16 matterProductID];
                v4[2](v4, v17, v18);
              }

              v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v13);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    v6 = v24;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)forAllStorageDataSourcesDo:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (v5)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v5;
    v7 = [v5 homes];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 matterFabricID];
          v14 = v13;
          if (v13)
          {
            if (([v13 isEqualToNumber:&unk_2866287E0] & 1) == 0)
            {
              v15 = [[HMDCHIPHomeDataSource alloc] initWithFabricID:v14 home:v12];
              v16 = v4[2](v4, v15);

              if ((v16 & 1) == 0)
              {

                goto LABEL_17;
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v6 = v22;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@forAllStorageDataSourcesDo: Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)storageDataSourceForFabricUUID:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (v5)
  {
    v28 = self;
    v29 = v5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [v5 homes];
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [v12 matterFabricID];
          v14 = v13;
          if (v13)
          {
            if (([v13 isEqual:&unk_2866287E0] & 1) == 0)
            {
              v15 = [v12 targetFabricUUID];
              v16 = [v15 isEqual:v4];

              if (v16)
              {
                v21 = [[HMDCHIPHomeDataSource alloc] initWithFabricID:v14 home:v12];

                goto LABEL_19;
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = objc_autoreleasePoolPush();
    v18 = v28;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v20;
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find home with valid fabric ID corresponding to fabric UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = 0;
LABEL_19:
    v6 = v29;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)appleHomeFabricWithTargetFabricUUID:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [v5 homes];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 targetFabricUUID];
          v14 = [v13 isEqual:v4];

          if (v14)
          {
            v15 = [v12 fabric];

            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v15 = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)fabricIDFromFabricUUID:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (v5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [v5 homes];
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [v12 targetFabricUUID];
          v14 = [v13 isEqual:v4];

          if (v14)
          {
            v15 = [v12 matterFabricID];
            if (!v15)
            {
              v16 = objc_autoreleasePoolPush();
              v17 = self;
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = HMFGetLogIdentifier();
                v20 = [v12 uuid];
                *buf = 138543874;
                v32 = v19;
                v33 = 2112;
                v34 = v4;
                v35 = 2112;
                v36 = v20;
                _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Data source retrieved nil fabric ID from fabric %@ from home %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v16);
            }

            goto LABEL_20;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v15 = 0;
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSUUID)currentFabricUUID
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPDataSource *)self homeManager];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 homes];
    v6 = [v5 na_filter:&__block_literal_global_136_99892];

    v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_138];
    v8 = [v7 firstObject];
    v9 = [v8 targetFabricUUID];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __38__HMDCHIPDataSource_currentFabricUUID__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 reachableAccessoriesCount];
  if (v6 == [v5 reachableAccessoriesCount])
  {
    v7 = [v4 uuid];
    v8 = [v7 UUIDString];
    v9 = [v5 uuid];
    v10 = [v9 UUIDString];
    v11 = [v8 compare:v10];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "reachableAccessoriesCount")}];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "reachableAccessoriesCount")}];
    v11 = [v7 compare:v8];
  }

  return v11;
}

- (NSSet)allTargetFabricUUIDs
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPDataSource *)self homeManager];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [v3 homes];
    v7 = [v6 na_map:&__block_literal_global_134];
    v8 = [v5 setWithArray:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSSet)allFabricIDs
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPDataSource *)self homeManager];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [v3 homes];
    v7 = [v6 na_map:&__block_literal_global_131_99898];
    v8 = [v5 setWithArray:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSSet)allPairedHAPServerIdentifiers
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPDataSource *)self homeManager];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v3;
    v5 = [v3 homes];
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v11 = [v10 hapAccessories];
          v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v26;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v26 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v25 + 1) + 8 * j) identifier];
                [v4 addObject:v16];
              }

              v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    v17 = [v4 copy];
    v3 = v24;
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CBEB98] set];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)isCurrentDevicePrimaryResident
{
  v2 = [(HMDCHIPDataSource *)self home];
  v3 = [v2 isCurrentDevicePrimaryResident];

  return v3;
}

- (void)handleHomeRemovedNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling home removal by notifying CHIP storage", &v19, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 userInfo];
  v10 = [v9 objectForKey:@"HMDHomeNotificationKey"];

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

  v13 = [v12 homeManager];
  v14 = [v13 accessoryBrowser];
  v15 = [v14 chipAccessoryServerBrowser];
  v16 = [v12 targetFabricUUID];
  [v15 handleHomeDeletionWithFabricUUID:v16];

  [(HMDCHIPDataSource *)v6 stopThreadRadioForHome:v12];
  v17 = [(HMDCHIPDataSource *)v6 chipStorage];
  [v17 handleUpdatedDataWithIsLocalChange:0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryCHIPStorageChangedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_numberForKey:@"HMDAccessoryCHIPStorageIsLocalChangeNotificationKey"];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = @"HMDAccessoryCHIPStorageIsLocalChangeNotificationKey";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Did not find %@ in notification userInfo. Defaulting isLocalChange to %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 1;
  }

  [(HMDCHIPDataSource *)self handleUpdatedDataWithIsLocalChange:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeCHIPStorageChangedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_numberForKey:@"HMDHomeCHIPStorageIsLocalChangeNotificationKey"];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = @"HMDHomeCHIPStorageIsLocalChangeNotificationKey";
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Did not find %@ in notification userInfo. Defaulting isLocalChange to %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 1;
  }

  [(HMDCHIPDataSource *)self handleUpdatedDataWithIsLocalChange:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentReachabilityNotification:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

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

  v9 = [(HMDCHIPDataSource *)self homeManager];
  v10 = [v9 _homeWithUUID:v8];

  v11 = [v10 primaryResident];
  v12 = [v11 isReachable];

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Setting up shared user fabric data per resident reachability notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    objc_initWeak(buf, v10);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__HMDCHIPDataSource_handleResidentReachabilityNotification___block_invoke;
    v20[3] = &unk_2797338E8;
    objc_copyWeak(&v21, buf);
    v20[4] = v14;
    [v10 setUpSharedUserFabricDataWithForceFetch:0 completion:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v17 = [(HMDCHIPDataSource *)self chipResidentStateManager];
    v18 = [v10 fabric];
    [v17 handleResidentReachabilityChangeForFabric:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __60__HMDCHIPDataSource_handleResidentReachabilityNotification___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained fabric];
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying HomeKitMatter of resident reachability change for Home %@ with fabricID %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v10 = [*(a1 + 32) chipResidentStateManager];
    [v10 handleResidentReachabilityChangeForFabric:v5];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentUpdatedNotification:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying CHIP data sources of updated resident state", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [(HMDCHIPDataSource *)v5 homeManager];
  v9 = [v8 homes];

  v10 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      v27 = v11;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        if ([v14 isCurrentDeviceConfirmedPrimaryResident])
        {
          v28 = 0;
          [v14 setUpOperationalFabricDataWithError:&v28];
          v15 = v28;
          v16 = objc_autoreleasePoolPush();
          v17 = v5;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v19 = v12;
            v20 = v9;
            v22 = v21 = v5;
            *buf = 138543874;
            v34 = v22;
            v35 = 2112;
            v36 = v14;
            v37 = 2112;
            v38 = v15;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Set up operational fabric data for primary resident of home: %@ with error: %@", buf, 0x20u);

            v5 = v21;
            v9 = v20;
            v12 = v19;
            v11 = v27;
          }

          objc_autoreleasePoolPop(v16);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v11);
  }

  v23 = [(HMDCHIPDataSource *)v5 chipResidentStateManager];
  [v23 handleResidentStateUpdated];

  v24 = [(HMDCHIPDataSource *)v5 chipStorage];
  [v24 handleUpdatedCurrentFabricIndex];

  v25 = *MEMORY[0x277D85DE8];
}

- (id)getDefaultThreadNetworkMetadataStore
{
  v2 = [(HMDCHIPDataSource *)self threadClientFactory];
  v3 = [HMDThreadNetworkMetadataStore storeWithThreadClientFactory:v2];

  return v3;
}

- (id)homeWithCHIPFabric:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCHIPDataSource *)self homeManager];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v5 homes];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __40__HMDCHIPDataSource_homeWithCHIPFabric___block_invoke;
    v15[3] = &unk_2797323C0;
    v16 = v4;
    v8 = [v7 na_firstObjectPassingTest:v15];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Home manager or fabric reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

BOOL __40__HMDCHIPDataSource_homeWithCHIPFabric___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fabric];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)home
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCHIPDataSource *)self homeManager];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 homes];
    v6 = [v5 na_filter:&__block_literal_global_116_99917];

    v7 = [v6 na_firstObjectPassingTest:&__block_literal_global_118_99918];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __25__HMDCHIPDataSource_home__block_invoke_3;
      v28[3] = &unk_2797323C0;
      v14 = v4;
      v29 = v14;
      v15 = [v6 na_firstObjectPassingTest:v28];
      v16 = v15;
      if (v15)
      {
        v9 = v15;
      }

      else
      {
        v23 = MEMORY[0x277D85DD0];
        v24 = 3221225472;
        v25 = __25__HMDCHIPDataSource_home__block_invoke_4;
        v26 = &unk_2797323C0;
        v27 = v14;
        v17 = [v6 na_firstObjectPassingTest:&v23];
        v18 = v17;
        if (v17)
        {
          v9 = v17;
        }

        else
        {
          v19 = [v6 sortedArrayUsingComparator:{&__block_literal_global_121_99919, v23, v24, v25, v26}];
          v9 = [v19 firstObject];

          if (v9)
          {
            v20 = v9;
          }
        }
      }
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Home manager reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __25__HMDCHIPDataSource_home__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) currentHomeUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __25__HMDCHIPDataSource_home__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) primaryHomeUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __25__HMDCHIPDataSource_home__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uuid];
  v6 = [v5 UUIDString];
  v7 = [v4 uuid];

  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

BOOL __25__HMDCHIPDataSource_home__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 chipStorage];
  v3 = [v2 keyValueStore];
  v4 = v3 != 0;

  return v4;
}

- (void)configureWithUIDialogPresenter:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMDCHIPDataSource *)self uiDialogPresenter];

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with UI dialog presenter: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)v8 setUiDialogPresenter:v5];
  v11 = [(HMDCHIPDataSource *)v8 uiDialogPresenter];
  [v11 setDialogDelegate:v8];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithAttestationDataStore:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMDCHIPDataSource *)self attestationDataStore];

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v10;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with attestation data store: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)v8 setAttestationDataStore:v5];
  v11 = [(HMDCHIPDataSource *)v8 attestationDataStore];
  [v11 fetchCloudAttestationData];

  v12 = [(HMDCHIPDataSource *)v8 attestationDataRefreshTimer];
  [v12 setDelegate:v8];

  v13 = [(HMDCHIPDataSource *)v8 attestationDataRefreshTimer];
  [v13 resume];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)configureWithVendorMetadataStore:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMDCHIPDataSource *)self vendorMetadataStore];

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with vendor metadata store: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)v8 setVendorMetadataStore:v5];
  v11 = [(HMDCHIPDataSource *)v8 vendorMetadataStore];
  [v11 setDelegate:v8];

  v12 = [(HMDCHIPDataSource *)v8 vendorMetadataStore];
  [v12 fetchCloudMetadata];

  v13 = [(HMDCHIPDataSource *)v8 vendorMetadataRefreshTimer];
  [v13 setDelegate:v8];

  v14 = [(HMDCHIPDataSource *)v8 vendorMetadataRefreshTimer];
  [v14 resume];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)configureWithStorage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMDCHIPDataSource *)self chipStorage];

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v10;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with storage: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)v8 setChipStorage:v5];
  v11 = [(HMDCHIPDataSource *)v8 chipStorage];
  [v11 setDataSource:v8];

  v12 = [(HMDCHIPDataSource *)v8 notificationCenter];
  [v12 addObserver:v8 selector:sel_handleHomeCHIPStorageChangedNotification_ name:@"HMDHomeCHIPStorageUpdatedNotification" object:0];

  v13 = [(HMDCHIPDataSource *)v8 notificationCenter];
  [v13 addObserver:v8 selector:sel_handleAccessoryCHIPStorageChangedNotification_ name:@"HMDAccessoryCHIPStorageUpdatedNotification" object:0];

  v14 = [(HMDCHIPDataSource *)v8 notificationCenter];
  v15 = [(HMDCHIPDataSource *)v8 homeManager];
  [v14 addObserver:v8 selector:sel_handleHomeRemovedNotification_ name:@"HMDHomeRemovedNotification" object:v15];

  v16 = [(HMDCHIPDataSource *)v8 notificationCenter];
  [v16 addObserver:v8 selector:sel_handleLocationAuthorizationChangedNotification_ name:@"HMLocationAuthorizationChangedNotification" object:0];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)configureWithThreadRadioManager:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Configuring with thread radio manager: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCHIPDataSource *)v7 setMatterThreadRadioManager:v5];
  [v5 setDelegate:v7];
  v10 = [(HMDCHIPDataSource *)v7 notificationCenter];
  [v10 addObserver:v7 selector:sel_handleThreadNetworkStateChangedNotification_ name:@"HMDHomeThreadNetworkConnectionStateChangeNotification" object:0];

  v11 = [(HMDCHIPDataSource *)v7 notificationCenter];
  [v11 addObserver:v7 selector:sel_handleThreadNetworkStateChangedNotification_ name:@"HMDHomeThreadNetworkNodeTypeChangeNotification" object:0];

  v12 = [(HMDCHIPDataSource *)v7 notificationCenter];
  [v12 addObserver:v7 selector:sel_handleThreadNetworkWakeOnConnectionStateChangedNotification_ name:@"HMDHomeThreadNetworkWakeOnConnectionStateChangeNotification" object:0];

  v13 = [(HMDCHIPDataSource *)v7 notificationCenter];
  [v13 addObserver:v7 selector:sel_handleThreadNetworkPeripheralDeviceNodeTypeChangedNotification_ name:@"HMDHomeThreadNetworkPeripheralDeviceNodeTypeChangedNotification" object:0];

  v14 = [(HMDCHIPDataSource *)v7 notificationCenter];
  [v14 addObserver:v7 selector:sel_handleCurrentWiFiNetworkChangedNotification_ name:*MEMORY[0x277D0F768] object:0];

  if (isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled())
  {
    v15 = +[HMDDeviceCapabilities deviceCapabilities];
    v16 = [v15 supportsThreadService];

    if (v16)
    {
      [v5 setDeviceSupportsThreadService:1];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)configureWithResidentStateManager:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
LABEL_9:
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = [(HMDCHIPDataSource *)self chipResidentStateManager];

  if (v6)
  {
    goto LABEL_9;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with resident state manager: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCHIPDataSource *)v8 setChipResidentStateManager:v5];
  v11 = [(HMDCHIPDataSource *)v8 chipResidentStateManager];
  [v11 setDataSource:v8];

  v12 = [(HMDCHIPDataSource *)v8 notificationCenter];
  [v12 addObserver:v8 selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

  v13 = [(HMDCHIPDataSource *)v8 notificationCenter];
  [v13 addObserver:v8 selector:sel_handlePrimaryResidentUpdatedNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  if (isFeatureMatteriPhoneOnlyPairingControlEnabled())
  {
    v14 = [(HMDCHIPDataSource *)v8 notificationCenter];
    [v14 addObserver:v8 selector:sel_handleResidentReachabilityNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

    v15 = [(HMDCHIPDataSource *)v8 notificationCenter];
    [v15 addObserver:v8 selector:sel_handleResidentReachabilityNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithAccessoryServerBrowser:(id)a3
{
  v10 = a3;
  [v10 setAccessoryServerBrowserDelegate:self];
  v4 = [v10 residentStateManager];
  [(HMDCHIPDataSource *)self configureWithResidentStateManager:v4];

  v5 = [v10 threadRadioManager];
  [(HMDCHIPDataSource *)self configureWithThreadRadioManager:v5];

  [(HMDCHIPDataSource *)self setMatterAccessoryServerBrowser:v10];
  if (CFPreferencesGetAppBooleanValue(@"StartThreadOnWake", @"/Library/Managed Preferences/mobile/com.apple.homed.plist", 0))
  {
    [(HMDCHIPDataSource *)self setStartThreadOnWakeEnabled:1];
  }

  v6 = [v10 storage];
  [(HMDCHIPDataSource *)self configureWithStorage:v6];

  v7 = [v10 vendorMetadataStore];
  [(HMDCHIPDataSource *)self configureWithVendorMetadataStore:v7];

  v8 = [v10 attestationDataStore];
  [(HMDCHIPDataSource *)self configureWithAttestationDataStore:v8];

  v9 = [v10 uiDialogPresenter];
  [(HMDCHIPDataSource *)self configureWithUIDialogPresenter:v9];
}

- (HMDCHIPDataSource)initWithHomeManager:(id)a3 notificationCenter:(id)a4 vendorMetadataRefreshTimer:(id)a5 attestationDataRefreshTimer:(id)a6 dialogPresenter:(id)a7 threadClientFactory:(id)a8
{
  v14 = a3;
  v27 = a4;
  v26 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = HMDCHIPDataSource;
  v18 = [(HMDCHIPDataSource *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_homeManager, v14);
    objc_storeStrong(&v19->_notificationCenter, a4);
    objc_storeStrong(&v19->_vendorMetadataRefreshTimer, a5);
    objc_storeStrong(&v19->_attestationDataRefreshTimer, a6);
    objc_storeStrong(&v19->_dialogPresenter, a7);
    v20 = objc_alloc_init(HMDFileManager);
    fileManager = v19->_fileManager;
    v19->_fileManager = v20;

    v19->_pnExistsOnCurrentNetwork = 0;
    v19->_geo_lock._os_unfair_lock_opaque = 0;
    v22 = [HMDLocation sharedManager:v26];
    v19->_locationAuthorization = [v22 locationAuthorized];

    v19->_pendingRadioStateChangeNotification = 0;
    v19->_threadNetworkShouldRestartOnNetworkChange = 0;
    v19->_startThreadOnWakeEnabled = 0;
    v19->_threadPairingOverride = 0;
    v23 = _Block_copy(v17);
    threadClientFactory = v19->_threadClientFactory;
    v19->_threadClientFactory = v23;

    [(HMDCHIPDataSource *)v19 _getPreferredNetworkExistsWithCompletion:&__block_literal_global_99979];
  }

  return v19;
}

- (HMDCHIPDataSource)initWithHomeManager:(id)a3 threadClientFactory:(id)a4
{
  v6 = MEMORY[0x277CCAB98];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultCenter];
  v10 = objc_alloc(MEMORY[0x277D0F920]);
  v11 = [v10 initWithTimeInterval:4 options:*&vendorInfoFetchPeriod];
  v12 = objc_alloc(MEMORY[0x277D0F920]);
  v13 = [v12 initWithTimeInterval:4 options:*&attestationInfoFetchPeriod];
  v14 = +[HMDUIDialogPresenter sharedUIDialogPresenter];
  v15 = [(HMDCHIPDataSource *)self initWithHomeManager:v8 notificationCenter:v9 vendorMetadataRefreshTimer:v11 attestationDataRefreshTimer:v13 dialogPresenter:v14 threadClientFactory:v7];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t30_99988 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t30_99988, &__block_literal_global_143);
  }

  v3 = logCategory__hmf_once_v31_99989;

  return v3;
}

uint64_t __32__HMDCHIPDataSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v31_99989;
  logCategory__hmf_once_v31_99989 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end