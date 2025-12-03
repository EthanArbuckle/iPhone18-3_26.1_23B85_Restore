@interface HMDLegacyV4CloudZone
- (HMDLegacyV4CloudZone)initWithCloudDatabase:(id)database configuration:(id)configuration state:(id)state;
- (id)decodeModelFromRecord:(id)record externalRecordFields:(id)fields source:(unint64_t)source error:(id *)error;
- (id)encodeRecordFromModel:(id)model existingRecord:(id)record encodingContext:(id)context error:(id *)error;
- (id)recordIDForParentModelID:(id)d;
- (id)recordWithExistingRecord:(id)record modelData:(id)data parentModelID:(id)d modelContainer:(id)container error:(id *)error;
- (id)rootRecordModelID;
- (id)rootRecordParentModelID;
- (id)tupleForRootRecordWithOutputBlockRow:(unint64_t)row objectIDToRecordNameMap:(id)map;
- (void)pushGroupWithBlockRow:(unint64_t)row tuples:(id)tuples options:(id)options activity:(id)activity completionPromise:(id)promise;
@end

@implementation HMDLegacyV4CloudZone

- (id)encodeRecordFromModel:(id)model existingRecord:(id)record encodingContext:(id)context error:(id *)error
{
  modelCopy = model;
  recordCopy = record;
  contextCopy = context;
  modelContainer = [(HMBCloudZone *)self modelContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = modelContainer;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (!v15)
  {
    _HMFPreconditionFailure();
LABEL_13:
    v21 = _HMFPreconditionFailure();
    [(HMDLegacyV4CloudZone *)v21 pushGroupWithBlockRow:v22 tuples:v23 options:v24 activity:v25 completionPromise:v26, v27];
    return result;
  }

  [modelCopy hmbAssociateWithContainer:v15];
  v16 = modelCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = [v18 encodeWithExistingRecord:recordCopy cloudZone:self modelContainer:v15 error:error];

  return v19;
}

- (void)pushGroupWithBlockRow:(unint64_t)row tuples:(id)tuples options:(id)options activity:(id)activity completionPromise:(id)promise
{
  v52 = *MEMORY[0x277D85DE8];
  tuplesCopy = tuples;
  optionsCopy = options;
  activityCopy = activity;
  promiseCopy = promise;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__194910;
  v46 = __Block_byref_object_dispose__194911;
  v47 = 0;
  localZone = [(HMBCloudZone *)self localZone];
  rootRecordModelID = [(HMDLegacyV4CloudZone *)self rootRecordModelID];
  v16 = (v43 + 5);
  obj = v43[5];
  v17 = [localZone fetchModelWithModelID:rootRecordModelID error:&obj];
  objc_storeStrong(v16, obj);

  convertToHMDModelObject = [v17 convertToHMDModelObject];
  v19 = convertToHMDModelObject;
  if (convertToHMDModelObject)
  {
    objectIDToRecordNameMap = [convertToHMDModelObject objectIDToRecordNameMap];
    dictionary = [objectIDToRecordNameMap mutableCopy];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = v43[5];
      *buf = 138543618;
      v49 = v25;
      v50 = 2112;
      v51 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch root record model object from DB: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    objectIDToRecordNameMap = [(HMDLegacyV4CloudZone *)selfCopy rootRecordName];
    rootRecordModelID2 = [(HMDLegacyV4CloudZone *)selfCopy rootRecordModelID];
    uUIDString = [rootRecordModelID2 UUIDString];
    [dictionary setObject:objectIDToRecordNameMap forKey:uUIDString];
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __88__HMDLegacyV4CloudZone_pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke;
  v37[3] = &unk_27867E988;
  v40 = &v42;
  v37[4] = self;
  v29 = activityCopy;
  v38 = v29;
  v30 = dictionary;
  v39 = v30;
  [tuplesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v37];
  v31 = [(HMDLegacyV4CloudZone *)self tupleForRootRecordWithOutputBlockRow:row objectIDToRecordNameMap:v30];
  v32 = [tuplesCopy arrayByAddingObject:v31];

  v36.receiver = self;
  v36.super_class = HMDLegacyV4CloudZone;
  [(HMBCloudZone *)&v36 pushGroupWithBlockRow:row tuples:v32 options:optionsCopy activity:v29 completionPromise:promiseCopy];

  _Block_object_dispose(&v42, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __88__HMDLegacyV4CloudZone_pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [v3 externalID];
  v7 = [v6 length];

  if (!v7)
  {
    v20 = [v3 model];

    if (v20)
    {
      v21 = *(a1 + 32);
      v22 = [v3 model];
      v11 = [v21 recordIDForModel:v22];
    }

    else
    {
      v11 = 0;
    }

LABEL_9:
    v23 = [v3 model];

    if (!v23)
    {
      v53 = [v11 recordName];
      v54 = *(a1 + 48);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __88__HMDLegacyV4CloudZone_pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke_25;
      v71[3] = &unk_27867E960;
      v55 = v53;
      v72 = v55;
      v56 = [v54 na_firstKeyPassingTest:v71];
      v57 = objc_autoreleasePoolPush();
      v58 = *(a1 + 32);
      v59 = HMFGetOSLogHandle();
      v60 = os_log_type_enabled(v59, OS_LOG_TYPE_INFO);
      if (v56)
      {
        if (v60)
        {
          v61 = HMFGetLogIdentifier();
          *buf = 138543618;
          v75 = v61;
          v76 = 2112;
          v77 = v56;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Removing modelID %@ from lookup", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v57);
        [*(a1 + 48) removeObjectForKey:v56];
      }

      else
      {
        if (v60)
        {
          v62 = HMFGetLogIdentifier();
          v63 = [v11 hmbDescription];
          *buf = 138543618;
          v75 = v62;
          v76 = 2112;
          v77 = v63;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Unable to find modelID for deleted cloud record: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v57);
      }

      goto LABEL_34;
    }

    v24 = [v3 model];
    v25 = [v24 hmbModelID];
    v26 = [v25 UUIDString];

    v27 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v30 = v68 = v3;
      [*(a1 + 48) objectForKey:v26];
      v31 = v67 = v26;
      if (v31)
      {
        v32 = "Updating";
      }

      else
      {
        v32 = "Adding";
      }

      [v68 model];
      v34 = v33 = v11;
      v35 = [v34 hmbModelID];
      [v33 hmbDescription];
      v36 = v66 = v27;
      *buf = 138544130;
      v75 = v30;
      v76 = 2080;
      v77 = v32;
      v78 = 2112;
      v79 = v35;
      v80 = 2112;
      v81 = v36;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@%s modelIDRecordName lookup %@ -> %@", buf, 0x2Au);

      v11 = v33;
      v26 = v67;

      v27 = v66;
      v3 = v68;
    }

    objc_autoreleasePoolPop(v27);
    v37 = *(a1 + 48);
    v38 = [v11 recordName];
    [v37 setObject:v38 forKey:v26];

    v39 = [v3 externalID];

    if (v39)
    {
LABEL_33:

LABEL_34:
      goto LABEL_35;
    }

    v40 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ObjectRecord" recordID:v11];
    v41 = *(*(a1 + 56) + 8);
    v70 = *(v41 + 40);
    v42 = [v40 externalData:&v70];
    objc_storeStrong((v41 + 40), v70);
    [v3 setExternalData:v42];

    v43 = [v3 externalData];

    if (v43)
    {
      v44 = *(*(a1 + 56) + 8);
      v69 = *(v44 + 40);
      v45 = [v11 externalID:&v69];
      objc_storeStrong((v44 + 40), v69);
      [v3 setExternalID:v45];

      v46 = [v3 externalID];

      if (v46)
      {
LABEL_32:

        goto LABEL_33;
      }

      v47 = objc_autoreleasePoolPush();
      v48 = *(a1 + 32);
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        v51 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543618;
        v75 = v50;
        v76 = 2112;
        v77 = v51;
        v52 = "%{public}@Unable to generate external id from CKRecordID (this will cause issues later): %@";
LABEL_30:
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, v52, buf, 0x16u);
      }
    }

    else
    {
      v47 = objc_autoreleasePoolPush();
      v48 = *(a1 + 32);
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        v64 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543618;
        v75 = v50;
        v76 = 2112;
        v77 = v64;
        v52 = "%{public}@Unable to generate external data from CKRecord (this will cause issues later): %@";
        goto LABEL_30;
      }
    }

    objc_autoreleasePoolPop(v47);
    goto LABEL_32;
  }

  v8 = MEMORY[0x277CBC5D0];
  v9 = [v3 externalID];
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v8 recordIDFromExternalID:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);

  if (v11)
  {
    goto LABEL_9;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [*(a1 + 40) identifier];
    v17 = [v16 shortDescription];
    v18 = [v3 externalID];
    v19 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138544130;
    v75 = v15;
    v76 = 2114;
    v77 = v17;
    v78 = 2112;
    v79 = v18;
    v80 = 2112;
    v81 = v19;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to decode encoded record ID %@: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
LABEL_35:

  v65 = *MEMORY[0x277D85DE8];
}

