@interface HMDCameraAccessModeBulletinNotificationRegistration
- (BOOL)isEqual:(id)equal;
- (HMDCameraAccessModeBulletinNotificationRegistration)initWithAccessoryUUID:(id)d conditions:(id)conditions;
- (HMDCameraAccessModeBulletinNotificationRegistration)initWithCoder:(id)coder;
- (HMDCameraAccessModeBulletinNotificationRegistration)initWithDictionary:(id)dictionary;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraAccessModeBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDCameraAccessModeBulletinNotificationRegistration;
  attributeDescriptions = [(HMDBulletinNotificationRegistration *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDCameraAccessModeBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:accessoryUUID];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDCameraAccessModeBulletinNotificationRegistration)initWithCoder:(id)coder
{
  v18 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDCAMBNR.ck.au"];
    if (v6)
    {
      conditions = [(HMDBulletinNotificationRegistration *)v5 conditions];
      self = [(HMDCameraAccessModeBulletinNotificationRegistration *)self initWithAccessoryUUID:v6 conditions:conditions];

      selfCopy = self;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      self = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = 0;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded accessoryUUID: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDCameraAccessModeBulletinNotificationRegistration;
  coderCopy = coder;
  [(HMDBulletinNotificationRegistration *)&v6 encodeWithCoder:coderCopy];
  v5 = [(HMDCameraAccessModeBulletinNotificationRegistration *)self accessoryUUID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMDCAMBNR.ck.au"];
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
  if (v6 && (v11.receiver = self, v11.super_class = HMDCameraAccessModeBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v11 isEqual:v6]))
  {
    accessoryUUID = [(HMDCameraAccessModeBulletinNotificationRegistration *)self accessoryUUID];
    accessoryUUID2 = [v6 accessoryUUID];
    v9 = [accessoryUUID isEqual:accessoryUUID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializedRegistrationForRemoteMessage
{
  v8.receiver = self;
  v8.super_class = HMDCameraAccessModeBulletinNotificationRegistration;
  serializedRegistrationForRemoteMessage = [(HMDBulletinNotificationRegistration *)&v8 serializedRegistrationForRemoteMessage];
  v4 = [serializedRegistrationForRemoteMessage mutableCopy];

  accessoryUUID = [(HMDCameraAccessModeBulletinNotificationRegistration *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"HMDCAMBNR.ck.au"];

  return v4;
}

- (HMDCameraAccessModeBulletinNotificationRegistration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  type = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:dictionaryCopy against:type];

  if (!v5)
  {
    selfCopy = 0;
    goto LABEL_7;
  }

  v18.receiver = self;
  v18.super_class = HMDCameraAccessModeBulletinNotificationRegistration;
  v7 = [(HMDBulletinNotificationRegistration *)&v18 initWithDictionary:dictionaryCopy];
  if (!v7)
  {
LABEL_5:
    self = v7;
    selfCopy = self;
LABEL_7:

    return selfCopy;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"HMDCAMBNR.ck.au"];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    accessoryUUID = v7->_accessoryUUID;
    v7->_accessoryUUID = v10;

    goto LABEL_5;
  }

  v14 = _HMFPreconditionFailure();
  return [(HMDCameraAccessModeBulletinNotificationRegistration *)v14 initWithAccessoryUUID:v15 conditions:v16, v17];
}

- (HMDCameraAccessModeBulletinNotificationRegistration)initWithAccessoryUUID:(id)d conditions:(id)conditions
{
  dCopy = d;
  conditionsCopy = conditions;
  if (dCopy)
  {
    v8 = conditionsCopy;
    v15.receiver = self;
    v15.super_class = HMDCameraAccessModeBulletinNotificationRegistration;
    v9 = [(HMDBulletinNotificationRegistration *)&v15 initWithConditions:conditionsCopy];
    if (v9)
    {
      v10 = [dCopy copy];
      accessoryUUID = v9->_accessoryUUID;
      v9->_accessoryUUID = v10;
    }

    return v9;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDCameraAccessModeBulletinNotificationRegistration *)v13];
  }
}

@end