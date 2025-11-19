@interface BMVisualIntelligenceCameraLookupEventResponseMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventResponseMetadata)initWithHasResultRetrieved:(id)a3 endReason:(int)a4 httpErrorCode:(id)a5 serverErrorCode:(id)a6;
- (BMVisualIntelligenceCameraLookupEventResponseMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMVisualIntelligenceCameraLookupEventResponseMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasHasResultRetrieved](self, "hasHasResultRetrieved") || [v5 hasHasResultRetrieved])
    {
      if (![(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasHasResultRetrieved])
      {
        goto LABEL_19;
      }

      if (![v5 hasHasResultRetrieved])
      {
        goto LABEL_19;
      }

      v6 = [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasResultRetrieved];
      if (v6 != [v5 hasResultRetrieved])
      {
        goto LABEL_19;
      }
    }

    v7 = [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self endReason];
    if (v7 != [v5 endReason])
    {
      goto LABEL_19;
    }

    if (-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasHttpErrorCode](self, "hasHttpErrorCode") || [v5 hasHttpErrorCode])
    {
      if (![(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasHttpErrorCode])
      {
        goto LABEL_19;
      }

      if (![v5 hasHttpErrorCode])
      {
        goto LABEL_19;
      }

      v8 = [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self httpErrorCode];
      if (v8 != [v5 httpErrorCode])
      {
        goto LABEL_19;
      }
    }

    if (!-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasServerErrorCode](self, "hasServerErrorCode") && ![v5 hasServerErrorCode])
    {
      v10 = 1;
      goto LABEL_20;
    }

    if (-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasServerErrorCode](self, "hasServerErrorCode") && [v5 hasServerErrorCode])
    {
      v9 = [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self serverErrorCode];
      v10 = v9 == [v5 serverErrorCode];
    }

    else
    {
LABEL_19:
      v10 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  if ([(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasHasResultRetrieved])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasResultRetrieved](self, "hasResultRetrieved")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata endReason](self, "endReason")}];
  if ([(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasHttpErrorCode])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata httpErrorCode](self, "httpErrorCode")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self hasServerErrorCode])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata serverErrorCode](self, "serverErrorCode")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"hasResultRetrieved";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"endReason";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"httpErrorCode";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"serverErrorCode";
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
      goto LABEL_20;
    }
  }

  else
  {

    if (v5)
    {
LABEL_20:
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_27:

      if (v3)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_28:

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMVisualIntelligenceCameraLookupEventResponseMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"hasResultRetrieved"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v32 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"endReason"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v31 = 0;
            v12 = 0;
            goto LABEL_35;
          }

          v26 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v37 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"endReason"];
          v38 = v16;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v31 = 0;
          v12 = 0;
          *a4 = [v26 initWithDomain:v27 code:2 userInfo:v13];
          goto LABEL_34;
        }

        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventRequestEndReasonFromString(v8)];
      }

      v31 = v9;
    }

    else
    {
      v31 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"httpErrorCode"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v16 = 0;
          v12 = 0;
          goto LABEL_34;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"httpErrorCode"];
        v36 = v18;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v14 = self;
        v17 = v20 = a4;
        v21 = [v29 initWithDomain:v19 code:2 userInfo:v17];
        v16 = 0;
        v12 = 0;
        *v20 = v21;
        goto LABEL_32;
      }

      v14 = self;
      v15 = a4;
      v16 = v13;
    }

    else
    {
      v14 = self;
      v15 = a4;
      v16 = 0;
    }

    v17 = [v6 objectForKeyedSubscript:@"serverErrorCode"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = 0;
LABEL_22:
      self = -[BMVisualIntelligenceCameraLookupEventResponseMetadata initWithHasResultRetrieved:endReason:httpErrorCode:serverErrorCode:](v14, "initWithHasResultRetrieved:endReason:httpErrorCode:serverErrorCode:", v32, [v31 intValue], v16, v18);
      v12 = self;
LABEL_33:

LABEL_34:
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
      goto LABEL_22;
    }

    if (v15)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v33 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"serverErrorCode"];
      v34 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *v15 = [v30 initWithDomain:v28 code:2 userInfo:v23];
    }

    v18 = 0;
    v12 = 0;
