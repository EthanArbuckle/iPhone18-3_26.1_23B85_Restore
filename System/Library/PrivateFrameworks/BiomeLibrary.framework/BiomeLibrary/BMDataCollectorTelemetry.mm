@interface BMDataCollectorTelemetry
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDataCollectorTelemetry)initWithBundleId:(id)id uploadTelemetry:(id)telemetry processingTelemetry:(id)processingTelemetry deviceContext:(id)context;
- (BMDataCollectorTelemetry)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDataCollectorTelemetry

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleId = [(BMDataCollectorTelemetry *)self bundleId];
    bundleId2 = [v5 bundleId];
    v8 = bundleId2;
    if (bundleId == bundleId2)
    {
    }

    else
    {
      bundleId3 = [(BMDataCollectorTelemetry *)self bundleId];
      bundleId4 = [v5 bundleId];
      v11 = [bundleId3 isEqual:bundleId4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    uploadTelemetry = [(BMDataCollectorTelemetry *)self uploadTelemetry];
    uploadTelemetry2 = [v5 uploadTelemetry];
    v15 = uploadTelemetry2;
    if (uploadTelemetry == uploadTelemetry2)
    {
    }

    else
    {
      uploadTelemetry3 = [(BMDataCollectorTelemetry *)self uploadTelemetry];
      uploadTelemetry4 = [v5 uploadTelemetry];
      v18 = [uploadTelemetry3 isEqual:uploadTelemetry4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    processingTelemetry = [(BMDataCollectorTelemetry *)self processingTelemetry];
    processingTelemetry2 = [v5 processingTelemetry];
    v21 = processingTelemetry2;
    if (processingTelemetry == processingTelemetry2)
    {
    }

    else
    {
      processingTelemetry3 = [(BMDataCollectorTelemetry *)self processingTelemetry];
      processingTelemetry4 = [v5 processingTelemetry];
      v24 = [processingTelemetry3 isEqual:processingTelemetry4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    deviceContext = [(BMDataCollectorTelemetry *)self deviceContext];
    deviceContext2 = [v5 deviceContext];
    if (deviceContext == deviceContext2)
    {
      v12 = 1;
    }

    else
    {
      deviceContext3 = [(BMDataCollectorTelemetry *)self deviceContext];
      deviceContext4 = [v5 deviceContext];
      v12 = [deviceContext3 isEqual:deviceContext4];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  bundleId = [(BMDataCollectorTelemetry *)self bundleId];
  uploadTelemetry = [(BMDataCollectorTelemetry *)self uploadTelemetry];
  jsonDictionary = [uploadTelemetry jsonDictionary];

  processingTelemetry = [(BMDataCollectorTelemetry *)self processingTelemetry];
  jsonDictionary2 = [processingTelemetry jsonDictionary];

  deviceContext = [(BMDataCollectorTelemetry *)self deviceContext];
  jsonDictionary3 = [deviceContext jsonDictionary];

  v17[0] = @"bundleId";
  null = bundleId;
  if (!bundleId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"uploadTelemetry";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"processingTelemetry";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v17[3] = @"deviceContext";
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

      if (bundleId)
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
  if (bundleId)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMDataCollectorTelemetry)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v7 = 0;
        v15 = 0;
        selfCopy6 = self;
        goto LABEL_48;
      }

      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v43 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleId"];
      v44[0] = v16;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v7 = 0;
      v15 = 0;
      *error = [v19 initWithDomain:v20 code:2 userInfo:v9];
      goto LABEL_35;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"uploadTelemetry"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = 0;
LABEL_7:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"processingTelemetry"];
    v32 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          selfCopy6 = self;
          goto LABEL_45;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"processingTelemetry"];
        v40 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v15 = 0;
        *error = [v29 initWithDomain:v26 code:2 userInfo:v12];
        goto LABEL_43;
      }

      v12 = v10;
      v35 = 0;
      v11 = [[BMDataCollectorTelemetryProcessingTelemetry alloc] initWithJSONDictionary:v12 error:&v35];
      v18 = v35;
      if (v18)
      {
        if (error)
        {
          v18 = v18;
          *error = v18;
        }

LABEL_42:
        v15 = 0;
LABEL_43:
        selfCopy6 = self;
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceContext"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
LABEL_13:
      selfCopy6 = [(BMDataCollectorTelemetry *)self initWithBundleId:v32 uploadTelemetry:v9 processingTelemetry:v11 deviceContext:v13];
      v15 = selfCopy6;
LABEL_41:

LABEL_44:
LABEL_45:

      v16 = v8;
      v7 = v32;
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v12;
      v34 = 0;
      v13 = [[BMDataCollectorTelemetryDeviceContext alloc] initWithJSONDictionary:v21 error:&v34];
      v22 = v34;
      if (!v22)
      {

        goto LABEL_13;
      }

      if (error)
      {
        v22 = v22;
        *error = v22;
      }

LABEL_40:
      v15 = 0;
      selfCopy6 = self;
      goto LABEL_41;
    }

    if (error)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v37 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"deviceContext"];
      v38 = v13;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *error = [v31 initWithDomain:v30 code:2 userInfo:v21];
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v8;
    v36 = 0;
    v9 = [[BMDataCollectorTelemetryUploadTelemetry alloc] initWithJSONDictionary:v16 error:&v36];
    v17 = v36;
    if (!v17)
    {

      goto LABEL_7;
    }

    if (error)
    {
      v17 = v17;
      *error = v17;
    }

    v15 = 0;
  }

  else
  {
    if (!error)
    {
      v15 = 0;
      selfCopy6 = self;
      goto LABEL_47;
    }

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E698F240];
    v41 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"uploadTelemetry"];
    v42 = v9;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    *error = [v23 initWithDomain:v24 code:2 userInfo:v25];

    v15 = 0;
    v16 = v8;
  }

