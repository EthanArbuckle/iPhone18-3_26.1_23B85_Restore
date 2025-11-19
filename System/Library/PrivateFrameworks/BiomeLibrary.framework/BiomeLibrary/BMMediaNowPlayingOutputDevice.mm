@interface BMMediaNowPlayingOutputDevice
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMediaNowPlayingOutputDevice)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMediaNowPlayingOutputDevice)initWithType:(int)a3 subType:(int)a4 outputDeviceID:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMediaNowPlayingOutputDevice

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMediaNowPlayingOutputDevice *)self type];
    if (v6 == [v5 type] && (v7 = -[BMMediaNowPlayingOutputDevice subType](self, "subType"), v7 == objc_msgSend(v5, "subType")))
    {
      v8 = [(BMMediaNowPlayingOutputDevice *)self outputDeviceID];
      v9 = [v5 outputDeviceID];
      if (v8 == v9)
      {
        v12 = 1;
      }

      else
      {
        v10 = [(BMMediaNowPlayingOutputDevice *)self outputDeviceID];
        v11 = [v5 outputDeviceID];
        v12 = [v10 isEqual:v11];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaNowPlayingOutputDevice type](self, "type")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaNowPlayingOutputDevice subType](self, "subType")}];
  v5 = [(BMMediaNowPlayingOutputDevice *)self outputDeviceID];
  v12[0] = @"type";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"subType";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"outputDeviceID";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
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

  if (!v4)
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
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMMediaNowPlayingOutputDevice)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"subType"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v11 = 0;
            v15 = 0;
            goto LABEL_22;
          }

          v26 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v29 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"subType"];
          v30 = v14;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v23 = [v26 initWithDomain:v22 code:2 userInfo:v13];
          v11 = 0;
          v15 = 0;
          *a4 = v23;
          goto LABEL_21;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaNowPlayingOutputDeviceSubTypeFromString(v10)];
      }

      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"outputDeviceID"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v27 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"outputDeviceID"];
          v28 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          *a4 = [v25 initWithDomain:v24 code:2 userInfo:v19];
        }

        v14 = 0;
        v15 = 0;
        goto LABEL_21;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    self = -[BMMediaNowPlayingOutputDevice initWithType:subType:outputDeviceID:](self, "initWithType:subType:outputDeviceID:", [v8 intValue], objc_msgSend(v11, "intValue"), v14);
    v15 = self;
LABEL_21:

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaNowPlayingOutputDeviceTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
  v32[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v8 = 0;
  v15 = 0;
  *a4 = [v20 initWithDomain:v21 code:2 userInfo:v10];
LABEL_22:

LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaNowPlayingOutputDevice *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  subType = self->_subType;
  PBDataWriterWriteUint32Field();
  if (self->_outputDeviceID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMMediaNowPlayingOutputDevice;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_52;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v35 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v35 & 0x7F) << v7;
        if ((v35 & 0x80) == 0)
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
        goto LABEL_52;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 1)
      {
        break;
      }

      if (v15 != 3)
      {
        if (v15 != 2)
        {
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_53;
          }

          goto LABEL_51;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v35 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v35 & 0x7F) << v16;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            goto LABEL_48;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 0x15)
        {
LABEL_48:
          LODWORD(v18) = 0;
        }

        v30 = 24;
        goto LABEL_50;
      }

      v23 = PBReaderReadString();
      outputDeviceID = v5->_outputDeviceID;
      v5->_outputDeviceID = v23;

LABEL_51:
      v31 = [v4 position];
      if (v31 >= [v4 length])
      {
        goto LABEL_52;
      }
    }

    v25 = 0;
    v26 = 0;
    v18 = 0;
    while (1)
    {
      v35 = 0;
      v27 = [v4 position] + 1;
      if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
      {
        v29 = [v4 data];
        [v29 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v18 |= (v35 & 0x7F) << v25;
      if ((v35 & 0x80) == 0)
      {
        break;
      }

      v25 += 7;
      v22 = v26++ > 8;
      if (v22)
      {
        goto LABEL_44;
      }
    }

    if (([v4 hasError] & 1) != 0 || v18 > 5)
    {
LABEL_44:
      LODWORD(v18) = 0;
    }

    v30 = 20;
LABEL_50:
    *(&v5->super.super.isa + v30) = v18;
    goto LABEL_51;
  }

LABEL_52:
  if ([v4 hasError])
  {
LABEL_53:
    v32 = 0;
  }

  else
  {
LABEL_54:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMediaNowPlayingOutputDeviceTypeAsString([(BMMediaNowPlayingOutputDevice *)self type]);
  v5 = BMMediaNowPlayingOutputDeviceSubTypeAsString([(BMMediaNowPlayingOutputDevice *)self subType]);
  v6 = [(BMMediaNowPlayingOutputDevice *)self outputDeviceID];
  v7 = [v3 initWithFormat:@"BMMediaNowPlayingOutputDevice with type: %@, subType: %@, outputDeviceID: %@", v4, v5, v6];

  return v7;
}

- (BMMediaNowPlayingOutputDevice)initWithType:(int)a3 subType:(int)a4 outputDeviceID:(id)a5
{
  v9 = a5;
  v12.receiver = self;
  v12.super_class = BMMediaNowPlayingOutputDevice;
  v10 = [(BMEventBase *)&v12 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    v10->_type = a3;
    v10->_subType = a4;
    objc_storeStrong(&v10->_outputDeviceID, a5);
  }

  return v10;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subType" number:2 type:4 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outputDeviceID" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"outputDeviceID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMMediaNowPlayingOutputDevice alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[4] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end