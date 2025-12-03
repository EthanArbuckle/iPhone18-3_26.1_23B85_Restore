@interface HMDResidentSelectionMode
+ (id)logCategory;
- (BOOL)_allResidentsHaveSameLocationStatus:(unint64_t)status;
- (BOOL)_currentDevicePreferredResidentsListIsPublished;
- (BOOL)_isViableUserPreferredResident:(id)resident;
- (BOOL)_preferredResidentsListFromElectorUpdated;
- (BOOL)_shouldTakeOverBasedOnReachability;
- (BOOL)_updateLocalPreferredResidentsList;
- (BOOL)allResidentsAboveMeAreUnreachableIn:(id)in;
- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to selectionTimestamp:(id)timestamp;
- (BOOL)hasViablePrimaryResidentWithSelectionInfo:(id)info;
- (BOOL)newPrimaryIsInREv2BasedOnTheirTimestamp:(id)timestamp ourSelectionInfo:(id)info;
- (BOOL)shouldRegeneratePreferredResidentsListBasedOnFoundResidents:(id)residents residentLocationMap:(id)map;
- (BOOL)shouldTakeOverAsTheCurrentPrimaryWithSelectionInfo:(id)info isTimerTriggered:(BOOL)triggered;
- (HMDIDSServerBag)idsServerBag;
- (HMDResidentDeviceManagerContext)context;
- (HMDResidentSelectionMode)initWithContext:(id)context;
- (HMDResidentSelectionMode)initWithContext:(id)context backgroundTaskManager:(id)manager;
- (HMDResidentSelectionModeDelegate)delegate;
- (NSArray)sortedResidents;
- (NSUUID)messageTargetUUID;
- (double)_statusDebounceInterval;
- (double)_takeOverIfPrimaryIsNotViableInterval;
- (double)_takeOverTimerInterval;
- (id)_generatePreferredResidentsList;
- (id)_highestVersionLowestUUIDResident;
- (id)_nextResidentsListGenerationDate;
- (id)_sortResidentsByLatestVersionLowestUUID:(id)d;
- (id)_sortResidentsUsingAllCriteria:(id)criteria;
- (id)backupsForResident:(id)resident;
- (id)createSelectionMessageCompletion;
- (id)dumpState;
- (id)logIdentifier;
- (id)preferredResidentsRemovedFromHome;
- (id)residentSelectionInfoWithOurselvesAsThePreferredWithTimestamp:(id)timestamp;
- (id)residentsNotPresentInPreferredResidentsList:(id)list;
- (id)residentsWithReachableAccessories;
- (id)userPreferredResidentPerSelectionInfo:(id)info;
- (id)wiredResidents;
- (int64_t)compareLocationResident1:(id)resident1 resident2:(id)resident2;
- (int64_t)compareNetworkConnectionResident1:(id)resident1 resident2:(id)resident2;
- (int64_t)compareProductTypeResident1:(id)resident1 resident2:(id)resident2;
- (int64_t)compareReachableAccessoriesResident1:(id)resident1 resident2:(id)resident2;
- (int64_t)compareVersionResident1:(id)resident1 resident2:(id)resident2;
- (unint64_t)_preferredResidentsListMaxSize;
- (unint64_t)_takeOverOnlyIfCurrentPrimaryIsNotViableJitter;
- (unint64_t)locationOfResident:(id)resident;
- (unint64_t)preferredListGenerationEndHour;
- (unint64_t)preferredListGenerationStartHour;
- (void)_evaluatePrimaryChangedReason;
- (void)_evaluatePrimaryChangedReasonForCurrentSelectionInfo:(id)info previousSelectionInfo:(id)selectionInfo;
- (void)_publishElectorsList;
- (void)_publishPreferredResidentsList:(id)list;
- (void)_registerForMessagesAsAResident;
- (void)_rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:(double)interval;
- (void)_rescheduleTakeOverTimer;
- (void)cancelAllTakeOverTimers;
- (void)configureAsAResidentWithRunPrimaryEvaluation:(BOOL)evaluation;
- (void)currentDeviceReadyAsAResident;
- (void)deregisterForMessages;
- (void)didFailResidentSelectionWithResident:(id)resident error:(id)error;
- (void)didReceiveSelectionMessage:(id)message;
- (void)didSucceedResidentSelectionWithPreferred:(id)preferred;
- (void)didUpdateResidentSelectionModelTo:(id)to;
- (void)didUpdateResidentStatus:(id)status residentsFound:(id)found residentsLost:(id)lost;
- (void)handleDailyPreferredResidentsListRegenerationNotification:(id)notification;
- (void)handleMeshInformationRequest:(id)request;
- (void)handleTakeOverIfPrimaryIsNotViableTimerFired;
- (void)handleTakeOverTimerFired;
- (void)handleWeAreSelectedAsThePreferredPrimaryWithInfo:(id)info selectionMessage:(id)message;
- (void)handleWeAreSelectedAsThePreferredPrimaryWithSelectionTimestamp:(id)timestamp selectionMessage:(id)message;
- (void)performSelectionWithPreferredPrimaryResident:(id)resident requireAutoUpdate:(BOOL)update reason:(unint64_t)reason completion:(id)completion;
- (void)scheduleDailyPreferredResidentsListRegenerationTask;
- (void)scheduleTakeOverTimerIfRequiredAfterBlockDuration:(double)duration;
- (void)start;
- (void)takeOverWithSelectionTimestamp:(id)timestamp;
- (void)timerDidFire:(id)fire;
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
  context = [(HMDResidentSelectionMode *)self context];
  home = [context home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  takeOverIfPrimaryIsNotViableTimer = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];

  if (takeOverIfPrimaryIsNotViableTimer == fireCopy)
  {
    [(HMDResidentSelectionMode *)self handleTakeOverIfPrimaryIsNotViableTimerFired];
  }

  else
  {
    takeOverTimer = [(HMDResidentSelectionMode *)self takeOverTimer];

    v6 = fireCopy;
    if (takeOverTimer != fireCopy)
    {
      goto LABEL_6;
    }

    [(HMDResidentSelectionMode *)self handleTakeOverTimerFired];
  }

  v6 = fireCopy;
LABEL_6:
}

- (id)residentsWithReachableAccessories
{
  v3 = MEMORY[0x277CBEB58];
  context = [(HMDResidentSelectionMode *)self context];
  presentResidentsStatuses = [context presentResidentsStatuses];
  residentsWithReachableAccessories = [presentResidentsStatuses residentsWithReachableAccessories];
  v7 = [v3 setWithSet:residentsWithReachableAccessories];

  context2 = [(HMDResidentSelectionMode *)self context];
  currentResidentDevice = [context2 currentResidentDevice];
  if ([context2 isActingAsResident] && (objc_msgSend(v7, "containsObject:", currentResidentDevice) & 1) == 0 && objc_msgSend(context2, "hasReachableAccessories"))
  {
    [v7 addObject:currentResidentDevice];
  }

  v10 = [v7 copy];

  return v10;
}

- (int64_t)compareReachableAccessoriesResident1:(id)resident1 resident2:(id)resident2
{
  resident2Copy = resident2;
  resident1Copy = resident1;
  residentsWithReachableAccessories = [(HMDResidentSelectionMode *)self residentsWithReachableAccessories];
  v9 = [residentsWithReachableAccessories containsObject:resident1Copy];

  v10 = [residentsWithReachableAccessories containsObject:resident2Copy];
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
  context = [(HMDResidentSelectionMode *)self context];
  presentResidentsStatuses = [context presentResidentsStatuses];
  wiredResidents = [presentResidentsStatuses wiredResidents];
  v7 = [v3 setWithSet:wiredResidents];

  context2 = [(HMDResidentSelectionMode *)self context];
  currentResidentDevice = [context2 currentResidentDevice];
  if ([context2 isActingAsResident] && (objc_msgSend(v7, "containsObject:", currentResidentDevice) & 1) == 0 && objc_msgSend(context2, "ourNetworkConnectionType") == 1)
  {
    [v7 addObject:currentResidentDevice];
  }

  v10 = [v7 copy];

  return v10;
}

