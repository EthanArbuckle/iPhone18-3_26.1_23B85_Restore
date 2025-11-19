@interface HMDCameraReachabilityBulletinNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDCameraReachabilityBulletinNotificationRegistration)initWithAccessoryUUID:(id)a3 conditions:(id)a4;
- (HMDCameraReachabilityBulletinNotificationRegistration)initWithCoder:(id)a3;
- (HMDCameraReachabilityBulletinNotificationRegistration)initWithDictionary:(id)a3;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraReachabilityBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDCameraReachabilityBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDCameraReachabilityBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDCameraReachabilityBulletinNotificationRegistration)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDCRBNR.ck.au"];
    if (v6)
    {
      v7 = [(HMDBulletinNotificationRegistration *)v5 conditions];
      self = [(HMDCameraReachabilityBulletinNotificationRegistration *)self initWithAccessoryUUID:v6 conditions:v7];

      v8 = self;
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
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDCameraReachabilityBulletinNotificationRegistration;
  v4 = a3;
  [(HMDBulletinNotificationRegistration *)&v6 encodeWithCoder:v4];
  v5 = [(HMDCameraReachabilityBulletinNotificationRegistration *)self accessoryUUID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HMDCRBNR.ck.au"];
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
  if (v6 && (v11.receiver = self, v11.super_class = HMDCameraReachabilityBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v11 isEqual:v6]))
  {
    v7 = [(HMDCameraReachabilityBulletinNotificationRegistration *)self accessoryUUID];
    v8 = [v6 accessoryUUID];
    v9 = [v7 isEqual:v8];
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
  v8.super_class = HMDCameraReachabilityBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v8 serializedRegistrationForRemoteMessage];
  v4 = [v3 mutableCopy];

  v5 = [(HMDCameraReachabilityBulletinNotificationRegistration *)self accessoryUUID];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:@"HMDCRBNR.ck.au"];

  return v4;
}

- (HMDCameraReachabilityBulletinNotificationRegistration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:v4 against:v6];

  if (!v5)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v18.receiver = self;
  v18.super_class = HMDCameraReachabilityBulletinNotificationRegistration;
  v7 = [(HMDBulletinNotificationRegistration *)&v18 initWithDictionary:v4];
  if (!v7)
  {
LABEL_5:
    self = v7;
    v12 = self;
LABEL_7:

    return v12;
  }

  v8 = [v4 objectForKeyedSubscript:@"HMDCRBNR.ck.au"];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    accessoryUUID = v7->_accessoryUUID;
    v7->_accessoryUUID = v10;

    goto LABEL_5;
  }

  v14 = _HMFPreconditionFailure();
  return [(HMDCameraReachabilityBulletinNotificationRegistration *)v14 initWithAccessoryUUID:v15 conditions:v16, v17];
}

- (HMDCameraReachabilityBulletinNotificationRegistration)initWithAccessoryUUID:(id)a3 conditions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v15.receiver = self;
    v15.super_class = HMDCameraReachabilityBulletinNotificationRegistration;
    v9 = [(HMDBulletinNotificationRegistration *)&v15 initWithConditions:v7];
    if (v9)
    {
      v10 = [v6 copy];
      accessoryUUID = v9->_accessoryUUID;
      v9->_accessoryUUID = v10;
    }

    return v9;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDCameraReachabilityBulletinNotificationRegistration *)v13];
  }
}

@end