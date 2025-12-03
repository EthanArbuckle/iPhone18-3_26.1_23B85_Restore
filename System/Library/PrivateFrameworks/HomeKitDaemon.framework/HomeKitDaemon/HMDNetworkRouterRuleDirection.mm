@interface HMDNetworkRouterRuleDirection
+ (id)directionFromLANDirection:(unsigned __int8)direction;
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterRuleDirection)init;
- (HMDNetworkRouterRuleDirection)initWithDirection:(int64_t)direction;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterRuleDirection

+ (id)directionFromLANDirection:(unsigned __int8)direction
{
  if (!direction)
  {
    v3 = 0;
    goto LABEL_5;
  }

  if (direction == 1)
  {
    v3 = 1;
LABEL_5:
    v4 = [[HMDNetworkRouterRuleDirection alloc] initWithDirection:v3];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  direction = [(HMDNetworkRouterRuleDirection *)self direction];
  if (direction)
  {
    if (direction == 1)
    {
      v4 = @"HMDNetworkRouterRuleDirectionTypeInbound";
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterRuleDirectionType %ld", direction];
    }
  }

  else
  {
    v4 = @"HMDNetworkRouterRuleDirectionTypeOutbound";
  }

  v5 = [v2 stringWithFormat:@"<HMDNetworkRouterRuleDirection direction=%@>", v4];

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
      direction = [(HMDNetworkRouterRuleDirection *)self direction];
      direction2 = [(HMDNetworkRouterRuleDirection *)v5 direction];

      v8 = direction == direction2;
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
  v4 = [HMDNetworkRouterRuleDirection allocWithZone:zone];
  direction = [(HMDNetworkRouterRuleDirection *)self direction];

  return [(HMDNetworkRouterRuleDirection *)v4 initWithDirection:direction];
}

- (id)serializeWithError:(id *)error
{
  direction = [(HMDNetworkRouterRuleDirection *)self direction];

  return MEMORY[0x2821501D8](direction);
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
    [(HMDNetworkRouterRuleDirection *)self setDirection:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *error = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterRuleDirection)initWithDirection:(int64_t)direction
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterRuleDirection;
  result = [(HMDNetworkRouterRuleDirection *)&v5 init];
  if (result)
  {
    result->_direction = direction;
  }

  return result;
}

- (HMDNetworkRouterRuleDirection)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterRuleDirection;
  result = [(HMDNetworkRouterRuleDirection *)&v3 init];
  if (result)
  {
    result->_direction = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterRuleDirection);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterRuleDirection *)v6 parseFromData:dataCopy error:&v11];
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