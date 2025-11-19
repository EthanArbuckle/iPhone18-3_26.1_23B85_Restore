@interface HMDResidentReachabilityState
- (BOOL)isEqual:(id)a3;
- (HMDResidentReachabilityState)initWithCoder:(id)a3;
- (HMDResidentReachabilityState)initWithResidentDeviceIdentifier:(id)a3 isReachable:(BOOL)a4;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDResidentReachabilityState

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDResidentReachabilityState *)self residentDeviceIdentifier];
  v5 = [v3 initWithName:@"Resident device identifier" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDResidentReachabilityState *)self isReachable];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"IsReachable" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDResidentReachabilityState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"isReachable"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"residentDeviceIdentifier"];

  if (v6)
  {
    self = [(HMDResidentReachabilityState *)self initWithResidentDeviceIdentifier:v6 isReachable:v5];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(HMDResidentReachabilityState *)self residentDeviceIdentifier];
  [v5 encodeObject:v4 forKey:@"residentDeviceIdentifier"];

  [v5 encodeBool:-[HMDResidentReachabilityState isReachable](self forKey:{"isReachable"), @"isReachable"}];
}

- (unint64_t)hash
{
  v3 = [(HMDResidentReachabilityState *)self isReachable];
  v4 = [(HMDResidentReachabilityState *)self residentDeviceIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
    v7 = [(HMDResidentReachabilityState *)self residentDeviceIdentifier];
    v8 = [v6 residentDeviceIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDResidentReachabilityState *)self isReachable];
      v10 = v9 ^ [v6 isReachable] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (HMDResidentReachabilityState)initWithResidentDeviceIdentifier:(id)a3 isReachable:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HMDResidentReachabilityState;
  v7 = [(HMDResidentReachabilityState *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    residentDeviceIdentifier = v7->_residentDeviceIdentifier;
    v7->_residentDeviceIdentifier = v8;

    v7->_isReachable = a4;
  }

  return v7;
}

@end