@interface BMSiriCompanionContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriCompanionContext)initWithAppSignals:(id)signals;
- (BMSiriCompanionContext)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_appSignalsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriCompanionContext

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"appSignals_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_159];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    appSignals = [(BMSiriCompanionContext *)self appSignals];
    appSignals2 = [v5 appSignals];
    if (appSignals == appSignals2)
    {
      v10 = 1;
    }

    else
    {
      appSignals3 = [(BMSiriCompanionContext *)self appSignals];
      appSignals4 = [v5 appSignals];
      v10 = [appSignals3 isEqual:appSignals4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v8[1] = *MEMORY[0x1E69E9840];
  _appSignalsJSONArray = [(BMSiriCompanionContext *)self _appSignalsJSONArray];
  v7 = @"appSignals";
  null = _appSignalsJSONArray;
  if (!_appSignalsJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!_appSignalsJSONArray)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_appSignalsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  appSignals = [(BMSiriCompanionContext *)self appSignals];
  v5 = [appSignals countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(appSignals);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [appSignals countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriCompanionContext)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = [dictionary objectForKeyedSubscript:@"appSignals"];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {
    v34 = p_isa;

    v6 = 0;
LABEL_6:
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v6 = v6;
    v10 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    v12 = *v37;
    selfCopy = self;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v37 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(*(&v36 + 1) + 8 * v13);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = selfCopy;
        v19 = v34;
        if (!v34)
        {
          goto LABEL_26;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"appSignals"];
        v41 = v15;
        v22 = MEMORY[0x1E695DF20];
        v23 = &v41;
        v24 = &v40;
        goto LABEL_21;
      }

      v15 = v14;
      v16 = [BMSiriCompanionContextAppMetadata alloc];
      v35 = 0;
      v17 = [(BMSiriCompanionContextAppMetadata *)v16 initWithJSONDictionary:v15 error:&v35];
      v18 = v35;
      if (v18)
      {
        v25 = v18;
        if (v34)
        {
          v26 = v18;
          *v34 = v25;
        }

        self = selfCopy;
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      [v9 addObject:v17];

      if (v11 == ++v13)
      {
        v11 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
        self = selfCopy;
        if (v11)
        {
          goto LABEL_8;
        }

LABEL_16:

        self = [(BMSiriCompanionContext *)self initWithAppSignals:v9];
        p_isa = &self->super.super.isa;
LABEL_28:

        goto LABEL_29;
      }
    }

    self = selfCopy;
    v19 = v34;
    if (!v34)
    {
      goto LABEL_26;
    }

    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E698F240];
    v42 = *MEMORY[0x1E696A578];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"appSignals"];
    v43 = v15;
    v22 = MEMORY[0x1E695DF20];
    v23 = &v43;
    v24 = &v42;
LABEL_21:
    v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    *v19 = [v20 initWithDomain:v21 code:2 userInfo:v25];
    goto LABEL_25;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v34 = p_isa;
    goto LABEL_6;
  }

  if (p_isa)
  {
    v29 = objc_alloc(MEMORY[0x1E696ABC0]);
    v30 = *MEMORY[0x1E698F240];
    v45 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"appSignals"];
    v46[0] = v9;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v32 = v31 = self;
    *p_isa = [v29 initWithDomain:v30 code:2 userInfo:v32];

    self = v31;
LABEL_27:
    p_isa = 0;
    goto LABEL_28;
  }

LABEL_29:

  v27 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriCompanionContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_appSignals;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMSiriCompanionContext;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_25;
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
        LOBYTE(v25[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v25[0] & 0x7F) << v8;
        if ((v25[0] & 0x80) == 0)
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

      if ((v15 >> 3) == 1)
      {
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark() || (v16 = [[BMSiriCompanionContextAppMetadata alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_26:

          goto LABEL_27;
        }

        v17 = v16;
        [v6 addObject:v16];
        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_26;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v19 = [v6 copy];
  appSignals = v5->_appSignals;
  v5->_appSignals = v19;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_27:
    v22 = 0;
  }

  else
  {
LABEL_25:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  appSignals = [(BMSiriCompanionContext *)self appSignals];
  v5 = [v3 initWithFormat:@"BMSiriCompanionContext with appSignals: %@", appSignals];

  return v5;
}

- (BMSiriCompanionContext)initWithAppSignals:(id)signals
{
  signalsCopy = signals;
  v8.receiver = self;
  v8.super_class = BMSiriCompanionContext;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_appSignals, signals);
  }

  return v6;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appSignals" number:1 type:14 subMessageClass:objc_opt_class()];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id __33__BMSiriCompanionContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _appSignalsJSONArray];
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

    v8 = [[BMSiriCompanionContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end