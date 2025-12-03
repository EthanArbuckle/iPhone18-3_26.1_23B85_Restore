@interface BMVisualIntelligenceCameraLookupEventDisplayContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventDisplayContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMVisualIntelligenceCameraLookupEventDisplayContext)initWithVisualLookupSessionId:(id)id pillSessionId:(id)sessionId visualComponents:(id)components totalResultsShown:(id)shown started:(int)started ended:(int)ended;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_visualComponentsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMVisualIntelligenceCameraLookupEventDisplayContext

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualLookupSessionId];
    visualLookupSessionId2 = [v5 visualLookupSessionId];
    v8 = visualLookupSessionId2;
    if (visualLookupSessionId == visualLookupSessionId2)
    {
    }

    else
    {
      visualLookupSessionId3 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualLookupSessionId];
      visualLookupSessionId4 = [v5 visualLookupSessionId];
      v11 = [visualLookupSessionId3 isEqual:visualLookupSessionId4];

      if (!v11)
      {
        goto LABEL_22;
      }
    }

    pillSessionId = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self pillSessionId];
    pillSessionId2 = [v5 pillSessionId];
    v15 = pillSessionId2;
    if (pillSessionId == pillSessionId2)
    {
    }

    else
    {
      pillSessionId3 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self pillSessionId];
      pillSessionId4 = [v5 pillSessionId];
      v18 = [pillSessionId3 isEqual:pillSessionId4];

      if (!v18)
      {
        goto LABEL_22;
      }
    }

    visualComponents = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualComponents];
    visualComponents2 = [v5 visualComponents];
    v21 = visualComponents2;
    if (visualComponents == visualComponents2)
    {
    }

    else
    {
      visualComponents3 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualComponents];
      visualComponents4 = [v5 visualComponents];
      v24 = [visualComponents3 isEqual:visualComponents4];

      if (!v24)
      {
        goto LABEL_22;
      }
    }

    if (!-[BMVisualIntelligenceCameraLookupEventDisplayContext hasTotalResultsShown](self, "hasTotalResultsShown") && ![v5 hasTotalResultsShown] || -[BMVisualIntelligenceCameraLookupEventDisplayContext hasTotalResultsShown](self, "hasTotalResultsShown") && objc_msgSend(v5, "hasTotalResultsShown") && (v25 = -[BMVisualIntelligenceCameraLookupEventDisplayContext totalResultsShown](self, "totalResultsShown"), v25 == objc_msgSend(v5, "totalResultsShown")))
    {
      started = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self started];
      if (started == [v5 started])
      {
        ended = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self ended];
        v12 = ended == [v5 ended];
