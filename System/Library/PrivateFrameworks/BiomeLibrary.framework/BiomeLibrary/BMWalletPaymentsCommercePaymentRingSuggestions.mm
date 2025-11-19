@interface BMWalletPaymentsCommercePaymentRingSuggestions
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommercePaymentRingSuggestions)initWithAccountState:(int)a3 paidUsingRing:(int)a4 lastPaymentCategory:(int)a5 paymentAction:(int)a6;
- (BMWalletPaymentsCommercePaymentRingSuggestions)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommercePaymentRingSuggestions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommercePaymentRingSuggestions *)self accountState];
    if (v6 == [v5 accountState] && (v7 = -[BMWalletPaymentsCommercePaymentRingSuggestions paidUsingRing](self, "paidUsingRing"), v7 == objc_msgSend(v5, "paidUsingRing")) && (v8 = -[BMWalletPaymentsCommercePaymentRingSuggestions lastPaymentCategory](self, "lastPaymentCategory"), v8 == objc_msgSend(v5, "lastPaymentCategory")))
    {
      v9 = [(BMWalletPaymentsCommercePaymentRingSuggestions *)self paymentAction];
      v10 = v9 == [v5 paymentAction];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommercePaymentRingSuggestions accountState](self, "accountState")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommercePaymentRingSuggestions paidUsingRing](self, "paidUsingRing")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommercePaymentRingSuggestions lastPaymentCategory](self, "lastPaymentCategory")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommercePaymentRingSuggestions paymentAction](self, "paymentAction")}];
  v14[0] = @"accountState";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"paidUsingRing";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"lastPaymentCategory";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"paymentAction";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5)
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
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMWalletPaymentsCommercePaymentRingSuggestions)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"accountState"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v39 = 0;
LABEL_9:
    v9 = [v6 objectForKeyedSubscript:@"paidUsingRing"];
    v38 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v15 = 0;
            v19 = 0;
            goto LABEL_30;
          }

          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = a4;
          v26 = self;
          v27 = *MEMORY[0x1E698F240];
          v44 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"paidUsingRing"];
          v45 = v14;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v28 = v27;
          self = v26;
          v15 = 0;
          v19 = 0;
          *v25 = [v24 initWithDomain:v28 code:2 userInfo:v13];
          goto LABEL_29;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommercePaymentRingSuggestionsPaidUsingRingFromString(v10)];
      }

      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"lastPaymentCategory"];
    v37 = v7;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v15 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v14 = 0;
            v19 = 0;
            goto LABEL_29;
          }

          v29 = a4;
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v42 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"lastPaymentCategory"];
          v43 = v18;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v32 = [v30 initWithDomain:v31 code:2 userInfo:v16];
          v14 = 0;
          v19 = 0;
          *v29 = v32;
          goto LABEL_28;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommercePaymentRingSuggestionsLastPaymentCategoryFromString(v13)];
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"paymentAction"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = self;
        v18 = v16;
      }

      else
      {
        v15 = v11;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v36 = objc_alloc(MEMORY[0x1E696ABC0]);
            v35 = *MEMORY[0x1E698F240];
            v40 = *MEMORY[0x1E696A578];
            v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"paymentAction"];
            v41 = v33;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            *a4 = [v36 initWithDomain:v35 code:2 userInfo:v34];
          }

          v18 = 0;
          v19 = 0;
          goto LABEL_28;
        }

        v17 = self;
        v18 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionFromString(v16)];
      }
    }

    else
    {
      v17 = self;
      v18 = 0;
    }

    v15 = v11;
    self = -[BMWalletPaymentsCommercePaymentRingSuggestions initWithAccountState:paidUsingRing:lastPaymentCategory:paymentAction:](v17, "initWithAccountState:paidUsingRing:lastPaymentCategory:paymentAction:", [v39 intValue], objc_msgSend(v11, "intValue"), objc_msgSend(v14, "intValue"), objc_msgSend(v18, "intValue"));
    v19 = self;
LABEL_28:

    v7 = v37;
LABEL_29:

    v10 = v38;
    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_8:
    v39 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommercePaymentRingSuggestionsAccountStateFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v39 = 0;
    v19 = 0;
    goto LABEL_31;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v46 = *MEMORY[0x1E696A578];
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"accountState"];
  v47[0] = v15;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v39 = 0;
  v19 = 0;
  *a4 = [v22 initWithDomain:v23 code:2 userInfo:v10];
LABEL_30:

LABEL_31:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommercePaymentRingSuggestions *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  accountState = self->_accountState;
  v8 = a3;
  PBDataWriterWriteUint32Field();
  paidUsingRing = self->_paidUsingRing;
  PBDataWriterWriteUint32Field();
  lastPaymentCategory = self->_lastPaymentCategory;
  PBDataWriterWriteUint32Field();
  paymentAction = self->_paymentAction;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = BMWalletPaymentsCommercePaymentRingSuggestions;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_81;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v46 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v46 & 0x7F) << v7;
        if ((v46 & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            v46 = 0;
            v38 = [v4 position] + 1;
            if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
            {
              v40 = [v4 data];
              [v40 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v37 |= (v46 & 0x7F) << v35;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v22 = v36++ > 8;
            if (v22)
            {
              goto LABEL_75;
            }
          }

          if (([v4 hasError] & 1) != 0 || (LODWORD(v31) = v37, v37 > 0xE))
          {
LABEL_75:
            LODWORD(v31) = 0;
          }

          v41 = &OBJC_IVAR___BMWalletPaymentsCommercePaymentRingSuggestions__lastPaymentCategory;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_41:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_80;
            }

            goto LABEL_78;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v46 = 0;
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v25 |= (v46 & 0x7F) << v23;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_67;
            }
          }

          if (([v4 hasError] & 1) != 0 || (LODWORD(v31) = v25, v25 > 4))
          {
LABEL_67:
            LODWORD(v31) = 0;
          }

          v41 = &OBJC_IVAR___BMWalletPaymentsCommercePaymentRingSuggestions__paymentAction;
        }
      }

      else if (v15 == 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v46 = 0;
          v32 = [v4 position] + 1;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v31 |= (v46 & 0x7F) << v29;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v22 = v30++ > 8;
          if (v22)
          {
            goto LABEL_71;
          }
        }

        if (([v4 hasError] & 1) != 0 || v31 > 4)
        {
LABEL_71:
          LODWORD(v31) = 0;
        }

        v41 = &OBJC_IVAR___BMWalletPaymentsCommercePaymentRingSuggestions__accountState;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v46 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v46 & 0x7F) << v16;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            goto LABEL_63;
          }
        }

        if (([v4 hasError] & 1) != 0 || (LODWORD(v31) = v18, v18 > 2))
        {
LABEL_63:
          LODWORD(v31) = 0;
        }

        v41 = &OBJC_IVAR___BMWalletPaymentsCommercePaymentRingSuggestions__paidUsingRing;
      }

      *(&v5->super.super.isa + *v41) = v31;
LABEL_78:
      v42 = [v4 position];
    }

    while (v42 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_80:
    v43 = 0;
  }

  else
  {
LABEL_81:
    v43 = v5;
  }

  return v43;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMWalletPaymentsCommercePaymentRingSuggestionsAccountStateAsString([(BMWalletPaymentsCommercePaymentRingSuggestions *)self accountState]);
  v5 = BMWalletPaymentsCommercePaymentRingSuggestionsPaidUsingRingAsString([(BMWalletPaymentsCommercePaymentRingSuggestions *)self paidUsingRing]);
  v6 = BMWalletPaymentsCommercePaymentRingSuggestionsLastPaymentCategoryAsString([(BMWalletPaymentsCommercePaymentRingSuggestions *)self lastPaymentCategory]);
  v7 = BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionAsString([(BMWalletPaymentsCommercePaymentRingSuggestions *)self paymentAction]);
  v8 = [v3 initWithFormat:@"BMWalletPaymentsCommercePaymentRingSuggestions with accountState: %@, paidUsingRing: %@, lastPaymentCategory: %@, paymentAction: %@", v4, v5, v6, v7];

  return v8;
}

- (BMWalletPaymentsCommercePaymentRingSuggestions)initWithAccountState:(int)a3 paidUsingRing:(int)a4 lastPaymentCategory:(int)a5 paymentAction:(int)a6
{
  v12.receiver = self;
  v12.super_class = BMWalletPaymentsCommercePaymentRingSuggestions;
  v10 = [(BMEventBase *)&v12 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    v10->_accountState = a3;
    v10->_paidUsingRing = a4;
    v10->_lastPaymentCategory = a5;
    v10->_paymentAction = a6;
  }

  return v10;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountState" number:1 type:4 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"paidUsingRing" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastPaymentCategory" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"paymentAction" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountState" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"paidUsingRing" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastPaymentCategory" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"paymentAction" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMWalletPaymentsCommercePaymentRingSuggestions alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end