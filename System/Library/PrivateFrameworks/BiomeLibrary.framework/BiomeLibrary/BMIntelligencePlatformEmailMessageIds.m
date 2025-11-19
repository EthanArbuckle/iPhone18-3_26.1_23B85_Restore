@interface BMIntelligencePlatformEmailMessageIds
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligencePlatformEmailMessageIds)initWithCreationTimeStamp:(id)a3 classifierType:(id)a4 messageUUID:(id)a5 messageSourceType:(int)a6;
- (BMIntelligencePlatformEmailMessageIds)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)creationTimeStamp;
- (NSString)description;
- (NSUUID)messageUUID;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligencePlatformEmailMessageIds

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"creationTimeStamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"classifierType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageUUID" dataType:6 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:3];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageSourceType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
    v7 = [v5 creationTimeStamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
      v10 = [v5 creationTimeStamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMIntelligencePlatformEmailMessageIds *)self classifierType];
    v14 = [v5 classifierType];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMIntelligencePlatformEmailMessageIds *)self classifierType];
      v17 = [v5 classifierType];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMIntelligencePlatformEmailMessageIds *)self messageUUID];
    v20 = [v5 messageUUID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMIntelligencePlatformEmailMessageIds *)self messageUUID];
      v23 = [v5 messageUUID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    v25 = [(BMIntelligencePlatformEmailMessageIds *)self messageSourceType];
    v12 = v25 == [v5 messageSourceType];
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (NSUUID)messageUUID
{
  raw_messageUUID = self->_raw_messageUUID;
  if (raw_messageUUID)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_messageUUID toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)creationTimeStamp
{
  if (self->_hasRaw_creationTimeStamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_creationTimeStamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMIntelligencePlatformEmailMessageIds *)self classifierType];
  v8 = [(BMIntelligencePlatformEmailMessageIds *)self messageUUID];
  v9 = [v8 UUIDString];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformEmailMessageIds messageSourceType](self, "messageSourceType")}];
  v18[0] = @"creationTimeStamp";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v11;
  v18[1] = @"classifierType";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v12;
  v18[2] = @"messageUUID";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v13;
  v18[3] = @"messageSourceType";
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v9)
    {
LABEL_14:
      if (v7)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v6)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMIntelligencePlatformEmailMessageIds)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"creationTimeStamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x1E695DF00];
      v8 = v6;
      v9 = [v7 alloc];
      [v8 doubleValue];
      v11 = v10;

      v12 = [v9 initWithTimeIntervalSince1970:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v44 = [v13 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v44 = 0;
          v24 = 0;
          v25 = self;
          goto LABEL_37;
        }

        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"creationTimeStamp"];
        v54[0] = v39;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v44 = 0;
        v24 = 0;
        *a4 = [v37 initWithDomain:v38 code:2 userInfo:v14];
        a4 = v39;
        goto LABEL_51;
      }

      v12 = v6;
    }

    v44 = v12;
  }

  else
  {
    v44 = 0;
  }

LABEL_9:
  v14 = [v5 objectForKeyedSubscript:@"classifierType"];
  if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
