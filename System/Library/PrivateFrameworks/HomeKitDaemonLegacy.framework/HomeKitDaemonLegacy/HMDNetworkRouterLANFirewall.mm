@interface HMDNetworkRouterLANFirewall
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterLANFirewall)init;
- (HMDNetworkRouterLANFirewall)initWithType:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterLANFirewall

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDNetworkRouterLANFirewall *)self type];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = @"HMDNetworkRouterLANFirewallTypeAllowListAccess";
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterLANFirewallType %ld", v3];
    }
  }

  else
  {
    v4 = @"HMDNetworkRouterLANFirewallTypeFullAccess";
  }

  v5 = [v2 stringWithFormat:@"<HMDNetworkRouterLANFirewall type=%@>", v4];

  return v5;
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
      v6 = [(HMDNetworkRouterLANFirewall *)self type];
      v7 = [(HMDNetworkRouterLANFirewall *)v5 type];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDNetworkRouterLANFirewall allocWithZone:a3];
  v5 = [(HMDNetworkRouterLANFirewall *)self type];

  return [(HMDNetworkRouterLANFirewall *)v4 initWithType:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HMDNetworkRouterLANFirewall *)self type];

  return MEMORY[0x2821501D8](v3);
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    if (![v6 length])
    {
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  *a4 = 0;
  if ([v6 length])
  {
LABEL_5:
    [v7 bytes];
    [v7 length];
    v8 = 1;
    [(HMDNetworkRouterLANFirewall *)self setType:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *a4 = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterLANFirewall)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterLANFirewall;
  result = [(HMDNetworkRouterLANFirewall *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (HMDNetworkRouterLANFirewall)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterLANFirewall;
  result = [(HMDNetworkRouterLANFirewall *)&v3 init];
  if (result)
  {
    result->_type = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterLANFirewall);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterLANFirewall *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end