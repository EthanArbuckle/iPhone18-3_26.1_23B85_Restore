@interface MKFCKHome
+ (BOOL)exportDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
+ (id)__dictionaryFromGuestAccessCodeDictionaryForUnitTest:(id)test tombStonedPinCodes:(int)codes;
+ (id)__dictionaryFromGuestAccessCodeForUnitTest:(id)test label:(id)label userUniqueIDForAccessories:(id)accessories;
+ (id)__dictionaryFromHMRemovedUserInfoForUnitTest:(id)test;
+ (id)__dictionaryFromRemovedUserAccessCodeDictionaryForUnitTest:(id)test tombStonedPinCodes:(int)codes;
+ (id)__removedUserInfoFromDictionaryForUnitTest:(id)test;
+ (id)_balanceFakeHAPAccessoriesForHome:(id)home context:(id)context;
+ (id)_balanceFakeMediaAccessoriesForHome:(id)home context:(id)context;
+ (id)_balanceFakeRoomsForHome:(id)home context:(id)context;
+ (id)_balanceFakeScenesForHome:(id)home context:(id)context;
+ (id)_balanceFakeTriggersForHome:(id)home context:(id)context;
+ (id)_balanceFakeUsersForHome:(id)home context:(id)context;
+ (id)_balanceFakeZonesForHome:(id)home context:(id)context;
+ (id)_createFakeHomeInPersistentStore:(id)store context:(id)context;
+ (id)_createHomeManagerContextFromContext:(id)context;
+ (id)_encodeNetworkProtectionGroupModelID:(id)d manufacturer:(id)manufacturer category:(id)category targetProtectionMode:(id)mode;
+ (id)_encodeRemovedUserInfoWithUserID:(id)d removedUserModelID:(id)iD userName:(id)name dateRemoved:(id)removed;
+ (id)_homeManagerContextFromContext:(id)context;
+ (id)_homeManagerHomeWithModelID:(id)d homeManager:(id)manager context:(id)context;
+ (id)createWithLocalModel:(id)model context:(id)context;
+ (id)createWithModelID:(id)d persistentStore:(id)store context:(id)context;
+ (void)_maybeCreateFakeHomes:(id)homes context:(id)context;
+ (void)_maybeDeleteFakeHomes:(id)homes context:(id)context;
+ (void)_rebalanceFakeHomesWithContext:(id)context;
+ (void)_setCommonPropertiesOnAccessory:(id)accessory;
+ (void)_setPropertiesOnUser:(id)user isOwner:(BOOL)owner;
- (BOOL)_exportApplicationDataFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportGuestAccessCodesFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportHomeManagerWithContext:(id)context;
- (BOOL)_exportMatterKeyValueStoreFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportNetworkProtectionGroupsFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportPinCodesFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportRelationshipsFromLocalHome:(id)home localRelationship:(id)relationship cloudRelationship:(id)cloudRelationship context:(id)context;
- (BOOL)_exportRelationshipsFromLocalHome:(id)home localRelationshipName:(id)name context:(id)context;
- (BOOL)_exportRelationshipsFromLocalModel:(id)model localRelationship:(id)relationship cloudRelationship:(id)cloudRelationship cloudModels:(id)models context:(id)context;
- (BOOL)_exportRemovedUserAccessCodesFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportRoomsFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportSettingsFromLocalModel:(id)model context:(id)context;
- (BOOL)_exportUsersFromLocalModel:(id)model context:(id)context;
- (BOOL)_importApplicationDataIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importGuestAccessCodesIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importHomeManagerNewHome:(BOOL)home newPrimaryHome:(id)primaryHome newApplicationData:(id)data context:(id)context;
- (BOOL)_importHomeManagerWithContext:(id)context;
- (BOOL)_importMatterKeyValueStoreIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importNetworkProtectionGroupsIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importPinCodesIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importRelationshipsIntoLocalModel:(id)model localRelationshipName:(id)name context:(id)context;
- (BOOL)_importRemovedUserAccessCodesIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importRoomsIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importSettingsIntoLocalModel:(id)model context:(id)context;
- (BOOL)_importUsersIntoLocalModel:(id)model context:(id)context;
- (BOOL)validateOwner:(id *)owner error:(id *)error;
- (id)_populateGuestAccessCodeWithDictionary:(id)dictionary hh2ModelID:(id)d home:(id)home groupsByModelID:(id)iD context:(id)context;
- (id)_populateRemovedUserAccessCodeFromDictionary:(id)dictionary withAccessCode:(id)code hh2ModelID:(id)d home:(id)home groupsByModelID:(id)iD context:(id)context;
- (int64_t)ensureCanonicalModel;
- (uint64_t)_importIntoLocalHomeModel:(void *)model cloudModels:(void *)models localModelsByModelID:(void *)d processedCloudModels:(void *)cloudModels context:;
- (uint64_t)_importIntoLocalModel:(void *)model updatedProperties:(void *)properties context:;
- (uint64_t)_importWithContext:(void *)context updatedProperties:;
- (void)_exportFromLocalModel:(void *)model updatedProperties:(void *)properties context:;
- (void)_maybeDeleteStaleLocalModels:(id)models modelIDKey:(id)key context:(id)context;
- (void)_settingModelsForHome:(void *)home media:(void *)media networkRouter:(void *)router personManager:(void *)manager softwareUpdate:;
- (void)awakeFromInsert;
@end

@implementation MKFCKHome

- (BOOL)_exportHomeManagerWithContext:(id)context
{
  v48[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v41 = 0;
  v5 = [_MKFHomeManager fetchWithContext:contextCopy error:&v41];
  v6 = v41;
  if (v5)
  {
    fetchRequest = [objc_opt_class() fetchRequest];
    [fetchRequest setFetchBatchSize:10];
    v48[0] = @"primaryHomeCounter";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    v9 = [(MKFCKModel *)MKFCKHome appendDefaultPreloadedPropertiesTo:v8];
    [fetchRequest setPropertiesToFetch:v9];

    v40 = v6;
    v10 = [contextCopy executeFetchRequest:fetchRequest error:&v40];
    v11 = v40;

    v12 = v10 != 0;
    if (!v10)
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v28;
        v44 = 2114;
        v45 = v11;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch homes: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      goto LABEL_19;
    }

    v39 = v11;
    primaryHome = [v5 primaryHome];
    handle = [primaryHome handle];
    homeUUID = [handle homeUUID];
    v16 = [HMDCoreDataCloudTransformHomeManager fixUpPrimaryHomeCounterForPrimaryHome:v10 primaryHomeModelID:homeUUID];

    if (v16)
    {
      v11 = v39;
      if (![(MKFCKHome *)self isEqual:v16])
      {
LABEL_18:

LABEL_19:
        v6 = v11;
        goto LABEL_20;
      }

      appDataDictionary = [v5 appDataDictionary];
      homeManagerApplicationData = [(MKFCKHome *)self homeManagerApplicationData];
      v19 = isEqualDeepCompare(appDataDictionary, homeManagerApplicationData);

      if ((v19 & 1) == 0)
      {
        v20 = [appDataDictionary copy];
        [(MKFCKHome *)self setHomeManagerApplicationData:v20];
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        primaryHome2 = [v5 primaryHome];
        handle2 = [primaryHome2 handle];
        [handle2 homeUUID];
        v33 = v38 = v29;
        *buf = 138543874;
        v43 = v32;
        v44 = 2160;
        v45 = 1752392040;
        v46 = 2112;
        v47 = v33;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@No primary home yet: %{mask.hash}@", buf, 0x20u);

        v29 = v38;
      }

      objc_autoreleasePoolPop(v29);
    }

    v11 = v39;
    goto LABEL_18;
  }

  v21 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v24;
    v44 = 2114;
    v45 = v6;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home manager: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v12 = 0;
LABEL_20:

  v34 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_importHomeManagerWithContext:(id)context
{
  v78[2] = *MEMORY[0x277D85DE8];
  v71 = 0;
  contextCopy = context;
  v4 = [_MKFHomeManager fetchWithContext:"fetchWithContext:error:" error:?];
  v5 = 0;
  if (v4)
  {
    v6 = MEMORY[0x277CBEB58];
    homes = [v4 homes];
    v8 = [v6 setWithCapacity:{objc_msgSend(homes, "count") + 1}];

    homes2 = [v4 homes];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __56__MKFCKHome_HomeManager___importHomeManagerWithContext___block_invoke;
    v69[3] = &unk_278684438;
    v10 = v8;
    v70 = v10;
    [homes2 hmf_enumerateWithAutoreleasePoolUsingBlock:v69];

    modelID = [(MKFCKHome *)self modelID];
    v52 = [v10 containsObject:modelID];

    if ((v52 & 1) == 0)
    {
      modelID2 = [(MKFCKHome *)self modelID];
      [v10 addObject:modelID2];

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Detected new home manager home", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
    }

    v17 = +[MKFCKHome fetchRequest];
    v18 = [(MKFCKModel *)MKFCKHome predicateWithModelIDs:v10];
    [v17 setPredicate:v18];

    [v17 setFetchBatchSize:10];
    v78[0] = @"primaryHomeCounter";
    v78[1] = @"homeManagerApplicationData";
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
    v20 = [(MKFCKModel *)MKFCKHome appendDefaultPreloadedPropertiesTo:v19];
    [v17 setPropertiesToFetch:v20];

    v68 = v5;
    v21 = [contextCopy executeFetchRequest:v17 error:&v68];
    v51 = v68;

    v53 = v21 != 0;
    if (v21)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v75 = __Block_byref_object_copy_;
      v76 = __Block_byref_object_dispose_;
      v77 = 0;
      v62 = 0;
      v63 = &v62;
      v64 = 0x3032000000;
      v65 = __Block_byref_object_copy_;
      v66 = __Block_byref_object_dispose_;
      v67 = 0;
      v61[0] = 0;
      v61[1] = v61;
      v61[2] = 0x2020000000;
      v61[3] = 0;
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __56__MKFCKHome_HomeManager___importHomeManagerWithContext___block_invoke_13;
      v60[3] = &unk_27866DC58;
      v60[4] = buf;
      v60[5] = v61;
      v60[6] = &v62;
      [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:v60];
      primaryHome = [v4 primaryHome];
      handle = [primaryHome handle];
      homeUUID = [handle homeUUID];
      v25 = [homeUUID isEqual:*(*&buf[8] + 40)];

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(*&buf[8] + 40);
        v35 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = HMFGetLogIdentifier();
          *v72 = 138543362;
          v73 = v38;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Detected new primary home", v72, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
      }

      v39 = v63[5];
      appDataDictionary = [v4 appDataDictionary];
      LOBYTE(v39) = isEqualDeepCompare(v39, appDataDictionary);

      if (v39)
      {
        v41 = 0;
      }

      else
      {
        v41 = v63[5];
        context = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v44 = HMFGetLogIdentifier();
          *v72 = 138543362;
          v73 = v44;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEBUG, "%{public}@Detected new home manager application data", v72, 0xCu);
        }

        objc_autoreleasePoolPop(context);
      }

      if (v26)
      {
        v45 = 1;
      }

      else
      {
        v45 = v52 ^ 1;
      }

      if ((v45 & 1) != 0 || v41)
      {
        v46 = [objc_opt_class() _homeManagerContextFromContext:contextCopy];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __56__MKFCKHome_HomeManager___importHomeManagerWithContext___block_invoke_15;
        v55[3] = &unk_2786899C8;
        v55[4] = self;
        v59 = v52 ^ 1;
        v56 = v26;
        v57 = v41;
        v47 = v46;
        v58 = v47;
        [v47 performBlockAndWait:v55];
      }

      _Block_object_dispose(v61, 8);
      _Block_object_dispose(&v62, 8);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v51;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch homes: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
    }

    v5 = v51;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v30;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home manager: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v53 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v53;
}

void __56__MKFCKHome_HomeManager___importHomeManagerWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 handle];
  v3 = [v4 homeUUID];
  [v2 addObject:v3];
}