LABEL_35:
  selfCopy6 = self;
LABEL_46:

  v8 = v16;
LABEL_47:

LABEL_48:
  v27 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDataCollectorTelemetry *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uploadTelemetry)
  {
    PBDataWriterPlaceMark();
    [(BMDataCollectorTelemetryUploadTelemetry *)self->_uploadTelemetry writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_processingTelemetry)
  {
    PBDataWriterPlaceMark();
    [(BMDataCollectorTelemetryProcessingTelemetry *)self->_processingTelemetry writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_deviceContext)
  {
    PBDataWriterPlaceMark();
    [(BMDataCollectorTelemetryDeviceContext *)self->_deviceContext writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMDataCollectorTelemetry;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_37;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v25 & 0x7F) << v7;
        if ((v25 & 0x80) == 0)
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
        goto LABEL_37;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        break;
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
          goto LABEL_29;
        }

        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_38;
        }

        v16 = [[BMDataCollectorTelemetryUploadTelemetry alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_38;
        }

        v17 = 32;
LABEL_35:
        v20 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
        goto LABEL_36;
      }

      v18 = PBReaderReadString();
      bundleId = v5->_bundleId;
      v5->_bundleId = v18;

LABEL_36:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_37;
      }
    }

    if (v15 == 3)
    {
      v25 = 0;
      v26 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_38;
      }

      v16 = [[BMDataCollectorTelemetryProcessingTelemetry alloc] initByReadFrom:fromCopy];
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = 40;
    }

    else
    {
      if (v15 != 4)
      {
LABEL_29:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }

      v25 = 0;
      v26 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_38;
      }

      v16 = [[BMDataCollectorTelemetryDeviceContext alloc] initByReadFrom:fromCopy];
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = 48;
    }

    goto LABEL_35;
  }

LABEL_37:
  if ([fromCopy hasError])
  {
LABEL_38:
    v22 = 0;
  }

  else
  {
LABEL_39:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleId = [(BMDataCollectorTelemetry *)self bundleId];
  uploadTelemetry = [(BMDataCollectorTelemetry *)self uploadTelemetry];
  processingTelemetry = [(BMDataCollectorTelemetry *)self processingTelemetry];
  deviceContext = [(BMDataCollectorTelemetry *)self deviceContext];
  v8 = [v3 initWithFormat:@"BMDataCollectorTelemetry with bundleId: %@, uploadTelemetry: %@, processingTelemetry: %@, deviceContext: %@", bundleId, uploadTelemetry, processingTelemetry, deviceContext];

  return v8;
}

- (BMDataCollectorTelemetry)initWithBundleId:(id)id uploadTelemetry:(id)telemetry processingTelemetry:(id)processingTelemetry deviceContext:(id)context
{
  idCopy = id;
  telemetryCopy = telemetry;
  processingTelemetryCopy = processingTelemetry;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = BMDataCollectorTelemetry;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_bundleId, id);
    objc_storeStrong(&v15->_uploadTelemetry, telemetry);
    objc_storeStrong(&v15->_processingTelemetry, processingTelemetry);
    objc_storeStrong(&v15->_deviceContext, context);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleId" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uploadTelemetry" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"processingTelemetry" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceContext" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"uploadTelemetry_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_310];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"processingTelemetry_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_312_112041];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"deviceContext_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_314];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __35__BMDataCollectorTelemetry_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 deviceContext];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __35__BMDataCollectorTelemetry_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 processingTelemetry];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __35__BMDataCollectorTelemetry_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 uploadTelemetry];
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

    v8 = [[BMDataCollectorTelemetry alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end