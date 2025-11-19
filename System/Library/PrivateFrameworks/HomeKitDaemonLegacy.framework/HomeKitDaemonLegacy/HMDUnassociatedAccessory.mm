@interface HMDUnassociatedAccessory
+ (id)logCategory;
+ (id)otherAccessoryCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessoryCategory)category;
- (HMDAccessoryAdvertisement)accessoryAdvertisement;
- (HMDUnassociatedAccessory)init;
- (HMDUnassociatedAccessory)initWithCoder:(id)a3;
- (HMDUnassociatedAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 messageDispatcher:(id)a6;
- (NSNumber)matterDeviceTypeID;
- (NSString)name;
- (id)descriptionWithPointer:(BOOL)a3 additionalDescription:(id)a4;
- (id)dumpDescription;
- (id)messageDestination;
- (id)shortDescription;
- (unint64_t)hash;
- (unint64_t)transportTypes;
- (void)_handleIdentify:(id)a3;
- (void)_registerForMessages;
- (void)associateWithAccessoryAdvertisement:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)identifyWithCompletionHandler:(id)a3;
- (void)setCategory:(id)a3;
- (void)setMatterDeviceTypeID:(id)a3;
- (void)setName:(id)a3;
- (void)updateCategoryWithCategoryIdentifier:(id)a3;
@end

@implementation HMDUnassociatedAccessory

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  if (([v21 hmd_isForXPCTransport] & 1) == 0)
  {
    v4 = [(HMDUnassociatedAccessory *)self identifier];
    [v21 encodeObject:v4 forKey:@"accessoryServerIdentifier"];
  }

  v5 = [(HMDUnassociatedAccessory *)self name];
  [v21 encodeObject:v5 forKey:@"accessoryName"];

  v6 = [(HMDUnassociatedAccessory *)self category];
  [v21 encodeObject:v6 forKey:@"HM.accessoryCategory"];

  v7 = [(HMDUnassociatedAccessory *)self uuid];
  v8 = [v7 UUIDString];
  [v21 encodeObject:v8 forKey:@"accessoryUUID"];

  [v21 encodeBool:0 forKey:@"isBridged"];
  [v21 encodeBool:0 forKey:@"paired"];
  [v21 encodeBool:-[HMDUnassociatedAccessory isReachable](self forKey:{"isReachable"), @"reachable"}];
  v9 = [(HMDUnassociatedAccessory *)self associationOptions];
  [v21 encodeInteger:v9 forKey:*MEMORY[0x277CCE7F0]];
  if ([v21 hmd_isForXPCTransportEntitledForSPIAccess])
  {
    [v21 encodeInteger:-[HMDUnassociatedAccessory transportTypes](self forKey:{"transportTypes"), @"HM.accessoryTransportTypes"}];
  }

  if ([v21 hmd_isForXPCTransportEntitledForSPIAccess])
  {
    v10 = [(HMDUnassociatedAccessory *)self supportsCHIP];
    [v21 encodeBool:v10 forKey:*MEMORY[0x277CCEF68]];
    v11 = [(HMDUnassociatedAccessory *)self isKnownToSystemCommissioner];
    [v21 encodeBool:v11 forKey:*MEMORY[0x277CCEB38]];
    v12 = [(HMDUnassociatedAccessory *)self rootPublicKey];
    [v21 encodeObject:v12 forKey:*MEMORY[0x277CCECE0]];

    v13 = [(HMDUnassociatedAccessory *)self nodeID];
    [v21 encodeObject:v13 forKey:*MEMORY[0x277CCE9A0]];

    v14 = [(HMDUnassociatedAccessory *)self commissioningID];
    [v21 encodeObject:v14 forKey:*MEMORY[0x277CCE998]];

    v15 = [(HMDUnassociatedAccessory *)self serialNumber];
    [v21 encodeObject:v15 forKey:@"HM.serialNumber"];

    v16 = [(HMDUnassociatedAccessory *)self productID];
    [v21 encodeObject:v16 forKey:*MEMORY[0x277CCEC60]];

    v17 = [(HMDUnassociatedAccessory *)self vendorID];
    [v21 encodeObject:v17 forKey:*MEMORY[0x277CCF0F0]];

    v18 = [(HMDUnassociatedAccessory *)self matterDeviceTypeID];
    [v21 encodeObject:v18 forKey:*MEMORY[0x277CCEB68]];

    v19 = [(HMDUnassociatedAccessory *)self requiresThreadRouter];
    [v21 encodeBool:v19 forKey:*MEMORY[0x277CCECC0]];
    v20 = [(HMDUnassociatedAccessory *)self identifier];
    [v21 encodeObject:v20 forKey:@"accessoryServerIdentifier"];
  }
}

