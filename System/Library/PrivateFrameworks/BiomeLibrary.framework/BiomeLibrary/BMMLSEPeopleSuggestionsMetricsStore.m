@interface BMMLSEPeopleSuggestionsMetricsStore
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMLSEPeopleSuggestionsMetricsStore)initWithEventIdentifier:(id)a3 model:(id)a4 reciprocalRank:(id)a5 reciprocalRankDefinitionVersion:(id)a6;
- (BMMLSEPeopleSuggestionsMetricsStore)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMLSEPeopleSuggestionsMetricsStore

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMLSEPeopleSuggestionsMetricsStore *)self eventIdentifier];
    v7 = [v5 eventIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMLSEPeopleSuggestionsMetricsStore *)self eventIdentifier];
      v10 = [v5 eventIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMMLSEPeopleSuggestionsMetricsStore *)self model];
    v14 = [v5 model];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMLSEPeopleSuggestionsMetricsStore *)self model];
      v17 = [v5 model];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMMLSEPeopleSuggestionsMetricsStore hasReciprocalRank](self, "hasReciprocalRank") && ![v5 hasReciprocalRank] || -[BMMLSEPeopleSuggestionsMetricsStore hasReciprocalRank](self, "hasReciprocalRank") && objc_msgSend(v5, "hasReciprocalRank") && (-[BMMLSEPeopleSuggestionsMetricsStore reciprocalRank](self, "reciprocalRank"), v20 = v19, objc_msgSend(v5, "reciprocalRank"), v20 == v21))
    {
      if (!-[BMMLSEPeopleSuggestionsMetricsStore hasReciprocalRankDefinitionVersion](self, "hasReciprocalRankDefinitionVersion") && ![v5 hasReciprocalRankDefinitionVersion])
      {
        v12 = 1;
        goto LABEL_22;
      }

      if (-[BMMLSEPeopleSuggestionsMetricsStore hasReciprocalRankDefinitionVersion](self, "hasReciprocalRankDefinitionVersion") && [v5 hasReciprocalRankDefinitionVersion])
      {
        v22 = [(BMMLSEPeopleSuggestionsMetricsStore *)self reciprocalRankDefinitionVersion];
        v12 = v22 == [v5 reciprocalRankDefinitionVersion];
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMMLSEPeopleSuggestionsMetricsStore *)self eventIdentifier];
  v4 = [(BMMLSEPeopleSuggestionsMetricsStore *)self model];
  if (![(BMMLSEPeopleSuggestionsMetricsStore *)self hasReciprocalRank]|| ([(BMMLSEPeopleSuggestionsMetricsStore *)self reciprocalRank], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMMLSEPeopleSuggestionsMetricsStore *)self reciprocalRank];
    v6 = MEMORY[0x1E696AD98];
    [(BMMLSEPeopleSuggestionsMetricsStore *)self reciprocalRank];
    v7 = [v6 numberWithDouble:?];
  }

  if ([(BMMLSEPeopleSuggestionsMetricsStore *)self hasReciprocalRankDefinitionVersion])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEPeopleSuggestionsMetricsStore reciprocalRankDefinitionVersion](self, "reciprocalRankDefinitionVersion")}];
  }

  else
  {
    v8 = 0;
  }

  v16[0] = @"eventIdentifier";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v9;
  v16[1] = @"model";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v10;
  v16[2] = @"reciprocalRank";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v11;
  v16[3] = @"reciprocalRankDefinitionVersion";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (v4)
      {
        goto LABEL_19;
      }

LABEL_25:

      if (v3)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMMLSEPeopleSuggestionsMetricsStore)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"eventIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"model"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = a4;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"model"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        a4 = 0;
        v15 = 0;
        *v33 = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"reciprocalRank"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v12 = 0;
          v15 = 0;
          a4 = v32;
          goto LABEL_33;
        }

        v11 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reciprocalRank"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *a4 = v23;
        goto LABEL_31;
      }

      v11 = self;
      v12 = v10;
    }

    else
    {
      v11 = self;
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"reciprocalRankDefinitionVersion"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      a4 = v32;
      v15 = [(BMMLSEPeopleSuggestionsMetricsStore *)v11 initWithEventIdentifier:v8 model:v32 reciprocalRank:v12 reciprocalRankDefinitionVersion:v14];
      v11 = v15;
LABEL_32:

      self = v11;
      v7 = v31;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (a4)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"reciprocalRankDefinitionVersion"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a4 = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    a4 = v32;
    goto LABEL_32;
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
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventIdentifier"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
  a4 = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEPeopleSuggestionsMetricsStore *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_eventIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_model)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasReciprocalRank)
  {
    reciprocalRank = self->_reciprocalRank;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_hasReciprocalRankDefinitionVersion)
  {
    reciprocalRankDefinitionVersion = self->_reciprocalRankDefinitionVersion;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMMLSEPeopleSuggestionsMetricsStore;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
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
          v5->_hasReciprocalRank = 1;
          v33 = 0.0;
          v26 = [v4 position] + 8;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 8, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v33 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_reciprocalRank = v33;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_33:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_48;
            }

            goto LABEL_46;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasReciprocalRankDefinitionVersion = 1;
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
            v13 = v19++ >= 9;
            if (v13)
            {
              v24 = 0;
              goto LABEL_43;
            }
          }

          if ([v4 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_43:
          v5->_reciprocalRankDefinitionVersion = v24;
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

LABEL_46:
      v29 = [v4 position];
    }

    while (v29 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_48:
    v30 = 0;
  }

  else
  {
LABEL_49:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMLSEPeopleSuggestionsMetricsStore *)self eventIdentifier];
  v5 = [(BMMLSEPeopleSuggestionsMetricsStore *)self model];
  v6 = MEMORY[0x1E696AD98];
  [(BMMLSEPeopleSuggestionsMetricsStore *)self reciprocalRank];
  v7 = [v6 numberWithDouble:?];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEPeopleSuggestionsMetricsStore reciprocalRankDefinitionVersion](self, "reciprocalRankDefinitionVersion")}];
  v9 = [v3 initWithFormat:@"BMMLSEPeopleSuggestionsMetricsStore with eventIdentifier: %@, model: %@, reciprocalRank: %@, reciprocalRankDefinitionVersion: %@", v4, v5, v7, v8];

  return v9;
}

- (BMMLSEPeopleSuggestionsMetricsStore)initWithEventIdentifier:(id)a3 model:(id)a4 reciprocalRank:(id)a5 reciprocalRankDefinitionVersion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = BMMLSEPeopleSuggestionsMetricsStore;
  v15 = [(BMEventBase *)&v19 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_eventIdentifier, a3);
    objc_storeStrong(&v15->_model, a4);
    if (v13)
    {
      v15->_hasReciprocalRank = 1;
      [v13 doubleValue];
    }

    else
    {
      v15->_hasReciprocalRank = 0;
      v16 = -1.0;
    }

    v15->_reciprocalRank = v16;
    if (v14)
    {
      v15->_hasReciprocalRankDefinitionVersion = 1;
      v17 = [v14 unsignedIntValue];
    }

    else
    {
      v17 = 0;
      v15->_hasReciprocalRankDefinitionVersion = 0;
    }

    v15->_reciprocalRankDefinitionVersion = v17;
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventIdentifier" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"model" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reciprocalRank" number:3 type:0 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reciprocalRankDefinitionVersion" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"model" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reciprocalRank" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reciprocalRankDefinitionVersion" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
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

    v8 = [[BMMLSEPeopleSuggestionsMetricsStore alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end