LABEL_23:

        goto LABEL_24;
      }
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualLookupSessionId];
  pillSessionId = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self pillSessionId];
  _visualComponentsJSONArray = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self _visualComponentsJSONArray];
  if ([(BMVisualIntelligenceCameraLookupEventDisplayContext *)self hasTotalResultsShown])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventDisplayContext totalResultsShown](self, "totalResultsShown")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventDisplayContext started](self, "started")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventDisplayContext ended](self, "ended")}];
  v22[0] = @"visualLookupSessionId";
  null = visualLookupSessionId;
  if (!visualLookupSessionId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v21 = visualLookupSessionId;
  v23[0] = null;
  v22[1] = @"pillSessionId";
  null2 = pillSessionId;
  if (!pillSessionId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"visualComponents";
  null3 = _visualComponentsJSONArray;
  if (!_visualComponentsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v22[3] = @"totalResultsShown";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"started";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"ended";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (v6)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (v6)
  {
LABEL_19:
    if (_visualComponentsJSONArray)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (pillSessionId)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!_visualComponentsJSONArray)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (pillSessionId)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v21)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_visualComponentsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  visualComponents = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualComponents];
  v5 = [visualComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(visualComponents);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [visualComponents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMVisualIntelligenceCameraLookupEventDisplayContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v95[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"visualLookupSessionId"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v94 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v60 = objc_opt_class();
        v26 = v25;
        self = selfCopy;
        errorCopy = [v26 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v60, @"visualLookupSessionId"];
        v95[0] = errorCopy;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:&v94 count:1];
        v29 = v22;
        v8 = v28;
        v30 = 0;
        selfCopy4 = 0;
        *error = [v29 initWithDomain:v23 code:2 userInfo:v28];
        goto LABEL_78;
      }

      v30 = 0;
      selfCopy4 = 0;
      goto LABEL_79;
    }

    v69 = v6;
  }

  else
  {
    v69 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"pillSessionId"];
  v71 = v7;
  v68 = v6;
  if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      errorCopy = error;
      if (error)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v92 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"pillSessionId"];
        v93 = v9;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v35 = v32;
        v8 = v71;
        v73 = v34;
        errorCopy = 0;
        selfCopy4 = 0;
        *error = [v35 initWithDomain:v33 code:2 userInfo:?];
        v30 = v69;

        goto LABEL_77;
      }

      selfCopy4 = 0;
      v30 = v69;
      goto LABEL_78;
    }

    v67 = v8;
  }

  else
  {
    v67 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"visualComponents"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

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
        if (!error)
        {
          selfCopy4 = 0;
          v30 = v69;
          v8 = v71;
          errorCopy = v67;
          goto LABEL_77;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v90 = *MEMORY[0x1E696A578];
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"visualComponents"];
        v91 = v72;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        selfCopy4 = 0;
        *error = [v44 initWithDomain:v45 code:2 userInfo:v21];
LABEL_44:
        v30 = v69;
        v8 = v71;
        errorCopy = v67;
        goto LABEL_75;
      }
    }

    selfCopy3 = self;
  }

  v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = *v76;
  v64 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v76 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v75 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy3 = error;
        if (error)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v87 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"visualComponents"];
          v88 = v17;
          v39 = MEMORY[0x1E695DF20];
          v40 = &v88;
          v41 = &v87;
LABEL_37:
          v42 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
          selfCopy4 = 0;
          *errorCopy3 = [v37 initWithDomain:v38 code:2 userInfo:v42];
          v21 = v9;
          dictionaryCopy = v64;
          self = selfCopy3;
          v30 = v69;
          v8 = v71;
          errorCopy = v67;
          goto LABEL_73;
        }

        goto LABEL_43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy3 = error;
        if (error)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v85 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponents"];
          v86 = v17;
          v39 = MEMORY[0x1E695DF20];
          v40 = &v86;
          v41 = &v85;
          goto LABEL_37;
        }

LABEL_43:
        selfCopy4 = 0;
        v21 = v9;
        dictionaryCopy = v64;
        self = selfCopy3;
        goto LABEL_44;
      }

      v17 = v16;
      v18 = [BMVisualIntelligenceCameraLookupEventVisualComponent alloc];
      v74 = 0;
      v19 = [(BMVisualIntelligenceCameraLookupEventVisualComponent *)v18 initWithJSONDictionary:v17 error:&v74];
      v20 = v74;
      if (v20)
      {
        v42 = v20;
        errorCopy = v67;
        if (error)
        {
          v43 = v20;
          *error = v42;
        }

        selfCopy4 = 0;
        v21 = v9;
        dictionaryCopy = v64;
        self = selfCopy3;
        v30 = v69;
        goto LABEL_72;
      }

      [v72 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v75 objects:v89 count:16];
    dictionaryCopy = v64;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v17 = [dictionaryCopy objectForKeyedSubscript:@"totalResultsShown"];
  if (!v17)
  {
    v21 = 0;
    self = selfCopy3;
    goto LABEL_48;
  }

  objc_opt_class();
  self = selfCopy3;
  v8 = v71;
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    goto LABEL_48;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v83 = *MEMORY[0x1E696A578];
      v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalResultsShown"];
      v84 = v42;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v49 = [v47 initWithDomain:v48 code:2 userInfo:?];
      v21 = 0;
      selfCopy4 = 0;
      *error = v49;
      goto LABEL_88;
    }

    v21 = 0;
    selfCopy4 = 0;
    v30 = v69;
    errorCopy = v67;
    goto LABEL_74;
  }

  v21 = v17;
