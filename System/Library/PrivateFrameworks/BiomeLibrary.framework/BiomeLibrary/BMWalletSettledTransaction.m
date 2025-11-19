@interface BMWalletSettledTransaction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletSettledTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWalletSettledTransaction)initWithPassUniqueID:(id)a3 transactionID:(id)a4 merchantType:(int)a5 geoPOICategory:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletSettledTransaction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletSettledTransaction *)self passUniqueID];
    v7 = [v5 passUniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletSettledTransaction *)self passUniqueID];
      v10 = [v5 passUniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v13 = [(BMWalletSettledTransaction *)self transactionID];
    v14 = [v5 transactionID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletSettledTransaction *)self transactionID];
      v17 = [v5 transactionID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_14;
      }
    }

    v19 = [(BMWalletSettledTransaction *)self merchantType];
    if (v19 == [v5 merchantType])
    {
      v20 = [(BMWalletSettledTransaction *)self geoPOICategory];
      v21 = [v5 geoPOICategory];
      if (v20 == v21)
      {
        v12 = 1;
      }

      else
      {
        v22 = [(BMWalletSettledTransaction *)self geoPOICategory];
        v23 = [v5 geoPOICategory];
        v12 = [v22 isEqual:v23];
      }

      goto LABEL_17;
    }

LABEL_14:
    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletSettledTransaction *)self passUniqueID];
  v4 = [(BMWalletSettledTransaction *)self transactionID];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletSettledTransaction merchantType](self, "merchantType")}];
  v6 = [(BMWalletSettledTransaction *)self geoPOICategory];
  v14[0] = @"passUniqueID";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"transactionID";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"merchantType";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"geoPOICategory";
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

- (BMWalletSettledTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v43[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"passUniqueID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"transactionID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v34 = 0;
          v17 = 0;
          goto LABEL_29;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v19 = v7;
        v20 = a4;
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transactionID"];
        v41 = v13;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v21 = [v35 initWithDomain:v18 code:2 userInfo:v10];
        v34 = 0;
        v17 = 0;
        *v20 = v21;
        v7 = v19;
        goto LABEL_28;
      }

      v34 = v9;
    }

    else
    {
      v34 = 0;
    }

    v33 = v7;
    v10 = [v6 objectForKeyedSubscript:@"merchantType"];
    v11 = a4;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v13 = 0;
            v17 = 0;
            v7 = v33;
            goto LABEL_28;
          }

          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v38 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"merchantType"];
          v39 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v29 = [v32 initWithDomain:v28 code:2 userInfo:v22];
          v13 = 0;
          v17 = 0;
          *v11 = v29;
          goto LABEL_27;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletSettledTransactionMerchantTypeFromString(v10)];
      }

      v13 = v14;
    }

    else
    {
      v12 = self;
      v13 = 0;
    }

    v22 = [v6 objectForKeyedSubscript:@"geoPOICategory"];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v11)
        {
          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v36 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"geoPOICategory"];
          v37 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          *v11 = [v31 initWithDomain:v30 code:2 userInfo:v27];
        }

        v23 = 0;
        v17 = 0;
        goto LABEL_27;
      }

      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v17 = -[BMWalletSettledTransaction initWithPassUniqueID:transactionID:merchantType:geoPOICategory:](v12, "initWithPassUniqueID:transactionID:merchantType:geoPOICategory:", v8, v34, [v13 intValue], v23);
    v12 = v17;
LABEL_27:
    v7 = v33;

    self = v12;
LABEL_28:

    goto LABEL_29;
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
    v17 = 0;
    goto LABEL_30;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v42 = *MEMORY[0x1E696A578];
  v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"passUniqueID"];
  v43[0] = v34;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v8 = 0;
  v17 = 0;
  *a4 = [v15 initWithDomain:v16 code:2 userInfo:v9];
LABEL_29:

LABEL_30:
  v24 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletSettledTransaction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (self->_passUniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_transactionID)
  {
    PBDataWriterWriteStringField();
  }

  merchantType = self->_merchantType;
  PBDataWriterWriteUint32Field();
  if (self->_geoPOICategory)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMWalletSettledTransaction;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_45;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_43;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v30 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
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
        goto LABEL_43;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 4)
      {
        v16 = PBReaderReadString();
        v17 = 40;
LABEL_37:
        v25 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        goto LABEL_42;
      }

      if (v15 != 3)
      {
LABEL_33:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v30 = 0;
        v21 = [v4 position] + 1;
        if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
        {
          v23 = [v4 data];
          [v23 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v20 |= (v30 & 0x7F) << v18;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        if (v19++ > 8)
        {
          goto LABEL_40;
        }
      }

      if (([v4 hasError] & 1) != 0 || v20 > 7)
      {
LABEL_40:
        LODWORD(v20) = 0;
      }

      v5->_merchantType = v20;
LABEL_42:
      v26 = [v4 position];
      if (v26 >= [v4 length])
      {
        goto LABEL_43;
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
        goto LABEL_33;
      }

      v16 = PBReaderReadString();
      v17 = 32;
    }

    goto LABEL_37;
  }

LABEL_43:
  if ([v4 hasError])
  {
LABEL_44:
    v27 = 0;
  }

  else
  {
LABEL_45:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMWalletSettledTransaction *)self passUniqueID];
  v5 = [(BMWalletSettledTransaction *)self transactionID];
  v6 = BMWalletSettledTransactionMerchantTypeAsString([(BMWalletSettledTransaction *)self merchantType]);
  v7 = [(BMWalletSettledTransaction *)self geoPOICategory];
  v8 = [v3 initWithFormat:@"BMWalletSettledTransaction with passUniqueID: %@, transactionID: %@, merchantType: %@, geoPOICategory: %@", v4, v5, v6, v7];

  return v8;
}

- (BMWalletSettledTransaction)initWithPassUniqueID:(id)a3 transactionID:(id)a4 merchantType:(int)a5 geoPOICategory:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v16.receiver = self;
  v16.super_class = BMWalletSettledTransaction;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_passUniqueID, a3);
    objc_storeStrong(&v14->_transactionID, a4);
    v14->_merchantType = a5;
    objc_storeStrong(&v14->_geoPOICategory, a6);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"passUniqueID" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionID" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchantType" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"geoPOICategory" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passUniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"merchantType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"geoPOICategory" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
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

    v8 = [[BMWalletSettledTransaction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end