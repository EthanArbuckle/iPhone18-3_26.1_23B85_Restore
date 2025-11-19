@interface BMDictationUserEditConfusionPair
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDictationUserEditConfusionPair)initWithIndex:(id)a3 recognizedTokens:(id)a4 correctedTokens:(id)a5;
- (BMDictationUserEditConfusionPair)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_correctedTokensJSONArray;
- (id)_recognizedTokensJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDictationUserEditConfusionPair

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMDictationUserEditConfusionPair hasIndex](self, "hasIndex") || [v5 hasIndex])
    {
      if (![(BMDictationUserEditConfusionPair *)self hasIndex])
      {
        goto LABEL_9;
      }

      if (![v5 hasIndex])
      {
        goto LABEL_9;
      }

      v6 = [(BMDictationUserEditConfusionPair *)self index];
      if (v6 != [v5 index])
      {
        goto LABEL_9;
      }
    }

    v7 = [(BMDictationUserEditConfusionPair *)self recognizedTokens];
    v8 = [v5 recognizedTokens];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMDictationUserEditConfusionPair *)self recognizedTokens];
      v11 = [v5 recognizedTokens];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
LABEL_9:
        v13 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    v14 = [(BMDictationUserEditConfusionPair *)self correctedTokens];
    v15 = [v5 correctedTokens];
    if (v14 == v15)
    {
      v13 = 1;
    }

    else
    {
      v16 = [(BMDictationUserEditConfusionPair *)self correctedTokens];
      v17 = [v5 correctedTokens];
      v13 = [v16 isEqual:v17];
    }

    goto LABEL_16;
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  if ([(BMDictationUserEditConfusionPair *)self hasIndex])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEditConfusionPair index](self, "index")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMDictationUserEditConfusionPair *)self _recognizedTokensJSONArray];
  v5 = [(BMDictationUserEditConfusionPair *)self _correctedTokensJSONArray];
  v12[0] = @"index";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"recognizedTokens";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"correctedTokens";
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
      goto LABEL_12;
    }

LABEL_17:

    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_correctedTokensJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMDictationUserEditConfusionPair *)self correctedTokens];
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

- (id)_recognizedTokensJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMDictationUserEditConfusionPair *)self recognizedTokens];
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

- (BMDictationUserEditConfusionPair)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v79[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"index"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v78 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"index"];
        v79[0] = v8;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
        v7 = 0;
        v29 = 0;
        *a4 = [v30 initWithDomain:v31 code:2 userInfo:v11];
        goto LABEL_54;
      }

      v7 = 0;
      v29 = 0;
      goto LABEL_56;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"recognizedTokens"];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:v9];

  v54 = v6;
  if (v10)
  {
    v52 = v7;

    v8 = 0;
  }

  else
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"recognizedTokens"];
          v77 = v11;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v29 = 0;
          *a4 = [v37 initWithDomain:v38 code:2 userInfo:v17];
          goto LABEL_53;
        }

        v29 = 0;
        goto LABEL_55;
      }
    }

    v52 = v7;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v8 = v8;
  v12 = [v8 countByEnumeratingWithState:&v60 objects:v75 count:16];
  v53 = self;
  if (v12)
  {
    v13 = v12;
    v14 = *v61;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v61 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v60 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = a4;
          if (a4)
          {
            v21 = objc_alloc(MEMORY[0x1E696ABC0]);
            v22 = *MEMORY[0x1E698F240];
            v73 = *MEMORY[0x1E696A578];
            v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"recognizedTokens"];
            v74 = v23;
            v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
            v25 = v21;
            v26 = v22;
            goto LABEL_26;
          }

LABEL_27:
          v29 = 0;
          v17 = v8;
          v7 = v52;
          self = v53;
          goto LABEL_53;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = a4;
          if (!a4)
          {
            goto LABEL_27;
          }

          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v71 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recognizedTokens"];
          v72 = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
          v25 = v27;
          v26 = v28;
LABEL_26:
          self = v53;
          *v20 = [v25 initWithDomain:v26 code:2 userInfo:v24];

          v29 = 0;
          v17 = v8;
LABEL_51:
          v7 = v52;
          goto LABEL_52;
        }

        [v11 addObject:v16];
      }

      v13 = [v8 countByEnumeratingWithState:&v60 objects:v75 count:16];
      self = v53;
    }

    while (v13);
  }

  v17 = [v5 objectForKeyedSubscript:@"correctedTokens"];
  v18 = [MEMORY[0x1E695DFB0] null];
  v19 = [v17 isEqual:v18];

  if (v19)
  {

    v17 = 0;
  }

  else if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v29 = 0;
        v7 = v52;
        goto LABEL_53;
      }

      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v69 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"correctedTokens"];
      v70 = v23;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      *a4 = [v47 initWithDomain:v48 code:2 userInfo:v49];