LABEL_48:
  v42 = [dictionaryCopy objectForKeyedSubscript:@"started"];
  v66 = v21;
  v63 = v42;
  if (!v42)
  {
LABEL_61:
    v50 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v50;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v61 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ended"];
            v80 = v58;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            *error = [v62 initWithDomain:v61 code:2 userInfo:v59];
          }

          v51 = 0;
          selfCopy4 = 0;
LABEL_85:
          v30 = v69;
          errorCopy = v67;
          goto LABEL_70;
        }

        v52 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventDisplayEndedReasonFromString(v50)];
      }

      v51 = v52;
    }

    else
    {
      v51 = 0;
    }

    v30 = v69;
    errorCopy = v67;
    self = -[BMVisualIntelligenceCameraLookupEventDisplayContext initWithVisualLookupSessionId:pillSessionId:visualComponents:totalResultsShown:started:ended:](self, "initWithVisualLookupSessionId:pillSessionId:visualComponents:totalResultsShown:started:ended:", v69, v67, v72, v66, [v42 intValue], objc_msgSend(v51, "intValue"));
    selfCopy4 = self;
LABEL_70:

    v21 = v66;
    goto LABEL_71;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = 0;
    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v42;
LABEL_60:
    v42 = v46;
    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventDisplayStartedReasonFromString(v42)];
    goto LABEL_60;
  }

  if (error)
  {
    v55 = objc_alloc(MEMORY[0x1E696ABC0]);
    v56 = *MEMORY[0x1E698F240];
    v81 = *MEMORY[0x1E696A578];
    v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"started"];
    v82 = v51;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v57 = [v55 initWithDomain:v56 code:2 userInfo:v50];
    v42 = 0;
    selfCopy4 = 0;
    *error = v57;
    goto LABEL_85;
  }

  v42 = 0;
  selfCopy4 = 0;
LABEL_88:
  v30 = v69;
  errorCopy = v67;
LABEL_71:

LABEL_72:
  v8 = v71;
LABEL_73:

LABEL_74:
LABEL_75:

LABEL_77:
  v6 = v68;
LABEL_78:

LABEL_79:
  v53 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_visualLookupSessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pillSessionId)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_visualComponents;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if (self->_hasTotalResultsShown)
  {
    totalResultsShown = self->_totalResultsShown;
    PBDataWriterWriteInt32Field();
  }

  started = self->_started;
  PBDataWriterWriteUint32Field();
  ended = self->_ended;
  PBDataWriterWriteUint32Field();

  v14 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v48.receiver = self;
  v48.super_class = BMVisualIntelligenceCameraLookupEventDisplayContext;
  v5 = [(BMEventBase *)&v48 init];
  if (!v5)
  {
    goto LABEL_76;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_74;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v49[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v49 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v49[0] & 0x7F) << v8;
        if ((v49[0] & 0x80) == 0)
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
        goto LABEL_74;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 3)
      {
        break;
      }

      if (v16 == 1)
      {
        v26 = PBReaderReadString();
        v27 = 40;
LABEL_50:
        v35 = *(&v5->super.super.isa + v27);
        *(&v5->super.super.isa + v27) = v26;

        goto LABEL_73;
      }

      if (v16 == 2)
      {
        v26 = PBReaderReadString();
        v27 = 48;
        goto LABEL_50;
      }

      if (v16 != 3)
      {
        goto LABEL_47;
      }

      v49[0] = 0;
      v49[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMVisualIntelligenceCameraLookupEventVisualComponent alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_78:

        goto LABEL_75;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_73:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_74;
      }
    }

    switch(v16)
    {
      case 4:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v5->_hasTotalResultsShown = 1;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v31 = [fromCopy position] + 1;
          if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v49 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v30 |= (v49[0] & 0x7F) << v28;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v14 = v29++ >= 9;
          if (v14)
          {
            v34 = 0;
            goto LABEL_63;
          }
        }

        if ([fromCopy hasError])
        {
          v34 = 0;
        }

        else
        {
          v34 = v30;
        }

