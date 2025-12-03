@interface HMDAccessoryBrowserXPCMessageSendPolicy
- (BOOL)canSendWithPolicyParameters:(id)parameters;
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryBrowserXPCMessageSendPolicy)initWithRequiredEntitlements:(unint64_t)entitlements;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HMDAccessoryBrowserXPCMessageSendPolicy;
    if ([(HMDXPCMessageSendPolicy *)&v11 isEqual:equalCopy])
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

      if (v7)
      {
        requiredEntitlements = [(HMDAccessoryBrowserXPCMessageSendPolicy *)self requiredEntitlements];
        v9 = requiredEntitlements == [(HMDAccessoryBrowserXPCMessageSendPolicy *)v7 requiredEntitlements];
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

- (BOOL)canSendWithPolicyParameters:(id)parameters
{
  parametersCopy = parameters;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = parametersCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && [v6 isBrowsing])
  {
    requiredEntitlements = [(HMDAccessoryBrowserXPCMessageSendPolicy *)self requiredEntitlements];
    v9 = [v7 entitlements] & requiredEntitlements;
    v10 = v9 == [(HMDAccessoryBrowserXPCMessageSendPolicy *)self requiredEntitlements];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMDAccessoryBrowserXPCMessageSendPolicy)initWithRequiredEntitlements:(unint64_t)entitlements
{
  v5.receiver = self;
  v5.super_class = HMDAccessoryBrowserXPCMessageSendPolicy;
  result = [(HMDAccessoryBrowserXPCMessageSendPolicy *)&v5 init];
  if (result)
  {
    result->_requiredEntitlements = entitlements | 1;
  }

  return result;
}

@end