@interface BMMessagesSearchEventDisplayContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSearchEventDisplayContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMessagesSearchEventDisplayContext)initWithMillisecondsSinceSessionStarted:(id)started sessionId:(id)id queryId:(id)queryId visualComponent:(id)component started:(id)a7 ended:(id)ended;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_visualComponentJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesSearchEventDisplayContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMessagesSearchEventDisplayContext hasMillisecondsSinceSessionStarted](self, "hasMillisecondsSinceSessionStarted") || [v5 hasMillisecondsSinceSessionStarted])
    {
      if (![(BMMessagesSearchEventDisplayContext *)self hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_22;
      }

      if (![v5 hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_22;
      }

      millisecondsSinceSessionStarted = [(BMMessagesSearchEventDisplayContext *)self millisecondsSinceSessionStarted];
      if (millisecondsSinceSessionStarted != [v5 millisecondsSinceSessionStarted])
      {
        goto LABEL_22;
      }
    }

    sessionId = [(BMMessagesSearchEventDisplayContext *)self sessionId];
    sessionId2 = [v5 sessionId];
    v9 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMMessagesSearchEventDisplayContext *)self sessionId];
      sessionId4 = [v5 sessionId];
      v12 = [sessionId3 isEqual:sessionId4];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    queryId = [(BMMessagesSearchEventDisplayContext *)self queryId];
    queryId2 = [v5 queryId];
    v16 = queryId2;
    if (queryId == queryId2)
    {
    }

    else
    {
      queryId3 = [(BMMessagesSearchEventDisplayContext *)self queryId];
      queryId4 = [v5 queryId];
      v19 = [queryId3 isEqual:queryId4];

      if (!v19)
      {
        goto LABEL_22;
      }
    }

    visualComponent = [(BMMessagesSearchEventDisplayContext *)self visualComponent];
    visualComponent2 = [v5 visualComponent];
    v22 = visualComponent2;
    if (visualComponent == visualComponent2)
    {
    }

    else
    {
      visualComponent3 = [(BMMessagesSearchEventDisplayContext *)self visualComponent];
      visualComponent4 = [v5 visualComponent];
      v25 = [visualComponent3 isEqual:visualComponent4];

      if (!v25)
      {
        goto LABEL_22;
      }
    }

    started = [(BMMessagesSearchEventDisplayContext *)self started];
    started2 = [v5 started];
    v28 = started2;
    if (started == started2)
    {
    }

    else
    {
      started3 = [(BMMessagesSearchEventDisplayContext *)self started];
      started4 = [v5 started];
      v31 = [started3 isEqual:started4];

      if (!v31)
      {
LABEL_22:
        v13 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    ended = [(BMMessagesSearchEventDisplayContext *)self ended];
    ended2 = [v5 ended];
    if (ended == ended2)
    {
      v13 = 1;
    }

    else
    {
      ended3 = [(BMMessagesSearchEventDisplayContext *)self ended];
      ended4 = [v5 ended];
      v13 = [ended3 isEqual:ended4];
    }

    goto LABEL_23;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (id)jsonDictionary
{
  v25[6] = *MEMORY[0x1E69E9840];
  if ([(BMMessagesSearchEventDisplayContext *)self hasMillisecondsSinceSessionStarted])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventDisplayContext millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  }

  else
  {
    v3 = 0;
  }

  sessionId = [(BMMessagesSearchEventDisplayContext *)self sessionId];
  queryId = [(BMMessagesSearchEventDisplayContext *)self queryId];
  _visualComponentJSONArray = [(BMMessagesSearchEventDisplayContext *)self _visualComponentJSONArray];
  started = [(BMMessagesSearchEventDisplayContext *)self started];
  jsonDictionary = [started jsonDictionary];

  ended = [(BMMessagesSearchEventDisplayContext *)self ended];
  jsonDictionary2 = [ended jsonDictionary];

  v24[0] = @"millisecondsSinceSessionStarted";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v23 = v3;
  v25[0] = null;
  v24[1] = @"sessionId";
  null2 = sessionId;
  if (!sessionId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v25[1] = null2;
  v24[2] = @"queryId";
  null3 = queryId;
  if (!queryId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = null3;
  v24[3] = @"visualComponent";
  null4 = _visualComponentJSONArray;
  if (!_visualComponentJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = null4;
  v24[4] = @"started";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null5;
  v24[5] = @"ended";
  null6 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (jsonDictionary2)
  {
    if (jsonDictionary)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (jsonDictionary)
    {
LABEL_18:
      if (_visualComponentJSONArray)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (_visualComponentJSONArray)
  {
LABEL_19:
    if (queryId)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (sessionId)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!queryId)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (sessionId)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v23)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_visualComponentJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  visualComponent = [(BMMessagesSearchEventDisplayContext *)self visualComponent];
  v5 = [visualComponent countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(visualComponent);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [visualComponent countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMessagesSearchEventDisplayContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v104[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"millisecondsSinceSessionStarted"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v27 = dictionaryCopy;
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v67 = objc_opt_class();
        v29 = v28;
        dictionaryCopy = v27;
        errorCopy = [v29 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v67, @"millisecondsSinceSessionStarted"];
        v104[0] = errorCopy;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
        v32 = v26;
        v8 = v31;
        v33 = [v25 initWithDomain:v32 code:2 userInfo:v31];
        v7 = 0;
        v34 = 0;
        *error = v33;
        goto LABEL_85;
      }

      v7 = 0;
      v34 = 0;
      goto LABEL_86;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy = error;
      if (error)
      {
        v35 = v7;
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = v8;
        v38 = *MEMORY[0x1E698F240];
        v101 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
        v102 = v11;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v40 = v36;
        v7 = v35;
        v41 = v38;
        v8 = v37;
        v77 = v39;
        errorCopy = 0;
        v34 = 0;
        *error = [v40 initWithDomain:v41 code:2 userInfo:?];
        goto LABEL_84;
      }

      v34 = 0;
      goto LABEL_85;
    }

    v76 = v8;
  }

  else
  {
    v76 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"queryId"];
  v77 = v9;
  selfCopy = self;
  v74 = v8;
  v75 = v6;
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v99 = *MEMORY[0x1E696A578];
        v44 = v7;
        v45 = objc_alloc(MEMORY[0x1E696AEC0]);
        v68 = objc_opt_class();
        v46 = v45;
        v7 = v44;
        v12 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v68, @"queryId"];
        v100 = v12;
        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v11 = 0;
        v34 = 0;
        *error = [v42 initWithDomain:v43 code:2 userInfo:?];
        errorCopy = v76;
        goto LABEL_82;
      }

      v11 = 0;
      v34 = 0;
      errorCopy = v76;
      goto LABEL_84;
    }

    v72 = v7;
    v11 = v10;
  }

  else
  {
    v72 = v7;
    v11 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"visualComponent"];
  null = [MEMORY[0x1E695DFB0] null];
  v14 = [v12 isEqual:null];

  v71 = v11;
  if (v14)
  {
    v70 = dictionaryCopy;

    v12 = 0;
  }

  else
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = v72;
        if (error)
        {
          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v97 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"visualComponent"];
          v98 = v80;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v34 = 0;
          *error = [v56 initWithDomain:v57 code:2 userInfo:v24];
          errorCopy = v76;
          goto LABEL_81;
        }

        v34 = 0;
        errorCopy = v76;
        goto LABEL_83;
      }
    }

    v70 = dictionaryCopy;
  }

  v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v12 = v12;
  v15 = [v12 countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = v15;
  v17 = *v85;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v85 != v17)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v84 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy3 = error;
        if (error)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"visualComponent"];
          v95 = v20;
          v50 = MEMORY[0x1E695DF20];
          v51 = &v95;
          v52 = &v94;
