@interface BMWalletTransaction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletTransaction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletTransaction)initWithPassUniqueID:(id)d passLocalizedDescription:(id)description transactionType:(int)type transactionID:(id)iD merchantType:(int)merchantType poiCategory:(id)category;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletTransaction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    passUniqueID = [(BMWalletTransaction *)self passUniqueID];
    passUniqueID2 = [v5 passUniqueID];
    v8 = passUniqueID2;
    if (passUniqueID == passUniqueID2)
    {
    }

    else
    {
      passUniqueID3 = [(BMWalletTransaction *)self passUniqueID];
      passUniqueID4 = [v5 passUniqueID];
      v11 = [passUniqueID3 isEqual:passUniqueID4];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    passLocalizedDescription = [(BMWalletTransaction *)self passLocalizedDescription];
    passLocalizedDescription2 = [v5 passLocalizedDescription];
    v15 = passLocalizedDescription2;
    if (passLocalizedDescription == passLocalizedDescription2)
    {
    }

    else
    {
      passLocalizedDescription3 = [(BMWalletTransaction *)self passLocalizedDescription];
      passLocalizedDescription4 = [v5 passLocalizedDescription];
      v18 = [passLocalizedDescription3 isEqual:passLocalizedDescription4];

      if (!v18)
      {
        goto LABEL_19;
      }
    }

    transactionType = [(BMWalletTransaction *)self transactionType];
    if (transactionType == [v5 transactionType])
    {
      transactionID = [(BMWalletTransaction *)self transactionID];
      transactionID2 = [v5 transactionID];
      v22 = transactionID2;
      if (transactionID == transactionID2)
      {
      }

      else
      {
        transactionID3 = [(BMWalletTransaction *)self transactionID];
        transactionID4 = [v5 transactionID];
        v25 = [transactionID3 isEqual:transactionID4];

        if (!v25)
        {
          goto LABEL_19;
        }
      }

      merchantType = [(BMWalletTransaction *)self merchantType];
      if (merchantType == [v5 merchantType])
      {
        poiCategory = [(BMWalletTransaction *)self poiCategory];
        poiCategory2 = [v5 poiCategory];
        if (poiCategory == poiCategory2)
        {
          v12 = 1;
        }

        else
        {
          poiCategory3 = [(BMWalletTransaction *)self poiCategory];
          poiCategory4 = [v5 poiCategory];
          v12 = [poiCategory3 isEqual:poiCategory4];
        }

        goto LABEL_20;
      }
    }

LABEL_19:
    v12 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  passUniqueID = [(BMWalletTransaction *)self passUniqueID];
  passLocalizedDescription = [(BMWalletTransaction *)self passLocalizedDescription];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletTransaction transactionType](self, "transactionType")}];
  transactionID = [(BMWalletTransaction *)self transactionID];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletTransaction merchantType](self, "merchantType")}];
  poiCategory = [(BMWalletTransaction *)self poiCategory];
  v23[0] = @"passUniqueID";
  null = passUniqueID;
  if (!passUniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v22 = passLocalizedDescription;
  v24[0] = null;
  v23[1] = @"passLocalizedDescription";
  null2 = passLocalizedDescription;
  if (!passLocalizedDescription)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v24[1] = null2;
  v23[2] = @"transactionType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  v23[3] = @"transactionID";
  null4 = transactionID;
  if (!transactionID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v13 = passUniqueID;
  v24[3] = null4;
  v23[4] = @"merchantType";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v23[5] = @"poiCategory";
  null6 = poiCategory;
  if (!poiCategory)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = null6;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (poiCategory)
  {
    if (v7)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (v7)
    {
LABEL_15:
      if (transactionID)
      {
        goto LABEL_16;
      }

LABEL_24:

      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  if (!transactionID)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (v5)
  {
    goto LABEL_17;
  }

LABEL_25:

LABEL_17:
  if (v22)
  {
    if (v13)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_19;
    }
  }

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMWalletTransaction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"passUniqueID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"passLocalizedDescription"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v14 = 0;
          v16 = 0;
          goto LABEL_46;
        }

        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = v8;
        v19 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"passLocalizedDescription"];
        v60 = v48;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v10 = v20 = error;
        v21 = v19;
        v8 = v18;
        v14 = 0;
        v16 = 0;
        *v20 = [v17 initWithDomain:v21 code:2 userInfo:v10];
        goto LABEL_45;
      }

      v47 = v9;
    }

    else
    {
      v47 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"transactionType"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v48 = 0;
            v16 = 0;
            v14 = v47;
            goto LABEL_45;
          }

          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = v8;
          v35 = *MEMORY[0x1E698F240];
          v57 = *MEMORY[0x1E696A578];
          v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transactionType"];
          v58 = v45;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v36 = v35;
          v8 = v34;
          v37 = [v49 initWithDomain:v36 code:2 userInfo:v22];
          v48 = 0;
          v16 = 0;
          *errorCopy = v37;
LABEL_44:
          v14 = v47;

          self = selfCopy;
