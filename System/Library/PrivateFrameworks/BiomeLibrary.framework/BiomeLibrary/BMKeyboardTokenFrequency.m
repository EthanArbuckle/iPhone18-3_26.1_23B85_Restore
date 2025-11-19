@interface BMKeyboardTokenFrequency
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMKeyboardTokenFrequency)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMKeyboardTokenFrequency)initWithTokenFrequencies:(id)a3 locale:(id)a4 tokenType:(int)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_tokenFrequenciesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMKeyboardTokenFrequency

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tokenFrequencies_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_168];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locale" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tokenType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMKeyboardTokenFrequency *)self tokenFrequencies];
    v7 = [v5 tokenFrequencies];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMKeyboardTokenFrequency *)self tokenFrequencies];
      v10 = [v5 tokenFrequencies];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMKeyboardTokenFrequency *)self locale];
    v14 = [v5 locale];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMKeyboardTokenFrequency *)self locale];
      v17 = [v5 locale];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    v19 = [(BMKeyboardTokenFrequency *)self tokenType];
    v12 = v19 == [v5 tokenType];
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMKeyboardTokenFrequency *)self _tokenFrequenciesJSONArray];
  v4 = [(BMKeyboardTokenFrequency *)self locale];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMKeyboardTokenFrequency tokenType](self, "tokenType")}];
  v12[0] = @"tokenFrequencies";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"locale";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"tokenType";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_tokenFrequenciesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMKeyboardTokenFrequency *)self tokenFrequencies];
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

- (BMKeyboardTokenFrequency)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v67[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"tokenFrequencies"];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v47 = a4;
    v48 = v6;
    v49 = self;

    v7 = 0;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v66 = *MEMORY[0x1E696A578];
          v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"tokenFrequencies"];
          v67[0] = v51;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
          v19 = v33 = a4;
          v29 = 0;
          *v33 = [v31 initWithDomain:v32 code:2 userInfo:v19];
          goto LABEL_48;
        }

        v29 = 0;
        goto LABEL_49;
      }
    }

    v47 = a4;
    v48 = v6;
    v49 = self;
  }

  v51 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v7 = v7;
  v10 = [v7 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *v54;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v54 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v53 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v47;
        if (v47)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v63 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"tokenFrequencies"];
          v64 = v15;
          v25 = MEMORY[0x1E695DF20];
          v26 = &v64;
          v27 = &v63;
LABEL_26:
          v21 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
          v28 = [v23 initWithDomain:v24 code:2 userInfo:v21];
          v29 = 0;
          *v22 = v28;
LABEL_30:
          v19 = v7;
          v6 = v48;
          self = v49;
          goto LABEL_46;
        }

LABEL_33:
        v29 = 0;
        v19 = v7;
        v6 = v48;
        self = v49;
        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = v47;
        if (v47)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v61 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"tokenFrequencies"];
          v62 = v15;
          v25 = MEMORY[0x1E695DF20];
          v26 = &v62;
          v27 = &v61;
          goto LABEL_26;
        }

        goto LABEL_33;
      }

      v15 = v14;
      v16 = [BMKeyboardTokenFrequencyTokenFrequency alloc];
      v52 = 0;
      v17 = [(BMKeyboardTokenFrequencyTokenFrequency *)v16 initWithJSONDictionary:v15 error:&v52];
      v18 = v52;
      if (v18)
      {
        v21 = v18;
        if (v47)
        {
          v30 = v18;
          *v47 = v21;
        }

        v29 = 0;
        goto LABEL_30;
      }

      [v51 addObject:v17];
    }

    v11 = [v7 countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_16:

  v6 = v48;
  v15 = [v48 objectForKeyedSubscript:@"locale"];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v15;
      goto LABEL_19;
    }

    if (v47)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v37 = *MEMORY[0x1E698F240];
      v59 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"locale"];
      v60 = v21;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v38 = [v36 initWithDomain:v37 code:2 userInfo:v20];
      v19 = 0;
      v29 = 0;
      *v47 = v38;
      self = v49;
      goto LABEL_45;
    }

    v19 = 0;
    v29 = 0;
    self = v49;
  }

  else
  {
    v19 = 0;
LABEL_19:
    v20 = [v48 objectForKeyedSubscript:@"tokenType"];
    if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = 0;
      goto LABEL_44;
    }

    v34 = v49;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v20;
