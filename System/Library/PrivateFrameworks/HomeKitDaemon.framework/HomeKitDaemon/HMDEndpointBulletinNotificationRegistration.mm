@interface HMDEndpointBulletinNotificationRegistration
- (BOOL)isEqual:(id)equal;
- (HMDEndpointBulletinNotificationRegistration)initWithAccessoryUUID:(id)d endpointID:(id)iD conditions:(id)conditions;
- (HMDEndpointBulletinNotificationRegistration)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDEndpointBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDEndpointBulletinNotificationRegistration;
  attributeDescriptions = [(HMDBulletinNotificationRegistration *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDEndpointBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:accessoryUUID];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  endpointID = [(HMDEndpointBulletinNotificationRegistration *)self endpointID];
  v9 = [v7 initWithName:@"endpointID" value:endpointID];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDEndpointBulletinNotificationRegistration)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDEBNR.ck.a"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDEBNR.ck.e"];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      self = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v17 = 138543874;
        v18 = v12;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded accessoryUUID: %@ endpointID: %@", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      selfCopy = 0;
    }

    else
    {
      conditions = [(HMDBulletinNotificationRegistration *)v5 conditions];
      self = [(HMDEndpointBulletinNotificationRegistration *)self initWithAccessoryUUID:v6 endpointID:v8 conditions:conditions];

      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMDEndpointBulletinNotificationRegistration;
  coderCopy = coder;
  [(HMDBulletinNotificationRegistration *)&v7 encodeWithCoder:coderCopy];
  v5 = [(HMDEndpointBulletinNotificationRegistration *)self accessoryUUID:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMDEBNR.ck.a"];

  endpointID = [(HMDEndpointBulletinNotificationRegistration *)self endpointID];
  [coderCopy encodeObject:endpointID forKey:@"HMDEBNR.ck.e"];
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
  if (v6 && (v13.receiver = self, v13.super_class = HMDEndpointBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v13 isEqual:v6]))
  {
    accessoryUUID = [(HMDEndpointBulletinNotificationRegistration *)self accessoryUUID];
    accessoryUUID2 = [v6 accessoryUUID];
    if ([accessoryUUID isEqual:accessoryUUID2])
    {
      endpointID = [(HMDEndpointBulletinNotificationRegistration *)self endpointID];
      endpointID2 = [v6 endpointID];
      v11 = [endpointID isEqual:endpointID2];
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

- (HMDEndpointBulletinNotificationRegistration)initWithAccessoryUUID:(id)d endpointID:(id)iD conditions:(id)conditions
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
    return +[(HMDEndpointBulletinNotificationRegistration *)v18];
  }

  v11 = conditionsCopy;
  v20.receiver = self;
  v20.super_class = HMDEndpointBulletinNotificationRegistration;
  v12 = [(HMDBulletinNotificationRegistration *)&v20 initWithConditions:conditionsCopy];
  if (v12)
  {
    v13 = [dCopy copy];
    accessoryUUID = v12->_accessoryUUID;
    v12->_accessoryUUID = v13;

    v15 = [iDCopy copy];
    endpointID = v12->_endpointID;
    v12->_endpointID = v15;
  }

  return v12;
}

@end