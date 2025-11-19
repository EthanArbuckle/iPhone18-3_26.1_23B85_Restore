@interface HMDResidentSelectionMode
+ (id)logCategory;
- (BOOL)_allResidentsHaveSameLocationStatus:(unint64_t)a3;
- (BOOL)_currentDevicePreferredResidentsListIsPublished;
- (BOOL)_isViableUserPreferredResident:(id)a3;
- (BOOL)_preferredResidentsListFromElectorUpdated;
- (BOOL)_shouldTakeOverBasedOnReachability;
- (BOOL)_updateLocalPreferredResidentsList;
- (BOOL)allResidentsAboveMeAreUnreachableIn:(id)a3;
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3 selectionTimestamp:(id)a4;
- (BOOL)hasViablePrimaryResidentWithSelectionInfo:(id)a3;
- (BOOL)newPrimaryIsInREv2BasedOnTheirTimestamp:(id)a3 ourSelectionInfo:(id)a4;
- (BOOL)shouldRegeneratePreferredResidentsListBasedOnFoundResidents:(id)a3 residentLocationMap:(id)a4;
- (BOOL)shouldTakeOverAsTheCurrentPrimaryWithSelectionInfo:(id)a3 isTimerTriggered:(BOOL)a4;
- (HMDIDSServerBag)idsServerBag;
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentSelectionMode)initWithContext:(id)a3;
- (HMDResidentSelectionMode)initWithContext:(id)a3 backgroundTaskManager:(id)a4;
- (HMDResidentSelectionModeDelegate)delegate;
- (NSArray)sortedResidents;
- (NSUUID)messageTargetUUID;
- (double)_statusDebounceInterval;
- (double)_takeOverIfPrimaryIsNotViableInterval;
- (double)_takeOverTimerInterval;
- (id)_generatePreferredResidentsList;
- (id)_highestVersionLowestUUIDResident;
- (id)_nextResidentsListGenerationDate;
- (id)_sortResidentsByLatestVersionLowestUUID:(id)a3;
- (id)_sortResidentsUsingAllCriteria:(id)a3;
- (id)backupsForResident:(id)a3;
- (id)createSelectionMessageCompletion;
- (id)dumpState;
- (id)logIdentifier;
- (id)preferredResidentsRemovedFromHome;
- (id)residentSelectionInfoWithOurselvesAsThePreferredWithTimestamp:(id)a3;
- (id)residentsNotPresentInPreferredResidentsList:(id)a3;
- (id)residentsWithReachableAccessories;
- (id)userPreferredResidentPerSelectionInfo:(id)a3;
- (id)wiredResidents;
- (int64_t)compareLocationResident1:(id)a3 resident2:(id)a4;
- (int64_t)compareNetworkConnectionResident1:(id)a3 resident2:(id)a4;
- (int64_t)compareProductTypeResident1:(id)a3 resident2:(id)a4;
- (int64_t)compareReachableAccessoriesResident1:(id)a3 resident2:(id)a4;
- (int64_t)compareVersionResident1:(id)a3 resident2:(id)a4;
- (unint64_t)_preferredResidentsListMaxSize;
- (unint64_t)_takeOverOnlyIfCurrentPrimaryIsNotViableJitter;
- (unint64_t)locationOfResident:(id)a3;
- (unint64_t)preferredListGenerationEndHour;
- (unint64_t)preferredListGenerationStartHour;
- (void)_evaluatePrimaryChangedReason;
- (void)_evaluatePrimaryChangedReasonForCurrentSelectionInfo:(id)a3 previousSelectionInfo:(id)a4;
- (void)_publishElectorsList;
- (void)_publishPreferredResidentsList:(id)a3;
- (void)_registerForMessagesAsAResident;
- (void)_rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:(double)a3;
- (void)_rescheduleTakeOverTimer;
- (void)cancelAllTakeOverTimers;
- (void)configureAsAResidentWithRunPrimaryEvaluation:(BOOL)a3;
- (void)currentDeviceReadyAsAResident;
- (void)deregisterForMessages;
- (void)didFailResidentSelectionWithResident:(id)a3 error:(id)a4;
- (void)didReceiveSelectionMessage:(id)a3;
- (void)didSucceedResidentSelectionWithPreferred:(id)a3;
- (void)didUpdateResidentSelectionModelTo:(id)a3;
- (void)didUpdateResidentStatus:(id)a3 residentsFound:(id)a4 residentsLost:(id)a5;
- (void)handleDailyPreferredResidentsListRegenerationNotification:(id)a3;
- (void)handleMeshInformationRequest:(id)a3;
- (void)handleTakeOverIfPrimaryIsNotViableTimerFired;
- (void)handleTakeOverTimerFired;
- (void)handleWeAreSelectedAsThePreferredPrimaryWithInfo:(id)a3 selectionMessage:(id)a4;
- (void)handleWeAreSelectedAsThePreferredPrimaryWithSelectionTimestamp:(id)a3 selectionMessage:(id)a4;
- (void)performSelectionWithPreferredPrimaryResident:(id)a3 requireAutoUpdate:(BOOL)a4 reason:(unint64_t)a5 completion:(id)a6;
- (void)scheduleDailyPreferredResidentsListRegenerationTask;
- (void)scheduleTakeOverTimerIfRequiredAfterBlockDuration:(double)a3;
- (void)start;
- (void)takeOverWithSelectionTimestamp:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDResidentSelectionMode

- (HMDIDSServerBag)idsServerBag
{
  WeakRetained = objc_loadWeakRetained(&self->_idsServerBag);

  return WeakRetained;
}

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (HMDResidentSelectionModeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDResidentSelectionMode *)self context];
  v3 = [v2 home];
  v4 = [v3 uuid];
  v5 = [v4 UUIDString];

  return v5;
}

- (void)timerDidFire:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];

  if (v4 == v7)
  {
    [(HMDResidentSelectionMode *)self handleTakeOverIfPrimaryIsNotViableTimerFired];
  }

  else
  {
    v5 = [(HMDResidentSelectionMode *)self takeOverTimer];

    v6 = v7;
    if (v5 != v7)
    {
      goto LABEL_6;
    }

    [(HMDResidentSelectionMode *)self handleTakeOverTimerFired];
  }

  v6 = v7;
LABEL_6:
}

- (id)residentsWithReachableAccessories
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [(HMDResidentSelectionMode *)self context];
  v5 = [v4 presentResidentsStatuses];
  v6 = [v5 residentsWithReachableAccessories];
  v7 = [v3 setWithSet:v6];

  v8 = [(HMDResidentSelectionMode *)self context];
  v9 = [v8 currentResidentDevice];
  if ([v8 isActingAsResident] && (objc_msgSend(v7, "containsObject:", v9) & 1) == 0 && objc_msgSend(v8, "hasReachableAccessories"))
  {
    [v7 addObject:v9];
  }

  v10 = [v7 copy];

  return v10;
}

- (int64_t)compareReachableAccessoriesResident1:(id)a3 resident2:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDResidentSelectionMode *)self residentsWithReachableAccessories];
  v9 = [v8 containsObject:v7];

  v10 = [v8 containsObject:v6];
  if ((v9 ^ 1 | v10))
  {
    v11 = (v9 ^ 1) & v10;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (id)wiredResidents
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [(HMDResidentSelectionMode *)self context];
  v5 = [v4 presentResidentsStatuses];
  v6 = [v5 wiredResidents];
  v7 = [v3 setWithSet:v6];

  v8 = [(HMDResidentSelectionMode *)self context];
  v9 = [v8 currentResidentDevice];
  if ([v8 isActingAsResident] && (objc_msgSend(v7, "containsObject:", v9) & 1) == 0 && objc_msgSend(v8, "ourNetworkConnectionType") == 1)
  {
    [v7 addObject:v9];
  }

  v10 = [v7 copy];

  return v10;
}

