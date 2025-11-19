@interface HMDLegacyV4CloudZone
- (HMDLegacyV4CloudZone)initWithCloudDatabase:(id)a3 configuration:(id)a4 state:(id)a5;
- (id)decodeModelFromRecord:(id)a3 externalRecordFields:(id)a4 source:(unint64_t)a5 error:(id *)a6;
- (id)encodeRecordFromModel:(id)a3 existingRecord:(id)a4 encodingContext:(id)a5 error:(id *)a6;
- (id)recordIDForParentModelID:(id)a3;
- (id)recordWithExistingRecord:(id)a3 modelData:(id)a4 parentModelID:(id)a5 modelContainer:(id)a6 error:(id *)a7;
- (id)rootRecordModelID;
- (id)rootRecordParentModelID;
- (id)tupleForRootRecordWithOutputBlockRow:(unint64_t)a3 objectIDToRecordNameMap:(id)a4;
- (void)pushGroupWithBlockRow:(unint64_t)a3 tuples:(id)a4 options:(id)a5 activity:(id)a6 completionPromise:(id)a7;
@end

@implementation HMDLegacyV4CloudZone

- (id)encodeRecordFromModel:(id)a3 existingRecord:(id)a4 encodingContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(HMBCloudZone *)self modelContainer];
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

  if (!v15)
  {
    _HMFPreconditionFailure();
LABEL_13:
    v21 = _HMFPreconditionFailure();
    [(HMDLegacyV4CloudZone *)v21 pushGroupWithBlockRow:v22 tuples:v23 options:v24 activity:v25 completionPromise:v26, v27];
    return result;
  }

  [v10 hmbAssociateWithContainer:v15];
  v16 = v10;
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

  v19 = [v18 encodeWithExistingRecord:v11 cloudZone:self modelContainer:v15 error:a6];

  return v19;
}

- (void)pushGroupWithBlockRow:(unint64_t)a3 tuples:(id)a4 options:(id)a5 activity:(id)a6 completionPromise:(id)a7
{
  v52 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v35 = a5;
  v34 = a6;
  v13 = a7;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__194910;
  v46 = __Block_byref_object_dispose__194911;
  v47 = 0;
  v14 = [(HMBCloudZone *)self localZone];
  v15 = [(HMDLegacyV4CloudZone *)self rootRecordModelID];
  v16 = (v43 + 5);
  obj = v43[5];
  v17 = [v14 fetchModelWithModelID:v15 error:&obj];
  objc_storeStrong(v16, obj);

  v18 = [v17 convertToHMDModelObject];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 objectIDToRecordNameMap];
    v21 = [v20 mutableCopy];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
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
    v21 = [MEMORY[0x277CBEB38] dictionary];
    v20 = [(HMDLegacyV4CloudZone *)v23 rootRecordName];
    v27 = [(HMDLegacyV4CloudZone *)v23 rootRecordModelID];
    v28 = [v27 UUIDString];
    [v21 setObject:v20 forKey:v28];
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __88__HMDLegacyV4CloudZone_pushGroupWithBlockRow_tuples_options_activity_completionPromise___block_invoke;
  v37[3] = &unk_27867E988;
  v40 = &v42;
  v37[4] = self;
  v29 = v34;
  v38 = v29;
  v30 = v21;
  v39 = v30;
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v37];
  v31 = [(HMDLegacyV4CloudZone *)self tupleForRootRecordWithOutputBlockRow:a3 objectIDToRecordNameMap:v30];
  v32 = [v12 arrayByAddingObject:v31];

  v36.receiver = self;
  v36.super_class = HMDLegacyV4CloudZone;
  [(HMBCloudZone *)&v36 pushGroupWithBlockRow:a3 tuples:v32 options:v35 activity:v29 completionPromise:v13];

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

