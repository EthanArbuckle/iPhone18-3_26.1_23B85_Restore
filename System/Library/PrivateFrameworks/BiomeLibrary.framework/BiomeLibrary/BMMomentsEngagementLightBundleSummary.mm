@interface BMMomentsEngagementLightBundleSummary
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEngagementLightBundleSummary)initWithIdentifier:(id)identifier bundleInterfaceType:(id)type bundleEvergreenType:(id)evergreenType bundleGoodnessScore:(id)score;
- (BMMomentsEngagementLightBundleSummary)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEngagementLightBundleSummary

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMMomentsEngagementLightBundleSummary *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMMomentsEngagementLightBundleSummary *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_20;
      }
    }

    bundleInterfaceType = [(BMMomentsEngagementLightBundleSummary *)self bundleInterfaceType];
    bundleInterfaceType2 = [v5 bundleInterfaceType];
    v15 = bundleInterfaceType2;
    if (bundleInterfaceType == bundleInterfaceType2)
    {
    }

    else
    {
      bundleInterfaceType3 = [(BMMomentsEngagementLightBundleSummary *)self bundleInterfaceType];
      bundleInterfaceType4 = [v5 bundleInterfaceType];
      v18 = [bundleInterfaceType3 isEqual:bundleInterfaceType4];

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    bundleEvergreenType = [(BMMomentsEngagementLightBundleSummary *)self bundleEvergreenType];
    bundleEvergreenType2 = [v5 bundleEvergreenType];
    v21 = bundleEvergreenType2;
    if (bundleEvergreenType == bundleEvergreenType2)
    {
    }

    else
    {
      bundleEvergreenType3 = [(BMMomentsEngagementLightBundleSummary *)self bundleEvergreenType];
      bundleEvergreenType4 = [v5 bundleEvergreenType];
      v24 = [bundleEvergreenType3 isEqual:bundleEvergreenType4];

      if (!v24)
      {
        goto LABEL_20;
      }
    }

    if (!-[BMMomentsEngagementLightBundleSummary hasBundleGoodnessScore](self, "hasBundleGoodnessScore") && ![v5 hasBundleGoodnessScore])
    {
      v12 = 1;
      goto LABEL_21;
    }

    if (-[BMMomentsEngagementLightBundleSummary hasBundleGoodnessScore](self, "hasBundleGoodnessScore") && [v5 hasBundleGoodnessScore])
    {
      [(BMMomentsEngagementLightBundleSummary *)self bundleGoodnessScore];
      v26 = v25;
      [v5 bundleGoodnessScore];
      v12 = v26 == v27;
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  v12 = 0;
LABEL_22:

  return v12;
}

- (id)jsonDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  identifier = [(BMMomentsEngagementLightBundleSummary *)self identifier];
  jsonDictionary = [identifier jsonDictionary];

  bundleInterfaceType = [(BMMomentsEngagementLightBundleSummary *)self bundleInterfaceType];
  bundleEvergreenType = [(BMMomentsEngagementLightBundleSummary *)self bundleEvergreenType];
  if (![(BMMomentsEngagementLightBundleSummary *)self hasBundleGoodnessScore]|| ([(BMMomentsEngagementLightBundleSummary *)self bundleGoodnessScore], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMMomentsEngagementLightBundleSummary *)self bundleGoodnessScore];
    v8 = MEMORY[0x1E696AD98];
    [(BMMomentsEngagementLightBundleSummary *)self bundleGoodnessScore];
    v9 = [v8 numberWithDouble:?];
  }

  v17[0] = @"identifier";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"bundleInterfaceType";
  null2 = bundleInterfaceType;
  if (!bundleInterfaceType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"bundleEvergreenType";
  null3 = bundleEvergreenType;
  if (!bundleEvergreenType)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v17[3] = @"bundleGoodnessScore";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
  {
    if (bundleEvergreenType)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (bundleEvergreenType)
    {
LABEL_15:
      if (bundleInterfaceType)
      {
        goto LABEL_16;
      }

LABEL_22:

      if (jsonDictionary)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  if (!bundleInterfaceType)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (jsonDictionary)
  {
    goto LABEL_17;
  }

LABEL_23:

LABEL_17:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMMomentsEngagementLightBundleSummary)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v7;
    v36 = 0;
    v8 = [[BMMomentsEngagementLightSuggestionIdentifier alloc] initWithJSONDictionary:v18 error:&v36];
    v19 = v36;
    if (v19)
    {
      v20 = v18;
      if (error)
      {
        v19 = v19;
        *error = v19;
      }

      v15 = 0;
      error = v20;
      goto LABEL_17;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleInterfaceType"];
    v35 = v7;
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

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleInterfaceType"];
        v42 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v15 = 0;
        *error = [v24 initWithDomain:v25 code:2 userInfo:v10];
        error = 0;
LABEL_15:

        v7 = v35;
LABEL_16:

        goto LABEL_17;
      }

      v34 = v9;
    }

    else
    {
      v34 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"bundleEvergreenType"];
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
          error = v34;
          goto LABEL_15;
        }

        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v27 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleEvergreenType"];
        v40 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v28 = [v26 initWithDomain:v27 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        error = v34;
        *errorCopy = v28;
        goto LABEL_14;
      }

      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"bundleGoodnessScore"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v37 = *MEMORY[0x1E696A578];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleGoodnessScore"];
          v38 = v29;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          *error = [v33 initWithDomain:v31 code:2 userInfo:v30];
        }

        v14 = 0;
        v15 = 0;
        error = v34;
        goto LABEL_14;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    error = v34;
    v15 = [(BMMomentsEngagementLightBundleSummary *)selfCopy initWithIdentifier:v8 bundleInterfaceType:v34 bundleEvergreenType:v12 bundleGoodnessScore:v14];
    selfCopy = v15;