void __56__MKFCKHome_HomeManager___importHomeManagerWithContext___block_invoke_13(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 isFake] & 1) == 0)
  {
    if (!*(*(a1[4] + 8) + 40))
    {
      goto LABEL_6;
    }

    v4 = [v3 primaryHomeCounter];
    v5 = *(*(a1[5] + 8) + 24);
    if (v4 >= v5)
    {
      if (v4 != v5)
      {
        goto LABEL_6;
      }

      *uu1 = 0;
      v17 = 0;
      [*(*(a1[4] + 8) + 40) getUUIDBytes:uu1];
      *uu2 = 0;
      v15 = 0;
      v6 = [v3 modelID];
      [v6 getUUIDBytes:uu2];

      if ((uuid_compare(uu1, uu2) & 0x80000000) == 0)
      {
LABEL_6:
        v7 = [v3 modelID];
        v8 = *(a1[4] + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v10 = [v3 homeManagerApplicationData];
        v11 = *(a1[6] + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        *(*(a1[5] + 8) + 24) = [v3 primaryHomeCounter];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_importHomeManagerNewHome:(BOOL)home newPrimaryHome:(id)primaryHome newApplicationData:(id)data context:(id)context
{
  homeCopy = home;
  v59 = *MEMORY[0x277D85DE8];
  primaryHomeCopy = primaryHome;
  dataCopy = data;
  contextCopy = context;
  v48 = 0;
  v12 = [_MKFHomeManager fetchWithContext:contextCopy error:&v48];
  v43 = v48;
  if (!v12)
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v40;
      *&buf[12] = 2114;
      *&buf[14] = v43;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home manager: %{public}@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  if (homeCopy)
  {
    v13 = objc_opt_class();
    modelID = [(MKFCKHome *)self modelID];
    v15 = [v13 _homeManagerHomeWithModelID:modelID homeManager:v12 context:contextCopy];

    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Created new model during import: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy2;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v15 debugDescription];
      *buf = 138543618;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  if (primaryHomeCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v56 = __Block_byref_object_copy_;
    v57 = __Block_byref_object_dispose_;
    v58 = 0;
    homes = [v12 homes];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __94__MKFCKHome_HomeManager___importHomeManagerNewHome_newPrimaryHome_newApplicationData_context___block_invoke;
    v45[3] = &unk_27867B6F0;
    v46 = primaryHomeCopy;
    v47 = buf;
    [homes hmf_enumerateWithAutoreleasePoolUsingBlock:v45];

    primaryHome = [v12 primaryHome];
    LOBYTE(homes) = [primaryHome isEqual:*(*&buf[8] + 40)];

    if ((homes & 1) == 0)
    {
      [v12 setPrimaryHome:*(*&buf[8] + 40)];
      v27 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        handle = [*(*&buf[8] + 40) handle];
        homeUUID = [handle homeUUID];
        *v49 = 138543874;
        v50 = v30;
        v51 = 2160;
        v52 = 1752392040;
        v53 = 2112;
        v54 = homeUUID;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Setting new primary home with modelID %{mask.hash}@", v49, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
    }

    _Block_object_dispose(buf, 8);
  }

  if (dataCopy)
  {
    appDataDictionary = [v12 appDataDictionary];
    v34 = isEqualDeepCompare(appDataDictionary, dataCopy);

    if ((v34 & 1) == 0)
    {
      [v12 setAppDataDictionary:dataCopy];
      v35 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2112;
        *&buf[14] = dataCopy;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Setting new home manager application data: %@", buf, 0x16u);
      }

LABEL_20:

      objc_autoreleasePoolPop(v35);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

void __94__MKFCKHome_HomeManager___importHomeManagerNewHome_newPrimaryHome_newApplicationData_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 handle];
  v7 = [v6 homeUUID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)_createHomeManagerContextFromContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  hmd_coreData = [contextCopy hmd_coreData];
  v6 = hmd_coreData;
  if (hmd_coreData)
  {
    newManagedObjectContext = [hmd_coreData newManagedObjectContext];
    [newManagedObjectContext setName:@"HomeManager"];
    currentQueryGenerationToken = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
    v22 = 0;
    v9 = [contextCopy setQueryGenerationFromToken:currentQueryGenerationToken error:&v22];
    v10 = v22;

    if (v9)
    {
      v11 = newManagedObjectContext;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v19;
        v25 = 2114;
        v26 = v10;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to pin home manager context to current query generation: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v11 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@HMDCoreData is no longer alive", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_homeManagerContextFromContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  hmd_homeManagerContext = [contextCopy hmd_homeManagerContext];
  if (hmd_homeManagerContext)
  {
    v6 = hmd_homeManagerContext;
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Found existing home manager context", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v6 = [objc_opt_class() _createHomeManagerContextFromContext:contextCopy];
    if (v6)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Created home manager context", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [contextCopy setHmd_homeManagerContext:v6];
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_homeManagerHomeWithModelID:(id)d homeManager:(id)manager context:(id)context
{
  contextCopy = context;
  managerCopy = manager;
  dCopy = d;
  v10 = [[_MKFHomeManagerHome alloc] initWithContext:contextCopy];

  v11 = [HMDHomeManagerHomeModel deriveUUIDFromHomeUUID:dCopy];
  [(_MKFHomeManagerHome *)v10 setModelID:v11];

  v12 = [HMDHomeManagerHomeHandle alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v14 = [(HMDHomeManagerHomeHandle *)v12 initWithBackingStoreUUID:uUID homeUUID:dCopy];

  [(_MKFHomeManagerHome *)v10 setHandle:v14];
  [(_MKFHomeManagerHome *)v10 setHomeManager:managerCopy];
  [managerCopy addHomes_Object:v10];

  return v10;
}

- (BOOL)_exportUsersFromLocalModel:(id)model context:(id)context
{
  v57 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  if ([(MKFCKHome *)self _exportRelationshipsFromLocalHome:modelCopy localRelationshipName:@"users_" context:contextCopy])
  {
    v8 = modelCopy;
    v9 = contextCopy;
    v10 = self != 0;
    if (self)
    {
      owner = [v8 owner];
      owner2 = [(MKFCKHome *)self owner];

      if (!owner2)
      {
        v38 = self != 0;
        v39 = contextCopy;
        v40 = modelCopy;
        v36 = owner;
        v13 = [(MKFCKModel *)MKFCKUser fetchWithLocalModel:owner context:v9];
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v54 = v17;
          v55 = 2112;
          v56 = v13;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Setting owner during export: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        v35 = v13;
        [(MKFCKHome *)selfCopy setOwner:v13];
        v37 = v8;
        v18 = v8;
        v19 = v9;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v34 = v18;
        obj = [v18 accessories];
        v20 = [obj countByEnumeratingWithState:&v45 objects:buf count:16];
        v43 = selfCopy;
        if (v20)
        {
          v21 = v20;
          v22 = *v46;
          v41 = *v46;
          v42 = v19;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v46 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v45 + 1) + 8 * i);
              v25 = [(MKFCKModel *)MKFCKAccessory fetchWithLocalModel:v24 context:v19];
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
                [(MKFCKAccessory *)v27 _exportOwnerSettingsFromLocalModel:v24 context:v19];
              }

              else
              {
                v28 = objc_autoreleasePoolPush();
                v29 = v43;
                v30 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v31 = HMFGetLogIdentifier();
                  *v49 = 138543618;
                  v50 = v31;
                  v51 = 2112;
                  v52 = v24;
                  _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to find cloud model for accessory: %@", v49, 0x16u);

                  v22 = v41;
                  v19 = v42;
                }

                objc_autoreleasePoolPop(v28);
              }
            }

            v21 = [obj countByEnumeratingWithState:&v45 objects:buf count:16];
          }

          while (v21);
        }

        contextCopy = v39;
        modelCopy = v40;
        v10 = v38;
        v8 = v37;
        owner = v36;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_importUsersIntoLocalModel:(id)model context:(id)context
{
  v63 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  if ([(MKFCKHome *)self _importRelationshipsIntoLocalModel:modelCopy localRelationshipName:@"users_" context:contextCopy])
  {
    v8 = modelCopy;
    v9 = contextCopy;
    if (self)
    {
      owner = [(MKFCKHome *)self owner];
      v11 = owner;
      v12 = owner != 0;
      if (owner)
      {
        selfCopy = self;
        v47 = [owner fetchLocalModelWithContext:v9];
        owner2 = [v8 owner];

        if (!owner2)
        {
          v14 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543618;
            v60 = v17;
            v61 = 2112;
            v62 = v47;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Setting owner during import: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v14);
          [v8 setOwner:v47];
        }

        v41 = v11;
        v42 = v9;
        v43 = v8;
        v44 = v12;
        v45 = contextCopy;
        v46 = modelCopy;
        v18 = v9;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v19 = selfCopy;
        obj = [(MKFCKHome *)selfCopy accessories];
        v20 = [obj countByEnumeratingWithState:&v51 objects:buf count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v52;
          p_info = _MKFAccountHandle.info;
          v49 = v18;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v52 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v51 + 1) + 8 * i);
              v26 = [v25 fetchLocalModelWithContext:v18];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v27 = v26;
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;

              if (v28)
              {
                [(MKFCKAccessory *)v25 _importOwnerSettingsIntoLocalModel:v28 context:v18];
              }

              else
              {
                v29 = v22;
                v30 = p_info;
                v31 = objc_autoreleasePoolPush();
                v32 = v19;
                v33 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v34 = HMFGetLogIdentifier();
                  *v55 = 138543618;
                  v56 = v34;
                  v57 = 2112;
                  v58 = v25;
                  _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local model for accessory: %@", v55, 0x16u);

                  v19 = selfCopy;
                }

                objc_autoreleasePoolPop(v31);
                p_info = v30;
                v22 = v29;
                v18 = v49;
              }
            }

            v21 = [obj countByEnumeratingWithState:&v51 objects:buf count:16];
          }

          while (v21);
        }

        contextCopy = v45;
        modelCopy = v46;
        v12 = v44;
        v9 = v42;
        v8 = v43;
        v11 = v41;
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543618;
          v60 = v38;
          v61 = 2112;
          v62 = v8;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Can't assign owner during import because the record hasn't downloaded yet: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v35);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int64_t)ensureCanonicalModel
{
  v48[1] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = MKFCKHome;
  ensureCanonicalModel = [(MKFCKModel *)&v41 ensureCanonicalModel];
  if (ensureCanonicalModel == 1)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v4 = objc_autoreleasePoolPush();
    v5 = @"HMD.CFU";
    fetchRequest = [MEMORY[0x277CBE4C8] fetchRequest];
    entity = [fetchRequest entity];
    propertiesByName = [entity propertiesByName];
    v31 = [propertiesByName objectForKeyedSubscript:@"author"];

    entity2 = [(MKFCKHome *)self entity];
    v9 = [HMDCoreDataCloudTransform localTransformableEntityFromEntity:entity2];

    v10 = MEMORY[0x277CCAC30];
    name = [v31 name];
    v30 = [v10 predicateWithFormat:@"(%K == %@)", name, @"HMD.CFU"];

    [fetchRequest setPredicate:v30];
    managedObjectContext = [(MKFCKHome *)self managedObjectContext];
    v13 = [MEMORY[0x277CBE4B0] fetchHistoryWithFetchRequest:fetchRequest];
    hmd_coreData = [managedObjectContext hmd_coreData];
    workingStore = [hmd_coreData workingStore];

    v48[0] = workingStore;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    [v13 setAffectedStores:v15];

    [v13 setFetchBatchSize:20];
    [v13 setResultType:5];
    v36 = 0;
    v16 = [managedObjectContext executeRequest:v13 error:&v36];
    v27 = v36;
    result = [v16 result];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __33__MKFCKHome_ensureCanonicalModel__block_invoke;
    v32[3] = &unk_278671590;
    v18 = v9;
    v33 = v18;
    selfCopy = self;
    v35 = &v37;
    [result hmf_enumerateWithAutoreleasePoolUsingBlock:v32];
    if (*(v38 + 24) == 1)
    {
      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v4;
        v21 = HMFGetLogIdentifier();
        v22 = [(MKFCKModel *)selfCopy2 debugDescription];
        *buf = 138543874;
        v43 = v21;
        v44 = 2112;
        v45 = selfCopy2;
        v46 = 2112;
        v47 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Re-doing delete of record since it is locally deleted by the user: %@\n%@", buf, 0x20u);

        v4 = v25;
      }

      objc_autoreleasePoolPop(context);
      [managedObjectContext deleteObject:selfCopy2];
      ensureCanonicalModel = -2;
    }

    else
    {
      ensureCanonicalModel = 1;
    }

    objc_autoreleasePoolPop(v4);
    _Block_object_dispose(&v37, 8);
  }

  v23 = *MEMORY[0x277D85DE8];
  return ensureCanonicalModel;
}

void __33__MKFCKHome_ensureCanonicalModel__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 changes];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__MKFCKHome_ensureCanonicalModel__block_invoke_2;
  v7[3] = &unk_2786749B0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v7];

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void __33__MKFCKHome_ensureCanonicalModel__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [v13 changedObjectID];
  v7 = [v6 entity];
  v8 = [v7 isKindOfEntity:*(a1 + 32)];

  if (v8 && [v13 changeType] == 2)
  {
    v9 = [v13 tombstone];
    v10 = [v9 objectForKeyedSubscript:@"modelID"];

    v11 = [*(a1 + 40) modelID];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (BOOL)_exportRelationshipsFromLocalModel:(id)model localRelationship:(id)relationship cloudRelationship:(id)cloudRelationship cloudModels:(id)models context:(id)context
{
  v57 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  relationshipCopy = relationship;
  cloudRelationshipCopy = cloudRelationship;
  modelsCopy = models;
  contextCopy = context;
  hmd_coreData = [contextCopy hmd_coreData];
  cloudPrivateStore = [hmd_coreData cloudPrivateStore];
  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(modelsCopy, "count")}];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __104__MKFCKHome__exportRelationshipsFromLocalModel_localRelationship_cloudRelationship_cloudModels_context___block_invoke;
  v53[3] = &unk_2786735A0;
  v17 = v16;
  v54 = v17;
  [modelsCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v53];

  name = [relationshipCopy name];
  v19 = [modelCopy valueForKey:name];

  if ([v19 count])
  {
    destinationEntity = [cloudRelationshipCopy destinationEntity];
    v21 = [cloudPrivateStore hmd_deletedModelIDsForEntity:destinationEntity modelIDKey:@"modelID" duration:contextCopy context:3600.0];

    if (v21)
    {
      goto LABEL_7;
    }

    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      destinationEntity2 = [cloudRelationshipCopy destinationEntity];
      name2 = [destinationEntity2 name];
      *buf = 138543618;
      *&buf[4] = v35;
      *&buf[12] = 2114;
      *&buf[14] = name2;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to gather modelIDs for recently deleted %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(context);
  }

  v21 = 0;
LABEL_7:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v56 = 1;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __104__MKFCKHome__exportRelationshipsFromLocalModel_localRelationship_cloudRelationship_cloudModels_context___block_invoke_18;
  v45[3] = &unk_278671540;
  v25 = v17;
  v46 = v25;
  v26 = v21;
  v47 = v26;
  selfCopy2 = self;
  v27 = cloudRelationshipCopy;
  v49 = v27;
  v28 = contextCopy;
  v50 = v28;
  v29 = modelCopy;
  v51 = v29;
  v52 = buf;
  [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v45];
  v30 = *(*&buf[8] + 24);
  if (v30)
  {
    workingStore = [hmd_coreData workingStore];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __104__MKFCKHome__exportRelationshipsFromLocalModel_localRelationship_cloudRelationship_cloudModels_context___block_invoke_20;
    v41[3] = &unk_278671568;
    v32 = workingStore;
    v42 = v32;
    v43 = v28;
    selfCopy3 = self;
    [v25 enumerateKeysAndObjectsUsingBlock:v41];
  }

  _Block_object_dispose(buf, 8);
  v33 = *MEMORY[0x277D85DE8];
  return v30;
}

void __104__MKFCKHome__exportRelationshipsFromLocalModel_localRelationship_cloudRelationship_cloudModels_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 modelID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __104__MKFCKHome__exportRelationshipsFromLocalModel_localRelationship_cloudRelationship_cloudModels_context___block_invoke_18(uint64_t a1, void *a2, _BYTE *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (v7)
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:v6];
    v8 = v7;
    goto LABEL_3;
  }

  if (![*(a1 + 40) containsObject:v6])
  {
    v32 = [v5 entity];
    v33 = [HMDCoreDataCloudTransform exportTransformableClassFromEntity:v32];

    v8 = [(objc_class *)v33 createWithLocalModel:v5 context:*(a1 + 64)];
    v34 = *(a1 + 72);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setHome:*(a1 + 48)];
    }

LABEL_3:
    v9 = [MEMORY[0x277CBEB98] set];
    v10 = [v8 exportFromLocalModel:v5 updatedProperties:v9 context:*(a1 + 64)];

    if ((v10 & 1) == 0)
    {
      *(*(*(a1 + 80) + 8) + 24) = 0;
      *a3 = 1;
LABEL_30:

      goto LABEL_31;
    }

    if (v7)
    {
      v11 = [v8 hasPersistentChangedValues];
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 48);
      v14 = HMFGetOSLogHandle();
      v15 = v14;
      if (!v11)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v50 = v46;
          v51 = 2112;
          v52 = v8;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@No changes to model during export: %@", buf, 0x16u);
        }

        goto LABEL_29;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        v48 = [v8 changedValues];
        v17 = [v48 allKeys];
        v18 = [v17 sortedArrayUsingSelector:sel_compare_];
        *buf = 138543874;
        v50 = v16;
        v51 = 2112;
        v52 = v8;
        v53 = 2114;
        v54 = v18;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Updated model during export: %@ (%{public}@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 48);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v8 debugDescription];
        *buf = 138543618;
        v50 = v22;
        v51 = 2112;
        v52 = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v12 = objc_autoreleasePoolPush();
      v24 = *(a1 + 48);
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
LABEL_25:

LABEL_29:
        objc_autoreleasePoolPop(v12);
        goto LABEL_30;
      }
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = *(a1 + 48);
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v38;
        v51 = 2112;
        v52 = v8;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Created new model during export: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v39 = objc_autoreleasePoolPush();
      v40 = *(a1 + 48);
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [v8 debugDescription];
        *buf = 138543618;
        v50 = v42;
        v51 = 2112;
        v52 = v43;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v12 = objc_autoreleasePoolPush();
      v24 = *(a1 + 48);
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_25;
      }
    }

    v44 = HMFGetLogIdentifier();
    v45 = [v5 debugDescription];
    *buf = 138543618;
    v50 = v44;
    v51 = 2112;
    v52 = v45;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);

    goto LABEL_25;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = *(a1 + 48);
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [*(a1 + 56) entity];
    v31 = [v30 name];
    *buf = 138544130;
    v50 = v29;
    v51 = 2114;
    v52 = v31;
    v53 = 2160;
    v54 = 1752392040;
    v55 = 2112;
    v56 = v6;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Not recreating deleted model <%{public}@: %{mask.hash}@>", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v26);
LABEL_31:

  v47 = *MEMORY[0x277D85DE8];
}

void __104__MKFCKHome__exportRelationshipsFromLocalModel_localRelationship_cloudRelationship_cloudModels_context___block_invoke_20(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 entity];
  v8 = [HMDCoreDataCloudTransform localTransformableEntityFromEntity:v7];

  v9 = [a1[4] hmd_modelWasDeletedWithID:v5 modelIDKey:@"modelID" entity:v8 duration:a1[5] context:0.0];
  v10 = objc_autoreleasePoolPush();
  v11 = a1[6];
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Deleting model during export: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [a1[5] deleteObject:v6];
  }

  else
  {
    if (v13)
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Not deleting model during export - not previously deleted: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = objc_autoreleasePoolPush();
  v17 = a1[6];
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v6 debugDescription];
    v22 = 138543618;
    v23 = v19;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@%@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_exportRelationshipsFromLocalHome:(id)home localRelationship:(id)relationship cloudRelationship:(id)cloudRelationship context:(id)context
{
  contextCopy = context;
  cloudRelationshipCopy = cloudRelationship;
  relationshipCopy = relationship;
  homeCopy = home;
  name = [cloudRelationshipCopy name];
  v15 = [(MKFCKHome *)self valueForKey:name];

  LOBYTE(self) = [(MKFCKHome *)self _exportRelationshipsFromLocalModel:homeCopy localRelationship:relationshipCopy cloudRelationship:cloudRelationshipCopy cloudModels:v15 context:contextCopy];
  return self;
}

