@interface HMDDeviceAddress
+ (HMDDeviceAddress)addressWithIDSIdentifier:(id)a3 idsDestination:(id)a4;
+ (id)localDeviceIDSIdentifier;
- (BOOL)isCurrentDevice;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToDeviceAddress:(id)a3;
- (HMDDeviceAddress)initWithIDSIdentifier:(id)a3 idsDestination:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDDeviceAddress

- (BOOL)isCurrentDevice
{
  v2 = [(HMDDeviceAddress *)self idsIdentifier];
  v3 = +[HMDDeviceAddress localDeviceIDSIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDDeviceAddress *)self idsIdentifier];
  v6 = [(HMDDeviceAddress *)self idsDestination];
  v7 = [v3 stringWithFormat:@"<%@ %@ %{sensitive}@>", v4, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HMDDeviceAddress *)self idsIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEquivalentToDeviceAddress:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(HMDDeviceAddress *)self idsDestination];
  v6 = [HMDDeviceHandle deviceHandleForDestination:v5];

  v7 = [v4 idsDestination];
  v8 = [HMDDeviceHandle deviceHandleForDestination:v7];

  v9 = [(HMDDeviceAddress *)self idsIdentifier];
  v10 = [v4 idsIdentifier];

  if ([v9 isEqual:v10])
  {
    v11 = [v6 isEqual:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDDeviceAddress *)self idsDestination];
      v8 = [(HMDDeviceAddress *)v6 idsDestination];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(HMDDeviceAddress *)self idsIdentifier];
        v10 = [(HMDDeviceAddress *)v6 idsIdentifier];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDDeviceAddress)initWithIDSIdentifier:(id)a3 idsDestination:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v13 = _HMFPreconditionFailure();
    return +[(HMDDeviceAddress *)v13];
  }

  v15.receiver = self;
  v15.super_class = HMDDeviceAddress;
  v10 = [(HMDDeviceAddress *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_idsIdentifier, a3);
    objc_storeStrong(&v11->_idsDestination, a4);
  }

  return v11;
}

+ (id)localDeviceIDSIdentifier
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (localDeviceIDSIdentifier_localDeviceID)
  {
    v2 = localDeviceIDSIdentifier_localDeviceID;
    os_unfair_lock_unlock(&localDeviceIDSIdentifier_lock);
  }

  else
  {
    os_unfair_lock_unlock(&localDeviceIDSIdentifier_lock);
    v3 = IDSCopyLocalDeviceUniqueID();
    os_unfair_lock_lock_with_options();
    if (localDeviceIDSIdentifier_localDeviceID)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
      v6 = localDeviceIDSIdentifier_localDeviceID;
      localDeviceIDSIdentifier_localDeviceID = v5;
    }

    os_unfair_lock_unlock(&localDeviceIDSIdentifier_lock);
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = localDeviceIDSIdentifier_localDeviceID;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@localDeviceID: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v2 = localDeviceIDSIdentifier_localDeviceID;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (HMDDeviceAddress)addressWithIDSIdentifier:(id)a3 idsDestination:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v7 = a4;
    v8 = a3;
    v4 = [[a1 alloc] initWithIDSIdentifier:v8 idsDestination:v7];
  }

  return v4;
}

@end