@interface HMDAccessoryNetworkProtectionGroup
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryNetworkProtectionGroup)initWithCoder:(id)a3;
- (HMDAccessoryNetworkProtectionGroup)initWithModel:(id)a3;
- (HMDAccessoryNetworkProtectionGroup)initWithUUID:(id)a3 manufacturer:(id)a4 category:(id)a5 targetProtectionMode:(int64_t)a6;
- (HMDHome)home;
- (NSNumber)category;
- (NSString)description;
- (NSString)manufacturer;
- (id)modelForVersion:(int64_t)a3;
- (id)modelWithObjectChangeType:(unint64_t)a3;
- (int64_t)targetProtectionMode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCategory:(id)a3;
- (void)setManufacturer:(id)a3;
- (void)setTargetProtectionMode:(int64_t)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDAccessoryNetworkProtectionGroup

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [v10 transactionResult];
    if ([v13 propertyWasSet:@"targetProtectionMode"])
    {
      v15 = [(HMDAccessoryNetworkProtectionGroup *)self targetProtectionMode];
      v16 = [v13 targetProtectionMode];
      v17 = [v16 integerValue];

      if (v15 != v17)
      {
        v18 = [v13 targetProtectionMode];
        -[HMDAccessoryNetworkProtectionGroup setTargetProtectionMode:](self, "setTargetProtectionMode:", [v18 integerValue]);

        [v14 markChanged];
        v19 = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
        v42[0] = v19;
        v41[1] = *MEMORY[0x277CCEBF0];
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryNetworkProtectionGroup targetProtectionMode](self, "targetProtectionMode")}];
        v42[1] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

        v22 = [MEMORY[0x277CCAB98] defaultCenter];
        [v22 postNotificationName:@"HMDAccessoryNetworkProtectionGroupProtectionModeUpdated" object:self userInfo:v21];
      }
    }

    v23 = [v13 manufacturer];
    if (v23)
    {
      v24 = v23;
      v25 = [(HMDAccessoryNetworkProtectionGroup *)self manufacturer];
      v26 = [v13 manufacturer];
      v27 = HMFEqualObjects();

      if ((v27 & 1) == 0)
      {
        v28 = [v13 manufacturer];
        [(HMDAccessoryNetworkProtectionGroup *)self setManufacturer:v28];

        [v14 markChanged];
      }
    }

    v29 = [v13 category];
    if (v29)
    {
      v30 = v29;
      v31 = [(HMDAccessoryNetworkProtectionGroup *)self category];
      v32 = [v13 category];
      v33 = HMFEqualObjects();

      if ((v33 & 1) == 0)
      {
        v34 = [v13 category];
        [(HMDAccessoryNetworkProtectionGroup *)self setCategory:v34];

        [v14 markChanged];
      }
    }

    [v10 respondWithPayload:0];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543874;
      v44 = v38;
      v45 = 2112;
      v46 = v11;
      v47 = 2112;
      v48 = objc_opt_class();
      v39 = v48;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v35);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v10 respondWithError:v14];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = objc_opt_class();
    v12 = v20;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v7 respondWithError:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)modelForVersion:(int64_t)a3
{
  if (a3 < 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(HMDAccessoryNetworkProtectionGroup *)self modelWithObjectChangeType:1];
    v5 = [(HMDAccessoryNetworkProtectionGroup *)self manufacturer];
    [v4 setManufacturer:v5];

    v6 = [(HMDAccessoryNetworkProtectionGroup *)self category];
    [v4 setCategory:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryNetworkProtectionGroup targetProtectionMode](self, "targetProtectionMode")}];
    [v4 setTargetProtectionMode:v7];
  }

  return v4;
}