LABEL_44:
          v53 = [v50 dictionaryWithObjects:v51 forKeys:v52 count:1];
          v54 = [v48 initWithDomain:v49 code:2 userInfo:v53];
          v34 = 0;
          *errorCopy3 = v54;
LABEL_48:
          v24 = v12;
          dictionaryCopy = v70;
          v7 = v72;
          goto LABEL_49;
        }

LABEL_53:
        v34 = 0;
        v24 = v12;
        dictionaryCopy = v70;
        v7 = v72;
        goto LABEL_54;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy3 = error;
        if (error)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponent"];
          v93 = v20;
          v50 = MEMORY[0x1E695DF20];
          v51 = &v93;
          v52 = &v92;
          goto LABEL_44;
        }

        goto LABEL_53;
      }

      v20 = v19;
      v21 = [BMMessagesSearchEventVisualComponent alloc];
      v83 = 0;
      v22 = [(BMMessagesSearchEventVisualComponent *)v21 initWithJSONDictionary:v20 error:&v83];
      v23 = v83;
      if (v23)
      {
        v53 = v23;
        if (error)
        {
          v55 = v23;
          *error = v53;
        }

        v34 = 0;
        goto LABEL_48;
      }

      [v80 addObject:v22];
    }

    v16 = [v12 countByEnumeratingWithState:&v84 objects:v96 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_27:

  dictionaryCopy = v70;
  v24 = [v70 objectForKeyedSubscript:@"started"];
  if (!v24)
  {
    v20 = 0;
    v7 = v72;
    goto LABEL_56;
  }

  objc_opt_class();
  v7 = v72;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v24;
      v82 = 0;
      v20 = [[BMMessagesSearchEventDisplayStarted alloc] initWithJSONDictionary:v53 error:&v82];
      v59 = v82;
      if (!v59)
      {

        goto LABEL_56;
      }

      if (error)
      {
        v59 = v59;
        *error = v59;
      }

      v34 = 0;
      v24 = v53;
      goto LABEL_49;
    }

    if (error)
    {
      v62 = objc_alloc(MEMORY[0x1E696ABC0]);
      v63 = *MEMORY[0x1E698F240];
      v90 = *MEMORY[0x1E696A578];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"started"];
      v91 = v20;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v64 = [v62 initWithDomain:v63 code:2 userInfo:v53];
      v34 = 0;
      *error = v64;
