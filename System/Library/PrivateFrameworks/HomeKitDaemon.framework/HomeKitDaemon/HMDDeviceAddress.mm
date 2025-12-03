@interface HMDDeviceAddress
+ (HMDDeviceAddress)addressWithIDSIdentifier:(id)identifier idsDestination:(id)destination;
+ (id)localDeviceIDSIdentifier;
- (BOOL)isCurrentDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToDeviceAddress:(id)address;
- (HMDDeviceAddress)initWithIDSIdentifier:(id)identifier idsDestination:(id)destination;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDDeviceAddress

- (BOOL)isCurrentDevice
{
  idsIdentifier = [(HMDDeviceAddress *)self idsIdentifier];
  v3 = +[HMDDeviceAddress localDeviceIDSIdentifier];
  v4 = [idsIdentifier isEqual:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  idsIdentifier = [(HMDDeviceAddress *)self idsIdentifier];
  idsDestination = [(HMDDeviceAddress *)self idsDestination];
  v7 = [v3 stringWithFormat:@"<%@ %@ %{sensitive}@>", v4, idsIdentifier, idsDestination];

  return v7;
}

- (unint64_t)hash
{
  idsIdentifier = [(HMDDeviceAddress *)self idsIdentifier];
  v3 = [idsIdentifier hash];

  return v3;
}

- (BOOL)isEquivalentToDeviceAddress:(id)address
{
  if (!address)
  {
    return 0;
  }

  addressCopy = address;
  idsDestination = [(HMDDeviceAddress *)self idsDestination];
  v6 = [HMDDeviceHandle deviceHandleForDestination:idsDestination];

  idsDestination2 = [addressCopy idsDestination];
  v8 = [HMDDeviceHandle deviceHandleForDestination:idsDestination2];

  idsIdentifier = [(HMDDeviceAddress *)self idsIdentifier];
  idsIdentifier2 = [addressCopy idsIdentifier];

  if ([idsIdentifier isEqual:idsIdentifier2])
  {
    v11 = [v6 isEqual:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      idsDestination = [(HMDDeviceAddress *)self idsDestination];
      idsDestination2 = [(HMDDeviceAddress *)v6 idsDestination];
      if ([idsDestination isEqualToString:idsDestination2])
      {
        idsIdentifier = [(HMDDeviceAddress *)self idsIdentifier];
        idsIdentifier2 = [(HMDDeviceAddress *)v6 idsIdentifier];
        v11 = [idsIdentifier isEqual:idsIdentifier2];
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

- (HMDDeviceAddress)initWithIDSIdentifier:(id)identifier idsDestination:(id)destination
{
  identifierCopy = identifier;
  destinationCopy = destination;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = destinationCopy;
  if (!destinationCopy)
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
    objc_storeStrong(&v10->_idsIdentifier, identifier);
    objc_storeStrong(&v11->_idsDestination, destination);
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

+ (HMDDeviceAddress)addressWithIDSIdentifier:(id)identifier idsDestination:(id)destination
{
  v4 = 0;
  if (identifier && destination)
  {
    destinationCopy = destination;
    identifierCopy = identifier;
    v4 = [[self alloc] initWithIDSIdentifier:identifierCopy idsDestination:destinationCopy];
  }

  return v4;
}

@end