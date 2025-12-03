@interface BMWalletPaymentsCommerceTrackedOrderPayment
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceTrackedOrderPayment)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceTrackedOrderPayment)initWithTotalAmount:(id)amount totalIsoCurrencyCode:(id)code transactions:(id)transactions;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_transactionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceTrackedOrderPayment

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    totalAmount = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self totalAmount];
    totalAmount2 = [v5 totalAmount];
    v8 = totalAmount2;
    if (totalAmount == totalAmount2)
    {
    }

    else
    {
      totalAmount3 = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self totalAmount];
      totalAmount4 = [v5 totalAmount];
      v11 = [totalAmount3 isEqual:totalAmount4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    totalIsoCurrencyCode = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self totalIsoCurrencyCode];
    totalIsoCurrencyCode2 = [v5 totalIsoCurrencyCode];
    v15 = totalIsoCurrencyCode2;
    if (totalIsoCurrencyCode == totalIsoCurrencyCode2)
    {
    }

    else
    {
      totalIsoCurrencyCode3 = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self totalIsoCurrencyCode];
      totalIsoCurrencyCode4 = [v5 totalIsoCurrencyCode];
      v18 = [totalIsoCurrencyCode3 isEqual:totalIsoCurrencyCode4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    transactions = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self transactions];
    transactions2 = [v5 transactions];
    if (transactions == transactions2)
    {
      v12 = 1;
    }

    else
    {
      transactions3 = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self transactions];
      transactions4 = [v5 transactions];
      v12 = [transactions3 isEqual:transactions4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  totalAmount = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self totalAmount];
  totalIsoCurrencyCode = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self totalIsoCurrencyCode];
  _transactionsJSONArray = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self _transactionsJSONArray];
  v12[0] = @"totalAmount";
  null = totalAmount;
  if (!totalAmount)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"totalIsoCurrencyCode";
  null2 = totalIsoCurrencyCode;
  if (!totalIsoCurrencyCode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"transactions";
  null3 = _transactionsJSONArray;
  if (!_transactionsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (_transactionsJSONArray)
  {
    if (totalIsoCurrencyCode)
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

  if (!totalIsoCurrencyCode)
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
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_transactionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  transactions = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self transactions];
  v5 = [transactions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(transactions);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [transactions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceTrackedOrderPayment)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v73[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"totalAmount"];
  v8 = 0x1E695D000uLL;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        selfCopy2 = 0;
        goto LABEL_44;
      }

      v28 = objc_alloc(MEMORY[0x1E696ABC0]);
      v29 = *MEMORY[0x1E698F240];
      v72 = *MEMORY[0x1E696A578];
      errorCopy = error;
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"totalAmount"];
      v73[0] = v31;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
      error = 0;
      selfCopy2 = 0;
      *errorCopy = [v28 initWithDomain:v29 code:2 userInfo:v10];
      v11 = v31;
      goto LABEL_43;
    }

    errorCopy3 = error;
    error = v7;
  }

  else
  {
    errorCopy3 = error;
    error = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"totalIsoCurrencyCode"];
  v56 = v7;
  v57 = v9;
  if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = 0;
LABEL_7:
    v12 = [dictionaryCopy objectForKeyedSubscript:@"transactions"];
    null = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 isEqual:null];

    if (v14)
    {
      v52 = v11;
      errorCopy5 = error;
      v54 = dictionaryCopy;

      v12 = 0;
LABEL_12:
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v12 = v12;
      v16 = [v12 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = v16;
      v18 = *v60;
      selfCopy = self;
LABEL_14:
      v19 = 0;
      while (1)
      {
        if (*v60 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v59 + 1) + 8 * v19);
        v21 = *(v8 + 4016);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          self = selfCopy;
          error = errorCopy5;
          v37 = errorCopy3;
          if (!errorCopy3)
          {
            goto LABEL_40;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v63 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"transactions"];
          v64 = v23;
          v40 = MEMORY[0x1E695DF20];
          v41 = &v64;
          v42 = &v63;
          goto LABEL_35;
        }

        v22 = v8;
        v23 = v20;
        v24 = [BMWalletPaymentsCommerceTrackedOrderTransaction alloc];
        v58 = 0;
        v25 = [(BMWalletPaymentsCommerceTrackedOrderTransaction *)v24 initWithJSONDictionary:v23 error:&v58];
        v26 = v58;
        if (v26)
        {
          v43 = v26;
          if (errorCopy3)
          {
            v44 = v26;
            *errorCopy3 = v43;
          }

          self = selfCopy;
          error = errorCopy5;
LABEL_39:

LABEL_40:
          selfCopy2 = 0;
          dictionaryCopy = v54;
          v11 = v52;
          goto LABEL_41;
        }

        [v15 addObject:v25];

        ++v19;
        v8 = v22;
        if (v17 == v19)
        {
          v17 = [v12 countByEnumeratingWithState:&v59 objects:v67 count:16];
          self = selfCopy;
          if (v17)
          {
            goto LABEL_14;
          }

LABEL_22:

          v11 = v52;
          error = errorCopy5;
          self = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self initWithTotalAmount:errorCopy5 totalIsoCurrencyCode:v52 transactions:v15];
          selfCopy2 = self;
          dictionaryCopy = v54;
LABEL_41:

          v7 = v56;
          goto LABEL_42;
        }
      }

      self = selfCopy;
      error = errorCopy5;
      v37 = errorCopy3;
      if (!errorCopy3)
      {
        goto LABEL_40;
      }

      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v39 = *MEMORY[0x1E698F240];
      v65 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"transactions"];
      v66 = v23;
      v40 = MEMORY[0x1E695DF20];
      v41 = &v66;
      v42 = &v65;
