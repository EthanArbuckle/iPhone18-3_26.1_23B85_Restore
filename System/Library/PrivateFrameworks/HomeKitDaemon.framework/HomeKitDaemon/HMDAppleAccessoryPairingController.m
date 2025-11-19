@interface HMDAppleAccessoryPairingController
+ (id)logCategory;
- (BOOL)handleMessage:(id)a3 from:(id)a4;
- (BOOL)pairAccessory:(id)a3;
- (HMDAppleAccessoryPairingController)initWithHomeManager:(id)a3 dataSource:(id)a4;
- (HMDHomeManager)homeManager;
- (id)cleanUpBadHomeManagerRecordsForHomeManager:(id)a3;
- (void)generateModelChangesForHomeManager:(id)a3 homeName:(id)a4 pairingHomeUUID:(id)a5 defaultRoomUUID:(id)a6 homeZoneUUID:(id)a7 accessory:(id)a8 outBlobChanges:(id *)a9 outLegacyChanges:(id *)a10 outHomeManagerChanges:(id *)a11;
- (void)removeControllerForZone:(id)a3;
- (void)start;
@end

@implementation HMDAppleAccessoryPairingController

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)removeControllerForZone:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDAppleAccessoryPairingController *)self pairingHomes];
  v5 = [v4 objectForKey:v11];

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = [(HMDAppleAccessoryPairingController *)self dataSource];
    v7 = [v5 state];
    v8 = [v7 accessory];
    v9 = [v8 uuid];
    [v6 deletePairingAccessoryState:v9];

    os_unfair_lock_lock_with_options();
    v10 = [(HMDAppleAccessoryPairingController *)self pairingHomes];
    [v10 removeObjectForKey:v11];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)generateModelChangesForHomeManager:(id)a3 homeName:(id)a4 pairingHomeUUID:(id)a5 defaultRoomUUID:(id)a6 homeZoneUUID:(id)a7 accessory:(id)a8 outBlobChanges:(id *)a9 outLegacyChanges:(id *)a10 outHomeManagerChanges:(id *)a11
{
  v101 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v93 = a4;
  v18 = a5;
  v92 = a6;
  v91 = a7;
  v90 = a8;
  v19 = [(HMDAppleAccessoryPairingController *)self homeManagerZone];
  v20 = [v17 uuid];
  v94 = 0;
  v21 = [v19 fetchModelWithModelID:v20 ofType:+[HMDLegacyV4Model hmbModelClassForHMDModelClass:](HMDLegacyV4Model error:{"hmbModelClassForHMDModelClass:", objc_opt_class()), &v94}];
  v89 = v94;

  if (!v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v98 = v25;
      v99 = 2112;
      v100 = v89;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Error fetching home manager model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v86 = v21;
  v26 = [v21 convertToHMDModelObject];
  if (!v26)
  {
    v27 = [HMDHomeManagerModel alloc];
    v28 = [v17 uuid];
    v29 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
    v26 = [(HMDBackingStoreModelObject *)v27 initWithUUID:v28 parentUUID:v29];

    v30 = [(HMDAppleAccessoryPairingController *)self dataSource];
    v31 = [v30 hh1ControllerIdentity];
    v32 = [v31 identifier];
    [(HMDHomeManagerModel *)v26 setControllerKeyIdentifier:v32];

    v33 = [v18 UUIDString];
    [(HMDHomeManagerModel *)v26 setPrimaryHomeUUID:v33];
  }

  v34 = [HMDUser alloc];
  v35 = +[HMDAppleAccountManager sharedManager];
  v36 = [v35 account];
  v37 = [v36 primaryHandle];
  v38 = [(HMDAppleAccessoryPairingController *)self dataSource];
  v39 = [v38 hh1ControllerIdentity];
  v79 = self;
  v40 = [(HMDUser *)v34 initWithAccountHandle:v37 homeUUID:v18 pairingIdentity:v39 privilege:3];

  v41 = [HMDHome alloc];
  v42 = objc_alloc_init(HMDHomeDefaultDataSource);
  v87 = v18;
  v88 = v17;
  v43 = [(HMDHome *)v41 initWithName:v93 uuid:v18 defaultRoomUUID:v92 owner:v40 homeManager:v17 presenceAuth:0 dataSource:v42];

  v44 = [HMDCloudZoneInformation alloc];
  v45 = [(HMDUser *)v40 pairingUsername];
  v46 = [(HMDCloudZoneInformation *)v44 initWithOwnerName:v45 uuid:v91];

  [(HMDCloudZoneInformation *)v46 setFetchFailed:0];
  [(HMDCloudZoneInformation *)v46 setFirstFetch:0];
  [(HMDCloudZoneInformation *)v46 setZoneCreated:1];
  v47 = [(HMDHomeManagerModel *)v26 cloudZoneInformation];
  v48 = [HMDCloudZoneInformation cloudZonesWithDictionary:v47];

  v82 = v46;
  [v48 addObject:v46];
  v49 = v48;
  v50 = [HMDCloudZoneInformation cloudZoneInformationWithCloudZones:v48];
  [(HMDHomeManagerModel *)v26 setCloudZoneInformation:v50];

  v51 = [HMDCloudZoneInformationModel alloc];
  v85 = v26;
  v52 = [(HMDBackingStoreModelObject *)v26 uuid];
  v53 = [(HMDBackingStoreModelObject *)v51 initWithUUID:v91 parentUUID:v52];

  v84 = v40;
  v54 = [(HMDUser *)v40 pairingUsername];
  v83 = v53;
  [(HMDCloudZoneInformationModel *)v53 setOwnerName:v54];

  v55 = [(HMDAppleAccessoryPairingController *)v79 homeData];
  v56 = [v55 homes];
  v57 = [v56 mutableCopy];
  v58 = v57;
  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = [MEMORY[0x277CBEB18] array];
  }

  v60 = v59;

  [v60 addObject:v43];
  v61 = [(HMDAppleAccessoryPairingController *)v79 homeData];
  [v61 setHomes:v60];

  v62 = [(HMDAppleAccessoryPairingController *)v79 homeData];
  v81 = v49;
  [v62 setCloudZones:v49];

  v63 = [(HMDHome *)v43 backingStoreObjects:4];
  v64 = [v63 mutableCopy];

  v65 = [v90 addTransactionForHome:v43];
  [v64 addObject:v65];

  v66 = [(HMDAppleAccessoryPairingController *)v79 homeData];
  v67 = [HMDPersistentStore serializeHomeData:v66 localStorage:0 remoteDeviceOnSameAccount:1];

  v68 = objc_alloc_init(HMDLegacyV3Model);
  [(HMDLegacyV3Model *)v68 setCloudBlob:v67];
  v69 = objc_alloc_init(HMDLegacyV0Model);
  [(HMDLegacyV0Model *)v69 setCloudBlob:v67];
  [(HMDLegacyV0Model *)v69 setCloudBlobV2:v67];
  [(HMDLegacyV0Model *)v69 setCloudBlobsReadOnly:MEMORY[0x277CBEC38]];
  v80 = v43;
  v70 = MEMORY[0x277CBEB98];
  v96[0] = v69;
  v96[1] = v68;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:2];
  *a9 = [v70 setWithArray:v71];

  v72 = MEMORY[0x277CBEB98];
  v73 = [v64 na_map:&__block_literal_global_48];
  *a10 = [v72 setWithArray:v73];

  v74 = MEMORY[0x277CBEB98];
  v75 = [(HMDBackingStoreModelObject *)v85 convertToLegacyV4];
  v95[0] = v75;
  v76 = [(HMDBackingStoreModelObject *)v83 convertToLegacyV4];
  v95[1] = v76;
  v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
  *a11 = [v74 setWithArray:v77];

  v78 = *MEMORY[0x277D85DE8];
}

