@interface HMDXPCMessageSendPolicyParameters
- (BOOL)isEqual:(id)a3;
- (HMDXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
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
      v7 = [(HMDXPCMessageSendPolicyParameters *)self entitlements];
      v8 = v7 == [(HMDXPCMessageSendPolicyParameters *)v6 entitlements];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (HMDXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDXPCMessageSendPolicyParameters;
  result = [(HMDXPCMessageSendPolicyParameters *)&v5 init];
  if (result)
  {
    result->_entitlements = a3;
  }

  return result;
}

@end