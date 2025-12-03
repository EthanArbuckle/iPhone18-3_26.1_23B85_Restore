@interface HMDNetworkRouterControlOperation
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterControlOperation)init;
- (HMDNetworkRouterControlOperation)initWithOperation:(int64_t)operation;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterControlOperation

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  operation = [(HMDNetworkRouterControlOperation *)self operation];
  if ((operation - 1) >= 5)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterControlOperationType %ld", operation];
  }

  else
  {
    v4 = off_27867B670[operation - 1];
  }

  v5 = [v2 stringWithFormat:@"<HMDNetworkRouterControlOperation operation=%@>", v4];

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
      operation = [(HMDNetworkRouterControlOperation *)self operation];
      operation2 = [(HMDNetworkRouterControlOperation *)v5 operation];

      v8 = operation == operation2;
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
  v4 = [HMDNetworkRouterControlOperation allocWithZone:zone];
  operation = [(HMDNetworkRouterControlOperation *)self operation];

  return [(HMDNetworkRouterControlOperation *)v4 initWithOperation:operation];
}

- (id)serializeWithError:(id *)error
{
  operation = [(HMDNetworkRouterControlOperation *)self operation];

  return MEMORY[0x2821501D8](operation);
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
    [(HMDNetworkRouterControlOperation *)self setOperation:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *error = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterControlOperation)initWithOperation:(int64_t)operation
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterControlOperation;
  result = [(HMDNetworkRouterControlOperation *)&v5 init];
  if (result)
  {
    result->_operation = operation;
  }

  return result;
}

- (HMDNetworkRouterControlOperation)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterControlOperation;
  result = [(HMDNetworkRouterControlOperation *)&v3 init];
  if (result)
  {
    result->_operation = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterControlOperation);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterControlOperation *)v6 parseFromData:dataCopy error:&v11];
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