- (id)tupleForRootRecordWithOutputBlockRow:(unint64_t)row objectIDToRecordNameMap:(id)map
{
  v98 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v5 = [HMDCloudGroupRootRecordModelObject alloc];
  rootRecordModelID = [(HMDLegacyV4CloudZone *)self rootRecordModelID];
  rootRecordParentModelID = [(HMDLegacyV4CloudZone *)self rootRecordParentModelID];
  v8 = [(HMDBackingStoreModelObject *)v5 initWithUUID:rootRecordModelID parentUUID:rootRecordParentModelID];

  [(HMDCloudGroupRootRecordModelObject *)v8 setObjectIDToRecordNameMap:mapCopy];
  v69 = v8;
  convertToLegacyV4 = [(HMDBackingStoreModelObject *)v8 convertToLegacyV4];
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  localZone = [(HMBCloudZone *)self localZone];
  modelContainer = [localZone modelContainer];
  v68 = [modelContainer bestModelEncodingForStorageLocation:2];

  modelContainer2 = [localZone modelContainer];
  v87 = 0;
  v66 = [modelContainer2 dataFromModel:convertToLegacyV4 encoding:v68 storageLocation:2 updatedModelIDs:0 error:&v87];
  v12 = v87;

  uuid = [(HMDBackingStoreModelObject *)v69 uuid];
  v86 = v12;
  v14 = [localZone fetchRecordRowWithModelID:uuid returning:-1 error:&v86];
  context = v86;

  if (!v14)
  {
    if (context)
    {
      v49 = objc_autoreleasePoolPush();
      selfCopy = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = HMFGetLogIdentifier();
        uuid2 = [(HMDBackingStoreModelObject *)v69 uuid];
        *buf = 138543874;
        v93 = v52;
        v94 = 2112;
        v95 = uuid2;
        v96 = 2112;
        v97 = context;
        _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch record row for rootRecordModel (%@): %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v49);
      result = _HMFPreconditionFailure();
    }

    else
    {
      v27 = objc_alloc(MEMORY[0x277CBC5D0]);
      cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
      zoneID = [cloudZoneID zoneID];
      v70 = [v27 initWithRecordName:@"4B0A9686-599F-487E-B2B0-B63BF838D813" zoneID:zoneID];

      v26 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ObjectRecord" recordID:v70];
      v85 = 0;
      v30 = [v70 externalID:&v85];
      v31 = v85;
      v32 = v31;
      if (v30)
      {
        v84 = v31;
        v33 = [v26 externalData:&v84];
        v62 = v84;

        contexta = objc_autoreleasePoolPush();
        selfCopy2 = self;
        if (v33)
        {
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v61 = v30;
            v36 = HMFGetLogIdentifier();
            uuid3 = [(HMDBackingStoreModelObject *)v69 uuid];
            hmbDescription = [v70 hmbDescription];
            *buf = 138543874;
            v93 = v36;
            v94 = 2112;
            v95 = uuid3;
            v96 = 2112;
            v97 = hmbDescription;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@CREATING NEW ROOT RECORD: %@ / %@", buf, 0x20u);

            v30 = v61;
          }

          objc_autoreleasePoolPop(contexta);
          v39 = [localZone sql];
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __85__HMDLegacyV4CloudZone_tupleForRootRecordWithOutputBlockRow_objectIDToRecordNameMap___block_invoke;
          v76[3] = &unk_27867E910;
          v82 = &v88;
          v77 = localZone;
          externalID = v30;
          v78 = externalID;
          externalData = v33;
          v79 = externalData;
          v80 = convertToLegacyV4;
          v83 = v68;
          v81 = v66;
          v40 = [v39 sqlTransactionWithActivity:0 block:v76];

          if (!v40)
          {

            goto LABEL_13;
          }

          contexta = objc_autoreleasePoolPush();
          v59 = selfCopy2;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v60 = HMFGetLogIdentifier();
            *buf = 138543618;
            v93 = v60;
            v94 = 2112;
            v95 = v40;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unable to create new record row for rootRecordModel: %@", buf, 0x16u);
          }
        }

        else
        {
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v57 = HMFGetLogIdentifier();
            hmbDescription2 = [v26 hmbDescription];
            *buf = 138543874;
            v93 = v57;
            v94 = 2112;
            v95 = hmbDescription2;
            v96 = 2112;
            v97 = v62;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unable to create externalData from %@: %@", buf, 0x20u);
          }
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          v56 = HMFGetLogIdentifier();
          *buf = 138543874;
          v93 = v56;
          v94 = 2112;
          v95 = v70;
          v96 = 2112;
          v97 = v32;
          _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unable to create externalID from %@: %@", buf, 0x20u);
        }
      }

      objc_autoreleasePoolPop(contexta);
      result = _HMFPreconditionFailure();
    }

