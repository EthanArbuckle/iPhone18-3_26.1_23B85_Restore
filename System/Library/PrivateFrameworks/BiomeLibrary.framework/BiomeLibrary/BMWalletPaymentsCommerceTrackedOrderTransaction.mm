@interface BMWalletPaymentsCommerceTrackedOrderTransaction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrderTransaction)initWithAmount:(id)amount isoCurrencyCode:(id)code paymentMethod:(id)method transactionIdenifier:(id)idenifier;
- (BMWalletPaymentsCommerceTrackedOrderTransaction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceTrackedOrderTransaction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    amount = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self amount];
    amount2 = [v5 amount];
    v8 = amount2;
    if (amount == amount2)
    {
    }

    else
    {
      amount3 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self amount];
      amount4 = [v5 amount];
      v11 = [amount3 isEqual:amount4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    isoCurrencyCode = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self isoCurrencyCode];
    isoCurrencyCode2 = [v5 isoCurrencyCode];
    v15 = isoCurrencyCode2;
    if (isoCurrencyCode == isoCurrencyCode2)
    {
    }

    else
    {
      isoCurrencyCode3 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self isoCurrencyCode];
      isoCurrencyCode4 = [v5 isoCurrencyCode];
      v18 = [isoCurrencyCode3 isEqual:isoCurrencyCode4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    paymentMethod = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self paymentMethod];
    paymentMethod2 = [v5 paymentMethod];
    v21 = paymentMethod2;
    if (paymentMethod == paymentMethod2)
    {
    }

    else
    {
      paymentMethod3 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self paymentMethod];
      paymentMethod4 = [v5 paymentMethod];
      v24 = [paymentMethod3 isEqual:paymentMethod4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    transactionIdenifier = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self transactionIdenifier];
    transactionIdenifier2 = [v5 transactionIdenifier];
    if (transactionIdenifier == transactionIdenifier2)
    {
      v12 = 1;
    }

    else
    {
      transactionIdenifier3 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self transactionIdenifier];
      transactionIdenifier4 = [v5 transactionIdenifier];
      v12 = [transactionIdenifier3 isEqual:transactionIdenifier4];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  amount = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self amount];
  isoCurrencyCode = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self isoCurrencyCode];
  paymentMethod = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self paymentMethod];
  jsonDictionary = [paymentMethod jsonDictionary];

  transactionIdenifier = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self transactionIdenifier];
  v15[0] = @"amount";
  null = amount;
  if (!amount)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"isoCurrencyCode";
  null2 = isoCurrencyCode;
  if (!isoCurrencyCode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"paymentMethod";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"transactionIdenifier";
  null4 = transactionIdenifier;
  if (!transactionIdenifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (transactionIdenifier)
  {
    if (jsonDictionary)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (jsonDictionary)
    {
LABEL_11:
      if (isoCurrencyCode)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (amount)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!isoCurrencyCode)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (amount)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMWalletPaymentsCommerceTrackedOrderTransaction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"amount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"isoCurrencyCode"];
    v33 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_35;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"isoCurrencyCode"];
        v40 = v10;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v15 = 0;
        *error = [v21 initWithDomain:v22 code:2 userInfo:v12];
        error = 0;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"paymentMethod"];
    selfCopy = self;
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = 0;
LABEL_10:
      v13 = [dictionaryCopy objectForKeyedSubscript:@"transactionIdenifier"];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v35 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transactionIdenifier"];
            v36 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            *error = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v14 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_14;
        }

        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      error = v32;
      v15 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)selfCopy initWithAmount:v8 isoCurrencyCode:v32 paymentMethod:v12 transactionIdenifier:v14];
      selfCopy = v15;
LABEL_14:

      self = selfCopy;
LABEL_33:

      v7 = v33;
LABEL_34:

      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v10;
      v34 = 0;
      v12 = [[BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod alloc] initWithJSONDictionary:v16 error:&v34];
      v17 = v34;
      if (!v17)
      {

        goto LABEL_10;
      }

      if (error)
      {
        v17 = v17;
        *error = v17;
      }

      v15 = 0;
      v10 = v16;
    }

    else
    {
      if (!error)
      {
        v15 = 0;
        error = v32;
        goto LABEL_34;
      }

      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v37 = *MEMORY[0x1E696A578];
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"paymentMethod"];
      v38 = v12;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *error = [v30 initWithDomain:v23 code:2 userInfo:v24];

      v15 = 0;
    }

    self = selfCopy;
    error = v32;
    goto LABEL_33;
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
    v15 = 0;
    goto LABEL_36;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v41 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"amount"];
  v42[0] = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v18 initWithDomain:v19 code:2 userInfo:v9];
  error = v20;
LABEL_35:

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_amount)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_isoCurrencyCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_paymentMethod)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self->_paymentMethod writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_transactionIdenifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMWalletPaymentsCommerceTrackedOrderTransaction;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_35;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_33;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v25[0] & 0x7F) << v7;
        if ((v25[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_33;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 != 3)
      {
        if (v15 != 4)
        {
LABEL_25:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v16 = PBReaderReadString();
        v17 = 48;
        goto LABEL_28;
      }

      v25[0] = 0;
      v25[1] = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_34;
      }

      v19 = [[BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod alloc] initByReadFrom:fromCopy];
      if (!v19)
      {
        goto LABEL_34;
      }

      paymentMethod = v5->_paymentMethod;
      v5->_paymentMethod = v19;

      PBReaderRecallMark();
LABEL_32:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_33;
      }
    }

    if (v15 == 1)
    {
      v16 = PBReaderReadString();
      v17 = 24;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_25;
      }

      v16 = PBReaderReadString();
      v17 = 32;
    }

LABEL_28:
    v18 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;

    goto LABEL_32;
  }

LABEL_33:
  if ([fromCopy hasError])
  {
LABEL_34:
    v22 = 0;
  }

  else
  {
LABEL_35:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  amount = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self amount];
  isoCurrencyCode = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self isoCurrencyCode];
  paymentMethod = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self paymentMethod];
  transactionIdenifier = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self transactionIdenifier];
  v8 = [v3 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrderTransaction with amount: %@, isoCurrencyCode: %@, paymentMethod: %@, transactionIdenifier: %@", amount, isoCurrencyCode, paymentMethod, transactionIdenifier];

  return v8;
}

- (BMWalletPaymentsCommerceTrackedOrderTransaction)initWithAmount:(id)amount isoCurrencyCode:(id)code paymentMethod:(id)method transactionIdenifier:(id)idenifier
{
  amountCopy = amount;
  codeCopy = code;
  methodCopy = method;
  idenifierCopy = idenifier;
  v17.receiver = self;
  v17.super_class = BMWalletPaymentsCommerceTrackedOrderTransaction;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_amount, amount);
    objc_storeStrong(&v15->_isoCurrencyCode, code);
    objc_storeStrong(&v15->_paymentMethod, method);
    objc_storeStrong(&v15->_transactionIdenifier, idenifier);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"amount" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isoCurrencyCode" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"paymentMethod" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionIdenifier" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"amount" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isoCurrencyCode" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"paymentMethod_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_596];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionIdenifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __58__BMWalletPaymentsCommerceTrackedOrderTransaction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 paymentMethod];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

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

    v8 = [[BMWalletPaymentsCommerceTrackedOrderTransaction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end