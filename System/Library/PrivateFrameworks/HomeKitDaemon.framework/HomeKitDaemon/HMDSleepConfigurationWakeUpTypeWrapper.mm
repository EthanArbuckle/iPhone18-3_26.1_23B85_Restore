@interface HMDSleepConfigurationWakeUpTypeWrapper
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDSleepConfigurationWakeUpTypeWrapper)init;
- (HMDSleepConfigurationWakeUpTypeWrapper)initWithValue:(int64_t)value;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDSleepConfigurationWakeUpTypeWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  value = [(HMDSleepConfigurationWakeUpTypeWrapper *)self value];
  if (value == 1)
  {
    v4 = @"HMDSleepConfigurationWakeUpTypeWakeWithSystemOn";
  }

  else if (value == 2)
  {
    v4 = @"HMDSleepConfigurationWakeUpTypeDarkWake";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSleepConfigurationWakeUpType %ld", value];
  }

  v5 = [v2 stringWithFormat:@"<HMDSleepConfigurationWakeUpTypeWrapper value=%@>", v4];

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
      value = [(HMDSleepConfigurationWakeUpTypeWrapper *)self value];
      value2 = [(HMDSleepConfigurationWakeUpTypeWrapper *)v5 value];

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
  v4 = [HMDSleepConfigurationWakeUpTypeWrapper allocWithZone:zone];
  value = [(HMDSleepConfigurationWakeUpTypeWrapper *)self value];

  return [(HMDSleepConfigurationWakeUpTypeWrapper *)v4 initWithValue:value];
}

- (id)serializeWithError:(id *)error
{
  value = [(HMDSleepConfigurationWakeUpTypeWrapper *)self value];

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
    [(HMDSleepConfigurationWakeUpTypeWrapper *)self setValue:HAPTLVParseUInt64()];
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

- (HMDSleepConfigurationWakeUpTypeWrapper)initWithValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = HMDSleepConfigurationWakeUpTypeWrapper;
  result = [(HMDSleepConfigurationWakeUpTypeWrapper *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (HMDSleepConfigurationWakeUpTypeWrapper)init
{
  v3.receiver = self;
  v3.super_class = HMDSleepConfigurationWakeUpTypeWrapper;
  result = [(HMDSleepConfigurationWakeUpTypeWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDSleepConfigurationWakeUpTypeWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSleepConfigurationWakeUpTypeWrapper *)v6 parseFromData:dataCopy error:&v11];
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