@interface HMDServiceBulletinNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDServiceBulletinNotificationRegistration)initWithAccessoryUUID:(id)a3 serviceInstanceID:(id)a4 conditions:(id)a5;
- (HMDServiceBulletinNotificationRegistration)initWithCoder:(id)a3;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDServiceBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDServiceBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDServiceBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:v5];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDServiceBulletinNotificationRegistration *)self serviceInstanceID];
  v9 = [v7 initWithName:@"serviceInstanceID" value:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [v3 arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDServiceBulletinNotificationRegistration)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDSBNR.ck.au"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDSBNR.ck.sii"];
      if (v7)
      {
        v8 = [(HMDBulletinNotificationRegistration *)v5 conditions];
        self = [(HMDServiceBulletinNotificationRegistration *)self initWithAccessoryUUID:v6 serviceInstanceID:v7 conditions:v8];

        v9 = self;
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
        v9 = 0;
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
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDServiceBulletinNotificationRegistration;
  v4 = a3;
  [(HMDBulletinNotificationRegistration *)&v7 encodeWithCoder:v4];
  v5 = [(HMDServiceBulletinNotificationRegistration *)self accessoryUUID:v7.receiver];
  [v4 encodeObject:v5 forKey:@"HMDSBNR.ck.au"];

  v6 = [(HMDServiceBulletinNotificationRegistration *)self serviceInstanceID];
  [v4 encodeObject:v6 forKey:@"HMDSBNR.ck.sii"];
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
  if (v6 && (v13.receiver = self, v13.super_class = HMDServiceBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v13 isEqual:v6]))
  {
    v7 = [(HMDServiceBulletinNotificationRegistration *)self accessoryUUID];
    v8 = [v6 accessoryUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDServiceBulletinNotificationRegistration *)self serviceInstanceID];
      v10 = [v6 serviceInstanceID];
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

  return v11;
}

- (HMDServiceBulletinNotificationRegistration)initWithAccessoryUUID:(id)a3 serviceInstanceID:(id)a4 conditions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v9)
  {
LABEL_7:
    v18 = _HMFPreconditionFailure();
    return +[(HMDServiceBulletinNotificationRegistration *)v18];
  }

  v11 = v10;
  v20.receiver = self;
  v20.super_class = HMDServiceBulletinNotificationRegistration;
  v12 = [(HMDBulletinNotificationRegistration *)&v20 initWithConditions:v10];
  if (v12)
  {
    v13 = [v8 copy];
    accessoryUUID = v12->_accessoryUUID;
    v12->_accessoryUUID = v13;

    v15 = [v9 copy];
    serviceInstanceID = v12->_serviceInstanceID;
    v12->_serviceInstanceID = v15;
  }

  return v12;
}

@end