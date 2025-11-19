@interface HMDSleepConfigurationWakeUpTypeWrapper
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDSleepConfigurationWakeUpTypeWrapper)init;
- (HMDSleepConfigurationWakeUpTypeWrapper)initWithValue:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDSleepConfigurationWakeUpTypeWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDSleepConfigurationWakeUpTypeWrapper *)self value];
  if (v3 == 1)
  {
    v4 = @"HMDSleepConfigurationWakeUpTypeWakeWithSystemOn";
  }

  else if (v3 == 2)
  {
    v4 = @"HMDSleepConfigurationWakeUpTypeDarkWake";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDSleepConfigurationWakeUpType %ld", v3];
  }

  v5 = [v2 stringWithFormat:@"<HMDSleepConfigurationWakeUpTypeWrapper value=%@>", v4];

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
      v6 = [(HMDSleepConfigurationWakeUpTypeWrapper *)self value];
      v7 = [(HMDSleepConfigurationWakeUpTypeWrapper *)v5 value];

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
  v4 = [HMDSleepConfigurationWakeUpTypeWrapper allocWithZone:a3];
  v5 = [(HMDSleepConfigurationWakeUpTypeWrapper *)self value];

  return [(HMDSleepConfigurationWakeUpTypeWrapper *)v4 initWithValue:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HMDSleepConfigurationWakeUpTypeWrapper *)self value];

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
    [(HMDSleepConfigurationWakeUpTypeWrapper *)self setValue:HAPTLVParseUInt64()];
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

- (HMDSleepConfigurationWakeUpTypeWrapper)initWithValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDSleepConfigurationWakeUpTypeWrapper;
  result = [(HMDSleepConfigurationWakeUpTypeWrapper *)&v5 init];
  if (result)
  {
    result->_value = a3;
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

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDSleepConfigurationWakeUpTypeWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDSleepConfigurationWakeUpTypeWrapper *)v6 parseFromData:v5 error:&v11];
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