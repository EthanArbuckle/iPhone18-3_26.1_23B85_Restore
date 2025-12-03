@interface BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity)initWithName:(id)name score:(id)score language:(id)language category:(id)category;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self name];
    name2 = [v5 name];
    v8 = name2;
    if (name == name2)
    {
    }

    else
    {
      name3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self name];
      name4 = [v5 name];
      v11 = [name3 isEqual:name4];

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

    language = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self language];
    language2 = [v5 language];
    v18 = language2;
    if (language == language2)
    {
    }

    else
    {
      language3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self language];
      language4 = [v5 language];
      v21 = [language3 isEqual:language4];

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
      category = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self category];
      v12 = category == [v5 category];
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
  name = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self name];
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

  language = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self language];
  if ([(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self hasCategory])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity category](self, "category")}];
  }

  else
  {
    v8 = 0;
  }

  v16[0] = @"name";
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"score";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"language";
  null3 = language;
  if (!language)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"category";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v8)
  {
    if (language)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (language)
    {
LABEL_18:
      if (v6)
      {
        goto LABEL_19;
      }

LABEL_25:

      if (name)
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
  if (name)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    v32 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        *error = [v21 initWithDomain:v22 code:2 userInfo:v10];
        error = 0;
        goto LABEL_15;
      }

      v31 = v9;
    }

    else
    {
      v31 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"language"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v31;
          goto LABEL_15;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v24 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
        v36 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v25 = [v23 initWithDomain:v24 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        error = v31;
        *errorCopy = v25;
        goto LABEL_14;
      }

      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"category"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v33 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"category"];
          v34 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          *error = [v30 initWithDomain:v28 code:2 userInfo:v27];
        }

        v14 = 0;
        v15 = 0;
        error = v31;
        goto LABEL_14;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    error = v31;
    v15 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)selfCopy initWithName:v8 score:v31 language:v12 category:v14];
    selfCopy = v15;
LABEL_14:

    self = selfCopy;
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

  if (!error)
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
  *error = [v18 initWithDomain:v19 code:2 userInfo:v9];
  error = v20;
LABEL_16:

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_hasScore)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_hasCategory)
  {
    category = self->_category;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
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
        LOBYTE(v33) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if ([fromCopy hasError])
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
        v16 = [fromCopy position] + 8;
        if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_score = v33;
      }

LABEL_46:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  name = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self name];
  v5 = MEMORY[0x1E696AD98];
  [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self score];
  v6 = [v5 numberWithDouble:?];
  language = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)self language];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity category](self, "category")}];
  v9 = [v3 initWithFormat:@"BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity with name: %@, score: %@, language: %@, category: %@", name, v6, language, v8];

  return v9;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity)initWithName:(id)name score:(id)score language:(id)language category:(id)category
{
  nameCopy = name;
  scoreCopy = score;
  languageCopy = language;
  categoryCopy = category;
  v19.receiver = self;
  v19.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity;
  v15 = [(BMEventBase *)&v19 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_name, name);
    if (scoreCopy)
    {
      v15->_hasScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v15->_hasScore = 0;
      v16 = -1.0;
    }

    v15->_score = v16;
    objc_storeStrong(&v15->_language, language);
    if (categoryCopy)
    {
      v15->_hasCategory = 1;
      unsignedIntValue = [categoryCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v15->_hasCategory = 0;
    }

    v15->_category = unsignedIntValue;
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

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