LABEL_50:
      v29 = 0;
      goto LABEL_51;
    }
  }

  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v17 = v17;
  v32 = [v17 countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (!v32)
  {
    goto LABEL_41;
  }

  v33 = v32;
  v34 = *v57;
  v51 = v5;
  while (2)
  {
    for (j = 0; j != v33; ++j)
    {
      if (*v57 != v34)
      {
        objc_enumerationMutation(v17);
      }

      v36 = *(*(&v56 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v51;
        self = v53;
        if (a4)
        {
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v66 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"correctedTokens"];
          v67 = v40;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v67;
          v43 = &v66;
LABEL_48:
          v44 = [v41 dictionaryWithObjects:v42 forKeys:v43 count:1];
          *a4 = [v50 initWithDomain:v39 code:2 userInfo:v44];
        }

LABEL_49:

        goto LABEL_50;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = v51;
        self = v53;
        if (a4)
        {
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v64 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"correctedTokens"];
          v65 = v40;
          v41 = MEMORY[0x1E695DF20];
          v42 = &v65;
          v43 = &v64;
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      [v23 addObject:v36];
    }

    v33 = [v17 countByEnumeratingWithState:&v56 objects:v68 count:16];
    v5 = v51;
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_41:

  v7 = v52;
  self = [(BMDictationUserEditConfusionPair *)v53 initWithIndex:v52 recognizedTokens:v11 correctedTokens:v23];
  v29 = self;
LABEL_52:

LABEL_53:
  v6 = v54;
LABEL_54:

LABEL_55:
LABEL_56:

  v45 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDictationUserEditConfusionPair *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasIndex)
  {
    index = self->_index;
    PBDataWriterWriteUint32Field();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_recognizedTokens;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_correctedTokens;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BMDictationUserEditConfusionPair;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_42;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v38 = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v11 |= (v38 & 0x7F) << v9;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        goto LABEL_42;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) == 3)
      {
        break;
      }

      if (v17 == 2)
      {
        v25 = PBReaderReadString();
        if (!v25)
        {
          goto LABEL_46;
        }

        v26 = v25;
        v27 = v6;
LABEL_34:
        [v27 addObject:v26];

        goto LABEL_41;
      }

      if (v17 == 1)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasIndex = 1;
        while (1)
        {
          v38 = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v38 & 0x7F) << v18;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v15 = v19++ >= 9;
          if (v15)
          {
            v24 = 0;
            goto LABEL_40;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_40:
        v5->_index = v24;
      }

      else if (!PBReaderSkipValueWithTag())
      {
LABEL_46:

        goto LABEL_43;
      }

LABEL_41:
      v29 = [v4 position];
      if (v29 >= [v4 length])
      {
        goto LABEL_42;
      }
    }

    v28 = PBReaderReadString();
    if (!v28)
    {
      goto LABEL_46;
    }

    v26 = v28;
    v27 = v7;
    goto LABEL_34;
  }

LABEL_42:
  v30 = [v6 copy];
  recognizedTokens = v5->_recognizedTokens;
  v5->_recognizedTokens = v30;

  v32 = [v7 copy];
  correctedTokens = v5->_correctedTokens;
  v5->_correctedTokens = v32;

  v34 = [v4 hasError];
  if (v34)
  {
LABEL_43:
    v35 = 0;
  }

  else
  {
LABEL_44:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEditConfusionPair index](self, "index")}];
  v5 = [(BMDictationUserEditConfusionPair *)self recognizedTokens];
  v6 = [(BMDictationUserEditConfusionPair *)self correctedTokens];
  v7 = [v3 initWithFormat:@"BMDictationUserEditConfusionPair with index: %@, recognizedTokens: %@, correctedTokens: %@", v4, v5, v6];

  return v7;
}

- (BMDictationUserEditConfusionPair)initWithIndex:(id)a3 recognizedTokens:(id)a4 correctedTokens:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BMDictationUserEditConfusionPair;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v8)
    {
      v11->_hasIndex = 1;
      v12 = [v8 unsignedIntValue];
    }

    else
    {
      v12 = 0;
      v11->_hasIndex = 0;
    }

    v11->_index = v12;
    objc_storeStrong(&v11->_recognizedTokens, a4);
    objc_storeStrong(&v11->_correctedTokens, a5);
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"index" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizedTokens" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"correctedTokens" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"index" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"recognizedTokens_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_177_82372];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"correctedTokens_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_179_82373];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __43__BMDictationUserEditConfusionPair_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _correctedTokensJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __43__BMDictationUserEditConfusionPair_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _recognizedTokensJSONArray];
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

    v8 = [[BMDictationUserEditConfusionPair alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end