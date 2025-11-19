@interface BMMessagesSearchEventVisualComponent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSearchEventVisualComponent)initWithComponentType:(int)a3 resultAttribute:(id)a4 sectionAttribute:(id)a5 pageAttribute:(id)a6;
- (BMMessagesSearchEventVisualComponent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSearchEventVisualComponent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMessagesSearchEventVisualComponent *)self componentType];
    if (v6 == [v5 componentType])
    {
      v7 = [(BMMessagesSearchEventVisualComponent *)self resultAttribute];
      v8 = [v5 resultAttribute];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMMessagesSearchEventVisualComponent *)self resultAttribute];
        v11 = [v5 resultAttribute];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_10;
        }
      }

      v14 = [(BMMessagesSearchEventVisualComponent *)self sectionAttribute];
      v15 = [v5 sectionAttribute];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMMessagesSearchEventVisualComponent *)self sectionAttribute];
        v18 = [v5 sectionAttribute];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      v20 = [(BMMessagesSearchEventVisualComponent *)self pageAttribute];
      v21 = [v5 pageAttribute];
      if (v20 == v21)
      {
        v13 = 1;
      }

      else
      {
        v22 = [(BMMessagesSearchEventVisualComponent *)self pageAttribute];
        v23 = [v5 pageAttribute];
        v13 = [v22 isEqual:v23];
      }

      goto LABEL_16;
    }

LABEL_10:
    v13 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (id)jsonDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesSearchEventVisualComponent componentType](self, "componentType")}];
  v4 = [(BMMessagesSearchEventVisualComponent *)self resultAttribute];
  v5 = [v4 jsonDictionary];

  v6 = [(BMMessagesSearchEventVisualComponent *)self sectionAttribute];
  v7 = [v6 jsonDictionary];

  v8 = [(BMMessagesSearchEventVisualComponent *)self pageAttribute];
  v9 = [v8 jsonDictionary];

  v17[0] = @"componentType";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v10;
  v17[1] = @"resultAttribute";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v11;
  v17[2] = @"sectionAttribute";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v12;
  v17[3] = @"pageAttribute";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
  {
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v7)
    {
LABEL_11:
      if (v5)
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

  if (!v5)
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
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMMessagesSearchEventVisualComponent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"componentType"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v8 = 0;
          v17 = 0;
          goto LABEL_46;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"componentType"];
        v50[0] = v19;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
        v8 = 0;
        v17 = 0;
        *a4 = [v31 initWithDomain:v32 code:2 userInfo:v33];
        v16 = v33;
        goto LABEL_44;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesSearchEventVisualComponentTypeFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"resultAttribute"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = 0;
    goto LABEL_12;
  }

  v18 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v10;
    v42 = 0;
    v16 = [[BMMessagesSearchEventResultAttribute alloc] initWithJSONDictionary:v19 error:&v42];
    v20 = v42;
    if (v20)
    {
      if (v18)
      {
        v20 = v20;
        *v18 = v20;
      }

      v17 = 0;
      goto LABEL_44;
    }

    v37 = v16;

    a4 = v18;
LABEL_12:
    v11 = [v6 objectForKeyedSubscript:@"sectionAttribute"];
    v39 = v8;
    v12 = self;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v17 = 0;
          v16 = v37;
          goto LABEL_43;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"sectionAttribute"];
        v46 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v27 = [v34 initWithDomain:v26 code:2 userInfo:v14];
        v17 = 0;
        v28 = a4;
        v16 = v37;
        *v28 = v27;
LABEL_42:

LABEL_43:
        v19 = v10;
        v8 = v39;
        self = v12;
        goto LABEL_44;
      }

      v14 = v11;
      v41 = 0;
      v13 = [[BMMessagesSearchEventSectionAttribute alloc] initWithJSONDictionary:v14 error:&v41];
      v21 = v41;
      if (v21)
      {
        if (a4)
        {
          v21 = v21;
          *a4 = v21;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"pageAttribute"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
LABEL_18:
      v16 = v37;
      v17 = -[BMMessagesSearchEventVisualComponent initWithComponentType:resultAttribute:sectionAttribute:pageAttribute:](v12, "initWithComponentType:resultAttribute:sectionAttribute:pageAttribute:", [v39 intValue], v37, v13, v15);
      v12 = v17;
LABEL_41:

      goto LABEL_42;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v14;
      v40 = 0;
      v15 = [[BMMessagesSearchEventPageAttribute alloc] initWithJSONDictionary:v22 error:&v40];
      v23 = v40;
      if (!v23)
      {

        goto LABEL_18;
      }

      if (a4)
      {
        v23 = v23;
        *a4 = v23;
      }

LABEL_40:
      v17 = 0;
      v16 = v37;
      goto LABEL_41;
    }

    if (a4)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v43 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pageAttribute"];
      v44 = v15;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *a4 = [v36 initWithDomain:v35 code:2 userInfo:v22];
      goto LABEL_40;
    }

