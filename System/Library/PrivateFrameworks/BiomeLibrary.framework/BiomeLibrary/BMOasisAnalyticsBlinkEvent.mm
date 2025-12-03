@interface BMOasisAnalyticsBlinkEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsBlinkEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMOasisAnalyticsBlinkEvent)initWithMetadata:(id)metadata payload:(id)payload qualityTrace:(id)trace;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsBlinkEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    metadata = [(BMOasisAnalyticsBlinkEvent *)self metadata];
    metadata2 = [v5 metadata];
    v8 = metadata2;
    if (metadata == metadata2)
    {
    }

    else
    {
      metadata3 = [(BMOasisAnalyticsBlinkEvent *)self metadata];
      metadata4 = [v5 metadata];
      v11 = [metadata3 isEqual:metadata4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    payload = [(BMOasisAnalyticsBlinkEvent *)self payload];
    payload2 = [v5 payload];
    v15 = payload2;
    if (payload == payload2)
    {
    }

    else
    {
      payload3 = [(BMOasisAnalyticsBlinkEvent *)self payload];
      payload4 = [v5 payload];
      v18 = [payload3 isEqual:payload4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    qualityTrace = [(BMOasisAnalyticsBlinkEvent *)self qualityTrace];
    qualityTrace2 = [v5 qualityTrace];
    if (qualityTrace == qualityTrace2)
    {
      v12 = 1;
    }

    else
    {
      qualityTrace3 = [(BMOasisAnalyticsBlinkEvent *)self qualityTrace];
      qualityTrace4 = [v5 qualityTrace];
      v12 = [qualityTrace3 isEqual:qualityTrace4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v16[3] = *MEMORY[0x1E69E9840];
  metadata = [(BMOasisAnalyticsBlinkEvent *)self metadata];
  jsonDictionary = [metadata jsonDictionary];

  payload = [(BMOasisAnalyticsBlinkEvent *)self payload];
  jsonDictionary2 = [payload jsonDictionary];

  qualityTrace = [(BMOasisAnalyticsBlinkEvent *)self qualityTrace];
  jsonDictionary3 = [qualityTrace jsonDictionary];

  v15[0] = @"metadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v15[1] = @"payload";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v15[2] = @"qualityTrace";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = null3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (jsonDictionary3)
  {
    if (jsonDictionary2)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (jsonDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!jsonDictionary2)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (jsonDictionary)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMOasisAnalyticsBlinkEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v29 = 0;
    v8 = [[BMOasisAnalyticsMetadata alloc] initWithJSONDictionary:v9 error:&v29];
    v14 = v29;
    if (v14)
    {
      if (error)
      {
        v14 = v14;
        *error = v14;
      }

LABEL_30:
      selfCopy = 0;
      goto LABEL_36;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"payload"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v28 = 0;
      v10 = [[BMOasisAnalyticsBlinkSample alloc] initWithJSONDictionary:v11 error:&v28];
      v15 = v28;
      if (v15)
      {
        if (error)
        {
          v15 = v15;
          *error = v15;
        }

        goto LABEL_38;
      }

LABEL_7:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"qualityTrace"];
      if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = 0;
LABEL_10:
        self = [(BMOasisAnalyticsBlinkEvent *)self initWithMetadata:v8 payload:v10 qualityTrace:v12];
        selfCopy = self;
LABEL_34:

        goto LABEL_35;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v11;
        v27 = 0;
        v12 = [[BMOasisAnalyticsQualityTrace alloc] initWithJSONDictionary:v16 error:&v27];
        v17 = v27;
        if (!v17)
        {

          goto LABEL_10;
        }

        if (error)
        {
          v17 = v17;
          *error = v17;
        }

LABEL_33:
        selfCopy = 0;
        goto LABEL_34;
      }

      if (error)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v30 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"qualityTrace"];
        v31 = v12;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *error = [v26 initWithDomain:v24 code:2 userInfo:v16];
        goto LABEL_33;
      }

LABEL_38:
      selfCopy = 0;
      goto LABEL_35;
    }

    if (error)
    {
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v32 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"payload"];
      v33 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v21 = [v25 initWithDomain:v20 code:2 userInfo:v11];
      selfCopy = 0;
      *error = v21;
LABEL_35:

      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_37;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v34 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
  v35[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  selfCopy = 0;
  *error = [v18 initWithDomain:v19 code:2 userInfo:v9];
LABEL_36:

LABEL_37:
  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsBlinkEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_metadata)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsMetadata *)self->_metadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_payload)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsBlinkSample *)self->_payload writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_qualityTrace)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsQualityTrace *)self->_qualityTrace writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMOasisAnalyticsBlinkEvent;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_35;
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
        LOBYTE(v23) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v23 & 0x7F) << v7;
        if ((v23 & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_34;
        }

        v16 = [[BMOasisAnalyticsQualityTrace alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = 40;
      }

      else if (v15 == 2)
      {
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_34;
        }

        v16 = [[BMOasisAnalyticsBlinkSample alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = 32;
      }

      else
      {
        if (v15 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_34;
        }

        v16 = [[BMOasisAnalyticsMetadata alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = 24;
      }

      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_32:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_34:
    v20 = 0;
  }

  else
  {
LABEL_35:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  metadata = [(BMOasisAnalyticsBlinkEvent *)self metadata];
  payload = [(BMOasisAnalyticsBlinkEvent *)self payload];
  qualityTrace = [(BMOasisAnalyticsBlinkEvent *)self qualityTrace];
  v7 = [v3 initWithFormat:@"BMOasisAnalyticsBlinkEvent with metadata: %@, payload: %@, qualityTrace: %@", metadata, payload, qualityTrace];

  return v7;
}

- (BMOasisAnalyticsBlinkEvent)initWithMetadata:(id)metadata payload:(id)payload qualityTrace:(id)trace
{
  metadataCopy = metadata;
  payloadCopy = payload;
  traceCopy = trace;
  v14.receiver = self;
  v14.super_class = BMOasisAnalyticsBlinkEvent;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_metadata, metadata);
    objc_storeStrong(&v12->_payload, payload);
    objc_storeStrong(&v12->_qualityTrace, trace);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payload" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qualityTrace" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_67];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payload_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_69_112675];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"qualityTrace_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_71_112676];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __37__BMOasisAnalyticsBlinkEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 qualityTrace];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __37__BMOasisAnalyticsBlinkEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 payload];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __37__BMOasisAnalyticsBlinkEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadata];
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

    v8 = [[BMOasisAnalyticsBlinkEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end