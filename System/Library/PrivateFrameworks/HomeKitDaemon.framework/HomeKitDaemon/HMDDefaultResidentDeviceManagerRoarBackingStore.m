@interface HMDDefaultResidentDeviceManagerRoarBackingStore
+ (id)logCategory;
- (BOOL)_addDeviceIdentifiersIfNecessary:(id)a3 fromResidentDevice:(id)a4;
- (BOOL)_shouldUpdateDeviceIdentifiersForResident:(id)a3 fromResidentDevice:(id)a4;
- (BOOL)hasAnyResident;
- (BOOL)hasResidentSelectionInfoUpdateInNotification:(id)a3;
- (BOOL)residentModel:(id)a3 isTheSameAs:(id)a4;
- (HMDAppleAccountManager)appleAccountManager;
- (HMDDefaultResidentDeviceManagerRoarBackingStore)initWithHome:(id)a3 appleAccountManager:(id)a4;
- (HMDHome)home;
- (HMDResidentDevice)_residentDeviceFromModel:(void *)a3 currentDevice:;
- (HMDResidentSelectionInfo)residentSelectionInfo;
- (id)_canonicalResidentSelectionModelForHome:(id)a3;
- (id)_deviceFromModel:(id)a3;
- (id)_deviceFromModel:(id)a3 currentDevice:(id)a4;
- (id)_deviceWithIdsDestination:(id)a3 fromAccount:(id)a4;
- (id)_deviceWithIdsIdentifier:(id)a3 fromAccount:(id)a4;
- (id)_handleRemovalOfResidentModel:(id)a3 currentResidents:(id)a4;
- (id)_residentSelectionModelFromManagedObject:(id)a3;
- (id)findResidents:(id)a3 outHasResidents:(BOOL *)a4;
- (id)handleCloudResidentChange:(id)a3 currentResidents:(id)a4 isCurrentDevicePrimaryResident:(BOOL)a5 currentDevice:(id)a6;
- (id)pruneDuplicateResidentModelsFrom:(id)a3;
- (id)residentsRequiringReachabilityUpdate:(id)a3;
- (void)_mapResidentsToMKFResidents:(id)a3 operation:(id)a4 finished:(id)a5;
- (void)_updateHasAnyResident;
- (void)_writeResidentSelectionInfoToWorkingStore;
- (void)handleHomeDataReadyAfterBecomingPrimary:(id)a3;
- (void)setHasAnyResident:(BOOL)a3;
- (void)updateIdentifiersForAvailableResidentDevices:(id)a3;
- (void)updateReachabilityForResidents:(id)a3;
- (void)updateResidentSelectionInfoTo:(id)a3 completion:(id)a4;
@end

@implementation HMDDefaultResidentDeviceManagerRoarBackingStore

- (HMDAppleAccountManager)appleAccountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_appleAccountManager);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)_canonicalResidentSelectionModelForHome:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 residentSelections];
  if ([v5 count])
  {
    v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_223837];
    v7 = [v5 firstObject];
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Resident Selection model is not present in the backing store.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __91__HMDDefaultResidentDeviceManagerRoarBackingStore__canonicalResidentSelectionModelForHome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 selectionTimestamp];
  v6 = [v4 selectionTimestamp];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)handleHomeDataReadyAfterBecomingPrimary:(id)a3
{
  [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self setAllowedToWriteResidentSelectionInfo:1];

  [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self _writeResidentSelectionInfoToWorkingStore];
}

