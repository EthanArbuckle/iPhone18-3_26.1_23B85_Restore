@interface HMDResidentSyncCodingContext
- (BOOL)_shouldExcludeForRestrictedGuestObject:(id)a3 context:(id)a4;
- (HMDResidentSyncCodingContext)initWithTargetUser:(id)a3 targetIsResident:(BOOL)a4 targetDeviceAddress:(id)a5;
@end

@implementation HMDResidentSyncCodingContext

- (BOOL)_shouldExcludeForRestrictedGuestObject:(id)a3 context:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    v11 = v7;
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
      v14 = [v13 targetUser];
      v15 = [v14 isRestrictedGuest];

      if (v15)
      {
        v16 = [v10 shouldIncludeForRestrictedGuestWithContext:v13] ^ 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
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

- (HMDResidentSyncCodingContext)initWithTargetUser:(id)a3 targetIsResident:(BOOL)a4 targetDeviceAddress:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (v6 && ([v9 isOwner] & 1) == 0)
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
      objc_storeStrong(&v11->_targetUser, a3);
      v12->_targetIsResident = v6;
      objc_storeStrong(&v12->_targetDeviceAddress, a5);
    }

    return v12;
  }
}

@end