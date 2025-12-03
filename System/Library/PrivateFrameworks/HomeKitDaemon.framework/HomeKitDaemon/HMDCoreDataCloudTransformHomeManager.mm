@interface HMDCoreDataCloudTransformHomeManager
+ (BOOL)exportDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
+ (id)fixUpPrimaryHomeCounterForPrimaryHome:(id)home primaryHomeModelID:(id)d;
+ (uint64_t)_exportUpdateWithObjectID:(int)d updateApplicationData:(void *)data context:;
@end

@implementation HMDCoreDataCloudTransformHomeManager

+ (BOOL)exportDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context
{
  dCopy = d;
  iDCopy = iD;
  updatesCopy = updates;
  contextCopy = context;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"%@ is unavailable", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context
{
  dCopy = d;
  propertiesCopy = properties;
  updatesCopy = updates;
  contextCopy = context;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if ([propertiesCopy count])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __109__HMDCoreDataCloudTransformHomeManager_exportUpdateWithObjectID_updatedProperties_additionalUpdates_context___block_invoke;
    v17[3] = &unk_278684488;
    v17[4] = &v18;
    [propertiesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v17];
    v14 = *(v19 + 24);
  }

  else
  {
    v14 = 1;
    *(v19 + 24) = 1;
  }

  v15 = [(HMDCoreDataCloudTransformHomeManager *)self _exportUpdateWithObjectID:dCopy updateApplicationData:v14 & 1 context:contextCopy];
  _Block_object_dispose(&v18, 8);

  return v15;
}

void __109__HMDCoreDataCloudTransformHomeManager_exportUpdateWithObjectID_updatedProperties_additionalUpdates_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 name];
  if ([v5 isEqualToString:@"appDataDictionary"])
  {
  }

  else
  {
    v6 = [v8 name];
    v7 = [v6 isEqualToString:@"primaryHome"];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  *a3 = 1;
LABEL_5:
}

+ (uint64_t)_exportUpdateWithObjectID:(int)d updateApplicationData:(void *)data context:
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a2;
  dataCopy = data;
  v7 = objc_opt_self();
  v48 = v5;
  v8 = [dataCopy objectWithID:v5];
  v9 = MEMORY[0x277CBEB58];
  homes = [v8 homes];
  v11 = [v9 setWithCapacity:{objc_msgSend(homes, "count")}];

  homes2 = [v8 homes];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __96__HMDCoreDataCloudTransformHomeManager__exportUpdateWithObjectID_updateApplicationData_context___block_invoke;
  v62[3] = &unk_278684438;
  v13 = v11;
  v63 = v13;
  [homes2 hmf_enumerateWithAutoreleasePoolUsingBlock:v62];

  v14 = +[MKFCKHome fetchRequest];
  [v14 setFetchBatchSize:2];
  v61 = 0;
  v15 = [dataCopy executeFetchRequest:v14 error:&v61];
  v49 = v61;
  if (v15)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v70 = 1;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __96__HMDCoreDataCloudTransformHomeManager__exportUpdateWithObjectID_updateApplicationData_context___block_invoke_3;
    v51[3] = &unk_278684460;
    v52 = v13;
    v56 = v7;
    v16 = dataCopy;
    v53 = v16;
    v54 = buf;
    v55 = &v57;
    [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v51];
    if (*(*&buf[8] + 24))
    {
      if (*(v58 + 24) == 1)
      {
        v17 = +[(MKFCKModel *)MKFCKHome];
        v68 = @"primaryHomeCounter";
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
        v19 = [v17 arrayByAddingObjectsFromArray:v18];
        [v14 setPropertiesToFetch:v19];

        v50 = v49;
        v20 = [v16 executeFetchRequest:v14 error:&v50];
        v21 = v50;

        if (!v20)
        {
          v43 = objc_autoreleasePoolPush();
          v44 = v7;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = HMFGetLogIdentifier();
            *v64 = 138543618;
            v65 = v46;
            v66 = 2114;
            v67 = v21;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch homes: %{public}@", v64, 0x16u);
          }

          objc_autoreleasePoolPop(v43);
          v15 = 0;
          v36 = 0;
          v49 = v21;
          goto LABEL_18;
        }

        v15 = v20;
        v49 = v21;
      }

      v22 = objc_opt_class();
      primaryHome = [v8 primaryHome];
      handle = [primaryHome handle];
      homeUUID = [handle homeUUID];
      v26 = [v22 fixUpPrimaryHomeCounterForPrimaryHome:v15 primaryHomeModelID:homeUUID];

      if (v26)
      {
        if (d)
        {
          appDataDictionary = [v8 appDataDictionary];
          homeManagerApplicationData = [v26 homeManagerApplicationData];
          v29 = isEqualDeepCompare(appDataDictionary, homeManagerApplicationData);

          if ((v29 & 1) == 0)
          {
            appDataDictionary2 = [v8 appDataDictionary];
            v31 = [appDataDictionary2 copy];
            [v26 setHomeManagerApplicationData:v31];
          }
        }
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v7;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          *v64 = 138543362;
          v65 = v40;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@No primary home", v64, 0xCu);
        }

        objc_autoreleasePoolPop(v37);
      }

      v36 = 1;
    }

    else
    {
      v36 = 0;
    }

