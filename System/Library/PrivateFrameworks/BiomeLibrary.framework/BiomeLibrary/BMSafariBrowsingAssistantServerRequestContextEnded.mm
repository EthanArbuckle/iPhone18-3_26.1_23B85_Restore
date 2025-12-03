@interface BMSafariBrowsingAssistantServerRequestContextEnded
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantServerRequestContextEnded)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSafariBrowsingAssistantServerRequestContextEnded)initWithServerReleaseVersion:(id)version responseData:(id)data isFreshTier:(id)tier isBatchTier:(id)batchTier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantServerRequestContextEnded

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    serverReleaseVersion = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self serverReleaseVersion];
    serverReleaseVersion2 = [v5 serverReleaseVersion];
    v8 = serverReleaseVersion2;
    if (serverReleaseVersion == serverReleaseVersion2)
    {
    }

    else
    {
      serverReleaseVersion3 = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self serverReleaseVersion];
      serverReleaseVersion4 = [v5 serverReleaseVersion];
      v11 = [serverReleaseVersion3 isEqual:serverReleaseVersion4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    responseData = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self responseData];
    responseData2 = [v5 responseData];
    v15 = responseData2;
    if (responseData == responseData2)
    {
    }

    else
    {
      responseData3 = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self responseData];
      responseData4 = [v5 responseData];
      v18 = [responseData3 isEqual:responseData4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMSafariBrowsingAssistantServerRequestContextEnded hasIsFreshTier](self, "hasIsFreshTier") && ![v5 hasIsFreshTier] || -[BMSafariBrowsingAssistantServerRequestContextEnded hasIsFreshTier](self, "hasIsFreshTier") && objc_msgSend(v5, "hasIsFreshTier") && (v19 = -[BMSafariBrowsingAssistantServerRequestContextEnded isFreshTier](self, "isFreshTier"), v19 == objc_msgSend(v5, "isFreshTier")))
    {
      if (!-[BMSafariBrowsingAssistantServerRequestContextEnded hasIsBatchTier](self, "hasIsBatchTier") && ![v5 hasIsBatchTier])
      {
        LOBYTE(v12) = 1;
        goto LABEL_22;
      }

      if (-[BMSafariBrowsingAssistantServerRequestContextEnded hasIsBatchTier](self, "hasIsBatchTier") && [v5 hasIsBatchTier])
      {
        isBatchTier = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self isBatchTier];
        v12 = isBatchTier ^ [v5 isBatchTier] ^ 1;
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  LOBYTE(v12) = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  serverReleaseVersion = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self serverReleaseVersion];
  responseData = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self responseData];
  jsonDictionary = [responseData jsonDictionary];

  if ([(BMSafariBrowsingAssistantServerRequestContextEnded *)self hasIsFreshTier])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariBrowsingAssistantServerRequestContextEnded isFreshTier](self, "isFreshTier")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMSafariBrowsingAssistantServerRequestContextEnded *)self hasIsBatchTier])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariBrowsingAssistantServerRequestContextEnded isBatchTier](self, "isBatchTier")}];
  }

  else
  {
    v7 = 0;
  }

  v15[0] = @"serverReleaseVersion";
  null = serverReleaseVersion;
  if (!serverReleaseVersion)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"responseData";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"isFreshTier";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v15[3] = @"isBatchTier";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v6)
    {
LABEL_17:
      if (jsonDictionary)
      {
        goto LABEL_18;
      }

LABEL_24:

      if (serverReleaseVersion)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }
  }

  if (!jsonDictionary)
  {
    goto LABEL_24;
  }

LABEL_18:
  if (serverReleaseVersion)
  {
    goto LABEL_19;
  }

LABEL_25:

LABEL_19:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMSafariBrowsingAssistantServerRequestContextEnded)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"serverReleaseVersion"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        v15 = 0;
        goto LABEL_19;
      }

      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v44 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"serverReleaseVersion"];
      v45[0] = v16;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v8 = 0;
      v15 = 0;
      *error = [v21 initWithDomain:v22 code:2 userInfo:v23];
      v14 = v23;
      goto LABEL_17;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"responseData"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    errorCopy = error;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v15 = 0;
        goto LABEL_18;
      }

      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E698F240];
      v42 = *MEMORY[0x1E696A578];
      v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"responseData"];
      v14 = v43;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *errorCopy = [v35 initWithDomain:v24 code:2 userInfo:v25];

      v15 = 0;
      goto LABEL_16;
    }

    v16 = v9;
    v37 = 0;
    v14 = [[BMSafariBrowsingAssistantResponseData alloc] initWithJSONDictionary:v16 error:&v37];
    v20 = v37;
    if (v20)
    {
      if (errorCopy)
      {
        v20 = v20;
        *errorCopy = v20;
      }

      v15 = 0;
      goto LABEL_17;
    }

    v34 = v14;

    error = errorCopy;
  }

  else
  {
    v34 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"isFreshTier"];
  v36 = v8;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v11 = 0;
        v15 = 0;
        v14 = v34;
        goto LABEL_15;
      }

      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v27 = *MEMORY[0x1E698F240];
      v40 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFreshTier"];
      v41 = v13;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v28 = [v26 initWithDomain:v27 code:2 userInfo:v12];
      v11 = 0;
      v15 = 0;
      v14 = v34;
      *errorCopy2 = v28;
      goto LABEL_14;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"isBatchTier"];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBatchTier"];
        v39 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *error = [v33 initWithDomain:v31 code:2 userInfo:v30];
      }

      v13 = 0;
      v15 = 0;
      v14 = v34;
      goto LABEL_14;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v34;
  v15 = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self initWithServerReleaseVersion:v36 responseData:v34 isFreshTier:v11 isBatchTier:v13];
  self = v15;
