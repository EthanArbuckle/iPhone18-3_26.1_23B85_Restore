@interface BMIntelligencePlatformMessageTermsTermCountTerm
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligencePlatformMessageTermsTermCountTerm)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMIntelligencePlatformMessageTermsTermCountTerm)initWithTermType:(int)a3 termString:(id)a4 termID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligencePlatformMessageTermsTermCountTerm

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligencePlatformMessageTermsTermCountTerm *)self termType];
    if (v6 == [v5 termType])
    {
      v7 = [(BMIntelligencePlatformMessageTermsTermCountTerm *)self termString];
      v8 = [v5 termString];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMIntelligencePlatformMessageTermsTermCountTerm *)self termString];
        v11 = [v5 termString];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_13;
        }
      }

      if (!-[BMIntelligencePlatformMessageTermsTermCountTerm hasTermID](self, "hasTermID") && ![v5 hasTermID])
      {
        v13 = 1;
        goto LABEL_14;
      }

      if (-[BMIntelligencePlatformMessageTermsTermCountTerm hasTermID](self, "hasTermID") && [v5 hasTermID])
      {
        v14 = [(BMIntelligencePlatformMessageTermsTermCountTerm *)self termID];
        v13 = v14 == [v5 termID];
LABEL_14:

        goto LABEL_15;
      }
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformMessageTermsTermCountTerm termType](self, "termType")}];
  v4 = [(BMIntelligencePlatformMessageTermsTermCountTerm *)self termString];
  if ([(BMIntelligencePlatformMessageTermsTermCountTerm *)self hasTermID])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMIntelligencePlatformMessageTermsTermCountTerm termID](self, "termID")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"termType";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"termString";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"termID";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMIntelligencePlatformMessageTermsTermCountTerm)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"termType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"termString"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v14 = 0;
          goto LABEL_17;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v28 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"termString"];
        v29 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = [v24 initWithDomain:v17 code:2 userInfo:v12];
        v11 = 0;
        v14 = 0;
        *a4 = v18;
        goto LABEL_16;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"termID"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v26 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"termID"];
          v27 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *a4 = [v25 initWithDomain:v23 code:2 userInfo:v20];
        }

        v13 = 0;
        v14 = 0;
        goto LABEL_16;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    self = -[BMIntelligencePlatformMessageTermsTermCountTerm initWithTermType:termString:termID:](self, "initWithTermType:termString:termID:", [v8 intValue], v11, v13);
    v14 = self;
LABEL_16:

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMIntelligencePlatformMessageTermsTermCountTermTermTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"termType"];
  v31[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v8 = 0;
  v14 = 0;
  *a4 = [v21 initWithDomain:v22 code:2 userInfo:v10];
LABEL_17:

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformMessageTermsTermCountTerm *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  termType = self->_termType;
  v7 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_termString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTermID)
  {
    termID = self->_termID;
    PBDataWriterWriteInt64Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMIntelligencePlatformMessageTermsTermCountTerm;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_53;
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
      if ((v14 >> 3) == 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasTermID = 1;
        while (1)
        {
          v36 = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (v36 & 0x7F) << v25;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            v31 = 0;
            goto LABEL_45;
          }
        }

        v31 = [v4 hasError] ? 0 : v27;
LABEL_45:
        v5->_termID = v31;
      }

      else if (v15 == 2)
      {
        v23 = PBReaderReadString();
        termString = v5->_termString;
        v5->_termString = v23;
      }

      else if (v15 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v36 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v36 & 0x7F) << v16;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_48;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 6)
        {
LABEL_48:
          LODWORD(v18) = 0;
        }

        v5->_termType = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_52;
      }

      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_52:
    v33 = 0;
  }

  else
  {
LABEL_53:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMIntelligencePlatformMessageTermsTermCountTermTermTypeAsString([(BMIntelligencePlatformMessageTermsTermCountTerm *)self termType]);
  v5 = [(BMIntelligencePlatformMessageTermsTermCountTerm *)self termString];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMIntelligencePlatformMessageTermsTermCountTerm termID](self, "termID")}];
  v7 = [v3 initWithFormat:@"BMIntelligencePlatformMessageTermsTermCountTerm with termType: %@, termString: %@, termID: %@", v4, v5, v6];

  return v7;
}

- (BMIntelligencePlatformMessageTermsTermCountTerm)initWithTermType:(int)a3 termString:(id)a4 termID:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BMIntelligencePlatformMessageTermsTermCountTerm;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    v11->_termType = a3;
    objc_storeStrong(&v11->_termString, a4);
    if (v10)
    {
      v11->_hasTermID = 1;
      v12 = [v10 longLongValue];
    }

    else
    {
      v11->_hasTermID = 0;
      v12 = -1;
    }

    v11->_termID = v12;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"termType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"termString" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"termID" number:3 type:3 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"termType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"termString" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"termID" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:3 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
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

    v8 = [[BMIntelligencePlatformMessageTermsTermCountTerm alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end