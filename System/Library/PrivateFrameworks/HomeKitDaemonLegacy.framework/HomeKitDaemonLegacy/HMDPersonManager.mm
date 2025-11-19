@interface HMDPersonManager
+ (id)logCategory;
+ (id)zoneNameForZoneUUID:(id)a3;
- (BOOL)isCurrentDeviceAvailableResident;
- (BOOL)isDataAvailable;
- (BOOL)isDataSyncInProgress;
- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4;
- (HMDPersonManager)initWithUUID:(id)a3 zoneManager:(id)a4 dataInterfaces:(id)a5 workQueue:(id)a6 featuresDataSource:(id)a7;
- (HMDPersonManagerSettings)settings;
- (NSString)zoneName;
- (id)_faceCropUUIDsForPersonWithUUID:(id)a3;
- (id)_faceCropsModelsWithUUIDs:(id)a3;
- (id)_removeFaceprintsForFaceCropsWithUUIDs:(id)a3;
- (id)_removePersonZones;
- (id)_unassociatedFaceCropsModelsWithUUIDs:(id)a3;
- (id)addOrUpdateFaceCrops:(id)a3;
- (id)addOrUpdateFaceCrops:(id)a3 andRemoveFaceCropsWithUUIDs:(id)a4;
- (id)addOrUpdateFaceprints:(id)a3;
- (id)addOrUpdatePersons:(id)a3;
- (id)addOrUpdatePersons:(id)a3 andRemovePersonsWithUUIDs:(id)a4;
- (id)addUnassociatedFaceCropWithUUID:(id)a3 data:(id)a4;
- (id)associateFaceCropsWithUUIDs:(id)a3 toPersonWithUUID:(id)a4 forSource:(int64_t)a5;
- (id)associatedUnassociatedFaceCropWithUUID:(id)a3;
- (id)attributeDescriptions;
- (id)createBatchChange;
- (id)disassociateFaceCropsWithUUIDs:(id)a3;
- (id)faceCropsForPersonWithUUID:(id)a3;
- (id)fetchFaceCropUUIDsByPersonUUID;
- (id)fetchFaceCropsForPersonsWithUUIDs:(id)a3;
- (id)fetchFaceCropsWithUUIDs:(id)a3;
- (id)performCloudPull;
- (id)personFaceCropWithUUID:(id)a3;
- (id)personWithUUID:(id)a3;
- (id)personsWithUUIDs:(id)a3;
- (id)removeAllAssociatedDataDueToHomeGraphObjectRemoval:(BOOL)a3;
- (id)removeFaceCropsWithUUIDs:(id)a3;
- (id)removeFaceprintsWithUUIDs:(id)a3;
- (id)removePersonsWithUUIDs:(id)a3;
- (id)unassociatedFaceCropWithUUID:(id)a3;
- (void)_cleanUpExpiredUnassociatedFaceCrops;
- (void)_createOrRemoveZonesForSettings:(id)a3;
- (void)_createZones;
- (void)_handleCreatedOrUpdatedFaceprint:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_handleCreatedOrUpdatedModel:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_handleCreatedOrUpdatedPerson:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_handleCreatedOrUpdatedPersonFaceCrop:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_handleCreatedOrUpdatedUnassociatedFaceCrop:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_handleDeletedFaceCropWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_handleDeletedFaceprintWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_handleDeletedModel:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_handleDeletedPersonWithUUID:(id)a3 mirrorOutputFuture:(id)a4;
- (void)_notifyDataInterfacesOfCurrentIsCurrentDeviceAvailableResident;
- (void)_notifyDataInterfacesOfCurrentIsDataSyncInProgress;
- (void)configureWithHome:(id)a3;
- (void)coreDataManager:(id)a3 didRemoveFaceprintsWithUUIDs:(id)a4;
- (void)coreDataManager:(id)a3 didRemovePersonsWithUUIDs:(id)a4;
- (void)coreDataManager:(id)a3 didUpdateFaceprints:(id)a4;
- (void)coreDataManager:(id)a3 didUpdatePersons:(id)a4;
- (void)dealloc;
- (void)enumerateFaceCropsUsingBlock:(id)a3;
- (void)enumerateFaceprintsForFaceCropsWithUUIDs:(id)a3 usingBlock:(id)a4;
- (void)enumerateFaceprintsUsingBlock:(id)a3;
- (void)enumeratePersonFaceCropsUsingBlock:(id)a3;
- (void)enumeratePersonsUsingBlock:(id)a3;
- (void)enumerateUnassociatedFaceCropsUsingBlock:(id)a3;
- (void)handleDataSyncInProgressChangedNotification:(id)a3;
- (void)handleFaceMisclassificationForFaceCropData:(id)a3 personUUID:(id)a4;
- (void)handleResidentWasAddedNotification:(id)a3;
- (void)handleResidentWasRemovedNotification:(id)a3;
- (void)handleResidentWasUpdatedNotification:(id)a3;
- (void)handleUserPrivilegeDidChangeNotification:(id)a3;
- (void)localZone:(id)a3 didProcessModelCreation:(id)a4;
- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4;
- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4;
- (void)timerDidFire:(id)a3;
- (void)zoneManagerDidStart:(id)a3;
- (void)zoneManagerDidStop:(id)a3;
@end

@implementation HMDPersonManager

