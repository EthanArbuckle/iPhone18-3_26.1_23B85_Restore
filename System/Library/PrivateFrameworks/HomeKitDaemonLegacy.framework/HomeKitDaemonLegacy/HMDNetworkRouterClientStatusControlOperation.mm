@interface HMDNetworkRouterClientStatusControlOperation
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterClientStatusControlOperation)init;
- (HMDNetworkRouterClientStatusControlOperation)initWithOperation:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterClientStatusControlOperation

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDNetworkRouterClientStatusControlOperation *)self operation];
  if (v3 == 1)
  {
    v4 = @"HMDNetworkRouterClientStatusControlOperationTypeRead";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDNetworkRouterClientStatusControlOperationType %ld", v3];
  }

  v5 = [v2 stringWithFormat:@"<HMDNetworkRouterClientStatusControlOperation operation=%@>", v4];

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
      v6 = [(HMDNetworkRouterClientStatusControlOperation *)self operation];
      v7 = [(HMDNetworkRouterClientStatusControlOperation *)v5 operation];

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
  v4 = [HMDNetworkRouterClientStatusControlOperation allocWithZone:a3];
  v5 = [(HMDNetworkRouterClientStatusControlOperation *)self operation];

  return [(HMDNetworkRouterClientStatusControlOperation *)v4 initWithOperation:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HMDNetworkRouterClientStatusControlOperation *)self operation];

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
    [(HMDNetworkRouterClientStatusControlOperation *)self setOperation:HAPTLVParseUInt64()];
    goto LABEL_7;
  }

  [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
  *a4 = v8 = 0;
LABEL_7:

  return v8;
}

- (HMDNetworkRouterClientStatusControlOperation)initWithOperation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDNetworkRouterClientStatusControlOperation;
  result = [(HMDNetworkRouterClientStatusControlOperation *)&v5 init];
  if (result)
  {
    result->_operation = a3;
  }

  return result;
}

- (HMDNetworkRouterClientStatusControlOperation)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterClientStatusControlOperation;
  result = [(HMDNetworkRouterClientStatusControlOperation *)&v3 init];
  if (result)
  {
    result->_operation = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterClientStatusControlOperation);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterClientStatusControlOperation *)v6 parseFromData:v5 error:&v11];
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