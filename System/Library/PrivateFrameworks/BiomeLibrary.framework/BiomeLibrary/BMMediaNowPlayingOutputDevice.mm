@interface BMMediaNowPlayingOutputDevice
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMediaNowPlayingOutputDevice)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMediaNowPlayingOutputDevice)initWithType:(int)type subType:(int)subType outputDeviceID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaNowPlayingOutputDevice

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMMediaNowPlayingOutputDevice *)self type];
    if (type == [v5 type] && (v7 = -[BMMediaNowPlayingOutputDevice subType](self, "subType"), v7 == objc_msgSend(v5, "subType")))
    {
      outputDeviceID = [(BMMediaNowPlayingOutputDevice *)self outputDeviceID];
      outputDeviceID2 = [v5 outputDeviceID];
      if (outputDeviceID == outputDeviceID2)
      {
        v12 = 1;
      }

      else
      {
        outputDeviceID3 = [(BMMediaNowPlayingOutputDevice *)self outputDeviceID];
        outputDeviceID4 = [v5 outputDeviceID];
        v12 = [outputDeviceID3 isEqual:outputDeviceID4];
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
  outputDeviceID = [(BMMediaNowPlayingOutputDevice *)self outputDeviceID];
  v12[0] = @"type";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"subType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"outputDeviceID";
  null3 = outputDeviceID;
  if (!outputDeviceID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (outputDeviceID)
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

- (BMMediaNowPlayingOutputDevice)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"subType"];
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
          if (!error)
          {
            v11 = 0;
            selfCopy = 0;
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
          selfCopy = 0;
          *error = v23;
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"outputDeviceID"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v27 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"outputDeviceID"];
          v28 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          *error = [v25 initWithDomain:v24 code:2 userInfo:v19];
        }

        v14 = 0;
        selfCopy = 0;
        goto LABEL_21;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    self = -[BMMediaNowPlayingOutputDevice initWithType:subType:outputDeviceID:](self, "initWithType:subType:outputDeviceID:", [v8 intValue], objc_msgSend(v11, "intValue"), v14);
    selfCopy = self;
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

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_23;
  }

  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
  v32[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v20 initWithDomain:v21 code:2 userInfo:v10];
LABEL_22:

LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaNowPlayingOutputDevice *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  subType = self->_subType;
  PBDataWriterWriteUint32Field();
  if (self->_outputDeviceID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMMediaNowPlayingOutputDevice;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_52;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v35 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v18 > 0x15)
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
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
      v27 = [fromCopy position] + 1;
      if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
      {
        data3 = [fromCopy data];
        [data3 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
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

    if (([fromCopy hasError] & 1) != 0 || v18 > 5)
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
  if ([fromCopy hasError])
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
  outputDeviceID = [(BMMediaNowPlayingOutputDevice *)self outputDeviceID];
  v7 = [v3 initWithFormat:@"BMMediaNowPlayingOutputDevice with type: %@, subType: %@, outputDeviceID: %@", v4, v5, outputDeviceID];

  return v7;
}

- (BMMediaNowPlayingOutputDevice)initWithType:(int)type subType:(int)subType outputDeviceID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BMMediaNowPlayingOutputDevice;
  v10 = [(BMEventBase *)&v12 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    v10->_type = type;
    v10->_subType = subType;
    objc_storeStrong(&v10->_outputDeviceID, d);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

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