- (id)cleanUpBadHomeManagerRecordsForHomeManager:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAppleAccessoryPairingController *)self homeManagerZone];
  v6 = [v4 uuid];
  v23 = 0;
  v7 = [v5 fetchModelWithModelID:v6 ofType:+[HMDLegacyV4Model hmbModelClassForHMDModelClass:](HMDLegacyV4Model error:{"hmbModelClassForHMDModelClass:", objc_opt_class()), &v23}];
  v8 = v23;

  if (v7)
  {
    v9 = [v7 hmbParentModelID];
    v10 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
    v11 = [v9 hmf_isEqualToUUID:v10];

    if (!v11)
    {
      v12 = [(HMDAppleAccessoryPairingController *)self homeManagerZone];
      v13 = [v7 hmbParentModelID];
      v14 = [MEMORY[0x277D17108] optionsWithLabel:@"Legacy Pairing Home Manager Record Cleanup"];
      v15 = [v12 removeModelsWithParentModelID:v13 options:v14];

      v16 = [v15 flatMap:&__block_literal_global_47987];

      goto LABEL_8;
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
      *buf = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error fetching existing home manager model for cleanup: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v16 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_8:

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

id __81__HMDAppleAccessoryPairingController_cleanUpBadHomeManagerRecordsForHomeManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 mirrorOutputResult];

  if (v3)
  {
    v4 = [v2 mirrorOutputResult];
    v5 = [v4 flatMap:&__block_literal_global_35];
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v5;
}

- (BOOL)pairAccessory:(id)a3
{
  v115 = *MEMORY[0x277D85DE8];
  v89 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v89;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Starting legacy pairing for accessory: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v90 = [(HMDAppleAccessoryPairingController *)v5 legacyCloudDatabase];
  if (v90)
  {
    v8 = [(HMDAppleAccessoryPairingController *)v5 homeManagerZone];
    v9 = v8 == 0;

    if (v9)
    {
      v16 = [(HMDAppleAccessoryPairingController *)v5 dataSource];
      v17 = [v16 hh1ControllerIdentity];
      v104 = 0;
      v18 = [v90 createLegacyZone:@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5" controllerIdentity:v17 delegate:0 error:&v104];
      v10 = v104;
      [(HMDAppleAccessoryPairingController *)v5 setHomeManagerZone:v18];

      v19 = [(HMDAppleAccessoryPairingController *)v5 homeManagerZone];
      LODWORD(v18) = v19 == 0;

      if (v18)
      {
        v72 = objc_autoreleasePoolPush();
        v73 = v5;
        v74 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v75 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v75;
          *&buf[12] = 2112;
          *&buf[14] = @"1411CE6C-B4DE-4622-A49D-F66FE296D6B5";
          *&buf[22] = 2112;
          v112 = v10;
          _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@Unable to create legacy zone %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v72);
        v15 = 0;
        goto LABEL_45;
      }

      v20 = [(HMDAppleAccessoryPairingController *)v5 homeManagerZone];
      [v20 startUp];
    }

    else
    {
      v10 = 0;
    }

    v21 = [(HMDAppleAccessoryPairingController *)v5 blobZone];
    v22 = v21 == 0;

    if (v22)
    {
      v24 = [(HMDAppleAccessoryPairingController *)v5 dataSource];
      v25 = [v24 hh1ControllerIdentity];
      v103 = v10;
      v26 = [v90 createLegacyZone:@"HomeDataBlobZone" controllerIdentity:v25 delegate:0 error:&v103];
      v23 = v103;

      [(HMDAppleAccessoryPairingController *)v5 setBlobZone:v26];
      v27 = [(HMDAppleAccessoryPairingController *)v5 blobZone];
      LODWORD(v26) = v27 == 0;

      if (v26)
      {
        v76 = objc_autoreleasePoolPush();
        v77 = v5;
        v78 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v79;
          *&buf[12] = 2112;
          *&buf[14] = @"1411CE6C-B4DE-4622-A49D-F66FE296D6B5";
          *&buf[22] = 2112;
          v112 = v23;
          _os_log_impl(&dword_229538000, v78, OS_LOG_TYPE_ERROR, "%{public}@Unable to create legacy zone %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v76);
        v15 = 0;
        goto LABEL_44;
      }

      v28 = [(HMDAppleAccessoryPairingController *)v5 blobZone];
      [v28 startUp];
    }

    else
    {
      v23 = v10;
    }

    v84 = [MEMORY[0x277CCAD78] UUID];
    v81 = [MEMORY[0x277CCAD78] UUID];
    v83 = [HMDHome zoneIDFromHomeUUID:v84];
    v86 = [v83 UUIDString];
    v82 = [HMDLegacyCloudDatabase recordZoneIDForLegacyName:v86];
    v29 = objc_alloc(MEMORY[0x277D17070]);
    v30 = [v90 containerID];
    v85 = [v29 initWithContainerID:v30 scope:2 zoneID:v82];

    v88 = [[HMDAppleAccessoryPairingHomeState alloc] initWithCloudZoneID:v85 accessory:v89];
    v87 = [(HMDAppleAccessoryPairingController *)v5 homeManager];
    v31 = [(HMDAppleAccessoryPairingController *)v5 dataSource];
    [v31 updatePairingAccessoryState:v88];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v112 = __Block_byref_object_copy__48000;
    v113 = __Block_byref_object_dispose__48001;
    v32 = [HMDAppleAccessoryPairingHomeController alloc];
    v33 = [(HMDAppleAccessoryPairingController *)v5 dataSource];
    v114 = [(HMDAppleAccessoryPairingHomeController *)v32 initWithState:v88 homeManager:v87 dataSource:v33];

    os_unfair_lock_lock_with_options();
    v34 = [(HMDAppleAccessoryPairingController *)v5 pairingHomes];
    v35 = [v34 allValues];
    v36 = [v35 copy];

    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke;
    v100[3] = &unk_2786734B8;
    v80 = v89;
    v101 = v80;
    v102 = buf;
    [v36 hmf_enumerateWithAutoreleasePoolUsingBlock:v100];
    v37 = *(*&buf[8] + 40);
    if (v37)
    {
      v38 = [(HMDAppleAccessoryPairingController *)v5 pairingHomes];
      [v38 setObject:*(*&buf[8] + 40) forKey:v85];
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      v40 = v5;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [v80 uuid];
        *v105 = 138543618;
        v106 = v42;
        v107 = 2112;
        v108 = v43;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@A pairing controller for accessory %@ already exists.", v105, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
    }

    os_unfair_lock_unlock(&v5->_lock);
    if (v37)
    {
      v44 = [(HMDAppleAccessoryPairingController *)v5 dataSource];
      v45 = [v44 hh1ControllerIdentity];
      v99 = v23;
      v46 = [v90 createLegacyZone:v86 controllerIdentity:v45 delegate:0 error:&v99];
      v47 = v99;

      v15 = v46 != 0;
      if (v46)
      {
        [*(*&buf[8] + 40) startWithLocalZone:v46];
        v48 = [MEMORY[0x277CBEB18] array];
        v49 = [(HMDAppleAccessoryPairingController *)v5 blobZone];
        v50 = [v49 mirror];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v51 = v50;
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;

        v53 = [v52 startUp];

        if (v53)
        {
          [v48 addObject:v53];
        }

        v54 = [(HMDAppleAccessoryPairingController *)v5 homeManagerZone];
        v55 = [v54 mirror];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v57 = v56;

        v58 = [v57 startUp];

        if (v58)
        {
          [v48 addObject:v58];
        }

        v59 = [v46 mirror];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v60 = v59;
        }

        else
        {
          v60 = 0;
        }

        v61 = v60;

        v62 = [v61 startUp];

        if (v62)
        {
          [v48 addObject:v62];
        }

        v63 = [(HMDAppleAccessoryPairingController *)v5 cleanUpBadHomeManagerRecordsForHomeManager:v87];
        [v48 addObject:v63];

        v64 = [MEMORY[0x277D2C900] chainFutures:v48];
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_17;
        v91[3] = &unk_2786734E0;
        v92 = v80;
        v93 = v5;
        v94 = v87;
        v95 = v84;
        v96 = v81;
        v97 = v83;
        v98 = v46;
        v65 = [v64 addSuccessBlock:v91];
      }

      else
      {
        v66 = objc_autoreleasePoolPush();
        v67 = v5;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = HMFGetLogIdentifier();
          *v105 = 138543874;
          v106 = v69;
          v107 = 2112;
          v108 = @"1411CE6C-B4DE-4622-A49D-F66FE296D6B5";
          v109 = 2112;
          v110 = v47;
          _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Unable to create legacy zone %@: %@", v105, 0x20u);
        }

        objc_autoreleasePoolPop(v66);
      }

      v23 = v47;
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(buf, 8);

LABEL_44:
    v10 = v23;
LABEL_45:

    goto LABEL_46;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = v5;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@HMDAppleAccessoryPairingController has not been started.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = 0;
LABEL_46:

  v70 = *MEMORY[0x277D85DE8];
  return v15;
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 state];
  v7 = [v6 accessory];
  v8 = [v7 uuid];
  v9 = [*(a1 + 32) uuid];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    *a4 = 1;
  }
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_17(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) uuid];
  v4 = [v2 stringWithFormat:@"PairingHomeFor-%@", v3];

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v27 = 0;
  v28 = 0;
  v26 = 0;
  [v9 generateModelChangesForHomeManager:v5 homeName:v4 pairingHomeUUID:v6 defaultRoomUUID:v7 homeZoneUUID:v8 accessory:v10 outBlobChanges:&v28 outLegacyChanges:&v27 outHomeManagerChanges:&v26];
  v11 = v28;
  v12 = v27;
  v13 = v26;
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277D17108] optionsWithLabel:v4];
  v16 = [*(a1 + 40) blobZone];
  v17 = [v16 addModels:v11 options:v15];
  [v14 addObject:v17];

  v18 = [*(a1 + 80) addModels:v12 options:v15];
  [v14 addObject:v18];

  v19 = [*(a1 + 40) homeManagerZone];
  v20 = [v19 addModels:v13 options:v15];
  [v14 addObject:v20];

  v21 = MEMORY[0x277D2C900];
  v22 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v23 = [v21 combineAllFutures:v14 ignoringErrors:0 scheduler:v22];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_2;
  v25[3] = &unk_278682F48;
  v25[4] = *(a1 + 40);
  v24 = [v23 addSuccessBlock:v25];
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a2;
  v5 = [v3 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_3;
  v12[3] = &unk_2786855C8;
  v12[4] = *(a1 + 32);
  v13 = v5;
  v6 = v5;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  v7 = MEMORY[0x277D2C900];
  v8 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v9 = [v7 combineAllFutures:v6 ignoringErrors:0 scheduler:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_25;
  v11[3] = &unk_278682F48;
  v11[4] = *(a1 + 32);
  v10 = [v9 addSuccessBlock:v11];
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
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

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v9;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to process models: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = v3;
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

    v13 = [v12 mirrorOutputResult];

    if (v13)
    {
      v14 = *(a1 + 40);
      v15 = [v12 mirrorOutputResult];
      [v14 addObject:v15];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v19;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Model update did not create mirror output result: %@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__HMDAppleAccessoryPairingController_pairAccessory___block_invoke_25(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
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

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to push models: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleMessage:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  os_unfair_lock_lock_with_options();
  v8 = [(HMDAppleAccessoryPairingController *)self pairingHomes];
  v9 = [v8 allValues];
  v10 = [v9 copy];

  os_unfair_lock_unlock(&self->_lock);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__HMDAppleAccessoryPairingController_handleMessage_from___block_invoke;
  v14[3] = &unk_278673490;
  v11 = v6;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  v17 = &v18;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

uint64_t __57__HMDAppleAccessoryPairingController_handleMessage_from___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 handleMessage:a1[4] from:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)start
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAppleAccessoryPairingController *)self legacyCloudDatabase];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Legacy Pairing Controller has already started up.", buf, 0xCu);
    }

