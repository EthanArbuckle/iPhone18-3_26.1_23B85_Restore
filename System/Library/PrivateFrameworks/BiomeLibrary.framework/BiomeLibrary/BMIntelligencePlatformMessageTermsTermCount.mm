@interface BMIntelligencePlatformMessageTermsTermCount
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligencePlatformMessageTermsTermCount)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMIntelligencePlatformMessageTermsTermCount)initWithTerm:(id)term termCount:(id)count;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligencePlatformMessageTermsTermCount

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    term = [(BMIntelligencePlatformMessageTermsTermCount *)self term];
    term2 = [v5 term];
    v8 = term2;
    if (term == term2)
    {
    }

    else
    {
      term3 = [(BMIntelligencePlatformMessageTermsTermCount *)self term];
      term4 = [v5 term];
      v11 = [term3 isEqual:term4];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMIntelligencePlatformMessageTermsTermCount hasTermCount](self, "hasTermCount") && ![v5 hasTermCount])
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (-[BMIntelligencePlatformMessageTermsTermCount hasTermCount](self, "hasTermCount") && [v5 hasTermCount])
    {
      termCount = [(BMIntelligencePlatformMessageTermsTermCount *)self termCount];
      v12 = termCount == [v5 termCount];
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  term = [(BMIntelligencePlatformMessageTermsTermCount *)self term];
  jsonDictionary = [term jsonDictionary];

  if ([(BMIntelligencePlatformMessageTermsTermCount *)self hasTermCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformMessageTermsTermCount termCount](self, "termCount")}];
  }

  else
  {
    v5 = 0;
  }

  v11[0] = @"term";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"termCount";
  v12[0] = null;
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    if (jsonDictionary)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (jsonDictionary)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMIntelligencePlatformMessageTermsTermCount)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"term"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v22 = 0;
    v8 = [[BMIntelligencePlatformMessageTermsTermCountTerm alloc] initWithJSONDictionary:v10 error:&v22];
    v14 = v22;
    if (v14)
    {
      if (error)
      {
        v14 = v14;
        *error = v14;
      }

      selfCopy = 0;
      goto LABEL_9;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"termCount"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v18 = objc_alloc(MEMORY[0x1E696ABC0]);
          v19 = *MEMORY[0x1E698F240];
          v23 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"termCount"];
          v24 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          *error = [v18 initWithDomain:v19 code:2 userInfo:v21];
        }

        v10 = 0;
        selfCopy = 0;
        goto LABEL_8;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    self = [(BMIntelligencePlatformMessageTermsTermCount *)self initWithTerm:v8 termCount:v10];
    selfCopy = self;
LABEL_8:

    goto LABEL_9;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_10;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v25 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"term"];
  v26[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v17 = [v15 initWithDomain:v16 code:2 userInfo:v10];
  selfCopy = 0;
  *error = v17;
LABEL_9:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformMessageTermsTermCount *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_term)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligencePlatformMessageTermsTermCountTerm *)self->_term writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasTermCount)
  {
    termCount = self->_termCount;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMIntelligencePlatformMessageTermsTermCount;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v28[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v28[0] & 0x7F) << v7;
        if ((v28[0] & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasTermCount = 1;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v28 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (v28[0] & 0x7F) << v17;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            v23 = 0;
            goto LABEL_37;
          }
        }

        if ([fromCopy hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_37:
        v5->_termCount = v23;
      }

      else if ((v14 >> 3) == 1)
      {
        v28[0] = 0;
        v28[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_40;
        }

        v15 = [[BMIntelligencePlatformMessageTermsTermCountTerm alloc] initByReadFrom:fromCopy];
        if (!v15)
        {
          goto LABEL_40;
        }

        term = v5->_term;
        v5->_term = v15;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_40;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_40:
    v25 = 0;
  }

  else
  {
LABEL_41:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  term = [(BMIntelligencePlatformMessageTermsTermCount *)self term];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformMessageTermsTermCount termCount](self, "termCount")}];
  v6 = [v3 initWithFormat:@"BMIntelligencePlatformMessageTermsTermCount with term: %@, termCount: %@", term, v5];

  return v6;
}

- (BMIntelligencePlatformMessageTermsTermCount)initWithTerm:(id)term termCount:(id)count
{
  termCopy = term;
  countCopy = count;
  v12.receiver = self;
  v12.super_class = BMIntelligencePlatformMessageTermsTermCount;
  v9 = [(BMEventBase *)&v12 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_term, term);
    if (countCopy)
    {
      v9->_hasTermCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v9->_hasTermCount = 0;
      intValue = -1;
    }

    v9->_termCount = intValue;
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"term" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"termCount" number:2 type:2 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"term_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_173];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"termCount" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __54__BMIntelligencePlatformMessageTermsTermCount_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 term];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMIntelligencePlatformMessageTermsTermCount alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end