@interface BMVisualIntelligenceCameraDetectedLabels
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMVisualIntelligenceCameraDetectedLabels)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMVisualIntelligenceCameraDetectedLabels)initWithLabel:(id)a3 taxonomy:(id)a4 type:(int)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_labelJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMVisualIntelligenceCameraDetectedLabels

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMVisualIntelligenceCameraDetectedLabels *)self label];
    v7 = [v5 label];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMVisualIntelligenceCameraDetectedLabels *)self label];
      v10 = [v5 label];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMVisualIntelligenceCameraDetectedLabels *)self taxonomy];
    v14 = [v5 taxonomy];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMVisualIntelligenceCameraDetectedLabels *)self taxonomy];
      v17 = [v5 taxonomy];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_12:

        goto LABEL_13;
      }
    }

    v19 = [(BMVisualIntelligenceCameraDetectedLabels *)self type];
    v12 = v19 == [v5 type];
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMVisualIntelligenceCameraDetectedLabels *)self _labelJSONArray];
  v4 = [(BMVisualIntelligenceCameraDetectedLabels *)self taxonomy];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraDetectedLabels type](self, "type")}];
  v12[0] = @"label";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"taxonomy";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"type";
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

- (id)_labelJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMVisualIntelligenceCameraDetectedLabels *)self label];
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

- (BMVisualIntelligenceCameraDetectedLabels)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"label"];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:v8];

  v40 = a4;
  if (v9)
  {

    v7 = 0;
LABEL_5:
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v7 = v7;
    v11 = [v7 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
    v13 = *v42;
LABEL_7:
    v14 = v6;
    v15 = self;
    v16 = 0;
    while (1)
    {
      if (*v42 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v17 = *(*(&v41 + 1) + 8 * v16);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v40)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"label"];
          v50 = v18;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v25 = v27;
          v26 = v28;
          goto LABEL_26;
        }

        goto LABEL_29;
      }

      [v10 addObject:v17];
      if (v12 == ++v16)
      {
        v12 = [v7 countByEnumeratingWithState:&v41 objects:v53 count:16];
        self = v15;
        v6 = v14;
        if (v12)
        {
          goto LABEL_7;
        }

LABEL_14:

        v18 = [v6 objectForKeyedSubscript:@"taxonomy"];
        if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            goto LABEL_17;
          }

          if (v40)
          {
            v39 = objc_alloc(MEMORY[0x1E696ABC0]);
            v33 = *MEMORY[0x1E698F240];
            v47 = *MEMORY[0x1E696A578];
            v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taxonomy"];
            v48 = v21;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
            v34 = [v39 initWithDomain:v33 code:2 userInfo:v20];
            v19 = 0;
            v22 = 0;
            *v40 = v34;
            goto LABEL_21;
          }

          v19 = 0;
          v22 = 0;
        }

        else
        {
          v19 = 0;
LABEL_17:
          v20 = [v6 objectForKeyedSubscript:@"type"];
          if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v21 = 0;
            goto LABEL_20;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
            goto LABEL_20;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraDetectedLabelsTypeFromString(v20)];
LABEL_20:
            self = -[BMVisualIntelligenceCameraDetectedLabels initWithLabel:taxonomy:type:](self, "initWithLabel:taxonomy:type:", v10, v19, [v21 intValue]);
            v22 = self;
          }

          else
          {
            if (v40)
            {
              v38 = objc_alloc(MEMORY[0x1E696ABC0]);
              v37 = *MEMORY[0x1E698F240];
              v45 = *MEMORY[0x1E696A578];
              v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
              v46 = v35;
              v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
              *v40 = [v38 initWithDomain:v37 code:2 userInfo:v36];
            }

            v21 = 0;
            v22 = 0;
          }

LABEL_21:

LABEL_27:
        }

LABEL_32:
        goto LABEL_33;
      }
    }

    if (v40)
    {
      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E698F240];
      v51 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"label"];
      v52 = v18;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v25 = v23;
      v26 = v24;
LABEL_26:
      self = v15;
      v22 = 0;
      *v40 = [v25 initWithDomain:v26 code:2 userInfo:v21];
      v19 = v7;
      v6 = v14;
      goto LABEL_27;
    }

LABEL_29:
    v22 = 0;
    v19 = v7;
    self = v15;
    v6 = v14;
    goto LABEL_32;
  }

  if (!v7)
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
    v29 = objc_alloc(MEMORY[0x1E696ABC0]);
    v30 = *MEMORY[0x1E698F240];
    v54 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"label"];
    v55[0] = v10;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v22 = 0;
    *a4 = [v29 initWithDomain:v30 code:2 userInfo:v19];
    goto LABEL_32;
  }

  v22 = 0;
LABEL_33:

  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraDetectedLabels *)self writeTo:v3];
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
  v5 = self->_label;
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

  if (self->_taxonomy)
  {
    PBDataWriterWriteStringField();
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMVisualIntelligenceCameraDetectedLabels;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_42;
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
        v35 = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v35 & 0x7F) << v8;
        if ((v35 & 0x80) == 0)
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
        v26 = PBReaderReadString();
        if (!v26)
        {
          goto LABEL_44;
        }

        v27 = v26;
        [v6 addObject:v26];
      }

      else if (v16 == 2)
      {
        v24 = PBReaderReadString();
        taxonomy = v5->_taxonomy;
        v5->_taxonomy = v24;
      }

      else if (v16 == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          v35 = 0;
          v20 = [v4 position] + 1;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (v35 & 0x7F) << v17;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          if (v18++ > 8)
          {
            goto LABEL_37;
          }
        }

        if (([v4 hasError] & 1) != 0 || v19 > 2)
        {
LABEL_37:
          LODWORD(v19) = 0;
        }

        v5->_type = v19;
      }

      else if (!PBReaderSkipValueWithTag())
      {
LABEL_44:

        goto LABEL_41;
      }

      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  v29 = [v6 copy];
  label = v5->_label;
  v5->_label = v29;

  v31 = [v4 hasError];
  if (v31)
  {
LABEL_41:
    v32 = 0;
  }

  else
  {
LABEL_42:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMVisualIntelligenceCameraDetectedLabels *)self label];
  v5 = [(BMVisualIntelligenceCameraDetectedLabels *)self taxonomy];
  v6 = BMVisualIntelligenceCameraDetectedLabelsTypeAsString([(BMVisualIntelligenceCameraDetectedLabels *)self type]);
  v7 = [v3 initWithFormat:@"BMVisualIntelligenceCameraDetectedLabels with label: %@, taxonomy: %@, type: %@", v4, v5, v6];

  return v7;
}

- (BMVisualIntelligenceCameraDetectedLabels)initWithLabel:(id)a3 taxonomy:(id)a4 type:(int)a5
{
  v9 = a3;
  v10 = a4;
  v13.receiver = self;
  v13.super_class = BMVisualIntelligenceCameraDetectedLabels;
  v11 = [(BMEventBase *)&v13 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v11->_label, a3);
    objc_storeStrong(&v11->_taxonomy, a4);
    v11->_type = a5;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"label" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taxonomy" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"label_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_50_105687];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taxonomy" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __51__BMVisualIntelligenceCameraDetectedLabels_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _labelJSONArray];
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

    v8 = [[BMVisualIntelligenceCameraDetectedLabels alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end