LABEL_35:
      v43 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:1];
      *v37 = [v38 initWithDomain:v39 code:2 userInfo:v43];
      goto LABEL_39;
    }

    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v52 = v11;
      errorCopy5 = error;
      v54 = dictionaryCopy;
      goto LABEL_12;
    }

    if (errorCopy3)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v68 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"transactions"];
      v69 = v15;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      *errorCopy3 = [v47 initWithDomain:v48 code:2 userInfo:v49];

      selfCopy2 = 0;
      goto LABEL_41;
    }

    selfCopy2 = 0;
LABEL_42:

    v10 = v57;
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    goto LABEL_7;
  }

  if (errorCopy3)
  {
    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = *MEMORY[0x1E698F240];
    v70 = *MEMORY[0x1E696A578];
    selfCopy3 = self;
    v35 = objc_alloc(MEMORY[0x1E696AEC0]);
    v50 = objc_opt_class();
    v36 = v35;
    self = selfCopy3;
    v12 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v50, @"totalIsoCurrencyCode"];
    v71 = v12;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v11 = 0;
    selfCopy2 = 0;
    *errorCopy3 = [v32 initWithDomain:v33 code:2 userInfo:v15];
    goto LABEL_41;
  }

  v11 = 0;
  selfCopy2 = 0;
LABEL_43:

LABEL_44:
  v45 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceTrackedOrderPayment *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_totalAmount)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_totalIsoCurrencyCode)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_transactions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMWalletPaymentsCommerceTrackedOrderPayment;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v29[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v29[0] & 0x7F) << v8;
        if ((v29[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v29[0] = 0;
        v29[1] = 0;
        if (!PBReaderPlaceMark() || (v20 = [[BMWalletPaymentsCommerceTrackedOrderTransaction alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_33:

          goto LABEL_30;
        }

        v21 = v20;
        [v6 addObject:v20];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 == 2)
        {
          v17 = PBReaderReadString();
          v18 = 32;
          goto LABEL_23;
        }

        if (v16 == 1)
        {
          v17 = PBReaderReadString();
          v18 = 24;
LABEL_23:
          v19 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_28;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_28:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v23 = [v6 copy];
  transactions = v5->_transactions;
  v5->_transactions = v23;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_30:
    v26 = 0;
  }

  else
  {
LABEL_31:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  totalAmount = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self totalAmount];
  totalIsoCurrencyCode = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self totalIsoCurrencyCode];
  transactions = [(BMWalletPaymentsCommerceTrackedOrderPayment *)self transactions];
  v7 = [v3 initWithFormat:@"BMWalletPaymentsCommerceTrackedOrderPayment with totalAmount: %@, totalIsoCurrencyCode: %@, transactions: %@", totalAmount, totalIsoCurrencyCode, transactions];

  return v7;
}

- (BMWalletPaymentsCommerceTrackedOrderPayment)initWithTotalAmount:(id)amount totalIsoCurrencyCode:(id)code transactions:(id)transactions
{
  amountCopy = amount;
  codeCopy = code;
  transactionsCopy = transactions;
  v14.receiver = self;
  v14.super_class = BMWalletPaymentsCommerceTrackedOrderPayment;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_totalAmount, amount);
    objc_storeStrong(&v12->_totalIsoCurrencyCode, code);
    objc_storeStrong(&v12->_transactions, transactions);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalAmount" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalIsoCurrencyCode" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactions" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalAmount" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalIsoCurrencyCode" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"transactions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_516_93212];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __54__BMWalletPaymentsCommerceTrackedOrderPayment_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _transactionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMWalletPaymentsCommerceTrackedOrderPayment alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end