- (void)timerDidFire:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self unassociatedFaceCropsCleanupTimer];

  if (v5 == v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Unassociated face crops cleanup timer fired", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDPersonManager *)v7 _cleanUpExpiredUnassociatedFaceCrops];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDPersonManager *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDPersonManagerSettings)settings
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)createBatchChange
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating batch change", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDPersonManager *)v4 localZone];
  if (v7)
  {
    v8 = v7;
    v23 = 0;
    v9 = [v7 createLocalInputWithError:&v23];
    v10 = v23;
    v11 = v10;
    if (v9)
    {

      v12 = [[HMDPersonDataBatchChange alloc] initWithLocalInput:v9];
      goto LABEL_13;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = v4;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create local zone input for batch change: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v4;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot create batch change because the local zone is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v12 = 0;
LABEL_13:
  v21 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)removeFaceprintsWithUUIDs:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v9;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing faceprints with UUIDs: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDPersonManager *)v7 localZone];
  if (v10)
  {
    v11 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove faceprints"];
    v12 = [v10 removeModelIDs:v4 options:v11];

    v13 = MEMORY[0x277D2C938];
    v14 = [(HMDPersonManager *)v7 workQueue];
    v15 = [v13 schedulerWithDispatchQueue:v14];
    v16 = [v12 reschedule:v15];
    v17 = [v16 flatMap:&__block_literal_global_165_57013];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot remove faceprints because the local zone is not available", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = MEMORY[0x277D2C900];
    v12 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v17 = [v22 futureWithError:v12];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)disassociateFaceCropsWithUUIDs:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Disassociating face crops with UUIDs %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDPersonManager *)v7 localZone];
  if (v10)
  {
    v11 = [(HMDPersonManager *)v7 _faceCropsModelsWithUUIDs:v4];
    v12 = [v11 na_map:&__block_literal_global_152_57019];
    v13 = [v11 na_map:&__block_literal_global_155];
    v14 = [MEMORY[0x277D17108] optionsWithLabel:@"Disassociate face crops"];
    v15 = [v10 addModels:v13 andRemoveModelIDs:v12 options:v14];

    v16 = MEMORY[0x277D2C938];
    v17 = [(HMDPersonManager *)v7 workQueue];
    v18 = [v16 schedulerWithDispatchQueue:v17];
    v19 = [v15 reschedule:v18];
    v20 = [v19 flatMap:&__block_literal_global_160];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v7;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot disassociate face crops because the local zone is not available", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v20 = [v25 futureWithError:v11];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v20;
}

HMDUnassociatedFaceCropModel *__51__HMDPersonManager_disassociateFaceCropsWithUUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 createPersonFaceCrop];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unassociatedFaceCropUUID];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CCAD78] UUID];
    }

    v8 = v6;

    v9 = objc_alloc(MEMORY[0x277CD1A30]);
    v10 = [v3 dataRepresentation];
    v11 = [v3 dateCreated];
    [v3 faceBoundingBox];
    v12 = [v9 initWithUUID:v8 dataRepresentation:v10 dateCreated:v11 faceBoundingBox:?];

    v7 = [[HMDUnassociatedFaceCropModel alloc] initWithFaceCrop:v12];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)associateFaceCropsWithUUIDs:(id)a3 toPersonWithUUID:(id)a4 forSource:(int64_t)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v65 = a4;
  v8 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v76 = v12;
    v77 = 2112;
    v78 = v7;
    v79 = 2112;
    v80 = v65;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Associating face crops with UUIDs %@ to person with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDPersonManager *)v10 localZone];
  v14 = v13;
  if (v13)
  {
    v60 = v7;
    v61 = v13;
    v59 = v10;
    v15 = [(HMDPersonManager *)v10 _unassociatedFaceCropsModelsWithUUIDs:v7];
    v16 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v15, "count")}];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v70;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v70 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v69 + 1) + 8 * i);
          v22 = [v21 createUnassociatedFaceCrop];
          if (!v22)
          {
            v46 = 0;
            v33 = obj;
            v47 = obj;
            v7 = v60;
            goto LABEL_14;
          }

          v23 = v22;
          v24 = objc_alloc(MEMORY[0x277CD1C78]);
          [MEMORY[0x277CCAD78] UUID];
          v26 = v25 = v16;
          v27 = [v23 dataRepresentation];
          v28 = [v23 dateCreated];
          [v23 faceBoundingBox];
          v29 = [v24 initWithUUID:v26 dataRepresentation:v27 dateCreated:v28 faceBoundingBox:v65 personUUID:?];

          v16 = v25;
          v30 = [v23 UUID];
          [v29 setUnassociatedFaceCropUUID:v30];

          [v29 setSource:a5];
          v31 = [[HMDFaceCropModel alloc] initWithPersonFaceCrop:v29];
          [v25 addObject:v31];

          v32 = [v29 UUID];
          [v21 setPersonFaceCropUUID:v32];
        }

        v18 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v58 = v16;
    v33 = obj;

    v7 = v60;
    v57 = [(HMDPersonManager *)v59 _faceCropsModelsWithUUIDs:v60];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __75__HMDPersonManager_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource___block_invoke;
    v66[3] = &unk_279727D28;
    v67 = v65;
    v68 = a5;
    v34 = [v57 na_map:v66];
    v35 = [MEMORY[0x277D17108] optionsWithLabel:@"Associate unassociated face crops"];
    v56 = [v61 addModels:v16 options:v35];

    v64 = v34;
    v36 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v34, "count") + objc_msgSend(obj, "count")}];
    [v36 unionSet:obj];
    [v36 unionSet:v34];
    v37 = [MEMORY[0x277D17108] optionsWithLabel:@"Associate face crops"];
    v38 = [v61 updateModels:v36 options:v37];

    v39 = MEMORY[0x277D2C900];
    v73[0] = v56;
    v73[1] = v38;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    v41 = [v39 chainFutures:v40];
    v42 = MEMORY[0x277D2C938];
    v43 = [(HMDPersonManager *)v59 workQueue];
    v44 = [v42 schedulerWithDispatchQueue:v43];
    v45 = [v41 reschedule:v44];
    v46 = [v45 flatMap:&__block_literal_global_149_57037];

    v16 = v58;
    v47 = v57;
LABEL_14:

    v14 = v61;
  }

  else
  {
    v48 = objc_autoreleasePoolPush();
    v49 = v10;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v52 = v51 = v7;
      *buf = 138543362;
      v76 = v52;
      _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Cannot associate face crops because the local zone is not available", buf, 0xCu);

      v7 = v51;
    }

    objc_autoreleasePoolPop(v48);
    v53 = MEMORY[0x277D2C900];
    v33 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v46 = [v53 futureWithError:v33];
  }

  v54 = *MEMORY[0x277D85DE8];

  return v46;
}

