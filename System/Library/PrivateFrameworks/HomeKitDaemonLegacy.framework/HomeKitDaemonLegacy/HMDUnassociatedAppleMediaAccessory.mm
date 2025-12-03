@interface HMDUnassociatedAppleMediaAccessory
+ (id)logCategory;
+ (id)namespace;
- (BOOL)canPairGivenCapabilities:(unint64_t)capabilities;
- (HMDUnassociatedAppleMediaAccessory)initWithCoder:(id)coder;
- (HMDUnassociatedAppleMediaAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category requiredPairingCapabilities:(unint64_t)capabilities minimumPairingSoftware:(id)software productColor:(int64_t)color idsIdentifierString:(id)string rawAccessoryCapabilities:(id)self0 rawResidentCapabilities:(id)self1 messageDispatcher:(id)self2;
- (HMFSoftwareVersion)softwareVersion;
- (NSString)model;
- (NSString)serialNumber;
- (id)addTransactionForHome:(id)home;
- (id)dumpDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setDevice:(id)device;
- (void)setModel:(id)model;
- (void)setSerialNumber:(id)number;
- (void)setSoftwareVersion:(id)version;
@end

@implementation HMDUnassociatedAppleMediaAccessory

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HMDUnassociatedAppleMediaAccessory;
  [(HMDUnassociatedAccessory *)&v18 encodeWithCoder:coderCopy];
  model = [(HMDUnassociatedAppleMediaAccessory *)self model];
  [coderCopy encodeObject:model forKey:@"HM.model"];

  serialNumber = [(HMDUnassociatedAppleMediaAccessory *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"HM.serialNumber"];

  softwareVersion = [(HMDUnassociatedAppleMediaAccessory *)self softwareVersion];
  [coderCopy encodeObject:softwareVersion forKey:*MEMORY[0x277CCEF18]];

  device = [(HMDUnassociatedAppleMediaAccessory *)self device];
  [coderCopy encodeObject:device forKey:@"HM.device"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUnassociatedAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
  [coderCopy encodeObject:v9 forKey:*MEMORY[0x277CD11A8]];

  minimumRequiredPairingSoftwareVersion = [(HMDUnassociatedAppleMediaAccessory *)self minimumRequiredPairingSoftwareVersion];

  if (minimumRequiredPairingSoftwareVersion)
  {
    minimumRequiredPairingSoftwareVersion2 = [(HMDUnassociatedAppleMediaAccessory *)self minimumRequiredPairingSoftwareVersion];
    [coderCopy encodeObject:minimumRequiredPairingSoftwareVersion2 forKey:@"HMD.un.psv"];
  }

  requiredPairingCapabilities = [(HMDUnassociatedAppleMediaAccessory *)self requiredPairingCapabilities];
  [coderCopy encodeObject:requiredPairingCapabilities forKey:@"HMD.un.pcap"];

  [coderCopy encodeInteger:-[HMDUnassociatedAppleMediaAccessory variant](self forKey:{"variant"), @"HMD.un.var"}];
  productColor = [(HMDUnassociatedAppleMediaAccessory *)self productColor];
  [coderCopy encodeInteger:productColor forKey:*MEMORY[0x277CD0C90]];
  idsIdentifierString = [(HMDUnassociatedAppleMediaAccessory *)self idsIdentifierString];
  [coderCopy encodeObject:idsIdentifierString forKey:@"HMD.un.idsId"];

  rawResidentCapabilities = [(HMDUnassociatedAppleMediaAccessory *)self rawResidentCapabilities];
  [coderCopy encodeObject:rawResidentCapabilities forKey:@"HMD.un.recap"];

  rawAccessoryCapabilities = [(HMDUnassociatedAppleMediaAccessory *)self rawAccessoryCapabilities];
  [coderCopy encodeObject:rawAccessoryCapabilities forKey:@"HMD.un.accap"];

  if ([coderCopy hmd_isForXPCTransport])
  {
    isCurrentAccessory = [(HMDUnassociatedAppleMediaAccessory *)self isCurrentAccessory];
    [coderCopy encodeBool:isCurrentAccessory forKey:*MEMORY[0x277CCE9F0]];
  }
}

- (HMDUnassociatedAppleMediaAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = HMDUnassociatedAppleMediaAccessory;
  v5 = [(HMDUnassociatedAccessory *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.model"];
    model = v5->_model;
    v5->_model = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEF18]];
    softwareVersion = v5->_softwareVersion;
    v5->_softwareVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
    device = v5->_device;
    v5->_device = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD11A8]];
    v5->_supportedStereoPairVersions = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.psv"];
    minimumRequiredPairingSoftwareVersion = v5->_minimumRequiredPairingSoftwareVersion;
    v5->_minimumRequiredPairingSoftwareVersion = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.pcap"];
    requiredPairingCapabilities = v5->_requiredPairingCapabilities;
    v5->_requiredPairingCapabilities = v17;

    v5->_variant = [coderCopy decodeIntegerForKey:@"HMD.un.var"];
    v5->_productColor = [coderCopy decodeIntegerForKey:*MEMORY[0x277CD0C90]];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.idsId"];
    idsIdentifierString = v5->_idsIdentifierString;
    v5->_idsIdentifierString = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.recap"];
    rawResidentCapabilities = v5->_rawResidentCapabilities;
    v5->_rawResidentCapabilities = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.accap"];
    rawAccessoryCapabilities = v5->_rawAccessoryCapabilities;
    v5->_rawAccessoryCapabilities = v23;
  }

  return v5;
}

