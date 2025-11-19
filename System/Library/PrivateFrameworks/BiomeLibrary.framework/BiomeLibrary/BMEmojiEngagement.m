@interface BMEmojiEngagement
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMEmojiEngagement)initWithEmoji:(id)a3 wasPositiveEngagement:(id)a4 localeIdentifier:(id)a5 inputMode:(int)a6 replacementContext:(id)a7 resultPosition:(id)a8 numberSearchQueriesRun:(id)a9 finalSearchQuery:(id)a10;
- (BMEmojiEngagement)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMEmojiEngagement

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"emoji" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wasPositiveEngagement" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"localeIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inputMode" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"replacementContext" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resultPosition" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberSearchQueriesRun" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"finalSearchQuery" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMEmojiEngagement *)self emoji];
    v7 = [v5 emoji];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMEmojiEngagement *)self emoji];
      v10 = [v5 emoji];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    if (-[BMEmojiEngagement hasWasPositiveEngagement](self, "hasWasPositiveEngagement") || [v5 hasWasPositiveEngagement])
    {
      if (![(BMEmojiEngagement *)self hasWasPositiveEngagement])
      {
        goto LABEL_33;
      }

      if (![v5 hasWasPositiveEngagement])
      {
        goto LABEL_33;
      }

      v13 = [(BMEmojiEngagement *)self wasPositiveEngagement];
      if (v13 != [v5 wasPositiveEngagement])
      {
        goto LABEL_33;
      }
    }

    v14 = [(BMEmojiEngagement *)self localeIdentifier];
    v15 = [v5 localeIdentifier];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMEmojiEngagement *)self localeIdentifier];
      v18 = [v5 localeIdentifier];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_33;
      }
    }

    v20 = [(BMEmojiEngagement *)self inputMode];
    if (v20 == [v5 inputMode])
    {
      v21 = [(BMEmojiEngagement *)self replacementContext];
      v22 = [v5 replacementContext];
      v23 = v22;
      if (v21 == v22)
      {
      }

      else
      {
        v24 = [(BMEmojiEngagement *)self replacementContext];
        v25 = [v5 replacementContext];
        v26 = [v24 isEqual:v25];

        if (!v26)
        {
          goto LABEL_33;
        }
      }

      if (!-[BMEmojiEngagement hasResultPosition](self, "hasResultPosition") && ![v5 hasResultPosition] || -[BMEmojiEngagement hasResultPosition](self, "hasResultPosition") && objc_msgSend(v5, "hasResultPosition") && (v27 = -[BMEmojiEngagement resultPosition](self, "resultPosition"), v27 == objc_msgSend(v5, "resultPosition")))
      {
        if (!-[BMEmojiEngagement hasNumberSearchQueriesRun](self, "hasNumberSearchQueriesRun") && ![v5 hasNumberSearchQueriesRun] || -[BMEmojiEngagement hasNumberSearchQueriesRun](self, "hasNumberSearchQueriesRun") && objc_msgSend(v5, "hasNumberSearchQueriesRun") && (v28 = -[BMEmojiEngagement numberSearchQueriesRun](self, "numberSearchQueriesRun"), v28 == objc_msgSend(v5, "numberSearchQueriesRun")))
        {
          v29 = [(BMEmojiEngagement *)self finalSearchQuery];
          v30 = [v5 finalSearchQuery];
          if (v29 == v30)
          {
            v12 = 1;
          }

          else
          {
            v31 = [(BMEmojiEngagement *)self finalSearchQuery];
            v32 = [v5 finalSearchQuery];
            v12 = [v31 isEqual:v32];
          }

          goto LABEL_34;
        }
      }
    }