HMDFaceCropModel *__75__HMDPersonManager_associateFaceCropsWithUUIDs_toPersonWithUUID_forSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDFaceCropModel alloc];
  v5 = [v3 hmbModelID];
  v6 = [v3 hmbParentModelID];

  v7 = [(HMBModel *)v4 initWithModelID:v5 parentModelID:v6];
  v8 = [objc_alloc(MEMORY[0x277D170A0]) initWithModelID:*(a1 + 32) action:1];
  [(HMDFaceCropModel *)v7 setPerson:v8];

  [(HMDFaceCropModel *)v7 setSource:*(a1 + 40)];

  return v7;
}

- (id)addOrUpdateFaceprints:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v9;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding/updating faceprints: %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDPersonManager *)v7 localZone];
  if (v10)
  {
    v11 = [v4 na_map:&__block_literal_global_132];
    v12 = [(HMDPersonManager *)v7 localZone];
    v13 = [MEMORY[0x277D17108] optionsWithLabel:@"Add faceprints"];
    v14 = [v12 addModels:v11 options:v13];

    v15 = MEMORY[0x277D2C938];
    v16 = [(HMDPersonManager *)v7 workQueue];
    v17 = [v15 schedulerWithDispatchQueue:v16];
    v18 = [v14 reschedule:v17];
    v19 = [v18 flatMap:&__block_literal_global_137_57048];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot add/update persons because the local zone is not available", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v19 = [v24 futureWithError:v11];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v19;
}

HMDFaceprintModel *__42__HMDPersonManager_addOrUpdateFaceprints___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDFaceprintModel alloc] initWithFaceprint:v2];

  return v3;
}

- (void)enumerateFaceprintsForFaceCropsWithUUIDs:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HMDPersonManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke;
  v10[3] = &unk_27972A3C8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
}

void __72__HMDPersonManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 localZone];
  v8 = [v7 queryModelsWithParentModelID:v6 ofType:objc_opt_class()];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HMDPersonManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke_2;
  v9[3] = &unk_279727CE0;
  v10 = *(a1 + 40);
  v11 = a3;
  [v8 enumerateObjectsUsingBlock:v9];
}

uint64_t __72__HMDPersonManager_enumerateFaceprintsForFaceCropsWithUUIDs_usingBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 createFaceprint];
  v6 = v5;
  if (v5)
  {
    v8 = v5;
    v5 = (*(*(a1 + 32) + 16))();
    v6 = v8;
    **(a1 + 40) = *a3;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)enumerateFaceprintsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDPersonManager *)self localZone];
  v7 = [v6 queryModelsOfType:objc_opt_class()];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HMDPersonManager_enumerateFaceprintsUsingBlock___block_invoke;
  v9[3] = &unk_279727CB8;
  v10 = v4;
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v9];
}

uint64_t __50__HMDPersonManager_enumerateFaceprintsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 createFaceprint];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 32) + 16))();
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)fetchFaceCropsForPersonsWithUUIDs:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(HMDPersonManager *)self faceCropsForPersonWithUUID:*(*(&v16 + 1) + 8 * i), v16];
        [v6 unionSet:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x277D2C900] futureWithResult:v6];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchFaceCropsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDPersonManager *)self _faceCropsModelsWithUUIDs:v4];
  v7 = [v6 na_map:&__block_literal_global_124];

  v8 = [(HMDPersonManager *)self _unassociatedFaceCropsModelsWithUUIDs:v4];

  v9 = [v8 na_map:&__block_literal_global_127_57056];

  v10 = MEMORY[0x277D2C900];
  v11 = [v7 setByAddingObjectsFromSet:v9];
  v12 = [v10 futureWithResult:v11];

  return v12;
}

- (void)enumerateUnassociatedFaceCropsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDPersonManager *)self localZone];
  v7 = [v6 queryModelsOfType:objc_opt_class()];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HMDPersonManager_enumerateUnassociatedFaceCropsUsingBlock___block_invoke;
  v9[3] = &unk_279727C50;
  v10 = v4;
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v9];
}

uint64_t __61__HMDPersonManager_enumerateUnassociatedFaceCropsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 createUnassociatedFaceCrop];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 32) + 16))();
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)enumerateFaceCropsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [(HMDPersonManager *)self enumerateUnassociatedFaceCropsUsingBlock:v4];
  v6 = [(HMDPersonManager *)self localZone];
  v7 = [v6 queryModelsOfType:objc_opt_class()];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HMDPersonManager_enumerateFaceCropsUsingBlock___block_invoke;
  v9[3] = &unk_279727B00;
  v10 = v4;
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v9];
}

uint64_t __49__HMDPersonManager_enumerateFaceCropsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 createPersonFaceCrop];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 32) + 16))();
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)personsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__HMDPersonManager_personsWithUUIDs___block_invoke;
  v8[3] = &unk_279727C28;
  v8[4] = self;
  v6 = [v4 na_map:v8];

  return v6;
}

- (id)performCloudPull
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonManager *)self cloudZone];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D17108]) initWithLabel:@"Explicit cloud pull"];
    v5 = [v3 performCloudPullWithOptions:v4];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__HMDPersonManager_performCloudPull__block_invoke;
    v14[3] = &unk_2797359D8;
    v14[4] = self;
    v6 = [v5 addFailureBlock:v14];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot perform cloud pull because the cloud zone is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = MEMORY[0x277D2C900];
    v4 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v6 = [v11 futureWithError:v4];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

void __36__HMDPersonManager_performCloudPull__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform cloud pull: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCurrentDeviceAvailableResident
{
  v2 = [(HMDPersonManager *)self zoneManager];
  v3 = [v2 home];
  v4 = [v3 residentDeviceManager];
  v5 = [v4 isCurrentDeviceAvailableResident];

  return v5;
}

- (BOOL)isDataAvailable
{
  v2 = [(HMDPersonManager *)self localZone];
  v3 = v2 != 0;

  return v3;
}