- (void)_writeResidentSelectionInfoToWorkingStore
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self home];
  if ([v3 isCurrentDevicePrimaryResident] && -[HMDDefaultResidentDeviceManagerRoarBackingStore allowedToWriteResidentSelectionInfo](self, "allowedToWriteResidentSelectionInfo") && (-[HMDDefaultResidentDeviceManagerRoarBackingStore residentSelectionInfoToWrite](self, "residentSelectionInfoToWrite"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self residentSelectionInfoToWrite];
    v6 = [v3 backingStore];
    v7 = [v6 context];

    v8 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self residentSelectionInfoWriteCompletion];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __92__HMDDefaultResidentDeviceManagerRoarBackingStore__writeResidentSelectionInfoToWorkingStore__block_invoke;
    v19[3] = &unk_278688978;
    v19[4] = self;
    v20 = v5;
    v21 = v3;
    v22 = v7;
    v23 = v8;
    v9 = v8;
    v10 = v7;
    v11 = v5;
    [v10 performBlock:v19];
    [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self setResidentSelectionInfoToWrite:0];
    [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self setResidentSelectionInfoWriteCompletion:0];
  }

  else
  {
    v12 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self residentSelectionInfoToWrite];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v14 residentSelectionInfoToWrite];
        *buf = 138543874;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        v28 = 1024;
        v29 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v14 allowedToWriteResidentSelectionInfo];
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Not writing resident selection info:%@ to working store yet. Allowed to write: %d", buf, 0x1Cu);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __92__HMDDefaultResidentDeviceManagerRoarBackingStore__writeResidentSelectionInfoToWorkingStore__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v30 = 138543618;
    v31 = v5;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Writing resident selection info: %@ to working store.", &v30, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 48) uuid];
  v8 = [HMCContext findHomeWithModelID:v7];

  v9 = [*(a1 + 32) _canonicalResidentSelectionModelForHome:v8];
  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v30 = 138543618;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Creating new resident selection model with info: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 materializeOrCreateResidentSelectionsRelationWithModelID:v15 createdNew:0];
  }

  v16 = [v8 residentSelectionVersion];
  v17 = [v16 unsignedLongValue];

  if (v17 != 3)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating home model to indicate support for resident selection", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLong:3];
    [v8 setResidentSelectionVersion:v22];
  }

  v23 = [*(a1 + 40) preferredResidentIDSIdentifier];

  if (v23)
  {
    v24 = MEMORY[0x277CBEA60];
    v25 = [*(a1 + 40) preferredResidentIDSIdentifier];
    v23 = [v24 arrayWithObject:v25];
  }

  [v9 setPreferredResidentIDSIdentifiers:v23];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "currentModeType")}];
  [v9 setMode:v26];

  v27 = [*(a1 + 40) selectionTimestamp];
  [v9 setSelectionTimestamp:v27];

  [*(a1 + 56) save];
  v28 = *(a1 + 64);
  if (v28)
  {
    (*(v28 + 16))(v28, 0);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateResidentSelectionInfoTo:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Received updated resident selection info to write to working store: %@.", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v9 setResidentSelectionInfoToWrite:v6];
  [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v9 setResidentSelectionInfoWriteCompletion:v7];
  [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v9 _writeResidentSelectionInfoToWorkingStore];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasResidentSelectionInfoUpdateInNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_setForKey:*MEMORY[0x277CBE188]];

  v7 = [v4 userInfo];
  v8 = [v7 hmf_setForKey:*MEMORY[0x277CBE310]];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__223849;
  v18[4] = __Block_byref_object_dispose__223850;
  v19 = 0;
  v9 = [v8 setByAddingObjectsFromSet:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__HMDDefaultResidentDeviceManagerRoarBackingStore_hasResidentSelectionInfoUpdateInNotification___block_invoke;
  v17[3] = &unk_278681BC0;
  v17[4] = self;
  v17[5] = v18;
  v17[6] = &v20;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBE150]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__HMDDefaultResidentDeviceManagerRoarBackingStore_hasResidentSelectionInfoUpdateInNotification___block_invoke_55;
  v16[3] = &unk_278681BC0;
  v16[4] = self;
  v16[5] = v18;
  v16[6] = &v20;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];
  v14 = *(v21 + 24);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  return v14;
}

void __96__HMDDefaultResidentDeviceManagerRoarBackingStore_hasResidentSelectionInfoUpdateInNotification___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) _residentSelectionModelFromManagedObject:v5];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Resident selection info has updated in the working store.", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __96__HMDDefaultResidentDeviceManagerRoarBackingStore_hasResidentSelectionInfoUpdateInNotification___block_invoke_55(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
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

  v8 = [v7 castIfResidentSelection];

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 40) + 8) + 40);
  if (v11)
  {
    v12 = [v11 modelID];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Resident selection info got deleted from the working store.", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_residentSelectionModelFromManagedObject:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v7 = [v6 castIfResidentSelection];

  if (v7)
  {
    v8 = [v7 home];
    v9 = [v8 modelID];
    v10 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self home];
    v11 = [v10 uuid];
    v12 = [v9 isEqual:v11];

    if (v12)
    {
      v13 = v7;
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
        v23 = v7;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Ignoring resident selection model for another home: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMDResidentSelectionInfo)residentSelectionInfo
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self residentSelectionInfoToWrite];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v5 residentSelectionInfoToWrite];
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Getting resident selection info from cache: %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v5 residentSelectionInfoToWrite];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v17 = __Block_byref_object_copy__223849;
    v18 = __Block_byref_object_dispose__223850;
    v19 = 0;
    v10 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self home];
    v11 = [v10 backingStore];

    v12 = [v11 context];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__HMDDefaultResidentDeviceManagerRoarBackingStore_residentSelectionInfo__block_invoke;
    v15[3] = &unk_27868A688;
    v15[4] = self;
    v15[5] = buf;
    [v12 unsafeSynchronousBlock:v15];

    v9 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

