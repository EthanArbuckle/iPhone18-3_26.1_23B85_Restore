@interface BMSafariBrowsingAssistantVisualComponent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariBrowsingAssistantVisualComponent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSafariBrowsingAssistantVisualComponent)initWithVisualComponentAttribute:(id)a3 visualComponentData:(id)a4 identifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariBrowsingAssistantVisualComponent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentAttribute];
    v7 = [v5 visualComponentAttribute];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentAttribute];
      v10 = [v5 visualComponentAttribute];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v13 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentData];
    v14 = [v5 visualComponentData];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentData];
      v17 = [v5 visualComponentData];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_16;
      }
    }

    if (!-[BMSafariBrowsingAssistantVisualComponent hasIdentifier](self, "hasIdentifier") && ![v5 hasIdentifier])
    {
      v12 = 1;
      goto LABEL_17;
    }

    if (-[BMSafariBrowsingAssistantVisualComponent hasIdentifier](self, "hasIdentifier") && [v5 hasIdentifier])
    {
      v19 = [(BMSafariBrowsingAssistantVisualComponent *)self identifier];
      v12 = v19 == [v5 identifier];
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentAttribute];
  v4 = [v3 jsonDictionary];

  v5 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentData];
  v6 = [v5 jsonDictionary];

  if ([(BMSafariBrowsingAssistantVisualComponent *)self hasIdentifier])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSafariBrowsingAssistantVisualComponent identifier](self, "identifier")}];
  }

  else
  {
    v7 = 0;
  }

  v14[0] = @"visualComponentAttribute";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v8;
  v14[1] = @"visualComponentData";
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v9;
  v14[2] = @"identifier";
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMSafariBrowsingAssistantVisualComponent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"visualComponentAttribute"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v28 = 0;
    v8 = [[BMSafariBrowsingAssistantVisualComponentAttribute alloc] initWithJSONDictionary:v9 error:&v28];
    v16 = v28;
    if (v16)
    {
      if (a4)
      {
        v16 = v16;
        *a4 = v16;
      }

      goto LABEL_31;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"visualComponentData"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v9;
      v27 = 0;
      v10 = [[BMSafariBrowsingAssistantVisualComponentData alloc] initWithJSONDictionary:v12 error:&v27];
      v17 = v27;
      if (v17)
      {
        if (a4)
        {
          v17 = v17;
          *a4 = v17;
        }

        v13 = 0;
        goto LABEL_12;
      }

LABEL_7:
      v11 = [v6 objectForKeyedSubscript:@"identifier"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v26 = objc_alloc(MEMORY[0x1E696ABC0]);
            v24 = *MEMORY[0x1E698F240];
            v29 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"identifier"];
            v30 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            *a4 = [v26 initWithDomain:v24 code:2 userInfo:v23];
          }

          v12 = 0;
          v13 = 0;
          goto LABEL_11;
        }

        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      self = [(BMSafariBrowsingAssistantVisualComponent *)self initWithVisualComponentAttribute:v8 visualComponentData:v10 identifier:v12];
      v13 = self;
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    if (a4)
    {
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v31 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponentData"];
      v32 = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v21 = [v25 initWithDomain:v20 code:2 userInfo:v12];
      v13 = 0;
      *a4 = v21;
      goto LABEL_12;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_13;
  }

  if (!a4)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v33 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponentAttribute"];
  v34[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v13 = 0;
  *a4 = [v18 initWithDomain:v19 code:2 userInfo:v9];
LABEL_13:

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantVisualComponent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_visualComponentAttribute)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentAttribute *)self->_visualComponentAttribute writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_visualComponentData)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentData *)self->_visualComponentData writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasIdentifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMSafariBrowsingAssistantVisualComponent;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_46;
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
        LOBYTE(v30) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasIdentifier = 1;
        while (1)
        {
          LOBYTE(v30) = 0;
          v22 = [v4 position] + 1;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v21 |= (v30 & 0x7F) << v19;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v13 = v20++ >= 9;
          if (v13)
          {
            v25 = 0;
            goto LABEL_42;
          }
        }

        if ([v4 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_42:
        v5->_identifier = v25;
      }

      else
      {
        if (v15 == 2)
        {
          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_45;
          }

          v16 = [[BMSafariBrowsingAssistantVisualComponentData alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_45;
          }

          v17 = 32;
        }

        else
        {
          if (v15 != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }

          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_45;
          }

          v16 = [[BMSafariBrowsingAssistantVisualComponentAttribute alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_45;
          }

          v17 = 24;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
      }

LABEL_43:
      v26 = [v4 position];
    }

    while (v26 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_45:
    v27 = 0;
  }

  else
  {
LABEL_46:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentAttribute];
  v5 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentData];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSafariBrowsingAssistantVisualComponent identifier](self, "identifier")}];
  v7 = [v3 initWithFormat:@"BMSafariBrowsingAssistantVisualComponent with visualComponentAttribute: %@, visualComponentData: %@, identifier: %@", v4, v5, v6];

  return v7;
}

- (BMSafariBrowsingAssistantVisualComponent)initWithVisualComponentAttribute:(id)a3 visualComponentData:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMSafariBrowsingAssistantVisualComponent;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_visualComponentAttribute, a3);
    objc_storeStrong(&v12->_visualComponentData, a4);
    if (v11)
    {
      v12->_hasIdentifier = 1;
      v13 = [v11 unsignedLongLongValue];
    }

    else
    {
      v13 = 0;
      v12->_hasIdentifier = 0;
    }

    v12->_identifier = v13;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponentAttribute" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualComponentData" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:3 type:5 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponentAttribute_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_516];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"visualComponentData_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_518];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:5 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __51__BMSafariBrowsingAssistantVisualComponent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 visualComponentData];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __51__BMSafariBrowsingAssistantVisualComponent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 visualComponentAttribute];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMSafariBrowsingAssistantVisualComponent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end