- (BOOL)_exportRelationshipsFromLocalHome:(id)home localRelationshipName:(id)name context:(id)context
{
  contextCopy = context;
  nameCopy = name;
  homeCopy = home;
  entity = [homeCopy entity];
  relationshipsByName = [entity relationshipsByName];
  v13 = [relationshipsByName objectForKeyedSubscript:nameCopy];

  v14 = [(MKFCKModel *)self relationshipForLocalName:nameCopy localModel:homeCopy];

  LOBYTE(nameCopy) = [(MKFCKHome *)self _exportRelationshipsFromLocalHome:homeCopy localRelationship:v13 cloudRelationship:v14 context:contextCopy];
  return nameCopy;
}

- (void)_maybeDeleteStaleLocalModels:(id)models modelIDKey:(id)key context:(id)context
{
  keyCopy = key;
  contextCopy = context;
  modelsCopy = models;
  hmd_coreData = [contextCopy hmd_coreData];
  cloudPrivateStore = [hmd_coreData cloudPrivateStore];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__MKFCKHome__maybeDeleteStaleLocalModels_modelIDKey_context___block_invoke;
  v16[3] = &unk_2786714F0;
  v17 = cloudPrivateStore;
  v18 = keyCopy;
  v19 = contextCopy;
  selfCopy = self;
  v13 = contextCopy;
  v14 = keyCopy;
  v15 = cloudPrivateStore;
  [modelsCopy enumerateKeysAndObjectsUsingBlock:v16];
}

void __61__MKFCKHome__maybeDeleteStaleLocalModels_modelIDKey_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 entity];
  v8 = [HMDCoreDataCloudTransform exportTransformableEntityFromEntity:v7];

  v9 = [*(a1 + 32) hmd_modelWasDeletedWithID:v5 modelIDKey:*(a1 + 40) entity:v8 duration:*(a1 + 48) context:0.0];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 56);
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Deleting model during import: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 48) deleteObject:v6];
  }

  else
  {
    if (v13)
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Not deleting model during import - not previously deleted: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 56);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v6 debugDescription];
    v22 = 138543618;
    v23 = v19;
    v24 = 2112;
    v25 = v20;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@%@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_importRelationshipsIntoLocalModel:(id)model localRelationshipName:(id)name context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  nameCopy = name;
  entity = [modelCopy entity];
  relationshipsByName = [entity relationshipsByName];
  v13 = [relationshipsByName objectForKeyedSubscript:nameCopy];

  v14 = [(MKFCKModel *)self relationshipForLocalName:nameCopy localModel:modelCopy];

  name = [v13 name];
  v16 = [modelCopy valueForKey:name];

  v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __78__MKFCKHome__importRelationshipsIntoLocalModel_localRelationshipName_context___block_invoke;
  v32[3] = &unk_278680DB0;
  v18 = v17;
  v33 = v18;
  [v16 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];

  name2 = [v14 name];
  v20 = [(MKFCKHome *)self valueForKey:name2];
  v21 = [v20 mutableCopy];

  v22 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v21, "count")}];
  if (-[MKFCKHome _importIntoLocalHomeModel:cloudModels:localModelsByModelID:processedCloudModels:context:](self, modelCopy, v21, v18, v22, contextCopy) && ((v23 = [v22 count], v23 == objc_msgSend(v21, "count")) || (objc_msgSend(v21, "minusSet:", v22), -[MKFCKHome _importIntoLocalHomeModel:cloudModels:localModelsByModelID:processedCloudModels:context:](self, modelCopy, v21, v18, v22, contextCopy))))
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __78__MKFCKHome__importRelationshipsIntoLocalModel_localRelationshipName_context___block_invoke_2;
    v30 = &unk_2786735A0;
    v24 = v18;
    v31 = v24;
    [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:&v27];
    [(MKFCKHome *)self _maybeDeleteStaleLocalModels:v24 context:contextCopy, v27, v28, v29, v30];

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __78__MKFCKHome__importRelationshipsIntoLocalModel_localRelationshipName_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 modelID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (uint64_t)_importIntoLocalHomeModel:(void *)model cloudModels:(void *)models localModelsByModelID:(void *)d processedCloudModels:(void *)cloudModels context:
{
  v11 = a2;
  modelCopy = model;
  modelsCopy = models;
  dCopy = d;
  cloudModelsCopy = cloudModels;
  v16 = cloudModelsCopy;
  if (self)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __101__MKFCKHome__importIntoLocalHomeModel_cloudModels_localModelsByModelID_processedCloudModels_context___block_invoke;
    v18[3] = &unk_278671518;
    v19 = cloudModelsCopy;
    selfCopy = self;
    v21 = dCopy;
    v22 = modelsCopy;
    v23 = v11;
    v24 = &v25;
    [modelCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
    LOBYTE(self) = *(v26 + 24);

    _Block_object_dispose(&v25, 8);
  }

  return self & 1;
}

void __78__MKFCKHome__importRelationshipsIntoLocalModel_localRelationshipName_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 modelID];
  [v2 removeObjectForKey:v3];
}

void __101__MKFCKHome__importIntoLocalHomeModel_cloudModels_localModelsByModelID_processedCloudModels_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 isReadyToImportIntoLocalModelWithContext:*(a1 + 32)])
  {
    v6 = [v5 modelID];
    [*(a1 + 48) addObject:v5];
    if ([v5 isDeletedLocallyWithContext:*(a1 + 32)])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(a1 + 40);
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v10;
        v50 = 2112;
        v51 = v5;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Skip create/update since model is already deleted locally: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      goto LABEL_33;
    }

    v15 = [*(a1 + 56) objectForKeyedSubscript:v6];
    v16 = v15;
    if (!v15)
    {
      v16 = [v5 createLocalModelWithContext:*(a1 + 32)];
      [v16 setValue:*(a1 + 64) forKey:@"home"];
    }

    v17 = [MEMORY[0x277CBEB98] set];
    v18 = [v5 importIntoLocalModel:v16 updatedProperties:v17 context:*(a1 + 32)];

    if ((v18 & 1) == 0)
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      *a3 = 1;
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    if (v15)
    {
      v19 = [v16 hasPersistentChangedValues];
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      v23 = v22;
      if (!v19)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v49 = v45;
          v50 = 2112;
          v51 = v16;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@No changes to model during import: %@", buf, 0x16u);
        }

        goto LABEL_31;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = HMFGetLogIdentifier();
        v47 = [v16 changedValues];
        v25 = [v47 allKeys];
        v26 = [v25 sortedArrayUsingSelector:sel_compare_];
        *buf = 138543874;
        v49 = v24;
        v50 = 2112;
        v51 = v16;
        v52 = 2114;
        v53 = v26;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Updated model during import: %@ (%{public}@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 40);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [v16 debugDescription];
        *buf = 138543618;
        v49 = v30;
        v50 = 2112;
        v51 = v31;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v20 = objc_autoreleasePoolPush();
      v32 = *(a1 + 40);
      v33 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
LABEL_27:

LABEL_31:
        objc_autoreleasePoolPop(v20);
        goto LABEL_32;
      }
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = *(a1 + 40);
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v37;
        v50 = 2112;
        v51 = v16;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Created new model during import: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v38 = objc_autoreleasePoolPush();
      v39 = *(a1 + 40);
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [v16 debugDescription];
        *buf = 138543618;
        v49 = v41;
        v50 = 2112;
        v51 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v20 = objc_autoreleasePoolPush();
      v32 = *(a1 + 40);
      v33 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }
    }

    v43 = HMFGetLogIdentifier();
    v44 = [v5 debugDescription];
    *buf = 138543618;
    v49 = v43;
    v50 = 2112;
    v51 = v44;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);

    goto LABEL_27;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 40);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v49 = v14;
    v50 = 2112;
    v51 = v5;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Skipping import into local model because cloud model is not ready: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
LABEL_34:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = MKFCKHome;
  [(MKFCKModel *)&v4 awakeFromInsert];
  v3 = MEMORY[0x277CBEC10];
  [(MKFCKHome *)self setPrimitiveValue:MEMORY[0x277CBEC10] forKey:@"guestAccessCodes"];
  [(MKFCKHome *)self setPrimitiveValue:v3 forKey:@"removedUserAccessCodes"];
}

+ (id)createWithLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  hmd_coreData = [contextCopy hmd_coreData];
  cloudPrivateStore = [hmd_coreData cloudPrivateStore];

  modelID = [modelCopy modelID];
  v11 = [self createWithModelID:modelID persistentStore:cloudPrivateStore context:contextCopy];

  return v11;
}

+ (BOOL)exportDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  updatesCopy = updates;
  contextCopy = context;
  if (iDCopy)
  {
    v27 = 0;
    v14 = [(MKFCKModel *)MKFCKHome modelWithModelID:iDCopy context:contextCopy error:&v27];
    v15 = v27;
    v16 = v15;
    if (v14)
    {
      [contextCopy deleteObject:v14];
      [self _rebalanceFakeHomesWithContext:contextCopy];
    }

    else if (v15)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v24;
        v30 = 2114;
        v31 = v16;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch cloud model: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v20;
      v30 = 2114;
      v31 = dCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Can't process export delete for %{public}@ without a modelID", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context
{
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  propertiesCopy = properties;
  updatesCopy = updates;
  contextCopy = context;
  v14 = [contextCopy objectWithID:dCopy];
  v15 = MKFPropertyNamesFromDescriptions(propertiesCopy);
  v16 = [self fetchWithLocalModel:v14 context:contextCopy];
  v17 = v16;
  if (!v16)
  {
    v39 = v15;
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543874;
      v41 = v33;
      v42 = 2112;
      v43 = v14;
      v44 = 2114;
      v45 = v39;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Local model updated but no cloud model exists: %@ (%{public}@)", buf, 0x20u);
    }

    goto LABEL_17;
  }

  if ([(MKFCKHome *)v16 _exportFromLocalModel:v14 updatedProperties:propertiesCopy context:contextCopy])
  {
    v38 = updatesCopy;
    v39 = v15;
    hasPersistentChangedValues = [v17 hasPersistentChangedValues];
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    v22 = v21;
    if (hasPersistentChangedValues)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v41 = v23;
        v42 = 2112;
        v43 = v17;
        v44 = 2114;
        v45 = v39;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Updated model during export: %@ (%{public}@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy2;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v27 = v37 = v24;
        v28 = [v17 debugDescription];
        *buf = 138543618;
        v41 = v27;
        v42 = 2112;
        v43 = v28;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);

        v24 = v37;
      }

      objc_autoreleasePoolPop(v24);
      v19 = objc_autoreleasePoolPush();
      v29 = v25;
      v22 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      v30 = HMFGetLogIdentifier();
      v31 = [v14 debugDescription];
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = v31;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
    }

    else
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
LABEL_16:
        updatesCopy = v38;
LABEL_17:

        objc_autoreleasePoolPop(v19);
        v34 = 1;
        v15 = v39;
        goto LABEL_18;
      }

      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@No changes to model during export: %@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  v34 = 0;
LABEL_18:

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)_exportFromLocalModel:(void *)model updatedProperties:(void *)properties context:
{
  v7 = a2;
  modelCopy = model;
  propertiesCopy = properties;
  if (self)
  {
    if ([self copyPropertiesFromLocalModel:v7 context:propertiesCopy] && objc_msgSend(self, "_exportResidentsFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportRoomsFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportZonesFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportAccessoriesFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportApplicationDataFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportMatterKeyValueStoreFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportUsersFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportGuestsFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportScenesFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportSettingsFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportServiceGroupsFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportTriggersFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportPersonsFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportInvitationOutgoingFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportNetworkProtectionGroupsFromLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_exportPinCodesFromLocalModel:context:", v7, propertiesCopy))
    {
      self = [self _exportHomeManagerWithContext:propertiesCopy];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

+ (BOOL)exportInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context
{
  v60 = *MEMORY[0x277D85DE8];
  dCopy = d;
  updatesCopy = updates;
  contextCopy = context;
  v11 = [contextCopy objectWithID:dCopy];
  v12 = [self fetchWithLocalModel:v11 context:contextCopy];
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v16;
      v56 = 2112;
      v57 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unexpected existing cloud model during local insert: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = v12;
  }

  else
  {
    v17 = [self createWithLocalModel:v11 context:contextCopy];
  }

  v18 = [MEMORY[0x277CBEB98] set];
  v19 = [(MKFCKHome *)v17 _exportFromLocalModel:v11 updatedProperties:v18 context:contextCopy];

  if (v19)
  {
    v53 = updatesCopy;
    if (v12)
    {
      hasPersistentChangedValues = [v17 hasPersistentChangedValues];
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (hasPersistentChangedValues)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v25 = v52 = v21;
          changedValues = [v17 changedValues];
          allKeys = [changedValues allKeys];
          v27 = [allKeys sortedArrayUsingSelector:sel_compare_];
          *buf = 138543874;
          v55 = v25;
          v56 = 2112;
          v57 = v17;
          v58 = 2114;
          v59 = v27;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Updated model during export: %@ (%{public}@)", buf, 0x20u);

          v21 = v52;
        }

        objc_autoreleasePoolPop(v21);
        v28 = objc_autoreleasePoolPush();
        v29 = selfCopy2;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          v32 = [v17 debugDescription];
          *buf = 138543618;
          v55 = v31;
          v56 = 2112;
          v57 = v32;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = v29;
        v24 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        v33 = HMFGetLogIdentifier();
        v34 = [v11 debugDescription];
        *buf = 138543618;
        v55 = v33;
        v56 = 2112;
        v57 = v34;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
      }

      else
      {
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
LABEL_25:

          objc_autoreleasePoolPop(v21);
          updatesCopy = v53;
          goto LABEL_26;
        }

        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v33;
        v56 = 2112;
        v57 = v17;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@No changes to model during export: %@", buf, 0x16u);
      }

      goto LABEL_25;
    }

    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v38;
      v56 = 2112;
      v57 = v17;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Created new model during export: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy3;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      v43 = [v17 debugDescription];
      *buf = 138543618;
      v55 = v42;
      v56 = 2112;
      v57 = v43;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);

      updatesCopy = v53;
    }

    objc_autoreleasePoolPop(v39);
    v44 = objc_autoreleasePoolPush();
    v45 = v40;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      v47 = HMFGetLogIdentifier();
      v48 = [v11 debugDescription];
      *buf = 138543618;
      v55 = v47;
      v56 = 2112;
      v57 = v48;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);

      updatesCopy = v53;
    }

    objc_autoreleasePoolPop(v44);
    [v45 _rebalanceFakeHomesWithContext:contextCopy];
  }

LABEL_26:

  v49 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (BOOL)importDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  updatesCopy = updates;
  contextCopy = context;
  if (iDCopy)
  {
    v34 = 0;
    v14 = [(_MKFModel *)_MKFHome modelWithModelID:iDCopy context:contextCopy error:&v34];
    v15 = v34;
    v16 = v15;
    if (v14)
    {
      [contextCopy deleteObject:v14];
      v17 = [objc_opt_class() _homeManagerContextFromContext:contextCopy];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __72__MKFCKHome_importDeleteWithObjectID_modelID_additionalUpdates_context___block_invoke;
      v30[3] = &unk_278685DF8;
      v31 = v17;
      selfCopy = self;
      v32 = iDCopy;
      v18 = v17;
      [v18 performBlockAndWait:v30];
    }

    else if (v15)
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v36 = v27;
        v37 = 2114;
        v38 = v16;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local model: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = 0;
      goto LABEL_12;
    }

    v19 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v23;
    v37 = 2114;
    v38 = dCopy;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Can't process import delete for %{public}@ without a modelID", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v19 = 1;
LABEL_13:

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

