@interface HMDAccessoryBulletinNotificationRegistration
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryBulletinNotificationRegistration)initWithAccessoryUUID:(id)d serviceInstanceID:(id)iD characteristicInstanceID:(id)instanceID conditions:(id)conditions;
- (HMDAccessoryBulletinNotificationRegistration)initWithCoder:(id)coder;
- (HMDAccessoryBulletinNotificationRegistration)initWithDictionary:(id)dictionary;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAccessoryBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HMDAccessoryBulletinNotificationRegistration;
  attributeDescriptions = [(HMDBulletinNotificationRegistration *)&v17 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDAccessoryBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:accessoryUUID];
  v18[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  serviceInstanceID = [(HMDAccessoryBulletinNotificationRegistration *)self serviceInstanceID];
  v9 = [v7 initWithName:@"serviceInstanceID" value:serviceInstanceID];
  v18[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicInstanceID = [(HMDAccessoryBulletinNotificationRegistration *)self characteristicInstanceID];
  v12 = [v10 initWithName:@"characteristicInstanceID" value:characteristicInstanceID];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v14 = [attributeDescriptions arrayByAddingObjectsFromArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDAccessoryBulletinNotificationRegistration)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDABNR.ck.au"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDABNR.ck.sii"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDABNR.ck.cii"];
        if (v8)
        {
          conditions = [(HMDBulletinNotificationRegistration *)v5 conditions];
          self = [(HMDAccessoryBulletinNotificationRegistration *)self initWithAccessoryUUID:v6 serviceInstanceID:v7 characteristicInstanceID:v8 conditions:conditions];

          selfCopy = self;
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          self = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            v22 = 138543618;
            v23 = v19;
            v24 = 2112;
            v25 = 0;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded characteristicInstanceID: %@", &v22, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          selfCopy = 0;
        }
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        self = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v22 = 138543618;
          v23 = v16;
          v24 = 2112;
          v25 = 0;
          _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded serviceInstanceID: %@", &v22, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        selfCopy = 0;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      self = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v13;
        v24 = 2112;
        v25 = 0;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded accessoryUUID: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = HMDAccessoryBulletinNotificationRegistration;
  coderCopy = coder;
  [(HMDBulletinNotificationRegistration *)&v8 encodeWithCoder:coderCopy];
  v5 = [(HMDAccessoryBulletinNotificationRegistration *)self accessoryUUID:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"HMDABNR.ck.au"];

  serviceInstanceID = [(HMDAccessoryBulletinNotificationRegistration *)self serviceInstanceID];
  [coderCopy encodeObject:serviceInstanceID forKey:@"HMDABNR.ck.sii"];

  characteristicInstanceID = [(HMDAccessoryBulletinNotificationRegistration *)self characteristicInstanceID];
  [coderCopy encodeObject:characteristicInstanceID forKey:@"HMDABNR.ck.cii"];
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
  if (v6 && (v15.receiver = self, v15.super_class = HMDAccessoryBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v15 isEqual:v6]))
  {
    accessoryUUID = [(HMDAccessoryBulletinNotificationRegistration *)self accessoryUUID];
    accessoryUUID2 = [v6 accessoryUUID];
    if ([accessoryUUID isEqual:accessoryUUID2])
    {
      serviceInstanceID = [(HMDAccessoryBulletinNotificationRegistration *)self serviceInstanceID];
      serviceInstanceID2 = [v6 serviceInstanceID];
      if ([serviceInstanceID isEqual:serviceInstanceID2])
      {
        characteristicInstanceID = [(HMDAccessoryBulletinNotificationRegistration *)self characteristicInstanceID];
        characteristicInstanceID2 = [v6 characteristicInstanceID];
        v13 = [characteristicInstanceID isEqual:characteristicInstanceID2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializedRegistrationForRemoteMessage
{
  v10.receiver = self;
  v10.super_class = HMDAccessoryBulletinNotificationRegistration;
  serializedRegistrationForRemoteMessage = [(HMDBulletinNotificationRegistration *)&v10 serializedRegistrationForRemoteMessage];
  v4 = [serializedRegistrationForRemoteMessage mutableCopy];

  accessoryUUID = [(HMDAccessoryBulletinNotificationRegistration *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"HMDABNR.ck.au"];

  serviceInstanceID = [(HMDAccessoryBulletinNotificationRegistration *)self serviceInstanceID];
  [v4 setObject:serviceInstanceID forKeyedSubscript:@"HMDABNR.ck.sii"];

  characteristicInstanceID = [(HMDAccessoryBulletinNotificationRegistration *)self characteristicInstanceID];
  [v4 setObject:characteristicInstanceID forKeyedSubscript:@"HMDABNR.ck.cii"];

  return v4;
}

- (HMDAccessoryBulletinNotificationRegistration)initWithDictionary:(id)dictionary
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

  v26.receiver = self;
  v26.super_class = HMDAccessoryBulletinNotificationRegistration;
  v7 = [(HMDBulletinNotificationRegistration *)&v26 initWithDictionary:dictionaryCopy];
  if (!v7)
  {
LABEL_5:
    self = v7;
    selfCopy = self;
LABEL_7:

    return selfCopy;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"HMDABNR.ck.au"];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    accessoryUUID = v7->_accessoryUUID;
    v7->_accessoryUUID = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"HMDABNR.ck.sii"];
    v13 = HAPInstanceIDFromValue();
    serviceInstanceID = v7->_serviceInstanceID;
    v7->_serviceInstanceID = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"HMDABNR.ck.cii"];
    v16 = HAPInstanceIDFromValue();
    characteristicInstanceID = v7->_characteristicInstanceID;
    v7->_characteristicInstanceID = v16;

    goto LABEL_5;
  }

  v20 = _HMFPreconditionFailure();
  return [(HMDAccessoryBulletinNotificationRegistration *)v20 initWithAccessoryUUID:v21 serviceInstanceID:v22 characteristicInstanceID:v23 conditions:v24, v25];
}

- (HMDAccessoryBulletinNotificationRegistration)initWithAccessoryUUID:(id)d serviceInstanceID:(id)iD characteristicInstanceID:(id)instanceID conditions:(id)conditions
{
  dCopy = d;
  iDCopy = iD;
  instanceIDCopy = instanceID;
  conditionsCopy = conditions;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!iDCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!instanceIDCopy)
  {
LABEL_9:
    v25 = _HMFPreconditionFailure();
    return +[(HMDAccessoryBulletinNotificationRegistration *)v25];
  }

  v14 = conditionsCopy;
  v27.receiver = self;
  v27.super_class = HMDAccessoryBulletinNotificationRegistration;
  v15 = [(HMDBulletinNotificationRegistration *)&v27 initWithConditions:conditionsCopy];
  if (v15)
  {
    v16 = [dCopy copy];
    accessoryUUID = v15->_accessoryUUID;
    v15->_accessoryUUID = v16;

    v18 = [iDCopy copy];
    v19 = HAPInstanceIDFromValue();
    serviceInstanceID = v15->_serviceInstanceID;
    v15->_serviceInstanceID = v19;

    v21 = [instanceIDCopy copy];
    v22 = HAPInstanceIDFromValue();
    characteristicInstanceID = v15->_characteristicInstanceID;
    v15->_characteristicInstanceID = v22;
  }

  return v15;
}

@end