LABEL_63:
        v5->_totalResultsShown = v34;
        goto LABEL_73;
      case 5:
        v36 = 0;
        v37 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v38 = [fromCopy position] + 1;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v49 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v49[0] & 0x7F) << v36;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v25 = v37++ > 8;
          if (v25)
          {
            goto LABEL_70;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v21 > 3)
        {
LABEL_70:
          LODWORD(v21) = 0;
        }

        v41 = 28;
        goto LABEL_72;
      case 6:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v49 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v49[0] & 0x7F) << v19;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v25 = v20++ > 8;
          if (v25)
          {
            goto LABEL_66;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v21 > 3)
        {
LABEL_66:
          LODWORD(v21) = 0;
        }

        v41 = 32;
LABEL_72:
        *(&v5->super.super.isa + v41) = v21;
        goto LABEL_73;
    }

LABEL_47:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_73;
  }

LABEL_74:
  v43 = [v6 copy];
  visualComponents = v5->_visualComponents;
  v5->_visualComponents = v43;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_75:
    v46 = 0;
  }

  else
  {
LABEL_76:
    v46 = v5;
  }

  return v46;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  visualLookupSessionId = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualLookupSessionId];
  pillSessionId = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self pillSessionId];
  visualComponents = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualComponents];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventDisplayContext totalResultsShown](self, "totalResultsShown")}];
  v8 = BMVisualIntelligenceCameraLookupEventDisplayStartedReasonAsString([(BMVisualIntelligenceCameraLookupEventDisplayContext *)self started]);
  v9 = BMVisualIntelligenceCameraLookupEventDisplayEndedReasonAsString([(BMVisualIntelligenceCameraLookupEventDisplayContext *)self ended]);
  v10 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventDisplayContext with visualLookupSessionId: %@, pillSessionId: %@, visualComponents: %@, totalResultsShown: %@, started: %@, ended: %@", visualLookupSessionId, pillSessionId, visualComponents, v7, v8, v9];

  return v10;
}

- (BMVisualIntelligenceCameraLookupEventDisplayContext)initWithVisualLookupSessionId:(id)id pillSessionId:(id)sessionId visualComponents:(id)components totalResultsShown:(id)shown started:(int)started ended:(int)ended
{
  idCopy = id;
  sessionIdCopy = sessionId;
  componentsCopy = components;
  shownCopy = shown;
  v22.receiver = self;
  v22.super_class = BMVisualIntelligenceCameraLookupEventDisplayContext;
  v19 = [(BMEventBase *)&v22 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_visualLookupSessionId, id);
    objc_storeStrong(&v19->_pillSessionId, sessionId);
    objc_storeStrong(&v19->_visualComponents, components);
    if (shownCopy)
    {
      v19->_hasTotalResultsShown = 1;
      intValue = [shownCopy intValue];
    }

    else
    {
      v19->_hasTotalResultsShown = 0;
      intValue = -1;
    }

    v19->_totalResultsShown = intValue;
    v19->_started = started;
    v19->_ended = ended;
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualLookupSessionId" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pillSessionId" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponents" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalResultsShown" number:4 type:2 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"started" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ended" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visualLookupSessionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pillSessionId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_394_110309];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalResultsShown" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"started" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ended" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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

id __62__BMVisualIntelligenceCameraLookupEventDisplayContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _visualComponentsJSONArray];
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

    v8 = [[BMVisualIntelligenceCameraLookupEventDisplayContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end