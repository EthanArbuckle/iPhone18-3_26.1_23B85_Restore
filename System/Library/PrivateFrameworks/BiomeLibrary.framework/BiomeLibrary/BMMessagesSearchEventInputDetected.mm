@interface BMMessagesSearchEventInputDetected
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSearchEventInputDetected)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMessagesSearchEventInputDetected)initWithMillisecondsSinceSessionStarted:(id)a3 sessionId:(id)a4 queryId:(id)a5 isZkw:(id)a6 token:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_tokenJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSearchEventInputDetected

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMessagesSearchEventInputDetected hasMillisecondsSinceSessionStarted](self, "hasMillisecondsSinceSessionStarted") || [v5 hasMillisecondsSinceSessionStarted])
    {
      if (![(BMMessagesSearchEventInputDetected *)self hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_21;
      }

      if (![v5 hasMillisecondsSinceSessionStarted])
      {
        goto LABEL_21;
      }

      v6 = [(BMMessagesSearchEventInputDetected *)self millisecondsSinceSessionStarted];
      if (v6 != [v5 millisecondsSinceSessionStarted])
      {
        goto LABEL_21;
      }
    }

    v7 = [(BMMessagesSearchEventInputDetected *)self sessionId];
    v8 = [v5 sessionId];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMMessagesSearchEventInputDetected *)self sessionId];
      v11 = [v5 sessionId];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_21;
      }
    }

    v14 = [(BMMessagesSearchEventInputDetected *)self queryId];
    v15 = [v5 queryId];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMMessagesSearchEventInputDetected *)self queryId];
      v18 = [v5 queryId];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMMessagesSearchEventInputDetected hasIsZkw](self, "hasIsZkw") && ![v5 hasIsZkw] || -[BMMessagesSearchEventInputDetected hasIsZkw](self, "hasIsZkw") && objc_msgSend(v5, "hasIsZkw") && (v20 = -[BMMessagesSearchEventInputDetected isZkw](self, "isZkw"), v20 == objc_msgSend(v5, "isZkw")))
    {
      v22 = [(BMMessagesSearchEventInputDetected *)self token];
      v23 = [v5 token];
      if (v22 == v23)
      {
        v13 = 1;
      }

      else
      {
        v24 = [(BMMessagesSearchEventInputDetected *)self token];
        v25 = [v5 token];
        v13 = [v24 isEqual:v25];
      }

      goto LABEL_22;
    }

LABEL_21:
    v13 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v13 = 0;
LABEL_23:

  return v13;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  if ([(BMMessagesSearchEventInputDetected *)self hasMillisecondsSinceSessionStarted])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventInputDetected millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMMessagesSearchEventInputDetected *)self sessionId];
  v5 = [(BMMessagesSearchEventInputDetected *)self queryId];
  if ([(BMMessagesSearchEventInputDetected *)self hasIsZkw])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSearchEventInputDetected isZkw](self, "isZkw")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMMessagesSearchEventInputDetected *)self _tokenJSONArray];
  v18 = @"millisecondsSinceSessionStarted";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"sessionId";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"queryId";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"isZkw";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"token";
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
      goto LABEL_19;
    }
  }

  else
  {

    if (v6)
    {
LABEL_19:
      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v5)
  {
LABEL_20:
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_tokenJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMessagesSearchEventInputDetected *)self token];
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

- (BMMessagesSearchEventInputDetected)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v97[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"millisecondsSinceSessionStarted"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"sessionId"];
    v73 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v31 = 0;
          v26 = 0;
          goto LABEL_60;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v94 = *MEMORY[0x1E696A578];
        v34 = v9;
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v63 = objc_opt_class();
        v36 = v35;
        v9 = v34;
        v76 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v63, @"sessionId"];
        v95 = v76;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v31 = 0;
        v26 = 0;
        *v73 = [v32 initWithDomain:v33 code:2 userInfo:v10];
        goto LABEL_59;
      }

      v75 = v9;
    }

    else
    {
      v75 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"queryId"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v27 = v10;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v76 = 0;
          v26 = 0;
          v31 = v75;
          goto LABEL_59;
        }

        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v92 = *MEMORY[0x1E696A578];
        v38 = v9;
        v39 = objc_alloc(MEMORY[0x1E696AEC0]);
        v64 = objc_opt_class();
        v40 = v39;
        v9 = v38;
        v10 = v27;
        v74 = [v40 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v64, @"queryId"];
        v93 = v74;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v42 = [v77 initWithDomain:v37 code:2 userInfo:v41];
        v76 = 0;
        v26 = 0;
        *v73 = v42;
