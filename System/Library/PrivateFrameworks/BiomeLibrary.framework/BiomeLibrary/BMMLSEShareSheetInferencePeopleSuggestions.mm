@interface BMMLSEShareSheetInferencePeopleSuggestions
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMLSEShareSheetInferencePeopleSuggestions)initWithIdentifier:(id)a3 sourceBundleId:(id)a4 peopleSuggestions:(id)a5 responseType:(int)a6 trainingDataCollection:(id)a7;
- (BMMLSEShareSheetInferencePeopleSuggestions)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_peopleSuggestionsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMLSEShareSheetInferencePeopleSuggestions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    v13 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self sourceBundleId];
    v14 = [v5 sourceBundleId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self sourceBundleId];
      v17 = [v5 sourceBundleId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    v19 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self peopleSuggestions];
    v20 = [v5 peopleSuggestions];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self peopleSuggestions];
      v23 = [v5 peopleSuggestions];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_18;
      }
    }

    v25 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self responseType];
    if (v25 == [v5 responseType])
    {
      v26 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self trainingDataCollection];
      v27 = [v5 trainingDataCollection];
      if (v26 == v27)
      {
        v12 = 1;
      }

      else
      {
        v28 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self trainingDataCollection];
        v29 = [v5 trainingDataCollection];
        v12 = [v28 isEqual:v29];
      }

      goto LABEL_19;
    }

LABEL_18:
    v12 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v24[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self identifier];
  v4 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self sourceBundleId];
  v5 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self _peopleSuggestionsJSONArray];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEShareSheetInferencePeopleSuggestions responseType](self, "responseType")}];
  v7 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self trainingDataCollection];
  v8 = [v7 jsonDictionary];

  v19 = @"identifier";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v9;
  v24[0] = v9;
  v20 = @"sourceBundleId";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = v10;
  v21 = @"peopleSuggestions";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = v11;
  v22 = @"responseType";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = v12;
  v23 = @"trainingDataCollection";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (v8)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_peopleSuggestionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self peopleSuggestions];
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

- (BMMLSEShareSheetInferencePeopleSuggestions)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v87[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = a4;
      if (a4)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v25 = self;
        v26 = objc_alloc(MEMORY[0x1E696AEC0]);
        v56 = objc_opt_class();
        v27 = v26;
        self = v25;
        v8 = [v27 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v56, @"identifier"];
        v87[0] = v8;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
        v29 = v23;
        v7 = v28;
        v30 = [v29 initWithDomain:v24 code:2 userInfo:v28];
        v22 = 0;
        v31 = 0;
        *a4 = v30;
        goto LABEL_60;
      }

      v31 = 0;
      goto LABEL_61;
    }

    v64 = v6;
  }

  else
  {
    v64 = 0;
  }

  v7 = [v5 objectForKeyedSubscript:@"sourceBundleId"];
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
        v84 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceBundleId"];
        v85 = v9;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v34 = [v32 initWithDomain:v33 code:2 userInfo:?];
        v8 = 0;
        v31 = 0;
        *a4 = v34;
        v22 = v64;
        goto LABEL_58;
      }

      v8 = 0;
      v31 = 0;
      v22 = v64;
      goto LABEL_60;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"peopleSuggestions"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  v61 = v8;
  if (v11)
  {
    v59 = self;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"peopleSuggestions"];
          v83 = v66;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v46 = [v44 initWithDomain:v45 code:2 userInfo:v21];
          v31 = 0;
          *a4 = v46;
          v22 = v64;
          goto LABEL_57;
        }

        v31 = 0;
        v22 = v64;
        goto LABEL_59;
      }
    }

    v59 = self;
  }

  v66 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = *v70;
  v58 = v5;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v70 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v69 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = a4;
        if (a4)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v79 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"peopleSuggestions"];
          v80 = v17;
          v38 = MEMORY[0x1E695DF20];
          v39 = &v80;
          v40 = &v79;
