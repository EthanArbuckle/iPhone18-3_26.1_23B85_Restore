@interface HAP2TLVThreadOperationTypeWrapper
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVThreadOperationTypeWrapper)init;
- (HAP2TLVThreadOperationTypeWrapper)initWithValue:(int64_t)value;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVThreadOperationTypeWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HAP2TLVThreadOperationTypeAsString([(HAP2TLVThreadOperationTypeWrapper *)self value]);
  v4 = [v2 stringWithFormat:@"<HAP2TLVThreadOperationTypeWrapper value=%@>", v3];

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
      value = [(HAP2TLVThreadOperationTypeWrapper *)self value];
      value2 = [(HAP2TLVThreadOperationTypeWrapper *)v5 value];

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
  v4 = [HAP2TLVThreadOperationTypeWrapper allocWithZone:zone];
  value = [(HAP2TLVThreadOperationTypeWrapper *)self value];

  return [(HAP2TLVThreadOperationTypeWrapper *)v4 initWithValue:value];
}

- (id)serializeWithError:(id *)error
{
  value = [(HAP2TLVThreadOperationTypeWrapper *)self value];

  return HAPTLVWriteUInt64(value);
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  if ([dataCopy length])
  {
    bytes = [dataCopy bytes];
    v8 = [dataCopy length];
    if (v8 > 3)
    {
      if (v8 == 4)
      {
        v9 = *bytes;
        goto LABEL_17;
      }

      if (v8 == 8)
      {
        v9 = *bytes;
        goto LABEL_17;
      }
    }

    else
    {
      if (v8 == 1)
      {
        v9 = *bytes;
        goto LABEL_17;
      }

      if (v8 == 2)
      {
        v9 = *bytes;
LABEL_17:
        [(HAP2TLVThreadOperationTypeWrapper *)self setValue:v9];
        v11 = 1;
        goto LABEL_18;
      }
    }

    if (error)
    {
      v10 = HMErrorFromOSStatus(4294960553);
      goto LABEL_13;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_18;
  }

  if (!error)
  {
    goto LABEL_14;
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
LABEL_13:
  v11 = 0;
  *error = v10;
LABEL_18:

  return v11;
}

- (HAP2TLVThreadOperationTypeWrapper)initWithValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = HAP2TLVThreadOperationTypeWrapper;
  result = [(HAP2TLVThreadOperationTypeWrapper *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (HAP2TLVThreadOperationTypeWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVThreadOperationTypeWrapper;
  result = [(HAP2TLVThreadOperationTypeWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVThreadOperationTypeWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVThreadOperationTypeWrapper *)v6 parseFromData:dataCopy error:&v11];
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