LABEL_9:

    objc_autoreleasePoolPop(v4);
    goto LABEL_10;
  }

  v8 = +[HMDDeviceCapabilities deviceCapabilities];
  v9 = [v8 supportsKeychainSync];

  if ((v9 & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v24;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Device cannot support keychain sync, no way we could pair an Apple accessory.", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v10 = objc_alloc(MEMORY[0x277CBC220]);
  v11 = [v10 initWithContainerIdentifier:@"com.apple.willow.config" environment:cloudKitContainerEnvironment];
  v12 = [objc_alloc(MEMORY[0x277D170E0]) initWithContainerID:v11];
  [v12 setSubscriptionPushRegistrationAction:1];
  v13 = [HMDLegacyCloudDatabase alloc];
  v14 = +[HMDDatabase defaultDatabase];
  v15 = [v14 localDatabase];
  v16 = [(HMDLegacyCloudDatabase *)v13 initWithLocalDatabase:v15 configuration:v12 error:0];
  [(HMDAppleAccessoryPairingController *)self setLegacyCloudDatabase:v16];

  v17 = [(HMDAppleAccessoryPairingController *)self legacyCloudDatabase];
  v18 = [v17 registerPrivateSubscriptionForExternalRecordType:0];

  v19 = [(HMDAppleAccessoryPairingController *)self legacyCloudDatabase];
  v20 = [v19 registerSharedSubscriptionForExternalRecordType:0];

  objc_initWeak(buf, self);
  v21 = [(HMDAppleAccessoryPairingController *)self legacyCloudDatabase];
  v22 = [v21 performInitialCloudSync];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __43__HMDAppleAccessoryPairingController_start__block_invoke;
  v26[3] = &unk_278684500;
  objc_copyWeak(&v27, buf);
  v23 = [v22 addSuccessBlock:v26];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

LABEL_10:
  v25 = *MEMORY[0x277D85DE8];
}

void __43__HMDAppleAccessoryPairingController_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained dataSource];
  v6 = [v5 inProgressPairingAccessories];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDAppleAccessoryPairingController_start__block_invoke_2;
  v7[3] = &unk_278673468;
  objc_copyWeak(&v8, (a1 + 32));
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  objc_destroyWeak(&v8);
}

