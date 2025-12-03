@interface BMSiriMusic
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriMusic)initWithIndepSignals:(id)signals depSignals:(id)depSignals;
- (BMSiriMusic)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_depSignalsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriMusic

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    indepSignals = [(BMSiriMusic *)self indepSignals];
    indepSignals2 = [v5 indepSignals];
    v8 = indepSignals2;
    if (indepSignals == indepSignals2)
    {
    }

    else
    {
      indepSignals3 = [(BMSiriMusic *)self indepSignals];
      indepSignals4 = [v5 indepSignals];
      v11 = [indepSignals3 isEqual:indepSignals4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    depSignals = [(BMSiriMusic *)self depSignals];
    depSignals2 = [v5 depSignals];
    if (depSignals == depSignals2)
    {
      v12 = 1;
    }

    else
    {
      depSignals3 = [(BMSiriMusic *)self depSignals];
      depSignals4 = [v5 depSignals];
      v12 = [depSignals3 isEqual:depSignals4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  indepSignals = [(BMSiriMusic *)self indepSignals];
  jsonDictionary = [indepSignals jsonDictionary];

  _depSignalsJSONArray = [(BMSiriMusic *)self _depSignalsJSONArray];
  v11[0] = @"indepSignals";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"depSignals";
  v12[0] = null;
  null2 = _depSignalsJSONArray;
  if (!_depSignalsJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (_depSignalsJSONArray)
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

- (id)_depSignalsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  depSignals = [(BMSiriMusic *)self depSignals];
  v5 = [depSignals countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(depSignals);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [depSignals countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriMusic)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"indepSignals"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v57[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"indepSignals"];
        v8 = v57[0];
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        v26 = [v24 initWithDomain:v25 code:2 userInfo:v9];
        selfCopy2 = 0;
        *error = v26;
        goto LABEL_37;
      }

      selfCopy2 = 0;
      goto LABEL_38;
    }

    v9 = v7;
    v48 = 0;
    v8 = [[BMSiriMusicInferenceTrainingIndependentSignals alloc] initWithJSONDictionary:v9 error:&v48];
    v23 = v48;
    if (v23)
    {
      if (error)
      {
        v23 = v23;
        *error = v23;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"depSignals"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  errorCopy = error;
  if (!v11)
  {
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v40 = v8;
      v41 = v7;
      v42 = dictionaryCopy;
      goto LABEL_9;
    }

    if (error)
    {
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"depSignals"];
      v55 = v12;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      *error = [v35 initWithDomain:v36 code:2 userInfo:v37];

      selfCopy2 = 0;
      goto LABEL_36;
    }

LABEL_41:
    selfCopy2 = 0;
    goto LABEL_37;
  }

  v40 = v8;
  v41 = v7;
  v42 = dictionaryCopy;

  v9 = 0;
LABEL_9:
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = v9;
  v13 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = *v45;
  selfCopy = self;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v45 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v44 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self = selfCopy;
        v7 = v41;
        dictionaryCopy = v42;
        if (errorCopy)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v51 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"depSignals"];
          v52 = v18;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *errorCopy = [v27 initWithDomain:v28 code:2 userInfo:v29];
LABEL_34:
        }

LABEL_35:

        selfCopy2 = 0;
        v8 = v40;
        goto LABEL_36;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = selfCopy;
        v7 = v41;
        dictionaryCopy = v42;
        if (errorCopy)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"depSignals"];
          v50 = v18;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          *errorCopy = [v30 initWithDomain:v31 code:2 userInfo:v29];
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      v18 = v17;
      v19 = [BMSiriMusicInferenceTrainingDependentSignals alloc];
      v43 = 0;
      v20 = [(BMSiriMusicInferenceTrainingDependentSignals *)v19 initWithJSONDictionary:v18 error:&v43];
      v21 = v43;
      if (v21)
      {
        v29 = v21;
        if (errorCopy)
        {
          v32 = v21;
          *errorCopy = v29;
        }

        self = selfCopy;
        v7 = v41;
        dictionaryCopy = v42;
        goto LABEL_34;
      }

      [v12 addObject:v20];
    }

    v14 = [v9 countByEnumeratingWithState:&v44 objects:v53 count:16];
    self = selfCopy;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v8 = v40;
  self = [(BMSiriMusic *)self initWithIndepSignals:v40 depSignals:v12];
  selfCopy2 = self;
  v7 = v41;
  dictionaryCopy = v42;
LABEL_36:

LABEL_37:
LABEL_38:

  v33 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriMusic *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_indepSignals)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriMusicInferenceTrainingIndependentSignals *)self->_indepSignals writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_depSignals;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v16 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{toCopy, v12}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v26.receiver = self;
  v26.super_class = BMSiriMusic;
  v5 = [(BMEventBase *)&v26 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v27 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v27 & 0x7F) << v8;
        if ((v27 & 0x80) == 0)
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
        break;
      }

      if ((v15 >> 3) == 2)
      {
        v27 = 0;
        v28 = 0;
        if (!PBReaderPlaceMark() || (v18 = [[BMSiriMusicInferenceTrainingDependentSignals alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_30:

          goto LABEL_31;
        }

        v19 = v18;
        [v6 addObject:v18];
        PBReaderRecallMark();
      }

      else if ((v15 >> 3) == 1)
      {
        v27 = 0;
        v28 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v16 = [[BMSiriMusicInferenceTrainingIndependentSignals alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_30;
        }

        indepSignals = v5->_indepSignals;
        v5->_indepSignals = v16;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_30;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v21 = [v6 copy];
  depSignals = v5->_depSignals;
  v5->_depSignals = v21;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_31:
    v24 = 0;
  }

  else
  {
LABEL_29:
    v24 = v5;
  }

  return v24;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  indepSignals = [(BMSiriMusic *)self indepSignals];
  depSignals = [(BMSiriMusic *)self depSignals];
  v6 = [v3 initWithFormat:@"BMSiriMusic with indepSignals: %@, depSignals: %@", indepSignals, depSignals];

  return v6;
}

- (BMSiriMusic)initWithIndepSignals:(id)signals depSignals:(id)depSignals
{
  signalsCopy = signals;
  depSignalsCopy = depSignals;
  v11.receiver = self;
  v11.super_class = BMSiriMusic;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_indepSignals, signals);
    objc_storeStrong(&v9->_depSignals, depSignals);
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"indepSignals" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"depSignals" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"indepSignals_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1061];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"depSignals_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1063_21675];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __22__BMSiriMusic_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _depSignalsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __22__BMSiriMusic_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 indepSignals];
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

    v8 = [[BMSiriMusic alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end