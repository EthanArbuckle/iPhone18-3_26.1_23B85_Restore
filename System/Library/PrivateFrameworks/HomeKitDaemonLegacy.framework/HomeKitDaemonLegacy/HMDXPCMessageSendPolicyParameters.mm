@interface HMDXPCMessageSendPolicyParameters
- (BOOL)isEqual:(id)equal;
- (HMDXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)entitlements;
- (id)attributeDescriptions;
@end

@implementation HMDXPCMessageSendPolicyParameters

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDXPCMessageSendPolicyParameters *)self entitlements];
  v4 = HMXPCClientEntitlementsShortDescription();
  v5 = [v3 initWithName:@"Entitlements" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
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
      entitlements = [(HMDXPCMessageSendPolicyParameters *)self entitlements];
      v8 = entitlements == [(HMDXPCMessageSendPolicyParameters *)v6 entitlements];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HMDXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)entitlements
{
  v5.receiver = self;
  v5.super_class = HMDXPCMessageSendPolicyParameters;
  result = [(HMDXPCMessageSendPolicyParameters *)&v5 init];
  if (result)
  {
    result->_entitlements = entitlements;
  }

  return result;
}

@end