void __72__MKFCKHome_importDeleteWithObjectID_modelID_additionalUpdates_context___block_invoke(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v19 = 0;
  v3 = [_MKFHomeManager fetchWithContext:v2 error:&v19];
  v4 = v19;
  if (v3)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v27 = __Block_byref_object_copy__23780;
    v28 = __Block_byref_object_dispose__23781;
    v29 = 0;
    v5 = [v3 homes];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__MKFCKHome_importDeleteWithObjectID_modelID_additionalUpdates_context___block_invoke_24;
    v16[3] = &unk_27867B6F0;
    v17 = a1[5];
    v18 = buf;
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

    if (*(*&buf[8] + 40))
    {
      [v3 removeHomes_Object:?];
      [a1[4] deleteObject:*(*&buf[8] + 40)];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = a1[6];
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = a1[5];
        *v20 = 138543874;
        v21 = v13;
        v22 = 2160;
        v23 = 1752392040;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Couldn't find home manager home to delete with modelID %{mask.hash}@", v20, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1[6];
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home manager: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __72__MKFCKHome_importDeleteWithObjectID_modelID_additionalUpdates_context___block_invoke_24(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 handle];
  v7 = [v6 homeUUID];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (BOOL)importUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context
{
  v13 = 0;
  contextCopy = context;
  propertiesCopy = properties;
  v10 = [(MKFCKModel *)MKFCKHome modelWithObjectID:d context:contextCopy error:&v13];
  v11 = [(MKFCKHome *)v10 _importWithContext:contextCopy updatedProperties:propertiesCopy];

  return v11;
}

- (uint64_t)_importWithContext:(void *)context updatedProperties:
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  contextCopy = context;
  if (!self)
  {
    goto LABEL_27;
  }

  if (![self isDeletedLocallyWithContext:v5])
  {
    v11 = [self fetchLocalModelWithContext:v5];
    if (v11)
    {
      v12 = v11;
      if (([(MKFCKHome *)self _importIntoLocalModel:v11 updatedProperties:contextCopy context:v5]& 1) != 0)
      {
        hasPersistentChangedValues = [v12 hasPersistentChangedValues];
        v14 = objc_autoreleasePoolPush();
        selfCopy = self;
        v16 = HMFGetOSLogHandle();
        v17 = v16;
        if (!hasPersistentChangedValues)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v38;
            v44 = 2112;
            v45 = v12;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@No changes to model during import: %@", buf, 0x16u);
          }

          goto LABEL_25;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = HMFGetLogIdentifier();
          changedValues = [v12 changedValues];
          allKeys = [changedValues allKeys];
          v20 = [allKeys sortedArrayUsingSelector:sel_compare_];
          *buf = 138543874;
          v43 = v18;
          v44 = 2112;
          v45 = v12;
          v46 = 2114;
          v47 = v20;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updated model during import: %@ (%{public}@)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        v21 = objc_autoreleasePoolPush();
        v22 = selfCopy;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = [v12 debugDescription];
          *buf = 138543618;
          v43 = v24;
          v44 = 2112;
          v45 = v25;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v14 = objc_autoreleasePoolPush();
        v26 = v22;
        v17 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
LABEL_25:

          objc_autoreleasePoolPop(v14);
          self = 1;
          goto LABEL_26;
        }

LABEL_21:
        v36 = HMFGetLogIdentifier();
        v37 = [v26 debugDescription];
        *buf = 138543618;
        v43 = v36;
        v44 = 2112;
        v45 = v37;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);

        goto LABEL_25;
      }
    }

    else
    {
      v12 = [self createLocalModelWithContext:v5];
      [v12 setOwned:MEMORY[0x277CBEC38]];
      if (([(MKFCKHome *)self _importIntoLocalModel:v12 updatedProperties:contextCopy context:v5]& 1) != 0)
      {
        v27 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v30;
          v44 = 2112;
          v45 = v12;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Created new model during import: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v27);
        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy2;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [v12 debugDescription];
          *buf = 138543618;
          v43 = v34;
          v44 = 2112;
          v45 = v35;
          _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        v14 = objc_autoreleasePoolPush();
        v26 = v32;
        v17 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    self = 0;
LABEL_26:

    goto LABEL_27;
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v10;
    v44 = 2112;
    v45 = selfCopy3;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Skip import processing since home model is already deleted locally: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  self = 1;
LABEL_27:

  v39 = *MEMORY[0x277D85DE8];
  return self;
}

- (uint64_t)_importIntoLocalModel:(void *)model updatedProperties:(void *)properties context:
{
  v7 = a2;
  modelCopy = model;
  propertiesCopy = properties;
  if ([self copyPropertiesIntoLocalModel:v7 context:propertiesCopy] && objc_msgSend(self, "_importResidentsIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importRoomsIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importZonesIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importAccessoriesIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importApplicationDataIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importMatterKeyValueStoreIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importUsersIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importGuestsIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importScenesIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importSettingsIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importServiceGroupsIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importTriggersIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importPersonsIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importInvitationOutgoingIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importNetworkProtectionGroupsIntoLocalModel:context:", v7, propertiesCopy) && objc_msgSend(self, "_importPinCodesIntoLocalModel:context:", v7, propertiesCopy))
  {
    v10 = [self _importHomeManagerWithContext:propertiesCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)importInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  updatesCopy = updates;
  contextCopy = context;
  v24 = 0;
  v11 = [(MKFCKModel *)MKFCKHome modelWithObjectID:dCopy context:contextCopy error:&v24];
  v12 = v24;
  if (!v11 || ([v11 owner], (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(v11, "defaultRoom"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = [MEMORY[0x277CBEB98] set];
    v17 = [(MKFCKHome *)v11 _importWithContext:contextCopy updatedProperties:v16];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v21;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Skip import cloud model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)createWithModelID:(id)d persistentStore:(id)store context:(id)context
{
  contextCopy = context;
  storeCopy = store;
  dCopy = d;
  v11 = [[self alloc] initWithContext:contextCopy];
  [contextCopy assignObject:v11 toPersistentStore:storeCopy];

  [v11 setModelID:dCopy];

  return v11;
}

- (BOOL)validateOwner:(id *)owner error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  if (![(MKFCKModel *)self shouldSkipValidationDuringImport])
  {
    v8 = *owner;
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

    if (v10)
    {
      users = [(MKFCKHome *)self users];
      v12 = [users containsObject:v10];

      if (v12)
      {
        v7 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v22 = *owner;
        v25 = 138543618;
        v26 = v16;
        v27 = 2112;
        v28 = v22;
        v18 = "%{public}@Owner missing from users: %@";
        v19 = v15;
        v20 = 22;
        goto LABEL_13;
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *owner;
        v25 = 138543874;
        v26 = v16;
        v27 = 2114;
        v28 = @"owner";
        v29 = 2112;
        v30 = v17;
        v18 = "%{public}@Invalid value for %{public}@: %@";
        v19 = v15;
        v20 = 32;
LABEL_13:
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, v18, &v25, v20);
      }
    }

    objc_autoreleasePoolPop(v13);
    [objc_opt_class() hmd_errorForInvalidValue:*owner key:@"owner"];
    *error = v7 = 0;
    goto LABEL_15;
  }

  v7 = 1;
LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_exportNetworkProtectionGroupsFromLocalModel:(id)model context:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  networkProtectionGroups = [modelCopy networkProtectionGroups];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(networkProtectionGroups, "count")}];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __91__MKFCKHome_NetworkProtectionGroups___exportNetworkProtectionGroupsFromLocalModel_context___block_invoke;
  v26 = &unk_278671EE8;
  selfCopy = self;
  v10 = contextCopy;
  v28 = v10;
  v30 = &v31;
  v11 = v9;
  v29 = v11;
  [networkProtectionGroups hmf_enumerateWithAutoreleasePoolUsingBlock:&v23];
  if (v32[3])
  {
    allKeys = [v11 allKeys];
    v13 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v14 = [v11 objectsForKeys:v13 notFoundMarker:MEMORY[0x277CBEC10]];
    networkProtectionGroups2 = [(MKFCKHome *)self networkProtectionGroups];
    v16 = HMFEqualObjects();

    if ((v16 & 1) == 0)
    {
      [(MKFCKHome *)self setNetworkProtectionGroups:v14];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Failed to encode network protection groups so leaving unchanged", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  _Block_object_dispose(&v31, 8);
  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

void __91__MKFCKHome_NetworkProtectionGroups___exportNetworkProtectionGroupsFromLocalModel_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v13 = [v5 modelID];
  if (*(a1 + 32))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = [v6 modelID];
    v9 = [v6 manufacturer];
    v10 = [v6 category];
    v11 = [v6 targetProtectionMode];

    v12 = [v7 _encodeNetworkProtectionGroupModelID:v8 manufacturer:v9 category:v10 targetProtectionMode:v11];

    if (v12)
    {
      [*(a1 + 48) setObject:v12 forKeyedSubscript:v13];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = 0;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  *a3 = 1;
LABEL_6:
}

- (BOOL)_importNetworkProtectionGroupsIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  networkProtectionGroups = [modelCopy networkProtectionGroups];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(networkProtectionGroups, "count")}];
  v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(networkProtectionGroups, "count")}];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __91__MKFCKHome_NetworkProtectionGroups___importNetworkProtectionGroupsIntoLocalModel_context___block_invoke;
  v32[3] = &unk_278671E98;
  v11 = v9;
  v33 = v11;
  v12 = v10;
  v34 = v12;
  [networkProtectionGroups hmf_enumerateWithAutoreleasePoolUsingBlock:v32];

  networkProtectionGroups2 = [(MKFCKHome *)self networkProtectionGroups];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __91__MKFCKHome_NetworkProtectionGroups___importNetworkProtectionGroupsIntoLocalModel_context___block_invoke_2;
  v27[3] = &unk_278671EC0;
  v27[4] = self;
  v28 = modelCopy;
  v14 = v11;
  v29 = v14;
  v15 = contextCopy;
  v30 = v15;
  v31 = v12;
  v16 = v12;
  v17 = modelCopy;
  [networkProtectionGroups2 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__MKFCKHome_NetworkProtectionGroups___importNetworkProtectionGroupsIntoLocalModel_context___block_invoke_3;
  v24[3] = &unk_278676860;
  v25 = v14;
  v26 = v15;
  v18 = v15;
  v19 = v14;
  [v16 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
  v20 = MEMORY[0x277CBEB98];
  allValues = [v19 allValues];
  v22 = [v20 setWithArray:allValues];
  [v17 setNetworkProtectionGroups_:v22];

  return 1;
}

void __91__MKFCKHome_NetworkProtectionGroups___importNetworkProtectionGroupsIntoLocalModel_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 modelID];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];

  [*(a1 + 40) addObject:v4];
}

void __91__MKFCKHome_NetworkProtectionGroups___importNetworkProtectionGroupsIntoLocalModel_context___block_invoke_2(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = a2;
  v8 = v3;
  v9 = v5;
  v10 = v6;
  if (v4)
  {
    v11 = [v7 hmf_UUIDForKey:@"i"];
    if (v11)
    {
      v12 = [v7 hmf_stringForKey:@"m"];
      if (v12)
      {
        v13 = [v7 hmf_numberForKey:@"c"];
        if (v13)
        {
          v47 = v8;
          v14 = [v7 hmf_numberForKey:@"p"];
          if (v14)
          {
            v15 = [v9 objectForKeyedSubscript:v11];
            if (!v15)
            {
              contextc = [[_MKFAccessoryNetworkProtectionGroup alloc] initWithContext:v10];
              [(_MKFAccessoryNetworkProtectionGroup *)contextc setModelID:v11];
              [(_MKFAccessoryNetworkProtectionGroup *)contextc setHome:v47];
              v16 = [v4 writerTimestamp];
              [(_MKFAccessoryNetworkProtectionGroup *)contextc setWriterTimestamp:v16];

              v15 = contextc;
            }

            context = v15;
            v17 = [v15 manufacturer];
            v18 = HMFEqualObjects();

            if ((v18 & 1) == 0)
            {
              [context setManufacturer:v12];
            }

            v19 = [context category];
            v20 = HMFEqualObjects();

            if ((v20 & 1) == 0)
            {
              [context setCategory:v13];
            }

            v21 = [context targetProtectionMode];
            v22 = HMFEqualObjects();

            if ((v22 & 1) == 0)
            {
              [context setTargetProtectionMode:v14];
            }
          }

          else
          {
            contextb = objc_autoreleasePoolPush();
            v41 = v4;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v46 = HMFGetLogIdentifier();
              *buf = 138543618;
              v55 = v46;
              v56 = 2112;
              v57 = v7;
              _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Invalid protection mode for network protection group dictionary: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(contextb);
            context = 0;
          }

          v8 = v47;
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v36 = v4;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v49 = v9;
            v38 = v10;
            v40 = v39 = v8;
            *buf = 138543618;
            v55 = v40;
            v56 = 2112;
            v57 = v7;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Invalid category for network protection group dictionary: %@", buf, 0x16u);

            v8 = v39;
            v10 = v38;
            v9 = v49;
          }

          objc_autoreleasePoolPop(contexta);
          context = 0;
        }
      }

      else
      {
        v48 = v9;
        v30 = v10;
        v31 = v8;
        v32 = objc_autoreleasePoolPush();
        v33 = v4;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v55 = v35;
          v56 = 2112;
          v57 = v7;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Invalid manufacturer for network protection group dictionary: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        context = 0;
        v8 = v31;
        v10 = v30;
        v9 = v48;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v4;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v26 = v9;
        v27 = v10;
        v29 = v28 = v8;
        *buf = 138543618;
        v55 = v29;
        v56 = 2112;
        v57 = v7;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Invalid modelID for network protection group dictionary: %@", buf, 0x16u);

        v8 = v28;
        v10 = v27;
        v9 = v26;
      }

      objc_autoreleasePoolPop(v23);
      context = 0;
    }
  }

  else
  {
    context = 0;
  }

  v43 = context;
  if (context)
  {
    v44 = [context modelID];
    [*(a1 + 48) setObject:context forKeyedSubscript:v44];
    [*(a1 + 64) removeObject:v44];

    v43 = context;
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __91__MKFCKHome_NetworkProtectionGroups___importNetworkProtectionGroupsIntoLocalModel_context___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v3)
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:v4];
    [*(a1 + 40) deleteObject:v3];
  }
}

+ (id)_encodeNetworkProtectionGroupModelID:(id)d manufacturer:(id)manufacturer category:(id)category targetProtectionMode:(id)mode
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  manufacturerCopy = manufacturer;
  categoryCopy = category;
  modeCopy = mode;
  if ([manufacturerCopy length])
  {
    [modeCopy integerValue];
    v22[0] = @"i";
    v22[1] = @"m";
    v23[0] = dCopy;
    v23[1] = manufacturerCopy;
    v22[2] = @"c";
    v22[3] = @"p";
    v14 = &unk_283E71D20;
    if (categoryCopy)
    {
      v14 = categoryCopy;
    }

    v23[2] = v14;
    v23[3] = modeCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not going to export network protection group model with nil manufacturer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)_exportSettingsFromLocalModel:(id)model context:(id)context
{
  v89 = *MEMORY[0x277D85DE8];
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  contextCopy = context;
  modelCopy = model;
  [(MKFCKHome *)self _settingModelsForHome:modelCopy media:&v84 networkRouter:&v83 personManager:&v82 softwareUpdate:&v81];
  v8 = v84;
  v9 = v83;
  v78 = v82;
  v80 = v81;
  v10 = modelCopy;
  v11 = v8;
  v12 = contextCopy;
  v13 = v12;
  v79 = v11;
  v77 = v10;
  if (!self)
  {

    v70 = v10;
    v71 = v9;
    v72 = v13;
    goto LABEL_27;
  }

  if (v11)
  {
    mediaPassword = [v11 mediaPassword];
    mediaPeerToPeerEnabled = [v11 mediaPeerToPeerEnabled];
    bOOLValue = [mediaPeerToPeerEnabled BOOLValue];

    minimumMediaUserPrivilege = [v11 minimumMediaUserPrivilege];
    unsignedIntegerValue = [minimumMediaUserPrivilege unsignedIntegerValue];
  }

  else
  {
    entity = [(MKFCKHome *)self entity];
    minimumMediaUserPrivilege = [entity attributesByName];

    v20 = [minimumMediaUserPrivilege objectForKeyedSubscript:@"mediaPeerToPeerEnabled"];
    defaultValue = [v20 defaultValue];
    bOOLValue = [defaultValue BOOLValue];

    v22 = [minimumMediaUserPrivilege objectForKeyedSubscript:@"mediaMinimumUserPrivilege"];
    defaultValue2 = [v22 defaultValue];
    unsignedIntegerValue = [defaultValue2 unsignedIntegerValue];

    mediaPassword = 0;
  }

  mediaPassword2 = [(MKFCKHome *)self mediaPassword];
  v25 = HMFEqualObjects();

  if ((v25 & 1) == 0)
  {
    [(MKFCKHome *)self setMediaPassword:mediaPassword];
  }

  if (bOOLValue != [(MKFCKHome *)self mediaPeerToPeerEnabled])
  {
    [(MKFCKHome *)self setMediaPeerToPeerEnabled:bOOLValue];
  }

  if ([(MKFCKHome *)self mediaMinimumUserPrivilege]!= unsignedIntegerValue)
  {
    [(MKFCKHome *)self setMediaMinimumUserPrivilege:unsignedIntegerValue];
  }

  v26 = v10;
  minHomeKitVersionForAccessoryNetworkProtectionChange = v9;
  v28 = v13;
  if (!minHomeKitVersionForAccessoryNetworkProtectionChange)
  {
    minimumNetworkRouterSupportHomeKitVersion = 0;
    v31 = 0;
    goto LABEL_20;
  }

  v29 = v28;
  networkAccessory = [minHomeKitVersionForAccessoryNetworkProtectionChange networkAccessory];
  if (!networkAccessory)
  {
    goto LABEL_17;
  }

  v31 = [MKFCKHAPAccessory fetchWithLocalModel:networkAccessory context:v29];
  if (!v31)
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v35 = v76 = v32;
      *buf = 138543618;
      v86 = v35;
      v87 = 2112;
      v88 = networkAccessory;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to find cloud network router matching local: %@", buf, 0x16u);

      v32 = v76;
    }

    objc_autoreleasePoolPop(v32);