- (int64_t)compareNetworkConnectionResident1:(id)a3 resident2:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDResidentSelectionMode *)self wiredResidents];
  v9 = [v8 containsObject:v7];

  v10 = [v8 containsObject:v6];
  if ((v9 ^ 1 | v10))
  {
    v11 = (v9 ^ 1) & v10;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (int64_t)compareProductTypeResident1:(id)a3 resident2:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentSelectionMode *)self productTypePreferenceList];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "productType")}];
  v10 = [v8 indexOfObject:v9];

  v11 = [(HMDResidentSelectionMode *)self productTypePreferenceList];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "productType")}];
  v13 = [v11 indexOfObject:v12];

  v14 = [(HMDResidentSelectionMode *)self productTypePreferenceList];
  v15 = [v14 indexOfObject:&unk_283E71E40];

  if (v10 == v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v6 shortDescription];
      v27 = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
LABEL_7:
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Could not find the product type for: %@", &v27, 0x16u);
    }
  }

  else
  {
    if (v13 != v15)
    {
      goto LABEL_9;
    }

    v16 = objc_autoreleasePoolPush();
    v21 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v7 shortDescription];
      v27 = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v16);
LABEL_9:
  v22 = -1;
  if (v10 < v13)
  {
    v23 = -1;
  }

  else
  {
    v23 = 1;
  }

  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = v23;
  }

  if (v10 == v13)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (int64_t)compareLocationResident1:(id)a3 resident2:(id)a4
{
  v6 = a4;
  v7 = [(HMDResidentSelectionMode *)self locationOfResident:a3];
  v8 = [(HMDResidentSelectionMode *)self locationOfResident:v6];

  v9 = -1;
  v10 = 1;
  v11 = -1;
  v12 = 1;
  if (v7 == 200)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  if (v8 != 100)
  {
    v12 = v13;
  }

  if (v7 != 100)
  {
    v11 = v12;
  }

  if (v8 != 300)
  {
    v10 = v11;
  }

  if (v7 != 300)
  {
    v9 = v10;
  }

  if (v7 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (unint64_t)locationOfResident:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentSelectionMode *)self context];
  v6 = [v5 presentResidentsStatuses];
  v7 = [v6 residentIDSIdentifierToLocationMap];

  v8 = [v4 device];
  v9 = [v8 idsIdentifier];
  v10 = [v7 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v4 device];
    v12 = [v11 idsIdentifier];
    v13 = [v7 objectForKeyedSubscript:v12];
    v14 = [v13 unsignedIntegerValue];
  }

  else
  {
    v15 = [v5 currentResidentDevice];
    v16 = [v15 isEqual:v4];

    if (v16)
    {
      v14 = [v5 myLocation];
    }

    else
    {
      v14 = 100;
    }
  }

  return v14;
}

- (BOOL)_allResidentsHaveSameLocationStatus:(unint64_t)a3
{
  v4 = [(HMDResidentSelectionMode *)self context];
  v5 = [v4 presentResidentsStatuses];
  v6 = [v5 residentIDSIdentifierToLocationMap];
  v7 = [v6 allValues];

  if ([v7 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__HMDResidentSelectionMode__allResidentsHaveSameLocationStatus___block_invoke;
    v10[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
    v10[4] = a3;
    v8 = [v7 na_all:v10];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (int64_t)compareVersionResident1:(id)a3 resident2:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 device];
  v8 = [v7 version];
  v9 = [v5 device];
  v10 = [v9 version];
  v11 = [v8 compare:v10];

  if (!v11)
  {
    v12 = [v5 device];
    v13 = [v12 productInfo];
    v14 = [v13 softwareVersion];

    v15 = [v6 device];
    v16 = [v15 productInfo];
    v17 = [v16 softwareVersion];

    if (v17)
    {
      [v17 operatingSystemVersion];
      if (!v14)
      {
LABEL_6:
        v11 = HMFOperatingSystemVersionCompare();

        goto LABEL_7;
      }
    }

    else if (!v14)
    {
      goto LABEL_6;
    }

    [v14 operatingSystemVersion];
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (id)_sortResidentsUsingAllCriteria:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HMDResidentSelectionMode__sortResidentsUsingAllCriteria___block_invoke;
  v5[3] = &unk_278687AC0;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __59__HMDResidentSelectionMode__sortResidentsUsingAllCriteria___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) compareLocationResident1:v5 resident2:v6];
  if (v7)
  {
    goto LABEL_5;
  }

  v7 = [*(a1 + 32) compareVersionResident1:v5 resident2:v6];
  if (v7 || (v7 = [*(a1 + 32) compareNetworkConnectionResident1:v5 resident2:v6]) != 0 || (v7 = objc_msgSend(*(a1 + 32), "compareProductTypeResident1:resident2:", v5, v6)) != 0 || (objc_msgSend(*(a1 + 32), "idsServerBag"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "disableResidentSelectionReachableAccessoriesCriteria"), v10, (v11 & 1) == 0) && (v7 = objc_msgSend(*(a1 + 32), "compareReachableAccessoriesResident1:resident2:", v5, v6)) != 0)
  {
LABEL_5:
    v8 = v7;
  }

  else
  {
    v12 = [v5 device];
    v13 = [v12 idsIdentifier];
    v14 = [v13 UUIDString];
    v15 = [v6 device];
    v16 = [v15 idsIdentifier];
    v17 = [v16 UUIDString];
    v8 = [v14 compare:v17];
  }

  return v8;
}

- (id)preferredResidentsRemovedFromHome
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDResidentSelectionMode *)self context];
  v5 = [v4 electorsPreferredResidentsList];
  v6 = [v5 residentIDSIdentifiers];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __61__HMDResidentSelectionMode_preferredResidentsRemovedFromHome__block_invoke;
  v18 = &unk_278672878;
  v19 = self;
  v7 = v3;
  v20 = v7;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];

  if ([v7 count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Residents that should be removed from the Preferred Residents List are: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __61__HMDResidentSelectionMode_preferredResidentsRemovedFromHome__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) context];
  v4 = [v3 residentDeviceWithIDSIdentifier:v5];

  if (!v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)_publishPreferredResidentsList:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentSelectionMode *)self context];
  v6 = [v5 isActingAsResident];

  if (v6)
  {
    [(HMDResidentSelectionMode *)self setLocalPreferredResidentsList:v4];
    v7 = [(HMDResidentSelectionMode *)self delegate];
    [v7 primarySelectionMode:self didUpdatePreferredResidentsList:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not publishing the preferred residents list since we are not acting as a resident.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_updateLocalPreferredResidentsList
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentSelectionMode *)self localPreferredResidentsList];
  v4 = [(HMDResidentSelectionMode *)self _generatePreferredResidentsList];
  v5 = v4;
  if (v3 && ([v4 residentIDSIdentifiers], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "residentIDSIdentifiers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToArray:", v7), v7, v6, v8))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Local preferred residents list is already up to date", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating local preferred residents list: %@.", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDResidentSelectionMode *)v15 _publishPreferredResidentsList:v5];
    v13 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_publishElectorsList
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentSelectionMode *)self context];
  v4 = [v3 electorsPreferredResidentsList];

  v5 = [v4 residentIDSIdentifiers];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Publishing the preferred residents list from elector: %@.", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentSelectionMode *)v8 _publishPreferredResidentsList:v4];
  }

  else
  {
    [(HMDResidentSelectionMode *)self _updateLocalPreferredResidentsList];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleDailyPreferredResidentsListRegenerationNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_stringForKey:@"HMD.BGTM.NK"];

  v7 = [(HMDResidentSelectionMode *)self backgroundTaskIdentifier];
  v8 = HMFEqualObjects();

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Preferred residents list regeneration task fired.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [(HMDResidentSelectionMode *)v10 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HMDResidentSelectionMode_handleDailyPreferredResidentsListRegenerationNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = v10;
    dispatch_async(v13, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __86__HMDResidentSelectionMode_handleDailyPreferredResidentsListRegenerationNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _updateLocalPreferredResidentsList];
  if ([*(a1 + 32) currentModeType] == 2)
  {
    v2 = [*(a1 + 32) context];
    v3 = [v2 primaryResidentDevice];
    v4 = [v3 isCurrentDevice];

    if (v4)
    {
      v5 = [*(a1 + 32) preferredResidentsRemovedFromHome];
      v6 = [*(a1 + 32) residentSelectionInfoFromWorkingStore];
      v7 = [v6 preferredResidentIDSIdentifier];
      v8 = [v5 containsObject:v7];

      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543362;
          v26 = v12;
          _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Preferred resident is removed while in Manual mode. Will force switch to Auto mode.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        v13 = [HMDResidentSelectionInfo alloc];
        v14 = [MEMORY[0x277CBEAA8] date];
        v15 = [(HMDResidentSelectionInfo *)v13 initWithPreferredResidentIDSIdentifier:0 currentResidentSelectionModeType:3 selectionTimestamp:v14];

        v16 = [*(a1 + 32) delegate];
        v17 = *(a1 + 32);
        v20 = MEMORY[0x277D85DD0];
        v21 = 3221225472;
        v22 = __86__HMDResidentSelectionMode_handleDailyPreferredResidentsListRegenerationNotification___block_invoke_151;
        v23 = &unk_27868A250;
        v24 = v17;
        [v16 primarySelectionMode:? didUpdateResidentSelectionInfo:? completion:?];
      }
    }
  }

  result = [*(a1 + 32) scheduleDailyPreferredResidentsListRegenerationTask];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void __86__HMDResidentSelectionMode_handleDailyPreferredResidentsListRegenerationNotification___block_invoke_151(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Model update for switching from Manual to Auto mode completed.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_nextResidentsListGenerationDate
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:@"rsPreferredListGenInterval"];
  v5 = [v4 numberValue];

  [v5 doubleValue];
  if (v6 <= 0.0)
  {
    v8 = [(HMDResidentSelectionMode *)self preferredListGenerationEndHour];
    v9 = [(HMDResidentSelectionMode *)self preferredListGenerationStartHour];
    v10 = [(HMDResidentSelectionMode *)self preferredListGenerationEndHour];
    if (v10 < [(HMDResidentSelectionMode *)self preferredListGenerationStartHour]|| (v11 = 86400 * (v8 - v9), v11 > 0x15180))
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v26 = 138544130;
        v27 = v15;
        v28 = 2048;
        v29 = 18000;
        v30 = 2048;
        v31 = [(HMDResidentSelectionMode *)v13 preferredListGenerationStartHour];
        v32 = 2048;
        v33 = [(HMDResidentSelectionMode *)v13 preferredListGenerationEndHour];
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Overriding to default allowedGenerationIntervalSeconds value %zu due to startHour=%zu, endHour=%zu", &v26, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      v11 = 18000;
    }

    v16 = [(HMDResidentSelectionMode *)self context];
    v17 = [v16 home];
    v18 = [v17 uuid];
    v19 = [v18 hmf_bytesAsData];
    v20 = HMDTruncatedHash(v19);

    v21 = [MEMORY[0x277CBEA80] currentCalendar];
    v22 = [MEMORY[0x277CBEAA8] now];
    v23 = [v21 nextDateAfterDate:v22 matchingHour:-[HMDResidentSelectionMode preferredListGenerationStartHour](self minute:"preferredListGenerationStartHour") second:0 options:{0, 1024}];

    v7 = [v23 addTimeInterval:(v20 % v11)];
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)preferredListGenerationEndHour
{
  v2 = [(HMDResidentSelectionMode *)self idsServerBag];
  v3 = [v2 residentSelectionPreferredListGenerationEndHour];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 6;
  }

  return v4;
}

