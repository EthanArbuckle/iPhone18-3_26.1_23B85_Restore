@interface BMMessagesSearchEventDisplayContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSearchEventDisplayContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMessagesSearchEventDisplayContext)initWithMillisecondsSinceSessionStarted:(id)a3 sessionId:(id)a4 queryId:(id)a5 visualComponent:(id)a6 started:(id)a7 ended:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_visualComponentJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSearchEventDisplayContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

      v6 = [(BMMessagesSearchEventDisplayContext *)self millisecondsSinceSessionStarted];
      if (v6 != [v5 millisecondsSinceSessionStarted])
      {
        goto LABEL_22;
      }
    }

    v7 = [(BMMessagesSearchEventDisplayContext *)self sessionId];
    v8 = [v5 sessionId];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMMessagesSearchEventDisplayContext *)self sessionId];
      v11 = [v5 sessionId];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v14 = [(BMMessagesSearchEventDisplayContext *)self queryId];
    v15 = [v5 queryId];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMMessagesSearchEventDisplayContext *)self queryId];
      v18 = [v5 queryId];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_22;
      }
    }

    v20 = [(BMMessagesSearchEventDisplayContext *)self visualComponent];
    v21 = [v5 visualComponent];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMMessagesSearchEventDisplayContext *)self visualComponent];
      v24 = [v5 visualComponent];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_22;
      }
    }

    v26 = [(BMMessagesSearchEventDisplayContext *)self started];
    v27 = [v5 started];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMMessagesSearchEventDisplayContext *)self started];
      v30 = [v5 started];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
LABEL_22:
        v13 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v33 = [(BMMessagesSearchEventDisplayContext *)self ended];
    v34 = [v5 ended];
    if (v33 == v34)
    {
      v13 = 1;
    }

    else
    {
      v35 = [(BMMessagesSearchEventDisplayContext *)self ended];
      v36 = [v5 ended];
      v13 = [v35 isEqual:v36];
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

  v4 = [(BMMessagesSearchEventDisplayContext *)self sessionId];
  v5 = [(BMMessagesSearchEventDisplayContext *)self queryId];
  v6 = [(BMMessagesSearchEventDisplayContext *)self _visualComponentJSONArray];
  v7 = [(BMMessagesSearchEventDisplayContext *)self started];
  v8 = [v7 jsonDictionary];

  v9 = [(BMMessagesSearchEventDisplayContext *)self ended];
  v10 = [v9 jsonDictionary];

  v24[0] = @"millisecondsSinceSessionStarted";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v23 = v3;
  v25[0] = v11;
  v24[1] = @"sessionId";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v25[1] = v12;
  v24[2] = @"queryId";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = v13;
  v24[3] = @"visualComponent";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v14;
  v24[4] = @"started";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v15;
  v24[5] = @"ended";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (v10)
  {
    if (v8)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v8)
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
  v4 = [(BMMessagesSearchEventDisplayContext *)self visualComponent];
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

- (BMMessagesSearchEventDisplayContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v104[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"millisecondsSinceSessionStarted"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v27 = v5;
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v67 = objc_opt_class();
        v29 = v28;
        v5 = v27;
        v30 = [v29 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v67, @"millisecondsSinceSessionStarted"];
        v104[0] = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
        v32 = v26;
        v8 = v31;
        v33 = [v25 initWithDomain:v32 code:2 userInfo:v31];
        v7 = 0;
        v34 = 0;
        *a4 = v33;
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

  v8 = [v5 objectForKeyedSubscript:@"sessionId"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = a4;
      if (a4)
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
        v30 = 0;
        v34 = 0;
        *a4 = [v40 initWithDomain:v41 code:2 userInfo:?];
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

  v9 = [v5 objectForKeyedSubscript:@"queryId"];
  v77 = v9;
  v78 = self;
  v74 = v8;
  v75 = v6;
  if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = [v42 initWithDomain:v43 code:2 userInfo:?];
        v30 = v76;
        goto LABEL_82;
      }

      v11 = 0;
      v34 = 0;
      v30 = v76;
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

  v12 = [v5 objectForKeyedSubscript:@"visualComponent"];
  v13 = [MEMORY[0x1E695DFB0] null];
  v14 = [v12 isEqual:v13];

  v71 = v11;
  if (v14)
  {
    v70 = v5;

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
        if (a4)
        {
          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v97 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"visualComponent"];
          v98 = v80;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v34 = 0;
          *a4 = [v56 initWithDomain:v57 code:2 userInfo:v24];
          v30 = v76;
          goto LABEL_81;
        }

        v34 = 0;
        v30 = v76;
        goto LABEL_83;
      }
    }

    v70 = v5;
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
        v47 = a4;
        if (a4)
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
          *v47 = v54;
LABEL_48:
          v24 = v12;
          v5 = v70;
          v7 = v72;
          goto LABEL_49;
        }