LABEL_14:

  v8 = v36;
LABEL_15:

LABEL_16:
  v16 = v9;
LABEL_17:

  v9 = v16;
LABEL_18:

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantServerRequestContextEnded *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_serverReleaseVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_responseData)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantResponseData *)self->_responseData writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsFreshTier)
  {
    isFreshTier = self->_isFreshTier;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBatchTier)
  {
    isBatchTier = self->_isBatchTier;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v37.receiver = self;
  v37.super_class = BMSafariBrowsingAssistantServerRequestContextEnded;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_55;
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
        LOBYTE(v38[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v38[0] & 0x7F) << v7;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasIsFreshTier = 1;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v30 = [fromCopy position] + 1;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v38 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v29 |= (v38[0] & 0x7F) << v27;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v13 = v28++ >= 9;
            if (v13)
            {
              LOBYTE(v24) = 0;
              goto LABEL_50;
            }
          }

          v24 = (v29 != 0) & ~[fromCopy hasError];
LABEL_50:
          v33 = 16;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_35:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasIsBatchTier = 1;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v38 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v38[0] & 0x7F) << v18;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              LOBYTE(v24) = 0;
              goto LABEL_48;
            }
          }

          v24 = (v20 != 0) & ~[fromCopy hasError];
LABEL_48:
          v33 = 18;
        }

        *(&v5->super.super.isa + v33) = v24;
      }

      else if (v15 == 1)
      {
        v25 = PBReaderReadString();
        serverReleaseVersion = v5->_serverReleaseVersion;
        v5->_serverReleaseVersion = v25;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_35;
        }

        v38[0] = 0;
        v38[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_54;
        }

        v16 = [[BMSafariBrowsingAssistantResponseData alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_54;
        }

        responseData = v5->_responseData;
        v5->_responseData = v16;

        PBReaderRecallMark();
      }

LABEL_52:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_54:
    v35 = 0;
  }

  else
  {
LABEL_55:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  serverReleaseVersion = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self serverReleaseVersion];
  responseData = [(BMSafariBrowsingAssistantServerRequestContextEnded *)self responseData];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariBrowsingAssistantServerRequestContextEnded isFreshTier](self, "isFreshTier")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariBrowsingAssistantServerRequestContextEnded isBatchTier](self, "isBatchTier")}];
  v8 = [v3 initWithFormat:@"BMSafariBrowsingAssistantServerRequestContextEnded with serverReleaseVersion: %@, responseData: %@, isFreshTier: %@, isBatchTier: %@", serverReleaseVersion, responseData, v6, v7];

  return v8;
}

- (BMSafariBrowsingAssistantServerRequestContextEnded)initWithServerReleaseVersion:(id)version responseData:(id)data isFreshTier:(id)tier isBatchTier:(id)batchTier
{
  versionCopy = version;
  dataCopy = data;
  tierCopy = tier;
  batchTierCopy = batchTier;
  v17.receiver = self;
  v17.super_class = BMSafariBrowsingAssistantServerRequestContextEnded;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_serverReleaseVersion, version);
    objc_storeStrong(&v15->_responseData, data);
    if (tierCopy)
    {
      v15->_hasIsFreshTier = 1;
      v15->_isFreshTier = [tierCopy BOOLValue];
    }

    else
    {
      v15->_hasIsFreshTier = 0;
      v15->_isFreshTier = 0;
    }

    if (batchTierCopy)
    {
      v15->_hasIsBatchTier = 1;
      v15->_isBatchTier = [batchTierCopy BOOLValue];
    }

    else
    {
      v15->_hasIsBatchTier = 0;
      v15->_isBatchTier = 0;
    }
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serverReleaseVersion" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responseData" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFreshTier" number:3 type:12 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBatchTier" number:4 type:12 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serverReleaseVersion" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"responseData_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_832];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFreshTier" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBatchTier" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __61__BMSafariBrowsingAssistantServerRequestContextEnded_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 responseData];
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

    v8 = [[BMSafariBrowsingAssistantServerRequestContextEnded alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end