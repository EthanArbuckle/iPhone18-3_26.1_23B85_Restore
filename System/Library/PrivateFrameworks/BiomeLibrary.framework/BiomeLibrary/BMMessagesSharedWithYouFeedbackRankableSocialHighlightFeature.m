@interface BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature)initWithName:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self name];
    v7 = [v5 name];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self name];
      v10 = [v5 name];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature hasValue](self, "hasValue") && ![v5 hasValue])
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature hasValue](self, "hasValue") && [v5 hasValue])
    {
      [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self value];
      v14 = v13;
      [v5 value];
      v12 = v14 == v15;
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
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self name];
  if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self hasValue]|| ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self value], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self value];
    v5 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self value];
    v6 = [v5 numberWithDouble:?];
  }

  v12[0] = @"name";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"value";
  v13[0] = v7;
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (v6)
  {
    if (v3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"name"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v8 = 0;
        v11 = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v23 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
      v24[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      v11 = 0;
      *a4 = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"value"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"value"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *a4 = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      v11 = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self initWithName:v8 value:v10];
  v11 = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasValue)
  {
    value = self->_value;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v24) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v24) & 0x7F) << v7;
        if ((LOBYTE(v24) & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v5->_hasValue = 1;
        v24 = 0.0;
        v17 = [v4 position] + 8;
        if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 8, v18 <= objc_msgSend(v4, "length")))
        {
          v19 = [v4 data];
          [v19 getBytes:&v24 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_value = v24;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadString();
        name = v5->_name;
        v5->_name = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_30;
      }

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_30:
    v21 = 0;
  }

  else
  {
LABEL_31:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self name];
  v5 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)self value];
  v6 = [v5 numberWithDouble:?];
  v7 = [v3 initWithFormat:@"BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature with name: %@, value: %@", v4, v6];

  return v7;
}

- (BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature)initWithName:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature;
  v9 = [(BMEventBase *)&v12 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_name, a3);
    if (v8)
    {
      v9->_hasValue = 1;
      [v8 doubleValue];
    }

    else
    {
      v9->_hasValue = 0;
      v10 = -1.0;
    }

    v9->_value = v10;
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:1 type:13 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:2 type:0 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"value" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 4)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 4;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end