@interface HMDMatterBulletinNotificationRegistration
- (BOOL)isEqual:(id)a3;
- (HMDMatterBulletinNotificationRegistration)initWithCoder:(id)a3;
- (HMDMatterBulletinNotificationRegistration)initWithDictionary:(id)a3 withHome:(id)a4;
- (HMDMatterBulletinNotificationRegistration)initWithMatterPaths:(id)a3 conditions:(id)a4;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDMatterBulletinNotificationRegistration

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDMatterBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDMatterBulletinNotificationRegistration *)self matterPaths];
  v6 = [v4 initWithName:@"matterPaths" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDMatterBulletinNotificationRegistration)initWithCoder:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDBulletinNotificationRegistration alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDMBNR.ck.mp"];
    if (v6)
    {
      v7 = [(HMDBulletinNotificationRegistration *)v5 conditions];
      self = [(HMDMatterBulletinNotificationRegistration *)self initWithMatterPaths:v6 conditions:v7];

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
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded matterPaths: %@", &v14, 0x16u);
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
  v6.super_class = HMDMatterBulletinNotificationRegistration;
  v4 = a3;
  [(HMDBulletinNotificationRegistration *)&v6 encodeWithCoder:v4];
  v5 = [(HMDMatterBulletinNotificationRegistration *)self matterPaths:v6.receiver];
  [v4 encodeObject:v5 forKey:@"HMDMBNR.ck.mp"];
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
  if (v6 && (v11.receiver = self, v11.super_class = HMDMatterBulletinNotificationRegistration, [(HMDBulletinNotificationRegistration *)&v11 isEqual:v6]))
  {
    v7 = [(HMDMatterBulletinNotificationRegistration *)self matterPaths];
    v8 = [v6 matterPaths];
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
  v8.super_class = HMDMatterBulletinNotificationRegistration;
  v3 = [(HMDBulletinNotificationRegistration *)&v8 serializedRegistrationForRemoteMessage];
  v4 = [v3 mutableCopy];

  v5 = [(HMDMatterBulletinNotificationRegistration *)self matterPaths];
  v6 = [v5 na_map:&__block_literal_global_101340];

  [v4 setObject:v6 forKeyedSubscript:@"HMDMBNR.ck.mp"];

  return v4;
}

id __83__HMDMatterBulletinNotificationRegistration_serializedRegistrationForRemoteMessage__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = a2;
  v4 = [v2 dictionary];
  v5 = [v3 accessory];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];
  [v4 setObject:v7 forKeyedSubscript:@"HMDMBNR.ck.auuid"];

  v8 = [v3 endpointID];
  [v4 setObject:v8 forKeyedSubscript:@"HMDMBNR.ck.eid"];

  v9 = [v3 clusterID];
  [v4 setObject:v9 forKeyedSubscript:@"HMDMBNR.ck.cid"];

  v10 = [v3 attributeID];
  [v4 setObject:v10 forKeyedSubscript:@"HMDMBNR.ck.aid"];

  v11 = [v3 eventID];

  [v4 setObject:v11 forKeyedSubscript:@"HMDMBNR.ck.evid"];

  return v4;
}

- (HMDMatterBulletinNotificationRegistration)initWithDictionary:(id)a3 withHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [objc_opt_class() type];
  LODWORD(v8) = [v8 doesTypeMatch:v6 against:v9];

  if (v8)
  {
    v20.receiver = self;
    v20.super_class = HMDMatterBulletinNotificationRegistration;
    v10 = [(HMDBulletinNotificationRegistration *)&v20 initWithDictionary:v6];
    if (v10)
    {
      v11 = [v6 hmf_arrayForKey:@"HMDMBNR.ck.mp"];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __73__HMDMatterBulletinNotificationRegistration_initWithDictionary_withHome___block_invoke;
      v17[3] = &unk_278677E28;
      v18 = v7;
      v12 = v10;
      v19 = v12;
      v13 = [v11 na_map:v17];
      matterPaths = v12->_matterPaths;
      v12->_matterPaths = v13;
    }

    self = v10;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id __73__HMDMatterBulletinNotificationRegistration_initWithDictionary_withHome___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmf_stringForKey:@"HMDMBNR.ck.auuid"];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  v6 = [*(a1 + 32) accessoryWithUUID:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v3 hmf_numberForKey:@"HMDMBNR.ck.eid"];
    v10 = [v3 hmf_numberForKey:@"HMDMBNR.ck.cid"];
    v11 = [v3 hmf_numberForKey:@"HMDMBNR.ck.aid"];
    v12 = [v3 hmf_numberForKey:@"HMDMBNR.ck.evid"];
    v13 = v12;
    if (v11)
    {
      v14 = [HMDMatterPath PathWithAttributeID:v11 endpointID:v9 clusterID:v10 accessory:v8];
    }

    else
    {
      if (!v12)
      {
        v19 = 0;
        goto LABEL_13;
      }

      v14 = [HMDMatterPath PathWithEventID:v12 endpointID:v9 clusterID:v10 accessory:v8];
    }

    v19 = v14;
LABEL_13:

    goto LABEL_14;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 40);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v22 = 138543618;
    v23 = v18;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not find matter accessory for matter path: %@", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (HMDMatterBulletinNotificationRegistration)initWithMatterPaths:(id)a3 conditions:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v8;
    v15.receiver = self;
    v15.super_class = HMDMatterBulletinNotificationRegistration;
    v10 = [(HMDBulletinNotificationRegistration *)&v15 initWithConditions:v8];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_matterPaths, a3);
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDMatterBulletinNotificationRegistration *)v13];
  }
}

@end