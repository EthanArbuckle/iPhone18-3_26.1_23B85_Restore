@interface HMDAccessoryBrowserXPCMessageSendPolicy
- (BOOL)canSendWithPolicyParameters:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryBrowserXPCMessageSendPolicy)initWithRequiredEntitlements:(unint64_t)a3;
- (id)attributeDescriptions;
@end

@implementation HMDAccessoryBrowserXPCMessageSendPolicy

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryBrowserXPCMessageSendPolicy *)self requiredEntitlements];
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
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HMDAccessoryBrowserXPCMessageSendPolicy;
    if ([(HMDXPCMessageSendPolicy *)&v11 isEqual:v4])
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

      if (v7)
      {
        v8 = [(HMDAccessoryBrowserXPCMessageSendPolicy *)self requiredEntitlements];
        v9 = v8 == [(HMDAccessoryBrowserXPCMessageSendPolicy *)v7 requiredEntitlements];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)canSendWithPolicyParameters:(id)a3
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
  v7 = v6;
  if (v6 && [v6 isBrowsing])
  {
    v8 = [(HMDAccessoryBrowserXPCMessageSendPolicy *)self requiredEntitlements];
    v9 = [v7 entitlements] & v8;
    v10 = v9 == [(HMDAccessoryBrowserXPCMessageSendPolicy *)self requiredEntitlements];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMDAccessoryBrowserXPCMessageSendPolicy)initWithRequiredEntitlements:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDAccessoryBrowserXPCMessageSendPolicy;
  result = [(HMDAccessoryBrowserXPCMessageSendPolicy *)&v5 init];
  if (result)
  {
    result->_requiredEntitlements = a3 | 1;
  }

  return result;
}

@end