@interface HMDAccessoryBrowserXPCMessageSendPolicyParameters
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryBrowserXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)entitlements browsing:(BOOL)browsing;
- (id)attributeDescriptions;
- (id)signature;
@end

@implementation HMDAccessoryBrowserXPCMessageSendPolicyParameters

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDAccessoryBrowserXPCMessageSendPolicyParameters;
  attributeDescriptions = [(HMDXPCMessageSendPolicyParameters *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryBrowserXPCMessageSendPolicyParameters *)self isBrowsing];
  v5 = HMFBooleanToString();
  v6 = [v4 initWithName:@"Browsing" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HMDAccessoryBrowserXPCMessageSendPolicyParameters;
    if ([(HMDXPCMessageSendPolicyParameters *)&v11 isEqual:equalCopy])
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
        isBrowsing = [(HMDAccessoryBrowserXPCMessageSendPolicyParameters *)self isBrowsing];
        v9 = isBrowsing ^ [(HMDAccessoryBrowserXPCMessageSendPolicyParameters *)v7 isBrowsing]^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (id)signature
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HMDAccessoryBrowserXPCMessageSendPolicyParameters;
  signature = [(HMDXPCMessageSendPolicyParameters *)&v9 signature];
  isBrowsing = [(HMDAccessoryBrowserXPCMessageSendPolicyParameters *)self isBrowsing];
  v6 = &stru_283CF9D50;
  if (isBrowsing)
  {
    v6 = @"B";
  }

  v7 = [v3 stringWithFormat:@"%@AB:%@", signature, v6];

  return v7;
}

- (HMDAccessoryBrowserXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)entitlements browsing:(BOOL)browsing
{
  v6.receiver = self;
  v6.super_class = HMDAccessoryBrowserXPCMessageSendPolicyParameters;
  result = [(HMDXPCMessageSendPolicyParameters *)&v6 initWithEntitlements:entitlements];
  if (result)
  {
    result->_browsing = browsing;
  }

  return result;
}

@end