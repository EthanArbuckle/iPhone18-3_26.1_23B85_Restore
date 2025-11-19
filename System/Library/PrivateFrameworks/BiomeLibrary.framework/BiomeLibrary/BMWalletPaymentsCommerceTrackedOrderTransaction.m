@interface BMWalletPaymentsCommerceTrackedOrderTransaction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrderTransaction)initWithAmount:(id)a3 isoCurrencyCode:(id)a4 paymentMethod:(id)a5 transactionIdenifier:(id)a6;
- (BMWalletPaymentsCommerceTrackedOrderTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceTrackedOrderTransaction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self amount];
    v7 = [v5 amount];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self amount];
      v10 = [v5 amount];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self isoCurrencyCode];
    v14 = [v5 isoCurrencyCode];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self isoCurrencyCode];
      v17 = [v5 isoCurrencyCode];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self paymentMethod];
    v20 = [v5 paymentMethod];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self paymentMethod];
      v23 = [v5 paymentMethod];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v25 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self transactionIdenifier];
    v26 = [v5 transactionIdenifier];
    if (v25 == v26)
    {
      v12 = 1;
    }

    else
    {
      v27 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self transactionIdenifier];
      v28 = [v5 transactionIdenifier];
      v12 = [v27 isEqual:v28];
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
  v3 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self amount];
  v4 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self isoCurrencyCode];
  v5 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self paymentMethod];
  v6 = [v5 jsonDictionary];

  v7 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self transactionIdenifier];
  v15[0] = @"amount";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v8;
  v15[1] = @"isoCurrencyCode";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v9;
  v15[2] = @"paymentMethod";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v10;
  v15[3] = @"transactionIdenifier";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v6)
    {
LABEL_11:
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v3)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMWalletPaymentsCommerceTrackedOrderTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"amount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"isoCurrencyCode"];
    v33 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *a4 = [v21 initWithDomain:v22 code:2 userInfo:v12];
        a4 = 0;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"paymentMethod"];
    v11 = self;
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = 0;
LABEL_10:
      v13 = [v6 objectForKeyedSubscript:@"transactionIdenifier"];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v35 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transactionIdenifier"];
            v36 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            *a4 = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v14 = 0;
          v15 = 0;
          a4 = v32;
          goto LABEL_14;
        }

        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      a4 = v32;
      v15 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)v11 initWithAmount:v8 isoCurrencyCode:v32 paymentMethod:v12 transactionIdenifier:v14];
      v11 = v15;
LABEL_14:

      self = v11;
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

      if (a4)
      {
        v17 = v17;
        *a4 = v17;
      }

      v15 = 0;
      v10 = v16;
    }

    else
    {
      if (!a4)
      {
        v15 = 0;
        a4 = v32;
        goto LABEL_34;
      }

      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v37 = *MEMORY[0x1E696A578];
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"paymentMethod"];
      v38 = v12;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a4 = [v30 initWithDomain:v23 code:2 userInfo:v24];

      v15 = 0;
    }

    self = v11;
    a4 = v32;
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
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
  *a4 = [v18 initWithDomain:v19 code:2 userInfo:v9];
  a4 = v20;
LABEL_35:

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
    [(BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod *)self->_paymentMethod writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_transactionIdenifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMWalletPaymentsCommerceTrackedOrderTransaction;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_35;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_33;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v25 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

      v19 = [[BMWalletPaymentsCommerceTrackedOrderTransactionPaymentMethod alloc] initByReadFrom:v4];
      if (!v19)
      {
        goto LABEL_34;
      }

      paymentMethod = v5->_paymentMethod;
      v5->_paymentMethod = v19;

      PBReaderRecallMark();
LABEL_32:
      v21 = [v4 position];
      if (v21 >= [v4 length])
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
  if ([v4 hasError])
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
  v4 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self amount];
  v5 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self isoCurrencyCode];
  v6 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self paymentMethod];
  v7 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)self transactionIdenifier];
  v8 = [v3 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrderTransaction with amount: %@, isoCurrencyCode: %@, paymentMethod: %@, transactionIdenifier: %@", v4, v5, v6, v7];

  return v8;
}

- (BMWalletPaymentsCommerceTrackedOrderTransaction)initWithAmount:(id)a3 isoCurrencyCode:(id)a4 paymentMethod:(id)a5 transactionIdenifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = BMWalletPaymentsCommerceTrackedOrderTransaction;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_amount, a3);
    objc_storeStrong(&v15->_isoCurrencyCode, a4);
    objc_storeStrong(&v15->_paymentMethod, a5);
    objc_storeStrong(&v15->_transactionIdenifier, a6);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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