- (unint64_t)preferredListGenerationStartHour
{
  v2 = [(HMDResidentSelectionMode *)self idsServerBag];
  v3 = [v2 residentSelectionPreferredListGenerationStartHour];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)scheduleDailyPreferredResidentsListRegenerationTask
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentSelectionMode *)self context];
  v4 = [v3 isActingAsResident];

  if ((v4 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v11;
      v12 = "%{public}@Scheduling preferred resident list regen task on non-resident";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v8);
    goto LABEL_12;
  }

  v5 = [(HMDResidentSelectionMode *)self backgroundTaskManager];
  v6 = [(HMDResidentSelectionMode *)self backgroundTaskIdentifier];
  v7 = [v5 hasOutstandingTaskWithIdentifier:v6];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v11;
      v12 = "%{public}@Not scheduling the task to regenerate the preferred list because there is an outstanding one.";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&dword_229538000, v13, v14, v12, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v15 = [(HMDResidentSelectionMode *)self _nextResidentsListGenerationDate];
  v16 = [(HMDResidentSelectionMode *)self backgroundTaskManager];
  v17 = [(HMDResidentSelectionMode *)self backgroundTaskIdentifier];
  v24 = 0;
  [v16 scheduleTaskWithIdentifier:v17 fireDate:v15 onObserver:self selector:sel_handleDailyPreferredResidentsListRegenerationNotification_ error:&v24];
  v18 = v24;

  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v22;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Scheduled a background task for preferred residents list regeneration for: %@.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_12:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)deregisterForMessages
{
  v4 = [(HMDResidentSelectionMode *)self context];
  v3 = [v4 messageDispatcher];
  [v3 deregisterReceiver:self];
}

- (id)backupsForResident:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentSelectionMode *)self sortedResidents];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    [v7 removeObject:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@There are no residents available to act as a backup.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)residentSelectionInfoWithOurselvesAsThePreferredWithTimestamp:(id)a3
{
  v4 = a3;
  if ([(HMDResidentSelectionMode *)self currentModeType]== 2)
  {
    v5 = [(HMDResidentSelectionMode *)self context];
    v6 = [v5 currentResidentDevice];
    v7 = [v6 device];
    v8 = [v7 idsIdentifier];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[HMDResidentSelectionInfo alloc] initWithPreferredResidentIDSIdentifier:v8 currentResidentSelectionModeType:[(HMDResidentSelectionMode *)self currentModeType] selectionTimestamp:v4];

  return v9;
}

- (void)handleWeAreSelectedAsThePreferredPrimaryWithInfo:(id)a3 selectionMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDResidentSelectionMode *)self delegate];
  v9 = [(HMDResidentSelectionMode *)self context];
  v10 = [v9 currentResidentDevice];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HMDResidentSelectionMode_handleWeAreSelectedAsThePreferredPrimaryWithInfo_selectionMessage___block_invoke;
  v12[3] = &unk_27868A1D8;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v8 primarySelectionMode:self didSelectPrimaryResident:v10 selectionInfo:v7 selectionLogEvent:0 completion:v12];
}

void __94__HMDResidentSelectionMode_handleWeAreSelectedAsThePreferredPrimaryWithInfo_selectionMessage___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Completed selection with error: %@.", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithError:v3];
  }

  else
  {
    if (v7)
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully completed selection.", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) respondWithSuccess];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleWeAreSelectedAsThePreferredPrimaryWithSelectionTimestamp:(id)a3 selectionMessage:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@We are selected as the new preferred.", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDResidentSelectionMode *)v9 residentSelectionInfoWithOurselvesAsThePreferredWithTimestamp:v6];
  [(HMDResidentSelectionMode *)v9 handleWeAreSelectedAsThePreferredPrimaryWithInfo:v12 selectionMessage:v7];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_preferredResidentsListFromElectorUpdated
{
  v3 = [(HMDResidentSelectionMode *)self context];
  v4 = [(HMDResidentSelectionMode *)self preferredResidentsListFromElector];

  if (v4)
  {
    v5 = [(HMDResidentSelectionMode *)self preferredResidentsListFromElector];
    [v3 electorsPreferredResidentsList];
  }

  else
  {
    v5 = [v3 electorsPreferredResidentsList];
    [(HMDResidentSelectionMode *)self localPreferredResidentsList];
  }
  v6 = ;
  v7 = [v5 isEqual:v6];

  return v7 ^ 1;
}

