@interface BMContextSyncAppInFocus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMContextSyncAppInFocus)initWithID:(id)d deviceUUID:(id)iD AppInFocus:(id)focus;
- (BMContextSyncAppInFocus)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMContextSyncAppInFocus

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceUUID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"AppInFocus_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_11279];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(BMContextSyncAppInFocus *)self ID];
    v7 = [v5 ID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMContextSyncAppInFocus *)self ID];
      v10 = [v5 ID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    deviceUUID = [(BMContextSyncAppInFocus *)self deviceUUID];
    deviceUUID2 = [v5 deviceUUID];
    v15 = deviceUUID2;
    if (deviceUUID == deviceUUID2)
    {
    }

    else
    {
      deviceUUID3 = [(BMContextSyncAppInFocus *)self deviceUUID];
      deviceUUID4 = [v5 deviceUUID];
      v18 = [deviceUUID3 isEqual:deviceUUID4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    appInFocus = [(BMContextSyncAppInFocus *)self AppInFocus];
    appInFocus2 = [v5 AppInFocus];
    if (appInFocus == appInFocus2)
    {
      v12 = 1;
    }

    else
    {
      appInFocus3 = [(BMContextSyncAppInFocus *)self AppInFocus];
      appInFocus4 = [v5 AppInFocus];
      v12 = [appInFocus3 isEqual:appInFocus4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMContextSyncAppInFocus *)self ID];
  deviceUUID = [(BMContextSyncAppInFocus *)self deviceUUID];
  appInFocus = [(BMContextSyncAppInFocus *)self AppInFocus];
  jsonDictionary = [appInFocus jsonDictionary];

  v13[0] = @"ID";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"deviceUUID";
  null2 = deviceUUID;
  if (!deviceUUID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"AppInFocus";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (jsonDictionary)
  {
    if (deviceUUID)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!deviceUUID)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMContextSyncAppInFocus)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v34[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"ID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceUUID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          v10 = 0;
          goto LABEL_13;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = p_isa;
        v22 = *MEMORY[0x1E698F240];
        v31 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceUUID"];
        v32 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v23 = [v21 initWithDomain:v22 code:2 userInfo:v12];
        v10 = 0;
        p_isa = 0;
        *v26 = v23;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"AppInFocus"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          goto LABEL_12;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v29 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"AppInFocus"];
        v30 = v12;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        *p_isa = [v27 initWithDomain:v25 code:2 userInfo:v24];

        p_isa = 0;
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      v15 = v11;
      v28 = 0;
      v12 = [[BMAppInFocus alloc] initWithJSONDictionary:v15 error:&v28];
      v16 = v28;
      if (v16)
      {
        if (p_isa)
        {
          v16 = v16;
          *p_isa = v16;
        }

        p_isa = 0;
        v11 = v15;
        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
    }

    self = [(BMContextSyncAppInFocus *)self initWithID:v8 deviceUUID:v10 AppInFocus:v12];
    p_isa = &self->super.super.isa;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!p_isa)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v33 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ID"];
  v34[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v19 = [v17 initWithDomain:v18 code:2 userInfo:v9];
  v8 = 0;
  v20 = p_isa;
  p_isa = 0;
  *v20 = v19;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextSyncAppInFocus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_ID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_AppInFocus)
  {
    PBDataWriterPlaceMark();
    [(BMAppInFocus *)self->_AppInFocus writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMContextSyncAppInFocus;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v25[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v25[0] & 0x7F) << v7;
        if ((v25[0] & 0x80) == 0)
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
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v19 = [[BMAppInFocus alloc] initByReadFrom:fromCopy];
        if (!v19)
        {
          goto LABEL_30;
        }

        AppInFocus = v5->_AppInFocus;
        v5->_AppInFocus = v19;

        PBReaderRecallMark();
      }

      else
      {
        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 32;
        }

        else
        {
          if (v15 != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_28;
          }

          v16 = PBReaderReadString();
          v17 = 24;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_28:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_30:
    v22 = 0;
  }

  else
  {
LABEL_31:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMContextSyncAppInFocus *)self ID];
  deviceUUID = [(BMContextSyncAppInFocus *)self deviceUUID];
  appInFocus = [(BMContextSyncAppInFocus *)self AppInFocus];
  v7 = [v3 initWithFormat:@"BMContextSyncAppInFocus with ID: %@, deviceUUID: %@, AppInFocus: %@", v4, deviceUUID, appInFocus];

  return v7;
}

- (BMContextSyncAppInFocus)initWithID:(id)d deviceUUID:(id)iD AppInFocus:(id)focus
{
  dCopy = d;
  iDCopy = iD;
  focusCopy = focus;
  v14.receiver = self;
  v14.super_class = BMContextSyncAppInFocus;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_ID, d);
    objc_storeStrong(&v12->_deviceUUID, iD);
    objc_storeStrong(&v12->_AppInFocus, focus);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceUUID" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"AppInFocus" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __34__BMContextSyncAppInFocus_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 AppInFocus];
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

    v8 = [[BMContextSyncAppInFocus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end