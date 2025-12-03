@interface BMSafariBrowsingAssistantVisualComponent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantVisualComponent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSafariBrowsingAssistantVisualComponent)initWithVisualComponentAttribute:(id)attribute visualComponentData:(id)data identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantVisualComponent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    visualComponentAttribute = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentAttribute];
    visualComponentAttribute2 = [v5 visualComponentAttribute];
    v8 = visualComponentAttribute2;
    if (visualComponentAttribute == visualComponentAttribute2)
    {
    }

    else
    {
      visualComponentAttribute3 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentAttribute];
      visualComponentAttribute4 = [v5 visualComponentAttribute];
      v11 = [visualComponentAttribute3 isEqual:visualComponentAttribute4];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    visualComponentData = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentData];
    visualComponentData2 = [v5 visualComponentData];
    v15 = visualComponentData2;
    if (visualComponentData == visualComponentData2)
    {
    }

    else
    {
      visualComponentData3 = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentData];
      visualComponentData4 = [v5 visualComponentData];
      v18 = [visualComponentData3 isEqual:visualComponentData4];

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
      identifier = [(BMSafariBrowsingAssistantVisualComponent *)self identifier];
      v12 = identifier == [v5 identifier];
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
  visualComponentAttribute = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentAttribute];
  jsonDictionary = [visualComponentAttribute jsonDictionary];

  visualComponentData = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentData];
  jsonDictionary2 = [visualComponentData jsonDictionary];

  if ([(BMSafariBrowsingAssistantVisualComponent *)self hasIdentifier])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSafariBrowsingAssistantVisualComponent identifier](self, "identifier")}];
  }

  else
  {
    v7 = 0;
  }

  v14[0] = @"visualComponentAttribute";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"visualComponentData";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"identifier";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v7)
  {
    if (jsonDictionary2)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (jsonDictionary)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!jsonDictionary2)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (jsonDictionary)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMSafariBrowsingAssistantVisualComponent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"visualComponentAttribute"];
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
      if (error)
      {
        v16 = v16;
        *error = v16;
      }

      goto LABEL_31;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"visualComponentData"];
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
        if (error)
        {
          v17 = v17;
          *error = v17;
        }

        selfCopy = 0;
        goto LABEL_12;
      }

LABEL_7:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v26 = objc_alloc(MEMORY[0x1E696ABC0]);
            v24 = *MEMORY[0x1E698F240];
            v29 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"identifier"];
            v30 = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            *error = [v26 initWithDomain:v24 code:2 userInfo:v23];
          }

          v12 = 0;
          selfCopy = 0;
          goto LABEL_11;
        }

        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      self = [(BMSafariBrowsingAssistantVisualComponent *)self initWithVisualComponentAttribute:v8 visualComponentData:v10 identifier:v12];
      selfCopy = self;
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    if (error)
    {
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v31 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponentData"];
      v32 = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v21 = [v25 initWithDomain:v20 code:2 userInfo:v12];
      selfCopy = 0;
      *error = v21;
      goto LABEL_12;
    }

LABEL_31:
    selfCopy = 0;
    goto LABEL_13;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_14;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v33 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"visualComponentAttribute"];
  v34[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  selfCopy = 0;
  *error = [v18 initWithDomain:v19 code:2 userInfo:v9];
LABEL_13:

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantVisualComponent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_visualComponentAttribute)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentAttribute *)self->_visualComponentAttribute writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_visualComponentData)
  {
    PBDataWriterPlaceMark();
    [(BMSafariBrowsingAssistantVisualComponentData *)self->_visualComponentData writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIdentifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMSafariBrowsingAssistantVisualComponent;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_46;
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
        v13 = v8++ >= 9;
        if (v13)
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
      if ((v14 >> 3) == 3)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v5->_hasIdentifier = 1;
        while (1)
        {
          LOBYTE(v30) = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if ([fromCopy hasError])
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

          v16 = [[BMSafariBrowsingAssistantVisualComponentData alloc] initByReadFrom:fromCopy];
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

          v16 = [[BMSafariBrowsingAssistantVisualComponentAttribute alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  visualComponentAttribute = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentAttribute];
  visualComponentData = [(BMSafariBrowsingAssistantVisualComponent *)self visualComponentData];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSafariBrowsingAssistantVisualComponent identifier](self, "identifier")}];
  v7 = [v3 initWithFormat:@"BMSafariBrowsingAssistantVisualComponent with visualComponentAttribute: %@, visualComponentData: %@, identifier: %@", visualComponentAttribute, visualComponentData, v6];

  return v7;
}

- (BMSafariBrowsingAssistantVisualComponent)initWithVisualComponentAttribute:(id)attribute visualComponentData:(id)data identifier:(id)identifier
{
  attributeCopy = attribute;
  dataCopy = data;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = BMSafariBrowsingAssistantVisualComponent;
  v12 = [(BMEventBase *)&v15 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_visualComponentAttribute, attribute);
    objc_storeStrong(&v12->_visualComponentData, data);
    if (identifierCopy)
    {
      v12->_hasIdentifier = 1;
      unsignedLongLongValue = [identifierCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v12->_hasIdentifier = 0;
    }

    v12->_identifier = unsignedLongLongValue;
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