- (int64_t)compareNetworkConnectionResident1:(id)resident1 resident2:(id)resident2
{
  resident2Copy = resident2;
  resident1Copy = resident1;
  wiredResidents = [(HMDResidentSelectionMode *)self wiredResidents];
  v9 = [wiredResidents containsObject:resident1Copy];

  v10 = [wiredResidents containsObject:resident2Copy];
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

- (int64_t)compareProductTypeResident1:(id)resident1 resident2:(id)resident2
{
  v31 = *MEMORY[0x277D85DE8];
  resident1Copy = resident1;
  resident2Copy = resident2;
  productTypePreferenceList = [(HMDResidentSelectionMode *)self productTypePreferenceList];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resident1Copy, "productType")}];
  v10 = [productTypePreferenceList indexOfObject:v9];

  productTypePreferenceList2 = [(HMDResidentSelectionMode *)self productTypePreferenceList];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(resident2Copy, "productType")}];
  v13 = [productTypePreferenceList2 indexOfObject:v12];

  productTypePreferenceList3 = [(HMDResidentSelectionMode *)self productTypePreferenceList];
  v15 = [productTypePreferenceList3 indexOfObject:&unk_283E71E40];

  if (v10 == v15)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      shortDescription = [resident1Copy shortDescription];
      v27 = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = shortDescription;
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
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      shortDescription = [resident2Copy shortDescription];
      v27 = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = shortDescription;
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

