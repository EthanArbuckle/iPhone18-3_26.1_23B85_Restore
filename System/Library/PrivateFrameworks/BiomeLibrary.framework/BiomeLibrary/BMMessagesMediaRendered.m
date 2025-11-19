@interface BMMessagesMediaRendered
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesMediaRendered)initWithAbsoluteTimestamp:(id)a3 mediaAttributes:(id)a4 isOnScreen:(id)a5 isFirstView:(id)a6;
- (BMMessagesMediaRendered)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_mediaAttributesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesMediaRendered

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMessagesMediaRendered *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMessagesMediaRendered *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMMessagesMediaRendered *)self mediaAttributes];
    v14 = [v5 mediaAttributes];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMessagesMediaRendered *)self mediaAttributes];
      v17 = [v5 mediaAttributes];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMMessagesMediaRendered hasIsOnScreen](self, "hasIsOnScreen") && ![v5 hasIsOnScreen] || -[BMMessagesMediaRendered hasIsOnScreen](self, "hasIsOnScreen") && objc_msgSend(v5, "hasIsOnScreen") && (v19 = -[BMMessagesMediaRendered isOnScreen](self, "isOnScreen"), v19 == objc_msgSend(v5, "isOnScreen")))
    {
      if (!-[BMMessagesMediaRendered hasIsFirstView](self, "hasIsFirstView") && ![v5 hasIsFirstView])
      {
        LOBYTE(v12) = 1;
        goto LABEL_22;
      }

      if (-[BMMessagesMediaRendered hasIsFirstView](self, "hasIsFirstView") && [v5 hasIsFirstView])
      {
        v20 = [(BMMessagesMediaRendered *)self isFirstView];
        v12 = v20 ^ [v5 isFirstView] ^ 1;
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  LOBYTE(v12) = 0;
LABEL_23:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMMessagesMediaRendered *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMMessagesMediaRendered *)self absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMMessagesMediaRendered *)self _mediaAttributesJSONArray];
  if ([(BMMessagesMediaRendered *)self hasIsOnScreen])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesMediaRendered isOnScreen](self, "isOnScreen")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMessagesMediaRendered *)self hasIsFirstView])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesMediaRendered isFirstView](self, "isFirstView")}];
  }

  else
  {
    v9 = 0;
  }

  v17[0] = @"absoluteTimestamp";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v10;
  v17[1] = @"mediaAttributes";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v11;
  v17[2] = @"isOnScreen";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v12;
  v17[3] = @"isFirstView";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v8)
    {
LABEL_20:
      if (v7)
      {
        goto LABEL_21;
      }

LABEL_27:

      if (v6)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_28:

LABEL_22:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_mediaAttributesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMessagesMediaRendered *)self mediaAttributes];
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