void __43__HMDAppleAccessoryPairingController_start__block_invoke_2(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 cloudZoneID];
  v6 = [v5 zoneID];

  v7 = [(os_unfair_lock_s *)WeakRetained legacyCloudDatabase];
  v8 = [v6 zoneName];
  v9 = [(os_unfair_lock_s *)WeakRetained dataSource];
  v10 = [v9 hh1ControllerIdentity];
  v28 = 0;
  v11 = [v7 mirrorLegacyZone:v8 controllerIdentity:v10 delegate:0 error:&v28];
  v12 = v28;

  if (v11)
  {
    v13 = [HMDAppleAccessoryPairingHomeController alloc];
    v14 = [(os_unfair_lock_s *)WeakRetained homeManager];
    v15 = [(os_unfair_lock_s *)WeakRetained dataSource];
    v16 = [(HMDAppleAccessoryPairingHomeController *)v13 initWithState:v3 homeManager:v14 dataSource:v15];

    os_unfair_lock_lock_with_options();
    v17 = [(os_unfair_lock_s *)WeakRetained pairingHomes];
    v18 = [v3 cloudZoneID];
    [v17 setObject:v16 forKey:v18];

    os_unfair_lock_unlock(WeakRetained + 2);
    [(HMDAppleAccessoryPairingHomeController *)v16 startWithLocalZone:v11];
    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@LEGACY CLOUD ZONE OPEN: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = WeakRetained;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v26;
      v31 = 2112;
      v32 = v6;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@LEGACY CLOUD ZONE OPEN %@ FAILED: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (HMDAppleAccessoryPairingController)initWithHomeManager:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HMDAppleAccessoryPairingController;
  v8 = [(HMDAppleAccessoryPairingController *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_homeManager, v6);
    objc_storeStrong(&v9->_dataSource, a4);
    v10 = [MEMORY[0x277CBEB38] dictionary];
    pairingHomes = v9->_pairingHomes;
    v9->_pairingHomes = v10;

    v12 = objc_alloc_init(HMDMutableHomeData);
    homeData = v9->_homeData;
    v9->_homeData = v12;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_48035 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_48035, &__block_literal_global_51_48036);
  }

  v3 = logCategory__hmf_once_v27_48037;

  return v3;
}

void __49__HMDAppleAccessoryPairingController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27_48037;
  logCategory__hmf_once_v27_48037 = v1;
}

@end