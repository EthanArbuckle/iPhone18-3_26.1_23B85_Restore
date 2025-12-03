@interface HFDiscoveredAccessory
+ (id)discoveredAccessoryFromSetupDescription:(id)description;
- (BOOL)requiresSetupCode;
- (BOOL)requiresSoftwareUpdate;
- (HFDiscoveredAccessory)init;
- (HFDiscoveredAccessory)initWithAccessory:(id)accessory;
- (HFDiscoveredAccessory)initWithAccessoryUUID:(id)d accessoryName:(id)name accessoryCategory:(id)category;
- (HFDiscoveredAccessory)initWithSharingDevice:(id)device;
- (HMAccessoryCategory)category;
- (NSString)description;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (id)_descriptionForStatus:(unint64_t)status;
- (id)identify;
- (void)updateStatus:(unint64_t)status error:(id)error;
@end

@implementation HFDiscoveredAccessory

- (HFDiscoveredAccessory)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessory_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFDiscoveredAccessory.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HFDiscoveredAccessory init]", v5}];

  return 0;
}

- (HFDiscoveredAccessory)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v11.receiver = self;
  v11.super_class = HFDiscoveredAccessory;
  v6 = [(HFDiscoveredAccessory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessory, accessory);
    date = [MEMORY[0x277CBEAA8] date];
    discoveryDate = v7->_discoveryDate;
    v7->_discoveryDate = date;

    v7->_status = 0;
  }

  return v7;
}

- (HFDiscoveredAccessory)initWithSharingDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = HFDiscoveredAccessory;
  v6 = [(HFDiscoveredAccessory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharingDevice, device);
    date = [MEMORY[0x277CBEAA8] date];
    discoveryDate = v7->_discoveryDate;
    v7->_discoveryDate = date;

    v7->_status = 0;
  }

  return v7;
}

- (HFDiscoveredAccessory)initWithAccessoryUUID:(id)d accessoryName:(id)name accessoryCategory:(id)category
{
  dCopy = d;
  nameCopy = name;
  categoryCopy = category;
  v17.receiver = self;
  v17.super_class = HFDiscoveredAccessory;
  v12 = [(HFDiscoveredAccessory *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uniqueIdentifier, d);
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v13->_category, category);
    date = [MEMORY[0x277CBEAA8] date];
    discoveryDate = v13->_discoveryDate;
    v13->_discoveryDate = date;

    v13->_status = 0;
  }

  return v13;
}

+ (id)discoveredAccessoryFromSetupDescription:(id)description
{
  descriptionCopy = description;
  v5 = [self alloc];
  accessoryUUID = [descriptionCopy accessoryUUID];
  accessoryName = [descriptionCopy accessoryName];
  category = [descriptionCopy category];

  v9 = [v5 initWithAccessoryUUID:accessoryUUID accessoryName:accessoryName accessoryCategory:category];

  return v9;
}

- (void)updateStatus:(unint64_t)status error:(id)error
{
  errorCopy = error;
  v9 = errorCopy;
  if (status != 3 && errorCopy)
  {
    NSLog(&cfstr_ErrorCanOnlyBe.isa);
    self->_status = status;
LABEL_7:
    error = self->_error;
    self->_error = 0;
    goto LABEL_8;
  }

  self->_status = status;
  if (status != 3)
  {
    goto LABEL_7;
  }

  if (self->_error)
  {
    goto LABEL_9;
  }

  v7 = errorCopy;
  error = self->_error;
  self->_error = v7;
LABEL_8:

LABEL_9:
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFDiscoveredAccessory *)self _descriptionForStatus:[(HFDiscoveredAccessory *)self status]];
  v5 = [v3 appendObject:v4 withName:@"status"];

  error = [(HFDiscoveredAccessory *)self error];
  v7 = [v3 appendObject:error withName:@"error" skipIfNil:1];

  accessory = [(HFDiscoveredAccessory *)self accessory];
  hf_prettyDescription = [accessory hf_prettyDescription];
  v10 = [v3 appendObject:hf_prettyDescription withName:@"accessory" skipIfNil:1];

  sharingDevice = [(HFDiscoveredAccessory *)self sharingDevice];
  v12 = [v3 appendObject:sharingDevice withName:@"sharingDevice" skipIfNil:1];

  uniqueIdentifier = [(HFDiscoveredAccessory *)self uniqueIdentifier];
  v14 = [v3 appendObject:uniqueIdentifier withName:@"uniqueIdentifier" skipIfNil:1];

  name = [(HFDiscoveredAccessory *)self name];
  v16 = [v3 appendObject:name withName:@"name" skipIfNil:1];

  category = [(HFDiscoveredAccessory *)self category];
  v18 = [v3 appendObject:category withName:@"category" skipIfNil:1];

  build = [v3 build];

  return build;
}

