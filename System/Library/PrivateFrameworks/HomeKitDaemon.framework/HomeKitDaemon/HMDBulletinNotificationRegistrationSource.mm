@interface HMDBulletinNotificationRegistrationSource
+ (BOOL)doesTypeMatch:(id)match against:(id)against;
- (BOOL)isEqual:(id)equal;
- (HMDBulletinNotificationRegistrationSource)initWithCoder:(id)coder;
- (HMDBulletinNotificationRegistrationSource)initWithDictionary:(id)dictionary;
- (HMDBulletinNotificationRegistrationSource)initWithUserUUID:(id)d deviceAddress:(id)address;
- (HMDDevice)device;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDBulletinNotificationRegistrationSource

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  userUUID = [(HMDBulletinNotificationRegistrationSource *)self userUUID];
  v5 = [v3 initWithName:@"userUUID" value:userUUID];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  deviceAddress = [(HMDBulletinNotificationRegistrationSource *)self deviceAddress];
  v8 = [v6 initWithName:@"deviceAddress" value:deviceAddress];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDBulletinNotificationRegistrationSource)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDBNRS.ck.dii"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDBNRS.ck.did"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDBNRS.ck.uu"];
  v8 = v7;
  if (!v5)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = 0;
    v15 = "%{public}@Could not initialize from decoded deviceIdsIdentifier: %@";
LABEL_11:
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, v15, &v18, 0x16u);

    goto LABEL_12;
  }

  if (!v6)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v14;
    v20 = 2112;
    v21 = 0;
    v15 = "%{public}@Could not initialize from decoded deviceIdsDestination: %@";
    goto LABEL_11;
  }

  if (!v7)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = 0;
      v15 = "%{public}@Could not initialize from decoded userUUID: %@";
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v12);
    v11 = 0;
    goto LABEL_13;
  }

  v9 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:v5 idsDestination:v6];
  selfCopy3 = [(HMDBulletinNotificationRegistrationSource *)self initWithUserUUID:v8 deviceAddress:v9];

  v11 = selfCopy3;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceAddress = [(HMDBulletinNotificationRegistrationSource *)self deviceAddress];
  idsIdentifier = [deviceAddress idsIdentifier];
  [coderCopy encodeObject:idsIdentifier forKey:@"HMDBNRS.ck.dii"];

  deviceAddress2 = [(HMDBulletinNotificationRegistrationSource *)self deviceAddress];
  idsDestination = [deviceAddress2 idsDestination];
  [coderCopy encodeObject:idsDestination forKey:@"HMDBNRS.ck.did"];

  userUUID = [(HMDBulletinNotificationRegistrationSource *)self userUUID];
  [coderCopy encodeObject:userUUID forKey:@"HMDBNRS.ck.uu"];
}

- (unint64_t)hash
{
  deviceAddress = [(HMDBulletinNotificationRegistrationSource *)self deviceAddress];
  v3 = [deviceAddress hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
    deviceAddress = [(HMDBulletinNotificationRegistrationSource *)self deviceAddress];
    deviceAddress2 = [v6 deviceAddress];
    if ([deviceAddress isEqual:deviceAddress2])
    {
      userUUID = [(HMDBulletinNotificationRegistrationSource *)self userUUID];
      userUUID2 = [v6 userUUID];
      v11 = [userUUID isEqual:userUUID2];
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

  return v11;
}

- (id)serializedRegistrationForRemoteMessage
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"HMDBNRS.reg.type";
  type = [objc_opt_class() type];
  v16[0] = type;
  v15[1] = @"HMDBNRS.ck.dii";
  deviceAddress = [(HMDBulletinNotificationRegistrationSource *)self deviceAddress];
  idsIdentifier = [deviceAddress idsIdentifier];
  uUIDString = [idsIdentifier UUIDString];
  v16[1] = uUIDString;
  v15[2] = @"HMDBNRS.ck.did";
  deviceAddress2 = [(HMDBulletinNotificationRegistrationSource *)self deviceAddress];
  idsDestination = [deviceAddress2 idsDestination];
  v16[2] = idsDestination;
  v15[3] = @"HMDBNRS.ck.uu";
  userUUID = [(HMDBulletinNotificationRegistrationSource *)self userUUID];
  uUIDString2 = [userUUID UUIDString];
  v16[3] = uUIDString2;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v12 = [v11 mutableCopy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMDBulletinNotificationRegistrationSource)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"HMDBNRS.ck.dii"];
  if (!v5)
  {
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"HMDBNRS.ck.did"];
    if (!v8)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v20;
        v28 = 2112;
        v29 = 0;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded deviceIdsDestination: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v14 = 0;
      goto LABEL_17;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"HMDBNRS.ck.uu"];
    if (v9)
    {
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
      if (v11)
      {
        v12 = [[HMDDeviceAddress alloc] initWithIDSIdentifier:v7 idsDestination:v8];
        selfCopy3 = [(HMDBulletinNotificationRegistrationSource *)self initWithUserUUID:v11 deviceAddress:v12];

        v14 = selfCopy3;
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v26 = 138543618;
          v27 = v23;
          v28 = 2112;
          v29 = 0;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded userUUID: %@", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v14 = 0;
      }

LABEL_17:
      goto LABEL_18;
    }

LABEL_20:
    _HMFPreconditionFailure();
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v26 = 138543618;
    v27 = v17;
    v28 = 2112;
    v29 = 0;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded deviceIdsIdentifier: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v14 = 0;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDDevice)device
{
  v3 = [HMDDevice alloc];
  deviceAddress = [(HMDBulletinNotificationRegistrationSource *)self deviceAddress];
  v5 = [(HMDDevice *)v3 initWithDeviceAddress:deviceAddress];

  return v5;
}

- (HMDBulletinNotificationRegistrationSource)initWithUserUUID:(id)d deviceAddress:(id)address
{
  dCopy = d;
  addressCopy = address;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = addressCopy;
  if (!addressCopy)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return [(HMDBulletinNotificationRegistrationSource *)v15 doesTypeMatch:v16 against:v17, v18];
  }

  v19.receiver = self;
  v19.super_class = HMDBulletinNotificationRegistrationSource;
  v9 = [(HMDBulletinNotificationRegistrationSource *)&v19 init];
  if (v9)
  {
    v10 = [dCopy copy];
    userUUID = v9->_userUUID;
    v9->_userUUID = v10;

    v12 = [v8 copy];
    deviceAddress = v9->_deviceAddress;
    v9->_deviceAddress = v12;
  }

  return v9;
}

+ (BOOL)doesTypeMatch:(id)match against:(id)against
{
  againstCopy = against;
  v6 = [match objectForKeyedSubscript:@"HMDBNRS.reg.type"];
  v7 = [v6 isEqualToString:againstCopy];

  return v7;
}

@end