LABEL_17:
    v31 = 0;
  }

  minimumNetworkRouterSupportHomeKitVersion = [minHomeKitVersionForAccessoryNetworkProtectionChange minimumNetworkRouterSupportHomeKitVersion];
  minHomeKitVersionForAccessoryNetworkProtectionChange = [minHomeKitVersionForAccessoryNetworkProtectionChange minHomeKitVersionForAccessoryNetworkProtectionChange];

LABEL_20:
  v37 = v9;
  activeNetworkRouter = [(MKFCKHome *)self activeNetworkRouter];
  v39 = HMFEqualObjects();

  if ((v39 & 1) == 0)
  {
    [(MKFCKHome *)self setActiveNetworkRouter:v31];
  }

  minimumHomeKitVersionForNetworkRouterSupport = [(MKFCKHome *)self minimumHomeKitVersionForNetworkRouterSupport];
  versionString = [minimumHomeKitVersionForNetworkRouterSupport versionString];
  v42 = HMFEqualObjects();

  if ((v42 & 1) == 0)
  {
    v43 = [[HMDHomeKitVersion alloc] initWithString:minimumNetworkRouterSupportHomeKitVersion];
    [(MKFCKHome *)self setMinimumHomeKitVersionForNetworkRouterSupport:v43];
  }

  minimumHomeKitVersionForAccessoryNetworkProtectionChanges = [(MKFCKHome *)self minimumHomeKitVersionForAccessoryNetworkProtectionChanges];
  versionString2 = [minimumHomeKitVersionForAccessoryNetworkProtectionChanges versionString];
  v46 = HMFEqualObjects();

  if ((v46 & 1) == 0)
  {
    v47 = [[HMDHomeKitVersion alloc] initWithString:minHomeKitVersionForAccessoryNetworkProtectionChange];
    [(MKFCKHome *)self setMinimumHomeKitVersionForAccessoryNetworkProtectionChanges:v47];
  }

  v9 = v37;
LABEL_27:

  v48 = v9;
  v49 = v77;
  v50 = v78;
  v51 = v13;
  v52 = v51;
  if (self)
  {
    personDataZoneUUID = [(MKFCKHome *)self personDataZoneUUID];
    zoneUUID = [v50 zoneUUID];
    v55 = HMFEqualObjects();

    if ((v55 & 1) == 0)
    {
      zoneUUID2 = [v50 zoneUUID];
      [(MKFCKHome *)self setPersonDataZoneUUID:zoneUUID2];
    }

    v57 = v49;
    v58 = v80;
    v59 = v80;
    v60 = v52;
    if (v59)
    {
      automaticSoftwareUpdateEnabled = [v59 automaticSoftwareUpdateEnabled];
      bOOLValue2 = [automaticSoftwareUpdateEnabled BOOLValue];

      automaticThirdPartyAccessorySoftwareUpdateEnabled = [v59 automaticThirdPartyAccessorySoftwareUpdateEnabled];
      bOOLValue3 = [automaticThirdPartyAccessorySoftwareUpdateEnabled BOOLValue];
    }

    else
    {
      homeModelID = [(MKFCKHome *)self homeModelID];
      automaticThirdPartyAccessorySoftwareUpdateEnabled = [HMDHomeSettingsModel defaultModelForHomeUUID:homeModelID];

      v58 = v80;
      automaticSoftwareUpdateEnabled2 = [automaticThirdPartyAccessorySoftwareUpdateEnabled automaticSoftwareUpdateEnabled];
      bOOLValue2 = [automaticSoftwareUpdateEnabled2 BOOLValue];

      v63AutomaticThirdPartyAccessorySoftwareUpdateEnabled = [automaticThirdPartyAccessorySoftwareUpdateEnabled automaticThirdPartyAccessorySoftwareUpdateEnabled];
      bOOLValue3 = [v63AutomaticThirdPartyAccessorySoftwareUpdateEnabled BOOLValue];
    }

    if (bOOLValue2 != [(MKFCKHome *)self automaticSoftwareUpdateEnabled])
    {
      [(MKFCKHome *)self setAutomaticSoftwareUpdateEnabled:bOOLValue2];
    }

    if (bOOLValue3 != [(MKFCKHome *)self automaticThirdPartyAccessorySoftwareUpdateEnabled])
    {
      [(MKFCKHome *)self setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:bOOLValue3];
    }
  }

  else
  {

    v73 = v49;
    v58 = v80;
    v74 = v80;
    v75 = v52;
  }

  v68 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_settingModelsForHome:(void *)home media:(void *)media networkRouter:(void *)router personManager:(void *)manager softwareUpdate:
{
  v10 = a2;
  v11 = v10;
  if (self)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__80429;
    v42 = __Block_byref_object_dispose__80430;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__80429;
    v36 = __Block_byref_object_dispose__80430;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__80429;
    v30 = __Block_byref_object_dispose__80430;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__80429;
    v24 = __Block_byref_object_dispose__80430;
    v25 = 0;
    settings = [v10 settings];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __94__MKFCKHome_Settings___settingModelsForHome_media_networkRouter_personManager_softwareUpdate___block_invoke;
    v14[3] = &unk_278675B78;
    v17 = &v32;
    v18 = &v20;
    v19 = &v26;
    v16 = &v38;
    v14[4] = self;
    v15 = v11;
    [settings hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

    *home = v39[5];
    *media = v33[5];
    *router = v21[5];
    *manager = v27[5];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);
  }
}

void __94__MKFCKHome_Settings___settingModelsForHome_media_networkRouter_personManager_softwareUpdate___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 entity];
  v6 = +[_MKFHomeMediaSetting entity];
  v7 = [v5 isKindOfEntity:v6];

  if (v7)
  {
    v8 = *(a1 + 48);
LABEL_9:
    objc_storeStrong((*(v8 + 8) + 40), a2);
    goto LABEL_10;
  }

  v9 = +[_MKFHomeNetworkRouterSetting entity];
  v10 = [v5 isKindOfEntity:v9];

  if (v10)
  {
    v8 = *(a1 + 56);
    goto LABEL_9;
  }

  v11 = +[_MKFHomePersonManagerSetting entity];
  v12 = [v5 isKindOfEntity:v11];

  if (v12)
  {
    v8 = *(a1 + 64);
    goto LABEL_9;
  }

  v13 = +[_MKFHomeSoftwareUpdateSetting entity];
  v14 = [v5 isKindOfEntity:v13];

  if (v14)
  {
    v8 = *(a1 + 72);
    goto LABEL_9;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = *(a1 + 40);
    v21 = 138543874;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Unhandled setting model for home %@: %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_importSettingsIntoLocalModel:(id)model context:(id)context
{
  v99 = *MEMORY[0x277D85DE8];
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  contextCopy = context;
  modelCopy = model;
  [(MKFCKHome *)self _settingModelsForHome:modelCopy media:&v94 networkRouter:&v93 personManager:&v92 softwareUpdate:&v91];
  v8 = v94;
  v9 = v93;
  v87 = v92;
  v88 = v91;
  v10 = modelCopy;
  v11 = v8;
  v12 = contextCopy;
  v13 = v12;
  v89 = v11;
  v90 = v9;
  if (!self)
  {

    v83 = v10;
    v29 = v9;
    v84 = v13;
    goto LABEL_31;
  }

  v14 = v11;
  if (!v11)
  {
    v14 = [[_MKFHomeMediaSetting alloc] initWithContext:v12, v87];
    modelID = [v10 modelID];
    v16 = [HMDHomeMediaSettingsModel modelIDForHomeUUID:modelID];
    [(_MKFHomeMediaSetting *)v14 setModelID:v16];

    writerTimestamp = [(MKFCKHome *)self writerTimestamp];
    [(_MKFHomeMediaSetting *)v14 setWriterTimestamp:writerTimestamp];

    [(_MKFHomeMediaSetting *)v14 setHome:v10];
  }

  mediaPassword = [(_MKFHomeMediaSetting *)v14 mediaPassword];
  mediaPassword2 = [(MKFCKHome *)self mediaPassword];
  v20 = HMFEqualObjects();

  if ((v20 & 1) == 0)
  {
    mediaPassword3 = [(MKFCKHome *)self mediaPassword];
    [(_MKFHomeMediaSetting *)v14 setMediaPassword:mediaPassword3];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKHome mediaPeerToPeerEnabled](self, "mediaPeerToPeerEnabled")}];
  mediaPeerToPeerEnabled = [(_MKFHomeMediaSetting *)v14 mediaPeerToPeerEnabled];
  v24 = HMFEqualObjects();

  if ((v24 & 1) == 0)
  {
    [(_MKFHomeMediaSetting *)v14 setMediaPeerToPeerEnabled:v22];
  }

  v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[MKFCKHome mediaMinimumUserPrivilege](self, "mediaMinimumUserPrivilege")}];
  minimumMediaUserPrivilege = [(_MKFHomeMediaSetting *)v14 minimumMediaUserPrivilege];
  v27 = HMFEqualObjects();

  if ((v27 & 1) == 0)
  {
    [(_MKFHomeMediaSetting *)v14 setMinimumMediaUserPrivilege:v25];
  }

  v28 = v10;
  v29 = v9;
  v30 = v13;
  if (!v29)
  {
    v29 = [[_MKFHomeNetworkRouterSetting alloc] initWithContext:v30];
    modelID2 = [v28 modelID];
    v32 = [HMDHomeNetworkRouterSettingsModel modelIDForHomeUUID:modelID2];
    [(_MKFHomeNetworkRouterSetting *)v29 setModelID:v32];

    writerTimestamp2 = [(MKFCKHome *)self writerTimestamp];
    [(_MKFHomeNetworkRouterSetting *)v29 setWriterTimestamp:writerTimestamp2];

    [(_MKFHomeNetworkRouterSetting *)v29 setHome:v28];
  }

  activeNetworkRouter = [(MKFCKHome *)self activeNetworkRouter];
  networkAccessory = [(_MKFHomeNetworkRouterSetting *)v29 networkAccessory];
  modelID3 = [networkAccessory modelID];
  modelID4 = [activeNetworkRouter modelID];
  v38 = HMFEqualObjects();

  if ((v38 & 1) == 0)
  {
    if (activeNetworkRouter)
    {
      v39 = [activeNetworkRouter fetchLocalModelWithContext:v30];

      v40 = objc_autoreleasePoolPush();
      selfCopy = self;
      v42 = HMFGetOSLogHandle();
      v43 = v42;
      if (v39)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543618;
          v96 = v44;
          v97 = 2112;
          v98 = v39;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Assigning new active network router: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
        goto LABEL_25;
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v49 = HMFGetLogIdentifier();
        *buf = 138543618;
        v96 = v49;
        v97 = 2112;
        v98 = activeNetworkRouter;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to find local network router matching cloud: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543362;
        v96 = v48;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Removing active network router", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v45);
    }

    v39 = 0;
LABEL_25:
    [(_MKFHomeNetworkRouterSetting *)v29 setNetworkAccessory:v39];
    networkAccessory = v39;
  }

  minimumHomeKitVersionForNetworkRouterSupport = [(MKFCKHome *)self minimumHomeKitVersionForNetworkRouterSupport];
  versionString = [minimumHomeKitVersionForNetworkRouterSupport versionString];

  minimumNetworkRouterSupportHomeKitVersion = [(_MKFHomeNetworkRouterSetting *)v29 minimumNetworkRouterSupportHomeKitVersion];
  v53 = HMFEqualObjects();

  if ((v53 & 1) == 0)
  {
    [(_MKFHomeNetworkRouterSetting *)v29 setMinimumNetworkRouterSupportHomeKitVersion:versionString];
  }

  minimumHomeKitVersionForAccessoryNetworkProtectionChanges = [(MKFCKHome *)self minimumHomeKitVersionForAccessoryNetworkProtectionChanges];
  versionString2 = [minimumHomeKitVersionForAccessoryNetworkProtectionChanges versionString];

  minHomeKitVersionForAccessoryNetworkProtectionChange = [(_MKFHomeNetworkRouterSetting *)v29 minHomeKitVersionForAccessoryNetworkProtectionChange];
  v57 = HMFEqualObjects();

  if ((v57 & 1) == 0)
  {
    [(_MKFHomeNetworkRouterSetting *)v29 setMinHomeKitVersionForAccessoryNetworkProtectionChange:versionString2];
  }