- (int64_t)compareLocationResident1:(id)resident1 resident2:(id)resident2
{
  resident2Copy = resident2;
  v7 = [(HMDResidentSelectionMode *)self locationOfResident:resident1];
  v8 = [(HMDResidentSelectionMode *)self locationOfResident:resident2Copy];

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

- (unint64_t)locationOfResident:(id)resident
{
  residentCopy = resident;
  context = [(HMDResidentSelectionMode *)self context];
  presentResidentsStatuses = [context presentResidentsStatuses];
  residentIDSIdentifierToLocationMap = [presentResidentsStatuses residentIDSIdentifierToLocationMap];

  device = [residentCopy device];
  idsIdentifier = [device idsIdentifier];
  v10 = [residentIDSIdentifierToLocationMap objectForKeyedSubscript:idsIdentifier];

  if (v10)
  {
    device2 = [residentCopy device];
    idsIdentifier2 = [device2 idsIdentifier];
    v13 = [residentIDSIdentifierToLocationMap objectForKeyedSubscript:idsIdentifier2];
    unsignedIntegerValue = [v13 unsignedIntegerValue];
  }

  else
  {
    currentResidentDevice = [context currentResidentDevice];
    v16 = [currentResidentDevice isEqual:residentCopy];

    if (v16)
    {
      unsignedIntegerValue = [context myLocation];
    }

    else
    {
      unsignedIntegerValue = 100;
    }
  }

  return unsignedIntegerValue;
}

- (BOOL)_allResidentsHaveSameLocationStatus:(unint64_t)status
{
  context = [(HMDResidentSelectionMode *)self context];
  presentResidentsStatuses = [context presentResidentsStatuses];
  residentIDSIdentifierToLocationMap = [presentResidentsStatuses residentIDSIdentifierToLocationMap];
  allValues = [residentIDSIdentifierToLocationMap allValues];

  if ([allValues count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__HMDResidentSelectionMode__allResidentsHaveSameLocationStatus___block_invoke;
    v10[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
    v10[4] = status;
    v8 = [allValues na_all:v10];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (int64_t)compareVersionResident1:(id)resident1 resident2:(id)resident2
{
  resident1Copy = resident1;
  resident2Copy = resident2;
  device = [resident2Copy device];
  version = [device version];
  device2 = [resident1Copy device];
  version2 = [device2 version];
  v11 = [version compare:version2];

  if (!v11)
  {
    device3 = [resident1Copy device];
    productInfo = [device3 productInfo];
    softwareVersion = [productInfo softwareVersion];

    device4 = [resident2Copy device];
    productInfo2 = [device4 productInfo];
    softwareVersion2 = [productInfo2 softwareVersion];

    if (softwareVersion2)
    {
      [softwareVersion2 operatingSystemVersion];
      if (!softwareVersion)
      {
LABEL_6:
        v11 = HMFOperatingSystemVersionCompare();

        goto LABEL_7;
      }
    }

    else if (!softwareVersion)
    {
      goto LABEL_6;
    }

    [softwareVersion operatingSystemVersion];
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (id)_sortResidentsUsingAllCriteria:(id)criteria
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HMDResidentSelectionMode__sortResidentsUsingAllCriteria___block_invoke;
  v5[3] = &unk_278687AC0;
  v5[4] = self;
  v3 = [criteria sortedArrayUsingComparator:v5];

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
  array = [MEMORY[0x277CBEB18] array];
  context = [(HMDResidentSelectionMode *)self context];
  electorsPreferredResidentsList = [context electorsPreferredResidentsList];
  residentIDSIdentifiers = [electorsPreferredResidentsList residentIDSIdentifiers];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __61__HMDResidentSelectionMode_preferredResidentsRemovedFromHome__block_invoke;
  v18 = &unk_278672878;
  selfCopy = self;
  v7 = array;
  v20 = v7;
  [residentIDSIdentifiers hmf_enumerateWithAutoreleasePoolUsingBlock:&v15];

  if ([v7 count])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)_publishPreferredResidentsList:(id)list
{
  v15 = *MEMORY[0x277D85DE8];
  listCopy = list;
  context = [(HMDResidentSelectionMode *)self context];
  isActingAsResident = [context isActingAsResident];

  if (isActingAsResident)
  {
    [(HMDResidentSelectionMode *)self setLocalPreferredResidentsList:listCopy];
    delegate = [(HMDResidentSelectionMode *)self delegate];
    [delegate primarySelectionMode:self didUpdatePreferredResidentsList:listCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  localPreferredResidentsList = [(HMDResidentSelectionMode *)self localPreferredResidentsList];
  _generatePreferredResidentsList = [(HMDResidentSelectionMode *)self _generatePreferredResidentsList];
  v5 = _generatePreferredResidentsList;
  if (localPreferredResidentsList && ([_generatePreferredResidentsList residentIDSIdentifiers], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(localPreferredResidentsList, "residentIDSIdentifiers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToArray:", v7), v7, v6, v8))
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    selfCopy2 = self;
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
    [(HMDResidentSelectionMode *)selfCopy2 _publishPreferredResidentsList:v5];
    v13 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_publishElectorsList
{
  v16 = *MEMORY[0x277D85DE8];
  context = [(HMDResidentSelectionMode *)self context];
  electorsPreferredResidentsList = [context electorsPreferredResidentsList];

  residentIDSIdentifiers = [electorsPreferredResidentsList residentIDSIdentifiers];
  v6 = [residentIDSIdentifiers count];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = electorsPreferredResidentsList;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Publishing the preferred residents list from elector: %@.", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentSelectionMode *)selfCopy _publishPreferredResidentsList:electorsPreferredResidentsList];
  }

  else
  {
    [(HMDResidentSelectionMode *)self _updateLocalPreferredResidentsList];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleDailyPreferredResidentsListRegenerationNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_stringForKey:@"HMD.BGTM.NK"];

  backgroundTaskIdentifier = [(HMDResidentSelectionMode *)self backgroundTaskIdentifier];
  v8 = HMFEqualObjects();

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Preferred residents list regeneration task fired.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    queue = [(HMDResidentSelectionMode *)selfCopy queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__HMDResidentSelectionMode_handleDailyPreferredResidentsListRegenerationNotification___block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(queue, block);
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [mEMORY[0x277D0F8D0] preferenceForKey:@"rsPreferredListGenInterval"];
  numberValue = [v4 numberValue];

  [numberValue doubleValue];
  if (v6 <= 0.0)
  {
    preferredListGenerationEndHour = [(HMDResidentSelectionMode *)self preferredListGenerationEndHour];
    preferredListGenerationStartHour = [(HMDResidentSelectionMode *)self preferredListGenerationStartHour];
    preferredListGenerationEndHour2 = [(HMDResidentSelectionMode *)self preferredListGenerationEndHour];
    if (preferredListGenerationEndHour2 < [(HMDResidentSelectionMode *)self preferredListGenerationStartHour]|| (v11 = 86400 * (preferredListGenerationEndHour - preferredListGenerationStartHour), v11 > 0x15180))
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v26 = 138544130;
        v27 = v15;
        v28 = 2048;
        v29 = 18000;
        v30 = 2048;
        preferredListGenerationStartHour2 = [(HMDResidentSelectionMode *)selfCopy preferredListGenerationStartHour];
        v32 = 2048;
        preferredListGenerationEndHour3 = [(HMDResidentSelectionMode *)selfCopy preferredListGenerationEndHour];
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Overriding to default allowedGenerationIntervalSeconds value %zu due to startHour=%zu, endHour=%zu", &v26, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      v11 = 18000;
    }

    context = [(HMDResidentSelectionMode *)self context];
    home = [context home];
    uuid = [home uuid];
    hmf_bytesAsData = [uuid hmf_bytesAsData];
    v20 = HMDTruncatedHash(hmf_bytesAsData);

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v22 = [MEMORY[0x277CBEAA8] now];
    v23 = [currentCalendar nextDateAfterDate:v22 matchingHour:-[HMDResidentSelectionMode preferredListGenerationStartHour](self minute:"preferredListGenerationStartHour") second:0 options:{0, 1024}];

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
  idsServerBag = [(HMDResidentSelectionMode *)self idsServerBag];
  residentSelectionPreferredListGenerationEndHour = [idsServerBag residentSelectionPreferredListGenerationEndHour];

  if (residentSelectionPreferredListGenerationEndHour)
  {
    unsignedIntValue = [residentSelectionPreferredListGenerationEndHour unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 6;
  }

  return unsignedIntValue;
}

- (unint64_t)preferredListGenerationStartHour
{
  idsServerBag = [(HMDResidentSelectionMode *)self idsServerBag];
  residentSelectionPreferredListGenerationStartHour = [idsServerBag residentSelectionPreferredListGenerationStartHour];

  if (residentSelectionPreferredListGenerationStartHour)
  {
    unsignedIntValue = [residentSelectionPreferredListGenerationStartHour unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 1;
  }

  return unsignedIntValue;
}

- (void)scheduleDailyPreferredResidentsListRegenerationTask
{
  v29 = *MEMORY[0x277D85DE8];
  context = [(HMDResidentSelectionMode *)self context];
  isActingAsResident = [context isActingAsResident];

  if ((isActingAsResident & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  backgroundTaskManager = [(HMDResidentSelectionMode *)self backgroundTaskManager];
  backgroundTaskIdentifier = [(HMDResidentSelectionMode *)self backgroundTaskIdentifier];
  v7 = [backgroundTaskManager hasOutstandingTaskWithIdentifier:backgroundTaskIdentifier];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  _nextResidentsListGenerationDate = [(HMDResidentSelectionMode *)self _nextResidentsListGenerationDate];
  backgroundTaskManager2 = [(HMDResidentSelectionMode *)self backgroundTaskManager];
  backgroundTaskIdentifier2 = [(HMDResidentSelectionMode *)self backgroundTaskIdentifier];
  v24 = 0;
  [backgroundTaskManager2 scheduleTaskWithIdentifier:backgroundTaskIdentifier2 fireDate:_nextResidentsListGenerationDate onObserver:self selector:sel_handleDailyPreferredResidentsListRegenerationNotification_ error:&v24];
  v18 = v24;

  v19 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v22;
    v27 = 2112;
    v28 = _nextResidentsListGenerationDate;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Scheduled a background task for preferred residents list regeneration for: %@.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_12:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)deregisterForMessages
{
  context = [(HMDResidentSelectionMode *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];
}

- (id)backupsForResident:(id)resident
{
  v16 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  sortedResidents = [(HMDResidentSelectionMode *)self sortedResidents];
  v6 = sortedResidents;
  if (sortedResidents)
  {
    v7 = [sortedResidents mutableCopy];
    [v7 removeObject:residentCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (id)residentSelectionInfoWithOurselvesAsThePreferredWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  if ([(HMDResidentSelectionMode *)self currentModeType]== 2)
  {
    context = [(HMDResidentSelectionMode *)self context];
    currentResidentDevice = [context currentResidentDevice];
    device = [currentResidentDevice device];
    idsIdentifier = [device idsIdentifier];
  }

  else
  {
    idsIdentifier = 0;
  }

  v9 = [[HMDResidentSelectionInfo alloc] initWithPreferredResidentIDSIdentifier:idsIdentifier currentResidentSelectionModeType:[(HMDResidentSelectionMode *)self currentModeType] selectionTimestamp:timestampCopy];

  return v9;
}

- (void)handleWeAreSelectedAsThePreferredPrimaryWithInfo:(id)info selectionMessage:(id)message
{
  messageCopy = message;
  infoCopy = info;
  delegate = [(HMDResidentSelectionMode *)self delegate];
  context = [(HMDResidentSelectionMode *)self context];
  currentResidentDevice = [context currentResidentDevice];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HMDResidentSelectionMode_handleWeAreSelectedAsThePreferredPrimaryWithInfo_selectionMessage___block_invoke;
  v12[3] = &unk_27868A1D8;
  v12[4] = self;
  v13 = messageCopy;
  v11 = messageCopy;
  [delegate primarySelectionMode:self didSelectPrimaryResident:currentResidentDevice selectionInfo:infoCopy selectionLogEvent:0 completion:v12];
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

- (void)handleWeAreSelectedAsThePreferredPrimaryWithSelectionTimestamp:(id)timestamp selectionMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@We are selected as the new preferred.", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDResidentSelectionMode *)selfCopy residentSelectionInfoWithOurselvesAsThePreferredWithTimestamp:timestampCopy];
  [(HMDResidentSelectionMode *)selfCopy handleWeAreSelectedAsThePreferredPrimaryWithInfo:v12 selectionMessage:messageCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_preferredResidentsListFromElectorUpdated
{
  context = [(HMDResidentSelectionMode *)self context];
  preferredResidentsListFromElector = [(HMDResidentSelectionMode *)self preferredResidentsListFromElector];

  if (preferredResidentsListFromElector)
  {
    preferredResidentsListFromElector2 = [(HMDResidentSelectionMode *)self preferredResidentsListFromElector];
    [context electorsPreferredResidentsList];
  }

  else
  {
    preferredResidentsListFromElector2 = [context electorsPreferredResidentsList];
    [(HMDResidentSelectionMode *)self localPreferredResidentsList];
  }
  v6 = ;
  v7 = [preferredResidentsListFromElector2 isEqual:v6];

  return v7 ^ 1;
}

- (id)_generatePreferredResidentsList
{
  array = [MEMORY[0x277CBEB18] array];
  sortedResidents = [(HMDResidentSelectionMode *)self sortedResidents];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HMDResidentSelectionMode__generatePreferredResidentsList__block_invoke;
  v14[3] = &unk_278684FC0;
  v15 = array;
  v5 = array;
  [sortedResidents hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

  v6 = [v5 count];
  _preferredResidentsListMaxSize = [(HMDResidentSelectionMode *)self _preferredResidentsListMaxSize];
  if (v6 >= _preferredResidentsListMaxSize)
  {
    v8 = _preferredResidentsListMaxSize;
  }

  else
  {
    v8 = v6;
  }

  v9 = [v5 subarrayWithRange:{0, v8}];
  v10 = [HMDPreferredResidentsList alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v12 = [(HMDPreferredResidentsList *)v10 initWithResidentIDSIdentifiers:v9 modifiedTimestamp:date];

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
  idsServerBag = [(HMDResidentSelectionMode *)self idsServerBag];
  residentSelectionPreferredResidentsListMaxSize = [idsServerBag residentSelectionPreferredResidentsListMaxSize];

  if (residentSelectionPreferredResidentsListMaxSize && [residentSelectionPreferredResidentsListMaxSize unsignedIntValue])
  {
    unsignedIntValue = [residentSelectionPreferredResidentsListMaxSize unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 10;
  }

  return unsignedIntValue;
}

- (id)residentsNotPresentInPreferredResidentsList:(id)list
{
  listCopy = list;
  v5 = [MEMORY[0x277CBEB58] set];
  context = [(HMDResidentSelectionMode *)self context];
  residentsPresentOnStatusKit = [context residentsPresentOnStatusKit];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __72__HMDResidentSelectionMode_residentsNotPresentInPreferredResidentsList___block_invoke;
  v24[3] = &unk_278672878;
  v8 = listCopy;
  v25 = v8;
  v9 = v5;
  v26 = v9;
  [residentsPresentOnStatusKit hmf_enumerateWithAutoreleasePoolUsingBlock:v24];

  availableResidentDevices = [context availableResidentDevices];
  v11 = [availableResidentDevices copy];

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __72__HMDResidentSelectionMode_residentsNotPresentInPreferredResidentsList___block_invoke_2;
  v21 = &unk_2786728A0;
  v22 = v8;
  v23 = v9;
  v12 = v9;
  v13 = v8;
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:&v18];
  allObjects = [v12 allObjects];
  v15 = [context residentDevicesWithIDSIdentifiers:allObjects];

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

- (BOOL)allResidentsAboveMeAreUnreachableIn:(id)in
{
  v38 = *MEMORY[0x277D85DE8];
  inCopy = in;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  context = [(HMDResidentSelectionMode *)self context];
  currentResidentDevice = [context currentResidentDevice];
  device = [currentResidentDevice device];
  idsIdentifier = [device idsIdentifier];

  residentsPresentOnStatusKit = [context residentsPresentOnStatusKit];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__HMDResidentSelectionMode_allResidentsAboveMeAreUnreachableIn___block_invoke;
  v26[3] = &unk_278672850;
  v10 = idsIdentifier;
  v27 = v10;
  v11 = residentsPresentOnStatusKit;
  v31 = &v32;
  v28 = v11;
  selfCopy = self;
  v12 = context;
  v30 = v12;
  [inCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v26];
  firstObject = [inCopy firstObject];
  LOBYTE(device) = [firstObject isEqual:v10];

  v14 = [inCopy indexOfObject:v10];
  takeOverInfo = [(HMDResidentSelectionMode *)self takeOverInfo];
  [takeOverInfo setOurPositionInList:v14];

  v16 = [inCopy count];
  takeOverInfo2 = [(HMDResidentSelectionMode *)self takeOverInfo];
  [takeOverInfo2 setTotalResidentCount:v16];

  if ((v33[3] & device) == 1)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    takeOverInfo3 = [(HMDResidentSelectionMode *)self takeOverInfo];
    [takeOverInfo3 setTakeOverFinding:4];
    goto LABEL_8;
  }

  if (*(v33 + 24))
  {
    goto LABEL_7;
  }

LABEL_5:
  takeOverInfo3 = [(HMDResidentSelectionMode *)self takeOverInfo];
  [takeOverInfo3 setTakeOverFinding:5];
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
  context = [(HMDResidentSelectionMode *)self context];
  electorsPreferredResidentsList = [context electorsPreferredResidentsList];

  if (electorsPreferredResidentsList)
  {
    residentIDSIdentifiers = [electorsPreferredResidentsList residentIDSIdentifiers];
  }

  else
  {
    residentIDSIdentifiers = MEMORY[0x277CBEBF8];
  }

  v6 = [(HMDResidentSelectionMode *)self residentsNotPresentInPreferredResidentsList:residentIDSIdentifiers];
  array = [MEMORY[0x277CBEB18] array];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__HMDResidentSelectionMode__shouldTakeOverBasedOnReachability__block_invoke;
  v17[3] = &unk_278684FC0;
  v8 = array;
  v18 = v8;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];
  v9 = [residentIDSIdentifiers arrayByAddingObjectsFromArray:v8];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  v14 = [(HMDResidentSelectionMode *)selfCopy allResidentsAboveMeAreUnreachableIn:v9];

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

- (BOOL)_isViableUserPreferredResident:(id)resident
{
  residentCopy = resident;
  v5 = [(HMDResidentSelectionMode *)self locationOfResident:residentCopy];
  if (v5 == 300 || [(HMDResidentSelectionMode *)self _allResidentsHaveSameLocationStatus:v5])
  {
    v6 = 1;
  }

  else
  {
    context = [(HMDResidentSelectionMode *)self context];
    residentStatusChannel = [context residentStatusChannel];
    currentPrimaryResident = [residentStatusChannel currentPrimaryResident];
    idsIdentifier = [currentPrimaryResident idsIdentifier];

    device = [residentCopy device];
    idsIdentifier2 = [device idsIdentifier];
    v6 = [idsIdentifier hmf_isEqualToUUID:idsIdentifier2];
  }

  return v6;
}

- (BOOL)shouldTakeOverAsTheCurrentPrimaryWithSelectionInfo:(id)info isTimerTriggered:(BOOL)triggered
{
  triggeredCopy = triggered;
  v46 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  context = [(HMDResidentSelectionMode *)self context];
  if ([context isActingAsResident])
  {
    v8 = [(HMDResidentSelectionMode *)self userPreferredResidentPerSelectionInfo:infoCopy];
    availableResidentDevices = [context availableResidentDevices];
    v10 = [availableResidentDevices count];

    if (triggeredCopy)
    {
      [(HMDResidentSelectionMode *)self _evaluatePrimaryChangedReason];
    }

    residentStatusChannel = [context residentStatusChannel];
    isConnected = [residentStatusChannel isConnected];

    if (v10 < 2 || (isConnected & 1) != 0)
    {
      if ([v8 isCurrentDevice])
      {
        takeOverInfo = [(HMDResidentSelectionMode *)self takeOverInfo];
        [takeOverInfo setTakeOverFinding:1];

        currentResidentDevice = [context currentResidentDevice];
        takeOverInfo2 = [(HMDResidentSelectionMode *)self takeOverInfo];
        [takeOverInfo2 setBestCandidateForPrimary:currentResidentDevice];

        takeOverInfo3 = [(HMDResidentSelectionMode *)self takeOverInfo];
        [takeOverInfo3 setWeAreQualifiedToTakeOver:1];

        v24 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        _shouldTakeOverBasedOnReachability = [(HMDResidentSelectionMode *)self _shouldTakeOverBasedOnReachability];
        v32 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v34 = HMFGetOSLogHandle();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (_shouldTakeOverBasedOnReachability)
        {
          if (v35)
          {
            v36 = HMFGetLogIdentifier();
            v42 = 138543362;
            v43 = v36;
            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Should take over as the current primary since all residents above me in the list are unreachable.", &v42, 0xCu);
          }

          objc_autoreleasePoolPop(v32);
          if (triggeredCopy)
          {
            [(HMDResidentSelectionMode *)selfCopy2 setPrimaryChangedReason:3];
          }

          takeOverInfo4 = [(HMDResidentSelectionMode *)selfCopy2 takeOverInfo];
          v19 = 1;
          [takeOverInfo4 setWeAreQualifiedToTakeOver:1];

          goto LABEL_26;
        }

        if (v35)
        {
          v40 = HMFGetLogIdentifier();
          v41 = StringFromHMDResidentLocation([context myLocation]);
          v42 = 138543618;
          v43 = v40;
          v44 = 2112;
          v45 = v41;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Should not take over as the current primary since none of the conditions apply. Our location: %@", &v42, 0x16u);
        }

        v18 = v32;
        goto LABEL_10;
      }

      takeOverInfo5 = [(HMDResidentSelectionMode *)self takeOverInfo];
      [takeOverInfo5 setBestCandidateForPrimary:v8];

      takeOverInfo6 = [(HMDResidentSelectionMode *)self takeOverInfo];
      [takeOverInfo6 setTakeOverFinding:2];

      v14 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        shortDescription = [v8 shortDescription];
        v42 = 138543618;
        v43 = v17;
        v44 = 2112;
        v45 = shortDescription;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Should not take over as the current primary since the user preferred resident: %@ is viable.", &v42, 0x16u);

        goto LABEL_8;
      }
    }

    else
    {
      takeOverInfo7 = [(HMDResidentSelectionMode *)self takeOverInfo];
      [takeOverInfo7 setTakeOverFinding:3];

      v14 = objc_autoreleasePoolPush();
      selfCopy4 = self;
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
  context = [(HMDResidentSelectionMode *)self context];
  residentSelectionInfo = [context residentSelectionInfo];
  residentSelectionInfoFromWorkingStore = [(HMDResidentSelectionMode *)self residentSelectionInfoFromWorkingStore];
  [(HMDResidentSelectionMode *)self _evaluatePrimaryChangedReasonForCurrentSelectionInfo:residentSelectionInfo previousSelectionInfo:residentSelectionInfoFromWorkingStore];
}

- (BOOL)hasViablePrimaryResidentWithSelectionInfo:(id)info
{
  v61 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  context = [(HMDResidentSelectionMode *)self context];
  residentStatusChannel = [context residentStatusChannel];
  currentPrimaryResident = [residentStatusChannel currentPrimaryResident];

  currentResidentDevice = [context currentResidentDevice];
  device = [currentResidentDevice device];
  version = [device version];

  swVersion = [currentPrimaryResident swVersion];
  isReachable = [currentResidentDevice isReachable];
  v13 = [(HMDResidentSelectionMode *)self userPreferredResidentPerSelectionInfo:infoCopy];
  takeOverInfo = [(HMDResidentSelectionMode *)self takeOverInfo];
  [takeOverInfo setHasViablePrimary:0];

  v54 = v13;
  if ([v13 isCurrentDevice])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v53 = currentResidentDevice;
      v18 = context;
      v19 = currentPrimaryResident;
      v20 = swVersion;
      v21 = infoCopy;
      v23 = v22 = version;
      *buf = 138543362;
      v56 = v23;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Should take over since we are the user preferred and hence better than the current primary.", buf, 0xCu);

      version = v22;
      infoCopy = v21;
      swVersion = v20;
      currentPrimaryResident = v19;
      context = v18;
      currentResidentDevice = v53;
    }

    objc_autoreleasePoolPop(v15);
    takeOverInfo2 = [(HMDResidentSelectionMode *)selfCopy takeOverInfo];
    takeOverInfo4 = takeOverInfo2;
    v26 = 4;
LABEL_13:
    [takeOverInfo2 setViablePrimaryResult:{v26, v53}];
LABEL_22:

    goto LABEL_23;
  }

  if (!currentPrimaryResident)
  {
    v34 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v53 = currentResidentDevice;
      v37 = swVersion;
      v38 = infoCopy;
      v40 = v39 = version;
      *buf = 138543362;
      v56 = v40;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Should take over since the current primary is not reachable.", buf, 0xCu);

      version = v39;
      infoCopy = v38;
      swVersion = v37;
      currentPrimaryResident = 0;
    }

    objc_autoreleasePoolPop(v34);
    takeOverInfo2 = [(HMDResidentSelectionMode *)selfCopy2 takeOverInfo];
    takeOverInfo4 = takeOverInfo2;
    v26 = 1;
    goto LABEL_13;
  }

  if ([swVersion isAtLeastVersion:version])
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v30 = v53 = v27;
      *buf = 138543874;
      v56 = v30;
      v57 = 2112;
      v58 = swVersion;
      v59 = 2112;
      v60 = version;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Should not take over since the current primary version: %@ is same or better than ours: %@.", buf, 0x20u);

      v27 = v53;
    }

    objc_autoreleasePoolPop(v27);
    takeOverInfo3 = [(HMDResidentSelectionMode *)selfCopy4 takeOverInfo];
    v32 = takeOverInfo3;
    v33 = 3;
LABEL_21:
    [takeOverInfo3 setViablePrimaryResult:{v33, v53}];

    takeOverInfo4 = [(HMDResidentSelectionMode *)selfCopy4 takeOverInfo];
    [takeOverInfo4 setHasViablePrimary:1];
    goto LABEL_22;
  }

  if ((isReachable & 1) == 0)
  {
    v46 = objc_autoreleasePoolPush();
    selfCopy4 = self;
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
    takeOverInfo3 = [(HMDResidentSelectionMode *)selfCopy4 takeOverInfo];
    v32 = takeOverInfo3;
    v33 = 2;
    goto LABEL_21;
  }

  takeOverInfo5 = [(HMDResidentSelectionMode *)self takeOverInfo];
  [takeOverInfo5 setViablePrimaryResult:5];

  v42 = objc_autoreleasePoolPush();
  selfCopy5 = self;
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
  takeOverInfo6 = [(HMDResidentSelectionMode *)self takeOverInfo];
  hasViablePrimary = [takeOverInfo6 hasViablePrimary];

  v51 = *MEMORY[0x277D85DE8];
  return hasViablePrimary;
}

- (void)cancelAllTakeOverTimers
{
  takeOverTimer = [(HMDResidentSelectionMode *)self takeOverTimer];
  [takeOverTimer cancel];

  [(HMDResidentSelectionMode *)self setTakeOverTimer:0];
  takeOverIfPrimaryIsNotViableTimer = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [takeOverIfPrimaryIsNotViableTimer cancel];

  [(HMDResidentSelectionMode *)self setTakeOverIfPrimaryIsNotViableTimer:0];
}

- (void)takeOverWithSelectionTimestamp:(id)timestamp
{
  v17 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Taking over as the current primary.", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDResidentSelectionMode *)selfCopy delegate];
  context = [(HMDResidentSelectionMode *)selfCopy context];
  currentResidentDevice = [context currentResidentDevice];
  device = [currentResidentDevice device];
  idsIdentifier = [device idsIdentifier];
  [delegate primarySelectionMode:selfCopy didReceivePrimaryResidentIdsIdentifier:idsIdentifier selectionTimestamp:timestampCopy];

  [(HMDResidentSelectionMode *)selfCopy cancelAllTakeOverTimers];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleTakeOverTimerFired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Takeover timer fired.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionMode *)selfCopy takeOverIfConditionsAreMetWithIsTimerTriggered:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_rescheduleTakeOverTimer
{
  v20 = *MEMORY[0x277D85DE8];
  [(HMDResidentSelectionMode *)self _takeOverTimerInterval];
  v4 = v3;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  takeOverTimer = [(HMDResidentSelectionMode *)selfCopy takeOverTimer];
  [takeOverTimer cancel];

  v10 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v4];
  [(HMDResidentSelectionMode *)selfCopy setTakeOverTimer:v10];

  takeOverTimer2 = [(HMDResidentSelectionMode *)selfCopy takeOverTimer];
  [takeOverTimer2 setDelegate:selfCopy];

  queue = [(HMDResidentSelectionMode *)selfCopy queue];
  takeOverTimer3 = [(HMDResidentSelectionMode *)selfCopy takeOverTimer];
  [takeOverTimer3 setDelegateQueue:queue];

  takeOverTimer4 = [(HMDResidentSelectionMode *)selfCopy takeOverTimer];
  [takeOverTimer4 resume];

  v15 = *MEMORY[0x277D85DE8];
}

- (double)_takeOverTimerInterval
{
  idsServerBag = [(HMDResidentSelectionMode *)self idsServerBag];
  residentSelectionTakeOverInterval = [idsServerBag residentSelectionTakeOverInterval];

  if (residentSelectionTakeOverInterval)
  {
    [residentSelectionTakeOverInterval doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 7200.0;
  }

  return v5;
}

- (void)scheduleTakeOverTimerIfRequiredAfterBlockDuration:(double)duration
{
  v26 = *MEMORY[0x277D85DE8];
  takeOverIfPrimaryIsNotViableTimer = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  isRunning = [takeOverIfPrimaryIsNotViableTimer isRunning];

  if (isRunning)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      takeOverIfPrimaryIsNotViableTimer2 = [(HMDResidentSelectionMode *)selfCopy takeOverIfPrimaryIsNotViableTimer];
      fireDate = [takeOverIfPrimaryIsNotViableTimer2 fireDate];
      v22 = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = *&fireDate;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Primary takeover is blocked. Take over timer is already running. It will fire at: %@.", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v13 = duration + 5.0;
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    [(HMDResidentSelectionMode *)selfCopy2 _rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:v13];
    v18 = [HMDResidentTakeOverInfo alloc];
    context = [(HMDResidentSelectionMode *)selfCopy2 context];
    v20 = [(HMDResidentTakeOverInfo *)v18 initWithContext:context takeOverTrigger:5];
    [(HMDResidentSelectionMode *)selfCopy2 setTakeOverInfo:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleTakeOverIfPrimaryIsNotViableTimerFired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Takeover if better than the current primary timer fired.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionMode *)selfCopy takeOverIfPrimaryIsNotViableWithIsTimerTriggered:1];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:(double)interval
{
  takeOverIfPrimaryIsNotViableTimer = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [takeOverIfPrimaryIsNotViableTimer suspend];

  v6 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:interval];
  [(HMDResidentSelectionMode *)self setTakeOverIfPrimaryIsNotViableTimer:v6];

  takeOverIfPrimaryIsNotViableTimer2 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [takeOverIfPrimaryIsNotViableTimer2 setDelegate:self];

  queue = [(HMDResidentSelectionMode *)self queue];
  takeOverIfPrimaryIsNotViableTimer3 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [takeOverIfPrimaryIsNotViableTimer3 setDelegateQueue:queue];

  takeOverIfPrimaryIsNotViableTimer4 = [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableTimer];
  [takeOverIfPrimaryIsNotViableTimer4 resume];
}

- (BOOL)shouldRegeneratePreferredResidentsListBasedOnFoundResidents:(id)residents residentLocationMap:(id)map
{
  residentsCopy = residents;
  mapCopy = map;
  if ([residentsCopy count])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    localPreferredResidentsList = [(HMDResidentSelectionMode *)self localPreferredResidentsList];
    residentIDSIdentifiers = [localPreferredResidentsList residentIDSIdentifiers];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __108__HMDResidentSelectionMode_shouldRegeneratePreferredResidentsListBasedOnFoundResidents_residentLocationMap___block_invoke;
    v13[3] = &unk_278673700;
    v14 = mapCopy;
    v10 = residentIDSIdentifiers;
    v15 = v10;
    v16 = &v17;
    [residentsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
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

- (void)handleMeshInformationRequest:(id)request
{
  v49[5] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  context = [(HMDResidentSelectionMode *)self context];
  v6 = context;
  if (!context)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      destination = [requestCopy destination];
      *buf = 138543618;
      v43 = v36;
      v44 = 2112;
      v45 = destination;
      v38 = "%{public}@Responding with error to mesh information request from: %@ due to missing context.";
LABEL_14:
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, v38, buf, 0x16u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v33);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    [requestCopy respondWithError:v11];
    goto LABEL_16;
  }

  currentResidentDevice = [context currentResidentDevice];

  if (!currentResidentDevice)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      destination = [requestCopy destination];
      *buf = 138543618;
      v43 = v36;
      v44 = 2112;
      v45 = destination;
      v38 = "%{public}@Ignoring mesh information request from: %@ since we are not a resident.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v41 = requestCopy;
  v8 = MEMORY[0x277CCABB0];
  home = [v6 home];
  accessories = [home accessories];
  v11 = [v8 numberWithUnsignedInteger:{objc_msgSend(accessories, "count")}];

  v12 = MEMORY[0x277CCABB0];
  home2 = [v6 home];
  enabledResidents = [home2 enabledResidents];
  v15 = [v12 numberWithUnsignedInteger:{objc_msgSend(enabledResidents, "count")}];

  primaryResidentDevice = [v6 primaryResidentDevice];
  if (!primaryResidentDevice)
  {
    primaryResidentDevice = [(HMDResidentSelectionMode *)self _highestVersionLowestUUIDResident];
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v21 = v20 = v6;
      *buf = 138543618;
      v43 = v21;
      v44 = 2112;
      v45 = primaryResidentDevice;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Using resident: %@ for the leader for the mesh information request since we do not have a primary.", buf, 0x16u);

      v6 = v20;
    }

    objc_autoreleasePoolPop(v17);
  }

  identifier = [primaryResidentDevice identifier];
  uUIDString = [identifier UUIDString];

  v48[0] = @"r";
  v40 = v6;
  currentResidentDevice2 = [v6 currentResidentDevice];
  identifier2 = [currentResidentDevice2 identifier];
  uUIDString2 = [identifier2 UUIDString];
  v49[0] = uUIDString2;
  v49[1] = v11;
  v48[1] = @"rip";
  v48[2] = @"res";
  v49[2] = v15;
  v49[3] = uUIDString;
  v48[3] = @"l";
  v48[4] = @"p";
  v49[4] = uUIDString;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:5];

  v28 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    destination2 = [requestCopy destination];
    *buf = 138543874;
    v43 = v31;
    v44 = 2112;
    v45 = destination2;
    v46 = 2112;
    v47 = v27;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Handling mesh information request from: %@ and responding with: %@.", buf, 0x20u);

    requestCopy = v41;
  }

  objc_autoreleasePoolPop(v28);
  [requestCopy respondWithPayload:v27];

  v6 = v40;
LABEL_16:

  v39 = *MEMORY[0x277D85DE8];
}

- (id)_highestVersionLowestUUIDResident
{
  context = [(HMDResidentSelectionMode *)self context];
  availableResidentDevices = [context availableResidentDevices];
  v5 = [(HMDResidentSelectionMode *)self _sortResidentsByLatestVersionLowestUUID:availableResidentDevices];

  firstObject = [v5 firstObject];

  return firstObject;
}

- (BOOL)newPrimaryIsInREv2BasedOnTheirTimestamp:(id)timestamp ourSelectionInfo:(id)info
{
  if (timestamp)
  {
    return 0;
  }

  selectionTimestamp = [info selectionTimestamp];
  v4 = selectionTimestamp != 0;

  return v4;
}

- (id)userPreferredResidentPerSelectionInfo:(id)info
{
  preferredResidentIDSIdentifier = [info preferredResidentIDSIdentifier];
  if (preferredResidentIDSIdentifier)
  {
    context = [(HMDResidentSelectionMode *)self context];
    v6 = [context residentDeviceWithIDSIdentifier:preferredResidentIDSIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSUUID)messageTargetUUID
{
  context = [(HMDResidentSelectionMode *)self context];
  home = [context home];
  uuid = [home uuid];

  return uuid;
}

- (id)_sortResidentsByLatestVersionLowestUUID:(id)d
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__HMDResidentSelectionMode__sortResidentsByLatestVersionLowestUUID___block_invoke;
  v5[3] = &unk_278687AC0;
  v5[4] = self;
  v3 = [d sortedArrayUsingComparator:v5];

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
  context = [(HMDResidentSelectionMode *)self context];
  home = [context home];
  enabledResidents = [home enabledResidents];

  v6 = [(HMDResidentSelectionMode *)self _sortResidentsUsingAllCriteria:enabledResidents];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    shortDescription = [v6 shortDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = shortDescription;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Residents after sorting: %@.", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dumpState
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCACA8];
  currentModeType = [(HMDResidentSelectionMode *)self currentModeType];
  if (currentModeType - 1 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_2786841A8[currentModeType - 1];
  }

  v7 = v6;
  residentSelectionInfoFromWorkingStore = [(HMDResidentSelectionMode *)self residentSelectionInfoFromWorkingStore];
  v9 = [v4 stringWithFormat:@"Mode: %@, Working store info: %@", v7, residentSelectionInfoFromWorkingStore];
  [dictionary setObject:v9 forKeyedSubscript:@"State"];

  localPreferredResidentsList = [(HMDResidentSelectionMode *)self localPreferredResidentsList];
  context = [(HMDResidentSelectionMode *)self context];
  residentIDSIdentifiers = [localPreferredResidentsList residentIDSIdentifiers];
  v13 = [context residentDevicesWithIDSIdentifiers:residentIDSIdentifiers];

  modifiedTimestamp = [localPreferredResidentsList modifiedTimestamp];
  localTimeDescription = [modifiedTimestamp localTimeDescription];
  [dictionary setObject:localTimeDescription forKeyedSubscript:@"Local Preferred Residents Timestamp"];

  v16 = [v13 na_map:&__block_literal_global_38768];
  [dictionary setObject:v16 forKeyedSubscript:@"Local Preferred Residents"];

  v17 = MEMORY[0x277CCACA8];
  presentResidentsStatuses = [context presentResidentsStatuses];
  residentIDSIdentifierToLocationMap = [presentResidentsStatuses residentIDSIdentifierToLocationMap];
  v20 = [v17 stringWithFormat:@" %@", residentIDSIdentifierToLocationMap];
  [dictionary setObject:v20 forKeyedSubscript:@"Resident Location map"];

  return dictionary;
}

- (void)didUpdateResidentStatus:(id)status residentsFound:(id)found residentsLost:(id)lost
{
  v47 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  foundCopy = found;
  lostCopy = lost;
  context = [(HMDResidentSelectionMode *)self context];
  if ([context isActingAsResident])
  {
    residentStatusChannel = [context residentStatusChannel];
    isConnected = [residentStatusChannel isConnected];

    if (isConnected)
    {
      if ([foundCopy count])
      {
        v14 = 1;
      }

      else
      {
        v14 = [lostCopy count] != 0;
      }

      residentIDSIdentifierToLocationMap = [statusCopy residentIDSIdentifierToLocationMap];
      v20 = [(HMDResidentSelectionMode *)self shouldRegeneratePreferredResidentsListBasedOnFoundResidents:foundCopy residentLocationMap:residentIDSIdentifierToLocationMap];

      if (v20)
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          [statusCopy residentIDSIdentifierToLocationMap];
          v25 = v38 = v21;
          *buf = 138543618;
          v40 = v24;
          v41 = 2112;
          v42 = *&v25;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Regenerating new preferred residents list. Latest location info: %@", buf, 0x16u);

          v21 = v38;
        }

        objc_autoreleasePoolPop(v21);
        [(HMDResidentSelectionMode *)selfCopy _updateLocalPreferredResidentsList];
      }

      _preferredResidentsListFromElectorUpdated = [(HMDResidentSelectionMode *)self _preferredResidentsListFromElectorUpdated];
      electorsPreferredResidentsList = [context electorsPreferredResidentsList];
      [(HMDResidentSelectionMode *)self setPreferredResidentsListFromElector:electorsPreferredResidentsList];

      if (v14 || _preferredResidentsListFromElectorUpdated)
      {
        [(HMDResidentSelectionMode *)self _statusDebounceInterval];
        v29 = v28;
        v30 = objc_autoreleasePoolPush();
        selfCopy2 = self;
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
        [(HMDResidentSelectionMode *)selfCopy2 _rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:v29];
        v36 = [[HMDResidentTakeOverInfo alloc] initWithContext:context takeOverTrigger:0];
        [(HMDResidentSelectionMode *)selfCopy2 setTakeOverInfo:v36];
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@We are not connected per the latest resident status update, not acting on this update.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDResidentSelectionMode *)selfCopy3 cancelAllTakeOverTimers];
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (double)_statusDebounceInterval
{
  idsServerBag = [(HMDResidentSelectionMode *)self idsServerBag];
  residentSelectionStatusDebounceInterval = [idsServerBag residentSelectionStatusDebounceInterval];

  if (residentSelectionStatusDebounceInterval)
  {
    [residentSelectionStatusDebounceInterval doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 60.0;
  }

  return v5;
}

- (void)didReceiveSelectionMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v6 = [messagePayload hmf_UUIDForKey:@"primary.ids.identifier"];

  if (v6)
  {
    messagePayload2 = [messageCopy messagePayload];
    v8 = [messagePayload2 hmf_dateForKey:@"primary.selection.timestamp"];

    if (v8)
    {
      context = [(HMDResidentSelectionMode *)self context];
      currentResidentDevice = [context currentResidentDevice];
      device = [currentResidentDevice device];
      idsIdentifier = [device idsIdentifier];

      if ([v6 hmf_isEqualToUUID:idsIdentifier])
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v16;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Controller notified that current device is the new preferred primary", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v13);
        [(HMDResidentSelectionMode *)selfCopy handleWeAreSelectedAsThePreferredPrimaryWithSelectionTimestamp:v8 selectionMessage:messageCopy];
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
      idsIdentifier = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
      [messageCopy respondWithError:idsIdentifier];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    [messageCopy respondWithError:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateResidentSelectionModelTo:(id)to
{
  queue = self->_queue;
  toCopy = to;
  dispatch_assert_queue_V2(queue);
  context = [(HMDResidentSelectionMode *)self context];
  residentSelectionInfoFromWorkingStore = [(HMDResidentSelectionMode *)self residentSelectionInfoFromWorkingStore];
  [(HMDResidentSelectionMode *)self _evaluatePrimaryChangedReasonForCurrentSelectionInfo:toCopy previousSelectionInfo:residentSelectionInfoFromWorkingStore];

  [(HMDResidentSelectionMode *)self setResidentSelectionInfoFromWorkingStore:toCopy];
  if ([context isActingAsResident])
  {
    v7 = [[HMDResidentTakeOverInfo alloc] initWithContext:context takeOverTrigger:3];
    [(HMDResidentSelectionMode *)self setTakeOverInfo:v7];

    [(HMDResidentSelectionMode *)self takeOverIfPrimaryIsNotViableWithIsTimerTriggered:0];
  }
}

- (void)_evaluatePrimaryChangedReasonForCurrentSelectionInfo:(id)info previousSelectionInfo:(id)selectionInfo
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  selectionInfoCopy = selectionInfo;
  dispatch_assert_queue_V2(self->_queue);
  currentModeType = [(HMDResidentSelectionMode *)self currentModeType];
  if (selectionInfoCopy)
  {
    if (currentModeType == 2)
    {
      preferredResidentIDSIdentifier = [infoCopy preferredResidentIDSIdentifier];
      preferredResidentIDSIdentifier2 = [selectionInfoCopy preferredResidentIDSIdentifier];
      v11 = [preferredResidentIDSIdentifier isEqual:preferredResidentIDSIdentifier2];

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

  else if (currentModeType == 2)
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
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v16;
    v20 = 2048;
    primaryChangedReason = [(HMDResidentSelectionMode *)selfCopy primaryChangedReason];
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

- (void)didSucceedResidentSelectionWithPreferred:(id)preferred
{
  v16 = *MEMORY[0x277D85DE8];
  preferredCopy = preferred;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = preferredCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Selection completed with preferred primary: %@.", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  selectionCompletion = [(HMDResidentSelectionMode *)selfCopy selectionCompletion];
  v10 = selectionCompletion;
  if (selectionCompletion)
  {
    (*(selectionCompletion + 16))(selectionCompletion, preferredCopy, 0);
  }

  [(HMDResidentSelectionMode *)selfCopy setSelectionCompletion:0];
  [(HMDResidentSelectionMode *)selfCopy setResidentsEnumerator:0];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didFailResidentSelectionWithResident:(id)resident error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  residentCopy = resident;
  errorCopy = error;
  residentsEnumerator = [(HMDResidentSelectionMode *)self residentsEnumerator];
  nextObject = [residentsEnumerator nextObject];

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v13;
    v20 = 2112;
    v21 = residentCopy;
    v22 = 2112;
    v23 = nextObject;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to select resident %@. Attempting the next one: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if (nextObject)
  {
    createSelectionMessageCompletion = [(HMDResidentSelectionMode *)selfCopy createSelectionMessageCompletion];
    [(HMDResidentSelectionMode *)selfCopy sendSelectionMessageToResident:nextObject requireAutoUpdate:0 completion:createSelectionMessageCompletion];
  }

  else
  {
    selectionCompletion = [(HMDResidentSelectionMode *)selfCopy selectionCompletion];
    v16 = selectionCompletion;
    if (selectionCompletion)
    {
      (*(selectionCompletion + 16))(selectionCompletion, 0, errorCopy);
    }

    [(HMDResidentSelectionMode *)selfCopy setSelectionCompletion:0];
    [(HMDResidentSelectionMode *)selfCopy setResidentsEnumerator:0];
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

- (void)performSelectionWithPreferredPrimaryResident:(id)resident requireAutoUpdate:(BOOL)update reason:(unint64_t)reason completion:(id)completion
{
  residentCopy = resident;
  completionCopy = completion;
  v10 = MEMORY[0x277CBEAD8];
  v11 = *MEMORY[0x277CBE658];
  v12 = MEMORY[0x277CCACA8];
  v13 = NSStringFromSelector(a2);
  v14 = [v12 stringWithFormat:@"You must override %@ in a subclass", v13];
  v15 = [v10 exceptionWithName:v11 reason:v14 userInfo:0];
  v16 = v15;

  objc_exception_throw(v15);
}

- (BOOL)allowExternalUpdateOfPrimaryResidentTo:(id)to selectionTimestamp:(id)timestamp
{
  v40 = *MEMORY[0x277D85DE8];
  toCopy = to;
  timestampCopy = timestamp;
  context = [(HMDResidentSelectionMode *)self context];
  residentSelectionInfo = [context residentSelectionInfo];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    shortDescription = [toCopy shortDescription];
    v34 = 138543874;
    v35 = v13;
    v36 = 2112;
    v37 = shortDescription;
    v38 = 2112;
    v39 = *&timestampCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Evaluating to allow external update of primary resident to: %@ with selection timestamp: %@.", &v34, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  primaryResidentDevice = [context primaryResidentDevice];
  isCurrentDevice = [primaryResidentDevice isCurrentDevice];

  if (!isCurrentDevice)
  {
    goto LABEL_13;
  }

  v17 = [(HMDResidentSelectionMode *)selfCopy newPrimaryIsInREv2BasedOnTheirTimestamp:timestampCopy ourSelectionInfo:residentSelectionInfo];
  if (!v17)
  {
    if ([(HMDResidentSelectionMode *)selfCopy shouldTakeOverAsTheCurrentPrimaryWithSelectionInfo:residentSelectionInfo isTimerTriggered:0])
    {
      v24 = arc4random_uniform([(HMDResidentSelectionMode *)selfCopy _takeOverOnlyIfCurrentPrimaryIsNotViableJitter]);
      [(HMDResidentSelectionMode *)selfCopy _takeOverIfPrimaryIsNotViableInterval];
      v26 = v25 + v24;
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v34 = 138543874;
        v35 = v30;
        v36 = 2112;
        v37 = toCopy;
        v38 = 2048;
        v39 = v26;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@For now allowing external update of primary resident to: %@. Will reconsider in %f seconds", &v34, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      [(HMDResidentSelectionMode *)v28 _rescheduleTakeOverIfPrimaryIsNotViableTimerWithTimeInterval:v26];
      delegate = [[HMDResidentTakeOverInfo alloc] initWithContext:context takeOverTrigger:4];
      [(HMDResidentSelectionMode *)v28 setTakeOverInfo:delegate];
      goto LABEL_12;
    }

LABEL_13:
    v31 = 1;
    goto LABEL_14;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = selfCopy;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not allowing external update of primary resident because its an REV2 device.", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  delegate = [(HMDResidentSelectionMode *)v19 delegate];
  selectionTimestamp = [residentSelectionInfo selectionTimestamp];
  [(HMDResidentTakeOverInfo *)delegate primarySelectionMode:v19 reassertAsCurrentPrimaryWithSelectionTimestamp:selectionTimestamp];

LABEL_12:
  v31 = !v17;

LABEL_14:
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (unint64_t)_takeOverOnlyIfCurrentPrimaryIsNotViableJitter
{
  idsServerBag = [(HMDResidentSelectionMode *)self idsServerBag];
  residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter = [idsServerBag residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter];

  if (residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter)
  {
    unsignedIntValue = [residentSelectionTakeOverOnlyIfCurrentPrimaryIsNotViableJitter unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 60;
  }

  return unsignedIntValue;
}

- (double)_takeOverIfPrimaryIsNotViableInterval
{
  idsServerBag = [(HMDResidentSelectionMode *)self idsServerBag];
  residentSelectionTakeOverIfPrimaryIsNotViableInterval = [idsServerBag residentSelectionTakeOverIfPrimaryIsNotViableInterval];

  if (residentSelectionTakeOverIfPrimaryIsNotViableInterval)
  {
    [residentSelectionTakeOverIfPrimaryIsNotViableInterval doubleValue];
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
  context = [(HMDResidentSelectionMode *)self context];
  residentsPresentOnStatusKit = [context residentsPresentOnStatusKit];
  currentResidentDevice = [context currentResidentDevice];
  device = [currentResidentDevice device];
  idsIdentifier = [device idsIdentifier];
  v7 = [residentsPresentOnStatusKit containsObject:idsIdentifier];

  return v7;
}

- (void)configureAsAResidentWithRunPrimaryEvaluation:(BOOL)evaluation
{
  evaluationCopy = evaluation;
  v21 = *MEMORY[0x277D85DE8];
  context = [(HMDResidentSelectionMode *)self context];
  isActingAsResident = [context isActingAsResident];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (isActingAsResident)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 1024;
      v20 = evaluationCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring as a resident in the current mode. Run primary evaluation: %d", &v17, 0x12u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDResidentSelectionMode *)selfCopy scheduleDailyPreferredResidentsListRegenerationTask];
    [(HMDResidentSelectionMode *)selfCopy _updateLocalPreferredResidentsList];
    if (!evaluationCopy || (v12 = [[HMDResidentTakeOverInfo alloc] initWithContext:context takeOverTrigger:2], [(HMDResidentSelectionMode *)selfCopy setTakeOverInfo:v12], v12, ![(HMDResidentSelectionMode *)selfCopy takeOverIfPrimaryIsNotViableWithIsTimerTriggered:0]))
    {
      if (![(HMDResidentSelectionMode *)selfCopy _currentDevicePreferredResidentsListIsPublished])
      {
        delegate = [(HMDResidentSelectionMode *)selfCopy delegate];
        localPreferredResidentsList = [(HMDResidentSelectionMode *)selfCopy localPreferredResidentsList];
        [delegate primarySelectionMode:selfCopy didUpdatePreferredResidentsList:localPreferredResidentsList];
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
  context = [(HMDResidentSelectionMode *)self context];
  isActingAsResident = [context isActingAsResident];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (isActingAsResident)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Current device ready as a resident", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDResidentSelectionMode *)selfCopy _registerForMessagesAsAResident];
    [(HMDResidentSelectionMode *)selfCopy scheduleDailyPreferredResidentsListRegenerationTask];
    [(HMDResidentSelectionMode *)selfCopy _publishElectorsList];
    v10 = [[HMDResidentTakeOverInfo alloc] initWithContext:context takeOverTrigger:1];
    [(HMDResidentSelectionMode *)selfCopy setTakeOverInfo:v10];

    if (![(HMDResidentSelectionMode *)selfCopy takeOverIfPrimaryIsNotViableWithIsTimerTriggered:0])
    {
      delegate = [(HMDResidentSelectionMode *)selfCopy delegate];
      [delegate primarySelectionModeReadyAsResident:selfCopy];
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting.", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDResidentSelectionMode *)selfCopy _registerForMessagesAsAResident];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessagesAsAResident
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  context = [(HMDResidentSelectionMode *)self context];
  if ([context isActingAsResident])
  {
    v4 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v4 setRequiresSecureMessage:1];
    [v4 setRoles:{objc_msgSend(v4, "roles") | 4}];
    v5 = [v4 copy];
    home = [context home];
    v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];

    messageDispatcher = [context messageDispatcher];
    v15[0] = v5;
    v15[1] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [messageDispatcher registerForMessage:@"mesh.meshInformationRequest" receiver:self policies:v9 selector:sel_handleMeshInformationRequest_];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (HMDResidentSelectionMode)initWithContext:(id)context backgroundTaskManager:(id)manager
{
  contextCopy = context;
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = HMDResidentSelectionMode;
  v8 = [(HMDResidentSelectionMode *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_context, contextCopy);
    queue = [contextCopy queue];
    queue = v9->_queue;
    v9->_queue = queue;

    v12 = MEMORY[0x277CCACA8];
    home = [contextCopy home];
    uuid = [home uuid];
    v15 = [v12 stringWithFormat:@"resident.list.generation/%@", uuid];
    backgroundTaskIdentifier = v9->_backgroundTaskIdentifier;
    v9->_backgroundTaskIdentifier = v15;

    objc_storeStrong(&v9->_backgroundTaskManager, manager);
    v9->_primaryChangedReason = 0;
    home2 = [contextCopy home];
    homeManager = [home2 homeManager];
    idsServerBag = [homeManager idsServerBag];
    objc_storeWeak(&v9->_idsServerBag, idsServerBag);
  }

  return v9;
}

- (HMDResidentSelectionMode)initWithContext:(id)context
{
  contextCopy = context;
  v5 = +[HMDBackgroundTaskManager sharedManager];
  v6 = [(HMDResidentSelectionMode *)self initWithContext:contextCopy backgroundTaskManager:v5];

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