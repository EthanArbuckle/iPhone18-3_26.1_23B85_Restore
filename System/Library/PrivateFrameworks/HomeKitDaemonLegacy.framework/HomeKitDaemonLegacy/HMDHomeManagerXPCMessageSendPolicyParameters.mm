@interface HMDHomeManagerXPCMessageSendPolicyParameters
- (BOOL)isEqual:(id)equal;
- (HMDHomeManagerXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)entitlements options:(unint64_t)options;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)signature;
@end

@implementation HMDHomeManagerXPCMessageSendPolicyParameters

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDHomeManagerXPCMessageSendPolicyParameters;
  attributeDescriptions = [(HMDXPCMessageSendPolicyParameters *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeManagerXPCMessageSendPolicyParameters *)self options];
  v5 = HMHomeManagerOptionsToString();
  v6 = [v4 initWithName:@"Options" value:v5];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeManagerXPCMessageSendPolicyParameters *)self isActive];
  v8 = HMFBooleanToString();
  v9 = [v7 initWithName:@"Active" value:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(HMDHomeManagerXPCMessageSendPolicyParameters *)[HMDMutableHomeManagerXPCMessageSendPolicyParameters allocWithZone:?]options:"initWithEntitlements:options:", [(HMDXPCMessageSendPolicyParameters *)self entitlements], [(HMDHomeManagerXPCMessageSendPolicyParameters *)self options]];
  [(HMDHomeManagerXPCMessageSendPolicyParameters *)v4 setActive:[(HMDHomeManagerXPCMessageSendPolicyParameters *)self isActive]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HMDHomeManagerXPCMessageSendPolicyParameters;
    if ([(HMDXPCMessageSendPolicyParameters *)&v12 isEqual:equalCopy])
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

      if (v7 && (v8 = [(HMDHomeManagerXPCMessageSendPolicyParameters *)self options], v8 == [(HMDHomeManagerXPCMessageSendPolicyParameters *)v7 options]))
      {
        isActive = [(HMDHomeManagerXPCMessageSendPolicyParameters *)self isActive];
        v10 = isActive ^ [(HMDHomeManagerXPCMessageSendPolicyParameters *)v7 isActive]^ 1;
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
  }

  return v10;
}

- (id)signature
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDHomeManagerXPCMessageSendPolicyParameters;
  signature = [(HMDXPCMessageSendPolicyParameters *)&v8 signature];
  [(HMDHomeManagerXPCMessageSendPolicyParameters *)self options];
  v5 = HMHomeManagerOptionsShortDescription();
  v6 = [v3 stringWithFormat:@"%@O:%@", signature, v5];

  return v6;
}

- (HMDHomeManagerXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)entitlements options:(unint64_t)options
{
  v6.receiver = self;
  v6.super_class = HMDHomeManagerXPCMessageSendPolicyParameters;
  result = [(HMDXPCMessageSendPolicyParameters *)&v6 initWithEntitlements:entitlements];
  if (result)
  {
    result->_options = options;
  }

  return result;
}

@end