LABEL_49:
      errorCopy = v76;
LABEL_50:
      v11 = v71;
      goto LABEL_80;
    }

    v34 = 0;
LABEL_54:
    errorCopy = v76;
    v11 = v71;
    goto LABEL_81;
  }

  v20 = 0;
LABEL_56:
  v53 = [v70 objectForKeyedSubscript:@"ended"];
  if (!v53 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v58 = 0;
    errorCopy = v76;
    goto LABEL_59;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    errorCopy = v76;
    if (error)
    {
      v73 = objc_alloc(MEMORY[0x1E696ABC0]);
      v69 = *MEMORY[0x1E698F240];
      v88 = *MEMORY[0x1E696A578];
      v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"ended"];
      v89 = v58;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      *error = [v73 initWithDomain:v69 code:2 userInfo:v60];
      goto LABEL_78;
    }

    v34 = 0;
    goto LABEL_50;
  }

  v60 = v53;
  v81 = 0;
  v58 = [[BMMessagesSearchEventDisplayEnded alloc] initWithJSONDictionary:v60 error:&v81];
  v61 = v81;
  errorCopy = v76;
  if (v61)
  {
    if (error)
    {
      v61 = v61;
      *error = v61;
    }

LABEL_78:
    v34 = 0;
  }

  else
  {

LABEL_59:
    v34 = [(BMMessagesSearchEventDisplayContext *)selfCopy initWithMillisecondsSinceSessionStarted:v7 sessionId:errorCopy queryId:v11 visualComponent:v80 started:v20 ended:v58];
    selfCopy = v34;
  }

LABEL_80:
LABEL_81:

LABEL_82:
  v8 = v74;
LABEL_83:

  self = selfCopy;
  v6 = v75;
LABEL_84:

LABEL_85:
LABEL_86:

  v65 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventDisplayContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasMillisecondsSinceSessionStarted)
  {
    millisecondsSinceSessionStarted = self->_millisecondsSinceSessionStarted;
    PBDataWriterWriteUint64Field();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_queryId)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_visualComponent;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_started)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventDisplayStarted *)self->_started writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_ended)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventDisplayEnded *)self->_ended writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMMessagesSearchEventDisplayContext;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_54;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v39 & 0x7F) << v8;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_54;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      if (v16 != 4)
      {
        if (v16 == 5)
        {
          v39 = 0;
          v40 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_56;
          }

          v19 = [[BMMessagesSearchEventDisplayStarted alloc] initByReadFrom:fromCopy];
          if (!v19)
          {
            goto LABEL_56;
          }

          v20 = 56;
          goto LABEL_48;
        }

        if (v16 == 6)
        {
          v39 = 0;
          v40 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_56;
          }

          v19 = [[BMMessagesSearchEventDisplayEnded alloc] initByReadFrom:fromCopy];
          if (!v19)
          {
            goto LABEL_56;
          }

          v20 = 64;
