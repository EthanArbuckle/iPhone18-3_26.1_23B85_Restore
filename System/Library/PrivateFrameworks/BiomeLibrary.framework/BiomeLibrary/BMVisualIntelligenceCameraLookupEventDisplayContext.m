@interface BMVisualIntelligenceCameraLookupEventDisplayContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventDisplayContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMVisualIntelligenceCameraLookupEventDisplayContext)initWithVisualLookupSessionId:(id)a3 pillSessionId:(id)a4 visualComponents:(id)a5 totalResultsShown:(id)a6 started:(int)a7 ended:(int)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_visualComponentsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMVisualIntelligenceCameraLookupEventDisplayContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualLookupSessionId];
    v7 = [v5 visualLookupSessionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualLookupSessionId];
      v10 = [v5 visualLookupSessionId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_22;
      }
    }

    v13 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self pillSessionId];
    v14 = [v5 pillSessionId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self pillSessionId];
      v17 = [v5 pillSessionId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_22;
      }
    }

    v19 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualComponents];
    v20 = [v5 visualComponents];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualComponents];
      v23 = [v5 visualComponents];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_22;
      }
    }

    if (!-[BMVisualIntelligenceCameraLookupEventDisplayContext hasTotalResultsShown](self, "hasTotalResultsShown") && ![v5 hasTotalResultsShown] || -[BMVisualIntelligenceCameraLookupEventDisplayContext hasTotalResultsShown](self, "hasTotalResultsShown") && objc_msgSend(v5, "hasTotalResultsShown") && (v25 = -[BMVisualIntelligenceCameraLookupEventDisplayContext totalResultsShown](self, "totalResultsShown"), v25 == objc_msgSend(v5, "totalResultsShown")))
    {
      v26 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self started];
      if (v26 == [v5 started])
      {
        v27 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self ended];
        v12 = v27 == [v5 ended];
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
  v3 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualLookupSessionId];
  v4 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self pillSessionId];
  v5 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self _visualComponentsJSONArray];
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
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v21 = v3;
  v23[0] = v9;
  v22[1] = @"pillSessionId";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v23[1] = v10;
  v22[2] = @"visualComponents";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v11;
  v22[3] = @"totalResultsShown";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"started";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"ended";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
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
    if (v5)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (v4)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v4)
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
  v4 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualComponents];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMVisualIntelligenceCameraLookupEventDisplayContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v95[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"visualLookupSessionId"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v94 = *MEMORY[0x1E696A578];
        v24 = self;
        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v60 = objc_opt_class();
        v26 = v25;
        self = v24;
        v27 = [v26 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v60, @"visualLookupSessionId"];
        v95[0] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:&v94 count:1];
        v29 = v22;
        v8 = v28;
        v30 = 0;
        v31 = 0;
        *a4 = [v29 initWithDomain:v23 code:2 userInfo:v28];
        goto LABEL_78;
      }

      v30 = 0;
      v31 = 0;
      goto LABEL_79;
    }

    v69 = v6;
  }

  else
  {
    v69 = 0;
  }

  v7 = [v5 objectForKeyedSubscript:@"pillSessionId"];
  v71 = v7;
  v68 = v6;
  if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = a4;
      if (a4)
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
        v27 = 0;
        v31 = 0;
        *a4 = [v35 initWithDomain:v33 code:2 userInfo:?];
        v30 = v69;

        goto LABEL_77;
      }

      v31 = 0;
      v30 = v69;
      goto LABEL_78;
    }

    v67 = v8;
  }

  else
  {
    v67 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"visualComponents"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v65 = self;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v31 = 0;
          v30 = v69;
          v8 = v71;
          v27 = v67;
          goto LABEL_77;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v90 = *MEMORY[0x1E696A578];
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"visualComponents"];
        v91 = v72;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v31 = 0;
        *a4 = [v44 initWithDomain:v45 code:2 userInfo:v21];
LABEL_44:
        v30 = v69;
        v8 = v71;
        v27 = v67;
        goto LABEL_75;
      }
    }

    v65 = self;
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
  v64 = v5;
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
        v36 = a4;
        if (a4)
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
          v31 = 0;
          *v36 = [v37 initWithDomain:v38 code:2 userInfo:v42];
          v21 = v9;
          v5 = v64;
          self = v65;
          v30 = v69;
          v8 = v71;
          v27 = v67;
          goto LABEL_73;
        }

        goto LABEL_43;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v36 = a4;
        if (a4)
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
        v31 = 0;
        v21 = v9;
        v5 = v64;
        self = v65;
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
        v27 = v67;
        if (a4)
        {
          v43 = v20;
          *a4 = v42;
        }

        v31 = 0;
        v21 = v9;
        v5 = v64;
        self = v65;
        v30 = v69;
        goto LABEL_72;
      }

      [v72 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v75 objects:v89 count:16];
    v5 = v64;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v17 = [v5 objectForKeyedSubscript:@"totalResultsShown"];
  if (!v17)
  {
    v21 = 0;
    self = v65;
    goto LABEL_48;
  }

  objc_opt_class();
  self = v65;
  v8 = v71;
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    goto LABEL_48;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v83 = *MEMORY[0x1E696A578];
      v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalResultsShown"];
      v84 = v42;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v49 = [v47 initWithDomain:v48 code:2 userInfo:?];
      v21 = 0;
      v31 = 0;
      *a4 = v49;
      goto LABEL_88;
    }

    v21 = 0;
    v31 = 0;
    v30 = v69;
    v27 = v67;
    goto LABEL_74;
  }

  v21 = v17;