LABEL_33:
    v12 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)jsonDictionary
{
  v29[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMEmojiEngagement *)self emoji];
  if ([(BMEmojiEngagement *)self hasWasPositiveEngagement])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMEmojiEngagement wasPositiveEngagement](self, "wasPositiveEngagement")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BMEmojiEngagement *)self localeIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement inputMode](self, "inputMode")}];
  v27 = [(BMEmojiEngagement *)self replacementContext];
  if ([(BMEmojiEngagement *)self hasResultPosition])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement resultPosition](self, "resultPosition")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMEmojiEngagement *)self hasNumberSearchQueriesRun])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement numberSearchQueriesRun](self, "numberSearchQueriesRun")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMEmojiEngagement *)self finalSearchQuery];
  v28[0] = @"emoji";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v10;
  v29[0] = v10;
  v28[1] = @"wasPositiveEngagement";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v29[1] = v11;
  v28[2] = @"localeIdentifier";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v3;
  v21 = v12;
  v29[2] = v12;
  v28[3] = @"inputMode";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v4;
  v29[3] = v13;
  v28[4] = @"replacementContext";
  v14 = v27;
  if (!v27)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v5;
  v29[4] = v14;
  v28[5] = @"resultPosition";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v15;
  v28[6] = @"numberSearchQueriesRun";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v16;
  v28[7] = @"finalSearchQuery";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v8)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  if (!v7)
  {
  }

  if (!v27)
  {
  }

  if (!v6)
  {
  }

  if (v24)
  {
    if (v25)
    {
      goto LABEL_36;
    }

LABEL_43:

    if (v26)
    {
      goto LABEL_37;
    }

    goto LABEL_44;
  }

  if (!v25)
  {
    goto LABEL_43;
  }

LABEL_36:
  if (v26)
  {
    goto LABEL_37;
  }

LABEL_44:

LABEL_37:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMEmojiEngagement)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v77[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"emoji"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"wasPositiveEngagement"];
    v56 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v18 = 0;
          goto LABEL_51;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v74 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wasPositiveEngagement"];
        v75 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v23 = v20;
        v11 = v22;
        v10 = 0;
        v18 = 0;
        *v56 = [v19 initWithDomain:v23 code:2 userInfo:v22];
        goto LABEL_50;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"localeIdentifier"];
    v60 = v11;
    v61 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v56)
        {
          v21 = 0;
          v18 = 0;
          goto LABEL_50;
        }

        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v72 = *MEMORY[0x1E696A578];
        v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"localeIdentifier"];
        v73 = v59;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v25 = v24;
        v11 = v60;
        v21 = 0;
        v18 = 0;
        *v56 = [v58 initWithDomain:v25 code:2 userInfo:v13];
LABEL_49:

        v10 = v61;
LABEL_50:

        goto LABEL_51;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"inputMode"];
    v57 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v56)
          {
            v59 = 0;
            v18 = 0;
            goto LABEL_48;
          }

          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v70 = *MEMORY[0x1E696A578];
          v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"inputMode"];
          v71 = v54;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          v59 = 0;
          v18 = 0;
          *v56 = [v43 initWithDomain:v44 code:2 userInfo:v26];
          goto LABEL_76;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMEmojiEngagementInputModeFromString(v13)];
      }

      v59 = v14;
    }

    else
    {
      v59 = 0;
    }

    v26 = [v6 objectForKeyedSubscript:@"replacementContext"];
    v50 = v7;
    if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v54 = 0;
LABEL_33:
      v27 = [v6 objectForKeyedSubscript:@"resultPosition"];
      v51 = v8;
      v49 = v9;
      if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v56)
          {
            v52 = 0;
            v18 = 0;
            goto LABEL_46;
          }

          v29 = self;
          v53 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v66 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"resultPosition"];
          v67 = v30;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          v37 = v36;
          v9 = v49;
          v38 = [v53 initWithDomain:v37 code:2 userInfo:v28];
          v52 = 0;
          v18 = 0;
          *v56 = v38;
          goto LABEL_44;
        }

        v52 = v27;
      }

      else
      {
        v52 = 0;
      }

      v28 = [v6 objectForKeyedSubscript:@"numberSearchQueriesRun"];
      if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v29 = self;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v56)
          {
            v30 = 0;
            v18 = 0;
            goto LABEL_44;
          }

          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v64 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberSearchQueriesRun"];
          v65 = v32;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v40 = [v47 initWithDomain:v39 code:2 userInfo:v31];
          v30 = 0;
          v18 = 0;
          *v56 = v40;
          goto LABEL_43;
        }

        v30 = v28;
      }

      else
      {
        v29 = self;
        v30 = 0;
      }

      v31 = [v6 objectForKeyedSubscript:@"finalSearchQuery"];
      if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v56)
          {
            v48 = objc_alloc(MEMORY[0x1E696ABC0]);
            v45 = *MEMORY[0x1E698F240];
            v62 = *MEMORY[0x1E696A578];
            v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"finalSearchQuery"];
            v63 = v41;
            v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
            *v56 = [v48 initWithDomain:v45 code:2 userInfo:v42];
          }

          v32 = 0;
          v18 = 0;
          goto LABEL_43;
        }

        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v18 = -[BMEmojiEngagement initWithEmoji:wasPositiveEngagement:localeIdentifier:inputMode:replacementContext:resultPosition:numberSearchQueriesRun:finalSearchQuery:](v29, "initWithEmoji:wasPositiveEngagement:localeIdentifier:inputMode:replacementContext:resultPosition:numberSearchQueriesRun:finalSearchQuery:", v51, v61, v57, [v59 intValue], v54, v52, v30, v32);
      v29 = v18;