LABEL_48:
          v31 = *(&v5->super.super.isa + v20);
          *(&v5->super.super.isa + v20) = v19;

          PBReaderRecallMark();
          goto LABEL_53;
        }

LABEL_41:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      v39 = 0;
      v40 = 0;
      if (!PBReaderPlaceMark() || (v28 = [[BMMessagesSearchEventVisualComponent alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_56:

        goto LABEL_57;
      }

      v29 = v28;
      [v6 addObject:v28];
      PBReaderRecallMark();

LABEL_53:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_54;
      }
    }

    switch(v16)
    {
      case 1:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v5->_hasMillisecondsSinceSessionStarted = 1;
        while (1)
        {
          LOBYTE(v39) = 0;
          v24 = [fromCopy position] + 1;
          if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v23 |= (v39 & 0x7F) << v21;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v14 = v22++ >= 9;
          if (v14)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([fromCopy hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        v5->_millisecondsSinceSessionStarted = v27;
        goto LABEL_53;
      case 2:
        v17 = PBReaderReadString();
        v18 = 32;
        goto LABEL_44;
      case 3:
        v17 = PBReaderReadString();
        v18 = 40;
LABEL_44:
        v30 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        goto LABEL_53;
    }

    goto LABEL_41;
  }

LABEL_54:
  v33 = [v6 copy];
  visualComponent = v5->_visualComponent;
  v5->_visualComponent = v33;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_57:
    v36 = 0;
  }

  else
  {
LABEL_55:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventDisplayContext millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  sessionId = [(BMMessagesSearchEventDisplayContext *)self sessionId];
  queryId = [(BMMessagesSearchEventDisplayContext *)self queryId];
  visualComponent = [(BMMessagesSearchEventDisplayContext *)self visualComponent];
  started = [(BMMessagesSearchEventDisplayContext *)self started];
  ended = [(BMMessagesSearchEventDisplayContext *)self ended];
  v10 = [v3 initWithFormat:@"BMMessagesSearchEventDisplayContext with millisecondsSinceSessionStarted: %@, sessionId: %@, queryId: %@, visualComponent: %@, started: %@, ended: %@", v4, sessionId, queryId, visualComponent, started, ended];

  return v10;
}

- (BMMessagesSearchEventDisplayContext)initWithMillisecondsSinceSessionStarted:(id)started sessionId:(id)id queryId:(id)queryId visualComponent:(id)component started:(id)a7 ended:(id)ended
{
  startedCopy = started;
  idCopy = id;
  queryIdCopy = queryId;
  componentCopy = component;
  v16 = a7;
  endedCopy = ended;
  v23.receiver = self;
  v23.super_class = BMMessagesSearchEventDisplayContext;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startedCopy)
    {
      v18->_hasMillisecondsSinceSessionStarted = 1;
      unsignedLongLongValue = [startedCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v18->_hasMillisecondsSinceSessionStarted = 0;
    }

    v18->_millisecondsSinceSessionStarted = unsignedLongLongValue;
    objc_storeStrong(&v18->_sessionId, id);
    objc_storeStrong(&v18->_queryId, queryId);
    objc_storeStrong(&v18->_visualComponent, component);
    objc_storeStrong(&v18->_started, a7);
    objc_storeStrong(&v18->_ended, ended);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"millisecondsSinceSessionStarted" number:1 type:5 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryId" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponent" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"started" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ended" number:6 type:14 subMessageClass:objc_opt_class()];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"millisecondsSinceSessionStarted" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_494];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"started_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_496];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"ended_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_498];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __46__BMMessagesSearchEventDisplayContext_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 ended];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __46__BMMessagesSearchEventDisplayContext_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 started];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __46__BMMessagesSearchEventDisplayContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _visualComponentJSONArray];
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

    v8 = [[BMMessagesSearchEventDisplayContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end