void __72__HMDDefaultResidentDeviceManagerRoarBackingStore_residentSelectionInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v3 = [v2 uuid];
  v14 = [HMCContext findHomeWithModelID:v3];

  v4 = [*(a1 + 32) _canonicalResidentSelectionModelForHome:v14];
  v5 = [HMDResidentSelectionInfo alloc];
  v6 = [v4 preferredResidentIDSIdentifiers];
  v7 = [v6 firstObject];
  v8 = [v4 mode];
  v9 = [v8 unsignedIntegerValue];
  v10 = [v4 selectionTimestamp];
  v11 = [(HMDResidentSelectionInfo *)v5 initWithPreferredResidentIDSIdentifier:v7 currentResidentSelectionModeType:v9 selectionTimestamp:v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (id)residentsRequiringReachabilityUpdate:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v16 = 0;
    v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v16];
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__HMDDefaultResidentDeviceManagerRoarBackingStore_residentsRequiringReachabilityUpdate___block_invoke;
    v14[3] = &unk_278681B98;
    v15 = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__HMDDefaultResidentDeviceManagerRoarBackingStore_residentsRequiringReachabilityUpdate___block_invoke_2;
    v11[3] = &unk_27868A750;
    v12 = v16;
    v13 = v15;
    v7 = v15;
    [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self _mapResidentsToMKFResidents:v4 operation:v14 finished:v11];
  }

  else
  {
    v8 = MEMORY[0x277D0F7C0];
    v9 = [MEMORY[0x277CBEB98] set];
    v5 = [v8 futureWithValue:v9];
  }

  return v5;
}

void __88__HMDDefaultResidentDeviceManagerRoarBackingStore_residentsRequiringReachabilityUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [v9 isReachable];
    v7 = [v5 reachable];
    v8 = [v7 BOOLValue];

    if (v6 != v8)
    {
      [*(a1 + 32) addObject:v9];
    }
  }
}

void __88__HMDDefaultResidentDeviceManagerRoarBackingStore_residentsRequiringReachabilityUpdate___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 fulfillWithValue:v2];
}

- (void)updateReachabilityForResidents:(id)a3
{
  v4 = a3;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HMDDefaultResidentDeviceManagerRoarBackingStore_updateReachabilityForResidents___block_invoke;
  v6[3] = &unk_278681B70;
  v6[4] = self;
  v6[5] = v7;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__HMDDefaultResidentDeviceManagerRoarBackingStore_updateReachabilityForResidents___block_invoke_52;
  v5[3] = &unk_278686CC0;
  v5[4] = v7;
  [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self _mapResidentsToMKFResidents:v4 operation:v6 finished:v5];
  _Block_object_dispose(v7, 8);
}

void __82__HMDDefaultResidentDeviceManagerRoarBackingStore_updateReachabilityForResidents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 reachable];
  v8 = [v7 BOOLValue];

  if ((v5 != 0) != v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v6 name];
      v14 = [v5 identifier];
      v15 = HMFBooleanToString();
      v18 = 138544130;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating resident %@ %@ with reachability: %@", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v5 != 0];
    [v6 setReachable:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __82__HMDDefaultResidentDeviceManagerRoarBackingStore_updateReachabilityForResidents___block_invoke_52(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v2 = +[HMCContext currentContext];
    [v2 save];
  }
}

- (void)_mapResidentsToMKFResidents:(id)a3 operation:(id)a4 finished:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CBEB38];
  v11 = a3;
  v12 = [v10 dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __98__HMDDefaultResidentDeviceManagerRoarBackingStore__mapResidentsToMKFResidents_operation_finished___block_invoke;
  v24[3] = &unk_278685038;
  v13 = v12;
  v25 = v13;
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];

  v14 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self home];
  v15 = [v14 backingStore];
  v16 = [v15 context];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __98__HMDDefaultResidentDeviceManagerRoarBackingStore__mapResidentsToMKFResidents_operation_finished___block_invoke_2;
  v20[3] = &unk_278681B48;
  v20[4] = self;
  v21 = v13;
  v22 = v8;
  v23 = v9;
  v17 = v9;
  v18 = v8;
  v19 = v13;
  [v16 performBlock:v20];
}

void __98__HMDDefaultResidentDeviceManagerRoarBackingStore__mapResidentsToMKFResidents_operation_finished___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 device];
  v4 = [v3 idsIdentifier];

  if (v4)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }
}

void __98__HMDDefaultResidentDeviceManagerRoarBackingStore__mapResidentsToMKFResidents_operation_finished___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v3 = [v2 uuid];
  v4 = [HMCContext findHomeWithModelID:v3];

  v5 = [v4 residents];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__HMDDefaultResidentDeviceManagerRoarBackingStore__mapResidentsToMKFResidents_operation_finished___block_invoke_3;
  v11[3] = &unk_278681B20;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v6, v7, v8, v9);
  }
}

void __98__HMDDefaultResidentDeviceManagerRoarBackingStore__mapResidentsToMKFResidents_operation_finished___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 idsIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v7 idsIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateIdentifiersForAvailableResidentDevices:(id)a3
{
  v4 = a3;
  v5 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self home];
  v6 = [v5 backingStore];
  v7 = [v6 context];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __96__HMDDefaultResidentDeviceManagerRoarBackingStore_updateIdentifiersForAvailableResidentDevices___block_invoke;
  v10[3] = &unk_27868A010;
  v10[4] = self;
  v11 = v4;
  v12 = v7;
  v8 = v7;
  v9 = v4;
  [v8 performBlock:v10];
}