LABEL_29:
    __break(1u);
    return result;
  }

  externalID = [v14 externalID];
  externalData = [v14 externalData];
  recordRow = [v14 recordRow];
  v89[3] = recordRow;
  v70 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:externalID error:0];
  v18 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    hmbDescription3 = [convertToLegacyV4 hmbDescription];
    hmbDescription4 = [v70 hmbDescription];
    *buf = 138543874;
    v93 = v21;
    v94 = 2112;
    v95 = hmbDescription3;
    v96 = 2112;
    v97 = hmbDescription4;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@UPDATING EXISTING ROOT RECORD: %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v24 = [localZone sql];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __85__HMDLegacyV4CloudZone_tupleForRootRecordWithOutputBlockRow_objectIDToRecordNameMap___block_invoke_22;
  v72[3] = &unk_27867E938;
  v73 = v14;
  v75 = v68;
  v74 = v66;
  v25 = [v24 sqlTransactionWithActivity:0 block:v72];

  if (v25)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = selfCopy4;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v93 = v48;
      v94 = 2112;
      v95 = v25;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Unable to update record row for rootRecordModel: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    result = _HMFPreconditionFailure();
    goto LABEL_29;
  }

  v26 = v73;
LABEL_13:

  v41 = objc_alloc(MEMORY[0x277D17090]);
  v42 = [v41 initWithOutputBlockRow:row recordRow:v89[3] model:convertToLegacyV4 queryTable:0 externalID:externalID externalData:externalData];

  _Block_object_dispose(&v88, 8);
  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

