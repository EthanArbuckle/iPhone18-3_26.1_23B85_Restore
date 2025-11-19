@interface HMDEndpointBulletinNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDEndpointBulletinNotificationRegistration)initWithAccessoryUUID:(id)a3 endpointID:(id)a4 conditions:(id)a5;
- (HMDEndpointBulletinNotificationRegistration)initWithCoder:(id)a3;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDEndpointBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDEndpointBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDEndpointBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:v5];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDEndpointBulletinNotificationRegistration *)self endpointID];
  v9 = [v7 initWithName:@"endpointID" value:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [v3 arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDEndpointBulletinNotificationRegistration)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDEBNR.ck.a"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDEBNR.ck.e"];
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
      v14 = 0;
    }

    else
    {
      v13 = [(HMDBulletinNotificationRegistration *)v5 conditions];
      self = [(HMDEndpointBulletinNotificationRegistration *)self initWithAccessoryUUID:v6 endpointID:v8 conditions:v13];

      v14 = self;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDEndpointBulletinNotificationRegistration;
  v4 = a3;
  [(HMDBulletinNotificationRegistration *)&v7 encodeWithCoder:v4];
  v5 = [(HMDEndpointBulletinNotificationRegistration *)self accessoryUUID:v7.receiver];
  [v4 encodeObject:v5 forKey:@"HMDEBNR.ck.a"];

  v6 = [(HMDEndpointBulletinNotificationRegistration *)self endpointID];
  [v4 encodeObject:v6 forKey:@"HMDEBNR.ck.e"];
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
  if (v6 && (v13.receiver = self, v13.super_class = HMDEndpointBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v13 isEqual:v6]))
  {
    v7 = [(HMDEndpointBulletinNotificationRegistration *)self accessoryUUID];
    v8 = [v6 accessoryUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDEndpointBulletinNotificationRegistration *)self endpointID];
      v10 = [v6 endpointID];
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

- (HMDEndpointBulletinNotificationRegistration)initWithAccessoryUUID:(id)a3 endpointID:(id)a4 conditions:(id)a5
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
    return +[(HMDEndpointBulletinNotificationRegistration *)v18];
  }

  v11 = v10;
  v20.receiver = self;
  v20.super_class = HMDEndpointBulletinNotificationRegistration;
  v12 = [(HMDBulletinNotificationRegistration *)&v20 initWithConditions:v10];
  if (v12)
  {
    v13 = [v8 copy];
    accessoryUUID = v12->_accessoryUUID;
    v12->_accessoryUUID = v13;

    v15 = [v9 copy];
    endpointID = v12->_endpointID;
    v12->_endpointID = v15;
  }

  return v12;
}

@end