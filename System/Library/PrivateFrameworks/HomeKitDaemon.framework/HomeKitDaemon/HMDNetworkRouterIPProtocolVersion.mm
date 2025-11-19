@interface HMDNetworkRouterIPProtocolVersion
+ (id)parsedFromData:(id)a3 error:(id *)a4;
+ (id)protocolFromIPProtocolVersion:(unsigned __int8)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterIPProtocolVersion)init;
- (HMDNetworkRouterIPProtocolVersion)initWithProtocol:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterIPProtocolVersion

+ (id)protocolFromIPProtocolVersion:(unsigned __int8)a3
{
  if (!a3)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (a3 == 1)
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
  v3 = [(HMDNetworkRouterIPProtocolVersion *)self protocol];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = @"HMDNetworkRouterIPProtocolVersionTypeIPv6";
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterIPProtocolVersionType %ld", v3];
    }
  }

  else
  {
    v4 = @"HMDNetworkRouterIPProtocolVersionTypeIPv4";
  }

  v5 = [v2 stringWithFormat:@"<HMDNetworkRouterIPProtocolVersion protocol=%@>", v4];

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
      v6 = [(HMDNetworkRouterIPProtocolVersion *)self protocol];
      v7 = [(HMDNetworkRouterIPProtocolVersion *)v5 protocol];

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
  v4 = [HMDNetworkRouterIPProtocolVersion allocWithZone:a3];
  v5 = [(HMDNetworkRouterIPProtocolVersion *)self protocol];

  return [(HMDNetworkRouterIPProtocolVersion *)v4 initWithProtocol:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HMDNetworkRouterIPProtocolVersion *)self protocol];

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
    [(HMDNetworkRouterIPProtocolVersion *)self setProtocol:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *a4 = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterIPProtocolVersion)initWithProtocol:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterIPProtocolVersion;
  result = [(HMDNetworkRouterIPProtocolVersion *)&v5 init];
  if (result)
  {
    result->_protocol = a3;
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

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterIPProtocolVersion);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterIPProtocolVersion *)v6 parseFromData:v5 error:&v11];
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