- (HMDUnassociatedAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryServerIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryCategory"];
  v8 = [(HMDUnassociatedAccessory *)self initWithIdentifier:v5 name:v6 category:v7 messageDispatcher:0];
  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryUUID"];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
    uuid = v8->_uuid;
    v8->_uuid = v10;
  }

  return v8;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDUnassociatedAccessory *)self uuid];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (HMDAccessoryAdvertisement)accessoryAdvertisement
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_accessoryAdvertisement;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)associateWithAccessoryAdvertisement:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  accessoryAdvertisement = self->_accessoryAdvertisement;
  self->_accessoryAdvertisement = v4;

  os_unfair_recursive_lock_unlock();
}

- (void)identifyWithCompletionHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@The accessory does not support identify", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v4[2](v4, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleIdentify:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Identifying", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  objc_initWeak(buf, v6);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__HMDUnassociatedAccessory__handleIdentify___block_invoke;
  v11[3] = &unk_2797338E8;
  objc_copyWeak(&v13, buf);
  v9 = v4;
  v12 = v9;
  [(HMDUnassociatedAccessory *)v6 identifyWithCompletionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x277D85DE8];
}

void __44__HMDUnassociatedAccessory__handleIdentify___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Identified with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 32) responseHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) responseHandler];
    (v10)[2](v10, v3, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setMatterDeviceTypeID:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    os_unfair_recursive_lock_lock_with_options();
    matterDeviceTypeID = self->_matterDeviceTypeID;
    if (HMFEqualObjects())
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      objc_storeStrong(&self->_matterDeviceTypeID, a3);
      os_unfair_recursive_lock_unlock();
      v7 = MEMORY[0x277D0F818];
      v8 = [(HMDUnassociatedAccessory *)self messageDestination];
      v13 = *MEMORY[0x277CCEB78];
      v14[0] = v5;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v10 = [v7 messageWithName:*MEMORY[0x277CCEB70] destination:v8 payload:v9];

      v11 = [(HMDUnassociatedAccessory *)self messageDispatcher];
      [v11 sendMessage:v10 completionHandler:0];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSNumber)matterDeviceTypeID
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_matterDeviceTypeID;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)updateCategoryWithCategoryIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v10 = +[HMDHAPMetadata getSharedInstance];
    v5 = [v10 categoryForIdentifier:v4];

    if (!v5)
    {
      v5 = [v10 categoryForOther];
    }

    v6 = objc_alloc(MEMORY[0x277CD1680]);
    v7 = [v5 uuidStr];
    v8 = [v5 catDescription];
    v9 = [v6 initWithType:v7 name:v8];

    [(HMDUnassociatedAccessory *)self setCategory:v9];
  }
}

- (void)setCategory:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_recursive_lock_lock_with_options();
    category = self->_category;
    if (HMFEqualObjects())
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v6 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:v4];
      v7 = self->_category;
      self->_category = v6;

      os_unfair_recursive_lock_unlock();
      v8 = encodeRootObjectForIncomingXPCMessage(v4, 0);
      v9 = MEMORY[0x277D0F818];
      v10 = [(HMDUnassociatedAccessory *)self messageDestination];
      v15 = @"kAccessoryCategory";
      v16[0] = v8;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v9 messageWithName:@"kAccessoryCategoryChangedNotificationKey" destination:v10 payload:v11];

      v13 = [(HMDUnassociatedAccessory *)self messageDispatcher];
      [v13 sendMessage:v12 completionHandler:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMAccessoryCategory)category
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_category;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setName:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_recursive_lock_lock_with_options();
    name = self->_name;
    if (HMFEqualObjects())
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v6 = [v4 copy];
      v7 = self->_name;
      self->_name = v6;

      os_unfair_recursive_lock_unlock();
      v8 = MEMORY[0x277D0F818];
      v9 = [(HMDUnassociatedAccessory *)self messageDestination];
      v14 = *MEMORY[0x277CD1FC8];
      v15[0] = v4;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v8 messageWithName:*MEMORY[0x277CD1FC0] destination:v9 payload:v10];

      v12 = [(HMDUnassociatedAccessory *)self messageDispatcher];
      [v12 sendMessage:v11 completionHandler:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSString)name
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)_registerForMessages
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDUnassociatedAccessory *)self messageDispatcher];
  v4 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 registerForMessage:@"kIdentifyAccessoryRequestKey" receiver:self policies:v5 selector:sel__handleIdentify_];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)dumpDescription
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HMDUnassociatedAccessory *)self name];
  v6 = [(HMDUnassociatedAccessory *)self uuid];
  v7 = [v6 UUIDString];
  v8 = [(HMDUnassociatedAccessory *)self identifier];
  v9 = [v4 stringWithFormat:@"Accessory '%@': uuid %@  identifier %@", v5, v7, v8];

  [v3 setObject:v9 forKey:*MEMORY[0x277D0F170]];

  return v3;
}