- (void)coreDataManager:(id)a3 didRemoveFaceprintsWithUUIDs:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = a4;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(HMDPersonManager *)self dataInterfaces];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v19;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            v14 = 0;
            do
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * v14);
              if (objc_opt_respondsToSelector())
              {
                [v9 handleRemovedFaceprintWithUUID:v15 mirrorOutputFuture:0];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)coreDataManager:(id)a3 didUpdateFaceprints:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = a4;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(HMDPersonManager *)self dataInterfaces];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v19;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            v14 = 0;
            do
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * v14);
              if (objc_opt_respondsToSelector())
              {
                [v9 handleUpdatedFaceprint:v15 mirrorOutputFuture:0];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)coreDataManager:(id)a3 didRemovePersonsWithUUIDs:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = a4;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(HMDPersonManager *)self dataInterfaces];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v19;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            v14 = 0;
            do
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * v14);
              if (objc_opt_respondsToSelector())
              {
                [v9 handleRemovedPersonWithUUID:v15 mirrorOutputFuture:0];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)coreDataManager:(id)a3 didUpdatePersons:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = a4;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(HMDPersonManager *)self dataInterfaces];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v19;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            v14 = 0;
            do
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * v14);
              if (objc_opt_respondsToSelector())
              {
                [v9 handleUpdatedPerson:v15 mirrorOutputFuture:0];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)zoneManagerDidStop:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Person zone manager stopped", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDPersonManager *)v7 setLocalZone:0];
  [(HMDPersonManager *)v7 setCloudZone:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)zoneManagerDidStart:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v23 = 138543362;
    v24 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Person zone manager started", &v23, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDPersonManager *)v7 zoneManager];
  v11 = [v10 localZone];
  [(HMDPersonManager *)v7 setLocalZone:v11];

  v12 = [(HMDPersonManager *)v7 localZone];
  [v12 addObserverForAllModels:v7];

  v13 = [(HMDPersonManager *)v7 localZone];
  [v13 startUp];

  v14 = [(HMDPersonManager *)v7 zoneManager];
  v15 = [v14 cloudZone];
  [(HMDPersonManager *)v7 setCloudZone:v15];

  [(HMDPersonManager *)v7 _cleanUpExpiredUnassociatedFaceCrops];
  v16 = [(HMDPersonManager *)v7 unassociatedFaceCropsCleanupTimerFactory];
  v17 = v16[2](v16, 4, 86400.0);
  [(HMDPersonManager *)v7 setUnassociatedFaceCropsCleanupTimer:v17];

  v18 = [(HMDPersonManager *)v7 unassociatedFaceCropsCleanupTimer];
  [v18 setDelegate:v7];

  v19 = [(HMDPersonManager *)v7 workQueue];
  v20 = [(HMDPersonManager *)v7 unassociatedFaceCropsCleanupTimer];
  [v20 setDelegateQueue:v19];

  v21 = [(HMDPersonManager *)v7 unassociatedFaceCropsCleanupTimer];
  [v21 resume];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)manager:(id)a3 shouldShareWithUser:(id)a4
{
  v4 = [(HMDPersonManager *)self workQueue:a3];
  dispatch_assert_queue_V2(v4);

  return 0;
}

- (void)localZone:(id)a3 didProcessModelDeletion:(id)a4
{
  v5 = a4;
  v6 = [(HMDPersonManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HMDPersonManager_localZone_didProcessModelDeletion___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __54__HMDPersonManager_localZone_didProcessModelDeletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) model];
  v3 = [*(a1 + 40) mirrorOutputFuture];
  [v2 _handleDeletedModel:v4 mirrorOutputFuture:v3];
}

- (void)localZone:(id)a3 didProcessModelUpdate:(id)a4
{
  v5 = a4;
  v6 = [(HMDPersonManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HMDPersonManager_localZone_didProcessModelUpdate___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __52__HMDPersonManager_localZone_didProcessModelUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) model];
  v3 = [*(a1 + 40) mirrorOutputFuture];
  [v2 _handleCreatedOrUpdatedModel:v4 mirrorOutputFuture:v3];
}

- (void)localZone:(id)a3 didProcessModelCreation:(id)a4
{
  v5 = a4;
  v6 = [(HMDPersonManager *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HMDPersonManager_localZone_didProcessModelCreation___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __54__HMDPersonManager_localZone_didProcessModelCreation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) model];
  v3 = [*(a1 + 40) mirrorOutputFuture];
  [v2 _handleCreatedOrUpdatedModel:v4 mirrorOutputFuture:v3];
}

