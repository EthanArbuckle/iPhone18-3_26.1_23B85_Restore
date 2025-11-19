@interface HMDTargetConfiguration
- (BOOL)isEqual:(id)a3;
- (HMDTargetConfiguration)init;
- (HMDTargetConfiguration)initWithAccessory:(id)a3 buttonConfiguration:(id)a4;
- (HMDTargetConfiguration)initWithIdentifier:(id)a3 name:(id)a4 category:(int64_t)a5 buttonConfiguration:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDTargetConfiguration

- (unint64_t)hash
{
  v2 = [(HMDTargetConfiguration *)self identifier];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v10 = 1;
    }

    else
    {
      v5 = v4;
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

      v8 = [(HMDTargetConfiguration *)self identifier];
      v9 = [(HMDTargetConfiguration *)v7 identifier];

      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMDTargetConfiguration)initWithAccessory:(id)a3 buttonConfiguration:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 home];
  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [v6 uuid];
    v11 = [v8 uuid];
    v12 = [v9 numberWithUnsignedInt:{identifierForTargetWithUUID(v10, v11)}];

    v13 = [v6 name];
    v14 = [v6 category];
    v15 = mapTargetCategory(v14);

    v16 = [(HMDTargetConfiguration *)self initWithIdentifier:v12 name:v13 category:v15 buttonConfiguration:v7];
    if (v16)
    {
      v17 = [v6 uuid];
      uuid = v16->_uuid;
      v16->_uuid = v17;
    }

    v19 = v16;

    v20 = v19;
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v19 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v6 name];
      v25 = [v6 uuid];
      v26 = [v25 UUIDString];
      v29 = 138543874;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v26;
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
  v4 = [(HMDTargetConfiguration *)self name];
  v5 = [(HMDTargetConfiguration *)self identifier];
  v6 = [(HMDTargetConfiguration *)self category];
  v7 = @"Unknown";
  if (v6 == 25)
  {
    v7 = @"HomePod";
  }

  if (v6 == 24)
  {
    v7 = @"AppleTV";
  }

  v8 = v7;
  v9 = [(HMDTargetConfiguration *)self buttonConfiguration];
  v10 = buttonConfigurationAsString(v9);
  v11 = [v3 stringWithFormat:@"Name: %@, Identifier: %@, Category: %@, ButtonConfiguration: %@", v4, v5, v8, v10];

  return v11;
}

- (HMDTargetConfiguration)initWithIdentifier:(id)a3 name:(id)a4 category:(int64_t)a5 buttonConfiguration:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = HMDTargetConfiguration;
  v14 = [(HMDTargetConfiguration *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_identifier, a3);
    v16 = [v12 copy];
    name = v15->_name;
    v15->_name = v16;

    v15->_category = a5;
    v18 = [v13 copy];
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