- (BMMessagesMediaRendered)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v77[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E695DF00];
      v9 = v6;
      v10 = [v8 alloc];
      [v9 doubleValue];
      v12 = v11;

      v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v7 = [v14 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v77[0] = v15;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
          v7 = 0;
          v36 = 0;
          *a4 = [v48 initWithDomain:v49 code:2 userInfo:?];

          goto LABEL_51;
        }

        v7 = 0;
        v36 = 0;
        goto LABEL_52;
      }

      v13 = v6;
    }

    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  v15 = [v5 objectForKeyedSubscript:@"mediaAttributes"];
  v16 = [MEMORY[0x1E695DFB0] null];
  v17 = [v15 isEqual:v16];

  v57 = v6;
  if (v17)
  {
    v52 = v7;
    v54 = self;

    v15 = 0;
LABEL_14:
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v15 = v15;
    v18 = [v15 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18;
    v20 = *v62;
    v51 = v5;
LABEL_16:
    v21 = 0;
    while (1)
    {
      if (*v62 != v20)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v61 + 1) + 8 * v21);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = a4;
        if (a4)
        {
          v29 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v69 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"mediaAttributes"];
          v70 = v23;
          v31 = MEMORY[0x1E695DF20];
          v32 = &v70;
          v33 = &v69;
          goto LABEL_31;
        }

        goto LABEL_38;
      }

      v23 = v22;
      v24 = [BMMessagesMediaRenderedMediaAttributes alloc];
      v60 = 0;
      v25 = [(BMMessagesMediaRenderedMediaAttributes *)v24 initWithJSONDictionary:v23 error:&v60];
      v26 = v60;
      if (v26)
      {
        v34 = v26;
        if (a4)
        {
          v37 = v26;
          *a4 = v34;
        }

        v36 = 0;
        goto LABEL_35;
      }

      [v58 addObject:v25];

      if (v19 == ++v21)
      {
        v19 = [v15 countByEnumeratingWithState:&v61 objects:v73 count:16];
        v5 = v51;
        if (v19)
        {
          goto LABEL_16;
        }

LABEL_24:

        v23 = [v5 objectForKeyedSubscript:@"isOnScreen"];
        if (!v23)
        {
          v27 = 0;
          v7 = v52;
          self = v54;
          goto LABEL_42;
        }

        objc_opt_class();
        v7 = v52;
        self = v54;
        if (objc_opt_isKindOfClass())
        {
          v27 = 0;
LABEL_42:
          v41 = [v5 objectForKeyedSubscript:@"isFirstView"];
          if (!v41 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v34 = 0;
            goto LABEL_45;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v34 = v41;
LABEL_45:
            self = [(BMMessagesMediaRendered *)self initWithAbsoluteTimestamp:v7 mediaAttributes:v58 isOnScreen:v27 isFirstView:v34];
            v36 = self;
          }

          else
          {
            if (a4)
            {
              v55 = objc_alloc(MEMORY[0x1E696ABC0]);
              v53 = *MEMORY[0x1E698F240];
              v65 = *MEMORY[0x1E696A578];
              v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFirstView"];
              v66 = v46;
              v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
              *a4 = [v55 initWithDomain:v53 code:2 userInfo:v47];
            }

            v34 = 0;
            v36 = 0;
          }

LABEL_46:

LABEL_47:
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v23;
            goto LABEL_42;
          }

          if (a4)
          {
            v50 = objc_alloc(MEMORY[0x1E696ABC0]);
            v44 = *MEMORY[0x1E698F240];
            v67 = *MEMORY[0x1E696A578];
            v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isOnScreen"];
            v68 = v34;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
            v45 = [v50 initWithDomain:v44 code:2 userInfo:v41];
            v27 = 0;
            v36 = 0;
            *a4 = v45;
            goto LABEL_46;
          }

          v27 = 0;
          v36 = 0;
        }

LABEL_49:
        v6 = v57;

        goto LABEL_51;
      }
    }

    v28 = a4;
    if (a4)
    {
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"mediaAttributes"];
      v72 = v23;
      v31 = MEMORY[0x1E695DF20];
      v32 = &v72;
      v33 = &v71;
LABEL_31:
      v34 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:1];
      v35 = [v29 initWithDomain:v30 code:2 userInfo:v34];
      v36 = 0;
      *v28 = v35;
LABEL_35:
      v27 = v15;
      v5 = v51;
      v7 = v52;
      self = v54;
      goto LABEL_47;
    }

LABEL_38:
    v36 = 0;
    v27 = v15;
    v5 = v51;
    v7 = v52;
    self = v54;
    goto LABEL_49;
  }

  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v52 = v7;
    v54 = self;
    goto LABEL_14;
  }

  if (a4)
  {
    v38 = objc_alloc(MEMORY[0x1E696ABC0]);
    v39 = *MEMORY[0x1E698F240];
    v74 = *MEMORY[0x1E696A578];
    v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"mediaAttributes"];
    v75 = v58;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v40 = [v38 initWithDomain:v39 code:2 userInfo:v27];
    v36 = 0;
    *a4 = v40;
    goto LABEL_49;
  }

  v36 = 0;
LABEL_51:

