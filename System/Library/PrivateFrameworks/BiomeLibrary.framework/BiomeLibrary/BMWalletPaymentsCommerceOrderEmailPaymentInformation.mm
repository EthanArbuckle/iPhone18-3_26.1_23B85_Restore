@interface BMWalletPaymentsCommerceOrderEmailPaymentInformation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceOrderEmailPaymentInformation)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMWalletPaymentsCommerceOrderEmailPaymentInformation)initWithTotalAmount:(id)amount totalCurrencyCode:(id)code paymentMethod:(id)method;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceOrderEmailPaymentInformation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    totalAmount = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self totalAmount];
    totalAmount2 = [v5 totalAmount];
    v8 = totalAmount2;
    if (totalAmount == totalAmount2)
    {
    }

    else
    {
      totalAmount3 = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self totalAmount];
      totalAmount4 = [v5 totalAmount];
      v11 = [totalAmount3 isEqual:totalAmount4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    totalCurrencyCode = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self totalCurrencyCode];
    totalCurrencyCode2 = [v5 totalCurrencyCode];
    v15 = totalCurrencyCode2;
    if (totalCurrencyCode == totalCurrencyCode2)
    {
    }

    else
    {
      totalCurrencyCode3 = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self totalCurrencyCode];
      totalCurrencyCode4 = [v5 totalCurrencyCode];
      v18 = [totalCurrencyCode3 isEqual:totalCurrencyCode4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    paymentMethod = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self paymentMethod];
    paymentMethod2 = [v5 paymentMethod];
    if (paymentMethod == paymentMethod2)
    {
      v12 = 1;
    }

    else
    {
      paymentMethod3 = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self paymentMethod];
      paymentMethod4 = [v5 paymentMethod];
      v12 = [paymentMethod3 isEqual:paymentMethod4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  totalAmount = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self totalAmount];
  totalCurrencyCode = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self totalCurrencyCode];
  paymentMethod = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self paymentMethod];
  jsonDictionary = [paymentMethod jsonDictionary];

  v13[0] = @"totalAmount";
  null = totalAmount;
  if (!totalAmount)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"totalCurrencyCode";
  null2 = totalCurrencyCode;
  if (!totalCurrencyCode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"paymentMethod";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (jsonDictionary)
  {
    if (totalCurrencyCode)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (totalAmount)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!totalCurrencyCode)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (totalAmount)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMWalletPaymentsCommerceOrderEmailPaymentInformation)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v34[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"totalAmount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"totalCurrencyCode"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          v10 = 0;
          goto LABEL_13;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = p_isa;
        v22 = *MEMORY[0x1E698F240];
        v31 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"totalCurrencyCode"];
        v32 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v23 = [v21 initWithDomain:v22 code:2 userInfo:v12];
        v10 = 0;
        p_isa = 0;
        *v26 = v23;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"paymentMethod"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          goto LABEL_12;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v29 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"paymentMethod"];
        v30 = v12;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        *p_isa = [v27 initWithDomain:v25 code:2 userInfo:v24];

        p_isa = 0;
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      v15 = v11;
      v28 = 0;
      v12 = [[BMWalletPaymentsCommerceOrderEmailPaymentInformationPaymentMethod alloc] initWithJSONDictionary:v15 error:&v28];
      v16 = v28;
      if (v16)
      {
        if (p_isa)
        {
          v16 = v16;
          *p_isa = v16;
        }

        p_isa = 0;
        v11 = v15;
        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
    }

    self = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self initWithTotalAmount:v8 totalCurrencyCode:v10 paymentMethod:v12];
    p_isa = &self->super.super.isa;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!p_isa)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v33 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"totalAmount"];
  v34[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v19 = [v17 initWithDomain:v18 code:2 userInfo:v9];
  v8 = 0;
  v20 = p_isa;
  p_isa = 0;
  *v20 = v19;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_totalAmount)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_totalCurrencyCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_paymentMethod)
  {
    PBDataWriterPlaceMark();
    [(BMWalletPaymentsCommerceOrderEmailPaymentInformationPaymentMethod *)self->_paymentMethod writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMWalletPaymentsCommerceOrderEmailPaymentInformation;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_31;
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v19 = [[BMWalletPaymentsCommerceOrderEmailPaymentInformationPaymentMethod alloc] initByReadFrom:fromCopy];
        if (!v19)
        {
          goto LABEL_30;
        }

        paymentMethod = v5->_paymentMethod;
        v5->_paymentMethod = v19;

        PBReaderRecallMark();
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
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_28;
          }

          v16 = PBReaderReadString();
          v17 = 24;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_28:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_30:
    v22 = 0;
  }

  else
  {
LABEL_31:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  totalAmount = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self totalAmount];
  totalCurrencyCode = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self totalCurrencyCode];
  paymentMethod = [(BMWalletPaymentsCommerceOrderEmailPaymentInformation *)self paymentMethod];
  v7 = [v3 initWithFormat:@"BMWalletPaymentsCommerceOrderEmailPaymentInformation with totalAmount: %@, totalCurrencyCode: %@, paymentMethod: %@", totalAmount, totalCurrencyCode, paymentMethod];

  return v7;
}

- (BMWalletPaymentsCommerceOrderEmailPaymentInformation)initWithTotalAmount:(id)amount totalCurrencyCode:(id)code paymentMethod:(id)method
{
  amountCopy = amount;
  codeCopy = code;
  methodCopy = method;
  v14.receiver = self;
  v14.super_class = BMWalletPaymentsCommerceOrderEmailPaymentInformation;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_totalAmount, amount);
    objc_storeStrong(&v12->_totalCurrencyCode, code);
    objc_storeStrong(&v12->_paymentMethod, method);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalAmount" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalCurrencyCode" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"paymentMethod" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalAmount" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalCurrencyCode" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"paymentMethod_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_636];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __63__BMWalletPaymentsCommerceOrderEmailPaymentInformation_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMWalletPaymentsCommerceOrderEmailPaymentInformation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end