- (id)dumpDescription
{
  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v14 = MEMORY[0x277CCACA8];
  name = [(HMDUnassociatedAccessory *)self name];
  uuid = [(HMDUnassociatedAccessory *)self uuid];
  uUIDString = [uuid UUIDString];
  category = [(HMDUnassociatedAccessory *)self category];
  identifier = [(HMDUnassociatedAccessory *)self identifier];
  device = [(HMDUnassociatedAppleMediaAccessory *)self device];
  minimumRequiredPairingSoftwareVersion = [(HMDUnassociatedAppleMediaAccessory *)self minimumRequiredPairingSoftwareVersion];
  requiredPairingCapabilities = [(HMDUnassociatedAppleMediaAccessory *)self requiredPairingCapabilities];
  [(HMDUnassociatedAppleMediaAccessory *)self productColor];
  v10 = HMFProductColorToString();
  idsIdentifierString = [(HMDUnassociatedAppleMediaAccessory *)self idsIdentifierString];
  v12 = [v14 stringWithFormat:@"WHA Accessory '%@': uuid %@  category %@ identifier %@  device: %@, requiredSoftwareVersion:%@, requiredPairingCapabilities: %@, productColor: %@, idsIdentifier: %@", name, uUIDString, category, identifier, device, minimumRequiredPairingSoftwareVersion, requiredPairingCapabilities, v10, idsIdentifierString];

  [v16 setObject:v12 forKey:*MEMORY[0x277D0F170]];

  return v16;
}

- (BOOL)canPairGivenCapabilities:(unint64_t)capabilities
{
  v18 = *MEMORY[0x277D85DE8];
  requiredPairingCapabilities = [(HMDUnassociatedAppleMediaAccessory *)self requiredPairingCapabilities];

  if (requiredPairingCapabilities)
  {
    v6 = [[HMDCapabilityFlags alloc] initWithCapabilityOptions:capabilities];
    requiredPairingCapabilities2 = [(HMDUnassociatedAppleMediaAccessory *)self requiredPairingCapabilities];
    v8 = [(HMDCapabilityFlags *)v6 hasCapabilities:requiredPairingCapabilities2];

    v9 = *MEMORY[0x277D85DE8];
    return v8;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@No required capabilities found.", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *MEMORY[0x277D85DE8];
    return 1;
  }
}

- (id)addTransactionForHome:(id)home
{
  v27.receiver = self;
  v27.super_class = HMDUnassociatedAppleMediaAccessory;
  v4 = [(HMDUnassociatedMediaAccessory *)&v27 addTransactionForHome:home];
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
    device = [(HMDUnassociatedAppleMediaAccessory *)self device];
    v8 = device;
    if (device)
    {
      identifier = [device identifier];
      uUIDString = [identifier UUIDString];
      [v6 setDeviceUUID:uUIDString];

      [v6 setDevice:v8];
    }

    category = [(HMDUnassociatedAccessory *)self category];
    categoryType = [category categoryType];
    v13 = [categoryType isEqualToString:*MEMORY[0x277CCE8B0]];

    v14 = MEMORY[0x277CD1680];
    category2 = [(HMDUnassociatedAccessory *)self category];
    v16 = [v14 categoryIdentifierForCategory:category2];
    [v6 setInitialCategoryIdentifier:v16];

    model = [(HMDUnassociatedAppleMediaAccessory *)self model];
    [v6 setModel:model];

    model2 = [(HMDUnassociatedAppleMediaAccessory *)self model];
    [v6 setInitialModel:model2];

    serialNumber = [(HMDUnassociatedAppleMediaAccessory *)self serialNumber];
    [v6 setSerialNumber:serialNumber];

    softwareVersion = [(HMDUnassociatedAppleMediaAccessory *)self softwareVersion];
    [v6 setSoftwareVersion:softwareVersion];

    if (v13)
    {
      if ([(HMDUnassociatedAppleMediaAccessory *)self supportedStereoPairVersions])
      {
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUnassociatedAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
        [v6 setSupportedStereoPairVersions:v21];
      }

      else
      {
        [v6 setSupportedStereoPairVersions:&unk_286627CE8];
      }
    }

    [v6 setManufacturer:@"Apple Inc."];
    [v6 setInitialManufacturer:@"Apple Inc."];
    v22 = objc_alloc(MEMORY[0x277CCAD78]);
    idsIdentifierString = [(HMDUnassociatedAppleMediaAccessory *)self idsIdentifierString];
    v24 = [v22 initWithUUIDString:idsIdentifierString];

    if (v24)
    {
      [v6 setIdsIdentifier:v24];
    }

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDUnassociatedAppleMediaAccessory productColor](self, "productColor")}];
    [v6 setProductColor:v25];
  }

  return v4;
}