LABEL_47:
    v17 = 0;
    v16 = v37;
    goto LABEL_42;
  }

  if (!a4)
  {
    v17 = 0;
    goto LABEL_45;
  }

  v38 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = *MEMORY[0x1E698F240];
  v47 = *MEMORY[0x1E696A578];
  v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"resultAttribute"];
  v16 = v48;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  *v18 = [v38 initWithDomain:v24 code:2 userInfo:v25];

  v17 = 0;
  v19 = v10;
LABEL_44:

  v10 = v19;
LABEL_45:

LABEL_46:
  v29 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventVisualComponent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  componentType = self->_componentType;
  PBDataWriterWriteUint32Field();
  if (self->_resultAttribute)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventResultAttribute *)self->_resultAttribute writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_sectionAttribute)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventSectionAttribute *)self->_sectionAttribute writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_pageAttribute)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventPageAttribute *)self->_pageAttribute writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMMessagesSearchEventVisualComponent;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_51;
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
        if (v8++ >= 9)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_50;
          }

          v16 = [[BMMessagesSearchEventSectionAttribute alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_50;
          }

          v17 = 32;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_29:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_48;
          }

          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_50;
          }

          v16 = [[BMMessagesSearchEventPageAttribute alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_50;
          }

          v17 = 40;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v30) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v30 & 0x7F) << v18;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            if (v19++ > 8)
            {
              goto LABEL_46;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 5)
          {
LABEL_46:
            LODWORD(v20) = 0;
          }

          v5->_componentType = v20;
          goto LABEL_48;
        }

        if (v15 != 2)
        {
          goto LABEL_29;
        }

        v30 = 0;
        v31 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_50;
        }

        v16 = [[BMMessagesSearchEventResultAttribute alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_50;
        }

        v17 = 24;
      }

      v25 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_48:
      v26 = [v4 position];
    }

    while (v26 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_50:
    v27 = 0;
  }

  else
  {
LABEL_51:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMessagesSearchEventVisualComponentTypeAsString([(BMMessagesSearchEventVisualComponent *)self componentType]);
  v5 = [(BMMessagesSearchEventVisualComponent *)self resultAttribute];
  v6 = [(BMMessagesSearchEventVisualComponent *)self sectionAttribute];
  v7 = [(BMMessagesSearchEventVisualComponent *)self pageAttribute];
  v8 = [v3 initWithFormat:@"BMMessagesSearchEventVisualComponent with componentType: %@, resultAttribute: %@, sectionAttribute: %@, pageAttribute: %@", v4, v5, v6, v7];

  return v8;
}

- (BMMessagesSearchEventVisualComponent)initWithComponentType:(int)a3 resultAttribute:(id)a4 sectionAttribute:(id)a5 pageAttribute:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16.receiver = self;
  v16.super_class = BMMessagesSearchEventVisualComponent;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    v14->_componentType = a3;
    objc_storeStrong(&v14->_resultAttribute, a4);
    objc_storeStrong(&v14->_sectionAttribute, a5);
    objc_storeStrong(&v14->_pageAttribute, a6);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"componentType" number:1 type:4 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resultAttribute" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sectionAttribute" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pageAttribute" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"componentType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"resultAttribute_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_861];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"sectionAttribute_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_863];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pageAttribute_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_865];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __47__BMMessagesSearchEventVisualComponent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 pageAttribute];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __47__BMMessagesSearchEventVisualComponent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 sectionAttribute];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __47__BMMessagesSearchEventVisualComponent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 resultAttribute];
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

    v8 = [[BMMessagesSearchEventVisualComponent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end