void __96__HMDDefaultResidentDeviceManagerRoarBackingStore_updateIdentifiersForAvailableResidentDevices___block_invoke(uint64_t a1)
{
  v1 = a1;
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 uuid];
  v4 = [HMCContext findHomeWithModelID:v3];

  v5 = [MEMORY[0x277CBEB98] setWithArray:*(v1 + 40)];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [v4 residents];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v7)
  {

    goto LABEL_24;
  }

  v8 = v7;
  v32 = v4;
  v33 = v6;
  v34 = 0;
  v9 = *v36;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v36 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v35 + 1) + 8 * i);
      v12 = [v11 device];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 idsIdentifier];
        if (v14)
        {
          v15 = v14;
          v16 = [v11 idsDestination];

          if (v16)
          {
            continue;
          }
        }

        else
        {
        }

        v17 = _findResidentMatching(v5, v11);
        v18 = v17;
        if (v17)
        {
          v19 = [v17 device];
          if (v19)
          {
            v20 = v19;
            v21 = v5;
            v22 = *(v1 + 32);
            [v18 device];
            v24 = v23 = v1;
            LODWORD(v22) = [v22 _shouldUpdateDeviceIdentifiersForResident:v11 fromResidentDevice:v24];

            if (v22)
            {
              v25 = *(v23 + 32);
              v26 = [v18 device];
              v34 |= [v25 _addDeviceIdentifiersIfNecessary:v11 fromResidentDevice:v26];
            }

            v1 = v23;
            v5 = v21;
            v6 = v33;
          }
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v35 objects:v41 count:16];
  }

  while (v8);

  v4 = v32;
  if (v34)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = *(v1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Saving on adding identifiers to resident", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    [*(v1 + 48) save];
  }

LABEL_24:

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)_addDeviceIdentifiersIfNecessary:(id)a3 fromResidentDevice:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMDDefaultResidentDeviceManagerRoarBackingStore *)self _shouldUpdateDeviceIdentifiersForResident:v6 fromResidentDevice:v7])
  {
    v8 = [v7 idsIdentifier];
    v9 = [v7 remoteDestinationString];
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (!v11)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v16;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Setting resident: %@ with device address identifiers", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [v6 setIdsDestination:v10];
      [v6 setIdsIdentifier:v8];
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_shouldUpdateDeviceIdentifiersForResident:(id)a3 fromResidentDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 idsIdentifier];
  v8 = [v6 remoteDestinationString];

  if (!v7)
  {
    if (!v8)
    {
      LOBYTE(v9) = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v6 = [v5 idsIdentifier];
  if (([v6 isEqual:v7] & 1) == 0)
  {
    LOBYTE(v9) = 1;
    goto LABEL_9;
  }

  if (v8)
  {
LABEL_6:
    v10 = [v5 idsDestination];
    v9 = [v10 isEqual:v8] ^ 1;

    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  LOBYTE(v9) = 0;
LABEL_9:

LABEL_10:
  return v9;
}

- (id)_handleRemovalOfResidentModel:(id)a3 currentResidents:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self residentDeviceByObjectID];
  v9 = [v6 modelID];
  v10 = [v8 objectForKey:v9];

  v11 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self residentDeviceByObjectID];
  v12 = [v6 modelID];
  [v11 removeObjectForKey:v12];

  os_unfair_lock_unlock(&self->_lock);
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v6 modelID];
    *buf = 138543874;
    v32 = v16;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Matched resident removal for modelID: %@ to pending removal for resident device: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  if (!v10)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __98__HMDDefaultResidentDeviceManagerRoarBackingStore__handleRemovalOfResidentModel_currentResidents___block_invoke;
    v29[3] = &unk_2786850E0;
    v18 = v6;
    v30 = v18;
    v10 = [v7 na_firstObjectPassingTest:v29];
    if (v10)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v14;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v22;
        v33 = 2112;
        v34 = v10;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Found matching HMDResidentDevice to remove: %@ from the list of residents in the home.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }

    else
    {

      v23 = objc_autoreleasePoolPush();
      v24 = v14;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v26;
        v33 = 2112;
        v34 = v18;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Notified of deleted resident model with no matching HMDResidentDevice: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v10 = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __98__HMDDefaultResidentDeviceManagerRoarBackingStore__handleRemovalOfResidentModel_currentResidents___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 device];
  v4 = [v3 idsIdentifier];
  v5 = [*(a1 + 32) idsIdentifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

- (id)handleCloudResidentChange:(id)a3 currentResidents:(id)a4 isCurrentDevicePrimaryResident:(BOOL)a5 currentDevice:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 object];
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

  v16 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self home];
  v17 = v15;
  v18 = v16;
  if (self && (+[HMDCoreData sharedInstance](HMDCoreData, "sharedInstance"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 isRelatedContext:v17], v19, v18) && (v20 & 1) != 0)
  {
    v58 = v12;
    v21 = [v17 name];
    v22 = [v18 uuid];
    v23 = HMDWorkingContextNameForHomeUUID(v22);
    v24 = [v21 isEqualToString:v23];

    if (v24)
    {
      v25 = [v11 mutableCopy];
      v53 = [MEMORY[0x277CBEB58] set];
      v56 = [MEMORY[0x277CBEB58] set];
      v75 = 0;
      v76 = &v75;
      v77 = 0x2020000000;
      v78 = 0;
      v26 = [v10 userInfo];
      v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277CBE188]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v55 = v28;

      v29 = [v10 userInfo];
      v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277CBE310]];

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

      v52 = v32;
      v33 = [v32 setByAddingObjectsFromSet:v55];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke;
      v67[3] = &unk_278681AA8;
      v67[4] = self;
      v34 = v18;
      v68 = v34;
      v73 = &v75;
      v35 = v25;
      v69 = v35;
      v74 = a5;
      v57 = v56;
      v70 = v57;
      v54 = v53;
      v71 = v54;
      v72 = v58;
      [v33 hmf_enumerateWithAutoreleasePoolUsingBlock:v67];

      v36 = [v10 userInfo];
      v37 = [v36 objectForKeyedSubscript:*MEMORY[0x277CBE150]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke_43;
      v63[3] = &unk_278681AD0;
      v66 = &v75;
      v63[4] = self;
      v40 = v11;
      v64 = v40;
      v41 = v35;
      v65 = v41;
      v51 = v39;
      [v39 hmf_enumerateWithAutoreleasePoolUsingBlock:v63];
      if ([v57 count])
      {
        v42 = [v34 backingStore];
        v43 = [v42 context];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke_2;
        v60[3] = &unk_27868A750;
        v61 = v57;
        v62 = self;
        [v43 performBlock:v60];
      }

      if (*(v76 + 24) == 1)
      {
        v44 = [v34 backingStore];
        v45 = [v44 context];
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke_46;
        v59[3] = &unk_27868A728;
        v59[4] = self;
        [v45 performBlock:v59];
      }

      v46 = [HMDBackingStoreResidentUpdateResult alloc];
      v47 = [v40 hmf_addedObjectsFromSet:v41];
      v48 = [v40 hmf_removedObjectsFromSet:v41];
      v49 = [(HMDBackingStoreResidentUpdateResult *)v46 initWithAddedResidentDevices:v47 deletedResidentDevices:v48 reachabilityUpdates:v54];

      _Block_object_dispose(&v75, 8);
    }

    else
    {
      v49 = 0;
    }

    v12 = v58;
  }

  else
  {

    v49 = 0;
  }

  return v49;
}

