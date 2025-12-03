@interface HMDResidentReachabilityState
- (BOOL)isEqual:(id)equal;
- (HMDResidentReachabilityState)initWithCoder:(id)coder;
- (HMDResidentReachabilityState)initWithResidentDeviceIdentifier:(id)identifier isReachable:(BOOL)reachable;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDResidentReachabilityState

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  residentDeviceIdentifier = [(HMDResidentReachabilityState *)self residentDeviceIdentifier];
  v5 = [v3 initWithName:@"Resident device identifier" value:residentDeviceIdentifier];
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

- (HMDResidentReachabilityState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"isReachable"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"residentDeviceIdentifier"];

  if (v6)
  {
    self = [(HMDResidentReachabilityState *)self initWithResidentDeviceIdentifier:v6 isReachable:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  residentDeviceIdentifier = [(HMDResidentReachabilityState *)self residentDeviceIdentifier];
  [coderCopy encodeObject:residentDeviceIdentifier forKey:@"residentDeviceIdentifier"];

  [coderCopy encodeBool:-[HMDResidentReachabilityState isReachable](self forKey:{"isReachable"), @"isReachable"}];
}

- (unint64_t)hash
{
  isReachable = [(HMDResidentReachabilityState *)self isReachable];
  residentDeviceIdentifier = [(HMDResidentReachabilityState *)self residentDeviceIdentifier];
  v5 = [residentDeviceIdentifier hash];

  return v5 ^ isReachable;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
    residentDeviceIdentifier = [(HMDResidentReachabilityState *)self residentDeviceIdentifier];
    residentDeviceIdentifier2 = [v6 residentDeviceIdentifier];
    if ([residentDeviceIdentifier isEqual:residentDeviceIdentifier2])
    {
      isReachable = [(HMDResidentReachabilityState *)self isReachable];
      v10 = isReachable ^ [v6 isReachable] ^ 1;
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

- (HMDResidentReachabilityState)initWithResidentDeviceIdentifier:(id)identifier isReachable:(BOOL)reachable
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HMDResidentReachabilityState;
  v7 = [(HMDResidentReachabilityState *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    residentDeviceIdentifier = v7->_residentDeviceIdentifier;
    v7->_residentDeviceIdentifier = v8;

    v7->_isReachable = reachable;
  }

  return v7;
}

@end