id __85__HMDLegacyV4CloudZone_tupleForRootRecordWithOutputBlockRow_objectIDToRecordNameMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 zoneRow];
  v6 = *(a1 + 48);
  v18 = *(a1 + 40);
  v19 = v5;
  v7 = [*(a1 + 56) hmbModelID];
  v8 = [*(a1 + 56) hmbParentModelID];
  v9 = [*(a1 + 56) hmbType];
  v10 = *(a1 + 80);
  v11 = *(a1 + 64);
  v12 = [*(a1 + 32) modelContainer];
  v13 = [v12 schemaHashForModel:*(a1 + 56)];
  v20 = 0;
  v14 = [v4 _insertRecordWithZoneRow:v19 externalID:v18 externalData:v6 modelID:v7 parentModelID:v8 modelType:v9 modelEncoding:v10 modelData:v11 modelSchema:v13 pushEncoding:0 pushData:0 pushBlockRow:0 error:&v20];

  v15 = v20;
  v16 = v20;
  *(*(*(a1 + 72) + 8) + 24) = v14;

  return v15;
}

id __85__HMDLegacyV4CloudZone_tupleForRootRecordWithOutputBlockRow_objectIDToRecordNameMap___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 recordRow];
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = [*(a1 + 32) modelSchema];
  v12 = 0;
  [v4 _updateRecordWithRow:v5 modelEncoding:v6 modelData:v7 modelSchema:v8 error:&v12];

  v9 = v12;
  v10 = v12;

  return v9;
}

