@interface HMDUnassociatedAppleMediaAccessory
+ (id)logCategory;
+ (id)namespace;
- (BOOL)canPairGivenCapabilities:(unint64_t)a3;
- (HMDUnassociatedAppleMediaAccessory)initWithCoder:(id)a3;
- (HMDUnassociatedAppleMediaAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 requiredPairingCapabilities:(unint64_t)a6 minimumPairingSoftware:(id)a7 productColor:(int64_t)a8 idsIdentifierString:(id)a9 rawAccessoryCapabilities:(id)a10 rawResidentCapabilities:(id)a11 messageDispatcher:(id)a12;
- (HMFSoftwareVersion)softwareVersion;
- (NSString)model;
- (NSString)serialNumber;
- (id)addTransactionForHome:(id)a3;
- (id)dumpDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setDevice:(id)a3;
- (void)setModel:(id)a3;
- (void)setSerialNumber:(id)a3;
- (void)setSoftwareVersion:(id)a3;
@end

@implementation HMDUnassociatedAppleMediaAccessory

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMDUnassociatedAppleMediaAccessory;
  [(HMDUnassociatedAccessory *)&v18 encodeWithCoder:v4];
  v5 = [(HMDUnassociatedAppleMediaAccessory *)self model];
  [v4 encodeObject:v5 forKey:@"HM.model"];

  v6 = [(HMDUnassociatedAppleMediaAccessory *)self serialNumber];
  [v4 encodeObject:v6 forKey:@"HM.serialNumber"];

  v7 = [(HMDUnassociatedAppleMediaAccessory *)self softwareVersion];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CCEF18]];

  v8 = [(HMDUnassociatedAppleMediaAccessory *)self device];
  [v4 encodeObject:v8 forKey:@"HM.device"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUnassociatedAppleMediaAccessory supportedStereoPairVersions](self, "supportedStereoPairVersions")}];
  [v4 encodeObject:v9 forKey:*MEMORY[0x277CD11A8]];

  v10 = [(HMDUnassociatedAppleMediaAccessory *)self minimumRequiredPairingSoftwareVersion];

  if (v10)
  {
    v11 = [(HMDUnassociatedAppleMediaAccessory *)self minimumRequiredPairingSoftwareVersion];
    [v4 encodeObject:v11 forKey:@"HMD.un.psv"];
  }

  v12 = [(HMDUnassociatedAppleMediaAccessory *)self requiredPairingCapabilities];
  [v4 encodeObject:v12 forKey:@"HMD.un.pcap"];

  [v4 encodeInteger:-[HMDUnassociatedAppleMediaAccessory variant](self forKey:{"variant"), @"HMD.un.var"}];
  v13 = [(HMDUnassociatedAppleMediaAccessory *)self productColor];
  [v4 encodeInteger:v13 forKey:*MEMORY[0x277CD0C90]];
  v14 = [(HMDUnassociatedAppleMediaAccessory *)self idsIdentifierString];
  [v4 encodeObject:v14 forKey:@"HMD.un.idsId"];

  v15 = [(HMDUnassociatedAppleMediaAccessory *)self rawResidentCapabilities];
  [v4 encodeObject:v15 forKey:@"HMD.un.recap"];

  v16 = [(HMDUnassociatedAppleMediaAccessory *)self rawAccessoryCapabilities];
  [v4 encodeObject:v16 forKey:@"HMD.un.accap"];

  if ([v4 hmd_isForXPCTransport])
  {
    v17 = [(HMDUnassociatedAppleMediaAccessory *)self isCurrentAccessory];
    [v4 encodeBool:v17 forKey:*MEMORY[0x277CCE9F0]];
  }
}

- (HMDUnassociatedAppleMediaAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = HMDUnassociatedAppleMediaAccessory;
  v5 = [(HMDUnassociatedAccessory *)&v26 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.model"];
    model = v5->_model;
    v5->_model = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEF18]];
    softwareVersion = v5->_softwareVersion;
    v5->_softwareVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
    device = v5->_device;
    v5->_device = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD11A8]];
    v5->_supportedStereoPairVersions = [v14 unsignedIntegerValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.psv"];
    minimumRequiredPairingSoftwareVersion = v5->_minimumRequiredPairingSoftwareVersion;
    v5->_minimumRequiredPairingSoftwareVersion = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.pcap"];
    requiredPairingCapabilities = v5->_requiredPairingCapabilities;
    v5->_requiredPairingCapabilities = v17;

    v5->_variant = [v4 decodeIntegerForKey:@"HMD.un.var"];
    v5->_productColor = [v4 decodeIntegerForKey:*MEMORY[0x277CD0C90]];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.idsId"];
    idsIdentifierString = v5->_idsIdentifierString;
    v5->_idsIdentifierString = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.recap"];
    rawResidentCapabilities = v5->_rawResidentCapabilities;
    v5->_rawResidentCapabilities = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMD.un.accap"];
    rawAccessoryCapabilities = v5->_rawAccessoryCapabilities;
    v5->_rawAccessoryCapabilities = v23;
  }

  return v5;
}

- (id)dumpDescription
{
  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v14 = MEMORY[0x277CCACA8];
  v3 = [(HMDUnassociatedAccessory *)self name];
  v15 = [(HMDUnassociatedAccessory *)self uuid];
  v4 = [v15 UUIDString];
  v5 = [(HMDUnassociatedAccessory *)self category];
  v6 = [(HMDUnassociatedAccessory *)self identifier];
  v7 = [(HMDUnassociatedAppleMediaAccessory *)self device];
  v8 = [(HMDUnassociatedAppleMediaAccessory *)self minimumRequiredPairingSoftwareVersion];
  v9 = [(HMDUnassociatedAppleMediaAccessory *)self requiredPairingCapabilities];
  [(HMDUnassociatedAppleMediaAccessory *)self productColor];
  v10 = HMFProductColorToString();
  v11 = [(HMDUnassociatedAppleMediaAccessory *)self idsIdentifierString];
  v12 = [v14 stringWithFormat:@"WHA Accessory '%@': uuid %@  category %@ identifier %@  device: %@, requiredSoftwareVersion:%@, requiredPairingCapabilities: %@, productColor: %@, idsIdentifier: %@", v3, v4, v5, v6, v7, v8, v9, v10, v11];

  [v16 setObject:v12 forKey:*MEMORY[0x277D0F170]];

  return v16;
}

- (BOOL)canPairGivenCapabilities:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUnassociatedAppleMediaAccessory *)self requiredPairingCapabilities];

  if (v5)
  {
    v6 = [[HMDCapabilityFlags alloc] initWithCapabilityOptions:a3];
    v7 = [(HMDUnassociatedAppleMediaAccessory *)self requiredPairingCapabilities];
    v8 = [(HMDCapabilityFlags *)v6 hasCapabilities:v7];

    v9 = *MEMORY[0x277D85DE8];
    return v8;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
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

- (id)addTransactionForHome:(id)a3
{
  v27.receiver = self;
  v27.super_class = HMDUnassociatedAppleMediaAccessory;
  v4 = [(HMDUnassociatedMediaAccessory *)&v27 addTransactionForHome:a3];
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
    v7 = [(HMDUnassociatedAppleMediaAccessory *)self device];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 identifier];
      v10 = [v9 UUIDString];
      [v6 setDeviceUUID:v10];

      [v6 setDevice:v8];
    }

    v11 = [(HMDUnassociatedAccessory *)self category];
    v12 = [v11 categoryType];
    v13 = [v12 isEqualToString:*MEMORY[0x277CCE8B0]];

    v14 = MEMORY[0x277CD1680];
    v15 = [(HMDUnassociatedAccessory *)self category];
    v16 = [v14 categoryIdentifierForCategory:v15];
    [v6 setInitialCategoryIdentifier:v16];

    v17 = [(HMDUnassociatedAppleMediaAccessory *)self model];
    [v6 setModel:v17];

    v18 = [(HMDUnassociatedAppleMediaAccessory *)self model];
    [v6 setInitialModel:v18];

    v19 = [(HMDUnassociatedAppleMediaAccessory *)self serialNumber];
    [v6 setSerialNumber:v19];

    v20 = [(HMDUnassociatedAppleMediaAccessory *)self softwareVersion];
    [v6 setSoftwareVersion:v20];

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
    v23 = [(HMDUnassociatedAppleMediaAccessory *)self idsIdentifierString];
    v24 = [v22 initWithUUIDString:v23];

    if (v24)
    {
      [v6 setIdsIdentifier:v24];
    }

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDUnassociatedAppleMediaAccessory productColor](self, "productColor")}];
    [v6 setProductColor:v25];
  }

  return v4;
}

