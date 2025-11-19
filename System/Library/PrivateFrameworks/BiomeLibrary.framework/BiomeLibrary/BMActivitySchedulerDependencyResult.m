@interface BMActivitySchedulerDependencyResult
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMActivitySchedulerDependencyResult)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMActivitySchedulerDependencyResult)initWithResultIdentifier:(id)a3 activityIdentifier:(id)a4 resultCount:(id)a5 type:(int)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMActivitySchedulerDependencyResult

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resultIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resultCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
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
    v6 = [(BMActivitySchedulerDependencyResult *)self resultIdentifier];
    v7 = [v5 resultIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMActivitySchedulerDependencyResult *)self resultIdentifier];
      v10 = [v5 resultIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMActivitySchedulerDependencyResult *)self activityIdentifier];
    v14 = [v5 activityIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMActivitySchedulerDependencyResult *)self activityIdentifier];
      v17 = [v5 activityIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    if (!-[BMActivitySchedulerDependencyResult hasResultCount](self, "hasResultCount") && ![v5 hasResultCount] || -[BMActivitySchedulerDependencyResult hasResultCount](self, "hasResultCount") && objc_msgSend(v5, "hasResultCount") && (v19 = -[BMActivitySchedulerDependencyResult resultCount](self, "resultCount"), v19 == objc_msgSend(v5, "resultCount")))
    {
      v20 = [(BMActivitySchedulerDependencyResult *)self type];
      v12 = v20 == [v5 type];
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMActivitySchedulerDependencyResult *)self resultIdentifier];
  v4 = [(BMActivitySchedulerDependencyResult *)self activityIdentifier];
  if ([(BMActivitySchedulerDependencyResult *)self hasResultCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMActivitySchedulerDependencyResult resultCount](self, "resultCount")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMActivitySchedulerDependencyResult type](self, "type")}];
  v14[0] = @"resultIdentifier";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"activityIdentifier";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"resultCount";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"type";
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
      goto LABEL_14;
    }
  }

  else
  {

    if (v5)
    {
LABEL_14:
      if (v4)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v3)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMActivitySchedulerDependencyResult)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v42[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"resultIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"activityIdentifier"];
    v33 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v34 = 0;
          v19 = 0;
          goto LABEL_33;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = a4;
        v22 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityIdentifier"];
        v40 = v13;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v34 = 0;
        v19 = 0;
        *v21 = [v20 initWithDomain:v22 code:2 userInfo:v10];
        v7 = v33;
        goto LABEL_32;
      }

      v34 = v9;
    }

    else
    {
      v34 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"resultCount"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          v19 = 0;
          goto LABEL_32;
        }

        v23 = a4;
        v12 = self;
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"resultCount"];
        v38 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v25 = [v31 initWithDomain:v24 code:2 userInfo:v14];
        v13 = 0;
        v19 = 0;
        *v23 = v25;
        goto LABEL_31;
      }

      v11 = a4;
      v12 = self;
      v13 = v10;
    }

    else
    {
      v11 = a4;
      v12 = self;
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"type"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v11)
          {
            v32 = objc_alloc(MEMORY[0x1E696ABC0]);
            v30 = *MEMORY[0x1E698F240];
            v35 = *MEMORY[0x1E696A578];
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
            v36 = v28;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            *v11 = [v32 initWithDomain:v30 code:2 userInfo:v29];
          }

          v15 = 0;
          v19 = 0;
          goto LABEL_31;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMActivitySchedulerDependencyResultEventTypeFromString(v14)];
      }

      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    v19 = -[BMActivitySchedulerDependencyResult initWithResultIdentifier:activityIdentifier:resultCount:type:](v12, "initWithResultIdentifier:activityIdentifier:resultCount:type:", v8, v34, v13, [v15 intValue]);
    v12 = v19;
LABEL_31:
    v7 = v33;

    self = v12;
LABEL_32:

    goto LABEL_33;
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
    v19 = 0;
    goto LABEL_34;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v41 = *MEMORY[0x1E696A578];
  v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"resultIdentifier"];
  v42[0] = v34;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v8 = 0;
  v19 = 0;
  *a4 = [v17 initWithDomain:v18 code:2 userInfo:v9];
LABEL_33:

LABEL_34:
  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMActivitySchedulerDependencyResult *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (self->_resultIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activityIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasResultCount)
  {
    resultCount = self->_resultCount;
    PBDataWriterWriteUint32Field();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BMActivitySchedulerDependencyResult;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_57;
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
        v37 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v37 & 0x7F) << v7;
        if ((v37 & 0x80) == 0)
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
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasResultCount = 1;
          while (1)
          {
            v37 = 0;
            v29 = [v4 position] + 1;
            if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
            {
              v31 = [v4 data];
              [v31 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v28 |= (v37 & 0x7F) << v26;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v13 = v27++ >= 9;
            if (v13)
            {
              v32 = 0;
              goto LABEL_53;
            }
          }

          if ([v4 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v28;
          }

LABEL_53:
          v5->_resultCount = v32;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_33:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_56;
            }

            goto LABEL_54;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v37 = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v37 & 0x7F) << v18;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            if (v19++ > 8)
            {
              goto LABEL_48;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 2)
          {
LABEL_48:
            LODWORD(v20) = 0;
          }

          v5->_type = v20;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 32;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_33;
          }

          v16 = PBReaderReadString();
          v17 = 40;
        }

        v25 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_54:
      v33 = [v4 position];
    }

    while (v33 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_56:
    v34 = 0;
  }

  else
  {
LABEL_57:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMActivitySchedulerDependencyResult *)self resultIdentifier];
  v5 = [(BMActivitySchedulerDependencyResult *)self activityIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMActivitySchedulerDependencyResult resultCount](self, "resultCount")}];
  v7 = BMActivitySchedulerDependencyResultEventTypeAsString([(BMActivitySchedulerDependencyResult *)self type]);
  v8 = [v3 initWithFormat:@"BMActivitySchedulerDependencyResult with resultIdentifier: %@, activityIdentifier: %@, resultCount: %@, type: %@", v4, v5, v6, v7];

  return v8;
}

- (BMActivitySchedulerDependencyResult)initWithResultIdentifier:(id)a3 activityIdentifier:(id)a4 resultCount:(id)a5 type:(int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = BMActivitySchedulerDependencyResult;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_resultIdentifier, a3);
    objc_storeStrong(&v14->_activityIdentifier, a4);
    if (v13)
    {
      v14->_hasResultCount = 1;
      v15 = [v13 unsignedIntValue];
    }

    else
    {
      v15 = 0;
      v14->_hasResultCount = 0;
    }

    v14->_resultCount = v15;
    v14->_type = a6;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resultIdentifier" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityIdentifier" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resultCount" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:4 type:4 subMessageClass:0];
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

    v8 = [[BMActivitySchedulerDependencyResult alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end