LABEL_43:

      v9 = v49;
LABEL_44:

      self = v29;
      v8 = v51;
LABEL_45:
      v11 = v60;
LABEL_46:

      v7 = v50;
LABEL_47:

LABEL_48:
      v21 = v57;
      goto LABEL_49;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v26;
      goto LABEL_33;
    }

    if (v56)
    {
      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = *MEMORY[0x1E698F240];
      v68 = *MEMORY[0x1E696A578];
      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"replacementContext"];
      v69 = v52;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v35 = [v55 initWithDomain:v46 code:2 userInfo:v27];
      v54 = 0;
      v18 = 0;
      *v56 = v35;
      goto LABEL_45;
    }

    v54 = 0;
    v18 = 0;
LABEL_76:
    v11 = v60;
    goto LABEL_47;
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
    v18 = 0;
    goto LABEL_52;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = a4;
  v17 = *MEMORY[0x1E698F240];
  v76 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"emoji"];
  v77[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
  v8 = 0;
  v18 = 0;
  *v16 = [v15 initWithDomain:v17 code:2 userInfo:v9];
LABEL_51:

LABEL_52:
  v33 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMEmojiEngagement *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (self->_emoji)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasWasPositiveEngagement)
  {
    wasPositiveEngagement = self->_wasPositiveEngagement;
    PBDataWriterWriteBOOLField();
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  inputMode = self->_inputMode;
  PBDataWriterWriteUint32Field();
  if (self->_replacementContext)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasResultPosition)
  {
    resultPosition = self->_resultPosition;
    PBDataWriterWriteInt32Field();
  }

  v7 = v9;
  if (self->_hasNumberSearchQueriesRun)
  {
    numberSearchQueriesRun = self->_numberSearchQueriesRun;
    PBDataWriterWriteInt32Field();
    v7 = v9;
  }

  if (self->_finalSearchQuery)
  {
    PBDataWriterWriteStringField();
    v7 = v9;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMEmojiEngagement;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_90;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v51 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v51 & 0x7F) << v7;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v5->_hasNumberSearchQueriesRun = 1;
            while (1)
            {
              v51 = 0;
              v43 = [v4 position] + 1;
              if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
              {
                v45 = [v4 data];
                [v45 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v42 |= (v51 & 0x7F) << v40;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v13 = v41++ >= 9;
              if (v13)
              {
                v29 = 0;
                goto LABEL_75;
              }
            }

            if ([v4 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v42;
            }

LABEL_75:
            v46 = 32;
LABEL_82:
            *(&v5->super.super.isa + v46) = v29;
            goto LABEL_87;
          }

          if (v15 != 8)
          {
LABEL_70:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_89;
            }

            goto LABEL_87;
          }

          v37 = PBReaderReadString();
          v38 = 64;
        }

        else
        {
          if (v15 != 5)
          {
            if (v15 != 6)
            {
              goto LABEL_70;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            v5->_hasResultPosition = 1;
            while (1)
            {
              v51 = 0;
              v26 = [v4 position] + 1;
              if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
              {
                v28 = [v4 data];
                [v28 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v25 |= (v51 & 0x7F) << v23;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v13 = v24++ >= 9;
              if (v13)
              {
                v29 = 0;
                goto LABEL_81;
              }
            }

            if ([v4 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_81:
            v46 = 28;
            goto LABEL_82;
          }

          v37 = PBReaderReadString();
          v38 = 56;
        }

        goto LABEL_60;
      }

      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v37 = PBReaderReadString();
          v38 = 48;
          goto LABEL_60;
        }

        if (v15 != 4)
        {
          goto LABEL_70;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v51 = 0;
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v32 |= (v51 & 0x7F) << v30;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          if (v31++ > 8)
          {
            goto LABEL_85;
          }
        }

        if (([v4 hasError] & 1) != 0 || v32 > 0xA)
        {
LABEL_85:
          LODWORD(v32) = 0;
        }

        v5->_inputMode = v32;
      }

      else
      {
        if (v15 == 1)
        {
          v37 = PBReaderReadString();
          v38 = 40;
LABEL_60:
          v39 = *(&v5->super.super.isa + v38);
          *(&v5->super.super.isa + v38) = v37;

          goto LABEL_87;
        }

        if (v15 != 2)
        {
          goto LABEL_70;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasWasPositiveEngagement = 1;
        while (1)
        {
          v51 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v51 & 0x7F) << v16;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_77;
          }
        }

        v22 = (v18 != 0) & ~[v4 hasError];
LABEL_77:
        v5->_wasPositiveEngagement = v22;
      }

LABEL_87:
      v47 = [v4 position];
    }

    while (v47 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_89:
    v48 = 0;
  }

  else
  {
LABEL_90:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMEmojiEngagement *)self emoji];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMEmojiEngagement wasPositiveEngagement](self, "wasPositiveEngagement")}];
  v6 = [(BMEmojiEngagement *)self localeIdentifier];
  v7 = BMEmojiEngagementInputModeAsString([(BMEmojiEngagement *)self inputMode]);
  v8 = [(BMEmojiEngagement *)self replacementContext];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement resultPosition](self, "resultPosition")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMEmojiEngagement numberSearchQueriesRun](self, "numberSearchQueriesRun")}];
  v11 = [(BMEmojiEngagement *)self finalSearchQuery];
  v12 = [v3 initWithFormat:@"BMEmojiEngagement with emoji: %@, wasPositiveEngagement: %@, localeIdentifier: %@, inputMode: %@, replacementContext: %@, resultPosition: %@, numberSearchQueriesRun: %@, finalSearchQuery: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMEmojiEngagement)initWithEmoji:(id)a3 wasPositiveEngagement:(id)a4 localeIdentifier:(id)a5 inputMode:(int)a6 replacementContext:(id)a7 resultPosition:(id)a8 numberSearchQueriesRun:(id)a9 finalSearchQuery:(id)a10
{
  v27 = a3;
  v17 = a4;
  v26 = a5;
  v25 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v28.receiver = self;
  v28.super_class = BMEmojiEngagement;
  v21 = [(BMEventBase *)&v28 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_emoji, a3);
    if (v17)
    {
      v21->_hasWasPositiveEngagement = 1;
      v21->_wasPositiveEngagement = [v17 BOOLValue];
    }

    else
    {
      v21->_hasWasPositiveEngagement = 0;
      v21->_wasPositiveEngagement = 0;
    }

    objc_storeStrong(&v21->_localeIdentifier, a5);
    v21->_inputMode = a6;
    objc_storeStrong(&v21->_replacementContext, a7);
    if (v18)
    {
      v21->_hasResultPosition = 1;
      v22 = [v18 intValue];
    }

    else
    {
      v21->_hasResultPosition = 0;
      v22 = -1;
    }

    v21->_resultPosition = v22;
    if (v19)
    {
      v21->_hasNumberSearchQueriesRun = 1;
      v23 = [v19 intValue];
    }

    else
    {
      v21->_hasNumberSearchQueriesRun = 0;
      v23 = -1;
    }

    v21->_numberSearchQueriesRun = v23;
    objc_storeStrong(&v21->_finalSearchQuery, a10);
  }

  return v21;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emoji" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wasPositiveEngagement" number:2 type:12 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"localeIdentifier" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inputMode" number:4 type:4 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"replacementContext" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resultPosition" number:6 type:2 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberSearchQueriesRun" number:7 type:2 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"finalSearchQuery" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

    v8 = [[BMEmojiEngagement alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end