LABEL_37:
          v41 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:1];
          v42 = [v36 initWithDomain:v37 code:2 userInfo:v41];
          v31 = 0;
          *v35 = v42;
LABEL_41:
          v21 = v9;
          v5 = v58;
          self = v59;
          v22 = v64;
          goto LABEL_42;
        }

LABEL_45:
        v31 = 0;
        v21 = v9;
        v5 = v58;
        self = v59;
        v22 = v64;
        v8 = v61;
        goto LABEL_57;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = a4;
        if (a4)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"peopleSuggestions"];
          v78 = v17;
          v38 = MEMORY[0x1E695DF20];
          v39 = &v78;
          v40 = &v77;
          goto LABEL_37;
        }

        goto LABEL_45;
      }

      v17 = v16;
      v18 = [BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion alloc];
      v68 = 0;
      v19 = [(BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion *)v18 initWithJSONDictionary:v17 error:&v68];
      v20 = v68;
      if (v20)
      {
        v41 = v20;
        if (a4)
        {
          v43 = v20;
          *a4 = v41;
        }

        v31 = 0;
        goto LABEL_41;
      }

      [v66 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v69 objects:v81 count:16];
    v5 = v58;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v17 = [v5 objectForKeyedSubscript:@"responseType"];
  if (!v17)
  {
    v21 = 0;
LABEL_47:
    self = v59;
    goto LABEL_50;
  }

  objc_opt_class();
  self = v59;
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
LABEL_50:
    v41 = [v5 objectForKeyedSubscript:@"trainingDataCollection"];
    if (!v41 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v47 = 0;
      v22 = v64;
      goto LABEL_53;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = v41;
      v67 = 0;
      v47 = [[BMShareEvent alloc] initWithJSONDictionary:v50 error:&v67];
      v51 = v67;
      v22 = v64;
      if (v51)
      {
        if (a4)
        {
          v51 = v51;
          *a4 = v51;
        }

        v41 = v50;
        v31 = 0;
      }

      else
      {

LABEL_53:
        self = -[BMMLSEShareSheetInferencePeopleSuggestions initWithIdentifier:sourceBundleId:peopleSuggestions:responseType:trainingDataCollection:](self, "initWithIdentifier:sourceBundleId:peopleSuggestions:responseType:trainingDataCollection:", v22, v8, v66, [v21 intValue], v47);
        v31 = self;
      }

LABEL_54:
    }

    else
    {
      v22 = v64;
      if (a4)
      {
        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v57 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trainingDataCollection"];
        v74 = v47;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        *a4 = [v60 initWithDomain:v57 code:2 userInfo:v52];

        v31 = 0;
        goto LABEL_54;
      }

      v31 = 0;
LABEL_42:
      v8 = v61;
    }

    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v17;
    goto LABEL_50;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEShareSheetInferencePeopleSuggestionsResponseTypeFromString(v17)];
    goto LABEL_47;
  }

  if (a4)
  {
    v53 = objc_alloc(MEMORY[0x1E696ABC0]);
    v54 = *MEMORY[0x1E698F240];
    v75 = *MEMORY[0x1E696A578];
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"responseType"];
    v76 = v41;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v55 = [v53 initWithDomain:v54 code:2 userInfo:v47];
    v21 = 0;
    v31 = 0;
    *a4 = v55;
    v22 = v64;
    goto LABEL_54;
  }

  v21 = 0;
  v31 = 0;
  v22 = v64;
LABEL_56:

LABEL_57:
LABEL_58:

  v7 = v62;
LABEL_59:

  v6 = v63;
LABEL_60:

LABEL_61:
  v48 = *MEMORY[0x1E69E9840];
  return v31;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEShareSheetInferencePeopleSuggestions *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceBundleId)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_peopleSuggestions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  responseType = self->_responseType;
  PBDataWriterWriteUint32Field();
  if (self->_trainingDataCollection)
  {
    PBDataWriterPlaceMark();
    [(BMShareEvent *)self->_trainingDataCollection writeTo:v4];
    PBDataWriterRecallMark();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BMMLSEShareSheetInferencePeopleSuggestions;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_51;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_49;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v38 & 0x7F) << v8;
        if ((v38 & 0x80) == 0)
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_49;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      switch(v16)
      {
        case 3:
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || (v26 = [[BMMLSEShareSheetInferencePeopleSuggestionsPeopleSuggestion alloc] initByReadFrom:v4]) == 0)
          {
LABEL_53:

            goto LABEL_50;
          }

          v27 = v26;
          [v6 addObject:v26];
          PBReaderRecallMark();

          break;
        case 0xA:
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v28 = [[BMShareEvent alloc] initByReadFrom:v4];
          if (!v28)
          {
            goto LABEL_53;
          }

          trainingDataCollection = v5->_trainingDataCollection;
          v5->_trainingDataCollection = v28;

          PBReaderRecallMark();
          break;
        case 4:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v38) = 0;
            v20 = [v4 position] + 1;
            if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (v38 & 0x7F) << v17;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ > 8)
            {
              goto LABEL_46;
            }
          }

          if (([v4 hasError] & 1) != 0 || v19 > 3)
          {
LABEL_46:
            LODWORD(v19) = 0;
          }

          v5->_responseType = v19;
          break;
        default:
LABEL_42:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_53;
          }

          break;
      }

LABEL_48:
      v31 = [v4 position];
      if (v31 >= [v4 length])
      {
        goto LABEL_49;
      }
    }

    if (v16 == 1)
    {
      v24 = PBReaderReadString();
      v25 = 24;
      goto LABEL_41;
    }

    if (v16 == 2)
    {
      v24 = PBReaderReadString();
      v25 = 32;
LABEL_41:
      v30 = *(&v5->super.super.isa + v25);
      *(&v5->super.super.isa + v25) = v24;

      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_49:
  v32 = [v6 copy];
  peopleSuggestions = v5->_peopleSuggestions;
  v5->_peopleSuggestions = v32;

  v34 = [v4 hasError];
  if (v34)
  {
LABEL_50:
    v35 = 0;
  }

  else
  {
LABEL_51:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self identifier];
  v5 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self sourceBundleId];
  v6 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self peopleSuggestions];
  v7 = BMMLSEShareSheetInferencePeopleSuggestionsResponseTypeAsString([(BMMLSEShareSheetInferencePeopleSuggestions *)self responseType]);
  v8 = [(BMMLSEShareSheetInferencePeopleSuggestions *)self trainingDataCollection];
  v9 = [v3 initWithFormat:@"BMMLSEShareSheetInferencePeopleSuggestions with identifier: %@, sourceBundleId: %@, peopleSuggestions: %@, responseType: %@, trainingDataCollection: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMMLSEShareSheetInferencePeopleSuggestions)initWithIdentifier:(id)a3 sourceBundleId:(id)a4 peopleSuggestions:(id)a5 responseType:(int)a6 trainingDataCollection:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v19.receiver = self;
  v19.super_class = BMMLSEShareSheetInferencePeopleSuggestions;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v17->_sourceBundleId, a4);
    objc_storeStrong(&v17->_peopleSuggestions, a5);
    v17->_responseType = a6;
    objc_storeStrong(&v17->_trainingDataCollection, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleId" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleSuggestions" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responseType" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trainingDataCollection" number:10 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"peopleSuggestions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_428_86894];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responseType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trainingDataCollection_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_430_86895];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __53__BMMLSEShareSheetInferencePeopleSuggestions_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trainingDataCollection];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __53__BMMLSEShareSheetInferencePeopleSuggestions_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _peopleSuggestionsJSONArray];
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

    v8 = [[BMMLSEShareSheetInferencePeopleSuggestions alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end