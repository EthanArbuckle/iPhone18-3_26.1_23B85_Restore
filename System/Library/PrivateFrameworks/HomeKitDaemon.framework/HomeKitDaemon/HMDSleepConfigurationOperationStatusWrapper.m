@interface HMDSleepConfigurationOperationStatusWrapper
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDSleepConfigurationOperationStatusWrapper)init;
- (HMDSleepConfigurationOperationStatusWrapper)initWithValue:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDSleepConfigurationOperationStatusWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDSleepConfigurationOperationStatusAsString([(HMDSleepConfigurationOperationStatusWrapper *)self value]);
  v4 = [v2 stringWithFormat:@"<HMDSleepConfigurationOperationStatusWrapper value=%@>", v3];

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
      v6 = [(HMDSleepConfigurationOperationStatusWrapper *)self value];
      v7 = [(HMDSleepConfigurationOperationStatusWrapper *)v5 value];

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
  v4 = [HMDSleepConfigurationOperationStatusWrapper allocWithZone:a3];
  v5 = [(HMDSleepConfigurationOperationStatusWrapper *)self value];

  return [(HMDSleepConfigurationOperationStatusWrapper *)v4 initWithValue:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HMDSleepConfigurationOperationStatusWrapper *)self value];

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
    [(HMDSleepConfigurationOperationStatusWrapper *)self setValue:HAPTLVParseUInt64()];
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

- (HMDSleepConfigurationOperationStatusWrapper)initWithValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDSleepConfigurationOperationStatusWrapper;
  result = [(HMDSleepConfigurationOperationStatusWrapper *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (HMDSleepConfigurationOperationStatusWrapper)init
{
  v3.receiver = self;
  v3.super_class = HMDSleepConfigurationOperationStatusWrapper;
  result = [(HMDSleepConfigurationOperationStatusWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDSleepConfigurationOperationStatusWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSleepConfigurationOperationStatusWrapper *)v6 parseFromData:v5 error:&v11];
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