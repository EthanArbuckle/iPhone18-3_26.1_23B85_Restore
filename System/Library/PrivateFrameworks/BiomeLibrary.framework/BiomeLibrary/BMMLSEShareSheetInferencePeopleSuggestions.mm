@interface BMMLSEShareSheetInferencePeopleSuggestions
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEShareSheetInferencePeopleSuggestions)initWithIdentifier:(id)identifier sourceBundleId:(id)id peopleSuggestions:(id)suggestions responseType:(int)type trainingDataCollection:(id)collection;
- (BMMLSEShareSheetInferencePeopleSuggestions)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_peopleSuggestionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEShareSheetInferencePeopleSuggestions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMMLSEShareSheetInferencePeopleSuggestions *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    sourceBundleId = [(BMMLSEShareSheetInferencePeopleSuggestions *)self sourceBundleId];
    sourceBundleId2 = [v5 sourceBundleId];
    v15 = sourceBundleId2;
    if (sourceBundleId == sourceBundleId2)
    {
    }

    else
    {
      sourceBundleId3 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self sourceBundleId];
      sourceBundleId4 = [v5 sourceBundleId];
      v18 = [sourceBundleId3 isEqual:sourceBundleId4];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    peopleSuggestions = [(BMMLSEShareSheetInferencePeopleSuggestions *)self peopleSuggestions];
    peopleSuggestions2 = [v5 peopleSuggestions];
    v21 = peopleSuggestions2;
    if (peopleSuggestions == peopleSuggestions2)
    {
    }

    else
    {
      peopleSuggestions3 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self peopleSuggestions];
      peopleSuggestions4 = [v5 peopleSuggestions];
      v24 = [peopleSuggestions3 isEqual:peopleSuggestions4];

      if (!v24)
      {
        goto LABEL_18;
      }
    }

    responseType = [(BMMLSEShareSheetInferencePeopleSuggestions *)self responseType];
    if (responseType == [v5 responseType])
    {
      trainingDataCollection = [(BMMLSEShareSheetInferencePeopleSuggestions *)self trainingDataCollection];
      trainingDataCollection2 = [v5 trainingDataCollection];
      if (trainingDataCollection == trainingDataCollection2)
      {
        v12 = 1;
      }

      else
      {
        trainingDataCollection3 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self trainingDataCollection];
        trainingDataCollection4 = [v5 trainingDataCollection];
        v12 = [trainingDataCollection3 isEqual:trainingDataCollection4];
      }

      goto LABEL_19;
    }

LABEL_18:
    v12 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v24[5] = *MEMORY[0x1E69E9840];
  identifier = [(BMMLSEShareSheetInferencePeopleSuggestions *)self identifier];
  sourceBundleId = [(BMMLSEShareSheetInferencePeopleSuggestions *)self sourceBundleId];
  _peopleSuggestionsJSONArray = [(BMMLSEShareSheetInferencePeopleSuggestions *)self _peopleSuggestionsJSONArray];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEShareSheetInferencePeopleSuggestions responseType](self, "responseType")}];
  trainingDataCollection = [(BMMLSEShareSheetInferencePeopleSuggestions *)self trainingDataCollection];
  jsonDictionary = [trainingDataCollection jsonDictionary];

  v19 = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v24[0] = null;
  v20 = @"sourceBundleId";
  null2 = sourceBundleId;
  if (!sourceBundleId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  v21 = @"peopleSuggestions";
  null3 = _peopleSuggestionsJSONArray;
  if (!_peopleSuggestionsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  v22 = @"responseType";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23 = @"trainingDataCollection";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (jsonDictionary)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (_peopleSuggestionsJSONArray)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (_peopleSuggestionsJSONArray)
  {
LABEL_14:
    if (sourceBundleId)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (identifier)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!sourceBundleId)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (identifier)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_peopleSuggestionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  peopleSuggestions = [(BMMLSEShareSheetInferencePeopleSuggestions *)self peopleSuggestions];
  v5 = [peopleSuggestions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(peopleSuggestions);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [peopleSuggestions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMLSEShareSheetInferencePeopleSuggestions)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v87[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy = error;
      if (error)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v26 = objc_alloc(MEMORY[0x1E696AEC0]);
        v56 = objc_opt_class();
        v27 = v26;
        self = selfCopy;
        v8 = [v27 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v56, @"identifier"];
        v87[0] = v8;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
        v29 = v23;
        v7 = v28;
        v30 = [v29 initWithDomain:v24 code:2 userInfo:v28];
        errorCopy = 0;
        selfCopy4 = 0;
        *error = v30;
        goto LABEL_60;
      }

      selfCopy4 = 0;
      goto LABEL_61;
    }

    v64 = v6;
  }

  else
  {
    v64 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"sourceBundleId"];
  v62 = v7;
  v63 = v6;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceBundleId"];
        v85 = v9;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v34 = [v32 initWithDomain:v33 code:2 userInfo:?];
        v8 = 0;
        selfCopy4 = 0;
        *error = v34;
        errorCopy = v64;
        goto LABEL_58;
      }

      v8 = 0;
      selfCopy4 = 0;
      errorCopy = v64;
      goto LABEL_60;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"peopleSuggestions"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  v61 = v8;
  if (v11)
  {
    selfCopy3 = self;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"peopleSuggestions"];
          v83 = v66;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v46 = [v44 initWithDomain:v45 code:2 userInfo:v21];
          selfCopy4 = 0;
          *error = v46;
          errorCopy = v64;
          goto LABEL_57;
        }

        selfCopy4 = 0;
        errorCopy = v64;
        goto LABEL_59;
      }
    }

    selfCopy3 = self;
  }

  v66 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = *v70;
  v58 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v70 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v69 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy3 = error;
        if (error)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v79 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"peopleSuggestions"];
          v80 = v17;
          v38 = MEMORY[0x1E695DF20];
          v39 = &v80;
          v40 = &v79;