- (id)tupleForRootRecordWithOutputBlockRow:(unint64_t)a3 objectIDToRecordNameMap:(id)a4
{
  v98 = *MEMORY[0x277D85DE8];
  v67 = a4;
  v5 = [HMDCloudGroupRootRecordModelObject alloc];
  v6 = [(HMDLegacyV4CloudZone *)self rootRecordModelID];
  v7 = [(HMDLegacyV4CloudZone *)self rootRecordParentModelID];
  v8 = [(HMDBackingStoreModelObject *)v5 initWithUUID:v6 parentUUID:v7];

  [(HMDCloudGroupRootRecordModelObject *)v8 setObjectIDToRecordNameMap:v67];
  v69 = v8;
  v71 = [(HMDBackingStoreModelObject *)v8 convertToLegacyV4];
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v9 = [(HMBCloudZone *)self localZone];
  v10 = [v9 modelContainer];
  v68 = [v10 bestModelEncodingForStorageLocation:2];

  v11 = [v9 modelContainer];
  v87 = 0;
  v66 = [v11 dataFromModel:v71 encoding:v68 storageLocation:2 updatedModelIDs:0 error:&v87];
  v12 = v87;

  v13 = [(HMDBackingStoreModelObject *)v69 uuid];
  v86 = v12;
  v14 = [v9 fetchRecordRowWithModelID:v13 returning:-1 error:&v86];
  context = v86;

  if (!v14)
  {
    if (context)
    {
      v49 = objc_autoreleasePoolPush();
      v50 = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = HMFGetLogIdentifier();
        v53 = [(HMDBackingStoreModelObject *)v69 uuid];
        *buf = 138543874;
        v93 = v52;
        v94 = 2112;
        v95 = v53;
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
      v28 = [(HMBCloudZone *)self cloudZoneID];
      v29 = [v28 zoneID];
      v70 = [v27 initWithRecordName:@"4B0A9686-599F-487E-B2B0-B63BF838D813" zoneID:v29];

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
        v34 = self;
        if (v33)
        {
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v61 = v30;
            v36 = HMFGetLogIdentifier();
            v37 = [(HMDBackingStoreModelObject *)v69 uuid];
            v38 = [v70 hmbDescription];
            *buf = 138543874;
            v93 = v36;
            v94 = 2112;
            v95 = v37;
            v96 = 2112;
            v97 = v38;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@CREATING NEW ROOT RECORD: %@ / %@", buf, 0x20u);

            v30 = v61;
          }

          objc_autoreleasePoolPop(contexta);
          v39 = [v9 sql];
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __85__HMDLegacyV4CloudZone_tupleForRootRecordWithOutputBlockRow_objectIDToRecordNameMap___block_invoke;
          v76[3] = &unk_27867E910;
          v82 = &v88;
          v77 = v9;
          v15 = v30;
          v78 = v15;
          v16 = v33;
          v79 = v16;
          v80 = v71;
          v83 = v68;
          v81 = v66;
          v40 = [v39 sqlTransactionWithActivity:0 block:v76];

          if (!v40)
          {

            goto LABEL_13;
          }

          contexta = objc_autoreleasePoolPush();
          v59 = v34;
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
            v58 = [v26 hmbDescription];
            *buf = 138543874;
            v93 = v57;
            v94 = 2112;
            v95 = v58;
            v96 = 2112;
            v97 = v62;
            _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Unable to create externalData from %@: %@", buf, 0x20u);
          }
        }
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v54 = self;
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

  v15 = [v14 externalID];
  v16 = [v14 externalData];
  v17 = [v14 recordRow];
  v89[3] = v17;
  v70 = [MEMORY[0x277CBC5D0] recordIDFromExternalID:v15 error:0];
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v71 hmbDescription];
    v23 = [v70 hmbDescription];
    *buf = 138543874;
    v93 = v21;
    v94 = 2112;
    v95 = v22;
    v96 = 2112;
    v97 = v23;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@UPDATING EXISTING ROOT RECORD: %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v24 = [v9 sql];
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
    v46 = v19;
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
  v42 = [v41 initWithOutputBlockRow:a3 recordRow:v89[3] model:v71 queryTable:0 externalID:v15 externalData:v16];

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
  v4 = [(HMBCloudZone *)self cloudZoneID];
  v5 = [v4 zoneID];
  v6 = [v5 zoneName];
  v7 = [v3 initWithUUIDString:v6];

  return v7;
}