LABEL_14:

    self = selfCopy;
    goto LABEL_15;
  }

  if (!error)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v43 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"identifier"];
  v44[0] = v8;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
  v15 = 0;
  *error = [v21 initWithDomain:v22 code:2 userInfo:v23];
  error = v23;
LABEL_17:

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementLightBundleSummary *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementLightSuggestionIdentifier *)self->_identifier writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_bundleInterfaceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleEvergreenType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasBundleGoodnessScore)
  {
    bundleGoodnessScore = self->_bundleGoodnessScore;
    PBDataWriterWriteFloatField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMMomentsEngagementLightBundleSummary;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_39;
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v16 = PBReaderReadString();
          v17 = 40;
LABEL_33:
          v22 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_36;
        }

        if (v15 != 4)
        {
LABEL_27:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }

        v5->_hasBundleGoodnessScore = 1;
        LODWORD(v28[0]) = 0;
        v18 = [fromCopy position] + 4;
        if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 4, v19 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:v28 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_bundleGoodnessScore = *v28;
      }

      else
      {
        if (v15 != 1)
        {
          if (v15 != 2)
          {
            goto LABEL_27;
          }

          v16 = PBReaderReadString();
          v17 = 32;
          goto LABEL_33;
        }

        v28[0] = 0;
        v28[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_38;
        }

        v20 = [[BMMomentsEngagementLightSuggestionIdentifier alloc] initByReadFrom:fromCopy];
        if (!v20)
        {
          goto LABEL_38;
        }

        identifier = v5->_identifier;
        v5->_identifier = v20;

        PBReaderRecallMark();
      }

LABEL_36:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_38:
    v25 = 0;
  }

  else
  {
LABEL_39:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMMomentsEngagementLightBundleSummary *)self identifier];
  bundleInterfaceType = [(BMMomentsEngagementLightBundleSummary *)self bundleInterfaceType];
  bundleEvergreenType = [(BMMomentsEngagementLightBundleSummary *)self bundleEvergreenType];
  v7 = MEMORY[0x1E696AD98];
  [(BMMomentsEngagementLightBundleSummary *)self bundleGoodnessScore];
  v8 = [v7 numberWithDouble:?];
  v9 = [v3 initWithFormat:@"BMMomentsEngagementLightBundleSummary with identifier: %@, bundleInterfaceType: %@, bundleEvergreenType: %@, bundleGoodnessScore: %@", identifier, bundleInterfaceType, bundleEvergreenType, v8];

  return v9;
}

- (BMMomentsEngagementLightBundleSummary)initWithIdentifier:(id)identifier bundleInterfaceType:(id)type bundleEvergreenType:(id)evergreenType bundleGoodnessScore:(id)score
{
  identifierCopy = identifier;
  typeCopy = type;
  evergreenTypeCopy = evergreenType;
  scoreCopy = score;
  v19.receiver = self;
  v19.super_class = BMMomentsEngagementLightBundleSummary;
  v15 = [(BMEventBase *)&v19 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v15->_bundleInterfaceType, type);
    objc_storeStrong(&v15->_bundleEvergreenType, evergreenType);
    if (scoreCopy)
    {
      v15->_hasBundleGoodnessScore = 1;
      [scoreCopy floatValue];
      v17 = v16;
    }

    else
    {
      v15->_hasBundleGoodnessScore = 0;
      v17 = -1.0;
    }

    v15->_bundleGoodnessScore = v17;
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:14 subMessageClass:objc_opt_class()];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleInterfaceType" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleEvergreenType" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleGoodnessScore" number:4 type:1 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"identifier_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_189_107048];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleInterfaceType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleEvergreenType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleGoodnessScore" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:1 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __48__BMMomentsEngagementLightBundleSummary_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 identifier];
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

    v8 = [[BMMomentsEngagementLightBundleSummary alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end