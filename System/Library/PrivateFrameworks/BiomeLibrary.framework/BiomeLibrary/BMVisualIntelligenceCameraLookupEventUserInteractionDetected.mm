@interface BMVisualIntelligenceCameraLookupEventUserInteractionDetected
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventUserInteractionDetected)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMVisualIntelligenceCameraLookupEventUserInteractionDetected)initWithVisualLookupSessionId:(id)a3 pillSessionId:(id)a4 visualComponents:(id)a5 engagedResultPosition:(id)a6 interactionType:(int)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_visualComponentsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMVisualIntelligenceCameraLookupEventUserInteractionDetected

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self visualLookupSessionId];
    v7 = [v5 visualLookupSessionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self visualLookupSessionId];
      v10 = [v5 visualLookupSessionId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self pillSessionId];
    v14 = [v5 pillSessionId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self pillSessionId];
      v17 = [v5 pillSessionId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self visualComponents];
    v20 = [v5 visualComponents];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self visualComponents];
      v23 = [v5 visualComponents];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMVisualIntelligenceCameraLookupEventUserInteractionDetected hasEngagedResultPosition](self, "hasEngagedResultPosition") && ![v5 hasEngagedResultPosition] || -[BMVisualIntelligenceCameraLookupEventUserInteractionDetected hasEngagedResultPosition](self, "hasEngagedResultPosition") && objc_msgSend(v5, "hasEngagedResultPosition") && (v25 = -[BMVisualIntelligenceCameraLookupEventUserInteractionDetected engagedResultPosition](self, "engagedResultPosition"), v25 == objc_msgSend(v5, "engagedResultPosition")))
    {
      v26 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self interactionType];
      v12 = v26 == [v5 interactionType];
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self visualLookupSessionId];
  v4 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self pillSessionId];
  v5 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self _visualComponentsJSONArray];
  if ([(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self hasEngagedResultPosition])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventUserInteractionDetected engagedResultPosition](self, "engagedResultPosition")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventUserInteractionDetected interactionType](self, "interactionType")}];
  v18 = @"visualLookupSessionId";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"pillSessionId";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"visualComponents";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"engagedResultPosition";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"interactionType";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v6)
    {
LABEL_16:
      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v5)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v3)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_visualComponentsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self visualComponents];
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

- (BMVisualIntelligenceCameraLookupEventUserInteractionDetected)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v86[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"visualLookupSessionId"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v85 = *MEMORY[0x1E696A578];
        v23 = self;
        v24 = objc_alloc(MEMORY[0x1E696AEC0]);
        v56 = objc_opt_class();
        v25 = v24;
        self = v23;
        v26 = [v25 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v56, @"visualLookupSessionId"];
        v86[0] = v26;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
        v28 = v21;
        v7 = v27;
        v29 = [v28 initWithDomain:v22 code:2 userInfo:v27];
        v30 = 0;
        v31 = 0;
        *a4 = v29;
        goto LABEL_69;
      }

      v30 = 0;
      v31 = 0;
      goto LABEL_70;
    }

    v64 = v6;
  }

  else
  {
    v64 = 0;
  }

  v7 = [v5 objectForKeyedSubscript:@"pillSessionId"];
  v62 = v7;
  v63 = v6;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"pillSessionId"];
        v84 = v8;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v34 = [v32 initWithDomain:v33 code:2 userInfo:?];
        v26 = 0;
        v31 = 0;
        *a4 = v34;
        v30 = v64;
        goto LABEL_67;
      }

      v26 = 0;
      v31 = 0;
      v30 = v64;
      goto LABEL_69;
    }

    v61 = v7;
  }

  else
  {
    v61 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"visualComponents"];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v59 = self;

    v8 = 0;
  }

  else
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v31 = 0;
          v30 = v64;
          v26 = v61;
          goto LABEL_68;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"visualComponents"];
        v82 = v66;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v46 = [v44 initWithDomain:v45 code:2 userInfo:v20];
        v31 = 0;
        *a4 = v46;
