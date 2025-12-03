@interface BMMLSEShareSheetMetricsSystemResourceUsage
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEShareSheetMetricsSystemResourceUsage)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMMLSEShareSheetMetricsSystemResourceUsage)initWithSoftwareTracing:(id)tracing;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEShareSheetMetricsSystemResourceUsage

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    softwareTracing = [(BMMLSEShareSheetMetricsSystemResourceUsage *)self softwareTracing];
    softwareTracing2 = [v5 softwareTracing];
    if (softwareTracing == softwareTracing2)
    {
      v10 = 1;
    }

    else
    {
      softwareTracing3 = [(BMMLSEShareSheetMetricsSystemResourceUsage *)self softwareTracing];
      softwareTracing4 = [v5 softwareTracing];
      v10 = [softwareTracing3 isEqual:softwareTracing4];
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
  softwareTracing = [(BMMLSEShareSheetMetricsSystemResourceUsage *)self softwareTracing];
  jsonDictionary = [softwareTracing jsonDictionary];

  v8 = @"softwareTracing";
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

- (BMMLSEShareSheetMetricsSystemResourceUsage)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = [dictionary objectForKeyedSubscript:@"softwareTracing"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    self = [(BMMLSEShareSheetMetricsSystemResourceUsage *)self initWithSoftwareTracing:v7];
    p_isa = &self->super.super.isa;
LABEL_13:

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v15 = 0;
    v7 = [[BMSpanEvent alloc] initWithJSONDictionary:v8 error:&v15];
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
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"softwareTracing"];
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
  [(BMMLSEShareSheetMetricsSystemResourceUsage *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  if (self->_softwareTracing)
  {
    toCopy = to;
    PBDataWriterPlaceMark();
    [(BMSpanEvent *)self->_softwareTracing writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v20.receiver = self;
  v20.super_class = BMMLSEShareSheetMetricsSystemResourceUsage;
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

      if ((v14 >> 3) == 6)
      {
        v21[0] = 0;
        v21[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_25;
        }

        v15 = [[BMSpanEvent alloc] initByReadFrom:fromCopy];
        if (!v15)
        {
          goto LABEL_25;
        }

        softwareTracing = v5->_softwareTracing;
        v5->_softwareTracing = v15;

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
  softwareTracing = [(BMMLSEShareSheetMetricsSystemResourceUsage *)self softwareTracing];
  v5 = [v3 initWithFormat:@"BMMLSEShareSheetMetricsSystemResourceUsage with softwareTracing: %@", softwareTracing];

  return v5;
}

- (BMMLSEShareSheetMetricsSystemResourceUsage)initWithSoftwareTracing:(id)tracing
{
  tracingCopy = tracing;
  v8.receiver = self;
  v8.super_class = BMMLSEShareSheetMetricsSystemResourceUsage;
  v6 = [(BMEventBase *)&v8 init];
  if (v6)
  {
    v6->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v6->_softwareTracing, tracing);
  }

  return v6;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duration" number:1 type:0 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userType" number:2 type:4 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeoutOccured" number:3 type:12 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subidentifier" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"softwareTracing" number:6 type:14 subMessageClass:objc_opt_class()];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duration" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeoutOccured" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subidentifier" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"softwareTracing_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_61];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __53__BMMLSEShareSheetMetricsSystemResourceUsage_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 softwareTracing];
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

    v8 = [[BMMLSEShareSheetMetricsSystemResourceUsage alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end