LABEL_18:

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_19;
  }

  v32 = objc_autoreleasePoolPush();
  v33 = v7;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v35;
    *&buf[12] = 2114;
    *&buf[14] = v49;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch homes: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v32);
  v36 = 0;
LABEL_19:

  v41 = *MEMORY[0x277D85DE8];
  return v36;
}

void __96__HMDCoreDataCloudTransformHomeManager__exportUpdateWithObjectID_updateApplicationData_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 handle];
  v3 = [v4 homeUUID];
  [v2 addObject:v3];
}

void __96__HMDCoreDataCloudTransformHomeManager__exportUpdateWithObjectID_updateApplicationData_context___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (([v6 isFake] & 1) == 0 && (objc_msgSend(v6, "isDeleted") & 1) == 0)
  {
    v7 = *(a1 + 32);
    v8 = [v6 modelID];
    LOBYTE(v7) = [v7 containsObject:v8];

    if ((v7 & 1) == 0)
    {
      v9 = [v6 objectID];
      v10 = [v9 entity];
      v11 = [HMDCoreDataCloudTransform importTransformableClassFromEntity:v10];

      if (v11)
      {
        v12 = [MEMORY[0x277CBEB38] dictionary];
        if (([(objc_class *)v11 importInsertWithObjectID:v9 additionalUpdates:v12 context:*(a1 + 40)]& 1) != 0)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        else
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
          *a4 = 1;
        }
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        v14 = *(a1 + 64);
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v16 = HMFGetLogIdentifier();
          v17 = [v9 hmd_debugIdentifier];
          v19 = 138543618;
          v20 = v16;
          v21 = 2112;
          v22 = v17;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_FAULT, "%{public}@No transformable for object: <%@>", &v19, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)fixUpPrimaryHomeCounterForPrimaryHome:(id)home primaryHomeModelID:(id)d
{
  homeCopy = home;
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__244399;
  v24 = __Block_byref_object_dispose__244400;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__HMDCoreDataCloudTransformHomeManager_fixUpPrimaryHomeCounterForPrimaryHome_primaryHomeModelID___block_invoke;
  v12[3] = &unk_278684410;
  v7 = dCopy;
  v13 = v7;
  v14 = &v20;
  v15 = &v16;
  [homeCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v12];
  v8 = v21[5];
  if (v8)
  {
    v9 = v17[3];
    if (v9 != [v8 primaryHomeCounter])
    {
      [v21[5] setPrimaryHomeCounter:v17[3]];
    }

    v10 = v21[5];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __97__HMDCoreDataCloudTransformHomeManager_fixUpPrimaryHomeCounterForPrimaryHome_primaryHomeModelID___block_invoke(void *a1, void *a2)
{
  v15 = a2;
  v4 = [v15 isFake];
  v5 = v15;
  if ((v4 & 1) == 0)
  {
    v6 = [v15 isDeleted];
    v5 = v15;
    if ((v6 & 1) == 0)
    {
      v7 = [v15 modelID];
      v8 = [v7 isEqual:a1[4]];

      if (!v8)
      {
        v13 = [v15 primaryHomeCounter];
        v5 = v15;
        if (v13 < *(*(a1[6] + 8) + 24))
        {
          goto LABEL_14;
        }

        v14 = *(*(a1[5] + 8) + 40);
        v12 = [v15 primaryHomeCounter];
        if (v14)
        {
          *(*(a1[6] + 8) + 24) = v12 + 1;
LABEL_11:
          v5 = v15;
          goto LABEL_14;
        }

LABEL_10:
        *(*(a1[6] + 8) + 24) = v12;
        goto LABEL_11;
      }

      objc_storeStrong((*(a1[5] + 8) + 40), a2);
      if ([v15 primaryHomeCounter])
      {
        v9 = [v15 primaryHomeCounter];
        v10 = *(a1[6] + 8);
        v11 = *(v10 + 24);
        if (v9 > v11)
        {
          v12 = [v15 primaryHomeCounter];
          goto LABEL_10;
        }
      }

      else
      {
        v10 = *(a1[6] + 8);
        v11 = *(v10 + 24);
      }

      v5 = v15;
      *(v10 + 24) = v11 + 1;
    }
  }

LABEL_14:
}

@end