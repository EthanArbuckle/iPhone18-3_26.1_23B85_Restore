@interface BMOasisAnalyticsSubmapCreatedEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOasisAnalyticsSubmapCreatedEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMOasisAnalyticsSubmapCreatedEvent)initWithQualityTrace:(id)a3 metadata:(id)a4 payload:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOasisAnalyticsSubmapCreatedEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMOasisAnalyticsSubmapCreatedEvent *)self qualityTrace];
    v7 = [v5 qualityTrace];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMOasisAnalyticsSubmapCreatedEvent *)self qualityTrace];
      v10 = [v5 qualityTrace];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMOasisAnalyticsSubmapCreatedEvent *)self metadata];
    v14 = [v5 metadata];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMOasisAnalyticsSubmapCreatedEvent *)self metadata];
      v17 = [v5 metadata];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMOasisAnalyticsSubmapCreatedEvent *)self payload];
    v20 = [v5 payload];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMOasisAnalyticsSubmapCreatedEvent *)self payload];
      v22 = [v5 payload];
      v12 = [v21 isEqual:v22];
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
  v3 = [(BMOasisAnalyticsSubmapCreatedEvent *)self qualityTrace];
  v4 = [v3 jsonDictionary];

  v5 = [(BMOasisAnalyticsSubmapCreatedEvent *)self metadata];
  v6 = [v5 jsonDictionary];

  v7 = [(BMOasisAnalyticsSubmapCreatedEvent *)self payload];
  v8 = [v7 jsonDictionary];

  v15[0] = @"qualityTrace";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v9;
  v15[1] = @"metadata";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v15[2] = @"payload";
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  if (v8)
  {
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v4)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BMOasisAnalyticsSubmapCreatedEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"qualityTrace"];
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
    v8 = [[BMOasisAnalyticsQualityTrace alloc] initWithJSONDictionary:v9 error:&v29];
    v14 = v29;
    if (v14)
    {
      if (a4)
      {
        v14 = v14;
        *a4 = v14;
      }

LABEL_30:
      v13 = 0;
      goto LABEL_36;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"metadata"];
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
      v10 = [[BMOasisAnalyticsMetadata alloc] initWithJSONDictionary:v11 error:&v28];
      v15 = v28;
      if (v15)
      {
        if (a4)
        {
          v15 = v15;
          *a4 = v15;
        }

        goto LABEL_38;
      }

LABEL_7:
      v11 = [v6 objectForKeyedSubscript:@"payload"];
      if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = 0;
LABEL_10:
        self = [(BMOasisAnalyticsSubmapCreatedEvent *)self initWithQualityTrace:v8 metadata:v10 payload:v12];
        v13 = self;
LABEL_34:

        goto LABEL_35;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v11;
        v27 = 0;
        v12 = [[BMOasisAnalyticsSubmapCreatedType alloc] initWithJSONDictionary:v16 error:&v27];
        v17 = v27;
        if (!v17)
        {

          goto LABEL_10;
        }

        if (a4)
        {
          v17 = v17;
          *a4 = v17;
        }

LABEL_33:
        v13 = 0;
        goto LABEL_34;
      }

      if (a4)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v30 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"payload"];
        v31 = v12;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *a4 = [v26 initWithDomain:v24 code:2 userInfo:v16];
        goto LABEL_33;
      }

LABEL_38:
      v13 = 0;
      goto LABEL_35;
    }

    if (a4)
    {
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v32 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
      v33 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v21 = [v25 initWithDomain:v20 code:2 userInfo:v11];
      v13 = 0;
      *a4 = v21;
LABEL_35:

      goto LABEL_36;
    }

    goto LABEL_30;
  }

  if (!a4)
  {
    v13 = 0;
    goto LABEL_37;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v34 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"qualityTrace"];
  v35[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v13 = 0;
  *a4 = [v18 initWithDomain:v19 code:2 userInfo:v9];
LABEL_36:

LABEL_37:
  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsSubmapCreatedEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_qualityTrace)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsQualityTrace *)self->_qualityTrace writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_metadata)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsMetadata *)self->_metadata writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_payload)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsSubmapCreatedType *)self->_payload writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BMOasisAnalyticsSubmapCreatedEvent;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_35;
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
        LOBYTE(v23) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v23 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 1)
      {
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_34;
        }

        v16 = [[BMOasisAnalyticsMetadata alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = 32;
      }

      else if (v15 == 2)
      {
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_34;
        }

        v16 = [[BMOasisAnalyticsSubmapCreatedType alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_34;
        }

        v17 = 40;
      }

      else
      {
        if (v15 != 101)
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

        v16 = [[BMOasisAnalyticsQualityTrace alloc] initByReadFrom:v4];
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
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMOasisAnalyticsSubmapCreatedEvent *)self qualityTrace];
  v5 = [(BMOasisAnalyticsSubmapCreatedEvent *)self metadata];
  v6 = [(BMOasisAnalyticsSubmapCreatedEvent *)self payload];
  v7 = [v3 initWithFormat:@"BMOasisAnalyticsSubmapCreatedEvent with qualityTrace: %@, metadata: %@, payload: %@", v4, v5, v6];

  return v7;
}

- (BMOasisAnalyticsSubmapCreatedEvent)initWithQualityTrace:(id)a3 metadata:(id)a4 payload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = BMOasisAnalyticsSubmapCreatedEvent;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_qualityTrace, a3);
    objc_storeStrong(&v12->_metadata, a4);
    objc_storeStrong(&v12->_payload, a5);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qualityTrace" number:101 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:1 type:14 subMessageClass:{objc_opt_class(), v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payload" number:2 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"qualityTrace_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_634_96361];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_636_96362];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payload_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_638];
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __45__BMOasisAnalyticsSubmapCreatedEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 payload];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMOasisAnalyticsSubmapCreatedEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMOasisAnalyticsSubmapCreatedEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 qualityTrace];
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

    v8 = [[BMOasisAnalyticsSubmapCreatedEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end