@interface BMOasisAnalyticsSystemInfo
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsSystemInfo)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMOasisAnalyticsSystemInfo)initWithPayload:(id)payload;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsSystemInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    payload = [(BMOasisAnalyticsSystemInfo *)self payload];
    payload2 = [v5 payload];
    if (payload == payload2)
    {
      v10 = 1;
    }

    else
    {
      payload3 = [(BMOasisAnalyticsSystemInfo *)self payload];
      payload4 = [v5 payload];
      v10 = [payload3 isEqual:payload4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v9[1] = *MEMORY[0x1E69E9840];
  payload = [(BMOasisAnalyticsSystemInfo *)self payload];
  jsonDictionary = [payload jsonDictionary];

  v8 = @"payload";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[0] = null;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if (!jsonDictionary)
  {
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BMOasisAnalyticsSystemInfo)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = [dictionary objectForKeyedSubscript:@"payload"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    self = [(BMOasisAnalyticsSystemInfo *)self initWithPayload:v7];
    p_isa = &self->super.super.isa;
LABEL_13:

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v15 = 0;
    v7 = [[BMOasisAnalyticsSystemInfoPayload alloc] initWithJSONDictionary:v8 error:&v15];
    v9 = v15;
    if (!v9)
    {

      goto LABEL_4;
    }

    if (p_isa)
    {
      v9 = v9;
      *p_isa = v9;
    }

LABEL_12:
    p_isa = 0;
    goto LABEL_13;
  }

  if (p_isa)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = *MEMORY[0x1E698F240];
    v16 = *MEMORY[0x1E696A578];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"payload"];
    v17[0] = v7;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *p_isa = [v10 initWithDomain:v11 code:2 userInfo:v12];

    goto LABEL_12;
  }

LABEL_14:

  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsSystemInfo *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  if (self->_payload)
  {
    toCopy = to;
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsSystemInfoPayload *)self->_payload writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v20.receiver = self;
  v20.super_class = BMOasisAnalyticsSystemInfo;
  v5 = [(BMEventBase *)&v20 init];
  if (!v5)
  {
    goto LABEL_26;
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
        LOBYTE(v21[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v21 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v21[0] & 0x7F) << v7;
        if ((v21[0] & 0x80) == 0)
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

      if ((v14 >> 3) == 1)
      {
        v21[0] = 0;
        v21[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_25;
        }

        v15 = [[BMOasisAnalyticsSystemInfoPayload alloc] initByReadFrom:fromCopy];
        if (!v15)
        {
          goto LABEL_25;
        }

        payload = v5->_payload;
        v5->_payload = v15;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_25;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_25:
    v18 = 0;
  }

  else
  {
LABEL_26:
    v18 = v5;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  payload = [(BMOasisAnalyticsSystemInfo *)self payload];
  v5 = [v3 initWithFormat:@"BMOasisAnalyticsSystemInfo with payload: %@", payload];

  return v5;
}

- (BMOasisAnalyticsSystemInfo)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v8.receiver = self;
  v8.super_class = BMOasisAnalyticsSystemInfo;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_payload, payload);
  }

  return v6;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"payload" number:1 type:14 subMessageClass:objc_opt_class()];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"payload_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1067];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id __37__BMOasisAnalyticsSystemInfo_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 payload];
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

    v8 = [[BMOasisAnalyticsSystemInfo alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end