@interface HMDAccessoryNetworkProtectionGroup
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryNetworkProtectionGroup)initWithCoder:(id)coder;
- (HMDAccessoryNetworkProtectionGroup)initWithModel:(id)model;
- (HMDAccessoryNetworkProtectionGroup)initWithUUID:(id)d manufacturer:(id)manufacturer category:(id)category targetProtectionMode:(int64_t)mode;
- (HMDHome)home;
- (NSNumber)category;
- (NSString)description;
- (NSString)manufacturer;
- (id)modelForVersion:(int64_t)version;
- (id)modelWithObjectChangeType:(unint64_t)type;
- (int64_t)targetProtectionMode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCategory:(id)category;
- (void)setManufacturer:(id)manufacturer;
- (void)setTargetProtectionMode:(int64_t)mode;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDAccessoryNetworkProtectionGroup

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v49 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
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
    transactionResult = [messageCopy transactionResult];
    if ([v13 propertyWasSet:@"targetProtectionMode"])
    {
      targetProtectionMode = [(HMDAccessoryNetworkProtectionGroup *)self targetProtectionMode];
      targetProtectionMode2 = [v13 targetProtectionMode];
      integerValue = [targetProtectionMode2 integerValue];

      if (targetProtectionMode != integerValue)
      {
        targetProtectionMode3 = [v13 targetProtectionMode];
        -[HMDAccessoryNetworkProtectionGroup setTargetProtectionMode:](self, "setTargetProtectionMode:", [targetProtectionMode3 integerValue]);

        [transactionResult markChanged];
        uuid = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
        v42[0] = uuid;
        v41[1] = *MEMORY[0x277CCEBF0];
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryNetworkProtectionGroup targetProtectionMode](self, "targetProtectionMode")}];
        v42[1] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"HMDAccessoryNetworkProtectionGroupProtectionModeUpdated" object:self userInfo:v21];
      }
    }

    manufacturer = [v13 manufacturer];
    if (manufacturer)
    {
      v24 = manufacturer;
      manufacturer2 = [(HMDAccessoryNetworkProtectionGroup *)self manufacturer];
      manufacturer3 = [v13 manufacturer];
      v27 = HMFEqualObjects();

      if ((v27 & 1) == 0)
      {
        manufacturer4 = [v13 manufacturer];
        [(HMDAccessoryNetworkProtectionGroup *)self setManufacturer:manufacturer4];

        [transactionResult markChanged];
      }
    }

    category = [v13 category];
    if (category)
    {
      v30 = category;
      category2 = [(HMDAccessoryNetworkProtectionGroup *)self category];
      category3 = [v13 category];
      v33 = HMFEqualObjects();

      if ((v33 & 1) == 0)
      {
        category4 = [v13 category];
        [(HMDAccessoryNetworkProtectionGroup *)self setCategory:category4];

        [transactionResult markChanged];
      }
    }

    [messageCopy respondWithPayload:0];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    transactionResult = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:transactionResult];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = removedCopy;
    v19 = 2112;
    v20 = objc_opt_class();
    v12 = v20;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)modelForVersion:(int64_t)version
{
  if (version < 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(HMDAccessoryNetworkProtectionGroup *)self modelWithObjectChangeType:1];
    manufacturer = [(HMDAccessoryNetworkProtectionGroup *)self manufacturer];
    [v4 setManufacturer:manufacturer];

    category = [(HMDAccessoryNetworkProtectionGroup *)self category];
    [v4 setCategory:category];

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessoryNetworkProtectionGroup targetProtectionMode](self, "targetProtectionMode")}];
    [v4 setTargetProtectionMode:v7];
  }

  return v4;
}