LABEL_52:
  v42 = *MEMORY[0x1E69E9840];
  return v36;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesMediaRendered *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_mediaAttributes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (self->_hasIsOnScreen)
  {
    isOnScreen = self->_isOnScreen;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFirstView)
  {
    isFirstView = self->_isFirstView;
    PBDataWriterWriteBOOLField();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = BMMessagesMediaRendered;
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
      if ((v15 >> 3) > 2)
      {
        break;
      }

      if (v16 == 1)
      {
        v5->_hasRaw_absoluteTimestamp = 1;
        v43[0] = 0;
        v26 = [v4 position] + 8;
        if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 8, v27 <= objc_msgSend(v4, "length")))
        {
          v35 = [v4 data];
          [v35 getBytes:v43 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_absoluteTimestamp = v43[0];
        goto LABEL_56;
      }

      if (v16 != 2)
      {
        goto LABEL_35;
      }

      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMMessagesMediaRenderedMediaAttributes alloc] initByReadFrom:v4]) == 0)
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

    if (v16 == 3)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v5->_hasIsOnScreen = 1;
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
          LOBYTE(v25) = 0;
          goto LABEL_52;
        }
      }

      v25 = (v30 != 0) & ~[v4 hasError];
LABEL_52:
      v34 = 32;
      goto LABEL_53;
    }

    if (v16 == 4)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v5->_hasIsFirstView = 1;
      while (1)
      {
        LOBYTE(v43[0]) = 0;
        v22 = [v4 position] + 1;
        if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
        {
          v24 = [v4 data];
          [v24 getBytes:v43 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v21 |= (v43[0] & 0x7F) << v19;
        if ((v43[0] & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v14 = v20++ >= 9;
        if (v14)
        {
          LOBYTE(v25) = 0;
          goto LABEL_50;
        }
      }

      v25 = (v21 != 0) & ~[v4 hasError];
LABEL_50:
      v34 = 34;
LABEL_53:
      *(&v5->super.super.isa + v34) = v25;
      goto LABEL_56;
    }

LABEL_35:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_57:
  v37 = [v6 copy];
  mediaAttributes = v5->_mediaAttributes;
  v5->_mediaAttributes = v37;

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
  v4 = [(BMMessagesMediaRendered *)self absoluteTimestamp];
  v5 = [(BMMessagesMediaRendered *)self mediaAttributes];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesMediaRendered isOnScreen](self, "isOnScreen")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesMediaRendered isFirstView](self, "isFirstView")}];
  v8 = [v3 initWithFormat:@"BMMessagesMediaRendered with absoluteTimestamp: %@, mediaAttributes: %@, isOnScreen: %@, isFirstView: %@", v4, v5, v6, v7];

  return v8;
}

- (BMMessagesMediaRendered)initWithAbsoluteTimestamp:(id)a3 mediaAttributes:(id)a4 isOnScreen:(id)a5 isFirstView:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BMMessagesMediaRendered;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasRaw_absoluteTimestamp = 1;
      [v10 timeIntervalSinceReferenceDate];
    }

    else
    {
      v14->_hasRaw_absoluteTimestamp = 0;
      v15 = -1.0;
    }

    v14->_raw_absoluteTimestamp = v15;
    objc_storeStrong(&v14->_mediaAttributes, a4);
    if (v12)
    {
      v14->_hasIsOnScreen = 1;
      v14->_isOnScreen = [v12 BOOLValue];
    }

    else
    {
      v14->_hasIsOnScreen = 0;
      v14->_isOnScreen = 0;
    }

    if (v13)
    {
      v14->_hasIsFirstView = 1;
      v14->_isFirstView = [v13 BOOLValue];
    }

    else
    {
      v14->_hasIsFirstView = 0;
      v14->_isFirstView = 0;
    }
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaAttributes" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isOnScreen" number:3 type:12 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFirstView" number:4 type:12 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"mediaAttributes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_70430];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isOnScreen" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFirstView" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __34__BMMessagesMediaRendered_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _mediaAttributesJSONArray];
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

    v8 = [[BMMessagesMediaRendered alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end