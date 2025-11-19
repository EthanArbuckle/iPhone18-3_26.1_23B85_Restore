@interface HMDAccessoryBulletinNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryBulletinNotificationRegistration)initWithAccessoryUUID:(id)a3 serviceInstanceID:(id)a4 characteristicInstanceID:(id)a5 conditions:(id)a6;
- (HMDAccessoryBulletinNotificationRegistration)initWithCoder:(id)a3;
- (HMDAccessoryBulletinNotificationRegistration)initWithDictionary:(id)a3;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAccessoryBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HMDAccessoryBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v17 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDAccessoryBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:v5];
  v18[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDAccessoryBulletinNotificationRegistration *)self serviceInstanceID];
  v9 = [v7 initWithName:@"serviceInstanceID" value:v8];
  v18[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDAccessoryBulletinNotificationRegistration *)self characteristicInstanceID];
  v12 = [v10 initWithName:@"characteristicInstanceID" value:v11];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v14 = [v3 arrayByAddingObjectsFromArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDAccessoryBulletinNotificationRegistration)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDABNR.ck.au"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDABNR.ck.sii"];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDABNR.ck.cii"];
        if (v8)
        {
          v9 = [(HMDBulletinNotificationRegistration *)v5 conditions];
          self = [(HMDAccessoryBulletinNotificationRegistration *)self initWithAccessoryUUID:v6 serviceInstanceID:v7 characteristicInstanceID:v8 conditions:v9];

          v10 = self;
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
          v10 = 0;
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
        v10 = 0;
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
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = HMDAccessoryBulletinNotificationRegistration;
  v4 = a3;
  [(HMDBulletinNotificationRegistration *)&v8 encodeWithCoder:v4];
  v5 = [(HMDAccessoryBulletinNotificationRegistration *)self accessoryUUID:v8.receiver];
  [v4 encodeObject:v5 forKey:@"HMDABNR.ck.au"];

  v6 = [(HMDAccessoryBulletinNotificationRegistration *)self serviceInstanceID];
  [v4 encodeObject:v6 forKey:@"HMDABNR.ck.sii"];

  v7 = [(HMDAccessoryBulletinNotificationRegistration *)self characteristicInstanceID];
  [v4 encodeObject:v7 forKey:@"HMDABNR.ck.cii"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  if (v6 && (v15.receiver = self, v15.super_class = HMDAccessoryBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v15 isEqual:v6]))
  {
    v7 = [(HMDAccessoryBulletinNotificationRegistration *)self accessoryUUID];
    v8 = [v6 accessoryUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDAccessoryBulletinNotificationRegistration *)self serviceInstanceID];
      v10 = [v6 serviceInstanceID];
      if ([v9 isEqual:v10])
      {
        v11 = [(HMDAccessoryBulletinNotificationRegistration *)self characteristicInstanceID];
        v12 = [v6 characteristicInstanceID];
        v13 = [v11 isEqual:v12];
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
  v3 = [(HMDBulletinNotificationRegistration *)&v10 serializedRegistrationForRemoteMessage];
  v4 = [v3 mutableCopy];

  v5 = [(HMDAccessoryBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:@"HMDABNR.ck.au"];

  v7 = [(HMDAccessoryBulletinNotificationRegistration *)self serviceInstanceID];
  [v4 setObject:v7 forKeyedSubscript:@"HMDABNR.ck.sii"];

  v8 = [(HMDAccessoryBulletinNotificationRegistration *)self characteristicInstanceID];
  [v4 setObject:v8 forKeyedSubscript:@"HMDABNR.ck.cii"];

  return v4;
}

- (HMDAccessoryBulletinNotificationRegistration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:v4 against:v6];

  if (!v5)
  {
    v18 = 0;
    goto LABEL_7;
  }

  v26.receiver = self;
  v26.super_class = HMDAccessoryBulletinNotificationRegistration;
  v7 = [(HMDBulletinNotificationRegistration *)&v26 initWithDictionary:v4];
  if (!v7)
  {
LABEL_5:
    self = v7;
    v18 = self;
LABEL_7:

    return v18;
  }

  v8 = [v4 objectForKeyedSubscript:@"HMDABNR.ck.au"];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    accessoryUUID = v7->_accessoryUUID;
    v7->_accessoryUUID = v10;

    v12 = [v4 objectForKeyedSubscript:@"HMDABNR.ck.sii"];
    v13 = HAPInstanceIDFromValue();
    serviceInstanceID = v7->_serviceInstanceID;
    v7->_serviceInstanceID = v13;

    v15 = [v4 objectForKeyedSubscript:@"HMDABNR.ck.cii"];
    v16 = HAPInstanceIDFromValue();
    characteristicInstanceID = v7->_characteristicInstanceID;
    v7->_characteristicInstanceID = v16;

    goto LABEL_5;
  }

  v20 = _HMFPreconditionFailure();
  return [(HMDAccessoryBulletinNotificationRegistration *)v20 initWithAccessoryUUID:v21 serviceInstanceID:v22 characteristicInstanceID:v23 conditions:v24, v25];
}

- (HMDAccessoryBulletinNotificationRegistration)initWithAccessoryUUID:(id)a3 serviceInstanceID:(id)a4 characteristicInstanceID:(id)a5 conditions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v11)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    v25 = _HMFPreconditionFailure();
    return +[(HMDAccessoryBulletinNotificationRegistration *)v25];
  }

  v14 = v13;
  v27.receiver = self;
  v27.super_class = HMDAccessoryBulletinNotificationRegistration;
  v15 = [(HMDBulletinNotificationRegistration *)&v27 initWithConditions:v13];
  if (v15)
  {
    v16 = [v10 copy];
    accessoryUUID = v15->_accessoryUUID;
    v15->_accessoryUUID = v16;

    v18 = [v11 copy];
    v19 = HAPInstanceIDFromValue();
    serviceInstanceID = v15->_serviceInstanceID;
    v15->_serviceInstanceID = v19;

    v21 = [v12 copy];
    v22 = HAPInstanceIDFromValue();
    characteristicInstanceID = v15->_characteristicInstanceID;
    v15->_characteristicInstanceID = v22;
  }

  return v15;
}

@end