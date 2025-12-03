@interface HMDNetworkRouterIPProtocolVersion
+ (id)parsedFromData:(id)data error:(id *)error;
+ (id)protocolFromIPProtocolVersion:(unsigned __int8)version;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterIPProtocolVersion)init;
- (HMDNetworkRouterIPProtocolVersion)initWithProtocol:(int64_t)protocol;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterIPProtocolVersion

+ (id)protocolFromIPProtocolVersion:(unsigned __int8)version
{
  if (!version)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (version == 1)
  {
    v3 = 1;
LABEL_5:
    v4 = [[HMDNetworkRouterIPProtocolVersion alloc] initWithProtocol:v3];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  protocol = [(HMDNetworkRouterIPProtocolVersion *)self protocol];
  if (protocol)
  {
    if (protocol == 1)
    {
      v4 = @"HMDNetworkRouterIPProtocolVersionTypeIPv6";
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterIPProtocolVersionType %ld", protocol];
    }
  }

  else
  {
    v4 = @"HMDNetworkRouterIPProtocolVersionTypeIPv4";
  }

  v5 = [v2 stringWithFormat:@"<HMDNetworkRouterIPProtocolVersion protocol=%@>", v4];

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
      protocol = [(HMDNetworkRouterIPProtocolVersion *)self protocol];
      protocol2 = [(HMDNetworkRouterIPProtocolVersion *)v5 protocol];

      v8 = protocol == protocol2;
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
  v4 = [HMDNetworkRouterIPProtocolVersion allocWithZone:zone];
  protocol = [(HMDNetworkRouterIPProtocolVersion *)self protocol];

  return [(HMDNetworkRouterIPProtocolVersion *)v4 initWithProtocol:protocol];
}

- (id)serializeWithError:(id *)error
{
  protocol = [(HMDNetworkRouterIPProtocolVersion *)self protocol];

  return MEMORY[0x2821501D8](protocol);
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
    [(HMDNetworkRouterIPProtocolVersion *)self setProtocol:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *error = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterIPProtocolVersion)initWithProtocol:(int64_t)protocol
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterIPProtocolVersion;
  result = [(HMDNetworkRouterIPProtocolVersion *)&v5 init];
  if (result)
  {
    result->_protocol = protocol;
  }

  return result;
}

- (HMDNetworkRouterIPProtocolVersion)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterIPProtocolVersion;
  result = [(HMDNetworkRouterIPProtocolVersion *)&v3 init];
  if (result)
  {
    result->_protocol = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterIPProtocolVersion);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterIPProtocolVersion *)v6 parseFromData:dataCopy error:&v11];
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