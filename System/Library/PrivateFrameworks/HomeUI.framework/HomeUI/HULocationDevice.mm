@interface HULocationDevice
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HULocationDevice)initWithHMDevice:(id)a3;
- (HULocationDevice)initWithIdentifier:(id)a3 name:(id)a4 currentDevice:(BOOL)a5;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation HULocationDevice

- (HULocationDevice)initWithHMDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  v6 = [v5 UUIDString];
  v7 = [v4 name];
  v8 = [v4 isCurrentDevice];

  v9 = [(HULocationDevice *)self initWithIdentifier:v6 name:v7 currentDevice:v8];
  return v9;
}

- (HULocationDevice)initWithIdentifier:(id)a3 name:(id)a4 currentDevice:(BOOL)a5
{
  v10 = a3;
  v11 = a4;
  if (![v10 length])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HULocationDeviceManager.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];
  }

  v16.receiver = self;
  v16.super_class = HULocationDevice;
  v12 = [(HULocationDevice *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_name, a4);
    v13->_currentDevice = a5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HULocationDevice *)self identifier];
  [v3 appendString:v4 withName:@"ID"];

  v5 = [(HULocationDevice *)self name];
  [v3 appendString:v5 withName:@"name"];

  v6 = [v3 appendBool:-[HULocationDevice isCurrentDevice](self withName:{"isCurrentDevice"), @"currentDevice"}];
  v7 = [v3 build];

  return v7;
}

@end