- (id)rootRecordParentModelID
{
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  zoneID = [cloudZoneID zoneID];
  zoneName = [zoneID zoneName];
  v7 = [v3 initWithUUIDString:zoneName];

  return v7;
}

- (id)rootRecordModelID
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  rootRecordName = [(HMDLegacyV4CloudZone *)self rootRecordName];
  v5 = [v3 initWithUUIDString:rootRecordName];

  cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
  zoneID = [cloudZoneID zoneID];
  zoneName = [zoneID zoneName];

  v9 = MEMORY[0x277CCAD78];
  v14[0] = zoneName;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v9 hm_deriveUUIDFromBaseUUID:v5 identifierSalt:0 withSalts:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)recordWithExistingRecord:(id)record modelData:(id)data parentModelID:(id)d modelContainer:(id)container error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dataCopy = data;
  dCopy = d;
  containerCopy = container;
  v14 = recordCopy;
  v15 = v14;
  if (!v14)
  {
    v16 = [(HMDLegacyV4CloudZone *)self recordIDForParentModelID:dCopy];
    v17 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ObjectRecord" recordID:v16];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v21 = v69 = v18;
      hmbDescription = [v17 hmbDescription];
      *buf = 138543618;
      v76 = v21;
      v77 = 2112;
      v78 = hmbDescription;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Creating new cloud record %@ to store model.", buf, 0x16u);

      v18 = v69;
    }

    objc_autoreleasePoolPop(v18);
    v15 = v17;
  }

  v23 = [containerCopy modelFromData:dataCopy encoding:1 storageLocation:1 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  v67 = v25;
  if (v25)
  {
    convertToHMDModelObject = [v25 convertToHMDModelObject];
    v70 = [convertToHMDModelObject debugString:1];
  }

  else
  {
    v70 = [v23 debugDescription];
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = HMFGetLogIdentifier();
    recordID = [v14 recordID];
    [v15 recordID];
    v64 = dataCopy;
    v32 = v23;
    v33 = v15;
    v34 = v14;
    v36 = v35 = containerCopy;
    *buf = 138544130;
    v76 = v30;
    v77 = 2112;
    v78 = recordID;
    v79 = 2112;
    v80 = v36;
    v81 = 2112;
    v82 = v70;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@V4 CLOUD SAVE: %@/%@:\n%@", buf, 0x2Au);

    containerCopy = v35;
    v14 = v34;
    v15 = v33;
    v23 = v32;
    dataCopy = v64;
  }

  objc_autoreleasePoolPop(v27);
  v72 = 0;
  v37 = [containerCopy encryptData:dataCopy compress:1 error:&v72];
  v38 = v72;

  if (v38)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy2;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v42 = v23;
      v43 = v15;
      v44 = v14;
      v46 = v45 = containerCopy;
      *buf = 138543618;
      v76 = v46;
      v77 = 2112;
      v78 = v38;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to encrypt model field: %@", buf, 0x16u);

      containerCopy = v45;
      v14 = v44;
      v15 = v43;
      v23 = v42;
    }

    objc_autoreleasePoolPop(v39);
    if (error)
    {
      v47 = v38;
      v48 = 0;
      *error = v38;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v65 = containerCopy;
    [v15 hmbSetObject:v37 forKey:@"k01" encrypted:0];
    v49 = *MEMORY[0x277D17150];
    v73[0] = *MEMORY[0x277D17158];
    v73[1] = v49;
    v74[0] = &unk_283E73D00;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v74[1] = uUIDString;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];

    v71 = 0;
    v53 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v52 requiringSecureCoding:1 error:&v71];
    v54 = v71;
    if (v53)
    {
      [v15 hmbSetObject:v53 forKey:*MEMORY[0x277D17148] encrypted:0];
      v48 = v15;
      containerCopy = v65;
    }

    else
    {
      v63 = v23;
      v55 = objc_autoreleasePoolPush();
      v56 = selfCopy2;
      v57 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v58 = v62 = v56;
        *buf = 138543618;
        v76 = v58;
        v77 = 2112;
        v78 = v54;
        _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@Unable to create / encode cloud record metadata: %@", buf, 0x16u);

        v56 = v62;
      }

      objc_autoreleasePoolPop(v55);
      containerCopy = v65;
      if (error)
      {
        v59 = v54;
        v48 = 0;
        *error = v54;
      }

      else
      {
        v48 = 0;
      }

      v23 = v63;
    }
  }

  v60 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)recordIDForParentModelID:(id)d
{
  dCopy = d;
  rootRecordModelID = [(HMDLegacyV4CloudZone *)self rootRecordModelID];
  v6 = [dCopy isEqual:rootRecordModelID];

  v7 = objc_alloc(MEMORY[0x277CBC5D0]);
  if (v6)
  {
    rootRecordName = [(HMDLegacyV4CloudZone *)self rootRecordName];
    cloudZoneID = [(HMBCloudZone *)self cloudZoneID];
    zoneID = [cloudZoneID zoneID];
    v11 = [v7 initWithRecordName:rootRecordName zoneID:zoneID];
  }

  else
  {
    rootRecordName = [MEMORY[0x277CCAD78] UUID];
    cloudZoneID = [rootRecordName UUIDString];
    zoneID = [(HMBCloudZone *)self cloudZoneID];
    v10ZoneID = [zoneID zoneID];
    v11 = [v7 initWithRecordName:cloudZoneID zoneID:v10ZoneID];
  }

  return v11;
}

