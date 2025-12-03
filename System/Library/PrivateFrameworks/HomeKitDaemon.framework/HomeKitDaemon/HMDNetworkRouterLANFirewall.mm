@interface HMDNetworkRouterLANFirewall
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterLANFirewall)init;
- (HMDNetworkRouterLANFirewall)initWithType:(int64_t)type;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterLANFirewall

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  type = [(HMDNetworkRouterLANFirewall *)self type];
  if (type)
  {
    if (type == 1)
    {
      v4 = @"HMDNetworkRouterLANFirewallTypeAllowListAccess";
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterLANFirewallType %ld", type];
    }
  }

  else
  {
    v4 = @"HMDNetworkRouterLANFirewallTypeFullAccess";
  }

  v5 = [v2 stringWithFormat:@"<HMDNetworkRouterLANFirewall type=%@>", v4];

  return v5;
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
      type = [(HMDNetworkRouterLANFirewall *)self type];
      type2 = [(HMDNetworkRouterLANFirewall *)v5 type];

      v8 = type == type2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterLANFirewall allocWithZone:zone];
  type = [(HMDNetworkRouterLANFirewall *)self type];

  return [(HMDNetworkRouterLANFirewall *)v4 initWithType:type];
}

- (id)serializeWithError:(id *)error
{
  type = [(HMDNetworkRouterLANFirewall *)self type];

  return MEMORY[0x2821501D8](type);
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (!error)
  {
    if (![dataCopy length])
    {
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  *error = 0;
  if ([dataCopy length])
  {
LABEL_5:
    [v7 bytes];
    [v7 length];
    v8 = 1;
    [(HMDNetworkRouterLANFirewall *)self setType:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *error = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterLANFirewall)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterLANFirewall;
  result = [(HMDNetworkRouterLANFirewall *)&v5 init];
  if (result)
  {
    result->_type = type;
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

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterLANFirewall);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterLANFirewall *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
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