- (void)handleDataSyncInProgressChangedNotification:(id)a3
{
  v4 = [(HMDPersonManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDPersonManager_handleDataSyncInProgressChangedNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __64__HMDPersonManager_handleDataSyncInProgressChangedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    [*(a1 + 32) isDataSyncInProgress];
    v6 = HMFBooleanToString();
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Data sync in progress changed to %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _notifyDataInterfacesOfCurrentIsDataSyncInProgress];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleResidentWasRemovedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDPersonManager_handleResidentWasRemovedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__HMDPersonManager_handleResidentWasRemovedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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

  if ([v5 isCurrentDevice])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Current device was removed as a resident", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) _notifyDataInterfacesOfCurrentIsCurrentDeviceAvailableResident];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentWasUpdatedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDPersonManager_handleResidentWasUpdatedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__HMDPersonManager_handleResidentWasUpdatedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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

  if ([v5 isCurrentDevice])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Current device updated its resident device state", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 40) _notifyDataInterfacesOfCurrentIsCurrentDeviceAvailableResident];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleResidentWasAddedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMDPersonManager_handleResidentWasAddedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__HMDPersonManager_handleResidentWasAddedNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];

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

  if ([v5 isCurrentDevice])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Current device was added as a resident", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [*(a1 + 40) performCloudPull];
    [*(a1 + 40) _notifyDataInterfacesOfCurrentIsCurrentDeviceAvailableResident];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleUserPrivilegeDidChangeNotification:(id)a3
{
  v4 = [(HMDPersonManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDPersonManager_handleUserPrivilegeDidChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __61__HMDPersonManager_handleUserPrivilegeDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) zoneManager];
  [v1 updateShareParticipants];
}

- (id)_removePersonZones
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Removing zones for person manager data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDPersonManager *)v5 zoneManager];
  v9 = [v8 remove];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__HMDPersonManager__removePersonZones__block_invoke;
  v13[3] = &unk_2797359D8;
  v13[4] = v5;
  v10 = [v9 addFailureBlock:v13];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __38__HMDPersonManager__removePersonZones__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove person manager zones: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpExpiredUnassociatedFaceCrops
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*MEMORY[0x277CCF378]];
  v31[0] = @"dateAfter";
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v31[1] = @"dateBefore";
  v32[0] = v5;
  v32[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{-[HMDPersonManager fetchBatchLimit](self, "fetchBatchLimit")}];
  v8 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove expired unassociated face crops"];
  [v8 setShouldEnqueueMirrorOutput:0];
  v9 = [HMDUnassociatedFaceCropModel unassociatedFaceCropsBetweenDatesQueryWithIsAscending:1];
  v10 = [(HMDPersonManager *)self localZone];
  v11 = [v10 queryModelsUsingQuery:v9 arguments:v6];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __56__HMDPersonManager__cleanUpExpiredUnassociatedFaceCrops__block_invoke;
  v24 = &unk_279727C00;
  v25 = self;
  v12 = v7;
  v26 = v12;
  [v11 enumerateObjectsUsingBlock:&v21];
  if ([v12 count])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v12 count];
      *buf = 138543618;
      v28 = v16;
      v29 = 2048;
      v30 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Removing %lu expired unassociated face crops", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = [(HMDPersonManager *)v14 localZone];
    v19 = [v18 removeModelIDs:v12 options:v8];

    [v12 removeAllObjects];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __56__HMDPersonManager__cleanUpExpiredUnassociatedFaceCrops__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [v3 debugDescription];
    v22 = 138543618;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Removing expired unassociated face crop: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 40);
  v10 = [v3 hmbModelID];
  [v9 addObject:v10];

  v11 = [*(a1 + 40) count];
  if (v11 >= [*(a1 + 32) fetchBatchLimit])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 40) count];
      v22 = 138543618;
      v23 = v15;
      v24 = 2048;
      v25 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Removing %lu expired unassociated face crops", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [*(a1 + 32) localZone];
    v18 = *(a1 + 40);
    v19 = [MEMORY[0x277D17108] optionsWithLabel:@"Remove expired unassociated face crops"];
    v20 = [v17 removeModelIDs:v18 options:v19];

    [*(a1 + 40) removeAllObjects];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_createZones
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating zones for person manager data", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDPersonManager *)v5 zoneManager];
  v9 = [v8 defaultConfiguration];
  v10 = [v9 mutableCopy];

  [v10 setShouldCreateZone:1];
  v11 = [(HMDPersonManager *)v5 zoneManager];
  [v11 startWithConfiguration:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDataInterfacesOfCurrentIsDataSyncInProgress
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(HMDPersonManager *)self dataInterfaces];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 handleUpdatedIsDataSyncInProgress:{-[HMDPersonManager isDataSyncInProgress](self, "isDataSyncInProgress")}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDataInterfacesOfCurrentIsCurrentDeviceAvailableResident
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(HMDPersonManager *)self dataInterfaces];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 handleUpdatedIsCurrentDeviceAvailableResident:{-[HMDPersonManager isCurrentDeviceAvailableResident](self, "isCurrentDeviceAvailableResident")}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeletedFaceprintWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling deleted faceprint with UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(HMDPersonManager *)v9 dataInterfaces];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 handleRemovedFaceprintWithUUID:v6 mirrorOutputFuture:v7];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeletedFaceCropWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling deleted face crop with UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v13 = [(HMDPersonManager *)v9 _removeFaceprintsForFaceCropsWithUUIDs:v12];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(HMDPersonManager *)v9 dataInterfaces];
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          [v19 handleRemovedFaceCropWithUUID:v6 mirrorOutputFuture:v7];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeletedPersonWithUUID:(id)a3 mirrorOutputFuture:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling deleted person with UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(HMDPersonManager *)v9 dataInterfaces];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 handleRemovedPersonWithUUID:v6 mirrorOutputFuture:v7];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleDeletedModel:(id)a3 mirrorOutputFuture:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

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

  if (v11)
  {
    v12 = [v11 hmbModelID];
    [(HMDPersonManager *)self _handleDeletedPersonWithUUID:v12 mirrorOutputFuture:v7];
  }

  else
  {
    v13 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v12 = v14;

    if (v12)
    {
      v15 = [v12 hmbModelID];
      [(HMDPersonManager *)self _handleDeletedFaceCropWithUUID:v15 mirrorOutputFuture:v7];
    }

    else
    {
      v16 = v13;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v15 = v17;

      if (v15)
      {
        v18 = [v15 hmbModelID];
        [(HMDPersonManager *)self _handleDeletedFaceCropWithUUID:v18 mirrorOutputFuture:v7];
      }

      else
      {
        v19 = v16;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v18 = v20;

        if (v18)
        {
          v21 = [v18 hmbModelID];
          [(HMDPersonManager *)self _handleDeletedFaceprintWithUUID:v21 mirrorOutputFuture:v7];
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          v23 = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v25 = v27 = v22;
            *buf = 138543618;
            v29 = v25;
            v30 = 2112;
            v31 = v19;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Received deletion for unknown model: %@", buf, 0x16u);

            v22 = v27;
          }

          objc_autoreleasePoolPop(v22);
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleCreatedOrUpdatedFaceprint:(id)a3 mirrorOutputFuture:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(HMDPersonManager *)self dataInterfaces];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleUpdatedFaceprint:v6 mirrorOutputFuture:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleCreatedOrUpdatedUnassociatedFaceCrop:(id)a3 mirrorOutputFuture:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(HMDPersonManager *)self dataInterfaces];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleUpdatedUnassociatedFaceCrop:v6 mirrorOutputFuture:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleCreatedOrUpdatedPersonFaceCrop:(id)a3 mirrorOutputFuture:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(HMDPersonManager *)self dataInterfaces];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleUpdatedPersonFaceCrop:v6 mirrorOutputFuture:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleCreatedOrUpdatedPerson:(id)a3 mirrorOutputFuture:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(HMDPersonManager *)self dataInterfaces];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleUpdatedPerson:v6 mirrorOutputFuture:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleCreatedOrUpdatedModel:(id)a3 mirrorOutputFuture:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v8);

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

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v42 = 138543618;
      v43 = v15;
      v44 = 2112;
      v45 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling new/updated person model: %@", &v42, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [v11 createPerson];
    if (v16)
    {
      [(HMDPersonManager *)v13 _handleCreatedOrUpdatedPerson:v16 mirrorOutputFuture:v7];
    }
  }

  else
  {
    v17 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v16 = v18;

    if (v16)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v16 hmbModelID];
        v42 = 138543618;
        v43 = v22;
        v44 = 2112;
        v45 = v23;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Handling new/updated face crop model: %@", &v42, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [v16 createPersonFaceCrop];
      if (v24)
      {
        [(HMDPersonManager *)v20 _handleCreatedOrUpdatedPersonFaceCrop:v24 mirrorOutputFuture:v7];
      }
    }

    else
    {
      v25 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v24 = v26;

      if (v24)
      {
        v27 = objc_autoreleasePoolPush();
        v28 = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = HMFGetLogIdentifier();
          v42 = 138543618;
          v43 = v30;
          v44 = 2112;
          v45 = v24;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Handling new/updated unassociated face crop model: %@", &v42, 0x16u);
        }

        objc_autoreleasePoolPop(v27);
        v31 = [v24 createUnassociatedFaceCrop];
        if (v31)
        {
          [(HMDPersonManager *)v28 _handleCreatedOrUpdatedUnassociatedFaceCrop:v31 mirrorOutputFuture:v7];
        }
      }

      else
      {
        v32 = v25;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v31 = v33;

        v34 = objc_autoreleasePoolPush();
        v35 = self;
        v36 = HMFGetOSLogHandle();
        v37 = v36;
        if (v31)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            v42 = 138543618;
            v43 = v38;
            v44 = 2112;
            v45 = v31;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Handling new/updated faceprint model: %@", &v42, 0x16u);
          }

          objc_autoreleasePoolPop(v34);
          v39 = [v31 createFaceprint];
          if (v39)
          {
            [(HMDPersonManager *)v35 _handleCreatedOrUpdatedFaceprint:v39 mirrorOutputFuture:v7];
          }
        }

        else
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            v42 = 138543618;
            v43 = v40;
            v44 = 2112;
            v45 = v32;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Received creation/update for unknown model: %@", &v42, 0x16u);
          }

          objc_autoreleasePoolPop(v34);
          v31 = 0;
        }
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)_removeFaceprintsForFaceCropsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HMDPersonManager__removeFaceprintsForFaceCropsWithUUIDs___block_invoke;
  v10[3] = &unk_27972D400;
  v11 = v6;
  v7 = v6;
  [(HMDPersonManager *)self enumerateFaceprintsForFaceCropsWithUUIDs:v4 usingBlock:v10];

  v8 = [(HMDPersonManager *)self removeFaceprintsWithUUIDs:v7];

  return v8;
}

