@interface BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity)initWithName:(id)a3 score:(id)a4 language:(id)a5 category:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self name];
    v7 = [v5 name];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self name];
      v10 = [v5 name];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    if (-[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity hasScore](self, "hasScore") || [v5 hasScore])
    {
      if (![(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self hasScore])
      {
        goto LABEL_21;
      }

      if (![v5 hasScore])
      {
        goto LABEL_21;
      }

      [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self score];
      v14 = v13;
      [v5 score];
      if (v14 != v15)
      {
        goto LABEL_21;
      }
    }

    v16 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self language];
    v17 = [v5 language];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self language];
      v20 = [v5 language];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity hasCategory](self, "hasCategory") && ![v5 hasCategory])
    {
      v12 = 1;
      goto LABEL_22;
    }

    if (-[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity hasCategory](self, "hasCategory") && [v5 hasCategory])
    {
      v22 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self category];
      v12 = v22 == [v5 category];
LABEL_22:

      goto LABEL_23;
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
  v3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self name];
  if (![(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self hasScore]|| ([(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self score], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self score];
    v5 = MEMORY[0x1E696AD98];
    [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self score];
    v6 = [v5 numberWithDouble:?];
  }

  v7 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self language];
  if ([(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self hasCategory])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity category](self, "category")}];
  }

  else
  {
    v8 = 0;
  }

  v16[0] = @"name";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v9;
  v16[1] = @"score";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v10;
  v16[2] = @"language";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v11;
  v16[3] = @"category";
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
      if (v6)
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

  if (!v6)
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

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"score"];
    v32 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          goto LABEL_16;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"score"];
        v38 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v15 = 0;
        *a4 = [v21 initWithDomain:v22 code:2 userInfo:v10];
        a4 = 0;
        goto LABEL_15;
      }

      v31 = v9;
    }

    else
    {
      v31 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"language"];
    v11 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v12 = 0;
          v15 = 0;
          a4 = v31;
          goto LABEL_15;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = a4;
        v24 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
        v36 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v25 = [v23 initWithDomain:v24 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        a4 = v31;
        *v29 = v25;
        goto LABEL_14;
      }

      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"category"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v33 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"category"];
          v34 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          *a4 = [v30 initWithDomain:v28 code:2 userInfo:v27];
        }

        v14 = 0;
        v15 = 0;
        a4 = v31;
        goto LABEL_14;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    a4 = v31;
    v15 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)v11 initWithName:v8 score:v31 language:v12 category:v14];
    v11 = v15;
LABEL_14:

    self = v11;
LABEL_15:

    v7 = v32;
    goto LABEL_16;
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
    goto LABEL_17;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v39 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
  v40[0] = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v8 = 0;
  v15 = 0;
  *a4 = [v18 initWithDomain:v19 code:2 userInfo:v9];
  a4 = v20;
LABEL_16:

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasScore)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasCategory)
  {
    category = self->_category;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity;
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
          v25 = PBReaderReadString();
          v26 = 48;
          goto LABEL_39;
        }

        if (v15 != 4)
        {
LABEL_35:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasCategory = 1;
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
        v5->_category = v24;
      }

      else
      {
        if (v15 == 1)
        {
          v25 = PBReaderReadString();
          v26 = 32;
LABEL_39:
          v27 = *(&v5->super.super.isa + v26);
          *(&v5->super.super.isa + v26) = v25;

          goto LABEL_46;
        }

        if (v15 != 2)
        {
          goto LABEL_35;
        }

        v5->_hasScore = 1;
        v33 = 0.0;
        v16 = [v4 position] + 8;
        if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
        {
          v28 = [v4 data];
          [v28 getBytes:&v33 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_score = v33;
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
  v4 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self name];
  v5 = MEMORY[0x1E696AD98];
  [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self score];
  v6 = [v5 numberWithDouble:?];
  v7 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self language];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity category](self, "category")}];
  v9 = [v3 initWithFormat:@"BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity with name: %@, score: %@, language: %@, category: %@", v4, v6, v7, v8];

  return v9;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity)initWithName:(id)a3 score:(id)a4 language:(id)a5 category:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity;
  v15 = [(BMEventBase *)&v19 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_name, a3);
    if (v12)
    {
      v15->_hasScore = 1;
      [v12 doubleValue];
    }

    else
    {
      v15->_hasScore = 0;
      v16 = -1.0;
    }

    v15->_score = v16;
    objc_storeStrong(&v15->_language, a5);
    if (v14)
    {
      v15->_hasCategory = 1;
      v17 = [v14 unsignedIntValue];
    }

    else
    {
      v17 = 0;
      v15->_hasCategory = 0;
    }

    v15->_category = v17;
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"score" number:2 type:0 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"language" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"score" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"language" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
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
  if (a4 == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity alloc] initByReadFrom:v6];
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