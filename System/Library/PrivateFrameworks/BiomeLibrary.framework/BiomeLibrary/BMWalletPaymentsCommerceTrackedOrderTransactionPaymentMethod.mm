@interface BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)initWithDisplayName:(id)name lastFourDigits:(id)digits isApplePay:(id)pay;
- (BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    displayName = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self displayName];
    displayName2 = [v5 displayName];
    v8 = displayName2;
    if (displayName == displayName2)
    {
    }

    else
    {
      displayName3 = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self displayName];
      displayName4 = [v5 displayName];
      v11 = [displayName3 isEqual:displayName4];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    lastFourDigits = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self lastFourDigits];
    lastFourDigits2 = [v5 lastFourDigits];
    v15 = lastFourDigits2;
    if (lastFourDigits == lastFourDigits2)
    {
    }

    else
    {
      lastFourDigits3 = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self lastFourDigits];
      lastFourDigits4 = [v5 lastFourDigits];
      v18 = [lastFourDigits3 isEqual:lastFourDigits4];

      if (!v18)
      {
        goto LABEL_16;
      }
    }

    if (!-[BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod hasIsApplePay](self, "hasIsApplePay") && ![v5 hasIsApplePay])
    {
      LOBYTE(v12) = 1;
      goto LABEL_17;
    }

    if (-[BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod hasIsApplePay](self, "hasIsApplePay") && [v5 hasIsApplePay])
    {
      isApplePay = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self isApplePay];
      v12 = isApplePay ^ [v5 isApplePay] ^ 1;
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    LOBYTE(v12) = 0;
    goto LABEL_17;
  }

  LOBYTE(v12) = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  displayName = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self displayName];
  lastFourDigits = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self lastFourDigits];
  if ([(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self hasIsApplePay])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod isApplePay](self, "isApplePay")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"displayName";
  null = displayName;
  if (!displayName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"lastFourDigits";
  null2 = lastFourDigits;
  if (!lastFourDigits)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"isApplePay";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (lastFourDigits)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (displayName)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!lastFourDigits)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (displayName)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"displayName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"lastFourDigits"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"lastFourDigits"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isApplePay"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isApplePay"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *error = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self initWithDisplayName:v8 lastFourDigits:v10 isApplePay:v12];
    selfCopy = self;
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"displayName"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_lastFourDigits)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasIsApplePay)
  {
    isApplePay = self->_isApplePay;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v30 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasIsApplePay = 1;
        while (1)
        {
          v30 = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v30 & 0x7F) << v19;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v13 = v20++ >= 9;
          if (v13)
          {
            LOBYTE(v25) = 0;
            goto LABEL_36;
          }
        }

        v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_36:
        v5->_isApplePay = v25;
      }

      else
      {
        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 32;
        }

        else
        {
          if (v15 != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }

          v16 = PBReaderReadString();
          v17 = 24;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_37:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_39:
    v27 = 0;
  }

  else
  {
LABEL_40:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  displayName = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self displayName];
  lastFourDigits = [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self lastFourDigits];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod isApplePay](self, "isApplePay")}];
  v7 = [v3 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod with displayName: %@, lastFourDigits: %@, isApplePay: %@", displayName, lastFourDigits, v6];

  return v7;
}

- (BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod)initWithDisplayName:(id)name lastFourDigits:(id)digits isApplePay:(id)pay
{
  nameCopy = name;
  digitsCopy = digits;
  payCopy = pay;
  v14.receiver = self;
  v14.super_class = BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_displayName, name);
    objc_storeStrong(&v12->_lastFourDigits, digits);
    if (payCopy)
    {
      v12->_hasIsApplePay = 1;
      v12->_isApplePay = [payCopy BOOLValue];
    }

    else
    {
      v12->_hasIsApplePay = 0;
      v12->_isApplePay = 0;
    }
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayName" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastFourDigits" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isApplePay" number:3 type:12 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastFourDigits" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isApplePay" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end