void __59__HMDPersonManager__removeFaceprintsForFaceCropsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUID];
  [v2 addObject:v3];
}

- (id)_faceCropsModelsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HMDPersonManager__faceCropsModelsWithUUIDs___block_invoke;
  v8[3] = &unk_279727BD8;
  v8[4] = self;
  v6 = [v4 na_map:v8];

  return v6;
}

id __46__HMDPersonManager__faceCropsModelsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localZone];
  v5 = [v4 fetchModelWithModelID:v3 ofType:objc_opt_class() error:0];

  return v5;
}

- (id)_faceCropUUIDsForPersonWithUUID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self localZone];
  if (v5)
  {
    v6 = [(HMDPersonManager *)self faceCropsForPersonWithUUID:v4];
    v7 = [v6 na_map:&__block_literal_global_84];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cannot query face crops because the local zone is not available", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [MEMORY[0x277CBEB98] set];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_unassociatedFaceCropsModelsWithUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__HMDPersonManager__unassociatedFaceCropsModelsWithUUIDs___block_invoke;
  v8[3] = &unk_279727B90;
  v8[4] = self;
  v6 = [v4 na_map:v8];

  return v6;
}

id __58__HMDPersonManager__unassociatedFaceCropsModelsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localZone];
  v5 = [v4 fetchModelWithModelID:v3 ofType:objc_opt_class() error:0];

  return v5;
}

- (BOOL)isDataSyncInProgress
{
  v2 = [(HMDPersonManager *)self zoneManager];
  v3 = [v2 home];
  v4 = [v3 homeManager];
  v5 = [v4 isDataSyncInProgress];

  return v5;
}

- (void)_createOrRemoveZonesForSettings:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (-[HMDPersonManager isDataAvailable](self, "isDataAvailable") || ![v4 requiresPersistentStorage])
  {
    if (-[HMDPersonManager isDataAvailable](self, "isDataAvailable") && ([v4 requiresPersistentStorage] & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Data is available but settings do not require persistent storage; removing zones", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [(HMDPersonManager *)v11 _removePersonZones];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Data is unavailable but settings require persistent storage; creating zones", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDPersonManager *)v7 _createZones];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)addOrUpdateFaceCrops:(id)a3 andRemoveFaceCropsWithUUIDs:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v24 = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding/updating face crops: %@, removing face crops with UUIDs: %@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDPersonManager *)v9 localZone];
  if (v12)
  {
    v13 = [v6 na_map:&__block_literal_global_74];
    v14 = [MEMORY[0x277D17108] optionsWithLabel:@"Add/remove face crops"];
    [v14 setTransactionItemsBatchLimit:5];
    v15 = [v12 addModels:v13 andRemoveModelIDs:v7 options:v14];
    v16 = [v15 flatMap:&__block_literal_global_80];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v9;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot add/update face crops because the local zone is not available", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v16 = [v21 futureWithError:v13];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

HMDFaceCropModel *__69__HMDPersonManager_addOrUpdateFaceCrops_andRemoveFaceCropsWithUUIDs___block_invoke(uint64_t a1, void *a2)
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
  if (v4)
  {
    v5 = [[HMDFaceCropModel alloc] initWithPersonFaceCrop:v4];
  }

  else
  {
    v5 = [[HMDUnassociatedFaceCropModel alloc] initWithFaceCrop:v2];
  }

  v6 = v5;

  return v6;
}