LABEL_45:

          goto LABEL_46;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletTransactionTypeFromString(v10)];
      }

      v48 = v11;
    }

    else
    {
      v48 = 0;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"transactionID"];
    v44 = v8;
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v45 = 0;
          v16 = 0;
          goto LABEL_44;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v55 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transactionID"];
        v56 = v24;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v27 = [v46 initWithDomain:v26 code:2 userInfo:v23];
        v45 = 0;
        v16 = 0;
        *errorCopy = v27;
        goto LABEL_43;
      }

      v45 = v22;
    }

    else
    {
      v45 = 0;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"merchantType"];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v23;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v24 = 0;
            v16 = 0;
            goto LABEL_43;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v53 = *MEMORY[0x1E696A578];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"merchantType"];
          v54 = v29;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v40 = [v38 initWithDomain:v39 code:2 userInfo:v28];
          v24 = 0;
          v16 = 0;
          *errorCopy = v40;
          goto LABEL_42;
        }

        v25 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletTransactionMerchantTypeFromString(v23)];
      }

      v24 = v25;
    }

    else
    {
      v24 = 0;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"poiCategory"];
    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v51 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"poiCategory"];
          v52 = v32;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *errorCopy = [v42 initWithDomain:v41 code:2 userInfo:v33];
        }

        v29 = 0;
        v16 = 0;
        goto LABEL_42;
      }

      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v16 = -[BMWalletTransaction initWithPassUniqueID:passLocalizedDescription:transactionType:transactionID:merchantType:poiCategory:](selfCopy, "initWithPassUniqueID:passLocalizedDescription:transactionType:transactionID:merchantType:poiCategory:", v44, v47, [v48 intValue], v45, objc_msgSend(v24, "intValue"), v29);
    selfCopy = v16;
LABEL_42:

LABEL_43:
    v8 = v44;
    goto LABEL_44;
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
    v16 = 0;
    goto LABEL_47;
  }

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = *MEMORY[0x1E698F240];
  v61 = *MEMORY[0x1E696A578];
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"passUniqueID"];
  v62[0] = v14;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  v15 = [v12 initWithDomain:v13 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *error = v15;
LABEL_46:

LABEL_47:
  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletTransaction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_passUniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_passLocalizedDescription)
  {
    PBDataWriterWriteStringField();
  }

  transactionType = self->_transactionType;
  PBDataWriterWriteUint32Field();
  if (self->_transactionID)
  {
    PBDataWriterWriteStringField();
  }

  merchantType = self->_merchantType;
  PBDataWriterWriteUint32Field();
  if (self->_poiCategory)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMWalletTransaction;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_62;
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
        v36 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v36 & 0x7F) << v7;
        if ((v36 & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v28 = PBReaderReadString();
            v29 = 48;
            break;
          case 6:
            v28 = PBReaderReadString();
            v29 = 56;
            break;
          case 5:
            v23 = 0;
            v24 = 0;
            v18 = 0;
            while (1)
            {
              v36 = 0;
              v25 = [fromCopy position] + 1;
              if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v36 & 0x7F) << v23;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v22 = v24++ > 8;
              if (v22)
              {
                goto LABEL_56;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 7)
            {
LABEL_56:
              LODWORD(v18) = 0;
            }

            v31 = 24;
            goto LABEL_58;
          default:
LABEL_45:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_61;
            }

            goto LABEL_59;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v28 = PBReaderReadString();
            v29 = 32;
            break;
          case 2:
            v28 = PBReaderReadString();
            v29 = 40;
            break;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v36 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v36 & 0x7F) << v16;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_52;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 6)
            {
LABEL_52:
              LODWORD(v18) = 0;
            }

            v31 = 20;
LABEL_58:
            *(&v5->super.super.isa + v31) = v18;
            goto LABEL_59;
          default:
            goto LABEL_45;
        }
      }

      v30 = *(&v5->super.super.isa + v29);
      *(&v5->super.super.isa + v29) = v28;

LABEL_59:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_61:
    v33 = 0;
  }

  else
  {
LABEL_62:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  passUniqueID = [(BMWalletTransaction *)self passUniqueID];
  passLocalizedDescription = [(BMWalletTransaction *)self passLocalizedDescription];
  v6 = BMWalletTransactionTypeAsString([(BMWalletTransaction *)self transactionType]);
  transactionID = [(BMWalletTransaction *)self transactionID];
  v8 = BMWalletTransactionMerchantTypeAsString([(BMWalletTransaction *)self merchantType]);
  poiCategory = [(BMWalletTransaction *)self poiCategory];
  v10 = [v3 initWithFormat:@"BMWalletTransaction with passUniqueID: %@, passLocalizedDescription: %@, transactionType: %@, transactionID: %@, merchantType: %@, poiCategory: %@", passUniqueID, passLocalizedDescription, v6, transactionID, v8, poiCategory];

  return v10;
}

- (BMWalletTransaction)initWithPassUniqueID:(id)d passLocalizedDescription:(id)description transactionType:(int)type transactionID:(id)iD merchantType:(int)merchantType poiCategory:(id)category
{
  dCopy = d;
  descriptionCopy = description;
  iDCopy = iD;
  categoryCopy = category;
  v21.receiver = self;
  v21.super_class = BMWalletTransaction;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_passUniqueID, d);
    objc_storeStrong(&v18->_passLocalizedDescription, description);
    v18->_transactionType = type;
    objc_storeStrong(&v18->_transactionID, iD);
    v18->_merchantType = merchantType;
    objc_storeStrong(&v18->_poiCategory, category);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"passUniqueID" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"passLocalizedDescription" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionType" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionID" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchantType" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"poiCategory" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passUniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passLocalizedDescription" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"merchantType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"poiCategory" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMWalletTransaction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end