LABEL_37:
          v41 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:1];
          v42 = [v36 initWithDomain:v37 code:2 userInfo:v41];
          selfCopy4 = 0;
          *errorCopy3 = v42;
LABEL_41:
          v21 = v9;
          dictionaryCopy = v58;
          self = selfCopy3;
          errorCopy = v64;
          goto LABEL_42;
        }

LABEL_45:
        selfCopy4 = 0;
        v21 = v9;
        dictionaryCopy = v58;
        self = selfCopy3;
        errorCopy = v64;
        v8 = v61;
        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy3 = error;
        if (error)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"peopleSuggestions"];
          v78 = v17;
          v38 = MEMORY[0x1E695DF20];
          v39 = &v78;
          v40 = &v77;
          goto LABEL_37;
        }

        goto LABEL_45;
      }

      v17 = v16;
      v18 = [BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion alloc];
      v68 = 0;
      v19 = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)v18 initWithJSONDictionary:v17 error:&v68];
      v20 = v68;
      if (v20)
      {
        v41 = v20;
        if (error)
        {
          v43 = v20;
          *error = v41;
        }

        selfCopy4 = 0;
        goto LABEL_41;
      }

      [v66 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v69 objects:v81 count:16];
    dictionaryCopy = v58;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v17 = [dictionaryCopy objectForKeyedSubscript:@"responseType"];
  if (!v17)
  {
    v21 = 0;
LABEL_47:
    self = selfCopy3;
    goto LABEL_50;
  }

  objc_opt_class();
  self = selfCopy3;
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
LABEL_50:
    v41 = [dictionaryCopy objectForKeyedSubscript:@"trainingDataCollection"];
    if (!v41 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v47 = 0;
      errorCopy = v64;
      goto LABEL_53;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = v41;
      v67 = 0;
      v47 = [[BMShareEvent alloc] initWithJSONDictionary:v50 error:&v67];
      v51 = v67;
      errorCopy = v64;
      if (v51)
      {
        if (error)
        {
          v51 = v51;
          *error = v51;
        }

        v41 = v50;
        selfCopy4 = 0;
      }

      else
      {

LABEL_53:
        self = -[BMMLSEShareSheetInferencePeopleSuggestions initWithIdentifier:sourceBundleId:peopleSuggestions:responseType:trainingDataCollection:](self, "initWithIdentifier:sourceBundleId:peopleSuggestions:responseType:trainingDataCollection:", errorCopy, v8, v66, [v21 intValue], v47);
        selfCopy4 = self;
      }

LABEL_54:
    }

    else
    {
      errorCopy = v64;
      if (error)
      {
        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v57 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trainingDataCollection"];
        v74 = v47;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        *error = [v60 initWithDomain:v57 code:2 userInfo:v52];

        selfCopy4 = 0;
        goto LABEL_54;
      }

      selfCopy4 = 0;
LABEL_42:
      v8 = v61;
    }

    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v17;
    goto LABEL_50;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEShareSheetInferencePeopleSuggestionsResponseTypeFromString(v17)];
    goto LABEL_47;
  }

  if (error)
  {
    v53 = objc_alloc(MEMORY[0x1E696ABC0]);
    v54 = *MEMORY[0x1E698F240];
    v75 = *MEMORY[0x1E696A578];
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"responseType"];
    v76 = v41;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v55 = [v53 initWithDomain:v54 code:2 userInfo:v47];
    v21 = 0;
    selfCopy4 = 0;
    *error = v55;
    errorCopy = v64;
    goto LABEL_54;
  }

  v21 = 0;
  selfCopy4 = 0;
  errorCopy = v64;