LABEL_45:
        v30 = v64;
        v26 = v61;
        goto LABEL_66;
      }
    }

    v59 = self;
  }

  v66 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v8 = v8;
  v11 = [v8 countByEnumeratingWithState:&v68 objects:v80 count:16];
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = v11;
  v13 = *v69;
  v58 = v5;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v69 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v68 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = a4;
        if (a4)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v78 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"visualComponents"];
          v79 = v16;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          v39 = v36;
          v40 = v37;
LABEL_37:
          v31 = 0;
          *v35 = [v39 initWithDomain:v40 code:2 userInfo:v38];
LABEL_41:
          v20 = v8;
          v5 = v58;
          self = v59;
          v30 = v64;
          v26 = v61;
          goto LABEL_64;
        }

        goto LABEL_44;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = a4;
        if (a4)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponents"];
          v77 = v16;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v39 = v41;
          v40 = v42;
          goto LABEL_37;
        }

LABEL_44:
        v31 = 0;
        v20 = v8;
        v5 = v58;
        self = v59;
        goto LABEL_45;
      }

      v16 = v15;
      v17 = [BMVisualIntelligenceCameraLookupEventVisualComponent alloc];
      v67 = 0;
      v18 = [(BMVisualIntelligenceCameraLookupEventVisualComponent *)v17 initWithJSONDictionary:v16 error:&v67];
      v19 = v67;
      if (v19)
      {
        v38 = v19;
        if (a4)
        {
          v43 = v19;
          *a4 = v38;
        }

        v31 = 0;
        goto LABEL_41;
      }

      [v66 addObject:v18];
    }

    v12 = [v8 countByEnumeratingWithState:&v68 objects:v80 count:16];
    v5 = v58;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v16 = [v5 objectForKeyedSubscript:@"engagedResultPosition"];
  if (!v16)
  {
    v20 = 0;
    self = v59;
    goto LABEL_49;
  }

  objc_opt_class();
  self = v59;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v16;
      goto LABEL_49;
    }

    if (!a4)
    {
      v20 = 0;
      v31 = 0;
      v30 = v64;
      v26 = v61;
      goto LABEL_65;
    }

    v49 = objc_alloc(MEMORY[0x1E696ABC0]);
    v50 = *MEMORY[0x1E698F240];
    v74 = *MEMORY[0x1E696A578];
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"engagedResultPosition"];
    v75 = v38;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v51 = [v49 initWithDomain:v50 code:2 userInfo:v47];
    v20 = 0;
    v31 = 0;
    *a4 = v51;
LABEL_74:
    v30 = v64;
    v26 = v61;
    goto LABEL_63;
  }

  v20 = 0;
LABEL_49:
  v47 = [v5 objectForKeyedSubscript:@"interactionType"];
  if (!v47 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v38 = 0;
    goto LABEL_62;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventInteractionTypeFromString(v47)];
      goto LABEL_61;
    }

    if (a4)
    {
      v60 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E698F240];
      v72 = *MEMORY[0x1E696A578];
      v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interactionType"];
      v73 = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      *a4 = [v60 initWithDomain:v57 code:2 userInfo:v55];
    }

    v38 = 0;
    v31 = 0;
    goto LABEL_74;
  }

  v48 = v47;
LABEL_61:
  v38 = v48;
LABEL_62:
  v30 = v64;
  v26 = v61;
  self = -[BMVisualIntelligenceCameraLookupEventUserInteractionDetected initWithVisualLookupSessionId:pillSessionId:visualComponents:engagedResultPosition:interactionType:](self, "initWithVisualLookupSessionId:pillSessionId:visualComponents:engagedResultPosition:interactionType:", v64, v61, v66, v20, [v38 intValue]);
  v31 = self;
LABEL_63:

LABEL_64:
LABEL_65:

LABEL_66:
LABEL_67:

  v7 = v62;
LABEL_68:

  v6 = v63;
LABEL_69:

LABEL_70:
  v52 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_visualLookupSessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pillSessionId)
  {
    PBDataWriterWriteStringField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_visualComponents;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if (self->_hasEngagedResultPosition)
  {
    engagedResultPosition = self->_engagedResultPosition;
    PBDataWriterWriteInt32Field();
  }

  interactionType = self->_interactionType;
  PBDataWriterWriteUint32Field();

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = BMVisualIntelligenceCameraLookupEventUserInteractionDetected;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_61;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_59;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v43 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v43[0] & 0x7F) << v8;
        if ((v43[0] & 0x80) == 0)
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
        goto LABEL_59;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v5->_hasEngagedResultPosition = 1;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v31 = [v4 position] + 1;
            if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
            {
              v33 = [v4 data];
              [v33 getBytes:v43 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v30 |= (v43[0] & 0x7F) << v28;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v14 = v29++ >= 9;
            if (v14)
            {
              v34 = 0;
              goto LABEL_53;
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

LABEL_53:
          v5->_engagedResultPosition = v34;
          goto LABEL_58;
        }

        if (v16 == 5)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v20 = [v4 position] + 1;
            if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:v43 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (v43[0] & 0x7F) << v17;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ > 8)
            {
              goto LABEL_56;
            }
          }

          if (([v4 hasError] & 1) != 0 || v19 > 3)
          {
LABEL_56:
            LODWORD(v19) = 0;
          }

          v5->_interactionType = v19;
          goto LABEL_58;
        }

LABEL_48:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_58;
      }

      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || (v26 = [[BMVisualIntelligenceCameraLookupEventVisualComponent alloc] initByReadFrom:v4]) == 0)
      {
LABEL_63:

        goto LABEL_60;
      }

      v27 = v26;
      [v6 addObject:v26];
      PBReaderRecallMark();

LABEL_58:
      v36 = [v4 position];
      if (v36 >= [v4 length])
      {
        goto LABEL_59;
      }
    }

    if (v16 == 1)
    {
      v24 = PBReaderReadString();
      v25 = 32;
      goto LABEL_47;
    }

    if (v16 == 2)
    {
      v24 = PBReaderReadString();
      v25 = 40;
LABEL_47:
      v35 = *(&v5->super.super.isa + v25);
      *(&v5->super.super.isa + v25) = v24;

      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_59:
  v37 = [v6 copy];
  visualComponents = v5->_visualComponents;
  v5->_visualComponents = v37;

  v39 = [v4 hasError];
  if (v39)
  {
LABEL_60:
    v40 = 0;
  }

  else
  {
LABEL_61:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self visualLookupSessionId];
  v5 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self pillSessionId];
  v6 = [(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self visualComponents];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventUserInteractionDetected engagedResultPosition](self, "engagedResultPosition")}];
  v8 = BMVisualIntelligenceCameraLookupEventInteractionTypeAsString([(BMVisualIntelligenceCameraLookupEventUserInteractionDetected *)self interactionType]);
  v9 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventUserInteractionDetected with visualLookupSessionId: %@, pillSessionId: %@, visualComponents: %@, engagedResultPosition: %@, interactionType: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMVisualIntelligenceCameraLookupEventUserInteractionDetected)initWithVisualLookupSessionId:(id)a3 pillSessionId:(id)a4 visualComponents:(id)a5 engagedResultPosition:(id)a6 interactionType:(int)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = BMVisualIntelligenceCameraLookupEventUserInteractionDetected;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_visualLookupSessionId, a3);
    objc_storeStrong(&v17->_pillSessionId, a4);
    objc_storeStrong(&v17->_visualComponents, a5);
    if (v16)
    {
      v17->_hasEngagedResultPosition = 1;
      v18 = [v16 intValue];
    }

    else
    {
      v17->_hasEngagedResultPosition = 0;
      v18 = -1;
    }

    v17->_engagedResultPosition = v18;
    v17->_interactionType = a7;
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualLookupSessionId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pillSessionId" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponents" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagedResultPosition" number:4 type:2 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionType" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visualLookupSessionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pillSessionId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_440];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagedResultPosition" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __71__BMVisualIntelligenceCameraLookupEventUserInteractionDetected_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMVisualIntelligenceCameraLookupEventUserInteractionDetected alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end