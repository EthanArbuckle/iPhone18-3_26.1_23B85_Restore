@interface BMDiscoverabilitySignals
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDiscoverabilitySignals)initWithContentIdentifier:(id)a3 context:(id)a4 osBuild:(id)a5 userInfo:(id)a6;
- (BMDiscoverabilitySignals)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDiscoverabilitySignals

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"context" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osBuild" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInfo" dataType:4 requestOnly:0 fieldNumber:4 protoDataType:14 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDiscoverabilitySignals *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDiscoverabilitySignals *)self contentIdentifier];
    v7 = [v5 contentIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDiscoverabilitySignals *)self contentIdentifier];
      v10 = [v5 contentIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMDiscoverabilitySignals *)self context];
    v14 = [v5 context];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMDiscoverabilitySignals *)self context];
      v17 = [v5 context];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMDiscoverabilitySignals *)self osBuild];
    v20 = [v5 osBuild];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMDiscoverabilitySignals *)self osBuild];
      v23 = [v5 osBuild];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v25 = [(BMDiscoverabilitySignals *)self userInfo];
    v26 = [v5 userInfo];
    if (v25 == v26)
    {
      v12 = 1;
    }

    else
    {
      v27 = [(BMDiscoverabilitySignals *)self userInfo];
      v28 = [v5 userInfo];
      v12 = [v27 isEqual:v28];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMDiscoverabilitySignals *)self contentIdentifier];
  v4 = [(BMDiscoverabilitySignals *)self context];
  v5 = [(BMDiscoverabilitySignals *)self osBuild];
  v6 = [(BMDiscoverabilitySignals *)self userInfo];
  v7 = [v6 base64EncodedStringWithOptions:0];

  v15[0] = @"contentIdentifier";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v8;
  v15[1] = @"context";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v9;
  v15[2] = @"osBuild";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v10;
  v15[3] = @"userInfo";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v7)
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
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMDiscoverabilitySignals)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"contentIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"context"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v32 = 0;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"osBuild"];
      v34 = v8;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v11 = 0;
            v14 = 0;
            a4 = v32;
            goto LABEL_40;
          }

          v19 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = a4;
          v20 = *MEMORY[0x1E698F240];
          v39 = *MEMORY[0x1E696A578];
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osBuild"];
          v40 = v13;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v21 = [v19 initWithDomain:v20 code:2 userInfo:v12];
          v11 = 0;
          v14 = 0;
          *v30 = v21;
          goto LABEL_38;
        }

        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = [v6 objectForKeyedSubscript:@"userInfo"];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = 0;
LABEL_13:
        a4 = v32;
        self = [(BMDiscoverabilitySignals *)self initWithContentIdentifier:v34 context:v32 osBuild:v11 userInfo:v13];
        v14 = self;
LABEL_39:

        v8 = v34;
        goto LABEL_40;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v12 options:0];
        if (v13)
        {
          goto LABEL_13;
        }

        if (!a4)
        {
          goto LABEL_37;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"userInfo"];
        v38 = v22;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v38;
        v25 = &v37;
      }

      else
      {
        if (!a4)
        {
LABEL_37:
          v13 = 0;
          v14 = 0;
LABEL_38:
          a4 = v32;
          goto LABEL_39;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"userInfo"];
        v36 = v22;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v36;
        v25 = &v35;
      }

      v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
      *a4 = [v31 initWithDomain:v29 code:2 userInfo:v26];

      goto LABEL_37;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v9;
      goto LABEL_7;
    }

    if (a4)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = *MEMORY[0x1E698F240];
      v41 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"context"];
      v42 = v11;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v14 = 0;
      *a4 = [v33 initWithDomain:v18 code:2 userInfo:v10];
      a4 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v14 = 0;
LABEL_41:

    goto LABEL_42;
  }

  if (a4)
  {
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E698F240];
    v43 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentIdentifier"];
    v44[0] = v17;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v8 = 0;
    v14 = 0;
    *a4 = [v15 initWithDomain:v16 code:2 userInfo:v9];
    a4 = v17;
    goto LABEL_41;
  }

  v8 = 0;
  v14 = 0;
LABEL_42:

  v27 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contentIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_context)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_osBuild)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMDiscoverabilitySignals;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_33;
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
          v16 = PBReaderReadString();
          v17 = &OBJC_IVAR___BMDiscoverabilitySignals__osBuild;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_25:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_30;
          }

          v16 = PBReaderReadData();
          v17 = &OBJC_IVAR___BMDiscoverabilitySignals__userInfo;
        }
      }

      else if (v15 == 1)
      {
        v16 = PBReaderReadString();
        v17 = &OBJC_IVAR___BMDiscoverabilitySignals__contentIdentifier;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_25;
        }

        v16 = PBReaderReadString();
        v17 = &OBJC_IVAR___BMDiscoverabilitySignals__context;
      }

      v18 = *v17;
      v19 = *(&v5->super.super.isa + v18);
      *(&v5->super.super.isa + v18) = v16;

LABEL_30:
      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_32:
    v21 = 0;
  }

  else
  {
LABEL_33:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMDiscoverabilitySignals *)self contentIdentifier];
  v5 = [(BMDiscoverabilitySignals *)self context];
  v6 = [(BMDiscoverabilitySignals *)self osBuild];
  v7 = [(BMDiscoverabilitySignals *)self userInfo];
  v8 = [v3 initWithFormat:@"BMDiscoverabilitySignals with contentIdentifier: %@, context: %@, osBuild: %@, userInfo: %@", v4, v5, v6, v7];

  return v8;
}

- (BMDiscoverabilitySignals)initWithContentIdentifier:(id)a3 context:(id)a4 osBuild:(id)a5 userInfo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = BMDiscoverabilitySignals;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_contentIdentifier, a3);
    objc_storeStrong(&v15->_context, a4);
    objc_storeStrong(&v15->_osBuild, a5);
    objc_storeStrong(&v15->_userInfo, a6);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentIdentifier" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"context" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osBuild" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInfo" number:4 type:14 subMessageClass:0];
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

    v8 = [[BMDiscoverabilitySignals alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end