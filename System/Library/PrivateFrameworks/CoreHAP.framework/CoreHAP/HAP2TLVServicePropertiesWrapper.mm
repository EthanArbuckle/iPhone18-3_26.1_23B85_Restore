@interface HAP2TLVServicePropertiesWrapper
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVServicePropertiesWrapper)init;
- (HAP2TLVServicePropertiesWrapper)initWithValue:(unint64_t)value;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVServicePropertiesWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  value = [(HAP2TLVServicePropertiesWrapper *)self value];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!value)
  {
    goto LABEL_14;
  }

  v5 = 1;
  v6 = value;
  do
  {
    if ((v5 & value) == 0)
    {
      goto LABEL_11;
    }

    switch(v5)
    {
      case 1:
        v7 = @"HAP2TLVServicePropertyPrimaryService";
        break;
      case 4:
        v7 = @"HAP2TLVServicePropertyServiceSupportsConfiguration";
        break;
      case 2:
        v7 = @"HAP2TLVServicePropertyHiddenService";
        break;
      default:
        goto LABEL_11;
    }

    v6 &= ~v5;
    [v4 addObject:v7];
LABEL_11:
    v5 *= 2;
  }

  while (v5 - 1 < value);
  if (v6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v6];
    [v4 addObject:v8];
  }

LABEL_14:
  if ([v4 count])
  {
    v9 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v9 = @"None";
  }

  v10 = [v2 stringWithFormat:@"<HAP2TLVServicePropertiesWrapper value=%@>", v9];

  return v10;
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
      value = [(HAP2TLVServicePropertiesWrapper *)self value];
      value2 = [(HAP2TLVServicePropertiesWrapper *)v5 value];

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
  v4 = [HAP2TLVServicePropertiesWrapper allocWithZone:zone];
  value = [(HAP2TLVServicePropertiesWrapper *)self value];

  return [(HAP2TLVServicePropertiesWrapper *)v4 initWithValue:value];
}

- (id)serializeWithError:(id *)error
{
  value = [(HAP2TLVServicePropertiesWrapper *)self value];

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
        [(HAP2TLVServicePropertiesWrapper *)self setValue:v11];
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

- (HAP2TLVServicePropertiesWrapper)initWithValue:(unint64_t)value
{
  v5.receiver = self;
  v5.super_class = HAP2TLVServicePropertiesWrapper;
  result = [(HAP2TLVServicePropertiesWrapper *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (HAP2TLVServicePropertiesWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVServicePropertiesWrapper;
  result = [(HAP2TLVServicePropertiesWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVServicePropertiesWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVServicePropertiesWrapper *)v6 parseFromData:dataCopy error:&v11];
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