@interface BMMessagesSearchEventVisualComponent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSearchEventVisualComponent)initWithComponentType:(int)type resultAttribute:(id)attribute sectionAttribute:(id)sectionAttribute pageAttribute:(id)pageAttribute;
- (BMMessagesSearchEventVisualComponent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesSearchEventVisualComponent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    componentType = [(BMMessagesSearchEventVisualComponent *)self componentType];
    if (componentType == [v5 componentType])
    {
      resultAttribute = [(BMMessagesSearchEventVisualComponent *)self resultAttribute];
      resultAttribute2 = [v5 resultAttribute];
      v9 = resultAttribute2;
      if (resultAttribute == resultAttribute2)
      {
      }

      else
      {
        resultAttribute3 = [(BMMessagesSearchEventVisualComponent *)self resultAttribute];
        resultAttribute4 = [v5 resultAttribute];
        v12 = [resultAttribute3 isEqual:resultAttribute4];

        if (!v12)
        {
          goto LABEL_10;
        }
      }

      sectionAttribute = [(BMMessagesSearchEventVisualComponent *)self sectionAttribute];
      sectionAttribute2 = [v5 sectionAttribute];
      v16 = sectionAttribute2;
      if (sectionAttribute == sectionAttribute2)
      {
      }

      else
      {
        sectionAttribute3 = [(BMMessagesSearchEventVisualComponent *)self sectionAttribute];
        sectionAttribute4 = [v5 sectionAttribute];
        v19 = [sectionAttribute3 isEqual:sectionAttribute4];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      pageAttribute = [(BMMessagesSearchEventVisualComponent *)self pageAttribute];
      pageAttribute2 = [v5 pageAttribute];
      if (pageAttribute == pageAttribute2)
      {
        v13 = 1;
      }

      else
      {
        pageAttribute3 = [(BMMessagesSearchEventVisualComponent *)self pageAttribute];
        pageAttribute4 = [v5 pageAttribute];
        v13 = [pageAttribute3 isEqual:pageAttribute4];
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
  resultAttribute = [(BMMessagesSearchEventVisualComponent *)self resultAttribute];
  jsonDictionary = [resultAttribute jsonDictionary];

  sectionAttribute = [(BMMessagesSearchEventVisualComponent *)self sectionAttribute];
  jsonDictionary2 = [sectionAttribute jsonDictionary];

  pageAttribute = [(BMMessagesSearchEventVisualComponent *)self pageAttribute];
  jsonDictionary3 = [pageAttribute jsonDictionary];

  v17[0] = @"componentType";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"resultAttribute";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"sectionAttribute";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v17[3] = @"pageAttribute";
  null4 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (jsonDictionary3)
  {
    if (jsonDictionary2)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (jsonDictionary2)
    {
LABEL_11:
      if (jsonDictionary)
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

  if (!jsonDictionary)
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

- (BMMessagesSearchEventVisualComponent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v50[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"componentType"];
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
        if (!error)
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
        *error = [v31 initWithDomain:v32 code:2 userInfo:v33];
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

  v10 = [dictionaryCopy objectForKeyedSubscript:@"resultAttribute"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = 0;
    goto LABEL_12;
  }

  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v10;
    v42 = 0;
    v16 = [[BMMessagesSearchEventResultAttribute alloc] initWithJSONDictionary:v19 error:&v42];
    v20 = v42;
    if (v20)
    {
      if (errorCopy)
      {
        v20 = v20;
        *errorCopy = v20;
      }

      v17 = 0;
      goto LABEL_44;
    }

    v37 = v16;

    error = errorCopy;
LABEL_12:
    v11 = [dictionaryCopy objectForKeyedSubscript:@"sectionAttribute"];
    v39 = v8;
    selfCopy = self;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        errorCopy2 = error;
        v16 = v37;
        *errorCopy2 = v27;
LABEL_42:

LABEL_43:
        v19 = v10;
        v8 = v39;
        self = selfCopy;
        goto LABEL_44;
      }

      v14 = v11;
      v41 = 0;
      v13 = [[BMMessagesSearchEventSectionAttribute alloc] initWithJSONDictionary:v14 error:&v41];
      v21 = v41;
      if (v21)
      {
        if (error)
        {
          v21 = v21;
          *error = v21;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"pageAttribute"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
LABEL_18:
      v16 = v37;
      v17 = -[BMMessagesSearchEventVisualComponent initWithComponentType:resultAttribute:sectionAttribute:pageAttribute:](selfCopy, "initWithComponentType:resultAttribute:sectionAttribute:pageAttribute:", [v39 intValue], v37, v13, v15);
      selfCopy = v17;
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

      if (error)
      {
        v23 = v23;
        *error = v23;
      }

LABEL_40:
      v17 = 0;
      v16 = v37;
      goto LABEL_41;
    }

    if (error)
    {
      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v43 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pageAttribute"];
      v44 = v15;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *error = [v36 initWithDomain:v35 code:2 userInfo:v22];
      goto LABEL_40;
    }

LABEL_47:
    v17 = 0;
    v16 = v37;
    goto LABEL_42;
  }

  if (!error)
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
  *errorCopy = [v38 initWithDomain:v24 code:2 userInfo:v25];

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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  componentType = self->_componentType;
  PBDataWriterWriteUint32Field();
  if (self->_resultAttribute)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventResultAttribute *)self->_resultAttribute writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_sectionAttribute)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventSectionAttribute *)self->_sectionAttribute writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_pageAttribute)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSearchEventPageAttribute *)self->_pageAttribute writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMMessagesSearchEventVisualComponent;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_51;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v30) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v16 = [[BMMessagesSearchEventSectionAttribute alloc] initByReadFrom:fromCopy];
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

          v16 = [[BMMessagesSearchEventPageAttribute alloc] initByReadFrom:fromCopy];
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
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v20 > 5)
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

        v16 = [[BMMessagesSearchEventResultAttribute alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  resultAttribute = [(BMMessagesSearchEventVisualComponent *)self resultAttribute];
  sectionAttribute = [(BMMessagesSearchEventVisualComponent *)self sectionAttribute];
  pageAttribute = [(BMMessagesSearchEventVisualComponent *)self pageAttribute];
  v8 = [v3 initWithFormat:@"BMMessagesSearchEventVisualComponent with componentType: %@, resultAttribute: %@, sectionAttribute: %@, pageAttribute: %@", v4, resultAttribute, sectionAttribute, pageAttribute];

  return v8;
}

- (BMMessagesSearchEventVisualComponent)initWithComponentType:(int)type resultAttribute:(id)attribute sectionAttribute:(id)sectionAttribute pageAttribute:(id)pageAttribute
{
  attributeCopy = attribute;
  sectionAttributeCopy = sectionAttribute;
  pageAttributeCopy = pageAttribute;
  v16.receiver = self;
  v16.super_class = BMMessagesSearchEventVisualComponent;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    v14->_componentType = type;
    objc_storeStrong(&v14->_resultAttribute, attribute);
    objc_storeStrong(&v14->_sectionAttribute, sectionAttribute);
    objc_storeStrong(&v14->_pageAttribute, pageAttribute);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

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