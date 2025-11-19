@interface HMDNetworkRouterControlOperationStatus
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterControlOperationStatus)init;
- (HMDNetworkRouterControlOperationStatus)initWithStatus:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterControlOperationStatus

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDNetworkRouterControlOperationStatusTypeAsString([(HMDNetworkRouterControlOperationStatus *)self status]);
  v4 = [v2 stringWithFormat:@"<HMDNetworkRouterControlOperationStatus status=%@>", v3];

  return v4;
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
      v6 = [(HMDNetworkRouterControlOperationStatus *)self status];
      v7 = [(HMDNetworkRouterControlOperationStatus *)v5 status];

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
  v4 = [HMDNetworkRouterControlOperationStatus allocWithZone:a3];
  v5 = [(HMDNetworkRouterControlOperationStatus *)self status];

  return [(HMDNetworkRouterControlOperationStatus *)v4 initWithStatus:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HMDNetworkRouterControlOperationStatus *)self status];

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
    [(HMDNetworkRouterControlOperationStatus *)self setStatus:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *a4 = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterControlOperationStatus)initWithStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterControlOperationStatus;
  result = [(HMDNetworkRouterControlOperationStatus *)&v5 init];
  if (result)
  {
    result->_status = a3;
  }

  return result;
}

- (HMDNetworkRouterControlOperationStatus)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterControlOperationStatus;
  result = [(HMDNetworkRouterControlOperationStatus *)&v3 init];
  if (result)
  {
    result->_status = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterControlOperationStatus);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterControlOperationStatus *)v6 parseFromData:v5 error:&v11];
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