@interface BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket)initWithUsage:(id)a3 timeBucket:(int)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self usage];
    v7 = [v5 usage];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self usage];
      v10 = [v5 usage];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    v13 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self timeBucket];
    v12 = v13 == [v5 timeBucket];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self usage];
  v4 = [v3 jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket timeBucket](self, "timeBucket")}];
  v11[0] = @"usage";
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"timeBucket";
  v12[0] = v6;
  v7 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v4)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"usage"];
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
      if (a4)
      {
        v11 = v11;
        *a4 = v11;
      }

      v12 = 0;
      goto LABEL_21;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"timeBucket"];
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
          if (a4)
          {
            v19 = objc_alloc(MEMORY[0x1E696ABC0]);
            v20 = *MEMORY[0x1E698F240];
            v24 = *MEMORY[0x1E696A578];
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"timeBucket"];
            v25 = v21;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
            *a4 = [v19 initWithDomain:v20 code:2 userInfo:v22];
          }

          v10 = 0;
          v12 = 0;
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
    v12 = self;
LABEL_20:

    goto LABEL_21;
  }

  if (!a4)
  {
    v12 = 0;
    goto LABEL_22;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v26 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"usage"];
  v27[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v16 = [v14 initWithDomain:v15 code:2 userInfo:v10];
  v12 = 0;
  *a4 = v16;
LABEL_21:

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_usage)
  {
    PBDataWriterPlaceMark();
    [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketAppUsage *)self->_usage writeTo:v4];
    PBDataWriterRecallMark();
  }

  timeBucket = self->_timeBucket;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v28[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

        v22 = [[BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketAppUsage alloc] initByReadFrom:v4];
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
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:v28 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v17 > 4)
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

      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self usage];
  v5 = BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucketTimeBucketAsString([(BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket *)self timeBucket]);
  v6 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket with usage: %@, timeBucket: %@", v4, v5];

  return v6;
}

- (BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket)initWithUsage:(id)a3 timeBucket:(int)a4
{
  v7 = a3;
  v10.receiver = self;
  v10.super_class = BMSiriAssistantSuggestionFeaturesAppUsageFeaturesAppUsageTimeBucket;
  v8 = [(BMEventBase *)&v10 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v8->_usage, a3);
    v8->_timeBucket = a4;
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