- (id)_generatePreferredResidentsList
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HMDResidentSelectionMode *)self sortedResidents];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HMDResidentSelectionMode__generatePreferredResidentsList__block_invoke;
  v14[3] = &unk_278684FC0;
  v15 = v3;
  v5 = v3;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

  v6 = [v5 count];
  v7 = [(HMDResidentSelectionMode *)self _preferredResidentsListMaxSize];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v5 subarrayWithRange:{0, v8}];
  v10 = [HMDPreferredResidentsList alloc];
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [(HMDPreferredResidentsList *)v10 initWithResidentIDSIdentifiers:v9 modifiedTimestamp:v11];

  return v12;
}

void __59__HMDResidentSelectionMode__generatePreferredResidentsList__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 device];
  v4 = [v3 idsIdentifier];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v8 device];
    v7 = [v6 idsIdentifier];
    [v5 addObject:v7];
  }
}

- (unint64_t)_preferredResidentsListMaxSize
{
  v2 = [(HMDResidentSelectionMode *)self idsServerBag];
  v3 = [v2 residentSelectionPreferredResidentsListMaxSize];

  if (v3 && [v3 unsignedIntValue])
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (id)residentsNotPresentInPreferredResidentsList:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(HMDResidentSelectionMode *)self context];
  v7 = [v6 residentsPresentOnStatusKit];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__HMDResidentSelectionMode_residentsNotPresentInPreferredResidentsList___block_invoke;
  v24[3] = &unk_278672878;
  v8 = v4;
  v25 = v8;
  v9 = v5;
  v26 = v9;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];

  v10 = [v6 availableResidentDevices];
  v11 = [v10 copy];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __72__HMDResidentSelectionMode_residentsNotPresentInPreferredResidentsList___block_invoke_2;
  v21 = &unk_2786728A0;
  v22 = v8;
  v23 = v9;
  v12 = v9;
  v13 = v8;
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:&v18];
  v14 = [v12 allObjects];
  v15 = [v6 residentDevicesWithIDSIdentifiers:v14];

  v16 = [(HMDResidentSelectionMode *)self _sortResidentsByLatestVersionLowestUUID:v15];

  return v16;
}

void __72__HMDResidentSelectionMode_residentsNotPresentInPreferredResidentsList___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __72__HMDResidentSelectionMode_residentsNotPresentInPreferredResidentsList___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 device];
  v4 = [v3 idsIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v7 = [v11 device];
    v8 = [v7 idsIdentifier];
    LOBYTE(v6) = [v6 containsObject:v8];

    if (v6)
    {
      goto LABEL_5;
    }

    v9 = *(a1 + 40);
    v3 = [v11 device];
    v10 = [v3 idsIdentifier];
    [v9 addObject:v10];
  }

LABEL_5:
}

- (BOOL)allResidentsAboveMeAreUnreachableIn:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v5 = [(HMDResidentSelectionMode *)self context];
  v6 = [v5 currentResidentDevice];
  v7 = [v6 device];
  v8 = [v7 idsIdentifier];

  v9 = [v5 residentsPresentOnStatusKit];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__HMDResidentSelectionMode_allResidentsAboveMeAreUnreachableIn___block_invoke;
  v26[3] = &unk_278672850;
  v10 = v8;
  v27 = v10;
  v11 = v9;
  v31 = &v32;
  v28 = v11;
  v29 = self;
  v12 = v5;
  v30 = v12;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];
  v13 = [v4 firstObject];
  LOBYTE(v7) = [v13 isEqual:v10];

  v14 = [v4 indexOfObject:v10];
  v15 = [(HMDResidentSelectionMode *)self takeOverInfo];
  [v15 setOurPositionInList:v14];

  v16 = [v4 count];
  v17 = [(HMDResidentSelectionMode *)self takeOverInfo];
  [v17 setTotalResidentCount:v16];

  if ((v33[3] & v7) == 1)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Taking over as the current primary since we are on top of the preferred residents list.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    if ((v33[3] & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v22 = [(HMDResidentSelectionMode *)self takeOverInfo];
    [v22 setTakeOverFinding:4];
    goto LABEL_8;
  }

  if (*(v33 + 24))
  {
    goto LABEL_7;
  }

LABEL_5:
  v22 = [(HMDResidentSelectionMode *)self takeOverInfo];
  [v22 setTakeOverFinding:5];
LABEL_8:

  v23 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

void __64__HMDResidentSelectionMode_allResidentsAboveMeAreUnreachableIn___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (([v8 isEqual:*(a1 + 32)] & 1) == 0)
  {
    if (![*(a1 + 40) containsObject:v8])
    {
      goto LABEL_5;
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v6 = [*(a1 + 56) residentDeviceWithIDSIdentifier:v8];
    v7 = [*(a1 + 48) takeOverInfo];
    [v7 setBestCandidateForPrimary:v6];
  }

  *a4 = 1;
LABEL_5:
}

- (BOOL)_shouldTakeOverBasedOnReachability
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentSelectionMode *)self context];
  v4 = [v3 electorsPreferredResidentsList];

  if (v4)
  {
    v5 = [v4 residentIDSIdentifiers];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [(HMDResidentSelectionMode *)self residentsNotPresentInPreferredResidentsList:v5];
  v7 = [MEMORY[0x277CBEB18] array];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__HMDResidentSelectionMode__shouldTakeOverBasedOnReachability__block_invoke;
  v17[3] = &unk_278684FC0;
  v8 = v7;
  v18 = v8;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];
  v9 = [v5 arrayByAddingObjectsFromArray:v8];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v13;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Preferred Residents: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDResidentSelectionMode *)v11 allResidentsAboveMeAreUnreachableIn:v9];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void __62__HMDResidentSelectionMode__shouldTakeOverBasedOnReachability__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v5 = [v3 idsIdentifier];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (BOOL)_isViableUserPreferredResident:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentSelectionMode *)self locationOfResident:v4];
  if (v5 == 300 || [(HMDResidentSelectionMode *)self _allResidentsHaveSameLocationStatus:v5])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(HMDResidentSelectionMode *)self context];
    v8 = [v7 residentStatusChannel];
    v9 = [v8 currentPrimaryResident];
    v10 = [v9 idsIdentifier];

    v11 = [v4 device];
    v12 = [v11 idsIdentifier];
    v6 = [v10 hmf_isEqualToUUID:v12];
  }

  return v6;
}

