@interface HMDAccessoryBrowserXPCMessageSendPolicyParameters
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryBrowserXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)a3 browsing:(BOOL)a4;
- (id)attributeDescriptions;
- (id)signature;
@end

@implementation HMDAccessoryBrowserXPCMessageSendPolicyParameters

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMDAccessoryBrowserXPCMessageSendPolicyParameters;
  v3 = [(HMDXPCMessageSendPolicyParameters *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryBrowserXPCMessageSendPolicyParameters *)self isBrowsing];
  v5 = HMFBooleanToString();
  v6 = [v4 initWithName:@"Browsing" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = HMDAccessoryBrowserXPCMessageSendPolicyParameters;
    if ([(HMDXPCMessageSendPolicyParameters *)&v11 isEqual:v4])
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
        v8 = [(HMDAccessoryBrowserXPCMessageSendPolicyParameters *)self isBrowsing];
        v9 = v8 ^ [(HMDAccessoryBrowserXPCMessageSendPolicyParameters *)v7 isBrowsing]^ 1;
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
  v4 = [(HMDXPCMessageSendPolicyParameters *)&v9 signature];
  v5 = [(HMDAccessoryBrowserXPCMessageSendPolicyParameters *)self isBrowsing];
  v6 = &stru_283CF9D50;
  if (v5)
  {
    v6 = @"B";
  }

  v7 = [v3 stringWithFormat:@"%@AB:%@", v4, v6];

  return v7;
}

- (HMDAccessoryBrowserXPCMessageSendPolicyParameters)initWithEntitlements:(unint64_t)a3 browsing:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = HMDAccessoryBrowserXPCMessageSendPolicyParameters;
  result = [(HMDXPCMessageSendPolicyParameters *)&v6 initWithEntitlements:a3];
  if (result)
  {
    result->_browsing = a4;
  }

  return result;
}

@end