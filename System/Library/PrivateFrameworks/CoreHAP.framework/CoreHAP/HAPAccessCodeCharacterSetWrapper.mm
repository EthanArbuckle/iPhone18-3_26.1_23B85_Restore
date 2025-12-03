@interface HAPAccessCodeCharacterSetWrapper
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPAccessCodeCharacterSetWrapper)init;
- (HAPAccessCodeCharacterSetWrapper)initWithValue:(unint64_t)value;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPAccessCodeCharacterSetWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HAPAccessCodeCharacterSetAsString([(HAPAccessCodeCharacterSetWrapper *)self value]);
  v4 = [v2 stringWithFormat:@"<HAPAccessCodeCharacterSetWrapper value=%@>", v3];

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
      value = [(HAPAccessCodeCharacterSetWrapper *)self value];
      value2 = [(HAPAccessCodeCharacterSetWrapper *)v5 value];

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
  v4 = [HAPAccessCodeCharacterSetWrapper allocWithZone:zone];
  value = [(HAPAccessCodeCharacterSetWrapper *)self value];

  return [(HAPAccessCodeCharacterSetWrapper *)v4 initWithValue:value];
}

- (id)serializeWithError:(id *)error
{
  value = [(HAPAccessCodeCharacterSetWrapper *)self value];

  return HAPTLVWriteUInt64(value);
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (!error)
  {
    if (![dataCopy length])
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  *error = 0;
  if ([dataCopy length])
  {
LABEL_5:
    bytes = [v7 bytes];
    v10 = [v7 length];
    if (v10 > 3)
    {
      if (v10 == 4)
      {
        v11 = *bytes;
        goto LABEL_18;
      }

      if (v10 == 8)
      {
        v11 = *bytes;
        goto LABEL_18;
      }
    }

    else
    {
      if (v10 == 1)
      {
        v11 = *bytes;
        goto LABEL_18;
      }

      if (v10 == 2)
      {
        v11 = *bytes;
LABEL_18:
        [(HAPAccessCodeCharacterSetWrapper *)self setValue:v11];
        v12 = 1;
        goto LABEL_19;
      }
    }

    if (error)
    {
      v8 = HMErrorFromOSStatus(4294960553);
      goto LABEL_14;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_19;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
LABEL_14:
  v12 = 0;
  *error = v8;
LABEL_19:

  return v12;
}

- (HAPAccessCodeCharacterSetWrapper)initWithValue:(unint64_t)value
{
  v5.receiver = self;
  v5.super_class = HAPAccessCodeCharacterSetWrapper;
  result = [(HAPAccessCodeCharacterSetWrapper *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (HAPAccessCodeCharacterSetWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAPAccessCodeCharacterSetWrapper;
  result = [(HAPAccessCodeCharacterSetWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPAccessCodeCharacterSetWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPAccessCodeCharacterSetWrapper *)v6 parseFromData:dataCopy error:&v11];
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