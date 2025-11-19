@interface BMContextSyncWalletTransaction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMContextSyncWalletTransaction)initWithID:(id)a3 deviceUUID:(id)a4 passUniqueID:(id)a5 passLocalizedDescription:(id)a6 transactionType:(int)a7 transactionID:(id)a8 merchantType:(int)a9 poiCategory:(id)a10;
- (BMContextSyncWalletTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMContextSyncWalletTransaction

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceUUID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passUniqueID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passLocalizedDescription" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transactionID" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"merchantType" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"poiCategory" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMContextSyncWalletTransaction *)self ID];
    v7 = [v5 ID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMContextSyncWalletTransaction *)self ID];
      v10 = [v5 ID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    v13 = [(BMContextSyncWalletTransaction *)self deviceUUID];
    v14 = [v5 deviceUUID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMContextSyncWalletTransaction *)self deviceUUID];
      v17 = [v5 deviceUUID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    v19 = [(BMContextSyncWalletTransaction *)self passUniqueID];
    v20 = [v5 passUniqueID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMContextSyncWalletTransaction *)self passUniqueID];
      v23 = [v5 passUniqueID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_27;
      }
    }

    v25 = [(BMContextSyncWalletTransaction *)self passLocalizedDescription];
    v26 = [v5 passLocalizedDescription];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMContextSyncWalletTransaction *)self passLocalizedDescription];
      v29 = [v5 passLocalizedDescription];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_27;
      }
    }

    v31 = [(BMContextSyncWalletTransaction *)self transactionType];
    if (v31 == [v5 transactionType])
    {
      v32 = [(BMContextSyncWalletTransaction *)self transactionID];
      v33 = [v5 transactionID];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMContextSyncWalletTransaction *)self transactionID];
        v36 = [v5 transactionID];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_27;
        }
      }

      v38 = [(BMContextSyncWalletTransaction *)self merchantType];
      if (v38 == [v5 merchantType])
      {
        v39 = [(BMContextSyncWalletTransaction *)self poiCategory];
        v40 = [v5 poiCategory];
        if (v39 == v40)
        {
          v12 = 1;
        }

        else
        {
          v41 = [(BMContextSyncWalletTransaction *)self poiCategory];
          v42 = [v5 poiCategory];
          v12 = [v41 isEqual:v42];
        }

        goto LABEL_28;
      }
    }

LABEL_27:
    v12 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (id)jsonDictionary
{
  v30[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMContextSyncWalletTransaction *)self ID];
  v4 = [(BMContextSyncWalletTransaction *)self deviceUUID];
  v5 = [(BMContextSyncWalletTransaction *)self passUniqueID];
  v6 = [(BMContextSyncWalletTransaction *)self passLocalizedDescription];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextSyncWalletTransaction transactionType](self, "transactionType")}];
  v8 = [(BMContextSyncWalletTransaction *)self transactionID];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextSyncWalletTransaction merchantType](self, "merchantType")}];
  v10 = [(BMContextSyncWalletTransaction *)self poiCategory];
  v29[0] = @"ID";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v11;
  v30[0] = v11;
  v29[1] = @"deviceUUID";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v23 = v12;
  v30[1] = v12;
  v29[2] = @"passUniqueID";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v22 = v13;
  v30[2] = v13;
  v29[3] = @"passLocalizedDescription";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v5;
  v30[3] = v14;
  v29[4] = @"transactionType";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v6;
  v30[4] = v15;
  v29[5] = @"transactionID";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = v16;
  v29[6] = @"merchantType";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = v17;
  v29[7] = @"poiCategory";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30[7] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_32:

    if (v8)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_19:
  if (v8)
  {
    goto LABEL_20;
  }

LABEL_33:

LABEL_20:
  if (!v7)
  {
  }

  if (!v25)
  {
  }

  if (!v26)
  {
  }

  if (v27)
  {
    if (v28)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v28)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BMContextSyncWalletTransaction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v89[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"ID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"deviceUUID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v26 = 0;
          goto LABEL_66;
        }

        v62 = a4;
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceUUID"];
        v87 = v15;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v31 = v29;
        v11 = v30;
        v32 = [v28 initWithDomain:v31 code:2 userInfo:v30];
        v26 = 0;
        a4 = 0;
        *v62 = v32;
        goto LABEL_65;
      }

      v73 = v9;
    }

    else
    {
      v73 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"passUniqueID"];
    v72 = v7;
    v68 = v10;
    if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          v26 = v73;
          goto LABEL_65;
        }

        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = a4;
        v34 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"passUniqueID"];
        v85 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v37 = [v71 initWithDomain:v34 code:2 userInfo:v36];
        v15 = 0;
        a4 = 0;
        *v63 = v37;
        v26 = v73;
LABEL_64:

        v11 = v68;