void __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke(uint64_t a1, void *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  if (v5)
  {
    v8 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = [v10 castIfResident];

    if (v11)
    {
      v12 = [v11 home];
      v13 = [v12 modelID];
      v14 = [v7 uuid];
      v15 = [v13 isEqual:v14];

      if (v15)
      {
        v16 = v11;
      }

      else
      {
        v17 = objc_autoreleasePoolPush();
        v18 = v5;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v82 = v20;
          v83 = 2112;
          v84 = v11;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Ignoring resident model with invalid home: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v21 = [v16 modelID];

    if (!v21)
    {
      v67 = objc_autoreleasePoolPush();
      v68 = *(a1 + 32);
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
      {
        v70 = HMFGetLogIdentifier();
        v71 = [v16 debugDescription];
        *buf = 138543618;
        v82 = v70;
        v83 = 2112;
        v84 = v71;
        _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Model ID is nil for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v67);
      v72 = [HMDAssertionLogEvent alloc];
      v73 = [v16 debugDescription];
      v74 = [(HMDAssertionLogEvent *)v72 initWithReason:@"Model ID is nil for %@", v73];

      v75 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v75 submitLogEvent:v74];
    }

    v22 = [v16 modelID];
    v23 = v22 == 0;

    if (!v23)
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
      v24 = _findResidentMatching(*(a1 + 48), v16);
      if (v24)
      {
        v25 = objc_autoreleasePoolPush();
        v26 = *(a1 + 32);
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = HMFGetLogIdentifier();
          v29 = [v16 debugDescription];
          *buf = 138543874;
          v82 = v28;
          v83 = 2112;
          v84 = v29;
          v85 = 2112;
          v86 = v24;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Found existing resident device for model %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v25);
        v30 = [v16 reachable];
        v31 = [v30 BOOLValue];
        v32 = [v24 isReachable];

        if (v31 != v32)
        {
          if (*(a1 + 88) == 1)
          {
            v33 = *(a1 + 56);
            v34 = [v16 databaseID];
            [v33 addObject:v34];
          }

          else
          {
            [*(a1 + 64) addObject:v24];
          }
        }

        v41 = [v16 residentCapabilities];

        if (v41)
        {
          v42 = [v16 residentCapabilities];
          [v24 _updateRawCapabilities:v42];
        }

        v43 = [v16 idsIdentifier];
        if (v43)
        {
          v44 = [v16 idsDestination];
          v45 = v44 == 0;

          if (!v45)
          {
            v46 = [HMDDeviceAddress alloc];
            v47 = [v16 idsIdentifier];
            v48 = [v16 idsDestination];
            v49 = [(HMDDeviceAddress *)v46 initWithIDSIdentifier:v47 idsDestination:v48];

            [v24 _updateMessageAddress:v49];
          }
        }

        v50 = [v16 deviceIRKData];

        if (v50)
        {
          v51 = [v16 deviceIRKData];
          [v24 updateDeviceIRKData:v51];
        }
      }

      else
      {
        v24 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)*(a1 + 32) _residentDeviceFromModel:v16 currentDevice:*(a1 + 72)];
        v35 = objc_autoreleasePoolPush();
        v36 = *(a1 + 32);
        v37 = HMFGetOSLogHandle();
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          if (v38)
          {
            v39 = HMFGetLogIdentifier();
            v40 = [v16 debugDescription];
            *buf = 138543874;
            v82 = v39;
            v83 = 2112;
            v84 = v40;
            v85 = 2112;
            v86 = v24;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Created new resident device for model %@: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v35);
          [*(a1 + 48) addObject:v24];
        }

        else
        {
          if (v38)
          {
            v52 = HMFGetLogIdentifier();
            v53 = [v16 debugDescription];
            *buf = 138543618;
            v82 = v52;
            v83 = 2112;
            v84 = v53;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@No resident device is created for model: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v35);
          v24 = 0;
        }
      }

      if (*(a1 + 88) == 1)
      {
        v54 = *(a1 + 32);
        v55 = [v24 device];
        LODWORD(v54) = [v54 _shouldUpdateDeviceIdentifiersForResident:v16 fromResidentDevice:v55];

        if (v54)
        {
          v56 = [*(a1 + 32) home];
          v57 = [v56 backingStore];
          v58 = [v57 context];

          v59 = [v16 databaseID];
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke_41;
          v76[3] = &unk_2786891E0;
          v60 = *(a1 + 32);
          v77 = v59;
          v78 = v60;
          v79 = v24;
          v80 = v58;
          v61 = v58;
          v62 = v59;
          [v61 performBlock:v76];
        }
      }

      v63 = *(a1 + 32);
      os_unfair_lock_lock_with_options();
      v64 = [*(a1 + 32) residentDeviceByObjectID];
      v65 = [v16 modelID];
      [v64 setObject:v24 forKey:v65];

      os_unfair_lock_unlock(v63 + 2);
    }
  }

  v66 = *MEMORY[0x277D85DE8];
}