- (id)removeFaceCropsWithUUIDs:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(HMDPersonManager *)self addOrUpdateFaceCrops:v6 andRemoveFaceCropsWithUUIDs:v5];

  return v7;
}

- (id)addOrUpdateFaceCrops:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(HMDPersonManager *)self addOrUpdateFaceCrops:v5 andRemoveFaceCropsWithUUIDs:v6];

  return v7;
}

- (id)fetchFaceCropUUIDsByPersonUUID
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDPersonManager_fetchFaceCropUUIDsByPersonUUID__block_invoke;
  v7[3] = &unk_27972D3D8;
  v8 = v3;
  v4 = v3;
  [(HMDPersonManager *)self enumeratePersonFaceCropsUsingBlock:v7];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

void __50__HMDPersonManager_fetchFaceCropUUIDsByPersonUUID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 personUUID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = *(a1 + 32);
    v8 = [v10 personUUID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  v9 = [v10 UUID];
  [v6 addObject:v9];
}

- (id)addOrUpdatePersons:(id)a3 andRemovePersonsWithUUIDs:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v35 = v11;
    v36 = 2112;
    v37 = v6;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding/updating persons: %@, removing persons with UUIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDPersonManager *)v9 localZone];
  if (v12)
  {
    v13 = [v6 na_map:&__block_literal_global_60_57134];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __65__HMDPersonManager_addOrUpdatePersons_andRemovePersonsWithUUIDs___block_invoke_2;
    v33[3] = &unk_279727B48;
    v33[4] = v9;
    v32 = [v7 na_flatMap:v33];
    v14 = [v7 setByAddingObjectsFromSet:v32];
    v15 = [MEMORY[0x277D17108] optionsWithLabel:@"Add/remove persons"];
    v16 = [v12 addModels:v13 andRemoveModelIDs:v14 options:v15];

    v17 = MEMORY[0x277D2C938];
    v18 = [(HMDPersonManager *)v9 workQueue];
    v19 = [v17 schedulerWithDispatchQueue:v18];
    [v16 reschedule:v19];
    v20 = v12;
    v21 = v7;
    v23 = v22 = v6;
    v24 = [v23 flatMap:&__block_literal_global_69];

    v6 = v22;
    v7 = v21;
    v12 = v20;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v9;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot add/update/remove persons because the local zone is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v29 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    v24 = [v29 futureWithError:v13];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v24;
}

HMDPersonModel *__65__HMDPersonManager_addOrUpdatePersons_andRemovePersonsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDPersonModel alloc] initWithPerson:v2];

  return v3;
}

- (id)removePersonsWithUUIDs:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(HMDPersonManager *)self addOrUpdatePersons:v6 andRemovePersonsWithUUIDs:v5];

  return v7;
}

- (id)addOrUpdatePersons:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 set];
  v7 = [(HMDPersonManager *)self addOrUpdatePersons:v5 andRemovePersonsWithUUIDs:v6];

  return v7;
}

- (void)enumeratePersonFaceCropsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self localZone];
  v6 = [v5 queryModelsOfType:objc_opt_class()];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__HMDPersonManager_enumeratePersonFaceCropsUsingBlock___block_invoke;
  v8[3] = &unk_279727B00;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

uint64_t __55__HMDPersonManager_enumeratePersonFaceCropsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 createPersonFaceCrop];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 32) + 16))();
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)enumeratePersonsUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self localZone];
  if (v5)
  {
    v6 = [v5 queryModelsOfType:objc_opt_class()];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__HMDPersonManager_enumeratePersonsUsingBlock___block_invoke;
    v12[3] = &unk_279727AD8;
    v13 = v4;
    [v6 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Cannot enumerate persons because the local zone is not available", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __47__HMDPersonManager_enumeratePersonsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 createPerson];
  (*(v4 + 16))(v4, v5, a3);
}

- (id)addUnassociatedFaceCropWithUUID:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D2C900]);
  v9 = [(HMDPersonManager *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__HMDPersonManager_addUnassociatedFaceCropWithUUID_data___block_invoke;
  v16[3] = &unk_279734870;
  v16[4] = self;
  v17 = v7;
  v18 = v6;
  v10 = v8;
  v19 = v10;
  v11 = v6;
  v12 = v7;
  dispatch_async(v9, v16);

  v13 = v19;
  v14 = v10;

  return v10;
}

void __57__HMDPersonManager_addUnassociatedFaceCropWithUUID_data___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v18 = 138543618;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding unassociated face crop with data: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = objc_alloc(MEMORY[0x277CD1A30]);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [v7 initWithUUID:v8 dataRepresentation:v9 dateCreated:v10 faceBoundingBox:{*MEMORY[0x277CCFD38], *(MEMORY[0x277CCFD38] + 8), *(MEMORY[0x277CCFD38] + 16), *(MEMORY[0x277CCFD38] + 24)}];

  v12 = *(a1 + 32);
  v13 = [MEMORY[0x277CBEB98] setWithObject:v11];
  v14 = [v12 addOrUpdateFaceCrops:v13];
  v15 = [*(a1 + 56) completionHandlerAdapter];
  v16 = [v14 addCompletionBlock:v15];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleFaceMisclassificationForFaceCropData:(id)a3 personUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDPersonManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDPersonManager_handleFaceMisclassificationForFaceCropData_personUUID___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __74__HMDPersonManager_handleFaceMisclassificationForFaceCropData_personUUID___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 138543874;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling face misclassification for face crop data: %@ personUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [*(a1 + 32) dataInterfaces];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 handleFaceMisclassificationForFaceCropData:*(a1 + 40) personUUID:*(a1 + 48)];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)faceCropsForPersonWithUUID:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v21 = @"person";
  v7 = [objc_alloc(MEMORY[0x277D170A0]) initWithModelID:v5 action:1];

  v22[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v9 = [(HMDPersonManager *)self localZone];
  v10 = +[HMDFaceCropModel faceCropsForPersonQuery];
  v11 = [v9 queryModelsUsingQuery:v10 arguments:v8];

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __47__HMDPersonManager_faceCropsForPersonWithUUID___block_invoke;
  v19 = &unk_279727AB0;
  v20 = v6;
  v12 = v6;
  [v11 enumerateObjectsUsingBlock:&v16];
  v13 = [v12 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __47__HMDPersonManager_faceCropsForPersonWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 createPersonFaceCrop];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)personFaceCropWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self localZone];
  v6 = [v5 fetchModelWithModelID:v4 ofType:objc_opt_class() error:0];

  v7 = [v6 createPersonFaceCrop];

  return v7;
}

- (id)associatedUnassociatedFaceCropWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self localZone];
  v6 = [v5 fetchModelWithModelID:v4 ofType:objc_opt_class() error:0];

  v7 = [v6 createAssociatedUnassociatedFaceCrop];

  return v7;
}

- (id)unassociatedFaceCropWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self localZone];
  v6 = [v5 fetchModelWithModelID:v4 ofType:objc_opt_class() error:0];

  v7 = [v6 createUnassociatedFaceCrop];

  return v7;
}

- (id)personWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDPersonManager *)self localZone];
  v6 = [v5 fetchModelWithModelID:v4 ofType:objc_opt_class() error:0];

  v7 = [v6 createPerson];

  return v7;
}

- (NSString)zoneName
{
  v2 = [(HMDPersonManager *)self zoneManager];
  v3 = [v2 zoneName];

  return v3;
}

- (id)removeAllAssociatedDataDueToHomeGraphObjectRemoval:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to remove all person data with isDueToHomeGraphObjectRemoval: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [(HMDPersonManager *)v6 _removePersonZones];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)configureWithHome:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDPersonManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v9;
    v42 = 2112;
    v43 = v4;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Configuring person manager with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:v7 selector:sel_handleUserPrivilegeDidChangeNotification_ name:@"HMDUserPrivilegeDidChangeNotification" object:0];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  v12 = [v4 residentDeviceManager];
  [v11 addObserver:v7 selector:sel_handleResidentWasAddedNotification_ name:@"HMDResidentDeviceManagerAddResidentNotification" object:v12];

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = [v4 residentDeviceManager];
  [v13 addObserver:v7 selector:sel_handleResidentWasUpdatedNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:v14];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = [v4 residentDeviceManager];
  [v15 addObserver:v7 selector:sel_handleResidentWasRemovedNotification_ name:@"HMDResidentDeviceManagerRemoveResidentNotification" object:v16];

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  v18 = [v4 homeManager];
  [v17 addObserver:v7 selector:sel_handleDataSyncInProgressChangedNotification_ name:@"HMDHomeManagerDataSyncInProgressChangedNotification" object:v18];

  v19 = [(HMDPersonManager *)v7 zoneManager];
  v20 = [v19 defaultConfiguration];
  v21 = [v20 mutableCopy];

  v22 = objc_alloc_init(MEMORY[0x277D170E8]);
  [v22 setShouldRebuildOnManateeKeyLoss:1];
  [v21 setCloudZoneConfiguration:v22];
  [v21 setShouldCreateZone:0];
  v23 = [(HMDPersonManager *)v7 zoneManager];
  [v23 setDefaultConfiguration:v21];

  v24 = [(HMDPersonManager *)v7 zoneManager];
  [v24 setDelegate:v7];

  v25 = [(HMDPersonManager *)v7 zoneManager];
  [v25 setDataSource:v7];

  v26 = [(HMDPersonManager *)v7 zoneManager];
  [v26 configure];

  v27 = [(HMDPersonManager *)v7 zoneManager];
  [v27 start];

  v28 = [(HMDPersonManager *)v7 settings];
  [(HMDPersonManager *)v7 _createOrRemoveZonesForSettings:v28];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = [(HMDPersonManager *)v7 dataInterfaces];
  v30 = [v29 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v36;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [*(*(&v35 + 1) + 8 * i) configureWithDataSource:v7 home:v4];
      }

      v31 = [v29 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v31);
  }

  [(HMDPersonManager *)v7 _notifyDataInterfacesOfCurrentIsCurrentDeviceAvailableResident];
  [(HMDPersonManager *)v7 _notifyDataInterfacesOfCurrentIsDataSyncInProgress];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDPersonManager;
  [(HMDPersonManager *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDPersonManager)initWithUUID:(id)a3 zoneManager:(id)a4 dataInterfaces:(id)a5 workQueue:(id)a6 featuresDataSource:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v14)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v15)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v17 = v16;
  if (!v16)
  {
LABEL_13:
    v28 = _HMFPreconditionFailure();
    return __89__HMDPersonManager_initWithUUID_zoneManager_dataInterfaces_workQueue_featuresDataSource___block_invoke(v28);
  }

  v29.receiver = self;
  v29.super_class = HMDPersonManager;
  v18 = [(HMDPersonManager *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_workQueue, a6);
    v20 = [v12 copy];
    UUID = v19->_UUID;
    v19->_UUID = v20;

    objc_storeStrong(&v19->_zoneManager, a4);
    objc_storeStrong(&v19->_dataInterfaces, a5);
    objc_storeStrong(&v19->_featuresDataSource, a7);
    v22 = MEMORY[0x277CCACA8];
    v23 = [v13 zoneName];
    v24 = [v22 stringWithFormat:@"%@/%@", v12, v23];
    logIdentifier = v19->_logIdentifier;
    v19->_logIdentifier = v24;

    v19->_fetchBatchLimit = 100;
    unassociatedFaceCropsCleanupTimerFactory = v19->_unassociatedFaceCropsCleanupTimerFactory;
    v19->_unassociatedFaceCropsCleanupTimerFactory = &__block_literal_global_57169;
  }

  return v19;
}

id __89__HMDPersonManager_initWithUUID_zoneManager_dataInterfaces_workQueue_featuresDataSource___block_invoke(double a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:a3 options:a1];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t59 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t59, &__block_literal_global_169);
  }

  v3 = logCategory__hmf_once_v60;

  return v3;
}

uint64_t __31__HMDPersonManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v60;
  logCategory__hmf_once_v60 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)zoneNameForZoneUUID:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end