- (BOOL)shouldTakeOverAsTheCurrentPrimaryWithSelectionInfo:(id)a3 isTimerTriggered:(BOOL)a4
{
  v4 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDResidentSelectionMode *)self context];
  if ([v7 isActingAsResident])
  {
    v8 = [(HMDResidentSelectionMode *)self userPreferredResidentPerSelectionInfo:v6];
    v9 = [v7 availableResidentDevices];
    v10 = [v9 count];

    if (v4)
    {
      [(HMDResidentSelectionMode *)self _evaluatePrimaryChangedReason];
    }

    v11 = [v7 residentStatusChannel];
    v12 = [v11 isConnected];

    if (v10 < 2 || (v12 & 1) != 0)
    {
      if ([v8 isCurrentDevice])
      {
        v20 = [(HMDResidentSelectionMode *)self takeOverInfo];
        [v20 setTakeOverFinding:1];

        v21 = [v7 currentResidentDevice];
        v22 = [(HMDResidentSelectionMode *)self takeOverInfo];
        [v22 setBestCandidateForPrimary:v21];

        v23 = [(HMDResidentSelectionMode *)self takeOverInfo];
        [v23 setWeAreQualifiedToTakeOver:1];

        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          v42 = 138543362;
          v43 = v27;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Should take over as the current primary since we are the user preferred.", &v42, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v19 = 1;
        goto LABEL_26;
      }

      if (![v8 isReachable] || !-[HMDResidentSelectionMode _isViableUserPreferredResident:](self, "_isViableUserPreferredResident:", v8))
      {
        v31 = [(HMDResidentSelectionMode *)self _shouldTakeOverBasedOnReachability];
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v35)
          {
            v36 = HMFGetLogIdentifier();
            v42 = 138543362;
            v43 = v36;
            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Should take over as the current primary since all residents above me in the list are unreachable.", &v42, 0xCu);
          }

          objc_autoreleasePoolPop(v32);
          if (v4)
          {
            [(HMDResidentSelectionMode *)v33 setPrimaryChangedReason:3];
          }

          v37 = [(HMDResidentSelectionMode *)v33 takeOverInfo];
          v19 = 1;
          [v37 setWeAreQualifiedToTakeOver:1];

          goto LABEL_26;
        }

        if (v35)
        {
          v40 = HMFGetLogIdentifier();
          v41 = StringFromHMDResidentLocation([v7 myLocation]);
          v42 = 138543618;
          v43 = v40;
          v44 = 2112;
          v45 = v41;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Should not take over as the current primary since none of the conditions apply. Our location: %@", &v42, 0x16u);
        }

        v18 = v32;
        goto LABEL_10;
      }

      v28 = [(HMDResidentSelectionMode *)self takeOverInfo];
      [v28 setBestCandidateForPrimary:v8];

      v29 = [(HMDResidentSelectionMode *)self takeOverInfo];
      [v29 setTakeOverFinding:2];

      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v30 = [v8 shortDescription];
        v42 = 138543618;
        v43 = v17;
        v44 = 2112;
        v45 = v30;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Should not take over as the current primary since the user preferred resident: %@ is viable.", &v42, 0x16u);

        goto LABEL_8;
      }
    }

    else
    {
      v13 = [(HMDResidentSelectionMode *)self takeOverInfo];
      [v13 setTakeOverFinding:3];

      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        v42 = 138543362;
        v43 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Should not take over as the current primary since there are other residents and we are not connected.", &v42, 0xCu);
LABEL_8:
      }
    }

    v18 = v14;
LABEL_10:
    objc_autoreleasePoolPop(v18);
    v19 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v19 = 0;
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_evaluatePrimaryChangedReason
{
  v5 = [(HMDResidentSelectionMode *)self context];
  v3 = [v5 residentSelectionInfo];
  v4 = [(HMDResidentSelectionMode *)self residentSelectionInfoFromWorkingStore];
  [(HMDResidentSelectionMode *)self _evaluatePrimaryChangedReasonForCurrentSelectionInfo:v3 previousSelectionInfo:v4];
}

- (BOOL)hasViablePrimaryResidentWithSelectionInfo:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentSelectionMode *)self context];
  v6 = [v5 residentStatusChannel];
  v7 = [v6 currentPrimaryResident];

  v8 = [v5 currentResidentDevice];
  v9 = [v8 device];
  v10 = [v9 version];

  v11 = [v7 swVersion];
  v12 = [v8 isReachable];
  v13 = [(HMDResidentSelectionMode *)self userPreferredResidentPerSelectionInfo:v4];
  v14 = [(HMDResidentSelectionMode *)self takeOverInfo];
  [v14 setHasViablePrimary:0];

  v54 = v13;
  if ([v13 isCurrentDevice])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v53 = v8;
      v18 = v5;
      v19 = v7;
      v20 = v11;
      v21 = v4;
      v23 = v22 = v10;
      *buf = 138543362;
      v56 = v23;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Should take over since we are the user preferred and hence better than the current primary.", buf, 0xCu);

      v10 = v22;
      v4 = v21;
      v11 = v20;
      v7 = v19;
      v5 = v18;
      v8 = v53;
    }

    objc_autoreleasePoolPop(v15);
    v24 = [(HMDResidentSelectionMode *)v16 takeOverInfo];
    v25 = v24;
    v26 = 4;
LABEL_13:
    [v24 setViablePrimaryResult:{v26, v53}];
LABEL_22:

    goto LABEL_23;
  }

  if (!v7)
  {
    v34 = objc_autoreleasePoolPush();
    v35 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v53 = v8;
      v37 = v11;
      v38 = v4;
      v40 = v39 = v10;
      *buf = 138543362;
      v56 = v40;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Should take over since the current primary is not reachable.", buf, 0xCu);

      v10 = v39;
      v4 = v38;
      v11 = v37;
      v7 = 0;
    }

    objc_autoreleasePoolPop(v34);
    v24 = [(HMDResidentSelectionMode *)v35 takeOverInfo];
    v25 = v24;
    v26 = 1;
    goto LABEL_13;
  }

  if ([v11 isAtLeastVersion:v10])
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v30 = v53 = v27;
      *buf = 138543874;
      v56 = v30;
      v57 = 2112;
      v58 = v11;
      v59 = 2112;
      v60 = v10;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Should not take over since the current primary version: %@ is same or better than ours: %@.", buf, 0x20u);

      v27 = v53;
    }

    objc_autoreleasePoolPop(v27);
    v31 = [(HMDResidentSelectionMode *)v28 takeOverInfo];
    v32 = v31;
    v33 = 3;
LABEL_21:
    [v31 setViablePrimaryResult:{v33, v53}];

    v25 = [(HMDResidentSelectionMode *)v28 takeOverInfo];
    [v25 setHasViablePrimary:1];
    goto LABEL_22;
  }

  if ((v12 & 1) == 0)
  {
    v46 = objc_autoreleasePoolPush();
    v28 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v48 = v53 = v46;
      *buf = 138543362;
      v56 = v48;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@Should not take over since we are not reachable.", buf, 0xCu);

      v46 = v53;
    }

    objc_autoreleasePoolPop(v46);
    v31 = [(HMDResidentSelectionMode *)v28 takeOverInfo];
    v32 = v31;
    v33 = 2;
    goto LABEL_21;
  }

  v41 = [(HMDResidentSelectionMode *)self takeOverInfo];
  [v41 setViablePrimaryResult:5];

  v42 = objc_autoreleasePoolPush();
  v43 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    v45 = v53 = v42;
    *buf = 138543362;
    v56 = v45;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Should take over since the current primary is not better than us.", buf, 0xCu);

    v42 = v53;
  }

  objc_autoreleasePoolPop(v42);
LABEL_23:
  v49 = [(HMDResidentSelectionMode *)self takeOverInfo];
  v50 = [v49 hasViablePrimary];

  v51 = *MEMORY[0x277D85DE8];
  return v50;
}

- (void)cancelAllTakeOverTimers
{
  v3 = [(HMDResidentSelectionMode *)self takeOverTimer];
  [v3 cancel];

  [(HMDResidentSelectionMode *)self setTakeOverTimer:0];
  v4 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [v4 cancel];

  [(HMDResidentSelectionMode *)self setTakeOverIfPrimaryIsNotViableTimer:0];
}

- (void)takeOverWithSelectionTimestamp:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Taking over as the current primary.", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDResidentSelectionMode *)v6 delegate];
  v10 = [(HMDResidentSelectionMode *)v6 context];
  v11 = [v10 currentResidentDevice];
  v12 = [v11 device];
  v13 = [v12 idsIdentifier];
  [v9 primarySelectionMode:v6 didReceivePrimaryResidentIdsIdentifier:v13 selectionTimestamp:v4];

  [(HMDResidentSelectionMode *)v6 cancelAllTakeOverTimers];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleTakeOverTimerFired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Takeover timer fired.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionMode *)v4 takeOverIfConditionsAreMetWithIsTimerTriggered:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_rescheduleTakeOverTimer
{
  v20 = *MEMORY[0x277D85DE8];
  [(HMDResidentSelectionMode *)self _takeOverTimerInterval];
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2048;
    v19 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Rescheduling take over time in %f", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDResidentSelectionMode *)v6 takeOverTimer];
  [v9 cancel];

  v10 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v4];
  [(HMDResidentSelectionMode *)v6 setTakeOverTimer:v10];

  v11 = [(HMDResidentSelectionMode *)v6 takeOverTimer];
  [v11 setDelegate:v6];

  v12 = [(HMDResidentSelectionMode *)v6 queue];
  v13 = [(HMDResidentSelectionMode *)v6 takeOverTimer];
  [v13 setDelegateQueue:v12];

  v14 = [(HMDResidentSelectionMode *)v6 takeOverTimer];
  [v14 resume];

  v15 = *MEMORY[0x277D85DE8];
}

