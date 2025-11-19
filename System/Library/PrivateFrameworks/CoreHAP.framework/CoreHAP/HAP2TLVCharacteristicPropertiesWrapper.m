@interface HAP2TLVCharacteristicPropertiesWrapper
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HAP2TLVCharacteristicPropertiesWrapper)init;
- (HAP2TLVCharacteristicPropertiesWrapper)initWithValue:(unint64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HAP2TLVCharacteristicPropertiesWrapper

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HAP2TLVCharacteristicPropertiesWrapper *)self value];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v3)
  {
    goto LABEL_32;
  }

  v5 = 1;
  v6 = v3;
  do
  {
    if ((v5 & v3) == 0)
    {
      goto LABEL_29;
    }

    if (v5 <= 31)
    {
      if (v5 <= 3)
      {
        v7 = @"HAP2TLVCharacteristicPropertyRead";
        if (v5 != 1)
        {
          if (v5 != 2)
          {
            goto LABEL_29;
          }

          v7 = @"HAP2TLVCharacteristicPropertyWrite";
        }
      }

      else
      {
        switch(v5)
        {
          case 4:
            v7 = @"HAP2TLVCharacteristicPropertyAdditionalAuthorizationData";
            break;
          case 8:
            v7 = @"HAP2TLVCharacteristicPropertyRequiresTimedWrite";
            break;
          case 16:
            v7 = @"HAP2TLVCharacteristicPropertySupportsSecureRead";
            break;
          default:
            goto LABEL_29;
        }
      }
    }

    else if (v5 > 255)
    {
      switch(v5)
      {
        case 256:
          v7 = @"HAP2TLVCharacteristicPropertyNotifiesWhileDisconnected";
          break;
        case 512:
          v7 = @"HAP2TLVCharacteristicPropertySupportsBroadcastNotify";
          break;
        case 1024:
          v7 = @"HAP2TLVCharacteristicPropertySupportsEventNotificationContext";
          break;
        default:
          goto LABEL_29;
      }
    }

    else
    {
      switch(v5)
      {
        case 32:
          v7 = @"HAP2TLVCharacteristicPropertySupportsSecureWrite";
          break;
        case 64:
          v7 = @"HAP2TLVCharacteristicPropertyHidden";
          break;
        case 128:
          v7 = @"HAP2TLVCharacteristicPropertyNotifiesWhileConnected";
          break;
        default:
          goto LABEL_29;
      }
    }

    v6 &= ~v5;
    [v4 addObject:v7];
LABEL_29:
    v5 *= 2;
  }

  while (v5 - 1 < v3);
  if (v6)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown options %lu", v6];
    [v4 addObject:v8];
  }

LABEL_32:
  if ([v4 count])
  {
    v9 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v9 = @"None";
  }

  v10 = [v2 stringWithFormat:@"<HAP2TLVCharacteristicPropertiesWrapper value=%@>", v9];

  return v10;
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
      v6 = [(HAP2TLVCharacteristicPropertiesWrapper *)self value];
      v7 = [(HAP2TLVCharacteristicPropertiesWrapper *)v5 value];

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
  v4 = [HAP2TLVCharacteristicPropertiesWrapper allocWithZone:a3];
  v5 = [(HAP2TLVCharacteristicPropertiesWrapper *)self value];

  return [(HAP2TLVCharacteristicPropertiesWrapper *)v4 initWithValue:v5];
}

- (id)serializeWithError:(id *)a3
{
  v3 = [(HAP2TLVCharacteristicPropertiesWrapper *)self value];

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
        [(HAP2TLVCharacteristicPropertiesWrapper *)self setValue:v11];
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

- (HAP2TLVCharacteristicPropertiesWrapper)initWithValue:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HAP2TLVCharacteristicPropertiesWrapper;
  result = [(HAP2TLVCharacteristicPropertiesWrapper *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (HAP2TLVCharacteristicPropertiesWrapper)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVCharacteristicPropertiesWrapper;
  result = [(HAP2TLVCharacteristicPropertiesWrapper *)&v3 init];
  if (result)
  {
    result->_value = 0;
  }

  return result;
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HAP2TLVCharacteristicPropertiesWrapper);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVCharacteristicPropertiesWrapper *)v6 parseFromData:v5 error:&v11];
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