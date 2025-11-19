@interface BMProactiveHarvestingQueryResult
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingQueryResult)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingQueryResult)initWithQID:(id)a3 domain:(id)a4 confidence:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingQueryResult

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingQueryResult *)self qID];
    v7 = [v5 qID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingQueryResult *)self qID];
      v10 = [v5 qID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v13 = [(BMProactiveHarvestingQueryResult *)self domain];
    v14 = [v5 domain];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingQueryResult *)self domain];
      v17 = [v5 domain];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_16;
      }
    }

    if (!-[BMProactiveHarvestingQueryResult hasConfidence](self, "hasConfidence") && ![v5 hasConfidence])
    {
      v12 = 1;
      goto LABEL_17;
    }

    if (-[BMProactiveHarvestingQueryResult hasConfidence](self, "hasConfidence") && [v5 hasConfidence])
    {
      [(BMProactiveHarvestingQueryResult *)self confidence];
      v20 = v19;
      [v5 confidence];
      v12 = v20 == v21;
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingQueryResult *)self qID];
  v4 = [(BMProactiveHarvestingQueryResult *)self domain];
  if (![(BMProactiveHarvestingQueryResult *)self hasConfidence]|| ([(BMProactiveHarvestingQueryResult *)self confidence], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMProactiveHarvestingQueryResult *)self confidence];
    v6 = MEMORY[0x1E696AD98];
    [(BMProactiveHarvestingQueryResult *)self confidence];
    v7 = [v6 numberWithDouble:?];
  }

  v14[0] = @"qID";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v8;
  v14[1] = @"domain";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v9;
  v14[2] = @"confidence";
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v7)
  {
    if (v4)
    {
      goto LABEL_13;
    }

LABEL_18:

    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_19:

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMProactiveHarvestingQueryResult)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"qID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"domain"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v13 = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        v13 = 0;
        *a4 = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"confidence"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *a4 = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMProactiveHarvestingQueryResult *)self initWithQID:v8 domain:v10 confidence:v12];
    v13 = self;
LABEL_11:

    goto LABEL_12;
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
    v13 = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"qID"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  v13 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingQueryResult *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_qID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMProactiveHarvestingQueryResult;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_34;
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
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v5->_hasConfidence = 1;
        v26 = 0.0;
        v19 = [v4 position] + 8;
        if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 8, v20 <= objc_msgSend(v4, "length")))
        {
          v21 = [v4 data];
          [v21 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_confidence = v26;
      }

      else
      {
        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 32;
        }

        else
        {
          if (v15 != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_33;
            }

            goto LABEL_31;
          }

          v16 = PBReaderReadString();
          v17 = 24;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_31:
      v22 = [v4 position];
    }

    while (v22 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_33:
    v23 = 0;
  }

  else
  {
LABEL_34:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMProactiveHarvestingQueryResult *)self qID];
  v5 = [(BMProactiveHarvestingQueryResult *)self domain];
  v6 = MEMORY[0x1E696AD98];
  [(BMProactiveHarvestingQueryResult *)self confidence];
  v7 = [v6 numberWithDouble:?];
  v8 = [v3 initWithFormat:@"BMProactiveHarvestingQueryResult with qID: %@, domain: %@, confidence: %@", v4, v5, v7];

  return v8;
}

- (BMProactiveHarvestingQueryResult)initWithQID:(id)a3 domain:(id)a4 confidence:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMProactiveHarvestingQueryResult;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_qID, a3);
    objc_storeStrong(&v12->_domain, a4);
    if (v11)
    {
      v12->_hasConfidence = 1;
      [v11 doubleValue];
    }

    else
    {
      v12->_hasConfidence = 0;
      v13 = -1.0;
    }

    v12->_confidence = v13;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMProactiveHarvestingQueryResult alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end