- (double)_takeOverTimerInterval
{
  v2 = [(HMDResidentSelectionMode *)self idsServerBag];
  v3 = [v2 residentSelectionTakeOverInterval];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 7200.0;
  }

  return v5;
}

- (void)scheduleTakeOverTimerIfRequiredAfterBlockDuration:(double)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  v6 = [v5 isRunning];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [(HMDResidentSelectionMode *)v8 takeOverIfPrimaryIsNotViableTimer];
      v12 = [v11 fireDate];
      v22 = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = *&v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Primary takeover is blocked. Take over timer is already running. It will fire at: %@.", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v13 = a3 + 5.0;
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v17;
      v24 = 2048;
      v25 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Primary takeover is blocked. Scheduling timer after: %fs", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDResidentSelectionMode *)v15 _rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:v13];
    v18 = [HMDResidentTakeOverInfo alloc];
    v19 = [(HMDResidentSelectionMode *)v15 context];
    v20 = [(HMDResidentTakeOverInfo *)v18 initWithContext:v19 takeOverTrigger:5];
    [(HMDResidentSelectionMode *)v15 setTakeOverInfo:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleTakeOverIfPrimaryIsNotViableTimerFired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Takeover if better than the current primary timer fired.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionMode *)v4 takeOverIfPrimaryIsNotViableWithIsTimerTriggered:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:(double)a3
{
  v5 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [v5 suspend];

  v6 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a3];
  [(HMDResidentSelectionMode *)self setTakeOverIfPrimaryIsNotViableTimer:v6];

  v7 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [v7 setDelegate:self];

  v8 = [(HMDResidentSelectionMode *)self queue];
  v9 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [v9 setDelegateQueue:v8];

  v10 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [v10 resume];
}

- (BOOL)shouldRegeneratePreferredResidentsListBasedOnFoundResidents:(id)a3 residentLocationMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v8 = [(HMDResidentSelectionMode *)self localPreferredResidentsList];
    v9 = [v8 residentIDSIdentifiers];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __108__HMDResidentSelectionMode_shouldRegeneratePreferredResidentsListBasedOnFoundResidents_residentLocationMap___block_invoke;
    v13[3] = &unk_278673700;
    v14 = v7;
    v10 = v9;
    v15 = v10;
    v16 = &v17;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
    v11 = *(v18 + 24);

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __108__HMDResidentSelectionMode_shouldRegeneratePreferredResidentsListBasedOnFoundResidents_residentLocationMap___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 unsignedIntegerValue];

  LODWORD(v7) = [*(a1 + 40) containsObject:v6];
  if (v7 && (v8 == 200 || v8 == 100))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)handleMeshInformationRequest:(id)a3
{
  v49[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HMDResidentSelectionMode *)self context];
  v6 = v5;
  if (!v5)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v4 destination];
      *buf = 138543618;
      v43 = v36;
      v44 = 2112;
      v45 = v37;
      v38 = "%{public}@Responding with error to mesh information request from: %@ due to missing context.";
LABEL_14:
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, v38, buf, 0x16u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v33);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [v4 respondWithError:v11];
    goto LABEL_16;
  }

  v7 = [v5 currentResidentDevice];

  if (!v7)
  {
    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v4 destination];
      *buf = 138543618;
      v43 = v36;
      v44 = 2112;
      v45 = v37;
      v38 = "%{public}@Ignoring mesh information request from: %@ since we are not a resident.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v41 = v4;
  v8 = MEMORY[0x277CCABB0];
  v9 = [v6 home];
  v10 = [v9 accessories];
  v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];

  v12 = MEMORY[0x277CCABB0];
  v13 = [v6 home];
  v14 = [v13 enabledResidents];
  v15 = [v12 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];

  v16 = [v6 primaryResidentDevice];
  if (!v16)
  {
    v16 = [(HMDResidentSelectionMode *)self _highestVersionLowestUUIDResident];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v21 = v20 = v6;
      *buf = 138543618;
      v43 = v21;
      v44 = 2112;
      v45 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Using resident: %@ for the leader for the mesh information request since we do not have a primary.", buf, 0x16u);

      v6 = v20;
    }

    objc_autoreleasePoolPop(v17);
  }

  v22 = [v16 identifier];
  v23 = [v22 UUIDString];

  v48[0] = @"r";
  v40 = v6;
  v24 = [v6 currentResidentDevice];
  v25 = [v24 identifier];
  v26 = [v25 UUIDString];
  v49[0] = v26;
  v49[1] = v11;
  v48[1] = @"rip";
  v48[2] = @"res";
  v49[2] = v15;
  v49[3] = v23;
  v48[3] = @"l";
  v48[4] = @"p";
  v49[4] = v23;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:5];

  v28 = objc_autoreleasePoolPush();
  v29 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    v32 = [v4 destination];
    *buf = 138543874;
    v43 = v31;
    v44 = 2112;
    v45 = v32;
    v46 = 2112;
    v47 = v27;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Handling mesh information request from: %@ and responding with: %@.", buf, 0x20u);

    v4 = v41;
  }

  objc_autoreleasePoolPop(v28);
  [v4 respondWithPayload:v27];

  v6 = v40;
LABEL_16:

  v39 = *MEMORY[0x277D85DE8];
}

- (id)_highestVersionLowestUUIDResident
{
  v3 = [(HMDResidentSelectionMode *)self context];
  v4 = [v3 availableResidentDevices];
  v5 = [(HMDResidentSelectionMode *)self _sortResidentsByLatestVersionLowestUUID:v4];

  v6 = [v5 firstObject];

  return v6;
}

- (BOOL)newPrimaryIsInREv2BasedOnTheirTimestamp:(id)a3 ourSelectionInfo:(id)a4
{
  if (a3)
  {
    return 0;
  }

  v5 = [a4 selectionTimestamp];
  v4 = v5 != 0;

  return v4;
}

- (id)userPreferredResidentPerSelectionInfo:(id)a3
{
  v4 = [a3 preferredResidentIDSIdentifier];
  if (v4)
  {
    v5 = [(HMDResidentSelectionMode *)self context];
    v6 = [v5 residentDeviceWithIDSIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDResidentSelectionMode *)self context];
  v3 = [v2 home];
  v4 = [v3 uuid];

  return v4;
}

- (id)_sortResidentsByLatestVersionLowestUUID:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HMDResidentSelectionMode__sortResidentsByLatestVersionLowestUUID___block_invoke;
  v5[3] = &unk_278687AC0;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __68__HMDResidentSelectionMode__sortResidentsByLatestVersionLowestUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) compareVersionResident1:v5 resident2:v6];
  if (!v7)
  {
    v8 = [v5 device];
    v9 = [v8 idsIdentifier];
    v10 = [v9 UUIDString];
    v11 = [v6 device];
    v12 = [v11 idsIdentifier];
    v13 = [v12 UUIDString];
    v7 = [v10 compare:v13];
  }

  return v7;
}