void __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke_43(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 castIfResident];

  if (v5)
  {
    v6 = [v5 modelID];

    if (v6)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v7 = [*(a1 + 32) _handleRemovalOfResidentModel:v5 currentResidents:*(a1 + 40)];
      if (v7)
      {
        [*(a1 + 48) removeObject:v7];
      }
    }
  }
}

void __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke_3;
  v3[3] = &unk_278681AF8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  [v1 hmf_enumerateWithAutoreleasePoolUsingBlock:v3];
  v2 = +[HMCContext currentContext];
  [v2 save];
}

void __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [HMCContext findResidentWithDatabaseID:v3];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [v4 reachable];
    v8 = [v6 numberWithInt:{objc_msgSend(v7, "BOOLValue") ^ 1}];
    [v5 setReachable:v8];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v5 reachable];
      v15 = 138543874;
      v16 = v12;
      v17 = 1024;
      v18 = [v13 intValue];
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating reachability to '%d' for HMDResidentDevice: %@", &v15, 0x1Cu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDResidentDevice)_residentDeviceFromModel:(void *)a3 currentDevice:
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 _deviceFromModel:v5 currentDevice:v6];
    if (v7)
    {
      v8 = [v5 appleMediaAccessory];

      v9 = objc_autoreleasePoolPush();
      v10 = a1;
      v11 = HMFGetOSLogHandle();
      v12 = v11;
      if (v8)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v30 = 138543618;
          v31 = v13;
          v32 = 2112;
          v33 = v7;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Create resident device using %@", &v30, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        v14 = [HMDResidentDevice alloc];
        v15 = [v10 home];
        v16 = [v5 name];
        v17 = [v5 residentCapabilities];
        v18 = [v7 deviceAddress];
        v19 = [v5 deviceIRKData];
        v20 = [(HMDResidentDevice *)v14 initWithDevice:v7 home:v15 name:v16 rawCapabilities:v17 messageAddress:v18 deviceIRKData:v19];

        v21 = [v5 reachable];
        -[HMDResidentDevice setReachable:](v20, "setReachable:", [v21 BOOLValue]);

        goto LABEL_14;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v27;
        v32 = 2112;
        v33 = v5;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Skip creating resident. Model does not have a valid accessory: %@", &v30, 0x16u);
      }

      v26 = v9;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = a1;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        v30 = 138543362;
        v31 = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@No device found for this model", &v30, 0xCu);
      }

      v26 = v22;
    }

    objc_autoreleasePoolPop(v26);
    v20 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v20 = 0;
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