LABEL_65:

        goto LABEL_66;
      }

      v12 = v8;
      v13 = v9;
      v14 = self;
      v15 = v11;
    }

    else
    {
      v12 = v8;
      v13 = v9;
      v14 = self;
      v15 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"passLocalizedDescription"];
    v70 = v15;
    v65 = v16;
    if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v35 = 0;
          v36 = v65;
          self = v14;
          v9 = v13;
          v8 = v12;
          v7 = v72;
          v26 = v73;
          goto LABEL_64;
        }

        v38 = a4;
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"passLocalizedDescription"];
        v83 = v69;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v41 = [v39 initWithDomain:v40 code:2 userInfo:v18];
        v35 = 0;
        a4 = 0;
        *v38 = v41;
        self = v14;
        v9 = v13;
        v8 = v12;
        v7 = v72;
        v26 = v73;
        goto LABEL_63;
      }

      v67 = v17;
    }

    else
    {
      v67 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"transactionType"];
    self = v14;
    v61 = a4;
    if (v18)
    {
      objc_opt_class();
      v9 = v13;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v8 = v12;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          v7 = v72;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v69 = 0;
              v26 = v73;
              v35 = v67;
              goto LABEL_63;
            }

            v52 = objc_alloc(MEMORY[0x1E696ABC0]);
            v53 = *MEMORY[0x1E698F240];
            v80 = *MEMORY[0x1E696A578];
            v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transactionType"];
            v81 = v66;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
            v54 = [v52 initWithDomain:v53 code:2 userInfo:v19];
            v69 = 0;
            a4 = 0;
            *v61 = v54;
LABEL_62:
            v35 = v67;

            v26 = v73;
LABEL_63:

            v15 = v70;
            v36 = v65;
            goto LABEL_64;
          }

          v69 = [MEMORY[0x1E696AD98] numberWithInt:BMContextSyncWalletTransactionTypeFromString(v18)];
LABEL_25:
          v19 = [v6 objectForKeyedSubscript:@"transactionID"];
          v64 = v8;
          if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v66 = 0;
                goto LABEL_61;
              }

              v42 = objc_alloc(MEMORY[0x1E696ABC0]);
              v43 = *MEMORY[0x1E698F240];
              v78 = *MEMORY[0x1E696A578];
              v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transactionID"];
              v79 = v22;
              v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
              v44 = [v42 initWithDomain:v43 code:2 userInfo:v20];
              v66 = 0;
              a4 = 0;
              *v61 = v44;
LABEL_60:

LABEL_61:
              v8 = v64;
              goto LABEL_62;
            }

            v66 = v19;
          }

          else
          {
            v66 = 0;
          }

          v20 = [v6 objectForKeyedSubscript:@"merchantType"];
          if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v21 = self;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v20;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!a4)
                {
                  v22 = 0;
                  a4 = 0;
                  goto LABEL_59;
                }

                v60 = objc_alloc(MEMORY[0x1E696ABC0]);
                v55 = *MEMORY[0x1E698F240];
                v76 = *MEMORY[0x1E696A578];
                v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"merchantType"];
                v77 = v46;
                v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
                v56 = [v60 initWithDomain:v55 code:2 userInfo:v45];
                v22 = 0;
                a4 = 0;
                *v61 = v56;
                goto LABEL_58;
              }

              v33 = [MEMORY[0x1E696AD98] numberWithInt:BMContextSyncWalletTransactionMerchantTypeFromString(v20)];
            }

            v22 = v33;
          }

          else
          {
            v21 = self;
            v22 = 0;
          }

          v45 = [v6 objectForKeyedSubscript:@"poiCategory"];
          if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (a4)
              {
                v59 = objc_alloc(MEMORY[0x1E696ABC0]);
                v58 = *MEMORY[0x1E698F240];
                v74 = *MEMORY[0x1E696A578];
                v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"poiCategory"];
                v75 = v50;
                v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
                *v61 = [v59 initWithDomain:v58 code:2 userInfo:v51];
              }

              v46 = 0;
              a4 = 0;
              goto LABEL_58;
            }

            v46 = v45;
          }

          else
          {
            v46 = 0;
          }

          v47 = [v69 intValue];
          LODWORD(v57) = [v22 intValue];
          a4 = [(BMContextSyncWalletTransaction *)v21 initWithID:v64 deviceUUID:v73 passUniqueID:v70 passLocalizedDescription:v67 transactionType:v47 transactionID:v66 merchantType:v57 poiCategory:v46];
          v21 = a4;
LABEL_58:

LABEL_59:
          self = v21;
          v7 = v72;
          goto LABEL_60;
        }

        v69 = v18;
