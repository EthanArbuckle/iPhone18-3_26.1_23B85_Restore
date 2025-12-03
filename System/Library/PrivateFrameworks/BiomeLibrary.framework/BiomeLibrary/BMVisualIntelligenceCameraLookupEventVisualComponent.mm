@interface BMVisualIntelligenceCameraLookupEventVisualComponent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMVisualIntelligenceCameraLookupEventVisualComponent)initWithComponentType:(int)type pillAttribute:(id)attribute;
- (BMVisualIntelligenceCameraLookupEventVisualComponent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMVisualIntelligenceCameraLookupEventVisualComponent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    componentType = [(BMVisualIntelligenceCameraLookupEventVisualComponent *)self componentType];
    if (componentType == [v5 componentType])
    {
      pillAttribute = [(BMVisualIntelligenceCameraLookupEventVisualComponent *)self pillAttribute];
      pillAttribute2 = [v5 pillAttribute];
      if (pillAttribute == pillAttribute2)
      {
        v11 = 1;
      }

      else
      {
        pillAttribute3 = [(BMVisualIntelligenceCameraLookupEventVisualComponent *)self pillAttribute];
        pillAttribute4 = [v5 pillAttribute];
        v11 = [pillAttribute3 isEqual:pillAttribute4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)jsonDictionary
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMVisualIntelligenceCameraLookupEventVisualComponent componentType](self, "componentType")}];
  pillAttribute = [(BMVisualIntelligenceCameraLookupEventVisualComponent *)self pillAttribute];
  jsonDictionary = [pillAttribute jsonDictionary];

  v11[0] = @"componentType";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = @"pillAttribute";
  v12[0] = null;
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (jsonDictionary)
  {
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BMVisualIntelligenceCameraLookupEventVisualComponent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
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
          selfCopy = 0;
          goto LABEL_15;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v26 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"componentType"];
        v27[0] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v11];
        v8 = 0;
        selfCopy = 0;
        *error = v21;
        goto LABEL_13;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMVisualIntelligenceCameraLookupEventComponentTypeFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"pillAttribute"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = 0;
LABEL_12:
    self = -[BMVisualIntelligenceCameraLookupEventVisualComponent initWithComponentType:pillAttribute:](self, "initWithComponentType:pillAttribute:", [v8 intValue], v11);
    selfCopy = self;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v10;
    v23 = 0;
    v11 = [[BMVisualIntelligenceCameraLookupEventPillAttribute alloc] initWithJSONDictionary:v15 error:&v23];
    v16 = v23;
    if (v16)
    {
      if (error)
      {
        v16 = v16;
        *error = v16;
      }

      selfCopy = 0;
      v10 = v15;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_14;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v24 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pillAttribute"];
  v25 = v11;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  *error = [v22 initWithDomain:v17 code:2 userInfo:v18];

  selfCopy = 0;
LABEL_13:

LABEL_14:
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMVisualIntelligenceCameraLookupEventVisualComponent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  componentType = self->_componentType;
  PBDataWriterWriteUint32Field();
  if (self->_pillAttribute)
  {
    PBDataWriterPlaceMark();
    [(BMVisualIntelligenceCameraLookupEventPillAttribute *)self->_pillAttribute writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMVisualIntelligenceCameraLookupEventVisualComponent;
  v5 = [(BMEventBase *)&v27 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v28[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v28[0] & 0x7F) << v7;
        if ((v28[0] & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v28[0] = 0;
        v28[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_40;
        }

        v22 = [[BMVisualIntelligenceCameraLookupEventPillAttribute alloc] initByReadFrom:fromCopy];
        if (!v22)
        {
          goto LABEL_40;
        }

        pillAttribute = v5->_pillAttribute;
        v5->_pillAttribute = v22;

        PBReaderRecallMark();
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v28[0]) = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v28 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v28[0] & 0x7F) << v15;
          if ((v28[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          if (v16++ > 8)
          {
            goto LABEL_36;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v17 > 2)
        {
LABEL_36:
          LODWORD(v17) = 0;
        }

        v5->_componentType = v17;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_40;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_40:
    v25 = 0;
  }

  else
  {
LABEL_41:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMVisualIntelligenceCameraLookupEventComponentTypeAsString([(BMVisualIntelligenceCameraLookupEventVisualComponent *)self componentType]);
  pillAttribute = [(BMVisualIntelligenceCameraLookupEventVisualComponent *)self pillAttribute];
  v6 = [v3 initWithFormat:@"BMVisualIntelligenceCameraLookupEventVisualComponent with componentType: %@, pillAttribute: %@", v4, pillAttribute];

  return v6;
}

- (BMVisualIntelligenceCameraLookupEventVisualComponent)initWithComponentType:(int)type pillAttribute:(id)attribute
{
  attributeCopy = attribute;
  v10.receiver = self;
  v10.super_class = BMVisualIntelligenceCameraLookupEventVisualComponent;
  v8 = [(BMEventBase *)&v10 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    v8->_componentType = type;
    objc_storeStrong(&v8->_pillAttribute, attribute);
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"componentType" number:1 type:4 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pillAttribute" number:2 type:14 subMessageClass:objc_opt_class()];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"componentType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pillAttribute_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_630_110302];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __63__BMVisualIntelligenceCameraLookupEventVisualComponent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 pillAttribute];
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

    v8 = [[BMVisualIntelligenceCameraLookupEventVisualComponent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end