LABEL_48:
  v42 = [v5 objectForKeyedSubscript:@"started"];
  v66 = v21;
  v63 = v42;
  if (!v42)
  {
LABEL_61:
    v50 = [v5 objectForKeyedSubscript:@"ended"];
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
          if (a4)
          {
            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v61 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ended"];
            v80 = v58;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            *a4 = [v62 initWithDomain:v61 code:2 userInfo:v59];
          }

          v51 = 0;
          v31 = 0;
LABEL_85:
          v30 = v69;
          v27 = v67;
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
    v27 = v67;
    self = -[BMVisualIntelligenceCameraLookupEventDisplayContext initWithVisualLookupSessionId:pillSessionId:visualComponents:totalResultsShown:started:ended:](self, "initWithVisualLookupSessionId:pillSessionId:visualComponents:totalResultsShown:started:ended:", v69, v67, v72, v66, [v42 intValue], objc_msgSend(v51, "intValue"));
    v31 = self;
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

  if (a4)
  {
    v55 = objc_alloc(MEMORY[0x1E696ABC0]);
    v56 = *MEMORY[0x1E698F240];
    v81 = *MEMORY[0x1E696A578];
    v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"started"];
    v82 = v51;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v57 = [v55 initWithDomain:v56 code:2 userInfo:v50];
    v42 = 0;
    v31 = 0;
    *a4 = v57;
    goto LABEL_85;
  }

  v42 = 0;
  v31 = 0;
LABEL_88:
  v30 = v69;
  v27 = v67;
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
  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        [v10 writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = BMVisualIntelligenceCameraLookupEventDisplayContext;
  v5 = [(BMEventBase *)&v48 init];
  if (!v5)
  {
    goto LABEL_76;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_74;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v49[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v49 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
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
      if (!PBReaderPlaceMark() || (v17 = [[BMVisualIntelligenceCameraLookupEventVisualComponent alloc] initByReadFrom:v4]) == 0)
      {
LABEL_78:

        goto LABEL_75;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_73:
      v42 = [v4 position];
      if (v42 >= [v4 length])
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
          v31 = [v4 position] + 1;
          if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
          {
            v33 = [v4 data];
            [v33 getBytes:v49 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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
          v38 = [v4 position] + 1;
          if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
          {
            v40 = [v4 data];
            [v40 getBytes:v49 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v21 > 3)
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
          v22 = [v4 position] + 1;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:v49 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v21 > 3)
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

  v45 = [v4 hasError];
  if (v45)
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
  v4 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualLookupSessionId];
  v5 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self pillSessionId];
  v6 = [(BMVisualIntelligenceCameraLookupEventDisplayContext *)self visualComponents];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventDisplayContext totalResultsShown](self, "totalResultsShown")}];
  v8 = BMVisualIntelligenceCameraLookupEventDisplayStartedReasonAsString([(BMVisualIntelligenceCameraLookupEventDisplayContext *)self started]);
  v9 = BMVisualIntelligenceCameraLookupEventDisplayEndedReasonAsString([(BMVisualIntelligenceCameraLookupEventDisplayContext *)self ended]);
  v10 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventDisplayContext with visualLookupSessionId: %@, pillSessionId: %@, visualComponents: %@, totalResultsShown: %@, started: %@, ended: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMVisualIntelligenceCameraLookupEventDisplayContext)initWithVisualLookupSessionId:(id)a3 pillSessionId:(id)a4 visualComponents:(id)a5 totalResultsShown:(id)a6 started:(int)a7 ended:(int)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v22.receiver = self;
  v22.super_class = BMVisualIntelligenceCameraLookupEventDisplayContext;
  v19 = [(BMEventBase *)&v22 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_visualLookupSessionId, a3);
    objc_storeStrong(&v19->_pillSessionId, a4);
    objc_storeStrong(&v19->_visualComponents, a5);
    if (v18)
    {
      v19->_hasTotalResultsShown = 1;
      v20 = [v18 intValue];
    }

    else
    {
      v19->_hasTotalResultsShown = 0;
      v20 = -1;
    }

    v19->_totalResultsShown = v20;
    v19->_started = a7;
    v19->_ended = a8;
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