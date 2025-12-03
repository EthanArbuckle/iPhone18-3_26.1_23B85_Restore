@interface BMContextSyncWalletTransaction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMContextSyncWalletTransaction)initWithID:(id)d deviceUUID:(id)iD passUniqueID:(id)uniqueID passLocalizedDescription:(id)description transactionType:(int)type transactionID:(id)transactionID merchantType:(int)merchantType poiCategory:(id)self0;
- (BMContextSyncWalletTransaction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

    deviceUUID = [(BMContextSyncWalletTransaction *)self deviceUUID];
    deviceUUID2 = [v5 deviceUUID];
    v15 = deviceUUID2;
    if (deviceUUID == deviceUUID2)
    {
    }

    else
    {
      deviceUUID3 = [(BMContextSyncWalletTransaction *)self deviceUUID];
      deviceUUID4 = [v5 deviceUUID];
      v18 = [deviceUUID3 isEqual:deviceUUID4];

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    passUniqueID = [(BMContextSyncWalletTransaction *)self passUniqueID];
    passUniqueID2 = [v5 passUniqueID];
    v21 = passUniqueID2;
    if (passUniqueID == passUniqueID2)
    {
    }

    else
    {
      passUniqueID3 = [(BMContextSyncWalletTransaction *)self passUniqueID];
      passUniqueID4 = [v5 passUniqueID];
      v24 = [passUniqueID3 isEqual:passUniqueID4];

      if (!v24)
      {
        goto LABEL_27;
      }
    }

    passLocalizedDescription = [(BMContextSyncWalletTransaction *)self passLocalizedDescription];
    passLocalizedDescription2 = [v5 passLocalizedDescription];
    v27 = passLocalizedDescription2;
    if (passLocalizedDescription == passLocalizedDescription2)
    {
    }

    else
    {
      passLocalizedDescription3 = [(BMContextSyncWalletTransaction *)self passLocalizedDescription];
      passLocalizedDescription4 = [v5 passLocalizedDescription];
      v30 = [passLocalizedDescription3 isEqual:passLocalizedDescription4];

      if (!v30)
      {
        goto LABEL_27;
      }
    }

    transactionType = [(BMContextSyncWalletTransaction *)self transactionType];
    if (transactionType == [v5 transactionType])
    {
      transactionID = [(BMContextSyncWalletTransaction *)self transactionID];
      transactionID2 = [v5 transactionID];
      v34 = transactionID2;
      if (transactionID == transactionID2)
      {
      }

      else
      {
        transactionID3 = [(BMContextSyncWalletTransaction *)self transactionID];
        transactionID4 = [v5 transactionID];
        v37 = [transactionID3 isEqual:transactionID4];

        if (!v37)
        {
          goto LABEL_27;
        }
      }

      merchantType = [(BMContextSyncWalletTransaction *)self merchantType];
      if (merchantType == [v5 merchantType])
      {
        poiCategory = [(BMContextSyncWalletTransaction *)self poiCategory];
        poiCategory2 = [v5 poiCategory];
        if (poiCategory == poiCategory2)
        {
          v12 = 1;
        }

        else
        {
          poiCategory3 = [(BMContextSyncWalletTransaction *)self poiCategory];
          poiCategory4 = [v5 poiCategory];
          v12 = [poiCategory3 isEqual:poiCategory4];
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
  deviceUUID = [(BMContextSyncWalletTransaction *)self deviceUUID];
  passUniqueID = [(BMContextSyncWalletTransaction *)self passUniqueID];
  passLocalizedDescription = [(BMContextSyncWalletTransaction *)self passLocalizedDescription];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextSyncWalletTransaction transactionType](self, "transactionType")}];
  transactionID = [(BMContextSyncWalletTransaction *)self transactionID];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextSyncWalletTransaction merchantType](self, "merchantType")}];
  poiCategory = [(BMContextSyncWalletTransaction *)self poiCategory];
  v29[0] = @"ID";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v30[0] = null;
  v29[1] = @"deviceUUID";
  null2 = deviceUUID;
  if (!deviceUUID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v23 = null2;
  v30[1] = null2;
  v29[2] = @"passUniqueID";
  null3 = passUniqueID;
  if (!passUniqueID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = deviceUUID;
  v22 = null3;
  v30[2] = null3;
  v29[3] = @"passLocalizedDescription";
  null4 = passLocalizedDescription;
  if (!passLocalizedDescription)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = passUniqueID;
  v30[3] = null4;
  v29[4] = @"transactionType";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = passLocalizedDescription;
  v30[4] = null5;
  v29[5] = @"transactionID";
  null6 = transactionID;
  if (!transactionID)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = null6;
  v29[6] = @"merchantType";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = null7;
  v29[7] = @"poiCategory";
  null8 = poiCategory;
  if (!poiCategory)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v30[7] = null8;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
  if (poiCategory)
  {
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_32:

    if (transactionID)
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
  if (transactionID)
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

- (BMContextSyncWalletTransaction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v89[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"ID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceUUID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v26 = 0;
          goto LABEL_66;
        }

        errorCopy = error;
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
        error = 0;
        *errorCopy = v32;
        goto LABEL_65;
      }

      v73 = v9;
    }

    else
    {
      v73 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"passUniqueID"];
    v72 = v7;
    v68 = v10;
    if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          v26 = v73;
          goto LABEL_65;
        }

        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v34 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"passUniqueID"];
        v85 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v37 = [v71 initWithDomain:v34 code:2 userInfo:v36];
        v15 = 0;
        error = 0;
        *errorCopy2 = v37;
        v26 = v73;
LABEL_64:

        v11 = v68;