void __139__HMDDefaultResidentDeviceManagerRoarBackingStore_handleCloudResidentChange_currentResidents_isCurrentDevicePrimaryResident_currentDevice___block_invoke_41(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [HMCContext findResidentWithDatabaseID:*(a1 + 32)];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) device];
    LODWORD(v3) = [v3 _addDeviceIdentifiersIfNecessary:v2 fromResidentDevice:v4];

    if (v3)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 40);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [v2 modelID];
        v16 = 138543618;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Saving resident: %@ with added device address identifiers", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [*(a1 + 56) save];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Did not find resident %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)residentModel:(id)a3 isTheSameAs:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 modelID];
  v8 = [v6 modelID];
  if ([v7 isEqual:v8])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v5 idsIdentifier];
    v11 = [v6 idsIdentifier];
    v9 = [v10 isEqual:v11];
  }

  return v9;
}

- (id)pruneDuplicateResidentModelsFrom:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __84__HMDDefaultResidentDeviceManagerRoarBackingStore_pruneDuplicateResidentModelsFrom___block_invoke;
  v23[3] = &unk_278681A58;
  v23[4] = self;
  [v5 sortUsingComparator:v23];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__223849;
  v21[4] = __Block_byref_object_dispose__223850;
  v22 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HMDDefaultResidentDeviceManagerRoarBackingStore_pruneDuplicateResidentModelsFrom___block_invoke_31;
  v17[3] = &unk_278681A80;
  v17[4] = self;
  v20 = v21;
  v8 = v7;
  v18 = v8;
  v9 = v6;
  v19 = v9;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v17];
  if ([v8 count])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v13;
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Duplicate MKFResident models are present in the working store: %{public}@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = [MEMORY[0x277CBEA60] arrayWithArray:v9];

  _Block_object_dispose(v21, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __84__HMDDefaultResidentDeviceManagerRoarBackingStore_pruneDuplicateResidentModelsFrom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) residentModel:v5 isTheSameAs:v6])
  {
    v7 = [v5 appleMediaAccessory];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 appleMediaAccessory];

      if (!v9)
      {
        v14 = -1;
        goto LABEL_9;
      }
    }

    v10 = [v5 appleMediaAccessory];
    if (v10)
    {
    }

    else
    {
      v16 = [v6 appleMediaAccessory];

      if (v16)
      {
        v14 = 1;
        goto LABEL_9;
      }
    }

    v11 = [v5 modelID];
    v12 = [v6 modelID];
  }

  else
  {
    v11 = [v5 idsIdentifier];
    v12 = [v6 idsIdentifier];
  }

  v13 = v12;
  v14 = [v11 compare:v12];

LABEL_9:
  return v14;
}

void __84__HMDDefaultResidentDeviceManagerRoarBackingStore_pruneDuplicateResidentModelsFrom___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v7 = a2;
  v5 = [v3 residentModel:v7 isTheSameAs:v4];
  v6 = 48;
  if (v5)
  {
    v6 = 40;
  }

  [*(a1 + v6) addObject:v7];
}

- (id)findResidents:(id)a3 outHasResidents:(BOOL *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self home];
  v9 = [v8 backingStore];

  v10 = [v9 context];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __81__HMDDefaultResidentDeviceManagerRoarBackingStore_findResidents_outHasResidents___block_invoke;
  v18 = &unk_278685330;
  v19 = self;
  v20 = v6;
  v21 = v7;
  v22 = a4;
  v11 = v7;
  v12 = v6;
  [v10 unsafeSynchronousBlock:&v15];

  v13 = [v11 copy];

  return v13;
}

void __81__HMDDefaultResidentDeviceManagerRoarBackingStore_findResidents_outHasResidents___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 uuid];
  v4 = [HMCContext findHomeWithModelID:v3];

  v5 = *(a1 + 32);
  v6 = [v4 residents];
  v7 = [v5 pruneDuplicateResidentModelsFrom:v6];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__HMDDefaultResidentDeviceManagerRoarBackingStore_findResidents_outHasResidents___block_invoke_2;
  v18[3] = &unk_278681A30;
  v8 = *(a1 + 56);
  v17 = *(a1 + 32);
  v9 = *(&v17 + 1);
  *&v10 = *(a1 + 48);
  *(&v10 + 1) = v8;
  v19 = v17;
  v20 = v10;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = *(a1 + 48);
    *buf = 138543874;
    v22 = v14;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Created resident devices: %{public}@ from models: %{public}@.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = *MEMORY[0x277D85DE8];
}

void __81__HMDDefaultResidentDeviceManagerRoarBackingStore_findResidents_outHasResidents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  if (v4)
  {
    *v4 = 1;
  }

  v12 = v3;
  v5 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)*(a1 + 32) _residentDeviceFromModel:v3 currentDevice:*(a1 + 40)];
  if (v5)
  {
    [*(a1 + 48) addObject:v5];
    v6 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v7 = [*(a1 + 32) residentDeviceByObjectID];
    v8 = [v12 modelID];
    v9 = [v7 objectForKey:v8];

    if (!v9)
    {
      v10 = [*(a1 + 32) residentDeviceByObjectID];
      v11 = [v12 modelID];
      [v10 setObject:v5 forKey:v11];
    }

    os_unfair_lock_unlock(v6 + 2);
  }
}