- (NSArray)sortedResidents
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentSelectionMode *)self context];
  v4 = [v3 home];
  v5 = [v4 enabledResidents];

  v6 = [(HMDResidentSelectionMode *)self _sortResidentsUsingAllCriteria:v5];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 shortDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Residents after sorting: %@.", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dumpState
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HMDResidentSelectionMode *)self currentModeType];
  if (v5 - 1 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_2786841A8[v5 - 1];
  }

  v7 = v6;
  v8 = [(HMDResidentSelectionMode *)self residentSelectionInfoFromWorkingStore];
  v9 = [v4 stringWithFormat:@"Mode: %@, Working store info: %@", v7, v8];
  [v3 setObject:v9 forKeyedSubscript:@"State"];

  v10 = [(HMDResidentSelectionMode *)self localPreferredResidentsList];
  v11 = [(HMDResidentSelectionMode *)self context];
  v12 = [v10 residentIDSIdentifiers];
  v13 = [v11 residentDevicesWithIDSIdentifiers:v12];

  v14 = [v10 modifiedTimestamp];
  v15 = [v14 localTimeDescription];
  [v3 setObject:v15 forKeyedSubscript:@"Local Preferred Residents Timestamp"];

  v16 = [v13 na_map:&__block_literal_global_38768];
  [v3 setObject:v16 forKeyedSubscript:@"Local Preferred Residents"];

  v17 = MEMORY[0x277CCACA8];
  v18 = [v11 presentResidentsStatuses];
  v19 = [v18 residentIDSIdentifierToLocationMap];
  v20 = [v17 stringWithFormat:@" %@", v19];
  [v3 setObject:v20 forKeyedSubscript:@"Resident Location map"];

  return v3;
}

- (void)didUpdateResidentStatus:(id)a3 residentsFound:(id)a4 residentsLost:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDResidentSelectionMode *)self context];
  if ([v11 isActingAsResident])
  {
    v12 = [v11 residentStatusChannel];
    v13 = [v12 isConnected];

    if (v13)
    {
      if ([v9 count])
      {
        v14 = 1;
      }

      else
      {
        v14 = [v10 count] != 0;
      }

      v19 = [v8 residentIDSIdentifierToLocationMap];
      v20 = [(HMDResidentSelectionMode *)self shouldRegeneratePreferredResidentsListBasedOnFoundResidents:v9 residentLocationMap:v19];

      if (v20)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          [v8 residentIDSIdentifierToLocationMap];
          v25 = v38 = v21;
          *buf = 138543618;
          v40 = v24;
          v41 = 2112;
          v42 = *&v25;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Regenerating new preferred residents list. Latest location info: %@", buf, 0x16u);

          v21 = v38;
        }

        objc_autoreleasePoolPop(v21);
        [(HMDResidentSelectionMode *)v22 _updateLocalPreferredResidentsList];
      }

      v26 = [(HMDResidentSelectionMode *)self _preferredResidentsListFromElectorUpdated];
      v27 = [v11 electorsPreferredResidentsList];
      [(HMDResidentSelectionMode *)self setPreferredResidentsListFromElector:v27];

      if (v14 || v26)
      {
        [(HMDResidentSelectionMode *)self _statusDebounceInterval];
        v29 = v28;
        v30 = objc_autoreleasePoolPush();
        v31 = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v34 = HMFBooleanToString();
          v35 = HMFBooleanToString();
          *buf = 138544130;
          v40 = v33;
          v41 = 2048;
          v42 = v29;
          v43 = 2112;
          v44 = v34;
          v45 = 2112;
          v46 = v35;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Kicking off debounce for taking over evaluation in %f. Reachability changed: %@. Preferred Residents list updated: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v30);
        [(HMDResidentSelectionMode *)v31 _rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:v29];
        v36 = [[HMDResidentTakeOverInfo alloc] initWithContext:v11 takeOverTrigger:0];
        [(HMDResidentSelectionMode *)v31 setTakeOverInfo:v36];
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
        *buf = 138543362;
        v40 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@We are not connected per the latest resident status update, not acting on this update.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDResidentSelectionMode *)v16 cancelAllTakeOverTimers];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (double)_statusDebounceInterval
{
  v2 = [(HMDResidentSelectionMode *)self idsServerBag];
  v3 = [v2 residentSelectionStatusDebounceInterval];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 60.0;
  }

  return v5;
}

- (void)didReceiveSelectionMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 hmf_UUIDForKey:@"primary.ids.identifier"];

  if (v6)
  {
    v7 = [v4 messagePayload];
    v8 = [v7 hmf_dateForKey:@"primary.selection.timestamp"];

    if (v8)
    {
      v9 = [(HMDResidentSelectionMode *)self context];
      v10 = [v9 currentResidentDevice];
      v11 = [v10 device];
      v12 = [v11 idsIdentifier];

      if ([v6 hmf_isEqualToUUID:v12])
      {
        v13 = objc_autoreleasePoolPush();
        v14 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v16;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Controller notified that current device is the new preferred primary", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        [(HMDResidentSelectionMode *)v14 handleWeAreSelectedAsThePreferredPrimaryWithSelectionTimestamp:v8 selectionMessage:v4];
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
        v26 = 138543618;
        v27 = v24;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Message with preferred primary: %@ did not contain a preferred primary selection timestamp", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [v4 respondWithError:v12];
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
      v26 = 138543362;
      v27 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Message did not contain a preferred primary value", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    [v4 respondWithError:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateResidentSelectionModelTo:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v8 = [(HMDResidentSelectionMode *)self context];
  v6 = [(HMDResidentSelectionMode *)self residentSelectionInfoFromWorkingStore];
  [(HMDResidentSelectionMode *)self _evaluatePrimaryChangedReasonForCurrentSelectionInfo:v5 previousSelectionInfo:v6];

  [(HMDResidentSelectionMode *)self setResidentSelectionInfoFromWorkingStore:v5];
  if ([v8 isActingAsResident])
  {
    v7 = [[HMDResidentTakeOverInfo alloc] initWithContext:v8 takeOverTrigger:3];
    [(HMDResidentSelectionMode *)self setTakeOverInfo:v7];

    [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableWithIsTimerTriggered:0];
  }
}

- (void)_evaluatePrimaryChangedReasonForCurrentSelectionInfo:(id)a3 previousSelectionInfo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(HMDResidentSelectionMode *)self currentModeType];
  if (v7)
  {
    if (v8 == 2)
    {
      v9 = [v6 preferredResidentIDSIdentifier];
      v10 = [v7 preferredResidentIDSIdentifier];
      v11 = [v9 isEqual:v10];

      if (v11)
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 3;
    }
  }

  else if (v8 == 2)
  {
    v12 = 1;
  }

  else
  {
    if ([(HMDResidentSelectionMode *)self currentModeType]!= 3)
    {
      goto LABEL_12;
    }

    v12 = 2;
  }

  [(HMDResidentSelectionMode *)self setPrimaryChangedReason:v12];
LABEL_12:
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v16;
    v20 = 2048;
    v21 = [(HMDResidentSelectionMode *)v14 primaryChangedReason];
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@New evaluated primary changed reason: %lu", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __88__HMDResidentSelectionMode_sendSelectionMessageToResident_requireAutoUpdate_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 handleWeAreSelectedAsThePreferredPrimaryWithSelectionTimestamp:v3 selectionMessage:0];

  v4 = a1[5];
  v5 = *(a1[6] + 16);

  return v5();
}

- (void)didSucceedResidentSelectionWithPreferred:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Selection completed with preferred primary: %@.", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDResidentSelectionMode *)v6 selectionCompletion];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v4, 0);
  }

  [(HMDResidentSelectionMode *)v6 setSelectionCompletion:0];
  [(HMDResidentSelectionMode *)v6 setResidentsEnumerator:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didFailResidentSelectionWithResident:(id)a3 error:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentSelectionMode *)self residentsEnumerator];
  v9 = [v8 nextObject];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v13;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to select resident %@. Attempting the next one: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if (v9)
  {
    v14 = [(HMDResidentSelectionMode *)v11 createSelectionMessageCompletion];
    [(HMDResidentSelectionMode *)v11 sendSelectionMessageToResident:v9 requireAutoUpdate:0 completion:v14];
  }

  else
  {
    v15 = [(HMDResidentSelectionMode *)v11 selectionCompletion];
    v16 = v15;
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v7);
    }

    [(HMDResidentSelectionMode *)v11 setSelectionCompletion:0];
    [(HMDResidentSelectionMode *)v11 setResidentsEnumerator:0];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)createSelectionMessageCompletion
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HMDResidentSelectionMode_createSelectionMessageCompletion__block_invoke;
  aBlock[3] = &unk_2786899A0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __60__HMDResidentSelectionMode_createSelectionMessageCompletion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDResidentSelectionMode_createSelectionMessageCompletion__block_invoke_2;
  block[3] = &unk_27868A010;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __60__HMDResidentSelectionMode_createSelectionMessageCompletion__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;

  v4 = *(a1 + 48);
  if (*(a1 + 40))
  {
    [v4 didFailResidentSelectionWithResident:v5 error:?];
  }

  else
  {
    [v4 didSucceedResidentSelectionWithPreferred:v5];
  }
}