LABEL_12:
    v15 = [v5 objectForKeyedSubscript:@"messageUUID"];
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = 0;
LABEL_15:
      v17 = [v5 objectForKeyedSubscript:@"messageSourceType"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v17;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
              v41 = objc_alloc(MEMORY[0x1E696ABC0]);
              v40 = *MEMORY[0x1E698F240];
              v45 = *MEMORY[0x1E696A578];
              v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"messageSourceType"];
              v46 = v31;
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
              *a4 = [v41 initWithDomain:v40 code:2 userInfo:v32];
            }

            v18 = 0;
            v24 = 0;
            a4 = v42;
            v25 = self;
            goto LABEL_33;
          }

          v21 = [MEMORY[0x1E696AD98] numberWithInt:BMIntelligencePlatformEmailMessageIdsSourceTypeFromString(v17)];
        }

        v18 = v21;
      }

      else
      {
        v18 = 0;
      }

      a4 = v42;
      v25 = -[BMIntelligencePlatformEmailMessageIds initWithCreationTimeStamp:classifierType:messageUUID:messageSourceType:](self, "initWithCreationTimeStamp:classifierType:messageUUID:messageSourceType:", v44, v42, v16, [v18 intValue]);
      v24 = v25;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
      v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v16];
      if (v19)
      {
        v20 = v19;

        v16 = v20;
        goto LABEL_15;
      }

      if (a4)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"messageUUID"];
        v50 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        *a4 = [v33 initWithDomain:v34 code:2 userInfo:v36];
      }

      v24 = 0;
      v15 = v16;
    }

    else
    {
      if (!a4)
      {
        v24 = 0;
        a4 = v42;
        v25 = self;
        goto LABEL_35;
      }

      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E698F240];
      v47 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageUUID"];
      v48 = v16;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *a4 = [v26 initWithDomain:v27 code:2 userInfo:v28];

      v24 = 0;
    }

    a4 = v42;
    v25 = self;
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v14;
    goto LABEL_12;
  }

  if (!a4)
  {
    v24 = 0;
LABEL_51:
    v25 = self;
    goto LABEL_36;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"classifierType"];
  v52 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v24 = 0;
  *a4 = [v22 initWithDomain:v23 code:2 userInfo:v16];
  a4 = 0;
  v25 = self;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
  v29 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformEmailMessageIds *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (self->_hasRaw_creationTimeStamp)
  {
    raw_creationTimeStamp = self->_raw_creationTimeStamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_classifierType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_messageUUID)
  {
    PBDataWriterWriteDataField();
  }

  messageSourceType = self->_messageSourceType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMIntelligencePlatformEmailMessageIds;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_48;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
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
        goto LABEL_48;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 3)
      {
        v27 = PBReaderReadData();
        if ([(NSData *)v27 length]!= 16)
        {

          goto LABEL_49;
        }

        raw_messageUUID = v5->_raw_messageUUID;
        v5->_raw_messageUUID = v27;
LABEL_40:

        goto LABEL_47;
      }

      if (v15 != 4)
      {
LABEL_33:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_47;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v21 = [v4 position] + 1;
        if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
        {
          v23 = [v4 data];
          [v23 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v20 |= (LOBYTE(v33) & 0x7F) << v18;
        if ((LOBYTE(v33) & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        if (v19++ > 8)
        {
          goto LABEL_43;
        }
      }

      if (([v4 hasError] & 1) != 0 || v20 > 2)
      {
LABEL_43:
        LODWORD(v20) = 0;
      }

      v5->_messageSourceType = v20;
LABEL_47:
      v29 = [v4 position];
      if (v29 >= [v4 length])
      {
        goto LABEL_48;
      }
    }

    if (v15 == 1)
    {
      v5->_hasRaw_creationTimeStamp = 1;
      v33 = 0.0;
      v25 = [v4 position] + 8;
      if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
      {
        v28 = [v4 data];
        [v28 getBytes:&v33 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v5->_raw_creationTimeStamp = v33;
      goto LABEL_47;
    }

    if (v15 != 2)
    {
      goto LABEL_33;
    }

    v16 = PBReaderReadString();
    raw_messageUUID = v5->_classifierType;
    v5->_classifierType = v16;
    goto LABEL_40;
  }

LABEL_48:
  if ([v4 hasError])
  {
LABEL_49:
    v30 = 0;
  }

  else
  {
LABEL_50:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMIntelligencePlatformEmailMessageIds *)self creationTimeStamp];
  v5 = [(BMIntelligencePlatformEmailMessageIds *)self classifierType];
  v6 = [(BMIntelligencePlatformEmailMessageIds *)self messageUUID];
  v7 = BMIntelligencePlatformEmailMessageIdsSourceTypeAsString([(BMIntelligencePlatformEmailMessageIds *)self messageSourceType]);
  v8 = [v3 initWithFormat:@"BMIntelligencePlatformEmailMessageIds with creationTimeStamp: %@, classifierType: %@, messageUUID: %@, messageSourceType: %@", v4, v5, v6, v7];

  return v8;
}

- (BMIntelligencePlatformEmailMessageIds)initWithCreationTimeStamp:(id)a3 classifierType:(id)a4 messageUUID:(id)a5 messageSourceType:(int)a6
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = BMIntelligencePlatformEmailMessageIds;
  v13 = [(BMEventBase *)&v19 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v13->_hasRaw_creationTimeStamp = 1;
      [v10 timeIntervalSince1970];
    }

    else
    {
      v13->_hasRaw_creationTimeStamp = 0;
      v14 = -1.0;
    }

    v13->_raw_creationTimeStamp = v14;
    objc_storeStrong(&v13->_classifierType, a4);
    if (v12)
    {
      v20[0] = 0;
      v20[1] = 0;
      [v12 getUUIDBytes:v20];
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 length:16];
      raw_messageUUID = v13->_raw_messageUUID;
      v13->_raw_messageUUID = v15;
    }

    else
    {
      raw_messageUUID = v13->_raw_messageUUID;
      v13->_raw_messageUUID = 0;
    }

    v13->_messageSourceType = a6;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"creationTimeStamp" number:1 type:0 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"classifierType" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageUUID" number:3 type:14 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageSourceType" number:4 type:4 subMessageClass:0];
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

    v8 = [[BMIntelligencePlatformEmailMessageIds alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end