LABEL_31:
  v58 = v10;
  v59 = v87;
  v60 = v13;
  v61 = v60;
  if (self)
  {
    v62 = v59;
    if (!v59)
    {
      v62 = [[_MKFHomePersonManagerSetting alloc] initWithContext:v60];
      modelID5 = [v58 modelID];
      v64 = [HMDHomePersonManagerSettingsModel modelIDForHomeUUID:modelID5];
      [(_MKFHomePersonManagerSetting *)v62 setModelID:v64];

      writerTimestamp3 = [(MKFCKHome *)self writerTimestamp];
      [(_MKFHomePersonManagerSetting *)v62 setWriterTimestamp:writerTimestamp3];

      [(_MKFHomePersonManagerSetting *)v62 setHome:v58];
    }

    personDataZoneUUID = [(MKFCKHome *)self personDataZoneUUID];
    zoneUUID = [(_MKFHomePersonManagerSetting *)v62 zoneUUID];
    v68 = HMFEqualObjects();

    if ((v68 & 1) == 0)
    {
      [(_MKFHomePersonManagerSetting *)v62 setZoneUUID:personDataZoneUUID];
    }

    v69 = v58;
    v70 = v88;
    v71 = v61;
    if (!v70)
    {
      v70 = [[_MKFHomeSoftwareUpdateSetting alloc] initWithContext:v71];
      modelID6 = [v69 modelID];
      v73 = [HMDHomeSettingsModel modelIDForHomeUUID:modelID6];
      [(_MKFHomeSoftwareUpdateSetting *)v70 setModelID:v73];

      writerTimestamp4 = [(MKFCKHome *)self writerTimestamp];
      [(_MKFHomeSoftwareUpdateSetting *)v70 setWriterTimestamp:writerTimestamp4];

      [(_MKFHomeSoftwareUpdateSetting *)v70 setHome:v69];
    }

    v75 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKHome automaticSoftwareUpdateEnabled](self, "automaticSoftwareUpdateEnabled")}];
    automaticSoftwareUpdateEnabled = [(_MKFHomeSoftwareUpdateSetting *)v70 automaticSoftwareUpdateEnabled];
    v77 = HMFEqualObjects();

    if ((v77 & 1) == 0)
    {
      [(_MKFHomeSoftwareUpdateSetting *)v70 setAutomaticSoftwareUpdateEnabled:v75];
    }

    v78 = [MEMORY[0x277CCABB0] numberWithBool:{-[MKFCKHome automaticThirdPartyAccessorySoftwareUpdateEnabled](self, "automaticThirdPartyAccessorySoftwareUpdateEnabled")}];
    automaticThirdPartyAccessorySoftwareUpdateEnabled = [(_MKFHomeSoftwareUpdateSetting *)v70 automaticThirdPartyAccessorySoftwareUpdateEnabled];
    v80 = HMFEqualObjects();

    if ((v80 & 1) == 0)
    {
      [(_MKFHomeSoftwareUpdateSetting *)v70 setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:v78];
    }
  }

  else
  {

    v85 = v58;
    v70 = v88;
    v86 = v61;
  }

  v81 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_exportRoomsFromLocalModel:(id)model context:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  v8 = [(MKFCKHome *)self _exportRelationshipsFromLocalHome:modelCopy localRelationshipName:@"rooms_" context:contextCopy];
  if (v8)
  {
    defaultRoom = [modelCopy defaultRoom];
    defaultRoom2 = [(MKFCKHome *)self defaultRoom];

    if (!defaultRoom2)
    {
      v11 = [(MKFCKModel *)MKFCKRoom fetchWithLocalModel:defaultRoom context:contextCopy];
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v15;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Setting default room during export: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [(MKFCKHome *)selfCopy setDefaultRoom:v11];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_importRoomsIntoLocalModel:(id)model context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  if ([(MKFCKHome *)self _importRelationshipsIntoLocalModel:modelCopy localRelationshipName:@"rooms_" context:contextCopy])
  {
    defaultRoom = [(MKFCKHome *)self defaultRoom];
    v9 = defaultRoom;
    v10 = defaultRoom != 0;
    if (defaultRoom)
    {
      v11 = [defaultRoom fetchLocalModelWithContext:contextCopy];
      defaultRoom2 = [modelCopy defaultRoom];

      if (!defaultRoom2)
      {
        v13 = objc_autoreleasePoolPush();
        selfCopy = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = HMFGetLogIdentifier();
          v23 = 138543618;
          v24 = v16;
          v25 = 2112;
          v26 = v11;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Setting default room during import: %@", &v23, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        [modelCopy setDefaultRoom:v11];
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = modelCopy;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Can't assign default room during import because the record hasn't downloaded yet: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v10 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_exportApplicationDataFromLocalModel:(id)model context:(id)context
{
  context = [_MKFApplicationData appDataDictionaryForContainer:model, context];
  applicationData = [(MKFCKHome *)self applicationData];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    [(MKFCKHome *)self setApplicationData:context];
  }

  return 1;
}

- (BOOL)_importApplicationDataIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  applicationData = [(MKFCKHome *)self applicationData];
  [_MKFApplicationData setAppDataDictionary:applicationData forContainer:modelCopy];

  return 1;
}

- (BOOL)_exportMatterKeyValueStoreFromLocalModel:(id)model context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  matterKeyValueStore = [modelCopy matterKeyValueStore];
  v7 = [matterKeyValueStore countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(matterKeyValueStore);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        objc_opt_self();
        if (([v11 hasPrefix:@"HMDHMMKVS."] & 1) != 0 || (objc_msgSend(v11, "hasPrefix:", @"CHIPPluginStorageKey_") & 1) != 0 || (objc_msgSend(v11, "hasPrefix:", @"DeviceTopologyDict") & 1) != 0 || (objc_msgSend(v11, "hasPrefix:", @"f/") & 1) != 0 || (objc_msgSend(v11, "hasPrefix:", @"g/") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"IPK"))
        {

LABEL_13:
          matterKeyValueStore2 = [modelCopy matterKeyValueStore];
          v13 = [matterKeyValueStore2 objectForKeyedSubscript:v11];
          [dictionary setObject:v13 forKeyedSubscript:v11];

          goto LABEL_14;
        }

        v14 = [v11 hasPrefix:@"HMD.MTRPlugin"];

        if (v14)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v10;
      }

      while (v8 != v10);
      v15 = [matterKeyValueStore countByEnumeratingWithState:&v22 objects:v26 count:16];
      v8 = v15;
    }

    while (v15);
  }

  matterKeyValueStore3 = [(MKFCKHome *)self matterKeyValueStore];
  v17 = HMFEqualObjects();

  if ((v17 & 1) == 0)
  {
    v18 = [dictionary copy];
    [(MKFCKHome *)self setMatterKeyValueStore:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_importMatterKeyValueStoreIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  matterKeyValueStore = [modelCopy matterKeyValueStore];
  matterKeyValueStore2 = [(MKFCKHome *)self matterKeyValueStore];
  v8 = HMFEqualObjects();

  if ((v8 & 1) == 0)
  {
    matterKeyValueStore3 = [(MKFCKHome *)self matterKeyValueStore];
    [modelCopy setMatterKeyValueStore:matterKeyValueStore3];
  }

  return 1;
}

+ (id)_balanceFakeZonesForHome:(id)home context:(id)context
{
  homeCopy = home;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v8 = arc4random_uniform(0);
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = [[MKFCKZone alloc] initWithContext:contextCopy];
      [array addObject:v10];
      uUID = [MEMORY[0x277CCAD78] UUID];
      [(MKFCKZone *)v10 setModelID:uUID];

      [(MKFCKZone *)v10 setHome:homeCopy];
      v12 = arc4random_uniform(0x14u);
      v13 = randomStringWithLength(v12);
      [(MKFCKZone *)v10 setName:v13];

      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      rooms = [homeCopy rooms];
      v15 = arc4random_uniform([rooms count] - 1);

      v25 = v15;
      if (v23[3])
      {
        rooms2 = [homeCopy rooms];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __59__MKFCKHome_FakeRecords___balanceFakeZonesForHome_context___block_invoke;
        v19[3] = &unk_27867FD28;
        v20 = v10;
        v21 = &v22;
        [rooms2 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];
      }

      _Block_object_dispose(&v22, 8);

      --v9;
    }

    while (v9);
  }

  v17 = [array copy];

  return v17;
}

void __59__MKFCKHome_FakeRecords___balanceFakeZonesForHome_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [v9 homeDefault];
  if (v5)
  {
  }

  else
  {
    v6 = [v9 zones];

    if (!v6)
    {
      [*(a1 + 32) addRoomsObject:v9];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24) - 1;
      *(v7 + 24) = v8;
      if (!v8)
      {
        *a3 = 1;
      }
    }
  }
}

+ (id)_balanceFakeUsersForHome:(id)home context:(id)context
{
  homeCopy = home;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [[MKFCKUser alloc] initWithContext:contextCopy];
  [array addObject:v9];
  [(MKFCKUser *)v9 setHome:homeCopy];
  [self _setPropertiesOnUser:v9 isOwner:1];

  v10 = arc4random_uniform(2u);
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = [[MKFCKUser alloc] initWithContext:contextCopy];
      [array addObject:v12];
      [(MKFCKUser *)v12 setHome:homeCopy];
      [self _setPropertiesOnUser:v12 isOwner:0];

      --v11;
    }

    while (v11);
  }

  v13 = [array copy];

  return v13;
}

+ (void)_setPropertiesOnUser:(id)user isOwner:(BOOL)owner
{
  ownerCopy = owner;
  userCopy = user;
  home = [userCopy home];
  v6 = arc4random_uniform(0x14u);
  v7 = randomStringWithLength(v6);
  [userCopy setAccountHandle:v7];

  [userCopy setAnnounceAccessLevel:arc4random_uniform(4u)];
  [userCopy setCamerasAccessLevel:arc4random_uniform(4u)];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [userCopy setModelID:uUID];

  [userCopy setPrivilege:arc4random_uniform(4u)];
  [userCopy setRemoteAccessAllowed:arc4random_uniform(1u) != 0];
  pairingIdentity = [MEMORY[0x277D0F8A8] pairingIdentity];
  v10 = objc_alloc(MEMORY[0x277CFEC20]);
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID2 UUIDString];
  publicKey = [pairingIdentity publicKey];
  if (ownerCopy)
  {
    privateKey = [pairingIdentity privateKey];
  }

  else
  {
    privateKey = 0;
  }

  v15 = [v10 initWithIdentifier:uUIDString publicKey:publicKey privateKey:privateKey permissions:ownerCopy];
  [userCopy setPairingIdentity:v15];

  if (ownerCopy)
  {

    [home setOwner:userCopy];
    [userCopy setOwnedHome:home];
  }

  else
  {
  }
}

+ (id)_balanceFakeTriggersForHome:(id)home context:(id)context
{
  homeCopy = home;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v8 = arc4random_uniform(2u);
  if (v8)
  {
    v9 = v8;
    do
    {
      v10 = [[MKFCKEventTrigger alloc] initWithContext:contextCopy];
      [array addObject:v10];
      uUID = [MEMORY[0x277CCAD78] UUID];
      [(MKFCKEventTrigger *)v10 setModelID:uUID];

      [(MKFCKEventTrigger *)v10 setHome:homeCopy];
      [(MKFCKEventTrigger *)v10 setAutoDelete:arc4random_uniform(1u) != 0];
      v12 = randomStringWithLength(20);
      [(MKFCKEventTrigger *)v10 setConfiguredName:v12];

      [(MKFCKEventTrigger *)v10 setEnabled:arc4random_uniform(1u) != 0];
      [(MKFCKEventTrigger *)v10 setExecuteOnce:arc4random_uniform(1u) != 0];
      v13 = randomStringWithLength(20);
      [(MKFCKEventTrigger *)v10 setName:v13];

      v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"foo = %@", &unk_283E73E20];
      [(MKFCKEventTrigger *)v10 setCondition:v14];

      [(MKFCKEventTrigger *)v10 setEvents:&unk_283E75B90];
      v43 = 0;
      v44 = &v43;
      v45 = 0x2020000000;
      scenes = [homeCopy scenes];
      v16 = arc4random_uniform([scenes count]);

      v46 = v16;
      if (v44[3])
      {
        scenes2 = [homeCopy scenes];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __62__MKFCKHome_FakeRecords___balanceFakeTriggersForHome_context___block_invoke;
        v40[3] = &unk_27867FCD8;
        v41 = v10;
        v42 = &v43;
        [scenes2 hmf_enumerateWithAutoreleasePoolUsingBlock:v40];
      }

      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      accessories = [homeCopy accessories];
      v19 = arc4random_uniform([accessories count]);

      v39 = v19;
      if (v37[3])
      {
        accessories2 = [homeCopy accessories];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __62__MKFCKHome_FakeRecords___balanceFakeTriggersForHome_context___block_invoke_2;
        v33[3] = &unk_27867FCB0;
        v34 = v10;
        v35 = &v36;
        [accessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v33];
      }

      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      users = [homeCopy users];
      v22 = arc4random_uniform([users count]);

      v32 = v22;
      if (v30[3])
      {
        users2 = [homeCopy users];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __62__MKFCKHome_FakeRecords___balanceFakeTriggersForHome_context___block_invoke_3;
        v26[3] = &unk_27867FD00;
        v27 = v10;
        v28 = &v29;
        [users2 hmf_enumerateWithAutoreleasePoolUsingBlock:v26];
      }

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v43, 8);

      --v9;
    }

    while (v9);
  }

  v24 = [array copy];

  return v24;
}

uint64_t __62__MKFCKHome_FakeRecords___balanceFakeTriggersForHome_context___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) addScenesObject:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24) - 1;
  *(v6 + 24) = v7;
  if (!v7)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __62__MKFCKHome_FakeRecords___balanceFakeTriggersForHome_context___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) addAccessoriesObject:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24) - 1;
  *(v6 + 24) = v7;
  if (!v7)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __62__MKFCKHome_FakeRecords___balanceFakeTriggersForHome_context___block_invoke_3(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) addUsersObject:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24) - 1;
  *(v6 + 24) = v7;
  if (!v7)
  {
    *a3 = 1;
  }

  return result;
}

+ (id)_balanceFakeScenesForHome:(id)home context:(id)context
{
  v33[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v8 = arc4random_uniform(0xAu);
  if (v8 <= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  do
  {
    v10 = [[MKFCKScene alloc] initWithContext:contextCopy];
    [array addObject:v10];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(MKFCKScene *)v10 setModelID:uUID];

    [(MKFCKScene *)v10 setHome:homeCopy];
    v31 = @"foo";
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    v32 = uUID2;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v33[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [(MKFCKScene *)v10 setActions:v14];

    [(MKFCKScene *)v10 setApplicationData:MEMORY[0x277CBEC10]];
    v15 = arc4random_uniform(0x14u);
    v16 = randomStringWithLength(v15);
    [(MKFCKScene *)v10 setName:v16];

    v17 = arc4random_uniform(0x14u);
    v18 = randomStringWithLength(v17);
    [(MKFCKScene *)v10 setType:v18];

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    accessories = [homeCopy accessories];
    LODWORD(v13) = arc4random_uniform([accessories count]);

    v30 = v13;
    if (v28[3])
    {
      accessories2 = [homeCopy accessories];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __60__MKFCKHome_FakeRecords___balanceFakeScenesForHome_context___block_invoke;
      v24[3] = &unk_27867FCB0;
      v25 = v10;
      v26 = &v27;
      [accessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    }

    _Block_object_dispose(&v27, 8);

    --v9;
  }

  while (v9);
  v21 = [array copy];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __60__MKFCKHome_FakeRecords___balanceFakeScenesForHome_context___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) addAccessoriesObject:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24) - 1;
  *(v6 + 24) = v7;
  if (!v7)
  {
    *a3 = 1;
  }

  return result;
}

+ (id)_balanceFakeRoomsForHome:(id)home context:(id)context
{
  homeCopy = home;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v8 = [[MKFCKRoom alloc] initWithContext:contextCopy];
  [array addObject:v8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(MKFCKRoom *)v8 setModelID:uUID];

  [(MKFCKRoom *)v8 setHome:homeCopy];
  [homeCopy setDefaultRoom:v8];

  v10 = arc4random_uniform(8u);
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = [[MKFCKRoom alloc] initWithContext:contextCopy];
      [array addObject:v12];
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      [(MKFCKRoom *)v12 setModelID:uUID2];

      [(MKFCKRoom *)v12 setHome:homeCopy];
      v14 = arc4random_uniform(0x14u);
      v15 = randomStringWithLength(v14);
      [(MKFCKRoom *)v12 setName:v15];

      --v11;
    }

    while (v11);
  }

  v16 = [array copy];

  return v16;
}

+ (id)_balanceFakeMediaAccessoriesForHome:(id)home context:(id)context
{
  homeCopy = home;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v9 = arc4random_uniform(2u);
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = [[MKFCKAppleMediaAccessory alloc] initWithContext:contextCopy];
      [array addObject:v11];
      [(MKFCKAppleMediaAccessory *)v11 setHome:homeCopy];
      [self _setCommonPropertiesOnAccessory:v11];
      pairingIdentity = [MEMORY[0x277D0F8A8] pairingIdentity];
      [(MKFCKAppleMediaAccessory *)v11 setPairingIdentity:pairingIdentity];

      --v10;
    }

    while (v10);
  }

  v13 = [array copy];

  return v13;
}

+ (id)_balanceFakeHAPAccessoriesForHome:(id)home context:(id)context
{
  homeCopy = home;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v9 = arc4random_uniform(0x14u);
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x277D0F1D8];
    do
    {
      v12 = [[MKFCKHAPAccessory alloc] initWithContext:contextCopy];
      [array addObject:v12];
      [(MKFCKHAPAccessory *)v12 setHome:homeCopy];
      [self _setCommonPropertiesOnAccessory:v12];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:arc4random_uniform(6u)];
      [(MKFCKHAPAccessory *)v12 setCertificationStatus:v13];

      [(MKFCKHAPAccessory *)v12 setHasOnboardedForNaturalLighting:arc4random_uniform(1u) != 0];
      v14 = HMFRandomDataWithLength();
      [(MKFCKHAPAccessory *)v12 setPublicKey:v14];

      v15 = MEMORY[0x277CCACA8];
      identifier = [(MKFCKHAPAccessory *)v12 identifier];
      v17 = [v15 stringWithFormat:@"%@+1", identifier];
      [(MKFCKHAPAccessory *)v12 setUniqueIdentifier:v17];

      --v10;
    }

    while (v10);
  }

  v18 = [array copy];

  return v18;
}

