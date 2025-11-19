@interface HMDResidentSyncController
- (HMDResidentSyncController)initWithHome:(id)a3 codingModel:(id)a4 notificationCenter:(id)a5 persistence:(id)a6;
- (id)decodeToken:(id)a3 error:(id *)a4;
- (id)encodeToken:(id)a3 error:(id *)a4;
- (uint64_t)changeToken:(void *)a3 isAheadOf:(uint64_t)a4 orEqual:;
@end

@implementation HMDResidentSyncController

- (uint64_t)changeToken:(void *)a3 isAheadOf:(uint64_t)a4 orEqual:
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!v8)
  {
LABEL_8:
    a4 = 1;
    goto LABEL_9;
  }

  if (v7 != v8)
  {
    v10 = [v7 compareToken:v8 error:0];
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v10 == 2)
    {
LABEL_6:
      a4 = 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:

  return a4;
}

- (id)decodeToken:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode change token: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      v14 = v8;
      *a4 = v8;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)encodeToken:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode change token: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      v14 = v8;
      *a4 = v8;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDResidentSyncController)initWithHome:(id)a3 codingModel:(id)a4 notificationCenter:(id)a5 persistence:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v33.receiver = self;
  v33.super_class = HMDResidentSyncController;
  v14 = [(HMDResidentSyncController *)&v33 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  objc_storeWeak(&v14->_home, v10);
  v16 = [v10 uuid];
  homeUUID = v15->_homeUUID;
  v15->_homeUUID = v16;

  objc_storeStrong(&v15->_notificationCenter, a5);
  objc_storeStrong(&v15->_codingModel, a4);
  v18 = [v11 objectModel];
  v19 = [v18 versionIdentifiers];
  objc_opt_self();
  if ([v19 count] == 1)
  {
    v20 = [v19 anyObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v22];
      if (v23)
      {
        v24 = v23;

        schemaVersion = v15->_schemaVersion;
        v15->_schemaVersion = v24;

        v26 = [v13 newManagedObjectContext];
        context = v15->_context;
        v15->_context = v26;

        v28 = HMDWorkingContextNameForHomeUUID(v15->_homeUUID);
        [(HMDManagedObjectContext *)v15->_context setName:v28];

        v29 = @"HMD.RS";
        [(HMDManagedObjectContext *)v15->_context setTransactionAuthor:@"HMD.RS"];

LABEL_9:
        return v15;
      }
    }
  }

  else
  {
    _HMFPreconditionFailureWithFormat();
  }

  v31 = _HMFPreconditionFailureWithFormat();
  return +[(HMDResidentSyncController *)v31];
}

@end