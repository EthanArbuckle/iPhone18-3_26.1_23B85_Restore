@interface HAPDataStreamTransportProtocolWrapper
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPDataStreamTransportProtocolWrapper)init;
- (HAPDataStreamTransportProtocolWrapper)initWithValue:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPDataStreamTransportProtocolWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HAPDataStreamTransportProtocolAsString([(HAPDataStreamTransportProtocolWrapper *)self value]);
  v4 = [v2 stringWithFormat:@"<HAPDataStreamTransportProtocolWrapper value=%@>", v3];

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
      v6 = [(HAPDataStreamTransportProtocolWrapper *)self value];
      v7 = [(HAPDataStreamTransportProtocolWrapper *)v5 value];

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
  v4 = [HAPDataStreamTransportProtocolWrapper allocWithZone:a3];
  v5 = [(HAPDataStreamTransportProtocolWrapper *)self value];

  return [(HAPDataStreamTransportProtocolWrapper *)v4 initWithValue:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HAPDataStreamTransportProtocolWrapper *)self value];

  return HAPTLVWriteUInt64(v3);
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [v6 bytes];
    v8 = [v6 length];
    if (v8 > 3)
    {
      if (v8 == 4)
      {
        v9 = *v7;
        goto LABEL_17;
      }

      if (v8 == 8)
      {
        v9 = *v7;
        goto LABEL_17;
      }
    }

    else
    {
      if (v8 == 1)
      {
        v9 = *v7;
        goto LABEL_17;
      }

      if (v8 == 2)
      {
        v9 = *v7;
LABEL_17:
        [(HAPDataStreamTransportProtocolWrapper *)self setValue:v9];
        v11 = 1;
        goto LABEL_18;
      }
    }

    if (a4)
    {
      v10 = HMErrorFromOSStatus(4294960553);
      goto LABEL_13;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_18;
  }

  if (!a4)
  {
    goto LABEL_14;
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];
LABEL_13:
  v11 = 0;
  *a4 = v10;
LABEL_18:

  return v11;
}

- (HAPDataStreamTransportProtocolWrapper)initWithValue:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HAPDataStreamTransportProtocolWrapper;
  result = [(HAPDataStreamTransportProtocolWrapper *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (HAPDataStreamTransportProtocolWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamTransportProtocolWrapper;
  result = [(HAPDataStreamTransportProtocolWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPDataStreamTransportProtocolWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamTransportProtocolWrapper *)v6 parseFromData:v5 error:&v11];
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