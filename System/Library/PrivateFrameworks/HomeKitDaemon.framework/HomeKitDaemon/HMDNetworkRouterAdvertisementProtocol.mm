@interface HMDNetworkRouterAdvertisementProtocol
+ (id)parsedFromData:(id)data error:(id *)error;
+ (id)protocolFromFirewallRuleAdvertisingProtocol:(unsigned __int8)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterAdvertisementProtocol)init;
- (HMDNetworkRouterAdvertisementProtocol)initWithAdvertisementProtocol:(int64_t)protocol;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterAdvertisementProtocol

+ (id)protocolFromFirewallRuleAdvertisingProtocol:(unsigned __int8)protocol
{
  if (!protocol)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (protocol == 1)
  {
    v3 = 1;
LABEL_5:
    v4 = [[HMDNetworkRouterAdvertisementProtocol alloc] initWithAdvertisementProtocol:v3];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  advertisementProtocol = [(HMDNetworkRouterAdvertisementProtocol *)self advertisementProtocol];
  if (advertisementProtocol)
  {
    if (advertisementProtocol == 1)
    {
      v4 = @"HMDNetworkRouterAdvertisementProtocolTypeSSDP";
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterAdvertisementProtocolType %ld", advertisementProtocol];
    }
  }

  else
  {
    v4 = @"HMDNetworkRouterAdvertisementProtocolTypeDNSSD";
  }

  v5 = [v2 stringWithFormat:@"<HMDNetworkRouterAdvertisementProtocol advertisementProtocol=%@>", v4];

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
      advertisementProtocol = [(HMDNetworkRouterAdvertisementProtocol *)self advertisementProtocol];
      advertisementProtocol2 = [(HMDNetworkRouterAdvertisementProtocol *)v5 advertisementProtocol];

      v8 = advertisementProtocol == advertisementProtocol2;
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
  v4 = [HMDNetworkRouterAdvertisementProtocol allocWithZone:zone];
  advertisementProtocol = [(HMDNetworkRouterAdvertisementProtocol *)self advertisementProtocol];

  return [(HMDNetworkRouterAdvertisementProtocol *)v4 initWithAdvertisementProtocol:advertisementProtocol];
}

- (id)serializeWithError:(id *)error
{
  advertisementProtocol = [(HMDNetworkRouterAdvertisementProtocol *)self advertisementProtocol];

  return MEMORY[0x2821501D8](advertisementProtocol);
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
    [(HMDNetworkRouterAdvertisementProtocol *)self setAdvertisementProtocol:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *error = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterAdvertisementProtocol)initWithAdvertisementProtocol:(int64_t)protocol
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterAdvertisementProtocol;
  result = [(HMDNetworkRouterAdvertisementProtocol *)&v5 init];
  if (result)
  {
    result->_advertisementProtocol = protocol;
  }

  return result;
}

- (HMDNetworkRouterAdvertisementProtocol)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterAdvertisementProtocol;
  result = [(HMDNetworkRouterAdvertisementProtocol *)&v3 init];
  if (result)
  {
    result->_advertisementProtocol = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterAdvertisementProtocol);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterAdvertisementProtocol *)v6 parseFromData:dataCopy error:&v11];
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