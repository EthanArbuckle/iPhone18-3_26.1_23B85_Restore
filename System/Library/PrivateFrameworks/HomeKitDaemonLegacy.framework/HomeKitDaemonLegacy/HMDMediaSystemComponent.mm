@interface HMDMediaSystemComponent
+ (id)accessoryForMediaSystemComponentWithDictionary:(id)a3 home:(id)a4;
+ (id)logCategory;
+ (id)mediaSystemComponentWithDictionary:(id)a3 home:(id)a4;
- (HMDAccessory)accessory;
- (HMDMediaProfile)mediaProfile;
- (HMDMediaSystemComponent)initWithCoder:(id)a3;
- (HMDMediaSystemComponent)initWithUUID:(id)a3 accessory:(id)a4 role:(id)a5;
- (HMMediaSystemRole)role;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
- (void)setRole:(id)a3;
@end

@implementation HMDMediaSystemComponent

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaSystemComponent *)self uuid];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD2430]];

  v6 = [(HMDMediaSystemComponent *)self accessory];
  [v4 encodeConditionalObject:v6 forKey:@"accessory"];

  v7 = [(HMDMediaSystemComponent *)self role];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CD2428]];
}

- (HMDMediaSystemComponent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2430]];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2428]];

  v8 = [(HMDMediaSystemComponent *)self initWithUUID:v5 accessory:v6 role:v7];
  return v8;
}

- (void)setRole:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  role = self->_role;
  self->_role = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaSystemRole)role
{
  os_unfair_lock_lock_with_options();
  v3 = self->_role;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMDMediaProfile)mediaProfile
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = WeakRetained;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 mediaProfile];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)serialize
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDMediaSystemComponent *)self uuid];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD2430]];

  v6 = [(HMDMediaSystemComponent *)self accessory];
  v7 = [v6 uuid];
  v8 = [v7 UUIDString];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  v9 = [(HMDMediaSystemComponent *)self role];
  v10 = [v9 serialize];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277CD2428]];

  v11 = [v3 copy];

  return v11;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaSystemComponent *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)attributeDescriptions
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMediaSystemComponent *)self uuid];
  v5 = [v3 initWithName:@"uuid" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDMediaSystemComponent *)self accessory];
  v8 = [v7 uuid];
  v9 = [v6 initWithName:@"accessoryUUID" value:v8];
  v17[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDMediaSystemComponent *)self role];
  [v11 type];
  v12 = HMMediaSystemRoleTypeAsString();
  v13 = [v10 initWithName:@"roleType" value:v12];
  v17[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (HMDMediaSystemComponent)initWithUUID:(id)a3 accessory:(id)a4 role:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDMediaSystemComponent;
  v12 = [(HMDMediaSystemComponent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, a3);
    objc_storeWeak(&v13->_accessory, v10);
    objc_storeStrong(&v13->_role, a5);
  }

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_106566 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_106566, &__block_literal_global_106567);
  }

  v3 = logCategory__hmf_once_v5_106568;

  return v3;
}

uint64_t __38__HMDMediaSystemComponent_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_106568;
  logCategory__hmf_once_v5_106568 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)mediaSystemComponentWithDictionary:(id)a3 home:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 hmf_UUIDForKey:*MEMORY[0x277CD2430]];
  if (v7)
  {
    v8 = [HMDMediaSystemComponent accessoryForMediaSystemComponentWithDictionary:v5 home:v6];
    if (v8)
    {
      v9 = [v5 hmf_dictionaryForKey:*MEMORY[0x277CD2428]];
      v10 = [objc_alloc(MEMORY[0x277CD1C10]) initWithDictionary:v9];
      if (v10)
      {
        v11 = [[HMDMediaSystemComponent alloc] initWithUUID:v7 accessory:v8 role:v10];
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          v23 = 138543618;
          v24 = v20;
          v25 = 2112;
          v26 = v5;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Role entry is nil - cannot create mediaSystemComponent with %@", &v23, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        v11 = 0;
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v23 = 138543874;
        v24 = v17;
        v25 = 2112;
        v26 = v5;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@accessory cannot be looked up - cannot create mediaSystemComponent with %@in home %@", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v11 = 0;
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v14;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@mediaComponentUUID is nil - cannot create mediaSystemComponent with %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)accessoryForMediaSystemComponentWithDictionary:(id)a3 home:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
  if (v7)
  {
    v8 = [v6 accessories];
    v9 = [v8 hmf_firstObjectWithUUID:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@accessoryUUID is nil transaction dictionary - cannot find accessory with %@in home %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

@end