LABEL_56:

LABEL_57:
LABEL_58:

  v7 = v62;
LABEL_59:

  v6 = v63;
LABEL_60:

LABEL_61:
  v48 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEShareSheetInferencePeopleSuggestions *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceBundleId)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_peopleSuggestions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  responseType = self->_responseType;
  PBDataWriterWriteUint32Field();
  if (self->_trainingDataCollection)
  {
    PBDataWriterPlaceMark();
    [(BMShareEvent *)self->_trainingDataCollection writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v37.receiver = self;
  v37.super_class = BMMLSEShareSheetInferencePeopleSuggestions;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_51;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_49;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v38 & 0x7F) << v8;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_49;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      switch(v16)
      {
        case 3:
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || (v26 = [[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion alloc] initByReadFrom:fromCopy]) == 0)
          {
LABEL_53:

            goto LABEL_50;
          }

          v27 = v26;
          [v6 addObject:v26];
          PBReaderRecallMark();

          break;
        case 0xA:
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v28 = [[BMShareEvent alloc] initByReadFrom:fromCopy];
          if (!v28)
          {
            goto LABEL_53;
          }

          trainingDataCollection = v5->_trainingDataCollection;
          v5->_trainingDataCollection = v28;

          PBReaderRecallMark();
          break;
        case 4:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v38 & 0x7F) << v17;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ > 8)
            {
              goto LABEL_46;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 3)
          {
LABEL_46:
            LODWORD(v19) = 0;
          }

          v5->_responseType = v19;
          break;
        default:
LABEL_42:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_53;
          }

          break;
      }

LABEL_48:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_49;
      }
    }

    if (v16 == 1)
    {
      v24 = PBReaderReadString();
      v25 = 24;
      goto LABEL_41;
    }

    if (v16 == 2)
    {
      v24 = PBReaderReadString();
      v25 = 32;
LABEL_41:
      v30 = *(&v5->super.super.isa + v25);
      *(&v5->super.super.isa + v25) = v24;

      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_49:
  v32 = [v6 copy];
  peopleSuggestions = v5->_peopleSuggestions;
  v5->_peopleSuggestions = v32;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_50:
    v35 = 0;
  }

  else
  {
LABEL_51:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMMLSEShareSheetInferencePeopleSuggestions *)self identifier];
  sourceBundleId = [(BMMLSEShareSheetInferencePeopleSuggestions *)self sourceBundleId];
  peopleSuggestions = [(BMMLSEShareSheetInferencePeopleSuggestions *)self peopleSuggestions];
  v7 = BMMLSEShareSheetInferencePeopleSuggestionsResponseTypeAsString([(BMMLSEShareSheetInferencePeopleSuggestions *)self responseType]);
  trainingDataCollection = [(BMMLSEShareSheetInferencePeopleSuggestions *)self trainingDataCollection];
  v9 = [v3 initWithFormat:@"BMMLSEShareSheetInferencePeopleSuggestions with identifier: %@, sourceBundleId: %@, peopleSuggestions: %@, responseType: %@, trainingDataCollection: %@", identifier, sourceBundleId, peopleSuggestions, v7, trainingDataCollection];

  return v9;
}

- (BMMLSEShareSheetInferencePeopleSuggestions)initWithIdentifier:(id)identifier sourceBundleId:(id)id peopleSuggestions:(id)suggestions responseType:(int)type trainingDataCollection:(id)collection
{
  identifierCopy = identifier;
  idCopy = id;
  suggestionsCopy = suggestions;
  collectionCopy = collection;
  v19.receiver = self;
  v19.super_class = BMMLSEShareSheetInferencePeopleSuggestions;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v17->_sourceBundleId, id);
    objc_storeStrong(&v17->_peopleSuggestions, suggestions);
    v17->_responseType = type;
    objc_storeStrong(&v17->_trainingDataCollection, collection);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleId" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleSuggestions" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responseType" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trainingDataCollection" number:10 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"peopleSuggestions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_428_86894];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responseType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trainingDataCollection_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_430_86895];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __53__BMMLSEShareSheetInferencePeopleSuggestions_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trainingDataCollection];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __53__BMMLSEShareSheetInferencePeopleSuggestions_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _peopleSuggestionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMMLSEShareSheetInferencePeopleSuggestions alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end