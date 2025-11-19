@interface BMDataCollectorTelemetry
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDataCollectorTelemetry)initWithBundleId:(id)a3 uploadTelemetry:(id)a4 processingTelemetry:(id)a5 deviceContext:(id)a6;
- (BMDataCollectorTelemetry)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDataCollectorTelemetry

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDataCollectorTelemetry *)self bundleId];
    v7 = [v5 bundleId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDataCollectorTelemetry *)self bundleId];
      v10 = [v5 bundleId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMDataCollectorTelemetry *)self uploadTelemetry];
    v14 = [v5 uploadTelemetry];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMDataCollectorTelemetry *)self uploadTelemetry];
      v17 = [v5 uploadTelemetry];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMDataCollectorTelemetry *)self processingTelemetry];
    v20 = [v5 processingTelemetry];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMDataCollectorTelemetry *)self processingTelemetry];
      v23 = [v5 processingTelemetry];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v25 = [(BMDataCollectorTelemetry *)self deviceContext];
    v26 = [v5 deviceContext];
    if (v25 == v26)
    {
      v12 = 1;
    }

    else
    {
      v27 = [(BMDataCollectorTelemetry *)self deviceContext];
      v28 = [v5 deviceContext];
      v12 = [v27 isEqual:v28];
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
  v3 = [(BMDataCollectorTelemetry *)self bundleId];
  v4 = [(BMDataCollectorTelemetry *)self uploadTelemetry];
  v5 = [v4 jsonDictionary];

  v6 = [(BMDataCollectorTelemetry *)self processingTelemetry];
  v7 = [v6 jsonDictionary];

  v8 = [(BMDataCollectorTelemetry *)self deviceContext];
  v9 = [v8 jsonDictionary];

  v17[0] = @"bundleId";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v10;
  v17[1] = @"uploadTelemetry";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v11;
  v17[2] = @"processingTelemetry";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v12;
  v17[3] = @"deviceContext";
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

- (BMDataCollectorTelemetry)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"bundleId"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v7 = 0;
        v15 = 0;
        v14 = self;
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
      *a4 = [v19 initWithDomain:v20 code:2 userInfo:v9];
      goto LABEL_35;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"uploadTelemetry"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = 0;
LABEL_7:
    v10 = [v5 objectForKeyedSubscript:@"processingTelemetry"];
    v32 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          v14 = self;
          goto LABEL_45;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"processingTelemetry"];
        v40 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v15 = 0;
        *a4 = [v29 initWithDomain:v26 code:2 userInfo:v12];
        goto LABEL_43;
      }

      v12 = v10;
      v35 = 0;
      v11 = [[BMDataCollectorTelemetryProcessingTelemetry alloc] initWithJSONDictionary:v12 error:&v35];
      v18 = v35;
      if (v18)
      {
        if (a4)
        {
          v18 = v18;
          *a4 = v18;
        }

LABEL_42:
        v15 = 0;
LABEL_43:
        v14 = self;
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 objectForKeyedSubscript:@"deviceContext"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
LABEL_13:
      v14 = [(BMDataCollectorTelemetry *)self initWithBundleId:v32 uploadTelemetry:v9 processingTelemetry:v11 deviceContext:v13];
      v15 = v14;
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

      if (a4)
      {
        v22 = v22;
        *a4 = v22;
      }

LABEL_40:
      v15 = 0;
      v14 = self;
      goto LABEL_41;
    }

    if (a4)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v37 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"deviceContext"];
      v38 = v13;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a4 = [v31 initWithDomain:v30 code:2 userInfo:v21];
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

    if (a4)
    {
      v17 = v17;
      *a4 = v17;
    }

    v15 = 0;
  }

  else
  {
    if (!a4)
    {
      v15 = 0;
      v14 = self;
      goto LABEL_47;
    }

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E698F240];
    v41 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"uploadTelemetry"];
    v42 = v9;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    *a4 = [v23 initWithDomain:v24 code:2 userInfo:v25];

    v15 = 0;
    v16 = v8;
  }

LABEL_35:
  v14 = self;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uploadTelemetry)
  {
    PBDataWriterPlaceMark();
    [(BMDataCollectorTelemetryUploadTelemetry *)self->_uploadTelemetry writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_processingTelemetry)
  {
    PBDataWriterPlaceMark();
    [(BMDataCollectorTelemetryProcessingTelemetry *)self->_processingTelemetry writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_deviceContext)
  {
    PBDataWriterPlaceMark();
    [(BMDataCollectorTelemetryDeviceContext *)self->_deviceContext writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMDataCollectorTelemetry;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_37;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v25 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

        v16 = [[BMDataCollectorTelemetryUploadTelemetry alloc] initByReadFrom:v4];
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
      v21 = [v4 position];
      if (v21 >= [v4 length])
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

      v16 = [[BMDataCollectorTelemetryProcessingTelemetry alloc] initByReadFrom:v4];
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

      v16 = [[BMDataCollectorTelemetryDeviceContext alloc] initByReadFrom:v4];
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = 48;
    }

    goto LABEL_35;
  }

LABEL_37:
  if ([v4 hasError])
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
  v4 = [(BMDataCollectorTelemetry *)self bundleId];
  v5 = [(BMDataCollectorTelemetry *)self uploadTelemetry];
  v6 = [(BMDataCollectorTelemetry *)self processingTelemetry];
  v7 = [(BMDataCollectorTelemetry *)self deviceContext];
  v8 = [v3 initWithFormat:@"BMDataCollectorTelemetry with bundleId: %@, uploadTelemetry: %@, processingTelemetry: %@, deviceContext: %@", v4, v5, v6, v7];

  return v8;
}

- (BMDataCollectorTelemetry)initWithBundleId:(id)a3 uploadTelemetry:(id)a4 processingTelemetry:(id)a5 deviceContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = BMDataCollectorTelemetry;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_bundleId, a3);
    objc_storeStrong(&v15->_uploadTelemetry, a4);
    objc_storeStrong(&v15->_processingTelemetry, a5);
    objc_storeStrong(&v15->_deviceContext, a6);
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