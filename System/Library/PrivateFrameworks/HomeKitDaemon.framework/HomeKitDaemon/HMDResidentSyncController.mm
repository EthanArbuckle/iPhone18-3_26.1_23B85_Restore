@interface HMDResidentSyncController
- (HMDResidentSyncController)initWithHome:(id)home codingModel:(id)model notificationCenter:(id)center persistence:(id)persistence;
- (id)decodeToken:(id)token error:(id *)error;
- (id)encodeToken:(id)token error:(id *)error;
- (uint64_t)changeToken:(void *)token isAheadOf:(uint64_t)of orEqual:;
@end

@implementation HMDResidentSyncController

- (uint64_t)changeToken:(void *)token isAheadOf:(uint64_t)of orEqual:
{
  v7 = a2;
  tokenCopy = token;
  v9 = tokenCopy;
  if (!self)
  {
    goto LABEL_6;
  }

  if (!tokenCopy)
  {
LABEL_8:
    of = 1;
    goto LABEL_9;
  }

  if (v7 != tokenCopy)
  {
    v10 = [v7 compareToken:tokenCopy error:0];
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
      of = 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:

  return of;
}

- (id)decodeToken:(id)token error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v17 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:tokenCopy error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    if (error)
    {
      v14 = v8;
      *error = v8;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)encodeToken:(id)token error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v17 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:tokenCopy requiringSecureCoding:1 error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    if (error)
    {
      v14 = v8;
      *error = v8;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDResidentSyncController)initWithHome:(id)home codingModel:(id)model notificationCenter:(id)center persistence:(id)persistence
{
  homeCopy = home;
  modelCopy = model;
  centerCopy = center;
  persistenceCopy = persistence;
  v33.receiver = self;
  v33.super_class = HMDResidentSyncController;
  v14 = [(HMDResidentSyncController *)&v33 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  objc_storeWeak(&v14->_home, homeCopy);
  uuid = [homeCopy uuid];
  homeUUID = v15->_homeUUID;
  v15->_homeUUID = uuid;

  objc_storeStrong(&v15->_notificationCenter, center);
  objc_storeStrong(&v15->_codingModel, model);
  objectModel = [modelCopy objectModel];
  versionIdentifiers = [objectModel versionIdentifiers];
  objc_opt_self();
  if ([versionIdentifiers count] == 1)
  {
    anyObject = [versionIdentifiers anyObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = anyObject;
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

        newManagedObjectContext = [persistenceCopy newManagedObjectContext];
        context = v15->_context;
        v15->_context = newManagedObjectContext;

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