- (void)performSelectionWithPreferredPrimaryResident:(id)a3 requireAutoUpdate:(BOOL)a4 reason:(unint64_t)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"You must override %@ in a subclass", v13];
  v15 = [v10 exceptionWithName:v11 reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)a3 selectionTimestamp:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDResidentSelectionMode *)self context];
  v9 = [v8 residentSelectionInfo];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v6 shortDescription];
    v34 = 138543874;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    v38 = 2112;
    v39 = *&v7;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Evaluating to allow external update of primary resident to: %@ with selection timestamp: %@.", &v34, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = [v8 primaryResidentDevice];
  v16 = [v15 isCurrentDevice];

  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = [(HMDResidentSelectionMode *)v11 newPrimaryIsInREv2BasedOnTheirTimestamp:v7 ourSelectionInfo:v9];
  if (!v17)
  {
    if ([(HMDResidentSelectionMode *)v11 shouldTakeOverAsTheCurrentPrimaryWithSelectionInfo:v9 isTimerTriggered:0])
    {
      v24 = arc4random_uniform([(HMDResidentSelectionMode *)v11 _takeOverOnlyIfCurrentPrimaryIsNotViableJitter]);
      [(HMDResidentSelectionMode *)v11 _takeOverIfPrimaryIsNotViableInterval];
      v26 = v25 + v24;
      v27 = objc_autoreleasePoolPush();
      v28 = v11;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v34 = 138543874;
        v35 = v30;
        v36 = 2112;
        v37 = v6;
        v38 = 2048;
        v39 = v26;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@For now allowing external update of primary resident to: %@. Will reconsider in %f seconds", &v34, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      [(HMDResidentSelectionMode *)v28 _rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:v26];
      v22 = [[HMDResidentTakeOverInfo alloc] initWithContext:v8 takeOverTrigger:4];
      [(HMDResidentSelectionMode *)v28 setTakeOverInfo:v22];
      goto LABEL_12;
    }

LABEL_13:
    v31 = 1;
    goto LABEL_14;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v11;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not allowing external update of primary resident because its an REV2 device.", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v22 = [(HMDResidentSelectionMode *)v19 delegate];
  v23 = [v9 selectionTimestamp];
  [(HMDResidentTakeOverInfo *)v22 primarySelectionMode:v19 reassertAsCurrentPrimaryWithSelectionTimestamp:v23];

LABEL_12:
  v31 = !v17;

LABEL_14:
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (unint64_t)_takeOverOnlyIfCurrentPrimaryIsNotViableJitter
{
  v2 = [(HMDResidentSelectionMode *)self idsServerBag];
  v3 = [v2 residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 60;
  }

  return v4;
}

- (double)_takeOverIfPrimaryIsNotViableInterval
{
  v2 = [(HMDResidentSelectionMode *)self idsServerBag];
  v3 = [v2 residentSelectionTakeOverIfPrimaryIsNotViableInterval];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 300.0;
  }

  return v5;
}

- (BOOL)_currentDevicePreferredResidentsListIsPublished
{
  v2 = [(HMDResidentSelectionMode *)self context];
  v3 = [v2 residentsPresentOnStatusKit];
  v4 = [v2 currentResidentDevice];
  v5 = [v4 device];
  v6 = [v5 idsIdentifier];
  v7 = [v3 containsObject:v6];

  return v7;
}

- (void)configureAsAResidentWithRunPrimaryEvaluation:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(HMDResidentSelectionMode *)self context];
  v6 = [v5 isActingAsResident];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 1024;
      v20 = v3;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring as a resident in the current mode. Run primary evaluation: %d", &v17, 0x12u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentSelectionMode *)v8 scheduleDailyPreferredResidentsListRegenerationTask];
    [(HMDResidentSelectionMode *)v8 _updateLocalPreferredResidentsList];
    if (!v3 || (v12 = [[HMDResidentTakeOverInfo alloc] initWithContext:v5 takeOverTrigger:2], [(HMDResidentSelectionMode *)v8 setTakeOverInfo:v12], v12, ![(HMDResidentSelectionMode *)v8 takeOverIfPrimaryIsNotViableWithIsTimerTriggered:0]))
    {
      if (![(HMDResidentSelectionMode *)v8 _currentDevicePreferredResidentsListIsPublished])
      {
        v13 = [(HMDResidentSelectionMode *)v8 delegate];
        v14 = [(HMDResidentSelectionMode *)v8 localPreferredResidentsList];
        [v13 primarySelectionMode:v8 didUpdatePreferredResidentsList:v14];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Configuring as resident on non-resident", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)currentDeviceReadyAsAResident
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentSelectionMode *)self context];
  v4 = [v3 isActingAsResident];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Current device ready as a resident", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDResidentSelectionMode *)v6 _registerForMessagesAsAResident];
    [(HMDResidentSelectionMode *)v6 scheduleDailyPreferredResidentsListRegenerationTask];
    [(HMDResidentSelectionMode *)v6 _publishElectorsList];
    v10 = [[HMDResidentTakeOverInfo alloc] initWithContext:v3 takeOverTrigger:1];
    [(HMDResidentSelectionMode *)v6 setTakeOverInfo:v10];

    if (![(HMDResidentSelectionMode *)v6 takeOverIfPrimaryIsNotViableWithIsTimerTriggered:0])
    {
      v11 = [(HMDResidentSelectionMode *)v6 delegate];
      [v11 primarySelectionModeReadyAsResident:v6];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Ready as resident on non-resident", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionMode *)v4 _registerForMessagesAsAResident];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessagesAsAResident
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(HMDResidentSelectionMode *)self context];
  if ([v3 isActingAsResident])
  {
    v4 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v4 setRequiresSecureMessage:1];
    [v4 setRoles:{objc_msgSend(v4, "roles") | 4}];
    v5 = [v4 copy];
    v6 = [v3 home];
    v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:3 remoteAccessRequired:0];

    v8 = [v3 messageDispatcher];
    v15[0] = v5;
    v15[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [v8 registerForMessage:@"mesh.meshInformationRequest" receiver:self policies:v9 selector:sel_handleMeshInformationRequest_];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not registering for messages since we are not a resident.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDResidentSelectionMode)initWithContext:(id)a3 backgroundTaskManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = HMDResidentSelectionMode;
  v8 = [(HMDResidentSelectionMode *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, v6);
    v10 = [v6 queue];
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = MEMORY[0x277CCACA8];
    v13 = [v6 home];
    v14 = [v13 uuid];
    v15 = [v12 stringWithFormat:@"resident.list.generation/%@", v14];
    backgroundTaskIdentifier = v9->_backgroundTaskIdentifier;
    v9->_backgroundTaskIdentifier = v15;

    objc_storeStrong(&v9->_backgroundTaskManager, a4);
    v9->_primaryChangedReason = 0;
    v17 = [v6 home];
    v18 = [v17 homeManager];
    v19 = [v18 idsServerBag];
    objc_storeWeak(&v9->_idsServerBag, v19);
  }

  return v9;
}

- (HMDResidentSelectionMode)initWithContext:(id)a3
{
  v4 = a3;
  v5 = +[HMDBackgroundTaskManager sharedManager];
  v6 = [(HMDResidentSelectionMode *)self initWithContext:v4 backgroundTaskManager:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t68 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t68, &__block_literal_global_174_38823);
  }

  v3 = logCategory__hmf_once_v69;

  return v3;
}

void __39__HMDResidentSelectionMode_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v69;
  logCategory__hmf_once_v69 = v1;
}

@end