LABEL_58:

        v31 = v75;
LABEL_59:

        goto LABEL_60;
      }

      v76 = v10;
    }

    else
    {
      v76 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"isZkw"];
    v70 = v7;
    v71 = v10;
    v72 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v90 = *MEMORY[0x1E696A578];
          v45 = v9;
          v46 = objc_alloc(MEMORY[0x1E696AEC0]);
          v65 = objc_opt_class();
          v47 = v46;
          v9 = v45;
          v13 = [v47 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v65, @"isZkw"];
          v91 = v13;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
          v74 = 0;
          v26 = 0;
          *v73 = [v43 initWithDomain:v44 code:2 userInfo:v16];
          goto LABEL_55;
        }

        v74 = 0;
        v26 = 0;
LABEL_57:
        v41 = v72;
        goto LABEL_58;
      }

      v74 = v12;
    }

    else
    {
      v74 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"token"];
    v14 = [MEMORY[0x1E695DFB0] null];
    v15 = [v13 isEqual:v14];

    v69 = v9;
    if (v15)
    {
      v67 = v8;
      v68 = self;

      v13 = 0;
LABEL_22:
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v13 = v13;
      v17 = [v13 countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (!v17)
      {
        goto LABEL_32;
      }

      v18 = v17;
      v19 = *v80;
      v66 = v6;
LABEL_24:
      v20 = 0;
      while (1)
      {
        if (*v80 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v79 + 1) + 8 * v20);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v6 = v66;
          self = v68;
          v9 = v69;
          v48 = v73;
          if (!v73)
          {
            goto LABEL_54;
          }

          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v83 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"token"];
          v84 = v22;
          v51 = MEMORY[0x1E695DF20];
          v52 = &v84;
          v53 = &v83;
          goto LABEL_49;
        }

        v22 = v21;
        v23 = [BMMessagesSearchEventToken alloc];
        v78 = 0;
        v24 = [(BMMessagesSearchEventToken *)v23 initWithJSONDictionary:v22 error:&v78];
        v25 = v78;
        if (v25)
        {
          v54 = v25;
          if (v73)
          {
            v56 = v25;
            *v73 = v54;
          }

          v6 = v66;
          self = v68;
          v9 = v69;
LABEL_53:

LABEL_54:
          v26 = 0;
          v8 = v67;
          goto LABEL_55;
        }

        [v16 addObject:v24];

        if (v18 == ++v20)
        {
          v18 = [v13 countByEnumeratingWithState:&v79 objects:v87 count:16];
          v6 = v66;
          if (v18)
          {
            goto LABEL_24;
          }

LABEL_32:

          v8 = v67;
          self = [(BMMessagesSearchEventInputDetected *)v68 initWithMillisecondsSinceSessionStarted:v67 sessionId:v75 queryId:v76 isZkw:v74 token:v16];
          v26 = self;
          v9 = v69;
LABEL_55:

          v7 = v70;
          goto LABEL_56;
        }
      }

      v6 = v66;
      self = v68;
      v9 = v69;
      v48 = v73;
      if (!v73)
      {
        goto LABEL_54;
      }

      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v85 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"token"];
      v86 = v22;
      v51 = MEMORY[0x1E695DF20];
      v52 = &v86;
      v53 = &v85;
LABEL_49:
      v54 = [v51 dictionaryWithObjects:v52 forKeys:v53 count:1];
      v55 = v50;
      v9 = v69;
      *v48 = [v49 initWithDomain:v55 code:2 userInfo:v54];
      goto LABEL_53;
    }

    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v67 = v8;
      v68 = self;
      goto LABEL_22;
    }

    if (v73)
    {
      v59 = objc_alloc(MEMORY[0x1E696ABC0]);
      v60 = *MEMORY[0x1E698F240];
      v88 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"token"];
      v89 = v16;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      v62 = v61 = v9;
      *v73 = [v59 initWithDomain:v60 code:2 userInfo:v62];

      v9 = v61;
      v26 = 0;
      goto LABEL_55;
    }

    v26 = 0;
LABEL_56:
    v10 = v71;

    goto LABEL_57;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v26 = 0;
    goto LABEL_61;
  }

  v28 = objc_alloc(MEMORY[0x1E696ABC0]);
  v29 = a4;
  v30 = *MEMORY[0x1E698F240];
  v96 = *MEMORY[0x1E696A578];
  v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"millisecondsSinceSessionStarted"];
  v97[0] = v31;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
  v8 = 0;
  v26 = 0;
  *v29 = [v28 initWithDomain:v30 code:2 userInfo:v9];
