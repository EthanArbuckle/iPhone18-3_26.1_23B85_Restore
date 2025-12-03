@interface HMDTargetConfiguration
- (BOOL)isEqual:(id)equal;
- (HMDTargetConfiguration)init;
- (HMDTargetConfiguration)initWithAccessory:(id)accessory buttonConfiguration:(id)configuration;
- (HMDTargetConfiguration)initWithIdentifier:(id)identifier name:(id)name category:(int64_t)category buttonConfiguration:(id)configuration;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDTargetConfiguration

- (unint64_t)hash
{
  identifier = [(HMDTargetConfiguration *)self identifier];
  unsignedIntegerValue = [identifier unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v10 = 1;
    }

    else
    {
      v5 = equalCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      identifier = [(HMDTargetConfiguration *)self identifier];
      identifier2 = [(HMDTargetConfiguration *)v7 identifier];

      v10 = [identifier isEqual:identifier2];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMDTargetConfiguration)initWithAccessory:(id)accessory buttonConfiguration:(id)configuration
{
  v35 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  configurationCopy = configuration;
  home = [accessoryCopy home];
  if (home)
  {
    v9 = MEMORY[0x277CCABB0];
    uuid = [accessoryCopy uuid];
    uuid2 = [home uuid];
    v12 = [v9 numberWithUnsignedInt:{identifierForTargetWithUUID(uuid, uuid2)}];

    name = [accessoryCopy name];
    category = [accessoryCopy category];
    v15 = mapTargetCategory(category);

    v16 = [(HMDTargetConfiguration *)self initWithIdentifier:v12 name:name category:v15 buttonConfiguration:configurationCopy];
    if (v16)
    {
      uuid3 = [accessoryCopy uuid];
      uuid = v16->_uuid;
      v16->_uuid = uuid3;
    }

    selfCopy = v16;

    v20 = selfCopy;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      name2 = [accessoryCopy name];
      uuid4 = [accessoryCopy uuid];
      uUIDString = [uuid4 UUIDString];
      v29 = 138543874;
      v30 = v23;
      v31 = 2112;
      v32 = name2;
      v33 = 2112;
      v34 = uUIDString;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Attempting to create a target with an accessory %@/%@ that is not configured with a home", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HMDTargetConfiguration *)self name];
  identifier = [(HMDTargetConfiguration *)self identifier];
  category = [(HMDTargetConfiguration *)self category];
  v7 = @"Unknown";
  if (category == 25)
  {
    v7 = @"HomePod";
  }

  if (category == 24)
  {
    v7 = @"AppleTV";
  }

  v8 = v7;
  buttonConfiguration = [(HMDTargetConfiguration *)self buttonConfiguration];
  v10 = buttonConfigurationAsString(buttonConfiguration);
  v11 = [v3 stringWithFormat:@"Name: %@, Identifier: %@, Category: %@, ButtonConfiguration: %@", name, identifier, v8, v10];

  return v11;
}

- (HMDTargetConfiguration)initWithIdentifier:(id)identifier name:(id)name category:(int64_t)category buttonConfiguration:(id)configuration
{
  identifierCopy = identifier;
  nameCopy = name;
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = HMDTargetConfiguration;
  v14 = [(HMDTargetConfiguration *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, identifier);
    v16 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v16;

    v15->_category = category;
    v18 = [configurationCopy copy];
    buttonConfiguration = v15->_buttonConfiguration;
    v15->_buttonConfiguration = v18;
  }

  return v15;
}

- (HMDTargetConfiguration)init
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

@end