- (NSUUID)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    v3 = uniqueIdentifier;
    goto LABEL_8;
  }

  accessory = [(HFDiscoveredAccessory *)self accessory];

  if (accessory)
  {
    accessory2 = [(HFDiscoveredAccessory *)self accessory];
    uuid = [accessory2 uuid];
LABEL_7:
    v3 = uuid;

    goto LABEL_8;
  }

  sharingDevice = [(HFDiscoveredAccessory *)self sharingDevice];

  if (sharingDevice)
  {
    accessory2 = [(HFDiscoveredAccessory *)self sharingDevice];
    uuid = [accessory2 identifier];
    goto LABEL_7;
  }

  NSLog(&cfstr_Hfdiscoveredac_1.isa, self);
  v3 = 0;
LABEL_8:

  return v3;
}

- (NSString)name
{
  name = self->_name;
  if (name)
  {
    name = name;
    goto LABEL_11;
  }

  accessory = [(HFDiscoveredAccessory *)self accessory];

  if (accessory)
  {
    accessory2 = [(HFDiscoveredAccessory *)self accessory];
    name = [accessory2 name];
  }

  else
  {
    name = [(HFDiscoveredAccessory *)self sharingDevice];

    if (!name)
    {
      goto LABEL_11;
    }

    accessory2 = [(HFDiscoveredAccessory *)self sharingDevice];
    name2 = [accessory2 name];
    v8 = name2;
    if (name2)
    {
      v9 = name2;
    }

    else
    {
      v9 = [MEMORY[0x277CD1650] hf_userFriendlyLocalizedCapitalizedDescription:*MEMORY[0x277CCE8B0]];
    }

    name = v9;
  }

LABEL_11:

  return name;
}

- (HMAccessoryCategory)category
{
  category = self->_category;
  if (category)
  {
    category = category;
  }

  else
  {
    accessory = [(HFDiscoveredAccessory *)self accessory];

    if (accessory)
    {
      accessory2 = [(HFDiscoveredAccessory *)self accessory];
      category = [accessory2 category];
    }

    else
    {
      category = 0;
    }
  }

  return category;
}

- (BOOL)requiresSetupCode
{
  accessory = [(HFDiscoveredAccessory *)self accessory];

  if (accessory)
  {
    accessory2 = [(HFDiscoveredAccessory *)self accessory];
    knownToSystemCommissioner = [accessory2 knownToSystemCommissioner];

    if (knownToSystemCommissioner)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      accessory3 = [(HFDiscoveredAccessory *)self accessory];
      v6 = [accessory3 associationOptions] & 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)requiresSoftwareUpdate
{
  accessory = [(HFDiscoveredAccessory *)self accessory];

  if (accessory)
  {
    accessory2 = [(HFDiscoveredAccessory *)self accessory];
    v5 = ([accessory2 associationOptions] >> 1) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)identify
{
  accessory = [(HFDiscoveredAccessory *)self accessory];

  if (accessory)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277D2C900];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__HFDiscoveredAccessory_identify__block_invoke;
    v7[3] = &unk_277DF4F68;
    objc_copyWeak(&v8, &location);
    futureWithNoResult = [v4 futureWithBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __33__HFDiscoveredAccessory_identify__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained accessory];
  v5 = [v3 errorOnlyCompletionHandlerAdapter];

  [v4 identifyWithCompletionHandler:v5];
}

- (id)_descriptionForStatus:(unint64_t)status
{
  if (status > 3)
  {
    return 0;
  }

  else
  {
    return off_277DF7838[status];
  }
}

@end