- (id)rootRecordModelID
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = [(HMDLegacyV4CloudZone *)self rootRecordName];
  v5 = [v3 initWithUUIDString:v4];

  v6 = [(HMBCloudZone *)self cloudZoneID];
  v7 = [v6 zoneID];
  v8 = [v7 zoneName];

  v9 = MEMORY[0x277CCAD78];
  v14[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v9 hm_deriveUUIDFromBaseUUID:v5 identifierSalt:0 withSalts:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)recordWithExistingRecord:(id)a3 modelData:(id)a4 parentModelID:(id)a5 modelContainer:(id)a6 error:(id *)a7
{
  v83 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v68 = a5;
  v13 = a6;
  v14 = v11;
  v15 = v14;
  if (!v14)
  {
    v16 = [(HMDLegacyV4CloudZone *)self recordIDForParentModelID:v68];
    v17 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"ObjectRecord" recordID:v16];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v21 = v69 = v18;
      v22 = [v17 hmbDescription];
      *buf = 138543618;
      v76 = v21;
      v77 = 2112;
      v78 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Creating new cloud record %@ to store model.", buf, 0x16u);

      v18 = v69;
    }

    objc_autoreleasePoolPop(v18);
    v15 = v17;
  }

  v23 = [v13 modelFromData:v12 encoding:1 storageLocation:1 error:0];
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
    v26 = [v25 convertToHMDModelObject];
    v70 = [v26 debugString:1];
  }

  else
  {
    v70 = [v23 debugDescription];
  }

  v27 = objc_autoreleasePoolPush();
  v28 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = HMFGetLogIdentifier();
    v31 = [v14 recordID];
    [v15 recordID];
    v64 = v12;
    v32 = v23;
    v33 = v15;
    v34 = v14;
    v36 = v35 = v13;
    *buf = 138544130;
    v76 = v30;
    v77 = 2112;
    v78 = v31;
    v79 = 2112;
    v80 = v36;
    v81 = 2112;
    v82 = v70;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@V4 CLOUD SAVE: %@/%@:\n%@", buf, 0x2Au);

    v13 = v35;
    v14 = v34;
    v15 = v33;
    v23 = v32;
    v12 = v64;
  }

  objc_autoreleasePoolPop(v27);
  v72 = 0;
  v37 = [v13 encryptData:v12 compress:1 error:&v72];
  v38 = v72;

  if (v38)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v28;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v42 = v23;
      v43 = v15;
      v44 = v14;
      v46 = v45 = v13;
      *buf = 138543618;
      v76 = v46;
      v77 = 2112;
      v78 = v38;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unable to encrypt model field: %@", buf, 0x16u);

      v13 = v45;
      v14 = v44;
      v15 = v43;
      v23 = v42;
    }

    objc_autoreleasePoolPop(v39);
    if (a7)
    {
      v47 = v38;
      v48 = 0;
      *a7 = v38;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v65 = v13;
    [v15 hmbSetObject:v37 forKey:@"k01" encrypted:0];
    v49 = *MEMORY[0x277D17150];
    v73[0] = *MEMORY[0x277D17158];
    v73[1] = v49;
    v74[0] = &unk_283E73D00;
    v50 = [MEMORY[0x277CCAD78] UUID];
    v51 = [v50 UUIDString];
    v74[1] = v51;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];

    v71 = 0;
    v53 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v52 requiringSecureCoding:1 error:&v71];
    v54 = v71;
    if (v53)
    {
      [v15 hmbSetObject:v53 forKey:*MEMORY[0x277D17148] encrypted:0];
      v48 = v15;
      v13 = v65;
    }

    else
    {
      v63 = v23;
      v55 = objc_autoreleasePoolPush();
      v56 = v28;
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
      v13 = v65;
      if (a7)
      {
        v59 = v54;
        v48 = 0;
        *a7 = v54;
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

- (id)recordIDForParentModelID:(id)a3
{
  v4 = a3;
  v5 = [(HMDLegacyV4CloudZone *)self rootRecordModelID];
  v6 = [v4 isEqual:v5];

  v7 = objc_alloc(MEMORY[0x277CBC5D0]);
  if (v6)
  {
    v8 = [(HMDLegacyV4CloudZone *)self rootRecordName];
    v9 = [(HMBCloudZone *)self cloudZoneID];
    v10 = [v9 zoneID];
    v11 = [v7 initWithRecordName:v8 zoneID:v10];
  }

  else
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    v10 = [(HMBCloudZone *)self cloudZoneID];
    v12 = [v10 zoneID];
    v11 = [v7 initWithRecordName:v9 zoneID:v12];
  }

  return v11;
}

- (id)decodeModelFromRecord:(id)a3 externalRecordFields:(id)a4 source:(unint64_t)a5 error:(id *)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(HMBCloudZone *)self modelContainer];
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

  if (!v13)
  {
    _HMFPreconditionFailure();
  }

  v14 = [v9 recordType];
  v15 = [v14 isEqualToString:@"ObjectRecord"];

  if (v15 && ([HMDLegacyV4Model createWithLegacyRecord:v9 modelContainer:v13 error:a6], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    v18 = [(HMBCloudZone *)self modelContainer];
    [v17 hmbAssociateWithContainer:v18];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v9 hmbDescription];
      v26 = 138543618;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode record %@ from legacy cloud zone.", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (a6 && !*a6)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *a6 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMDLegacyV4CloudZone)initWithCloudDatabase:(id)a3 configuration:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = HMDLegacyV4CloudZone;
  v11 = [(HMBCloudZone *)&v21 initWithCloudDatabase:v8 configuration:v9 state:v10];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  [(HMBCloudZone *)v11 setDefaultDesiredKeys:0];
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

  v15 = v14;

  if (v15)
  {
    v16 = [v15 rootRecordName];
    rootRecordName = v12->_rootRecordName;
    v12->_rootRecordName = v16;

LABEL_7:
    return v12;
  }

  v19 = _HMFPreconditionFailure();
  [(HMDLegacyCloudZoneConfiguration *)v19 .cxx_destruct];
  return result;
}

@end