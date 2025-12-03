@interface HULocationDevice
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HULocationDevice)initWithHMDevice:(id)device;
- (HULocationDevice)initWithIdentifier:(id)identifier name:(id)name currentDevice:(BOOL)device;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HULocationDevice

- (HULocationDevice)initWithHMDevice:(id)device
{
  deviceCopy = device;
  uniqueIdentifier = [deviceCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  name = [deviceCopy name];
  isCurrentDevice = [deviceCopy isCurrentDevice];

  v9 = [(HULocationDevice *)self initWithIdentifier:uUIDString name:name currentDevice:isCurrentDevice];
  return v9;
}

- (HULocationDevice)initWithIdentifier:(id)identifier name:(id)name currentDevice:(BOOL)device
{
  identifierCopy = identifier;
  nameCopy = name;
  if (![identifierCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HULocationDeviceManager.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];
  }

  v16.receiver = self;
  v16.super_class = HULocationDevice;
  v12 = [(HULocationDevice *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_name, name);
    v13->_currentDevice = device;
  }

  return v13;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_624 != -1)
  {
    dispatch_once(&_MergedGlobals_624, &__block_literal_global_88_2);
  }

  v3 = qword_281121F60;

  return v3;
}

void __31__HULocationDevice_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_95];
  v2 = [v0 appendCharacteristic:&__block_literal_global_97];
  v3 = [v0 appendCharacteristic:&__block_literal_global_99_1];
  v4 = [v0 build];

  v5 = qword_281121F60;
  qword_281121F60 = v4;
}

uint64_t __31__HULocationDevice_na_identity__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isCurrentDevice];

  return [v2 numberWithBool:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  identifier = [(HULocationDevice *)self identifier];
  [v3 appendString:identifier withName:@"ID"];

  name = [(HULocationDevice *)self name];
  [v3 appendString:name withName:@"name"];

  v6 = [v3 appendBool:-[HULocationDevice isCurrentDevice](self withName:{"isCurrentDevice"), @"currentDevice"}];
  build = [v3 build];

  return build;
}

@end