- (void)setDevice:(id)device
{
  objc_storeStrong(&self->_device, device);
  deviceCopy = device;
  name = [deviceCopy name];
  [(HMDUnassociatedAccessory *)self setName:name];

  v7 = MEMORY[0x277CD1680];
  productInfo = [deviceCopy productInfo];
  v8 = [v7 categoryForProductInfo:productInfo];

  [(HMDUnassociatedAccessory *)self setCategory:v8];
}

- (void)setSoftwareVersion:(id)version
{
  versionCopy = version;
  if (versionCopy)
  {
    v7 = versionCopy;
    os_unfair_recursive_lock_lock_with_options();
    softwareVersion = self->_softwareVersion;
    if ((HMFEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_softwareVersion, version);
    }

    os_unfair_recursive_lock_unlock();
    versionCopy = v7;
  }
}

- (HMFSoftwareVersion)softwareVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_softwareVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setSerialNumber:(id)number
{
  numberCopy = number;
  if (numberCopy)
  {
    v8 = numberCopy;
    os_unfair_recursive_lock_lock_with_options();
    serialNumber = self->_serialNumber;
    if ((HMFEqualObjects() & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_serialNumber;
      self->_serialNumber = v6;
    }

    os_unfair_recursive_lock_unlock();
    numberCopy = v8;
  }
}

- (NSString)serialNumber
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_serialNumber;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v7 = modelCopy;
    os_unfair_recursive_lock_lock_with_options();
    v5 = [v7 copy];
    model = self->_model;
    self->_model = v5;

    os_unfair_recursive_lock_unlock();
    modelCopy = v7;
  }
}

- (NSString)model
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_model;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (HMDUnassociatedAppleMediaAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category requiredPairingCapabilities:(unint64_t)capabilities minimumPairingSoftware:(id)software productColor:(int64_t)color idsIdentifierString:(id)string rawAccessoryCapabilities:(id)self0 rawResidentCapabilities:(id)self1 messageDispatcher:(id)self2
{
  identifierCopy = identifier;
  softwareCopy = software;
  stringCopy = string;
  accessoryCapabilitiesCopy = accessoryCapabilities;
  residentCapabilitiesCopy = residentCapabilities;
  v32.receiver = self;
  v32.super_class = HMDUnassociatedAppleMediaAccessory;
  v18 = [(HMDUnassociatedMediaAccessory *)&v32 initWithIdentifier:identifierCopy name:name category:category messageDispatcher:dispatcher];
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277CCAD78]);
    v20 = +[HMDUnassociatedAppleMediaAccessory namespace];
    v21 = [identifierCopy dataUsingEncoding:4];
    v22 = [v19 initWithNamespace:v20 data:v21];
    uuid = v18->super.super._uuid;
    v18->super.super._uuid = v22;

    v24 = [[HMDCapabilityFlags alloc] initWithCapabilityOptions:capabilities];
    requiredPairingCapabilities = v18->_requiredPairingCapabilities;
    v18->_requiredPairingCapabilities = v24;

    objc_storeStrong(&v18->_minimumRequiredPairingSoftwareVersion, software);
    v18->_productColor = color;
    objc_storeStrong(&v18->_idsIdentifierString, string);
    objc_storeStrong(&v18->_rawResidentCapabilities, residentCapabilities);
    objc_storeStrong(&v18->_rawAccessoryCapabilities, accessoryCapabilities);
  }

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_34262 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_34262, &__block_literal_global_18);
  }

  v3 = logCategory__hmf_once_v9_34263;

  return v3;
}

uint64_t __49__HMDUnassociatedAppleMediaAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_34263;
  logCategory__hmf_once_v9_34263 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)namespace
{
  if (namespace_onceToken_34267 != -1)
  {
    dispatch_once(&namespace_onceToken_34267, &__block_literal_global_34268);
  }

  v3 = namespace_namespace_34269;

  return v3;
}

uint64_t __47__HMDUnassociatedAppleMediaAccessory_namespace__block_invoke()
{
  v0 = [MEMORY[0x277CCAD78] UUID];
  v1 = namespace_namespace_34269;
  namespace_namespace_34269 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end