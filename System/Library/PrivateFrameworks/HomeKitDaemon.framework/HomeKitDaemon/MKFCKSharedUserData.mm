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
    managedObjectContext = [(MKFCKSharedUserData *)self managedObjectContext];
    hmd_coreData = [managedObjectContext hmd_coreData];
    container = [hmd_coreData container];

    if (!container)
    {
      _HMFPreconditionFailure();
    }

    objectID = [(MKFCKSharedUserData *)self objectID];
    v48[0] = objectID;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    v10 = [container fetchSharesMatchingObjectIDs:v9 error:0];
    v11 = [v10 objectForKeyedSubscript:objectID];

    if (v11)
    {
      homeModelID = [(MKFCKSharedUserData *)self homeModelID];
      if (homeModelID)
      {
        recordID = [v11 recordID];
        v14 = [_MKFHome findHomeMemberUsingReverseShareID:recordID homeModelID:homeModelID context:managedObjectContext];

        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v43 = managedObjectContext;
          v26 = objc_autoreleasePoolPush();
          selfCopy = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v29 = v38 = selfCopy;
            [objectID hmd_debugIdentifier];
            v30 = v40 = v26;
            *buf = 138543618;
            v45 = v29;
            v46 = 2112;
            v47 = v30;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch working store user for %@", buf, 0x16u);

            v26 = v40;
            selfCopy = v38;
          }

          objc_autoreleasePoolPop(v26);
          managedObjectContext = v43;
        }
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v24 = v42 = managedObjectContext;
          [objectID hmd_debugIdentifier];
          v25 = v39 = v21;
          *buf = 138543618;
          v45 = v24;
          v46 = 2112;
          v47 = v25;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@No homeModelID for %@", buf, 0x16u);

          v21 = v39;
          managedObjectContext = v42;
        }

        objc_autoreleasePoolPop(v21);
        v14 = 0;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        [objectID hmd_debugIdentifier];
        v20 = v41 = managedObjectContext;
        *buf = 138543618;
        v45 = v19;
        v46 = 2112;
        v47 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@No CKShare found for %@", buf, 0x16u);

        managedObjectContext = v41;
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