- (id)descriptionWithPointer:(BOOL)a3 additionalDescription:(id)a4
{
  v4 = a3;
  v25 = a4;
  v19 = MEMORY[0x277CCACA8];
  v24 = [objc_opt_class() shortDescription];
  v21 = v4;
  if (v4)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v22 = &stru_286509E58;
  }

  v20 = [(HMDUnassociatedAccessory *)self uuid];
  v23 = [v20 UUIDString];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUnassociatedAccessory isKnownToSystemCommissioner](self, "isKnownToSystemCommissioner")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [(HMDUnassociatedAccessory *)self rootPublicKey];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "hash")}];
  v10 = [(HMDUnassociatedAccessory *)self nodeID];
  v11 = [(HMDUnassociatedAccessory *)self identifier];
  v12 = [(HMDUnassociatedAccessory *)self name];
  v13 = [(HMDUnassociatedAccessory *)self category];
  v14 = [v13 name];
  v15 = v14;
  if (v25)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@", %@", v25];
    v17 = [v19 stringWithFormat:@"<%@%@, UUID = %@, knownToSystemCommissioner = %@, RPK(Hash) = %@, NodeID = %@, Identifier = %@, Name = %@, Category = %@%@>", v24, v22, v23, v6, v9, v10, v11, v12, v15, v16];
  }

  else
  {
    v17 = [v19 stringWithFormat:@"<%@%@, UUID = %@, knownToSystemCommissioner = %@, RPK(Hash) = %@, NodeID = %@, Identifier = %@, Name = %@, Category = %@%@>", v24, v22, v23, v6, v9, v10, v11, v12, v14, &stru_286509E58];
  }

  if (v21)
  {
  }

  return v17;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDUnassociatedAccessory *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
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
      v7 = [(HMDUnassociatedAccessory *)self identifier];
      v8 = [(HMDUnassociatedAccessory *)v6 identifier];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)transportTypes
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (unint64_t)hash
{
  v2 = [(HMDUnassociatedAccessory *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)dealloc
{
  v3 = [(HMDUnassociatedAccessory *)self messageDispatcher];
  [v3 deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDUnassociatedAccessory;
  [(HMDUnassociatedAccessory *)&v4 dealloc];
}

- (HMDUnassociatedAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 messageDispatcher:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = HMDUnassociatedAccessory;
  v14 = [(HMDUnassociatedAccessory *)&v23 init];
  if (v14)
  {
    v15 = [MEMORY[0x277CCAD78] UUID];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v17 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = [v11 copy];
    name = v14->_name;
    v14->_name = v19;

    v21 = v12;
    if (!v12)
    {
      v21 = +[HMDUnassociatedAccessory otherAccessoryCategory];
    }

    objc_storeStrong(&v14->_category, v21);
    if (!v12)
    {
    }

    objc_storeStrong(&v14->_messageDispatcher, a6);
    if (v13)
    {
      [(HMDUnassociatedAccessory *)v14 _registerForMessages];
    }
  }

  return v14;
}

- (HMDUnassociatedAccessory)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_119745 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_119745, &__block_literal_global_119746);
  }

  v3 = logCategory__hmf_once_v13_119747;

  return v3;
}

uint64_t __39__HMDUnassociatedAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_119747;
  logCategory__hmf_once_v13_119747 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)otherAccessoryCategory
{
  v2 = +[HMDHAPMetadata getSharedInstance];
  v3 = [v2 categoryForOther];

  v4 = objc_alloc(MEMORY[0x277CD1680]);
  v5 = [v3 uuidStr];
  v6 = [v3 catDescription];
  v7 = [v4 initWithType:v5 name:v6];

  v8 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:v7];

  return v8;
}

@end