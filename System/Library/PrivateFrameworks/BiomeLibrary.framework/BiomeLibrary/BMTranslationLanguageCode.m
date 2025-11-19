@interface BMTranslationLanguageCode
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMTranslationLanguageCode)initWithHandles:(id)a3 translationLanguageCode:(id)a4 source:(int)a5 translationToLanguageCode:(id)a6;
- (BMTranslationLanguageCode)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_handlesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMTranslationLanguageCode

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMTranslationLanguageCode *)self handles];
    v7 = [v5 handles];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMTranslationLanguageCode *)self handles];
      v10 = [v5 handles];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v13 = [(BMTranslationLanguageCode *)self translationLanguageCode];
    v14 = [v5 translationLanguageCode];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMTranslationLanguageCode *)self translationLanguageCode];
      v17 = [v5 translationLanguageCode];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_14;
      }
    }

    v19 = [(BMTranslationLanguageCode *)self source];
    if (v19 == [v5 source])
    {
      v20 = [(BMTranslationLanguageCode *)self translationToLanguageCode];
      v21 = [v5 translationToLanguageCode];
      if (v20 == v21)
      {
        v12 = 1;
      }

      else
      {
        v22 = [(BMTranslationLanguageCode *)self translationToLanguageCode];
        v23 = [v5 translationToLanguageCode];
        v12 = [v22 isEqual:v23];
      }

      goto LABEL_17;
    }

LABEL_14:
    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMTranslationLanguageCode *)self _handlesJSONArray];
  v4 = [(BMTranslationLanguageCode *)self translationLanguageCode];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTranslationLanguageCode source](self, "source")}];
  v6 = [(BMTranslationLanguageCode *)self translationToLanguageCode];
  v14[0] = @"handles";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"translationLanguageCode";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"source";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"translationToLanguageCode";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5)
    {
LABEL_11:
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v3)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_handlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMTranslationLanguageCode *)self handles];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMTranslationLanguageCode)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v71[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"handles"];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {

    v6 = 0;
LABEL_5:
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v6 = v6;
    v10 = [v6 countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = v10;
    v12 = *v56;
LABEL_7:
    v13 = v5;
    v14 = a4;
    v15 = 0;
    while (1)
    {
      if (*v56 != v12)
      {
        objc_enumerationMutation(v6);
      }

      v16 = *(*(&v55 + 1) + 8 * v15);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v14)
        {
          v21 = v14;
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v65 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"handles"];
          v66 = v24;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          v25 = v27;
          v26 = v28;
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      [v9 addObject:v16];
      if (v11 == ++v15)
      {
        v11 = [v6 countByEnumeratingWithState:&v55 objects:v69 count:16];
        a4 = v14;
        v5 = v13;
        if (v11)
        {
          goto LABEL_7;
        }

LABEL_14:

        v17 = [v5 objectForKeyedSubscript:@"translationLanguageCode"];
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = 0;
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
LABEL_17:
          v19 = [v5 objectForKeyedSubscript:@"source"];
          v52 = v19;
          if (!v19)
          {
            v20 = a4;
            goto LABEL_39;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = a4;
            v19 = 0;
LABEL_39:
            v39 = [v5 objectForKeyedSubscript:@"translationToLanguageCode"];
            if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v20 = 0;
              v29 = self;
              goto LABEL_42;
            }

            v51 = v17;
            v34 = v5;
            objc_opt_class();
            v29 = self;
            if (objc_opt_isKindOfClass())
            {
              v20 = v39;
              v17 = v51;
LABEL_42:
              v29 = -[BMTranslationLanguageCode initWithHandles:translationLanguageCode:source:translationToLanguageCode:](v29, "initWithHandles:translationLanguageCode:source:translationToLanguageCode:", v9, v18, [v19 intValue], v20);
              v30 = v29;
LABEL_43:

LABEL_44:
LABEL_45:

              goto LABEL_46;
            }

            if (v20)
            {
              v50 = objc_alloc(MEMORY[0x1E696ABC0]);
              v49 = *MEMORY[0x1E698F240];
              v59 = *MEMORY[0x1E696A578];
              v42 = v20;
              v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"translationToLanguageCode"];
              v60 = v43;
              v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
              *v42 = [v50 initWithDomain:v49 code:2 userInfo:v44];

              v20 = 0;
            }

            v30 = 0;
LABEL_56:
            v5 = v34;
            v17 = v51;
            goto LABEL_43;
          }

          v51 = v17;
          v34 = v5;
          v20 = a4;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v19;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v19 = 0;
                v30 = 0;
                v29 = self;
                v17 = v51;
                goto LABEL_44;
              }

              v45 = a4;
              v46 = objc_alloc(MEMORY[0x1E696ABC0]);
              v47 = *MEMORY[0x1E698F240];
              v61 = *MEMORY[0x1E696A578];
              v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"source"];
              v62 = v20;
              v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
              v48 = [v46 initWithDomain:v47 code:2 userInfo:v39];
              v19 = 0;
              v30 = 0;
              *v45 = v48;
              v29 = self;
              goto LABEL_56;
            }

            v35 = [MEMORY[0x1E696AD98] numberWithInt:BMTranslationLanguageCodeSourceFromString(v19)];
          }

          v19 = v35;
          v17 = v51;
          goto LABEL_39;
        }

        if (a4)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v63 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"translationLanguageCode"];
          v64 = v19;
          v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v38 = [v36 initWithDomain:v37 code:2 userInfo:?];
          v18 = 0;
          v30 = 0;
          *a4 = v38;
          v29 = self;

          goto LABEL_45;
        }

        v18 = 0;
        v30 = 0;
        v29 = self;