LABEL_65:

        goto LABEL_66;
      }

      v12 = v8;
      v13 = v9;
      selfCopy2 = self;
      v15 = v11;
    }

    else
    {
      v12 = v8;
      v13 = v9;
      selfCopy2 = self;
      v15 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"passLocalizedDescription"];
    v70 = v15;
    v65 = v16;
    if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v35 = 0;
          v36 = v65;
          self = selfCopy2;
          v9 = v13;
          v8 = v12;
          v7 = v72;
          v26 = v73;
          goto LABEL_64;
        }

        errorCopy3 = error;
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"passLocalizedDescription"];
        v83 = v69;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v41 = [v39 initWithDomain:v40 code:2 userInfo:v18];
        v35 = 0;
        error = 0;
        *errorCopy3 = v41;
        self = selfCopy2;
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

    v18 = [dictionaryCopy objectForKeyedSubscript:@"transactionType"];
    self = selfCopy2;
    errorCopy4 = error;
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
            if (!error)
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
            error = 0;
            *errorCopy4 = v54;
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
          v19 = [dictionaryCopy objectForKeyedSubscript:@"transactionID"];
          v64 = v8;
          if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
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
              error = 0;
              *errorCopy4 = v44;
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

          v20 = [dictionaryCopy objectForKeyedSubscript:@"merchantType"];
          if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            errorCopy5 = self;
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
                if (!error)
                {
                  v22 = 0;
                  error = 0;
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
                error = 0;
                *errorCopy4 = v56;
                goto LABEL_58;
              }

              v33 = [MEMORY[0x1E696AD98] numberWithInt:BMContextSyncWalletTransactionMerchantTypeFromString(v20)];
            }

            v22 = v33;
          }

          else
          {
            errorCopy5 = self;
            v22 = 0;
          }

          v45 = [dictionaryCopy objectForKeyedSubscript:@"poiCategory"];
          if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                v59 = objc_alloc(MEMORY[0x1E696ABC0]);
                v58 = *MEMORY[0x1E698F240];
                v74 = *MEMORY[0x1E696A578];
                v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"poiCategory"];
                v75 = v50;
                v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
                *errorCopy4 = [v59 initWithDomain:v58 code:2 userInfo:v51];
              }

              v46 = 0;
              error = 0;
              goto LABEL_58;
            }

            v46 = v45;
          }

          else
          {
            v46 = 0;
          }

          intValue = [v69 intValue];
          LODWORD(v57) = [v22 intValue];
          error = [(BMContextSyncWalletTransaction *)errorCopy5 initWithID:v64 deviceUUID:v73 passUniqueID:v70 passLocalizedDescription:v67 transactionType:intValue transactionID:v66 merchantType:v57 poiCategory:v46];
          errorCopy5 = error;
LABEL_58:

LABEL_59:
          self = errorCopy5;
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

  if (!error)
  {
    v8 = 0;
    goto LABEL_67;
  }

  errorCopy6 = error;
  v24 = objc_alloc(MEMORY[0x1E696ABC0]);
  v25 = *MEMORY[0x1E698F240];
  v88 = *MEMORY[0x1E696A578];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ID"];
  v89[0] = v26;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  v27 = [v24 initWithDomain:v25 code:2 userInfo:v9];
  v8 = 0;
  error = 0;
  *errorCopy6 = v27;
LABEL_66:

LABEL_67:
  v48 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextSyncWalletTransaction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMContextSyncWalletTransaction;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_68;
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
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v20 > 7)
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
              v27 = [fromCopy position] + 1;
              if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v20 > 6)
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  deviceUUID = [(BMContextSyncWalletTransaction *)self deviceUUID];
  passUniqueID = [(BMContextSyncWalletTransaction *)self passUniqueID];
  passLocalizedDescription = [(BMContextSyncWalletTransaction *)self passLocalizedDescription];
  v8 = BMContextSyncWalletTransactionTypeAsString([(BMContextSyncWalletTransaction *)self transactionType]);
  transactionID = [(BMContextSyncWalletTransaction *)self transactionID];
  v10 = BMContextSyncWalletTransactionMerchantTypeAsString([(BMContextSyncWalletTransaction *)self merchantType]);
  poiCategory = [(BMContextSyncWalletTransaction *)self poiCategory];
  v12 = [v3 initWithFormat:@"BMContextSyncWalletTransaction with ID: %@, deviceUUID: %@, passUniqueID: %@, passLocalizedDescription: %@, transactionType: %@, transactionID: %@, merchantType: %@, poiCategory: %@", v4, deviceUUID, passUniqueID, passLocalizedDescription, v8, transactionID, v10, poiCategory];

  return v12;
}

- (BMContextSyncWalletTransaction)initWithID:(id)d deviceUUID:(id)iD passUniqueID:(id)uniqueID passLocalizedDescription:(id)description transactionType:(int)type transactionID:(id)transactionID merchantType:(int)merchantType poiCategory:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  uniqueIDCopy = uniqueID;
  descriptionCopy = description;
  transactionIDCopy = transactionID;
  categoryCopy = category;
  v25.receiver = self;
  v25.super_class = BMContextSyncWalletTransaction;
  v19 = [(BMEventBase *)&v25 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_ID, d);
    objc_storeStrong(&v19->_deviceUUID, iD);
    objc_storeStrong(&v19->_passUniqueID, uniqueID);
    objc_storeStrong(&v19->_passLocalizedDescription, description);
    v19->_transactionType = type;
    objc_storeStrong(&v19->_transactionID, transactionID);
    v19->_merchantType = merchantType;
    objc_storeStrong(&v19->_poiCategory, category);
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