- (id)decodeModelFromRecord:(id)record externalRecordFields:(id)fields source:(unint64_t)source error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  fieldsCopy = fields;
  modelContainer = [(HMBCloudZone *)self modelContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = modelContainer;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (!v13)
  {
    _HMFPreconditionFailure();
  }

  recordType = [recordCopy recordType];
  v15 = [recordType isEqualToString:@"ObjectRecord"];

  if (v15 && ([HMDLegacyV4Model createWithLegacyRecord:recordCopy modelContainer:v13 error:error], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    modelContainer2 = [(HMBCloudZone *)self modelContainer];
    [v17 hmbAssociateWithContainer:modelContainer2];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      hmbDescription = [recordCopy hmbDescription];
      v26 = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = hmbDescription;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode record %@ from legacy cloud zone.", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (error && !*error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *error = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMDLegacyV4CloudZone)initWithCloudDatabase:(id)database configuration:(id)configuration state:(id)state
{
  databaseCopy = database;
  configurationCopy = configuration;
  stateCopy = state;
  v21.receiver = self;
  v21.super_class = HMDLegacyV4CloudZone;
  v11 = [(HMBCloudZone *)&v21 initWithCloudDatabase:databaseCopy configuration:configurationCopy state:stateCopy];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  [(HMBCloudZone *)v11 setDefaultDesiredKeys:0];
  v13 = configurationCopy;
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

  if (v15)
  {
    rootRecordName = [v15 rootRecordName];
    rootRecordName = v12->_rootRecordName;
    v12->_rootRecordName = rootRecordName;

LABEL_7:
    return v12;
  }

  v19 = _HMFPreconditionFailure();
  [(HMDLegacyCloudZoneConfiguration *)v19 .cxx_destruct];
  return result;
}

@end