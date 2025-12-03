@interface HMDUnassociatedAccessory
+ (id)logCategory;
+ (id)otherAccessoryCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessoryCategory)category;
- (HMDAccessoryAdvertisement)accessoryAdvertisement;
- (HMDUnassociatedAccessory)init;
- (HMDUnassociatedAccessory)initWithCoder:(id)coder;
- (HMDUnassociatedAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category messageDispatcher:(id)dispatcher;
- (NSNumber)matterDeviceTypeID;
- (NSString)name;
- (id)descriptionWithPointer:(BOOL)pointer additionalDescription:(id)description;
- (id)dumpDescription;
- (id)messageDestination;
- (id)shortDescription;
- (unint64_t)hash;
- (unint64_t)transportTypes;
- (void)_handleIdentify:(id)identify;
- (void)_registerForMessages;
- (void)associateWithAccessoryAdvertisement:(id)advertisement;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)identifyWithCompletionHandler:(id)handler;
- (void)setCategory:(id)category;
- (void)setMatterDeviceTypeID:(id)d;
- (void)setName:(id)name;
- (void)updateCategoryWithCategoryIdentifier:(id)identifier;
@end

@implementation HMDUnassociatedAccessory

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy hmd_isForXPCTransport] & 1) == 0)
  {
    identifier = [(HMDUnassociatedAccessory *)self identifier];
    [coderCopy encodeObject:identifier forKey:@"accessoryServerIdentifier"];
  }

  name = [(HMDUnassociatedAccessory *)self name];
  [coderCopy encodeObject:name forKey:@"accessoryName"];

  category = [(HMDUnassociatedAccessory *)self category];
  [coderCopy encodeObject:category forKey:@"HM.accessoryCategory"];

  uuid = [(HMDUnassociatedAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"accessoryUUID"];

  [coderCopy encodeBool:0 forKey:@"isBridged"];
  [coderCopy encodeBool:0 forKey:@"paired"];
  [coderCopy encodeBool:-[HMDUnassociatedAccessory isReachable](self forKey:{"isReachable"), @"reachable"}];
  associationOptions = [(HMDUnassociatedAccessory *)self associationOptions];
  [coderCopy encodeInteger:associationOptions forKey:*MEMORY[0x277CCE7F0]];
  if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
  {
    [coderCopy encodeInteger:-[HMDUnassociatedAccessory transportTypes](self forKey:{"transportTypes"), @"HM.accessoryTransportTypes"}];
  }

  if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
  {
    supportsCHIP = [(HMDUnassociatedAccessory *)self supportsCHIP];
    [coderCopy encodeBool:supportsCHIP forKey:*MEMORY[0x277CCEF68]];
    isKnownToSystemCommissioner = [(HMDUnassociatedAccessory *)self isKnownToSystemCommissioner];
    [coderCopy encodeBool:isKnownToSystemCommissioner forKey:*MEMORY[0x277CCEB38]];
    rootPublicKey = [(HMDUnassociatedAccessory *)self rootPublicKey];
    [coderCopy encodeObject:rootPublicKey forKey:*MEMORY[0x277CCECE0]];

    nodeID = [(HMDUnassociatedAccessory *)self nodeID];
    [coderCopy encodeObject:nodeID forKey:*MEMORY[0x277CCE9A0]];

    commissioningID = [(HMDUnassociatedAccessory *)self commissioningID];
    [coderCopy encodeObject:commissioningID forKey:*MEMORY[0x277CCE998]];

    serialNumber = [(HMDUnassociatedAccessory *)self serialNumber];
    [coderCopy encodeObject:serialNumber forKey:@"HM.serialNumber"];

    productID = [(HMDUnassociatedAccessory *)self productID];
    [coderCopy encodeObject:productID forKey:*MEMORY[0x277CCEC60]];

    vendorID = [(HMDUnassociatedAccessory *)self vendorID];
    [coderCopy encodeObject:vendorID forKey:*MEMORY[0x277CCF0F0]];

    matterDeviceTypeID = [(HMDUnassociatedAccessory *)self matterDeviceTypeID];
    [coderCopy encodeObject:matterDeviceTypeID forKey:*MEMORY[0x277CCEB68]];

    requiresThreadRouter = [(HMDUnassociatedAccessory *)self requiresThreadRouter];
    [coderCopy encodeBool:requiresThreadRouter forKey:*MEMORY[0x277CCECC0]];
    identifier2 = [(HMDUnassociatedAccessory *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"accessoryServerIdentifier"];
  }
}

- (HMDUnassociatedAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryServerIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryCategory"];
  v8 = [(HMDUnassociatedAccessory *)self initWithIdentifier:v5 name:v6 category:v7 messageDispatcher:0];
  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryUUID"];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
    uuid = v8->_uuid;
    v8->_uuid = v10;
  }

  return v8;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  uuid = [(HMDUnassociatedAccessory *)self uuid];
  v5 = [v3 initWithTarget:uuid];

  return v5;
}

