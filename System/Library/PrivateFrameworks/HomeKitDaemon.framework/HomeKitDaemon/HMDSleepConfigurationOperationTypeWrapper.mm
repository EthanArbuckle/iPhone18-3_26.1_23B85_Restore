@interface HMDSleepConfigurationOperationTypeWrapper
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDSleepConfigurationOperationTypeWrapper)init;
- (HMDSleepConfigurationOperationTypeWrapper)initWithValue:(int64_t)value;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDSleepConfigurationOperationTypeWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HMDSleepConfigurationOperationTypeAsString([(HMDSleepConfigurationOperationTypeWrapper *)self value]);
  v4 = [v2 stringWithFormat:@"<HMDSleepConfigurationOperationTypeWrapper value=%@>", v3];

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
      value = [(HMDSleepConfigurationOperationTypeWrapper *)self value];
      value2 = [(HMDSleepConfigurationOperationTypeWrapper *)v5 value];

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
  v4 = [HMDSleepConfigurationOperationTypeWrapper allocWithZone:zone];
  value = [(HMDSleepConfigurationOperationTypeWrapper *)self value];

  return [(HMDSleepConfigurationOperationTypeWrapper *)v4 initWithValue:value];
}

- (id)serializeWithError:(id *)error
{
  value = [(HMDSleepConfigurationOperationTypeWrapper *)self value];

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
    [(HMDSleepConfigurationOperationTypeWrapper *)self setValue:HAPTLVParseUInt64()];
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

- (HMDSleepConfigurationOperationTypeWrapper)initWithValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = HMDSleepConfigurationOperationTypeWrapper;
  result = [(HMDSleepConfigurationOperationTypeWrapper *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (HMDSleepConfigurationOperationTypeWrapper)init
{
  v3.receiver = self;
  v3.super_class = HMDSleepConfigurationOperationTypeWrapper;
  result = [(HMDSleepConfigurationOperationTypeWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDSleepConfigurationOperationTypeWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSleepConfigurationOperationTypeWrapper *)v6 parseFromData:dataCopy error:&v11];
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