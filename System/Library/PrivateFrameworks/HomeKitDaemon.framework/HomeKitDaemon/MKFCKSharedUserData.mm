@interface MKFCKSharedUserData
- (id)workingStoreHomeMember;
@end

@implementation MKFCKSharedUserData

- (id)workingStoreHomeMember
{
  v48[1] = *MEMORY[0x277D85DE8];
  workingStoreHomeMember = self->_workingStoreHomeMember;
  if (workingStoreHomeMember)
  {
    v3 = *MEMORY[0x277CBEEE8];
  }

  else
  {
    v5 = [(MKFCKSharedUserData *)self managedObjectContext];
    v6 = [v5 hmd_coreData];
    v7 = [v6 container];

    if (!v7)
    {
      _HMFPreconditionFailure();
    }

    v8 = [(MKFCKSharedUserData *)self objectID];
    v48[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    v10 = [v7 fetchSharesMatchingObjectIDs:v9 error:0];
    v11 = [v10 objectForKeyedSubscript:v8];

    if (v11)
    {
      v12 = [(MKFCKSharedUserData *)self homeModelID];
      if (v12)
      {
        v13 = [v11 recordID];
        v14 = [_MKFHome findHomeMemberUsingReverseShareID:v13 homeModelID:v12 context:v5];

        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v43 = v5;
          v26 = objc_autoreleasePoolPush();
          v27 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v29 = v38 = v27;
            [v8 hmd_debugIdentifier];
            v30 = v40 = v26;
            *buf = 138543618;
            v45 = v29;
            v46 = 2112;
            v47 = v30;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch working store user for %@", buf, 0x16u);

            v26 = v40;
            v27 = v38;
          }

          objc_autoreleasePoolPop(v26);
          v5 = v43;
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v24 = v42 = v5;
          [v8 hmd_debugIdentifier];
          v25 = v39 = v21;
          *buf = 138543618;
          v45 = v24;
          v46 = 2112;
          v47 = v25;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@No homeModelID for %@", buf, 0x16u);

          v21 = v39;
          v5 = v42;
        }

        objc_autoreleasePoolPop(v21);
        v14 = 0;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        [v8 hmd_debugIdentifier];
        v20 = v41 = v5;
        *buf = 138543618;
        v45 = v19;
        v46 = 2112;
        v47 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@No CKShare found for %@", buf, 0x16u);

        v5 = v41;
      }

      objc_autoreleasePoolPop(v16);
      v14 = 0;
    }

    v3 = *MEMORY[0x277CBEEE8];
    if (v14)
    {
      v31 = v14;
    }

    else
    {
      v31 = *MEMORY[0x277CBEEE8];
    }

    objc_storeStrong(&self->_workingStoreHomeMember, v31);

    workingStoreHomeMember = self->_workingStoreHomeMember;
  }

  v32 = workingStoreHomeMember;
  v33 = v32;
  if (v3 == v32)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  v35 = v34;

  v36 = *MEMORY[0x277D85DE8];
  return v34;
}

@end