LABEL_43:
      v21 = v35;
LABEL_44:
      self = -[BMKeyboardTokenFrequency initWithTokenFrequencies:locale:tokenType:](v49, "initWithTokenFrequencies:locale:tokenType:", v51, v19, [v21 intValue]);
      v29 = self;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = MEMORY[0x1E696AD98];
        v40 = BMKeyboardTokenFrequencyTokenTypeFromString(v20);
        v41 = v39;
        v6 = v48;
        v35 = [v41 numberWithInt:v40];
        goto LABEL_43;
      }

      if (v47)
      {
        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"tokenType"];
        v58 = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        *v47 = [v50 initWithDomain:v46 code:2 userInfo:v45];
      }

      v21 = 0;
      v29 = 0;
      self = v34;
    }

LABEL_45:

LABEL_46:
  }

LABEL_48:
LABEL_49:

  v42 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMKeyboardTokenFrequency *)self writeTo:v3];
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
  v5 = self->_tokenFrequencies;
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

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  tokenType = self->_tokenType;
  PBDataWriterWriteUint32Field();

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMKeyboardTokenFrequency;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v35[0] & 0x7F) << v8;
        if ((v35[0] & 0x80) == 0)
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
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 1)
      {
        v35[0] = 0;
        v35[1] = 0;
        if (!PBReaderPlaceMark() || (v26 = [[BMKeyboardTokenFrequencyTokenFrequency alloc] initByReadFrom:v4]) == 0)
        {
LABEL_45:

          goto LABEL_42;
        }

        v27 = v26;
        [v6 addObject:v26];
        PBReaderRecallMark();
      }

      else if (v16 == 2)
      {
        v24 = PBReaderReadString();
        locale = v5->_locale;
        v5->_locale = v24;
      }

      else if (v16 == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v20 = [v4 position] + 1;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:v35 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (v35[0] & 0x7F) << v17;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          if (v18++ > 8)
          {
            goto LABEL_38;
          }
        }

        if (([v4 hasError] & 1) != 0 || v19 > 4)
        {
LABEL_38:
          LODWORD(v19) = 0;
        }

        v5->_tokenType = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_45;
      }

      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  v29 = [v6 copy];
  tokenFrequencies = v5->_tokenFrequencies;
  v5->_tokenFrequencies = v29;

  v31 = [v4 hasError];
  if (v31)
  {
LABEL_42:
    v32 = 0;
  }

  else
  {
LABEL_43:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMKeyboardTokenFrequency *)self tokenFrequencies];
  v5 = [(BMKeyboardTokenFrequency *)self locale];
  v6 = BMKeyboardTokenFrequencyTokenTypeAsString([(BMKeyboardTokenFrequency *)self tokenType]);
  v7 = [v3 initWithFormat:@"BMKeyboardTokenFrequency with tokenFrequencies: %@, locale: %@, tokenType: %@", v4, v5, v6];

  return v7;
}

- (BMKeyboardTokenFrequency)initWithTokenFrequencies:(id)a3 locale:(id)a4 tokenType:(int)a5
{
  v9 = a3;
  v10 = a4;
  v13.receiver = self;
  v13.super_class = BMKeyboardTokenFrequency;
  v11 = [(BMEventBase *)&v13 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v11->_tokenFrequencies, a3);
    objc_storeStrong(&v11->_locale, a4);
    v11->_tokenType = a5;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tokenFrequencies" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locale" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tokenType" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __35__BMKeyboardTokenFrequency_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _tokenFrequenciesJSONArray];
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

    v8 = [[BMKeyboardTokenFrequency alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end