+ (void)_setCommonPropertiesOnAccessory:(id)accessory
{
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  [accessoryCopy setApplicationData:MEMORY[0x277CBEC10]];
  v4 = arc4random_uniform(0x14u);
  v5 = randomStringWithLength(v4);
  [accessoryCopy setConfiguredName:v5];

  v6 = randomStringWithLength(14);
  [accessoryCopy setIdentifier:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:arc4random_uniform(0x40u)];
  [accessoryCopy setInitialCategory:v7];

  v8 = arc4random_uniform(0x14u);
  v9 = randomStringWithLength(v8);
  [accessoryCopy setInitialManufacturer:v9];

  v10 = arc4random_uniform(0x14u);
  v11 = randomStringWithLength(v10);
  [accessoryCopy setInitialModel:v11];

  uUID = [MEMORY[0x277CCAD78] UUID];
  [accessoryCopy setModelID:uUID];

  v13 = randomStringWithLength(16);
  [accessoryCopy setProductData:v13];

  v14 = arc4random_uniform(0x14u);
  v15 = randomStringWithLength(v14);
  [accessoryCopy setSerialNumber:v15];

  if (arc4random_uniform(1u))
  {
    [accessoryCopy setNetworkClientIdentifier:arc4random_uniform(0x20u)];
    [accessoryCopy setNetworkClientLAN:arc4random_uniform(0x20u)];
    uUID2 = [MEMORY[0x277CCAD78] UUID];
    [accessoryCopy setNetworkRouterUUID:uUID2];
  }

  rooms = [home rooms];
  anyObject = [rooms anyObject];
  [accessoryCopy setRoom:anyObject];
}

+ (id)_createFakeHomeInPersistentStore:(id)store context:(id)context
{
  v38[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = MEMORY[0x277CBEB18];
  storeCopy = store;
  array = [v7 array];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v11 = [MKFCKHome createWithModelID:uUID persistentStore:storeCopy context:contextCopy];

  [array addObject:v11];
  v37[0] = @"foo";
  v12 = randomStringWithLength(32);
  v38[0] = v12;
  v37[1] = @"bar";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:arc4random_uniform(0x400u)];
  v38[1] = v13;
  v37[2] = @"baz";
  v35 = &stru_283CF9D50;
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  v36 = uUID2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v38[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  [v11 setApplicationData:v16];

  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:(86400 * arc4random_uniform(0x800u))];
  [v11 setCreationDate:v17];

  [v11 setDoorbellChimeEnabled:arc4random_uniform(1u) != 0];
  v18 = [MEMORY[0x277CBEAA8] now];
  [v11 setFirstHAPAccessoryAddedDate:v18];

  [v11 setHasAnyUserAcknowledgedCameraRecordingOnboarding:arc4random_uniform(1u) != 0];
  [v11 setHasOnboardedForAccessCode:arc4random_uniform(1u) != 0];
  [v11 setHasOnboardedForWalletKey:arc4random_uniform(1u) != 0];
  [v11 setHomeManagerApplicationData:MEMORY[0x277CBEC10]];
  [v11 setMultiUserEnabled:arc4random_uniform(1u) != 0];
  v19 = arc4random_uniform(0x14u);
  v20 = randomStringWithLength(v19);
  [v11 setName:v20];

  v21 = +[HMDHomeNFCReaderKey createRandomKey];
  [v11 setNfcReaderKey:v21];

  uUID3 = [MEMORY[0x277CCAD78] UUID];
  [v11 setPersonDataZoneUUID:uUID3];

  [v11 setPrimaryHomeCounter:arc4random_uniform(0x40u)];
  [v11 setAutomaticSoftwareUpdateEnabled:arc4random_uniform(1u) != 0];
  [v11 setAutomaticThirdPartyAccessorySoftwareUpdateEnabled:arc4random_uniform(1u) != 0];
  [v11 setMediaMinimumUserPrivilege:arc4random_uniform(4u)];
  v23 = arc4random_uniform(0x14u);
  v24 = randomStringWithLength(v23);
  [v11 setMediaPassword:v24];

  [v11 setMediaPeerToPeerEnabled:arc4random_uniform(1u) != 0];
  [v11 setDidOnboardMemory:arc4random_uniform(1u) != 0];
  [v11 setMemoryEnabled:arc4random_uniform(1u) != 0];
  if (arc4random_uniform(1u))
  {
    [v11 setNetworkProtectionGroups:&unk_283E75B78];
    [v11 setNetworkProtectionMode:arc4random_uniform(4u)];
  }

  v25 = [self _balanceFakeRoomsForHome:v11 context:contextCopy];
  [array addObjectsFromArray:v25];

  v26 = [self _balanceFakeUsersForHome:v11 context:contextCopy];
  [array addObjectsFromArray:v26];

  v27 = [self _balanceFakeZonesForHome:v11 context:contextCopy];
  [array addObjectsFromArray:v27];

  v28 = [self _balanceFakeHAPAccessoriesForHome:v11 context:contextCopy];
  [array addObjectsFromArray:v28];

  v29 = [self _balanceFakeMediaAccessoriesForHome:v11 context:contextCopy];
  [array addObjectsFromArray:v29];

  v30 = [self _balanceFakeScenesForHome:v11 context:contextCopy];
  [array addObjectsFromArray:v30];

  v31 = [self _balanceFakeTriggersForHome:v11 context:contextCopy];
  [array addObjectsFromArray:v31];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __67__MKFCKHome_FakeRecords___createFakeHomeInPersistentStore_context___block_invoke;
  v34[3] = &__block_descriptor_40_e27_v32__0__MKFCKModel_8Q16_B24l;
  v34[4] = self;
  [array hmf_enumerateWithAutoreleasePoolUsingBlock:v34];

  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

void __67__MKFCKHome_FakeRecords___createFakeHomeInPersistentStore_context___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 convertToFakeModel];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Created fake model: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_maybeDeleteFakeHomes:(id)homes context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  contextCopy = context;
  v8 = [homesCopy count];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__MKFCKHome_FakeRecords___maybeDeleteFakeHomes_context___block_invoke;
  v21[3] = &unk_27867FC48;
  v10 = v9;
  v22 = v10;
  v20 = homesCopy;
  [homesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
  [v10 sortUsingComparator:&__block_literal_global_204541];
  if ([v10 count])
  {
    v11 = v8 >= 4;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v8 - 1;
    do
    {
      lastObject = [v10 lastObject];
      [v10 removeLastObject];
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v17;
        v25 = 2112;
        v26 = lastObject;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Pruning fake home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [contextCopy deleteObject:lastObject];

      if (![v10 count])
      {
        break;
      }
    }

    while (v12-- > 3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __56__MKFCKHome_FakeRecords___maybeDeleteFakeHomes_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFake])
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __56__MKFCKHome_FakeRecords___maybeDeleteFakeHomes_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 flags];
  v6 = [v4 flags];

  v7 = [v5 compare:v6];
  return v7;
}

+ (void)_maybeCreateFakeHomes:(id)homes context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  homesCopy = homes;
  contextCopy = context;
  v8 = [homesCopy count];
  v9 = v8;
  if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *v29 = 138543618;
      *&v29[4] = v13;
      *&v29[12] = 2048;
      *&v29[14] = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not creating or deleting any fake homes as home count is within normal range: %lu", v29, 0x16u);
    }

LABEL_22:
    objc_autoreleasePoolPop(v10);
    goto LABEL_23;
  }

  if (v8 <= 2)
  {
    v14 = 2 - v8;
  }

  else
  {
    v14 = 0;
  }

  v15 = arc4random_uniform(3 - v8);
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *v29 = 138543362;
      *&v29[4] = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Not creating any fake homes", v29, 0xCu);
    }

    goto LABEL_22;
  }

  hmd_coreData = [contextCopy hmd_coreData];
  cloudPrivateStore = [hmd_coreData cloudPrivateStore];

  v19 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = "s";
    *v29 = 138543874;
    *&v29[4] = v22;
    if (v16 == 1)
    {
      v23 = "";
    }

    *&v29[12] = 2048;
    *&v29[14] = v16;
    v30 = 2080;
    v31 = v23;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Creating %lu fake home%s", v29, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
  for (i = 0; i < v16; ++i)
  {
    v25 = [selfCopy3 _createFakeHomeInPersistentStore:cloudPrivateStore context:{contextCopy, *v29}];
  }

LABEL_23:
  v28 = *MEMORY[0x277D85DE8];
}

+ (void)_rebalanceFakeHomesWithContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (isInternalBuild() && ([contextCopy hmd_fakeRecordsEnabled] & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Fake record injection disabled, this had better be a unit test!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    fetchRequest = [self fetchRequest];
    v6 = +[(MKFCKModel *)MKFCKHome];
    [fetchRequest setPropertiesToFetch:v6];

    [fetchRequest setFetchBatchSize:3];
    v18 = 0;
    v7 = [contextCopy executeFetchRequest:fetchRequest error:&v18];
    v8 = v18;
    if (v7)
    {
      if ([v7 count])
      {
        if ([v7 count] > 3)
        {
          [self _maybeDeleteFakeHomes:v7 context:contextCopy];
        }

        else
        {
          [self _maybeCreateFakeHomes:v7 context:contextCopy];
        }
      }
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v12;
        v21 = 2114;
        v22 = v8;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch other homes when balancing fake homes: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_exportPinCodesFromLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  if ([(MKFCKHome *)self _exportGuestAccessCodesFromLocalModel:modelCopy context:contextCopy])
  {
    v8 = [(MKFCKHome *)self _exportRemovedUserAccessCodesFromLocalModel:modelCopy context:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_exportRemovedUserAccessCodesFromLocalModel:(id)model context:(id)context
{
  removedAccessCodes = [model removedAccessCodes];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(removedAccessCodes, "count")}];
  removedUserAccessCodes = [(MKFCKHome *)self removedUserAccessCodes];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__MKFCKHome_PinCodes___exportRemovedUserAccessCodesFromLocalModel_context___block_invoke;
  v15[3] = &unk_278687720;
  v8 = v6;
  v16 = v8;
  [removedUserAccessCodes enumerateKeysAndObjectsUsingBlock:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__MKFCKHome_PinCodes___exportRemovedUserAccessCodesFromLocalModel_context___block_invoke_2;
  v13[3] = &unk_278687770;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  [removedAccessCodes hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
  removedUserAccessCodes2 = [(MKFCKHome *)self removedUserAccessCodes];
  v11 = HMFEqualObjects();

  if ((v11 & 1) == 0)
  {
    [(MKFCKHome *)self setRemovedUserAccessCodes:v9];
  }

  return 1;
}

void __75__MKFCKHome_PinCodes___exportRemovedUserAccessCodesFromLocalModel_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*MEMORY[0x277CBEEE8] == v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void __75__MKFCKHome_PinCodes___exportRemovedUserAccessCodesFromLocalModel_context___block_invoke_2(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessCode];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v3 hh2ModelID];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (*MEMORY[0x277CBEEE8] == v7)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v25;
        v35 = 2112;
        v36 = v3;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Not exporting %@ as it is marked as tomb stoned record.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = [v3 userID];
      v11 = [v3 userModelID];
      v12 = [v3 userName];
      v13 = [v3 dateRemoved];
      v14 = [v9 _encodeRemovedUserInfoWithUserID:v10 removedUserModelID:v11 userName:v12 dateRemoved:v13];

      if (v14)
      {
        v31[0] = @"a";
        v31[1] = @"ru";
        v32[0] = v4;
        v32[1] = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
        v16 = *(a1 + 40);
        v17 = [v3 hh2ModelID];
        [v16 setObject:v15 forKeyedSubscript:v17];
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = *(a1 + 32);
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v34 = v29;
          v35 = 2112;
          v36 = v3;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Not exporting %@ could not encode removed user info", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v21;
      v35 = 2112;
      v36 = v3;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Not exporting %@ as access code is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)_exportGuestAccessCodesFromLocalModel:(id)model context:(id)context
{
  guestAccessCodes = [model guestAccessCodes];
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(guestAccessCodes, "count")}];
  guestAccessCodes2 = [(MKFCKHome *)self guestAccessCodes];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__MKFCKHome_PinCodes___exportGuestAccessCodesFromLocalModel_context___block_invoke;
  v15[3] = &unk_278687720;
  v8 = v6;
  v16 = v8;
  [guestAccessCodes2 enumerateKeysAndObjectsUsingBlock:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__MKFCKHome_PinCodes___exportGuestAccessCodesFromLocalModel_context___block_invoke_2;
  v13[3] = &unk_278687748;
  v13[4] = self;
  v9 = v8;
  v14 = v9;
  [guestAccessCodes hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
  guestAccessCodes3 = [(MKFCKHome *)self guestAccessCodes];
  v11 = HMFEqualObjects();

  if ((v11 & 1) == 0)
  {
    [(MKFCKHome *)self setGuestAccessCodes:v9];
  }

  return 1;
}

void __69__MKFCKHome_PinCodes___exportGuestAccessCodesFromLocalModel_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*MEMORY[0x277CBEEE8] == v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void __69__MKFCKHome_PinCodes___exportGuestAccessCodesFromLocalModel_context___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accessCode];
  if (v4 && (v5 = v4, [v3 label], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = *(a1 + 40);
    v8 = [v3 hh2ModelID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (*MEMORY[0x277CBEEE8] == v9)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v25;
        v29 = 2112;
        v30 = v3;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Not exporting %@ as it is marked as tomb stoned record.", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }

    else
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      v11 = [v3 accessCode];
      [v10 setObject:v11 forKeyedSubscript:@"a"];

      v12 = [v3 label];
      [v10 setObject:v12 forKeyedSubscript:@"l"];

      v13 = [v3 userUniqueIDForAccessories];

      if (v13)
      {
        v14 = [v3 userUniqueIDForAccessories];
        [v10 setObject:v14 forKeyedSubscript:@"uu"];
      }

      v15 = [v10 copy];
      v16 = *(a1 + 40);
      v17 = [v3 hh2ModelID];
      [v16 setObject:v15 forKeyedSubscript:v17];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v3;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Not exporting %@ as access code or label is nil", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_importPinCodesIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  if ([(MKFCKHome *)self _importGuestAccessCodesIntoLocalModel:modelCopy context:contextCopy])
  {
    v8 = [(MKFCKHome *)self _importRemovedUserAccessCodesIntoLocalModel:modelCopy context:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_importRemovedUserAccessCodesIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v8 = MEMORY[0x277CBEB38];
  removedAccessCodes = [modelCopy removedAccessCodes];
  v10 = [v8 dictionaryWithCapacity:{objc_msgSend(removedAccessCodes, "count")}];

  removedAccessCodes2 = [modelCopy removedAccessCodes];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __75__MKFCKHome_PinCodes___importRemovedUserAccessCodesIntoLocalModel_context___block_invoke;
  v27[3] = &unk_2786876F8;
  v12 = v10;
  v28 = v12;
  [removedAccessCodes2 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];

  removedUserAccessCodes = [(MKFCKHome *)self removedUserAccessCodes];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__MKFCKHome_PinCodes___importRemovedUserAccessCodesIntoLocalModel_context___block_invoke_2;
  v23[3] = &unk_2786876D0;
  v23[4] = self;
  v14 = v12;
  v24 = v14;
  v15 = contextCopy;
  v25 = v15;
  v16 = modelCopy;
  v26 = v16;
  [removedUserAccessCodes enumerateKeysAndObjectsUsingBlock:v23];

  v17 = MEMORY[0x277CBEB98];
  allValues = [v14 allValues];
  v19 = [v17 setWithArray:allValues];

  removedAccessCodes3 = [v16 removedAccessCodes];
  v21 = HMFEqualObjects();

  if ((v21 & 1) == 0)
  {
    [v16 setRemovedAccessCodes_:v19];
  }

  return 1;
}

void __75__MKFCKHome_PinCodes___importRemovedUserAccessCodesIntoLocalModel_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hh2ModelID];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

void __75__MKFCKHome_PinCodes___importRemovedUserAccessCodesIntoLocalModel_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*MEMORY[0x277CBEEE8] == v6)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v16;
      v24 = 2160;
      v25 = 1752392040;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Found tomb stoned removed user access code with modelID: %{mask.hash}@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
    if (v8)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v20;
        v24 = 2112;
        v25 = v8;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Going to delete the removed user access code from working store: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [*(a1 + 48) deleteObject:v8];
    }
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:@"ru"];
    v9 = [v7 objectForKeyedSubscript:@"a"];
    v10 = [*(a1 + 32) _populateRemovedUserAccessCodeFromDictionary:v8 withAccessCode:v9 hh2ModelID:v5 home:*(a1 + 56) groupsByModelID:*(a1 + 40) context:*(a1 + 48)];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 hh2ModelID];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v12];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_populateRemovedUserAccessCodeFromDictionary:(id)dictionary withAccessCode:(id)code hh2ModelID:(id)d home:(id)home groupsByModelID:(id)iD context:(id)context
{
  v97 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  codeCopy = code;
  dCopy = d;
  homeCopy = home;
  iDCopy = iD;
  contextCopy = context;
  if (!codeCopy || ![codeCopy length])
  {
    v43 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v45 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
LABEL_26:

      objc_autoreleasePoolPop(v43);
      v31 = 0;
      goto LABEL_45;
    }

    v46 = HMFGetLogIdentifier();
    *buf = 138543618;
    v94 = v46;
    v95 = 2112;
    v96 = dictionaryCopy;
    v47 = "%{public}@Without accessCode cannot import _MKFRemovedUserAccessCode : %@";
    v48 = v45;
    v49 = 22;
LABEL_25:
    _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, v47, buf, v49);

    goto LABEL_26;
  }

  if (!dCopy)
  {
    v43 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v45 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    v46 = HMFGetLogIdentifier();
    *buf = 138543362;
    v94 = v46;
    v47 = "%{public}@Without hh2ModelID cannot import _MKFRemovedUserAccessCode";
    v48 = v45;
    v49 = 12;
    goto LABEL_25;
  }

  v20 = [dictionaryCopy hmf_stringForKey:@"ui"];
  v21 = v20;
  if (v20 && [v20 length])
  {
    v22 = [dictionaryCopy hmf_stringForKey:@"un"];
    v23 = v22;
    if (v22 && [v22 length])
    {
      v24 = [dictionaryCopy hmf_UUIDForKey:@"i"];
      v90 = v24;
      if (v24)
      {
        v25 = v24;
        v26 = [dictionaryCopy hmf_dateForKey:@"d"];
        context = v26;
        if (v26)
        {
          v82 = v21;
          v27 = [objc_alloc(MEMORY[0x277CD1D50]) initWithName:v23 userUUID:v25 userID:v21 dateRemoved:v26];
          [homeCopy modelID];
          v29 = v28 = v23;
          v81 = v27;
          v30 = [HMDRemovedUserAccessCodeModel modelUUIDForHomeUUID:v29 removedUserInfo:v27 accessCode:codeCopy];

          v31 = [iDCopy objectForKeyedSubscript:dCopy];
          if (!v31)
          {
            v31 = [[_MKFRemovedUserAccessCode alloc] initWithContext:contextCopy];
            [(_MKFRemovedUserAccessCode *)v31 setModelID:v30];
            [(_MKFRemovedUserAccessCode *)v31 setHh2ModelID:dCopy];
          }

          userName = [(_MKFRemovedUserAccessCode *)v31 userName];
          v86 = v28;
          v33 = HMFEqualObjects();

          if ((v33 & 1) == 0)
          {
            [(_MKFRemovedUserAccessCode *)v31 setUserName:v28];
          }

          userModelID = [(_MKFRemovedUserAccessCode *)v31 userModelID];
          v35 = v90;
          v36 = HMFEqualObjects();

          if ((v36 & 1) == 0)
          {
            [(_MKFRemovedUserAccessCode *)v31 setUserModelID:v90];
          }

          userID = [(_MKFRemovedUserAccessCode *)v31 userID];
          v38 = HMFEqualObjects();

          if ((v38 & 1) == 0)
          {
            [(_MKFRemovedUserAccessCode *)v31 setUserID:v82];
          }

          dateRemoved = [(_MKFRemovedUserAccessCode *)v31 dateRemoved];
          v40 = HMFEqualObjects();

          if ((v40 & 1) == 0)
          {
            [(_MKFRemovedUserAccessCode *)v31 setDateRemoved:context];
          }

          accessCode = [(_MKFRemovedUserAccessCode *)v31 accessCode];
          v42 = HMFEqualObjects();

          if ((v42 & 1) == 0)
          {
            [(_MKFRemovedUserAccessCode *)v31 setAccessCode:codeCopy];
          }

          v21 = v82;
          v23 = v86;
        }

        else
        {
          v83 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v72 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v89 = v23;
            v73 = contextCopy;
            v74 = iDCopy;
            v75 = homeCopy;
            v77 = v76 = v21;
            *buf = 138543618;
            v94 = v77;
            v95 = 2112;
            v96 = dictionaryCopy;
            _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@No dateRemoved field found for removed user access code: %@. Not importing _MKFRemovedUserAccessCode", buf, 0x16u);

            v21 = v76;
            homeCopy = v75;
            iDCopy = v74;
            contextCopy = v73;
            v23 = v89;
          }

          objc_autoreleasePoolPop(v83);
          v31 = 0;
          v35 = v90;
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v65 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v88 = v23;
          v66 = contextCopy;
          v67 = iDCopy;
          v68 = homeCopy;
          v70 = v69 = v21;
          *buf = 138543618;
          v94 = v70;
          v95 = 2112;
          v96 = dictionaryCopy;
          _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_ERROR, "%{public}@No modelID field found for removed user access code: %@. Not importing _MKFRemovedUserAccessCode", buf, 0x16u);

          v21 = v69;
          homeCopy = v68;
          iDCopy = v67;
          contextCopy = v66;
          v23 = v88;
        }

        objc_autoreleasePoolPop(contexta);
        v31 = 0;
        v35 = 0;
      }
    }

    else
    {
      v87 = v23;
      v57 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v92 = contextCopy;
        v60 = iDCopy;
        v61 = homeCopy;
        v63 = v62 = v21;
        *buf = 138543618;
        v94 = v63;
        v95 = 2112;
        v96 = dictionaryCopy;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@No userName field found for removed user access code: %@. Not importing _MKFRemovedUserAccessCode", buf, 0x16u);

        v21 = v62;
        homeCopy = v61;
        iDCopy = v60;
        contextCopy = v92;
      }

      objc_autoreleasePoolPop(v57);
      v31 = 0;
      v23 = v87;
    }
  }

  else
  {
    v50 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v91 = contextCopy;
      v53 = iDCopy;
      v54 = homeCopy;
      v56 = v55 = v21;
      *buf = 138543618;
      v94 = v56;
      v95 = 2112;
      v96 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@No userID field found for removed user access code: %@. Not importing _MKFRemovedUserAccessCode", buf, 0x16u);

      v21 = v55;
      homeCopy = v54;
      iDCopy = v53;
      contextCopy = v91;
    }

    objc_autoreleasePoolPop(v50);
    v31 = 0;
  }