LABEL_60:

LABEL_61:
  v57 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventInputDetected *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
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

  if (self->_hasIsZkw)
  {
    isZkw = self->_isZkw;
    PBDataWriterWriteBOOLField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_token;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = BMMessagesSearchEventInputDetected;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_59;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_57;
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
        goto LABEL_57;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 == 3)
      {
        v19 = PBReaderReadString();
        v20 = 40;
        goto LABEL_29;
      }

      if (v16 == 4)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v5->_hasIsZkw = 1;
        while (1)
        {
          LOBYTE(v43[0]) = 0;
          v25 = [v4 position] + 1;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
          {
            v27 = [v4 data];
            [v27 getBytes:v43 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v24 |= (v43[0] & 0x7F) << v22;
          if ((v43[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v14 = v23++ >= 9;
          if (v14)
          {
            LOBYTE(v28) = 0;
            goto LABEL_51;
          }
        }

        v28 = (v24 != 0) & ~[v4 hasError];
LABEL_51:
        v5->_isZkw = v28;
        goto LABEL_56;
      }

      if (v16 != 5)
      {
        goto LABEL_48;
      }

      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMMessagesSearchEventToken alloc] initByReadFrom:v4]) == 0)
      {
LABEL_61:

        goto LABEL_58;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_56:
      v36 = [v4 position];
      if (v36 >= [v4 length])
      {
        goto LABEL_57;
      }
    }

    if (v16 == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v5->_hasMillisecondsSinceSessionStarted = 1;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v32 = [v4 position] + 1;
        if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
        {
          v34 = [v4 data];
          [v34 getBytes:v43 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v31 |= (v43[0] & 0x7F) << v29;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v14 = v30++ >= 9;
        if (v14)
        {
          v35 = 0;
          goto LABEL_55;
        }
      }

      if ([v4 hasError])
      {
        v35 = 0;
      }

      else
      {
        v35 = v31;
      }

LABEL_55:
      v5->_millisecondsSinceSessionStarted = v35;
      goto LABEL_56;
    }

    if (v16 == 2)
    {
      v19 = PBReaderReadString();
      v20 = 32;
LABEL_29:
      v21 = *(&v5->super.super.isa + v20);
      *(&v5->super.super.isa + v20) = v19;

      goto LABEL_56;
    }

LABEL_48:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_57:
  v37 = [v6 copy];
  token = v5->_token;
  v5->_token = v37;

  v39 = [v4 hasError];
  if (v39)
  {
LABEL_58:
    v40 = 0;
  }

  else
  {
LABEL_59:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventInputDetected millisecondsSinceSessionStarted](self, "millisecondsSinceSessionStarted")}];
  v5 = [(BMMessagesSearchEventInputDetected *)self sessionId];
  v6 = [(BMMessagesSearchEventInputDetected *)self queryId];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSearchEventInputDetected isZkw](self, "isZkw")}];
  v8 = [(BMMessagesSearchEventInputDetected *)self token];
  v9 = [v3 initWithFormat:@"BMMessagesSearchEventInputDetected with millisecondsSinceSessionStarted: %@, sessionId: %@, queryId: %@, isZkw: %@, token: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMMessagesSearchEventInputDetected)initWithMillisecondsSinceSessionStarted:(id)a3 sessionId:(id)a4 queryId:(id)a5 isZkw:(id)a6 token:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMMessagesSearchEventInputDetected;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v17->_hasMillisecondsSinceSessionStarted = 1;
      v18 = [v12 unsignedLongLongValue];
    }

    else
    {
      v18 = 0;
      v17->_hasMillisecondsSinceSessionStarted = 0;
    }

    v17->_millisecondsSinceSessionStarted = v18;
    objc_storeStrong(&v17->_sessionId, a4);
    objc_storeStrong(&v17->_queryId, a5);
    if (v15)
    {
      v17->_hasIsZkw = 1;
      v17->_isZkw = [v15 BOOLValue];
    }

    else
    {
      v17->_hasIsZkw = 0;
      v17->_isZkw = 0;
    }

    objc_storeStrong(&v17->_token, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"millisecondsSinceSessionStarted" number:1 type:5 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryId" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isZkw" number:4 type:12 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"token" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"millisecondsSinceSessionStarted" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isZkw" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"token_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_399];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __45__BMMessagesSearchEventInputDetected_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _tokenJSONArray];
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

    v8 = [[BMMessagesSearchEventInputDetected alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end