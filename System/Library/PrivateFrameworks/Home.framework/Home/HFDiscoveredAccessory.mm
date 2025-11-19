@interface HFDiscoveredAccessory
+ (id)discoveredAccessoryFromSetupDescription:(id)a3;
- (BOOL)requiresSetupCode;
- (BOOL)requiresSoftwareUpdate;
- (HFDiscoveredAccessory)init;
- (HFDiscoveredAccessory)initWithAccessory:(id)a3;
- (HFDiscoveredAccessory)initWithAccessoryUUID:(id)a3 accessoryName:(id)a4 accessoryCategory:(id)a5;
- (HFDiscoveredAccessory)initWithSharingDevice:(id)a3;
- (HMAccessoryCategory)category;
- (NSString)description;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (id)_descriptionForStatus:(unint64_t)a3;
- (id)identify;
- (void)updateStatus:(unint64_t)a3 error:(id)a4;
@end

@implementation HFDiscoveredAccessory

- (HFDiscoveredAccessory)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessory_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFDiscoveredAccessory.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HFDiscoveredAccessory init]", v5}];

  return 0;
}

- (HFDiscoveredAccessory)initWithAccessory:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFDiscoveredAccessory;
  v6 = [(HFDiscoveredAccessory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessory, a3);
    v8 = [MEMORY[0x277CBEAA8] date];
    discoveryDate = v7->_discoveryDate;
    v7->_discoveryDate = v8;

    v7->_status = 0;
  }

  return v7;
}

- (HFDiscoveredAccessory)initWithSharingDevice:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFDiscoveredAccessory;
  v6 = [(HFDiscoveredAccessory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharingDevice, a3);
    v8 = [MEMORY[0x277CBEAA8] date];
    discoveryDate = v7->_discoveryDate;
    v7->_discoveryDate = v8;

    v7->_status = 0;
  }

  return v7;
}

- (HFDiscoveredAccessory)initWithAccessoryUUID:(id)a3 accessoryName:(id)a4 accessoryCategory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HFDiscoveredAccessory;
  v12 = [(HFDiscoveredAccessory *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uniqueIdentifier, a3);
    objc_storeStrong(&v13->_name, a4);
    objc_storeStrong(&v13->_category, a5);
    v14 = [MEMORY[0x277CBEAA8] date];
    discoveryDate = v13->_discoveryDate;
    v13->_discoveryDate = v14;

    v13->_status = 0;
  }

  return v13;
}

+ (id)discoveredAccessoryFromSetupDescription:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 accessoryUUID];
  v7 = [v4 accessoryName];
  v8 = [v4 category];

  v9 = [v5 initWithAccessoryUUID:v6 accessoryName:v7 accessoryCategory:v8];

  return v9;
}

- (void)updateStatus:(unint64_t)a3 error:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (a3 != 3 && v6)
  {
    NSLog(&cfstr_ErrorCanOnlyBe.isa);
    self->_status = a3;
LABEL_7:
    error = self->_error;
    self->_error = 0;
    goto LABEL_8;
  }

  self->_status = a3;
  if (a3 != 3)
  {
    goto LABEL_7;
  }

  if (self->_error)
  {
    goto LABEL_9;
  }

  v7 = v6;
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

  v6 = [(HFDiscoveredAccessory *)self error];
  v7 = [v3 appendObject:v6 withName:@"error" skipIfNil:1];

  v8 = [(HFDiscoveredAccessory *)self accessory];
  v9 = [v8 hf_prettyDescription];
  v10 = [v3 appendObject:v9 withName:@"accessory" skipIfNil:1];

  v11 = [(HFDiscoveredAccessory *)self sharingDevice];
  v12 = [v3 appendObject:v11 withName:@"sharingDevice" skipIfNil:1];

  v13 = [(HFDiscoveredAccessory *)self uniqueIdentifier];
  v14 = [v3 appendObject:v13 withName:@"uniqueIdentifier" skipIfNil:1];

  v15 = [(HFDiscoveredAccessory *)self name];
  v16 = [v3 appendObject:v15 withName:@"name" skipIfNil:1];

  v17 = [(HFDiscoveredAccessory *)self category];
  v18 = [v3 appendObject:v17 withName:@"category" skipIfNil:1];

  v19 = [v3 build];

  return v19;
}

- (NSUUID)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    v3 = uniqueIdentifier;
    goto LABEL_8;
  }

  v5 = [(HFDiscoveredAccessory *)self accessory];

  if (v5)
  {
    v6 = [(HFDiscoveredAccessory *)self accessory];
    v7 = [v6 uuid];
LABEL_7:
    v3 = v7;

    goto LABEL_8;
  }

  v8 = [(HFDiscoveredAccessory *)self sharingDevice];

  if (v8)
  {
    v6 = [(HFDiscoveredAccessory *)self sharingDevice];
    v7 = [v6 identifier];
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
    v3 = name;
    goto LABEL_11;
  }

  v5 = [(HFDiscoveredAccessory *)self accessory];

  if (v5)
  {
    v6 = [(HFDiscoveredAccessory *)self accessory];
    v3 = [v6 name];
  }

  else
  {
    v3 = [(HFDiscoveredAccessory *)self sharingDevice];

    if (!v3)
    {
      goto LABEL_11;
    }

    v6 = [(HFDiscoveredAccessory *)self sharingDevice];
    v7 = [v6 name];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277CD1650] hf_userFriendlyLocalizedCapitalizedDescription:*MEMORY[0x277CCE8B0]];
    }

    v3 = v9;
  }

LABEL_11:

  return v3;
}

- (HMAccessoryCategory)category
{
  category = self->_category;
  if (category)
  {
    v3 = category;
  }

  else
  {
    v5 = [(HFDiscoveredAccessory *)self accessory];

    if (v5)
    {
      v6 = [(HFDiscoveredAccessory *)self accessory];
      v3 = [v6 category];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)requiresSetupCode
{
  v3 = [(HFDiscoveredAccessory *)self accessory];

  if (v3)
  {
    v4 = [(HFDiscoveredAccessory *)self accessory];
    v5 = [v4 knownToSystemCommissioner];

    if (v5)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = [(HFDiscoveredAccessory *)self accessory];
      v6 = [v7 associationOptions] & 1;
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
  v3 = [(HFDiscoveredAccessory *)self accessory];

  if (v3)
  {
    v4 = [(HFDiscoveredAccessory *)self accessory];
    v5 = ([v4 associationOptions] >> 1) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)identify
{
  v3 = [(HFDiscoveredAccessory *)self accessory];

  if (v3)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x277D2C900];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__HFDiscoveredAccessory_identify__block_invoke;
    v7[3] = &unk_277DF4F68;
    objc_copyWeak(&v8, &location);
    v5 = [v4 futureWithBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v5;
}

void __33__HFDiscoveredAccessory_identify__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained accessory];
  v5 = [v3 errorOnlyCompletionHandlerAdapter];

  [v4 identifyWithCompletionHandler:v5];
}

- (id)_descriptionForStatus:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_277DF7838[a3];
  }
}

@end