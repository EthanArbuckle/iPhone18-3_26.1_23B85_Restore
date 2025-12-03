@interface HMDResidentSyncCodingContext
- (BOOL)_shouldExcludeForRestrictedGuestObject:(id)object context:(id)context;
- (HMDResidentSyncCodingContext)initWithTargetUser:(id)user targetIsResident:(BOOL)resident targetDeviceAddress:(id)address;
@end

@implementation HMDResidentSyncCodingContext

- (BOOL)_shouldExcludeForRestrictedGuestObject:(id)object context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  contextCopy = context;
  v8 = objectCopy;
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
    v11 = contextCopy;
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

    if (v13)
    {
      targetUser = [v13 targetUser];
      isRestrictedGuest = [targetUser isRestrictedGuest];

      if (isRestrictedGuest)
      {
        v16 = [v10 shouldIncludeForRestrictedGuestWithContext:v13] ^ 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@nil codingContext after cast: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
    }

    LOBYTE(v16) = 0;
    goto LABEL_16;
  }

  LOBYTE(v16) = 0;
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (HMDResidentSyncCodingContext)initWithTargetUser:(id)user targetIsResident:(BOOL)resident targetDeviceAddress:(id)address
{
  residentCopy = resident;
  userCopy = user;
  addressCopy = address;
  if (residentCopy && ([userCopy isOwner] & 1) == 0)
  {
    v14 = _HMFPreconditionFailure();
    return [(_MKFZone *)v14 shouldIncludeForRestrictedGuestWithContext:v15, v16];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDResidentSyncCodingContext;
    v11 = [(HMDResidentSyncCodingContext *)&v17 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_targetUser, user);
      v12->_targetIsResident = residentCopy;
      objc_storeStrong(&v12->_targetDeviceAddress, address);
    }

    return v12;
  }
}

@end