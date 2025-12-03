@interface HMDNetworkRouterControlOperationStatus
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterControlOperationStatus)init;
- (HMDNetworkRouterControlOperationStatus)initWithStatus:(int64_t)status;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterControlOperationStatus

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDNetworkRouterControlOperationStatusTypeAsString([(HMDNetworkRouterControlOperationStatus *)self status]);
  v4 = [v2 stringWithFormat:@"<HMDNetworkRouterControlOperationStatus status=%@>", v3];

  return v4;
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
      status = [(HMDNetworkRouterControlOperationStatus *)self status];
      status2 = [(HMDNetworkRouterControlOperationStatus *)v5 status];

      v8 = status == status2;
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
  v4 = [HMDNetworkRouterControlOperationStatus allocWithZone:zone];
  status = [(HMDNetworkRouterControlOperationStatus *)self status];

  return [(HMDNetworkRouterControlOperationStatus *)v4 initWithStatus:status];
}

- (id)serializeWithError:(id *)error
{
  status = [(HMDNetworkRouterControlOperationStatus *)self status];

  return MEMORY[0x2821501D8](status);
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
    [(HMDNetworkRouterControlOperationStatus *)self setStatus:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *error = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterControlOperationStatus)initWithStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterControlOperationStatus;
  result = [(HMDNetworkRouterControlOperationStatus *)&v5 init];
  if (result)
  {
    result->_status = status;
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

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterControlOperationStatus);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterControlOperationStatus *)v6 parseFromData:dataCopy error:&v11];
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