LABEL_45:
  v78 = *MEMORY[0x277D85DE8];

  return v31;
}

- (BOOL)_importGuestAccessCodesIntoLocalModel:(id)model context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  [contextCopy hmd_assertIsExecuting];
  v8 = MEMORY[0x277CBEB38];
  guestAccessCodes = [modelCopy guestAccessCodes];
  v10 = [v8 dictionaryWithCapacity:{objc_msgSend(guestAccessCodes, "count")}];

  guestAccessCodes2 = [modelCopy guestAccessCodes];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__MKFCKHome_PinCodes___importGuestAccessCodesIntoLocalModel_context___block_invoke;
  v27[3] = &unk_2786876A8;
  v12 = v10;
  v28 = v12;
  [guestAccessCodes2 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];

  guestAccessCodes3 = [(MKFCKHome *)self guestAccessCodes];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__MKFCKHome_PinCodes___importGuestAccessCodesIntoLocalModel_context___block_invoke_2;
  v23[3] = &unk_2786876D0;
  v23[4] = self;
  v14 = v12;
  v24 = v14;
  v15 = contextCopy;
  v25 = v15;
  v16 = modelCopy;
  v26 = v16;
  [guestAccessCodes3 enumerateKeysAndObjectsUsingBlock:v23];

  v17 = MEMORY[0x277CBEB98];
  allValues = [v14 allValues];
  v19 = [v17 setWithArray:allValues];

  guestAccessCodes4 = [v16 guestAccessCodes];
  v21 = HMFEqualObjects();

  if ((v21 & 1) == 0)
  {
    [v16 setGuestAccessCodes_:v19];
  }

  return 1;
}

void __69__MKFCKHome_PinCodes___importGuestAccessCodesIntoLocalModel_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hh2ModelID];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
}

void __69__MKFCKHome_PinCodes___importGuestAccessCodesIntoLocalModel_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBEEE8] == v6)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v13;
      v21 = 2160;
      v22 = 1752392040;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Found tomb stoned guest access code with modelID: %{mask.hash}@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
    if (v8)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Going to delete the guest access code from working store: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      [*(a1 + 48) deleteObject:v8];
    }
  }

  else
  {
    v7 = [*(a1 + 32) _populateGuestAccessCodeWithDictionary:v6 hh2ModelID:v5 home:*(a1 + 56) groupsByModelID:*(a1 + 40) context:*(a1 + 48)];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 hh2ModelID];
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_populateGuestAccessCodeWithDictionary:(id)dictionary hh2ModelID:(id)d home:(id)home groupsByModelID:(id)iD context:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dCopy = d;
  homeCopy = home;
  iDCopy = iD;
  contextCopy = context;
  v17 = [dictionaryCopy hmf_stringForKey:@"a"];
  v18 = [dictionaryCopy hmf_stringForKey:@"l"];
  v41 = [dictionaryCopy hmf_numberForKey:@"uu"];
  if (dCopy && v17 && v18 && [v17 length])
  {
    v38 = homeCopy;
    modelID = [homeCopy modelID];
    v39 = [HMDHomeAccessCodeModel modelUUIDForHomeUUID:modelID accessCodeValue:v17];

    v20 = [iDCopy objectForKeyedSubscript:dCopy];
    if (!v20)
    {
      v20 = [[_MKFGuestAccessCode alloc] initWithContext:contextCopy];
      [(_MKFGuestAccessCode *)v20 setModelID:v39];
      [(_MKFGuestAccessCode *)v20 setHh2ModelID:dCopy];
      writerTimestamp = [(MKFCKHome *)self writerTimestamp];
      [(_MKFGuestAccessCode *)v20 setWriterTimestamp:writerTimestamp];
    }

    accessCode = [(_MKFGuestAccessCode *)v20 accessCode];
    v23 = HMFEqualObjects();

    if ((v23 & 1) == 0)
    {
      [(_MKFGuestAccessCode *)v20 setAccessCode:v17];
    }

    label = [(_MKFGuestAccessCode *)v20 label];
    v25 = HMFEqualObjects();

    v26 = v41;
    if ((v25 & 1) == 0)
    {
      [(_MKFGuestAccessCode *)v20 setLabel:v18];
    }

    userUniqueIDForAccessories = [(_MKFGuestAccessCode *)v20 userUniqueIDForAccessories];
    v28 = HMFEqualObjects();

    if ((v28 & 1) == 0)
    {
      [(_MKFGuestAccessCode *)v20 setUserUniqueIDForAccessories:v41];
    }

    homeCopy = v38;
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v40 = dCopy;
      v32 = contextCopy;
      v33 = iDCopy;
      v35 = v34 = homeCopy;
      *buf = 138543874;
      v43 = v35;
      v44 = 2112;
      v45 = v17;
      v46 = 2112;
      v47 = v18;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Invalid accessCode [%@] or label [%@] for guest access code. Not importing.", buf, 0x20u);

      homeCopy = v34;
      iDCopy = v33;
      contextCopy = v32;
      dCopy = v40;
    }

    objc_autoreleasePoolPop(v29);
    v20 = 0;
    v26 = v41;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)_encodeRemovedUserInfoWithUserID:(id)d removedUserModelID:(id)iD userName:(id)name dateRemoved:(id)removed
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"ui";
  v17[1] = @"un";
  v18[0] = d;
  v18[1] = name;
  v17[2] = @"i";
  v17[3] = @"d";
  v18[2] = iD;
  v18[3] = removed;
  v9 = MEMORY[0x277CBEAC0];
  removedCopy = removed;
  nameCopy = name;
  iDCopy = iD;
  dCopy = d;
  v14 = [v9 dictionaryWithObjects:v18 forKeys:v17 count:4];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)__dictionaryFromRemovedUserAccessCodeDictionaryForUnitTest:(id)test tombStonedPinCodes:(int)codes
{
  testCopy = test;
  if (testCopy)
  {
    v7 = testCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __108__MKFCKHome_PinCodeUnitTest____dictionaryFromRemovedUserAccessCodeDictionaryForUnitTest_tombStonedPinCodes___block_invoke;
    v19 = &unk_2786877C0;
    v9 = dictionary;
    v20 = v9;
    selfCopy = self;
    [v7 enumerateKeysAndObjectsUsingBlock:&v16];
    if (codes >= 1)
    {
      do
      {
        null = [MEMORY[0x277CBEB68] null];
        uUID = [MEMORY[0x277CCAD78] UUID];
        [v9 setObject:null forKeyedSubscript:uUID];

        --codes;
      }

      while (codes);
    }

    return v9;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    __108__MKFCKHome_PinCodeUnitTest____dictionaryFromRemovedUserAccessCodeDictionaryForUnitTest_tombStonedPinCodes___block_invoke(v13, v14, v15);
  }

  return result;
}

void __108__MKFCKHome_PinCodeUnitTest____dictionaryFromRemovedUserAccessCodeDictionaryForUnitTest_tombStonedPinCodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"a";
  v13[1] = @"ru";
  v14[0] = a2;
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [objc_opt_class() __dictionaryFromHMRemovedUserInfoForUnitTest:v6];

  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCAD78] UUID];
  [v10 setObject:v9 forKeyedSubscript:v11];

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)__dictionaryFromGuestAccessCodeForUnitTest:(id)test label:(id)label userUniqueIDForAccessories:(id)accessories
{
  v17[3] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEB38];
  accessoriesCopy = accessories;
  labelCopy = label;
  testCopy = test;
  dictionary = [v7 dictionary];
  v16[0] = @"a";
  v16[1] = @"l";
  v17[0] = testCopy;
  v17[1] = labelCopy;
  v16[2] = @"uu";
  v17[2] = accessoriesCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  uUID = [MEMORY[0x277CCAD78] UUID];

  [dictionary setObject:v12 forKeyedSubscript:uUID];
  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)__dictionaryFromGuestAccessCodeDictionaryForUnitTest:(id)test tombStonedPinCodes:(int)codes
{
  testCopy = test;
  if (testCopy)
  {
    v6 = testCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __102__MKFCKHome_PinCodeUnitTest____dictionaryFromGuestAccessCodeDictionaryForUnitTest_tombStonedPinCodes___block_invoke;
    v15[3] = &unk_278687798;
    v8 = dictionary;
    v16 = v8;
    [v6 enumerateKeysAndObjectsUsingBlock:v15];
    if (codes >= 1)
    {
      do
      {
        null = [MEMORY[0x277CBEB68] null];
        uUID = [MEMORY[0x277CCAD78] UUID];
        [v8 setObject:null forKeyedSubscript:uUID];

        --codes;
      }

      while (codes);
    }

    return v8;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    __102__MKFCKHome_PinCodeUnitTest____dictionaryFromGuestAccessCodeDictionaryForUnitTest_tombStonedPinCodes___block_invoke(v12, v13, v14);
  }

  return result;
}

void __102__MKFCKHome_PinCodeUnitTest____dictionaryFromGuestAccessCodeDictionaryForUnitTest_tombStonedPinCodes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"a";
  v12[1] = @"l";
  v13[0] = a2;
  v13[1] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCAD78] UUID];
  [v9 setObject:v8 forKeyedSubscript:v10];

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)__dictionaryFromHMRemovedUserInfoForUnitTest:(id)test
{
  testCopy = test;
  if (testCopy)
  {
    v4 = testCopy;
    v5 = objc_opt_class();
    userID = [v4 userID];
    userUUID = [v4 userUUID];
    name = [v4 name];
    dateRemoved = [v4 dateRemoved];
    v10 = [v5 _encodeRemovedUserInfoWithUserID:userID removedUserModelID:userUUID userName:name dateRemoved:dateRemoved];

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(MKFCKHome *)v12 __removedUserInfoFromDictionaryForUnitTest:v13, v14];
  }
}

+ (id)__removedUserInfoFromDictionaryForUnitTest:(id)test
{
  v3 = MEMORY[0x277CD1D50];
  testCopy = test;
  v5 = [v3 alloc];
  v6 = [testCopy hmf_stringForKey:@"un"];
  v7 = [testCopy hmf_UUIDForKey:@"i"];
  v8 = [testCopy hmf_stringForKey:@"ui"];
  v9 = [testCopy hmf_dateForKey:@"d"];

  v10 = [v5 initWithName:v6 userUUID:v7 userID:v8 dateRemoved:v9];

  return v10;
}

@end