LABEL_53:
        v34 = 0;
        v24 = v12;
        v5 = v70;
        v7 = v72;
        goto LABEL_54;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v47 = a4;
        if (a4)
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
        if (a4)
        {
          v55 = v23;
          *a4 = v53;
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

  v5 = v70;
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

      if (a4)
      {
        v59 = v59;
        *a4 = v59;
      }

      v34 = 0;
      v24 = v53;
      goto LABEL_49;
    }

    if (a4)
    {
      v62 = objc_alloc(MEMORY[0x1E696ABC0]);
      v63 = *MEMORY[0x1E698F240];
      v90 = *MEMORY[0x1E696A578];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"started"];
      v91 = v20;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v64 = [v62 initWithDomain:v63 code:2 userInfo:v53];
      v34 = 0;
      *a4 = v64;
LABEL_49:
      v30 = v76;
LABEL_50:
      v11 = v71;
      goto LABEL_80;
    }

    v34 = 0;
LABEL_54:
    v30 = v76;
    v11 = v71;
    goto LABEL_81;
  }

  v20 = 0;
LABEL_56:
  v53 = [v70 objectForKeyedSubscript:@"ended"];
  if (!v53 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v58 = 0;
    v30 = v76;
    goto LABEL_59;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = v76;
    if (a4)
    {
      v73 = objc_alloc(MEMORY[0x1E696ABC0]);
      v69 = *MEMORY[0x1E698F240];
      v88 = *MEMORY[0x1E696A578];
      v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"ended"];
      v89 = v58;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      *a4 = [v73 initWithDomain:v69 code:2 userInfo:v60];
      goto LABEL_78;
    }

    v34 = 0;
    goto LABEL_50;
  }

  v60 = v53;
  v81 = 0;
  v58 = [[BMMessagesSearchEventDisplayEnded alloc] initWithJSONDictionary:v60 error:&v81];
  v61 = v81;
  v30 = v76;
  if (v61)
  {
    if (a4)
    {
      v61 = v61;
      *a4 = v61;
    }

LABEL_78:
    v34 = 0;
  }

  else
  {

LABEL_59:
    v34 = [(BMMessagesSearchEventDisplayContext *)v78 initWithMillisecondsSinceSessionStarted:v7 sessionId:v30 queryId:v11 visualComponent:v80 started:v20 ended:v58];
    v78 = v34;
  }

LABEL_80:
LABEL_81:

LABEL_82:
  v8 = v74;
LABEL_83:

  self = v78;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_started)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventDisplayStarted *)self->_started writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_ended)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventDisplayEnded *)self->_ended writeTo:v4];
    PBDataWriterRecallMark();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = BMMessagesSearchEventDisplayContext;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_54;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
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

          v19 = [[BMMessagesSearchEventDisplayStarted alloc] initByReadFrom:v4];
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

          v19 = [[BMMessagesSearchEventDisplayEnded alloc] initByReadFrom:v4];
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
      if (!PBReaderPlaceMark() || (v28 = [[BMMessagesSearchEventVisualComponent alloc] initByReadFrom:v4]) == 0)
      {
LABEL_56:

        goto LABEL_57;
      }

      v29 = v28;
      [v6 addObject:v28];
      PBReaderRecallMark();

LABEL_53:
      v32 = [v4 position];
      if (v32 >= [v4 length])
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
          v24 = [v4 position] + 1;
          if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
          {
            v26 = [v4 data];
            [v26 getBytes:&v39 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if ([v4 hasError])
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

  v35 = [v4 hasError];
  if (v35)
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
  v5 = [(BMMessagesSearchEventDisplayContext *)self sessionId];
  v6 = [(BMMessagesSearchEventDisplayContext *)self queryId];
  v7 = [(BMMessagesSearchEventDisplayContext *)self visualComponent];
  v8 = [(BMMessagesSearchEventDisplayContext *)self started];
  v9 = [(BMMessagesSearchEventDisplayContext *)self ended];
  v10 = [v3 initWithFormat:@"BMMessagesSearchEventDisplayContext with millisecondsSinceSessionStarted: %@, sessionId: %@, queryId: %@, visualComponent: %@, started: %@, ended: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMMessagesSearchEventDisplayContext)initWithMillisecondsSinceSessionStarted:(id)a3 sessionId:(id)a4 queryId:(id)a5 visualComponent:(id)a6 started:(id)a7 ended:(id)a8
{
  v14 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BMMessagesSearchEventDisplayContext;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v18->_hasMillisecondsSinceSessionStarted = 1;
      v19 = [v14 unsignedLongLongValue];
    }

    else
    {
      v19 = 0;
      v18->_hasMillisecondsSinceSessionStarted = 0;
    }

    v18->_millisecondsSinceSessionStarted = v19;
    objc_storeStrong(&v18->_sessionId, a4);
    objc_storeStrong(&v18->_queryId, a5);
    objc_storeStrong(&v18->_visualComponent, a6);
    objc_storeStrong(&v18->_started, a7);
    objc_storeStrong(&v18->_ended, a8);
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