@interface HMDSiriEndpointSessionStateTypeWrapper
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDSiriEndpointSessionStateTypeWrapper)init;
- (HMDSiriEndpointSessionStateTypeWrapper)initWithValue:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDSiriEndpointSessionStateTypeWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDSiriEndpointSessionStateTypeWrapper *)self value];
  if (v3 >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSiriEndpointSessionStateType %ld", v3];
  }

  else
  {
    v4 = off_2797263B8[v3];
  }

  v5 = [v2 stringWithFormat:@"<HMDSiriEndpointSessionStateTypeWrapper value=%@>", v4];

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
      v6 = [(HMDSiriEndpointSessionStateTypeWrapper *)self value];
      v7 = [(HMDSiriEndpointSessionStateTypeWrapper *)v5 value];

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
  v4 = [HMDSiriEndpointSessionStateTypeWrapper allocWithZone:a3];
  v5 = [(HMDSiriEndpointSessionStateTypeWrapper *)self value];

  return [(HMDSiriEndpointSessionStateTypeWrapper *)v4 initWithValue:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HMDSiriEndpointSessionStateTypeWrapper *)self value];

  return MEMORY[0x2821501D8](v3);
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    [v6 bytes];
    [v6 length];
    v7 = 1;
    [(HMDSiriEndpointSessionStateTypeWrapper *)self setValue:HAPTLVParseUInt64()];
  }

  else if (a4)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMDSiriEndpointSessionStateTypeWrapper)initWithValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDSiriEndpointSessionStateTypeWrapper;
  result = [(HMDSiriEndpointSessionStateTypeWrapper *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (HMDSiriEndpointSessionStateTypeWrapper)init
{
  v3.receiver = self;
  v3.super_class = HMDSiriEndpointSessionStateTypeWrapper;
  result = [(HMDSiriEndpointSessionStateTypeWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDSiriEndpointSessionStateTypeWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSiriEndpointSessionStateTypeWrapper *)v6 parseFromData:v5 error:&v11];
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