- (void)_updateHasAnyResident
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self home];
  v4 = [v3 uuid];

  if (v4)
  {
    v5 = [HMCContext findHomeWithModelID:v4];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [v5 residents];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 appleMediaAccessory];
          if (v13)
          {
            v14 = [v12 idsIdentifier];
            v15 = v14 != 0;

            v9 |= v15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & 1) != [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self hasAnyResident])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        v20 = HMFBooleanToString();
        *buf = 138543618;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Updating hasAnyResident to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      [(HMDDefaultResidentDeviceManagerRoarBackingStore *)v17 setHasAnyResident:v9 & 1];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setHasAnyResident:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasAnyResident = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasAnyResident
{
  os_unfair_lock_lock_with_options();
  hasAnyResident = self->_hasAnyResident;
  os_unfair_lock_unlock(&self->_lock);
  return hasAnyResident;
}

- (id)_deviceFromModel:(id)a3 currentDevice:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7 && _isMKFResidentCurrentDevice(v6))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Using current device: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    logger = v9->_logger;
    if (os_signpost_enabled(logger))
    {
      LOWORD(v20) = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HH2CurrentDeviceResidentDeviceCreated", "", &v20, 2u);
    }

    v13 = v7;
  }

  else
  {
    v13 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self _deviceFromModel:v6];
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v17;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Using device: %@ from account for model: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_deviceFromModel:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self appleAccountManager];
  v6 = [v4 idsIdentifier];
  v7 = [v4 idsDestination];
  v8 = [HMDDeviceAddress addressWithIDSIdentifier:v6 idsDestination:v7];

  if (v8 && ([v5 accountRegistry], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "deviceForAddress:", v8), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    v11 = v10;
  }

  else
  {
    v12 = [v5 account];
    v13 = [v4 idsIdentifier];

    if (v13)
    {
      v14 = [v4 idsIdentifier];
      v15 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self _deviceWithIdsIdentifier:v14 fromAccount:v12];

      if (v15)
      {
        goto LABEL_8;
      }
    }

    v16 = [v4 idsDestination];

    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = [v4 idsDestination];
    v15 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)self _deviceWithIdsDestination:v17 fromAccount:v12];

    if (v15)
    {
LABEL_8:
      v11 = v15;
    }

    else
    {
LABEL_9:
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v24 = 138543874;
        v25 = v21;
        v26 = 2112;
        v27 = v4;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the device for model: %@ from account: %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v11 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_deviceWithIdsDestination:(id)a3 fromAccount:(id)a4
{
  v5 = a4;
  v6 = [HMDDeviceHandle deviceHandleForDestination:a3];
  if (v6)
  {
    v7 = [v5 deviceForHandle:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_deviceWithIdsIdentifier:(id)a3 fromAccount:(id)a4
{
  v5 = a4;
  v6 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:a3];
  if (v6)
  {
    v7 = [v5 deviceForHandle:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMDDefaultResidentDeviceManagerRoarBackingStore)initWithHome:(id)a3 appleAccountManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = HMDDefaultResidentDeviceManagerRoarBackingStore;
  v8 = [(HMDDefaultResidentDeviceManagerRoarBackingStore *)&v24 init];
  if (v8)
  {
    v9 = HMFGetOSLogHandle();
    logger = v8->_logger;
    v8->_logger = v9;

    objc_storeWeak(&v8->_home, v6);
    objc_storeWeak(&v8->_appleAccountManager, v7);
    v11 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    residentDeviceByObjectID = v8->_residentDeviceByObjectID;
    v8->_residentDeviceByObjectID = v11;

    v13 = [v6 uuid];
    v14 = [v13 UUIDString];
    logIdentifier = v8->_logIdentifier;
    v8->_logIdentifier = v14;

    v16 = [v6 backingStore];
    v17 = [v16 context];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __84__HMDDefaultResidentDeviceManagerRoarBackingStore_initWithHome_appleAccountManager___block_invoke;
    v22[3] = &unk_27868A728;
    v18 = v8;
    v23 = v18;
    [v17 unsafeSynchronousBlock:v22];

    residentSelectionInfoToWrite = v18->_residentSelectionInfoToWrite;
    v18->_residentSelectionInfoToWrite = 0;

    v18->_allowedToWriteResidentSelectionInfo = 0;
    residentSelectionInfoWriteCompletion = v18->_residentSelectionInfoWriteCompletion;
    v18->_residentSelectionInfoWriteCompletion = 0;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t50_223909 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50_223909, &__block_literal_global_59_223910);
  }

  v3 = logCategory__hmf_once_v51_223911;

  return v3;
}

void __62__HMDDefaultResidentDeviceManagerRoarBackingStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v51_223911;
  logCategory__hmf_once_v51_223911 = v1;
}

@end