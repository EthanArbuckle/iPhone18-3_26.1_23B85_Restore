@interface BMSageMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSageMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSageMetadata)initWithRawSessionId:(id)a3 clientId:(id)a4 clientRequestId:(id)a5 clientSessionId:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)rawSessionId;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSageMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSageMetadata *)self rawSessionId];
    v7 = [v5 rawSessionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSageMetadata *)self rawSessionId];
      v10 = [v5 rawSessionId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMSageMetadata *)self clientId];
    v14 = [v5 clientId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSageMetadata *)self clientId];
      v17 = [v5 clientId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMSageMetadata *)self clientRequestId];
    v20 = [v5 clientRequestId];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSageMetadata *)self clientRequestId];
      v23 = [v5 clientRequestId];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v25 = [(BMSageMetadata *)self clientSessionId];
    v26 = [v5 clientSessionId];
    if (v25 == v26)
    {
      v12 = 1;
    }

    else
    {
      v27 = [(BMSageMetadata *)self clientSessionId];
      v28 = [v5 clientSessionId];
      v12 = [v27 isEqual:v28];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (NSUUID)rawSessionId
{
  raw_rawSessionId = self->_raw_rawSessionId;
  if (raw_rawSessionId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_rawSessionId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMSageMetadata *)self rawSessionId];
  v4 = [v3 UUIDString];

  v5 = [(BMSageMetadata *)self clientId];
  v6 = [(BMSageMetadata *)self clientRequestId];
  v7 = [(BMSageMetadata *)self clientSessionId];
  v15[0] = @"rawSessionId";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v8;
  v15[1] = @"clientId";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v9;
  v15[2] = @"clientRequestId";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v10;
  v15[3] = @"clientSessionId";
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
      if (v5)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMSageMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"rawSessionId"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"clientId"];
    v38 = v6;
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          v14 = self;
          goto LABEL_35;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientId"];
        v45 = v11;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v15 = 0;
        *a4 = [v21 initWithDomain:v22 code:2 userInfo:v9];
        a4 = 0;
        v14 = self;
LABEL_34:

        v6 = v38;
LABEL_35:

        goto LABEL_36;
      }

      v37 = v8;
    }

    else
    {
      v37 = 0;
    }

    v9 = [v5 objectForKeyedSubscript:@"clientRequestId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v15 = 0;
          v14 = self;
          a4 = v37;
          goto LABEL_34;
        }

        v10 = v7;
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = a4;
        v25 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientRequestId"];
        v43 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v26 = [v23 initWithDomain:v25 code:2 userInfo:v12];
        v11 = 0;
        v15 = 0;
        *v24 = v26;
        v14 = self;
        goto LABEL_32;
      }

      v10 = v7;
      v11 = v9;
    }

    else
    {
      v10 = v7;
      v11 = 0;
    }

    v12 = [v5 objectForKeyedSubscript:@"clientSessionId"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
      v14 = self;
LABEL_13:
      a4 = v37;
      v14 = [(BMSageMetadata *)v14 initWithRawSessionId:v10 clientId:v37 clientRequestId:v11 clientSessionId:v13];
      v15 = v14;
LABEL_33:

      v7 = v10;
      goto LABEL_34;
    }

    objc_opt_class();
    v14 = self;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      goto LABEL_13;
    }

    if (a4)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v40 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientSessionId"];
      v41 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a4 = [v36 initWithDomain:v35 code:2 userInfo:v28];
    }

    v13 = 0;
    v15 = 0;
LABEL_32:
    a4 = v37;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v15 = 0;
      v14 = self;
      goto LABEL_38;
    }

    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E698F240];
    v46 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"rawSessionId"];
    v47 = v7;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v15 = 0;
    *a4 = [v18 initWithDomain:v19 code:2 userInfo:v20];
    a4 = v20;
    v14 = self;
    goto LABEL_36;
  }

  v7 = v6;
  v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  if (v16)
  {
    v17 = v16;

    v7 = v17;
    goto LABEL_4;
  }

  v14 = self;
  if (!a4)
  {
    v15 = 0;
    goto LABEL_37;
  }

  v31 = objc_alloc(MEMORY[0x1E696ABC0]);
  v32 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"rawSessionId"];
  v49[0] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  *a4 = [v31 initWithDomain:v32 code:2 userInfo:v34];
  a4 = v33;

  v15 = 0;
LABEL_36:

LABEL_37:
LABEL_38:

  v29 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSageMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_raw_rawSessionId)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_clientRequestId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_clientSessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMSageMetadata;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_35;
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
        v24 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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
          v16 = &OBJC_IVAR___BMSageMetadata__clientRequestId;
        }

        else
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

          v16 = &OBJC_IVAR___BMSageMetadata__clientSessionId;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v17 = PBReaderReadData();
          if ([v17 length] != 16)
          {

            goto LABEL_34;
          }

          v16 = &OBJC_IVAR___BMSageMetadata__raw_rawSessionId;
          goto LABEL_31;
        }

        v16 = &OBJC_IVAR___BMSageMetadata__clientId;
        if (v15 != 2)
        {
          goto LABEL_25;
        }
      }

      v17 = PBReaderReadString();
LABEL_31:
      v18 = *v16;
      v19 = *(&v5->super.super.isa + v18);
      *(&v5->super.super.isa + v18) = v17;

LABEL_32:
      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_34:
    v21 = 0;
  }

  else
  {
LABEL_35:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSageMetadata *)self rawSessionId];
  v5 = [(BMSageMetadata *)self clientId];
  v6 = [(BMSageMetadata *)self clientRequestId];
  v7 = [(BMSageMetadata *)self clientSessionId];
  v8 = [v3 initWithFormat:@"BMSageMetadata with rawSessionId: %@, clientId: %@, clientRequestId: %@, clientSessionId: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSageMetadata)initWithRawSessionId:(id)a3 clientId:(id)a4 clientRequestId:(id)a5 clientSessionId:(id)a6
{
  v20[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = BMSageMetadata;
  v14 = [(BMEventBase *)&v19 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v20[0] = 0;
      v20[1] = 0;
      [v10 getUUIDBytes:v20];
      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 length:16];
      raw_rawSessionId = v14->_raw_rawSessionId;
      v14->_raw_rawSessionId = v15;
    }

    else
    {
      raw_rawSessionId = v14->_raw_rawSessionId;
      v14->_raw_rawSessionId = 0;
    }

    objc_storeStrong(&v14->_clientId, a4);
    objc_storeStrong(&v14->_clientRequestId, a5);
    objc_storeStrong(&v14->_clientSessionId, a6);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawSessionId" number:1 type:14 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientId" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientRequestId" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientSessionId" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawSessionId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientRequestId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientSessionId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
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

    v8 = [[BMSageMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end