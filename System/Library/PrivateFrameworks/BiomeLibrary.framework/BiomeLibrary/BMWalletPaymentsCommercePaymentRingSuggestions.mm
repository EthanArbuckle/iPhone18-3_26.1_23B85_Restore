@interface BMWalletPaymentsCommercePaymentRingSuggestions
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommercePaymentRingSuggestions)initWithAccountState:(int)state paidUsingRing:(int)ring lastPaymentCategory:(int)category paymentAction:(int)action;
- (BMWalletPaymentsCommercePaymentRingSuggestions)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommercePaymentRingSuggestions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    accountState = [(BMWalletPaymentsCommercePaymentRingSuggestions *)self accountState];
    if (accountState == [v5 accountState] && (v7 = -[BMWalletPaymentsCommercePaymentRingSuggestions paidUsingRing](self, "paidUsingRing"), v7 == objc_msgSend(v5, "paidUsingRing")) && (v8 = -[BMWalletPaymentsCommercePaymentRingSuggestions lastPaymentCategory](self, "lastPaymentCategory"), v8 == objc_msgSend(v5, "lastPaymentCategory")))
    {
      paymentAction = [(BMWalletPaymentsCommercePaymentRingSuggestions *)self paymentAction];
      v10 = paymentAction == [v5 paymentAction];
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
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"paidUsingRing";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"lastPaymentCategory";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"paymentAction";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
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

- (BMWalletPaymentsCommercePaymentRingSuggestions)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"accountState"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v39 = 0;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"paidUsingRing"];
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
          if (!error)
          {
            v15 = 0;
            selfCopy5 = 0;
            goto LABEL_30;
          }

          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          selfCopy = self;
          v27 = *MEMORY[0x1E698F240];
          v44 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"paidUsingRing"];
          v45 = v14;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v28 = v27;
          self = selfCopy;
          v15 = 0;
          selfCopy5 = 0;
          *errorCopy = [v24 initWithDomain:v28 code:2 userInfo:v13];
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"lastPaymentCategory"];
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
          if (!error)
          {
            v14 = 0;
            selfCopy5 = 0;
            goto LABEL_29;
          }

          errorCopy2 = error;
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v42 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"lastPaymentCategory"];
          v43 = v18;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v32 = [v30 initWithDomain:v31 code:2 userInfo:v16];
          v14 = 0;
          selfCopy5 = 0;
          *errorCopy2 = v32;
          goto LABEL_28;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommercePaymentRingSuggestionsLastPaymentCategoryFromString(v13)];
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"paymentAction"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy4 = self;
        v18 = v16;
      }

      else
      {
        v15 = v11;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v36 = objc_alloc(MEMORY[0x1E696ABC0]);
            v35 = *MEMORY[0x1E698F240];
            v40 = *MEMORY[0x1E696A578];
            v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"paymentAction"];
            v41 = v33;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            *error = [v36 initWithDomain:v35 code:2 userInfo:v34];
          }

          v18 = 0;
          selfCopy5 = 0;
          goto LABEL_28;
        }

        selfCopy4 = self;
        v18 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommercePaymentRingSuggestionsPaymentActionFromString(v16)];
      }
    }

    else
    {
      selfCopy4 = self;
      v18 = 0;
    }

    v15 = v11;
    self = -[BMWalletPaymentsCommercePaymentRingSuggestions initWithAccountState:paidUsingRing:lastPaymentCategory:paymentAction:](selfCopy4, "initWithAccountState:paidUsingRing:lastPaymentCategory:paymentAction:", [v39 intValue], objc_msgSend(v11, "intValue"), objc_msgSend(v14, "intValue"), objc_msgSend(v18, "intValue"));
    selfCopy5 = self;
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

  if (!error)
  {
    v39 = 0;
    selfCopy5 = 0;
    goto LABEL_31;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v46 = *MEMORY[0x1E696A578];
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"accountState"];
  v47[0] = v15;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v39 = 0;
  selfCopy5 = 0;
  *error = [v22 initWithDomain:v23 code:2 userInfo:v10];
LABEL_30:

LABEL_31:
  v20 = *MEMORY[0x1E69E9840];
  return selfCopy5;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommercePaymentRingSuggestions *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  accountState = self->_accountState;
  toCopy = to;
  PBDataWriterWriteUint32Field();
  paidUsingRing = self->_paidUsingRing;
  PBDataWriterWriteUint32Field();
  lastPaymentCategory = self->_lastPaymentCategory;
  PBDataWriterWriteUint32Field();
  paymentAction = self->_paymentAction;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v45.receiver = self;
  v45.super_class = BMWalletPaymentsCommercePaymentRingSuggestions;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_81;
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
        v46 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v38 = [fromCopy position] + 1;
            if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || (LODWORD(v31) = v37, v37 > 0xE))
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
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || (LODWORD(v31) = v25, v25 > 4))
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
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v31 > 4)
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
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || (LODWORD(v31) = v18, v18 > 2))
        {
LABEL_63:
          LODWORD(v31) = 0;
        }

        v41 = &OBJC_IVAR___BMWalletPaymentsCommercePaymentRingSuggestions__paidUsingRing;
      }

      *(&v5->super.super.isa + *v41) = v31;
LABEL_78:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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

- (BMWalletPaymentsCommercePaymentRingSuggestions)initWithAccountState:(int)state paidUsingRing:(int)ring lastPaymentCategory:(int)category paymentAction:(int)action
{
  v12.receiver = self;
  v12.super_class = BMWalletPaymentsCommercePaymentRingSuggestions;
  v10 = [(BMEventBase *)&v12 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    v10->_accountState = state;
    v10->_paidUsingRing = ring;
    v10->_lastPaymentCategory = category;
    v10->_paymentAction = action;
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