LABEL_24:
        v7 = v72;
        goto LABEL_25;
      }

      v69 = 0;
    }

    else
    {
      v69 = 0;
      v9 = v13;
    }

    v8 = v12;
    goto LABEL_24;
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
    goto LABEL_67;
  }

  v23 = a4;
  v24 = objc_alloc(MEMORY[0x1E696ABC0]);
  v25 = *MEMORY[0x1E698F240];
  v88 = *MEMORY[0x1E696A578];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ID"];
  v89[0] = v26;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  v27 = [v24 initWithDomain:v25 code:2 userInfo:v9];
  v8 = 0;
  a4 = 0;
  *v23 = v27;
LABEL_66:

LABEL_67:
  v48 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextSyncWalletTransaction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (self->_ID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceUUID)
  {
    PBDataWriterWriteStringField();
  }

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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMContextSyncWalletTransaction;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_68;
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
        v36 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 != 8)
          {
            if (v15 != 7)
            {
LABEL_54:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_67;
              }

              goto LABEL_65;
            }

            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              v36 = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (v36 & 0x7F) << v18;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v24 = v19++ > 8;
              if (v24)
              {
                goto LABEL_62;
              }
            }

            if (([v4 hasError] & 1) != 0 || v20 > 7)
            {
LABEL_62:
              LODWORD(v20) = 0;
            }

            v31 = 24;
            goto LABEL_64;
          }

          v16 = PBReaderReadString();
          v17 = 72;
        }

        else
        {
          if (v15 == 5)
          {
            v25 = 0;
            v26 = 0;
            v20 = 0;
            while (1)
            {
              v36 = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (v36 & 0x7F) << v25;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v24 = v26++ > 8;
              if (v24)
              {
                goto LABEL_58;
              }
            }

            if (([v4 hasError] & 1) != 0 || v20 > 6)
            {
LABEL_58:
              LODWORD(v20) = 0;
            }

            v31 = 20;
LABEL_64:
            *(&v5->super.super.isa + v31) = v20;
            goto LABEL_65;
          }

          if (v15 != 6)
          {
            goto LABEL_54;
          }

          v16 = PBReaderReadString();
          v17 = 64;
        }
      }

      else if (v15 > 2)
      {
        if (v15 == 3)
        {
          v16 = PBReaderReadString();
          v17 = 48;
        }

        else
        {
          if (v15 != 4)
          {
            goto LABEL_54;
          }

          v16 = PBReaderReadString();
          v17 = 56;
        }
      }

      else if (v15 == 1)
      {
        v16 = PBReaderReadString();
        v17 = 32;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_54;
        }

        v16 = PBReaderReadString();
        v17 = 40;
      }

      v30 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_65:
      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_67:
    v33 = 0;
  }

  else
  {
LABEL_68:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMContextSyncWalletTransaction *)self ID];
  v5 = [(BMContextSyncWalletTransaction *)self deviceUUID];
  v6 = [(BMContextSyncWalletTransaction *)self passUniqueID];
  v7 = [(BMContextSyncWalletTransaction *)self passLocalizedDescription];
  v8 = BMContextSyncWalletTransactionTypeAsString([(BMContextSyncWalletTransaction *)self transactionType]);
  v9 = [(BMContextSyncWalletTransaction *)self transactionID];
  v10 = BMContextSyncWalletTransactionMerchantTypeAsString([(BMContextSyncWalletTransaction *)self merchantType]);
  v11 = [(BMContextSyncWalletTransaction *)self poiCategory];
  v12 = [v3 initWithFormat:@"BMContextSyncWalletTransaction with ID: %@, deviceUUID: %@, passUniqueID: %@, passLocalizedDescription: %@, transactionType: %@, transactionID: %@, merchantType: %@, poiCategory: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMContextSyncWalletTransaction)initWithID:(id)a3 deviceUUID:(id)a4 passUniqueID:(id)a5 passLocalizedDescription:(id)a6 transactionType:(int)a7 transactionID:(id)a8 merchantType:(int)a9 poiCategory:(id)a10
{
  v16 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v17 = a8;
  v18 = a10;
  v25.receiver = self;
  v25.super_class = BMContextSyncWalletTransaction;
  v19 = [(BMEventBase *)&v25 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_ID, a3);
    objc_storeStrong(&v19->_deviceUUID, a4);
    objc_storeStrong(&v19->_passUniqueID, a5);
    objc_storeStrong(&v19->_passLocalizedDescription, a6);
    v19->_transactionType = a7;
    objc_storeStrong(&v19->_transactionID, a8);
    v19->_merchantType = a9;
    objc_storeStrong(&v19->_poiCategory, a10);
  }

  return v19;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ID" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceUUID" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"passUniqueID" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"passLocalizedDescription" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionType" number:5 type:4 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transactionID" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"merchantType" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"poiCategory" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

    v8 = [[BMContextSyncWalletTransaction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end