LABEL_32:
    self = v14;
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v32 = 0;
    v12 = 0;
    goto LABEL_36;
  }

  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E698F240];
  v39 = *MEMORY[0x1E696A578];
  v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasResultRetrieved"];
  v40[0] = v31;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v32 = 0;
  v12 = 0;
  *a4 = [v10 initWithDomain:v11 code:2 userInfo:v8];
LABEL_35:

LABEL_36:
  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_hasHasResultRetrieved)
  {
    hasResultRetrieved = self->_hasResultRetrieved;
    PBDataWriterWriteBOOLField();
  }

  endReason = self->_endReason;
  PBDataWriterWriteUint32Field();
  if (self->_hasHttpErrorCode)
  {
    httpErrorCode = self->_httpErrorCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasServerErrorCode)
  {
    serverErrorCode = self->_serverErrorCode;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = BMVisualIntelligenceCameraLookupEventResponseMetadata;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_79;
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
        v48 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasHttpErrorCode = 1;
          while (1)
          {
            v48 = 0;
            v40 = [v4 position] + 1;
            if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
            {
              v42 = [v4 data];
              [v42 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v39 |= (v48 & 0x7F) << v37;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_74;
            }
          }

          if ([v4 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v39;
          }

LABEL_74:
          v43 = 28;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_41:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_78;
            }

            goto LABEL_76;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasServerErrorCode = 1;
          while (1)
          {
            v48 = 0;
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v25 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_68;
            }
          }

          if ([v4 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_68:
          v43 = 32;
        }

        *(&v5->super.super.isa + v43) = v29;
      }

      else if (v15 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasHasResultRetrieved = 1;
        while (1)
        {
          v48 = 0;
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v32 |= (v48 & 0x7F) << v30;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            LOBYTE(v36) = 0;
            goto LABEL_70;
          }
        }

        v36 = (v32 != 0) & ~[v4 hasError];
LABEL_70:
        v5->_hasResultRetrieved = v36;
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
          v48 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v48 & 0x7F) << v16;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_63;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 3)
        {
LABEL_63:
          LODWORD(v18) = 0;
        }

        v5->_endReason = v18;
      }

LABEL_76:
      v44 = [v4 position];
    }

    while (v44 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_78:
    v45 = 0;
  }

  else
  {
LABEL_79:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata hasResultRetrieved](self, "hasResultRetrieved")}];
  v5 = BMVisualIntelligenceCameraLookupEventRequestEndReasonAsString([(BMVisualIntelligenceCameraLookupEventResponseMetadata *)self endReason]);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata httpErrorCode](self, "httpErrorCode")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventResponseMetadata serverErrorCode](self, "serverErrorCode")}];
  v8 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventResponseMetadata with hasResultRetrieved: %@, endReason: %@, httpErrorCode: %@, serverErrorCode: %@", v4, v5, v6, v7];

  return v8;
}

- (BMVisualIntelligenceCameraLookupEventResponseMetadata)initWithHasResultRetrieved:(id)a3 endReason:(int)a4 httpErrorCode:(id)a5 serverErrorCode:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = BMVisualIntelligenceCameraLookupEventResponseMetadata;
  v13 = [(BMEventBase *)&v17 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v13->_hasHasResultRetrieved = 1;
      v13->_hasResultRetrieved = [v10 BOOLValue];
    }

    else
    {
      v13->_hasHasResultRetrieved = 0;
      v13->_hasResultRetrieved = 0;
    }

    v13->_endReason = a4;
    if (v11)
    {
      v13->_hasHttpErrorCode = 1;
      v14 = [v11 intValue];
    }

    else
    {
      v13->_hasHttpErrorCode = 0;
      v14 = -1;
    }

    v13->_httpErrorCode = v14;
    if (v12)
    {
      v13->_hasServerErrorCode = 1;
      v15 = [v12 intValue];
    }

    else
    {
      v13->_hasServerErrorCode = 0;
      v15 = -1;
    }

    v13->_serverErrorCode = v15;
  }

  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasResultRetrieved" number:1 type:12 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endReason" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"httpErrorCode" number:3 type:2 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serverErrorCode" number:4 type:2 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasResultRetrieved" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endReason" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"httpErrorCode" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serverErrorCode" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
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

    v8 = [[BMVisualIntelligenceCameraLookupEventResponseMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end