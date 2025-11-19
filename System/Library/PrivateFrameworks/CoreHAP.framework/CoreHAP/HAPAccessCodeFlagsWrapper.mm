@interface HAPAccessCodeFlagsWrapper
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAPAccessCodeFlagsWrapper)init;
- (HAPAccessCodeFlagsWrapper)initWithValue:(unint64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAPAccessCodeFlagsWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = HAPAccessCodeFlagsAsString([(HAPAccessCodeFlagsWrapper *)self value]);
  v4 = [v2 stringWithFormat:@"<HAPAccessCodeFlagsWrapper value=%@>", v3];

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
      v6 = [(HAPAccessCodeFlagsWrapper *)self value];
      v7 = [(HAPAccessCodeFlagsWrapper *)v5 value];

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
  v4 = [HAPAccessCodeFlagsWrapper allocWithZone:a3];
  v5 = [(HAPAccessCodeFlagsWrapper *)self value];

  return [(HAPAccessCodeFlagsWrapper *)v4 initWithValue:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HAPAccessCodeFlagsWrapper *)self value];

  return HAPTLVWriteUInt64(v3);
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    if (![v6 length])
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  *a4 = 0;
  if ([v6 length])
  {
LABEL_5:
    v9 = [v7 bytes];
    v10 = [v7 length];
    if (v10 > 3)
    {
      if (v10 == 4)
      {
        v11 = *v9;
        goto LABEL_18;
      }

      if (v10 == 8)
      {
        v11 = *v9;
        goto LABEL_18;
      }
    }

    else
    {
      if (v10 == 1)
      {
        v11 = *v9;
        goto LABEL_18;
      }

      if (v10 == 2)
      {
        v11 = *v9;
LABEL_18:
        [(HAPAccessCodeFlagsWrapper *)self setValue:v11];
        v12 = 1;
        goto LABEL_19;
      }
    }

    if (a4)
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
  *a4 = v8;
LABEL_19:

  return v12;
}

- (HAPAccessCodeFlagsWrapper)initWithValue:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HAPAccessCodeFlagsWrapper;
  result = [(HAPAccessCodeFlagsWrapper *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (HAPAccessCodeFlagsWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAPAccessCodeFlagsWrapper;
  result = [(HAPAccessCodeFlagsWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAPAccessCodeFlagsWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPAccessCodeFlagsWrapper *)v6 parseFromData:v5 error:&v11];
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