- (id)modelWithObjectChangeType:(unint64_t)a3
{
  v5 = [HMDAccessoryNetworkProtectionGroupModel alloc];
  v6 = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
  v7 = [(HMDAccessoryNetworkProtectionGroup *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [v13 hmd_isForXPCTransport];
  v5 = [v13 hmd_isForXPCTransportEntitledForSPIAccess];
  if (([v13 hmd_isForRemoteGatewayCoder] & 1) == 0)
  {
    if (v5 & 1 | ((v4 & 1) == 0))
    {
      v6 = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
      [v13 encodeObject:v6 forKey:*MEMORY[0x277CCEC08]];

      v7 = [(HMDAccessoryNetworkProtectionGroup *)self manufacturer];
      [v13 encodeObject:v7 forKey:*MEMORY[0x277CCEBD8]];

      v8 = [(HMDAccessoryNetworkProtectionGroup *)self targetProtectionMode];
      [v13 encodeInteger:v8 forKey:*MEMORY[0x277CCEBE8]];
    }

    if (v4)
    {
      if (!v5)
      {
        goto LABEL_9;
      }

      v9 = MEMORY[0x277CD1680];
      v10 = [(HMDAccessoryNetworkProtectionGroup *)self category];
      v11 = [v9 categoryWithCategoryIdentifier:v10];

      v12 = *MEMORY[0x277CCEBD0];
    }

    else
    {
      v11 = [(HMDAccessoryNetworkProtectionGroup *)self category];
      v12 = @"HMDAccessoryNetworkProtectionGroupCategoryCodingKey";
    }

    [v13 encodeObject:v11 forKey:v12];
  }

LABEL_9:
}

- (HMDAccessoryNetworkProtectionGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC08]];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEBD8]];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAccessoryNetworkProtectionGroupCategoryCodingKey"];
  v8 = [v4 decodeIntegerForKey:*MEMORY[0x277CCEBE8]];

  v9 = [(HMDAccessoryNetworkProtectionGroup *)self initWithUUID:v5 manufacturer:v6 category:v7 targetProtectionMode:v8];
  return v9;
}

- (void)setCategory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  category = self->_category;
  self->_category = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)category
{
  os_unfair_lock_lock_with_options();
  v3 = self->_category;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setManufacturer:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  manufacturer = self->_manufacturer;
  self->_manufacturer = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)manufacturer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_manufacturer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTargetProtectionMode:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_targetProtectionMode = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)targetProtectionMode
{
  os_unfair_lock_lock_with_options();
  targetProtectionMode = self->_targetProtectionMode;
  os_unfair_lock_unlock(&self->_lock);
  return targetProtectionMode;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
  v5 = [(HMDAccessoryNetworkProtectionGroup *)self manufacturer];
  v6 = [(HMDAccessoryNetworkProtectionGroup *)self category];
  [(HMDAccessoryNetworkProtectionGroup *)self targetProtectionMode];
  v7 = HMAccessoryNetworkProtectionModeAsString();
  v8 = [v3 stringWithFormat:@"[ uuid = %@, manufacturer = %@, category = %@, targetProtectionMode = %@ ]", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
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
    if (v6)
    {
      v7 = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
      v8 = [(HMDAccessoryNetworkProtectionGroup *)v6 uuid];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (HMDAccessoryNetworkProtectionGroup)initWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v4 manufacturer];
  v7 = [v4 category];
  v8 = [v4 targetProtectionMode];

  v9 = -[HMDAccessoryNetworkProtectionGroup initWithUUID:manufacturer:category:targetProtectionMode:](self, "initWithUUID:manufacturer:category:targetProtectionMode:", v5, v6, v7, [v8 integerValue]);
  return v9;
}

- (HMDAccessoryNetworkProtectionGroup)initWithUUID:(id)a3 manufacturer:(id)a4 category:(id)a5 targetProtectionMode:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HMDAccessoryNetworkProtectionGroup;
  v14 = [(HMDAccessoryNetworkProtectionGroup *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uuid, a3);
    objc_storeStrong(&v15->_manufacturer, a4);
    objc_storeStrong(&v15->_category, a5);
    v15->_targetProtectionMode = a6;
  }

  return v15;
}

@end