- (HMDAccessoryAdvertisement)accessoryAdvertisement
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_accessoryAdvertisement;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)associateWithAccessoryAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  os_unfair_recursive_lock_lock_with_options();
  accessoryAdvertisement = self->_accessoryAdvertisement;
  self->_accessoryAdvertisement = advertisementCopy;

  os_unfair_recursive_lock_unlock();
}

- (void)identifyWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@The accessory does not support identify", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  if (handlerCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleIdentify:(id)identify
{
  v16 = *MEMORY[0x277D85DE8];
  identifyCopy = identify;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Identifying", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  objc_initWeak(buf, selfCopy);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__HMDUnassociatedAccessory__handleIdentify___block_invoke;
  v11[3] = &unk_278687540;
  objc_copyWeak(&v13, buf);
  v9 = identifyCopy;
  v12 = v9;
  [(HMDUnassociatedAccessory *)selfCopy identifyWithCompletionHandler:v11];

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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Identified with error: %@", &v12, 0x16u);
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

- (void)setMatterDeviceTypeID:(id)d
{
  v14[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    os_unfair_recursive_lock_lock_with_options();
    matterDeviceTypeID = self->_matterDeviceTypeID;
    if (HMFEqualObjects())
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      objc_storeStrong(&self->_matterDeviceTypeID, d);
      os_unfair_recursive_lock_unlock();
      v7 = MEMORY[0x277D0F818];
      messageDestination = [(HMDUnassociatedAccessory *)self messageDestination];
      v13 = *MEMORY[0x277CCEB78];
      v14[0] = dCopy;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v10 = [v7 messageWithName:*MEMORY[0x277CCEB70] destination:messageDestination payload:v9];

      messageDispatcher = [(HMDUnassociatedAccessory *)self messageDispatcher];
      [messageDispatcher sendMessage:v10 completionHandler:0];
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

- (void)updateCategoryWithCategoryIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v10 = +[HMDHAPMetadata getSharedInstance];
    categoryForOther = [v10 categoryForIdentifier:identifierCopy];

    if (!categoryForOther)
    {
      categoryForOther = [v10 categoryForOther];
    }

    v6 = objc_alloc(MEMORY[0x277CD1680]);
    uuidStr = [categoryForOther uuidStr];
    catDescription = [categoryForOther catDescription];
    v9 = [v6 initWithType:uuidStr name:catDescription];

    [(HMDUnassociatedAccessory *)self setCategory:v9];
  }
}

- (void)setCategory:(id)category
{
  v16[1] = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  if (categoryCopy)
  {
    os_unfair_recursive_lock_lock_with_options();
    category = self->_category;
    if (HMFEqualObjects())
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v6 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:categoryCopy];
      v7 = self->_category;
      self->_category = v6;

      os_unfair_recursive_lock_unlock();
      v8 = encodeRootObjectForIncomingXPCMessage(categoryCopy, 0);
      v9 = MEMORY[0x277D0F818];
      messageDestination = [(HMDUnassociatedAccessory *)self messageDestination];
      v15 = @"kAccessoryCategory";
      v16[0] = v8;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v9 messageWithName:@"kAccessoryCategoryChangedNotificationKey" destination:messageDestination payload:v11];

      messageDispatcher = [(HMDUnassociatedAccessory *)self messageDispatcher];
      [messageDispatcher sendMessage:v12 completionHandler:0];
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

- (void)setName:(id)name
{
  v15[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    os_unfair_recursive_lock_lock_with_options();
    name = self->_name;
    if (HMFEqualObjects())
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v6 = [nameCopy copy];
      v7 = self->_name;
      self->_name = v6;

      os_unfair_recursive_lock_unlock();
      v8 = MEMORY[0x277D0F818];
      messageDestination = [(HMDUnassociatedAccessory *)self messageDestination];
      v14 = *MEMORY[0x277CD1FC8];
      v15[0] = nameCopy;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v8 messageWithName:*MEMORY[0x277CD1FC0] destination:messageDestination payload:v10];

      messageDispatcher = [(HMDUnassociatedAccessory *)self messageDispatcher];
      [messageDispatcher sendMessage:v11 completionHandler:0];
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
  messageDispatcher = [(HMDUnassociatedAccessory *)self messageDispatcher];
  v4 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [messageDispatcher registerForMessage:@"kIdentifyAccessoryRequestKey" receiver:self policies:v5 selector:sel__handleIdentify_];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)dumpDescription
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = MEMORY[0x277CCACA8];
  name = [(HMDUnassociatedAccessory *)self name];
  uuid = [(HMDUnassociatedAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  identifier = [(HMDUnassociatedAccessory *)self identifier];
  v9 = [v4 stringWithFormat:@"Accessory '%@': uuid %@  identifier %@", name, uUIDString, identifier];

  [v3 setObject:v9 forKey:*MEMORY[0x277D0F170]];

  return v3;
}

- (id)descriptionWithPointer:(BOOL)pointer additionalDescription:(id)description
{
  pointerCopy = pointer;
  descriptionCopy = description;
  v19 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  v21 = pointerCopy;
  if (pointerCopy)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v22 = &stru_283CF9D50;
  }

  uuid = [(HMDUnassociatedAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDUnassociatedAccessory isKnownToSystemCommissioner](self, "isKnownToSystemCommissioner")}];
  v7 = MEMORY[0x277CCABB0];
  rootPublicKey = [(HMDUnassociatedAccessory *)self rootPublicKey];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(rootPublicKey, "hash")}];
  nodeID = [(HMDUnassociatedAccessory *)self nodeID];
  identifier = [(HMDUnassociatedAccessory *)self identifier];
  name = [(HMDUnassociatedAccessory *)self name];
  category = [(HMDUnassociatedAccessory *)self category];
  name2 = [category name];
  v15 = name2;
  if (descriptionCopy)
  {
    descriptionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@", %@", descriptionCopy];
    v17 = [v19 stringWithFormat:@"<%@%@, UUID = %@, knownToSystemCommissioner = %@, RPK(Hash) = %@, NodeID = %@, Identifier = %@, Name = %@, Category = %@%@>", shortDescription, v22, uUIDString, v6, v9, nodeID, identifier, name, v15, descriptionCopy];
  }

  else
  {
    v17 = [v19 stringWithFormat:@"<%@%@, UUID = %@, knownToSystemCommissioner = %@, RPK(Hash) = %@, NodeID = %@, Identifier = %@, Name = %@, Category = %@%@>", shortDescription, v22, uUIDString, v6, v9, nodeID, identifier, name, name2, &stru_283CF9D50];
  }

  if (v21)
  {
  }

  return v17;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDUnassociatedAccessory *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, identifier];

  return v6;
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
      identifier = [(HMDUnassociatedAccessory *)self identifier];
      identifier2 = [(HMDUnassociatedAccessory *)v6 identifier];
      v9 = [identifier isEqualToString:identifier2];
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
  identifier = [(HMDUnassociatedAccessory *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)dealloc
{
  messageDispatcher = [(HMDUnassociatedAccessory *)self messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDUnassociatedAccessory;
  [(HMDUnassociatedAccessory *)&v4 dealloc];
}

- (HMDUnassociatedAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category messageDispatcher:(id)dispatcher
{
  identifierCopy = identifier;
  nameCopy = name;
  categoryCopy = category;
  dispatcherCopy = dispatcher;
  v23.receiver = self;
  v23.super_class = HMDUnassociatedAccessory;
  v14 = [(HMDUnassociatedAccessory *)&v23 init];
  if (v14)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v14->_uuid;
    v14->_uuid = uUID;

    v17 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v17;

    v19 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v19;

    v21 = categoryCopy;
    if (!categoryCopy)
    {
      v21 = +[HMDUnassociatedAccessory otherAccessoryCategory];
    }

    objc_storeStrong(&v14->_category, v21);
    if (!categoryCopy)
    {
    }

    objc_storeStrong(&v14->_messageDispatcher, dispatcher);
    if (dispatcherCopy)
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
  if (logCategory__hmf_once_t12_181757 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_181757, &__block_literal_global_181758);
  }

  v3 = logCategory__hmf_once_v13_181759;

  return v3;
}

void __39__HMDUnassociatedAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_181759;
  logCategory__hmf_once_v13_181759 = v1;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)otherAccessoryCategory
{
  v2 = +[HMDHAPMetadata getSharedInstance];
  categoryForOther = [v2 categoryForOther];

  v4 = objc_alloc(MEMORY[0x277CD1680]);
  uuidStr = [categoryForOther uuidStr];
  catDescription = [categoryForOther catDescription];
  v7 = [v4 initWithType:uuidStr name:catDescription];

  v8 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:v7];

  return v8;
}

@end