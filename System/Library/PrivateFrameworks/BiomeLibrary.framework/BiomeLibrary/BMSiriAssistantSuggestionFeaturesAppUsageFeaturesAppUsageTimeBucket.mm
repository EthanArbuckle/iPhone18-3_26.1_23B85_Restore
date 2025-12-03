@interface BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket)initWithUsage:(id)usage timeBucket:(int)bucket;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    usage = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self usage];
    usage2 = [v5 usage];
    v8 = usage2;
    if (usage == usage2)
    {
    }

    else
    {
      usage3 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self usage];
      usage4 = [v5 usage];
      v11 = [usage3 isEqual:usage4];

      if (!v11)
      {
        v12 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    timeBucket = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self timeBucket];
    v12 = timeBucket == [v5 timeBucket];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  usage = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self usage];
  jsonDictionary = [usage jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket timeBucket](self, "timeBucket")}];
  v11[0] = @"usage";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"timeBucket";
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
      goto LABEL_7;
    }
  }

  else
  {

    if (jsonDictionary)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"usage"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v23 = 0;
    v8 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketAppUsage alloc] initWithJSONDictionary:v10 error:&v23];
    v11 = v23;
    if (v11)
    {
      if (error)
      {
        v11 = v11;
        *error = v11;
      }

      selfCopy = 0;
      goto LABEL_21;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"timeBucket"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v19 = objc_alloc(MEMORY[0x1E696ABC0]);
            v20 = *MEMORY[0x1E698F240];
            v24 = *MEMORY[0x1E696A578];
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"timeBucket"];
            v25 = v21;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
            *error = [v19 initWithDomain:v20 code:2 userInfo:v22];
          }

          v10 = 0;
          selfCopy = 0;
          goto LABEL_20;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketTimeBucketFromString(v9)];
      }

      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    self = -[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket initWithUsage:timeBucket:](self, "initWithUsage:timeBucket:", v8, [v10 intValue]);
    selfCopy = self;
LABEL_20:

    goto LABEL_21;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_22;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v26 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"usage"];
  v27[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v16 = [v14 initWithDomain:v15 code:2 userInfo:v10];
  selfCopy = 0;
  *error = v16;
LABEL_21:

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_usage)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketAppUsage *)self->_usage writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  timeBucket = self->_timeBucket;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket;
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
        if (v8++ >= 9)
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

      if ((v14 >> 3) == 1)
      {
        v28[0] = 0;
        v28[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_40;
        }

        v22 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketAppUsage alloc] initByReadFrom:fromCopy];
        if (!v22)
        {
          goto LABEL_40;
        }

        usage = v5->_usage;
        v5->_usage = v22;

        PBReaderRecallMark();
      }

      else if ((v14 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v28 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v28[0] & 0x7F) << v15;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          if (v16++ > 8)
          {
            goto LABEL_36;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v17 > 4)
        {
LABEL_36:
          LODWORD(v17) = 0;
        }

        v5->_timeBucket = v17;
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
  usage = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self usage];
  v5 = BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketTimeBucketAsString([(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self timeBucket]);
  v6 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket with usage: %@, timeBucket: %@", usage, v5];

  return v6;
}

- (BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket)initWithUsage:(id)usage timeBucket:(int)bucket
{
  usageCopy = usage;
  v10.receiver = self;
  v10.super_class = BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket;
  v8 = [(BMEventBase *)&v10 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v8->_usage, usage);
    v8->_timeBucket = bucket;
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usage" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeBucket" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"usage_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_418];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeBucket" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __78__BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 usage];
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

    v8 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end