LABEL_46:

LABEL_47:
        goto LABEL_48;
      }
    }

    if (v14)
    {
      v21 = v14;
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v67 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"handles"];
      v68 = v24;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v25 = v22;
      v26 = v23;
LABEL_24:
      v29 = self;
      v5 = v13;
      v30 = 0;
      *v21 = [v25 initWithDomain:v26 code:2 userInfo:v19];
      v17 = v24;
      v18 = v6;
      goto LABEL_45;
    }

LABEL_25:
    v30 = 0;
    v18 = v6;
    v29 = self;
    v5 = v13;
    goto LABEL_47;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  if (a4)
  {
    v31 = objc_alloc(MEMORY[0x1E696ABC0]);
    v32 = *MEMORY[0x1E698F240];
    v70 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"handles"];
    v71[0] = v9;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v33 = [v31 initWithDomain:v32 code:2 userInfo:v18];
    v30 = 0;
    *a4 = v33;
    v29 = self;
    goto LABEL_47;
  }

  v30 = 0;
  v29 = self;
LABEL_48:

  v40 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTranslationLanguageCode *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_handles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_translationLanguageCode)
  {
    PBDataWriterWriteStringField();
  }

  source = self->_source;
  PBDataWriterWriteUint32Field();
  if (self->_translationToLanguageCode)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMTranslationLanguageCode;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_46;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_44;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v36 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v36 & 0x7F) << v8;
        if ((v36 & 0x80) == 0)
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
        goto LABEL_44;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        break;
      }

      if (v16 != 1)
      {
        if (v16 == 2)
        {
          v17 = PBReaderReadString();
          v18 = 32;
LABEL_38:
          v28 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_43;
        }

LABEL_33:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }

      v26 = PBReaderReadString();
      if (!v26)
      {
LABEL_48:

        goto LABEL_45;
      }

      v27 = v26;
      [v6 addObject:v26];

LABEL_43:
      v29 = [v4 position];
      if (v29 >= [v4 length])
      {
        goto LABEL_44;
      }
    }

    if (v16 == 4)
    {
      v17 = PBReaderReadString();
      v18 = 40;
      goto LABEL_38;
    }

    if (v16 == 3)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        v36 = 0;
        v22 = [v4 position] + 1;
        if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
        {
          v24 = [v4 data];
          [v24 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v21 |= (v36 & 0x7F) << v19;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        if (v20++ > 8)
        {
          goto LABEL_41;
        }
      }

      if (([v4 hasError] & 1) != 0 || v21 > 4)
      {
LABEL_41:
        LODWORD(v21) = 0;
      }

      v5->_source = v21;
      goto LABEL_43;
    }

    goto LABEL_33;
  }

LABEL_44:
  v30 = [v6 copy];
  handles = v5->_handles;
  v5->_handles = v30;

  v32 = [v4 hasError];
  if (v32)
  {
LABEL_45:
    v33 = 0;
  }

  else
  {
LABEL_46:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMTranslationLanguageCode *)self handles];
  v5 = [(BMTranslationLanguageCode *)self translationLanguageCode];
  v6 = BMTranslationLanguageCodeSourceAsString([(BMTranslationLanguageCode *)self source]);
  v7 = [(BMTranslationLanguageCode *)self translationToLanguageCode];
  v8 = [v3 initWithFormat:@"BMTranslationLanguageCode with handles: %@, translationLanguageCode: %@, source: %@, translationToLanguageCode: %@", v4, v5, v6, v7];

  return v8;
}

- (BMTranslationLanguageCode)initWithHandles:(id)a3 translationLanguageCode:(id)a4 source:(int)a5 translationToLanguageCode:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v16.receiver = self;
  v16.super_class = BMTranslationLanguageCode;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_handles, a3);
    objc_storeStrong(&v14->_translationLanguageCode, a4);
    v14->_source = a5;
    objc_storeStrong(&v14->_translationToLanguageCode, a6);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handles" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"translationLanguageCode" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"source" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"translationToLanguageCode" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"handles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_59_106847];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"translationLanguageCode" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"source" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"translationToLanguageCode" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __36__BMTranslationLanguageCode_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _handlesJSONArray];
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

    v8 = [[BMTranslationLanguageCode alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end