- (id)modelWithObjectChangeType:(unint64_t)type
{
  v5 = [HMDAccessoryNetworkProtectionGroupModel alloc];
  uuid = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
  home = [(HMDAccessoryNetworkProtectionGroup *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForXPCTransportEntitledForSPIAccess = [coderCopy hmd_isForXPCTransportEntitledForSPIAccess];
  if (([coderCopy hmd_isForRemoteGatewayCoder] & 1) == 0)
  {
    if (hmd_isForXPCTransportEntitledForSPIAccess & 1 | ((hmd_isForXPCTransport & 1) == 0))
    {
      uuid = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
      [coderCopy encodeObject:uuid forKey:*MEMORY[0x277CCEC08]];

      manufacturer = [(HMDAccessoryNetworkProtectionGroup *)self manufacturer];
      [coderCopy encodeObject:manufacturer forKey:*MEMORY[0x277CCEBD8]];

      targetProtectionMode = [(HMDAccessoryNetworkProtectionGroup *)self targetProtectionMode];
      [coderCopy encodeInteger:targetProtectionMode forKey:*MEMORY[0x277CCEBE8]];
    }

    if (hmd_isForXPCTransport)
    {
      if (!hmd_isForXPCTransportEntitledForSPIAccess)
      {
        goto LABEL_9;
      }

      v9 = MEMORY[0x277CD1680];
      category = [(HMDAccessoryNetworkProtectionGroup *)self category];
      category2 = [v9 categoryWithCategoryIdentifier:category];

      v12 = *MEMORY[0x277CCEBD0];
    }

    else
    {
      category2 = [(HMDAccessoryNetworkProtectionGroup *)self category];
      v12 = @"HMDAccessoryNetworkProtectionGroupCategoryCodingKey";
    }

    [coderCopy encodeObject:category2 forKey:v12];
  }

LABEL_9:
}

- (HMDAccessoryNetworkProtectionGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC08]];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEBD8]];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDAccessoryNetworkProtectionGroupCategoryCodingKey"];
  v8 = [coderCopy decodeIntegerForKey:*MEMORY[0x277CCEBE8]];

  v9 = [(HMDAccessoryNetworkProtectionGroup *)self initWithUUID:v5 manufacturer:v6 category:v7 targetProtectionMode:v8];
  return v9;
}

- (void)setCategory:(id)category
{
  categoryCopy = category;
  os_unfair_lock_lock_with_options();
  category = self->_category;
  self->_category = categoryCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)category
{
  os_unfair_lock_lock_with_options();
  v3 = self->_category;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  os_unfair_lock_lock_with_options();
  manufacturer = self->_manufacturer;
  self->_manufacturer = manufacturerCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)manufacturer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_manufacturer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTargetProtectionMode:(int64_t)mode
{
  os_unfair_lock_lock_with_options();
  self->_targetProtectionMode = mode;

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
  uuid = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
  manufacturer = [(HMDAccessoryNetworkProtectionGroup *)self manufacturer];
  category = [(HMDAccessoryNetworkProtectionGroup *)self category];
  [(HMDAccessoryNetworkProtectionGroup *)self targetProtectionMode];
  v7 = HMAccessoryNetworkProtectionModeAsString();
  v8 = [v3 stringWithFormat:@"[ uuid = %@, manufacturer = %@, category = %@, targetProtectionMode = %@ ]", uuid, manufacturer, category, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
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
    if (v6)
    {
      uuid = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
      uuid2 = [(HMDAccessoryNetworkProtectionGroup *)v6 uuid];
      v9 = [uuid isEqual:uuid2];
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
  uuid = [(HMDAccessoryNetworkProtectionGroup *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (HMDAccessoryNetworkProtectionGroup)initWithModel:(id)model
{
  modelCopy = model;
  uuid = [modelCopy uuid];
  manufacturer = [modelCopy manufacturer];
  category = [modelCopy category];
  targetProtectionMode = [modelCopy targetProtectionMode];

  v9 = -[HMDAccessoryNetworkProtectionGroup initWithUUID:manufacturer:category:targetProtectionMode:](self, "initWithUUID:manufacturer:category:targetProtectionMode:", uuid, manufacturer, category, [targetProtectionMode integerValue]);
  return v9;
}

- (HMDAccessoryNetworkProtectionGroup)initWithUUID:(id)d manufacturer:(id)manufacturer category:(id)category targetProtectionMode:(int64_t)mode
{
  dCopy = d;
  manufacturerCopy = manufacturer;
  categoryCopy = category;
  v17.receiver = self;
  v17.super_class = HMDAccessoryNetworkProtectionGroup;
  v14 = [(HMDAccessoryNetworkProtectionGroup *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_uuid, d);
    objc_storeStrong(&v15->_manufacturer, manufacturer);
    objc_storeStrong(&v15->_category, category);
    v15->_targetProtectionMode = mode;
  }

  return v15;
}

@end