- (void)setDevice:(id)a3
{
  objc_storeStrong(&self->_device, a3);
  v5 = a3;
  v6 = [v5 name];
  [(HMDUnassociatedAccessory *)self setName:v6];

  v7 = MEMORY[0x277CD1680];
  v9 = [v5 productInfo];
  v8 = [v7 categoryForProductInfo:v9];

  [(HMDUnassociatedAccessory *)self setCategory:v8];
}

- (void)setSoftwareVersion:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    os_unfair_recursive_lock_lock_with_options();
    softwareVersion = self->_softwareVersion;
    if ((HMFEqualObjects() & 1) == 0)
    {
      objc_storeStrong(&self->_softwareVersion, a3);
    }

    os_unfair_recursive_lock_unlock();
    v5 = v7;
  }
}

- (HMFSoftwareVersion)softwareVersion
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_softwareVersion;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setSerialNumber:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    os_unfair_recursive_lock_lock_with_options();
    serialNumber = self->_serialNumber;
    if ((HMFEqualObjects() & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_serialNumber;
      self->_serialNumber = v6;
    }

    os_unfair_recursive_lock_unlock();
    v4 = v8;
  }
}

- (NSString)serialNumber
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_serialNumber;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)setModel:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    os_unfair_recursive_lock_lock_with_options();
    v5 = [v7 copy];
    model = self->_model;
    self->_model = v5;

    os_unfair_recursive_lock_unlock();
    v4 = v7;
  }
}

- (NSString)model
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_model;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (HMDUnassociatedAppleMediaAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 requiredPairingCapabilities:(unint64_t)a6 minimumPairingSoftware:(id)a7 productColor:(int64_t)a8 idsIdentifierString:(id)a9 rawAccessoryCapabilities:(id)a10 rawResidentCapabilities:(id)a11 messageDispatcher:(id)a12
{
  v16 = a3;
  v31 = a7;
  v30 = a9;
  v29 = a10;
  v17 = a11;
  v32.receiver = self;
  v32.super_class = HMDUnassociatedAppleMediaAccessory;
  v18 = [(HMDUnassociatedMediaAccessory *)&v32 initWithIdentifier:v16 name:a4 category:a5 messageDispatcher:a12];
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277CCAD78]);
    v20 = +[HMDUnassociatedAppleMediaAccessory namespace];
    v21 = [v16 dataUsingEncoding:4];
    v22 = [v19 initWithNamespace:v20 data:v21];
    uuid = v18->super.super._uuid;
    v18->super.super._uuid = v22;

    v24 = [[HMDCapabilityFlags alloc] initWithCapabilityOptions:a6];
    requiredPairingCapabilities = v18->_requiredPairingCapabilities;
    v18->_requiredPairingCapabilities = v24;

    objc_storeStrong(&v18->_minimumRequiredPairingSoftwareVersion, a7);
    v18->_productColor = a8;
    objc_storeStrong(&v18->_idsIdentifierString, a9);
    objc_storeStrong(&v18->_rawResidentCapabilities, a11);
    objc_storeStrong(&v18->_rawAccessoryCapabilities, a10);
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