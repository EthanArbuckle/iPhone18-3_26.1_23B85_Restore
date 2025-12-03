@interface HMDServiceBulletinNotificationRegistration
- (BOOL)isEqual:(id)equal;
- (HMDServiceBulletinNotificationRegistration)initWithAccessoryUUID:(id)d serviceInstanceID:(id)iD conditions:(id)conditions;
- (HMDServiceBulletinNotificationRegistration)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDServiceBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDServiceBulletinNotificationRegistration;
  attributeDescriptions = [(HMDBulletinNotificationRegistration *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDServiceBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:accessoryUUID];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  serviceInstanceID = [(HMDServiceBulletinNotificationRegistration *)self serviceInstanceID];
  v9 = [v7 initWithName:@"serviceInstanceID" value:serviceInstanceID];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDServiceBulletinNotificationRegistration)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDSBNR.ck.au"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDSBNR.ck.sii"];
      if (v7)
      {
        conditions = [(HMDBulletinNotificationRegistration *)v5 conditions];
        self = [(HMDServiceBulletinNotificationRegistration *)self initWithAccessoryUUID:v6 serviceInstanceID:v7 conditions:conditions];

        selfCopy = self;
      }

      else
      {
        v13 = objc_autoreleasePoolPush();
        self = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = HMFGetLogIdentifier();
          v18 = 138543618;
          v19 = v15;
          v20 = 2112;
          v21 = 0;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded serviceInstanceID: %@", &v18, 0x16u);
        }

        objc_autoreleasePoolPop(v13);
        selfCopy = 0;
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      self = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v12;
        v20 = 2112;
        v21 = 0;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded accessoryUUID: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMDServiceBulletinNotificationRegistration;
  coderCopy = coder;
  [(HMDBulletinNotificationRegistration *)&v7 encodeWithCoder:coderCopy];
  v5 = [(HMDServiceBulletinNotificationRegistration *)self accessoryUUID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMDSBNR.ck.au"];

  serviceInstanceID = [(HMDServiceBulletinNotificationRegistration *)self serviceInstanceID];
  [coderCopy encodeObject:serviceInstanceID forKey:@"HMDSBNR.ck.sii"];
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
  if (v6 && (v13.receiver = self, v13.super_class = HMDServiceBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v13 isEqual:v6]))
  {
    accessoryUUID = [(HMDServiceBulletinNotificationRegistration *)self accessoryUUID];
    accessoryUUID2 = [v6 accessoryUUID];
    if ([accessoryUUID isEqual:accessoryUUID2])
    {
      serviceInstanceID = [(HMDServiceBulletinNotificationRegistration *)self serviceInstanceID];
      serviceInstanceID2 = [v6 serviceInstanceID];
      v11 = [serviceInstanceID isEqual:serviceInstanceID2];
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

- (HMDServiceBulletinNotificationRegistration)initWithAccessoryUUID:(id)d serviceInstanceID:(id)iD conditions:(id)conditions
{
  dCopy = d;
  iDCopy = iD;
  conditionsCopy = conditions;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!iDCopy)
  {
LABEL_7:
    v18 = _HMFPreconditionFailure();
    return +[(HMDServiceBulletinNotificationRegistration *)v18];
  }

  v11 = conditionsCopy;
  v20.receiver = self;
  v20.super_class = HMDServiceBulletinNotificationRegistration;
  v12 = [(HMDBulletinNotificationRegistration *)&v20 initWithConditions:conditionsCopy];
  if (v12)
  {
    v13 = [dCopy copy];
    accessoryUUID = v12->_accessoryUUID;
    v12->_accessoryUUID = v13;

    v15 = [iDCopy copy];
    serviceInstanceID = v12->_serviceInstanceID;
    v12->_serviceInstanceID = v15;
  }

  return v12;
}

@end