@interface BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion)initWithTransportBundleId:(id)id model:(id)model rank:(id)rank;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    transportBundleId = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self transportBundleId];
    transportBundleId2 = [v5 transportBundleId];
    v8 = transportBundleId2;
    if (transportBundleId == transportBundleId2)
    {
    }

    else
    {
      transportBundleId3 = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self transportBundleId];
      transportBundleId4 = [v5 transportBundleId];
      v11 = [transportBundleId3 isEqual:transportBundleId4];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    model = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self model];
    model2 = [v5 model];
    v15 = model2;
    if (model == model2)
    {
    }

    else
    {
      model3 = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self model];
      model4 = [v5 model];
      v18 = [model3 isEqual:model4];

      if (!v18)
      {
        goto LABEL_16;
      }
    }

    if (!-[BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion hasRank](self, "hasRank") && ![v5 hasRank])
    {
      v12 = 1;
      goto LABEL_17;
    }

    if (-[BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion hasRank](self, "hasRank") && [v5 hasRank])
    {
      rank = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self rank];
      v12 = rank == [v5 rank];
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
  v13[3] = *MEMORY[0x1E69E9840];
  transportBundleId = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self transportBundleId];
  model = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self model];
  if ([(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self hasRank])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion rank](self, "rank")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"transportBundleId";
  null = transportBundleId;
  if (!transportBundleId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"model";
  null2 = model;
  if (!model)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"rank";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (model)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (transportBundleId)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!model)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (transportBundleId)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"transportBundleId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"model"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"model"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"rank"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rank"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *error = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self initWithTransportBundleId:v8 model:v10 rank:v12];
    selfCopy = self;
LABEL_11:

    goto LABEL_12;
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
    selfCopy = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"transportBundleId"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_transportBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_model)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasRank)
  {
    rank = self->_rank;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_42;
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
        v30 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasRank = 1;
        while (1)
        {
          v30 = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v30 & 0x7F) << v19;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v13 = v20++ >= 9;
          if (v13)
          {
            v25 = 0;
            goto LABEL_38;
          }
        }

        if ([fromCopy hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_38:
        v5->_rank = v25;
      }

      else
      {
        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 40;
        }

        else
        {
          if (v15 != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_41;
            }

            goto LABEL_39;
          }

          v16 = PBReaderReadString();
          v17 = 32;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_39:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_41:
    v27 = 0;
  }

  else
  {
LABEL_42:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  transportBundleId = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self transportBundleId];
  model = [(BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion *)self model];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion rank](self, "rank")}];
  v7 = [v3 initWithFormat:@"BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion with transportBundleId: %@, model: %@, rank: %@", transportBundleId, model, v6];

  return v7;
}

- (BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion)initWithTransportBundleId:(id)id model:(id)model rank:(id)rank
{
  idCopy = id;
  modelCopy = model;
  rankCopy = rank;
  v15.receiver = self;
  v15.super_class = BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_transportBundleId, id);
    objc_storeStrong(&v12->_model, model);
    if (rankCopy)
    {
      v12->_hasRank = 1;
      unsignedIntValue = [rankCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v12->_hasRank = 0;
    }

    v12->_rank = unsignedIntValue;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transportBundleId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"model" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rank" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transportBundleId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"model" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rank" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMMLSEShareSheetInferenceAppSuggestionsAppSuggestion alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end