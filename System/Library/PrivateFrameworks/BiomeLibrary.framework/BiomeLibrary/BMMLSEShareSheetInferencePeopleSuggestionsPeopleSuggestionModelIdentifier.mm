@interface BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier)initWithModelType:(int)type trialIdentifier:(id)identifier otherModelTypeName:(id)name;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    modelType = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self modelType];
    if (modelType == [v5 modelType])
    {
      trialIdentifier = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self trialIdentifier];
      trialIdentifier2 = [v5 trialIdentifier];
      v9 = trialIdentifier2;
      if (trialIdentifier == trialIdentifier2)
      {
      }

      else
      {
        trialIdentifier3 = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self trialIdentifier];
        trialIdentifier4 = [v5 trialIdentifier];
        v12 = [trialIdentifier3 isEqual:trialIdentifier4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      otherModelTypeName = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self otherModelTypeName];
      otherModelTypeName2 = [v5 otherModelTypeName];
      if (otherModelTypeName == otherModelTypeName2)
      {
        v13 = 1;
      }

      else
      {
        otherModelTypeName3 = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self otherModelTypeName];
        otherModelTypeName4 = [v5 otherModelTypeName];
        v13 = [otherModelTypeName3 isEqual:otherModelTypeName4];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier modelType](self, "modelType")}];
  trialIdentifier = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self trialIdentifier];
  jsonDictionary = [trialIdentifier jsonDictionary];

  otherModelTypeName = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self otherModelTypeName];
  v13[0] = @"modelType";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"trialIdentifier";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"otherModelTypeName";
  null3 = otherModelTypeName;
  if (!otherModelTypeName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (otherModelTypeName)
  {
    if (jsonDictionary)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!jsonDictionary)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"modelType"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          selfCopy = 0;
          goto LABEL_19;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v33 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"modelType"];
        v34[0] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
        v24 = [v22 initWithDomain:v23 code:2 userInfo:v11];
        v8 = 0;
        selfCopy = 0;
        *error = v24;
        goto LABEL_17;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifierModelTypeFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"trialIdentifier"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v10;
    v28 = 0;
    v11 = [[BMTrialIdentifier alloc] initWithJSONDictionary:v16 error:&v28];
    v17 = v28;
    if (v17)
    {
      if (error)
      {
        v17 = v17;
        *error = v17;
      }

      selfCopy = 0;
      v10 = v16;
      goto LABEL_17;
    }

LABEL_12:
    v12 = [dictionaryCopy objectForKeyedSubscript:@"otherModelTypeName"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = *MEMORY[0x1E698F240];
          v29 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"otherModelTypeName"];
          v30 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          *error = [v27 initWithDomain:v25 code:2 userInfo:v21];

          error = 0;
        }

        selfCopy = 0;
        goto LABEL_16;
      }

      error = v12;
    }

    else
    {
      error = 0;
    }

    self = -[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier initWithModelType:trialIdentifier:otherModelTypeName:](self, "initWithModelType:trialIdentifier:otherModelTypeName:", [v8 intValue], v11, error);
    selfCopy = self;
LABEL_16:

    goto LABEL_17;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_18;
  }

  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifier"];
  v32 = v11;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  *error = [v26 initWithDomain:v18 code:2 userInfo:v19];

  selfCopy = 0;
LABEL_17:

LABEL_18:
LABEL_19:

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  modelType = self->_modelType;
  PBDataWriterWriteUint32Field();
  if (self->_trialIdentifier)
  {
    PBDataWriterPlaceMark();
    [(BMTrialIdentifier *)self->_trialIdentifier writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_otherModelTypeName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v30.receiver = self;
  v30.super_class = BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier;
  v5 = [(BMEventBase *)&v30 init];
  if (!v5)
  {
    goto LABEL_43;
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
        LOBYTE(v31[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v31 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v31[0] & 0x7F) << v7;
        if ((v31[0] & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v25 = PBReaderReadString();
        otherModelTypeName = v5->_otherModelTypeName;
        v5->_otherModelTypeName = v25;
      }

      else if (v15 == 2)
      {
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_42;
        }

        v23 = [[BMTrialIdentifier alloc] initByReadFrom:fromCopy];
        if (!v23)
        {
          goto LABEL_42;
        }

        trialIdentifier = v5->_trialIdentifier;
        v5->_trialIdentifier = v23;

        PBReaderRecallMark();
      }

      else if (v15 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v31 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v31[0] & 0x7F) << v16;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_38;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 0x1D)
        {
LABEL_38:
          LODWORD(v18) = 0;
        }

        v5->_modelType = v18;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_42;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_42:
    v28 = 0;
  }

  else
  {
LABEL_43:
    v28 = v5;
  }

  return v28;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifierModelTypeAsString([(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self modelType]);
  trialIdentifier = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self trialIdentifier];
  otherModelTypeName = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier *)self otherModelTypeName];
  v7 = [v3 initWithFormat:@"BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier with modelType: %@, trialIdentifier: %@, otherModelTypeName: %@", v4, trialIdentifier, otherModelTypeName];

  return v7;
}

- (BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier)initWithModelType:(int)type trialIdentifier:(id)identifier otherModelTypeName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier;
  v11 = [(BMEventBase *)&v13 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    v11->_modelType = type;
    objc_storeStrong(&v11->_trialIdentifier, identifier);
    objc_storeStrong(&v11->_otherModelTypeName, name);
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialIdentifier" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"otherModelTypeName" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trialIdentifier_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_222];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"otherModelTypeName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __84__BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trialIdentifier];
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

    v8 = [[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestionModelIdentifier alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end