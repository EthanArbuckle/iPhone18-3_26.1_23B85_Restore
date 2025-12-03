@interface HMDSleepConfigurationOperationStatusWrapper
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDSleepConfigurationOperationStatusWrapper)init;
- (HMDSleepConfigurationOperationStatusWrapper)initWithValue:(int64_t)value;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDSleepConfigurationOperationStatusWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDSleepConfigurationOperationStatusAsString([(HMDSleepConfigurationOperationStatusWrapper *)self value]);
  v4 = [v2 stringWithFormat:@"<HMDSleepConfigurationOperationStatusWrapper value=%@>", v3];

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
      value = [(HMDSleepConfigurationOperationStatusWrapper *)self value];
      value2 = [(HMDSleepConfigurationOperationStatusWrapper *)v5 value];

      v8 = value == value2;
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
  v4 = [HMDSleepConfigurationOperationStatusWrapper allocWithZone:zone];
  value = [(HMDSleepConfigurationOperationStatusWrapper *)self value];

  return [(HMDSleepConfigurationOperationStatusWrapper *)v4 initWithValue:value];
}

- (id)serializeWithError:(id *)error
{
  value = [(HMDSleepConfigurationOperationStatusWrapper *)self value];

  return MEMORY[0x2821501D8](value);
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length])
  {
    [dataCopy bytes];
    [dataCopy length];
    v7 = 1;
    [(HMDSleepConfigurationOperationStatusWrapper *)self setValue:HAPTLVParseUInt64()];
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMDSleepConfigurationOperationStatusWrapper)initWithValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = HMDSleepConfigurationOperationStatusWrapper;
  result = [(HMDSleepConfigurationOperationStatusWrapper *)&v5 init];
  if (result)
  {
    result->_value = value;
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

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDSleepConfigurationOperationStatusWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSleepConfigurationOperationStatusWrapper *)v6 parseFromData:dataCopy error:&v11];
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