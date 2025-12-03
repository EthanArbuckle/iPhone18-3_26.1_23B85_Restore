@interface BMOasisAnalyticsDeviceInfo
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsDeviceInfo)initWithIsInternal:(id)internal systemBuild:(id)build deviceType:(id)type deviceId:(id)id oasisTeam:(int)team;
- (BMOasisAnalyticsDeviceInfo)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsDeviceInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMOasisAnalyticsDeviceInfo hasIsInternal](self, "hasIsInternal") || [v5 hasIsInternal])
    {
      if (![(BMOasisAnalyticsDeviceInfo *)self hasIsInternal])
      {
        goto LABEL_18;
      }

      if (![v5 hasIsInternal])
      {
        goto LABEL_18;
      }

      isInternal = [(BMOasisAnalyticsDeviceInfo *)self isInternal];
      if (isInternal != [v5 isInternal])
      {
        goto LABEL_18;
      }
    }

    systemBuild = [(BMOasisAnalyticsDeviceInfo *)self systemBuild];
    systemBuild2 = [v5 systemBuild];
    v9 = systemBuild2;
    if (systemBuild == systemBuild2)
    {
    }

    else
    {
      systemBuild3 = [(BMOasisAnalyticsDeviceInfo *)self systemBuild];
      systemBuild4 = [v5 systemBuild];
      v12 = [systemBuild3 isEqual:systemBuild4];

      if (!v12)
      {
        goto LABEL_18;
      }
    }

    deviceType = [(BMOasisAnalyticsDeviceInfo *)self deviceType];
    deviceType2 = [v5 deviceType];
    v16 = deviceType2;
    if (deviceType == deviceType2)
    {
    }

    else
    {
      deviceType3 = [(BMOasisAnalyticsDeviceInfo *)self deviceType];
      deviceType4 = [v5 deviceType];
      v19 = [deviceType3 isEqual:deviceType4];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    deviceId = [(BMOasisAnalyticsDeviceInfo *)self deviceId];
    deviceId2 = [v5 deviceId];
    v22 = deviceId2;
    if (deviceId == deviceId2)
    {
    }

    else
    {
      deviceId3 = [(BMOasisAnalyticsDeviceInfo *)self deviceId];
      deviceId4 = [v5 deviceId];
      v25 = [deviceId3 isEqual:deviceId4];

      if (!v25)
      {
LABEL_18:
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    oasisTeam = [(BMOasisAnalyticsDeviceInfo *)self oasisTeam];
    v13 = oasisTeam == [v5 oasisTeam];
    goto LABEL_19;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  if ([(BMOasisAnalyticsDeviceInfo *)self hasIsInternal])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMOasisAnalyticsDeviceInfo isInternal](self, "isInternal")}];
  }

  else
  {
    v3 = 0;
  }

  systemBuild = [(BMOasisAnalyticsDeviceInfo *)self systemBuild];
  deviceType = [(BMOasisAnalyticsDeviceInfo *)self deviceType];
  deviceId = [(BMOasisAnalyticsDeviceInfo *)self deviceId];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMOasisAnalyticsDeviceInfo oasisTeam](self, "oasisTeam")}];
  v18 = @"isInternal";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"systemBuild";
  null2 = systemBuild;
  if (!systemBuild)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"deviceType";
  null3 = deviceType;
  if (!deviceType)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"deviceId";
  null4 = deviceId;
  if (!deviceId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"oasisTeam";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (deviceId)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (deviceId)
    {
LABEL_16:
      if (deviceType)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (deviceType)
  {
LABEL_17:
    if (systemBuild)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v3)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!systemBuild)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMOasisAnalyticsDeviceInfo)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"isInternal"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v39 = 0;
          v20 = 0;
          goto LABEL_41;
        }

        errorCopy = error;
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
        v47 = v37;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v39 = 0;
        v20 = 0;
        *errorCopy = [v21 initWithDomain:v22 code:2 userInfo:v10];
        goto LABEL_40;
      }

      v39 = v9;
    }

    else
    {
      v39 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    v36 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v37 = 0;
          v20 = 0;
          goto LABEL_40;
        }

        errorCopy2 = error;
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceType"];
        v45 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v37 = 0;
        v20 = 0;
        *errorCopy2 = [v24 initWithDomain:v25 code:2 userInfo:v11];
LABEL_39:

        self = selfCopy;
        v8 = v36;
LABEL_40:

        goto LABEL_41;
      }

      v37 = v10;
    }

    else
    {
      v37 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"deviceId"];
    errorCopy3 = error;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v13 = 0;
          v20 = 0;
          goto LABEL_39;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceId"];
        v43 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v27 = [v34 initWithDomain:v26 code:2 userInfo:v14];
        v13 = 0;
        v20 = 0;
        *errorCopy3 = v27;
        goto LABEL_38;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"oasisTeam"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy3)
          {
            v35 = objc_alloc(MEMORY[0x1E696ABC0]);
            v32 = *MEMORY[0x1E698F240];
            v40 = *MEMORY[0x1E696A578];
            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"oasisTeam"];
            v41 = v30;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            *errorCopy3 = [v35 initWithDomain:v32 code:2 userInfo:v31];
          }

          v15 = 0;
          v20 = 0;
          goto LABEL_38;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsDeviceInfoOasisAnalyticsTeamFromString(v14)];
      }

      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    v20 = -[BMOasisAnalyticsDeviceInfo initWithIsInternal:systemBuild:deviceType:deviceId:oasisTeam:](selfCopy, "initWithIsInternal:systemBuild:deviceType:deviceId:oasisTeam:", v36, v39, v37, v13, [v15 intValue]);
    selfCopy = v20;
LABEL_38:

    goto LABEL_39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v20 = 0;
    goto LABEL_42;
  }

  errorCopy4 = error;
  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInternal"];
  v49[0] = v39;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v8 = 0;
  v20 = 0;
  *errorCopy4 = [v18 initWithDomain:v19 code:2 userInfo:v9];
LABEL_41:

LABEL_42:
  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsDeviceInfo *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIsInternal)
  {
    isInternal = self->_isInternal;
    PBDataWriterWriteBOOLField();
  }

  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceId)
  {
    PBDataWriterWriteStringField();
  }

  oasisTeam = self->_oasisTeam;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v36.receiver = self;
  v36.super_class = BMOasisAnalyticsDeviceInfo;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_57;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_55;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v37 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v37 & 0x7F) << v7;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_55;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasIsInternal = 1;
          while (1)
          {
            v37 = 0;
            v29 = [fromCopy position] + 1;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v28 |= (v37 & 0x7F) << v26;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v13 = v27++ >= 9;
            if (v13)
            {
              LOBYTE(v32) = 0;
              goto LABEL_49;
            }
          }

          v32 = (v28 != 0) & ~[fromCopy hasError];
LABEL_49:
          v5->_isInternal = v32;
          goto LABEL_54;
        }

        if (v15 != 2)
        {
LABEL_46:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_56;
          }

          goto LABEL_54;
        }

        v23 = PBReaderReadString();
        v24 = 32;
        goto LABEL_36;
      }

      if (v15 == 3)
      {
        break;
      }

      if (v15 == 4)
      {
        v23 = PBReaderReadString();
        v24 = 48;
        goto LABEL_36;
      }

      if (v15 != 5)
      {
        goto LABEL_46;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v37 = 0;
        v19 = [fromCopy position] + 1;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v18 |= (v37 & 0x7F) << v16;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        if (v17++ > 8)
        {
          goto LABEL_52;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v18 > 2)
      {
LABEL_52:
        LODWORD(v18) = 0;
      }

      v5->_oasisTeam = v18;
LABEL_54:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_55;
      }
    }

    v23 = PBReaderReadString();
    v24 = 40;
LABEL_36:
    v25 = *(&v5->super.super.isa + v24);
    *(&v5->super.super.isa + v24) = v23;

    goto LABEL_54;
  }

LABEL_55:
  if ([fromCopy hasError])
  {
LABEL_56:
    v34 = 0;
  }

  else
  {
LABEL_57:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMOasisAnalyticsDeviceInfo isInternal](self, "isInternal")}];
  systemBuild = [(BMOasisAnalyticsDeviceInfo *)self systemBuild];
  deviceType = [(BMOasisAnalyticsDeviceInfo *)self deviceType];
  deviceId = [(BMOasisAnalyticsDeviceInfo *)self deviceId];
  v8 = BMOasisAnalyticsDeviceInfoOasisAnalyticsTeamAsString([(BMOasisAnalyticsDeviceInfo *)self oasisTeam]);
  v9 = [v3 initWithFormat:@"BMOasisAnalyticsDeviceInfo with isInternal: %@, systemBuild: %@, deviceType: %@, deviceId: %@, oasisTeam: %@", v4, systemBuild, deviceType, deviceId, v8];

  return v9;
}

- (BMOasisAnalyticsDeviceInfo)initWithIsInternal:(id)internal systemBuild:(id)build deviceType:(id)type deviceId:(id)id oasisTeam:(int)team
{
  internalCopy = internal;
  buildCopy = build;
  typeCopy = type;
  idCopy = id;
  v18.receiver = self;
  v18.super_class = BMOasisAnalyticsDeviceInfo;
  v16 = [(BMEventBase *)&v18 init];
  if (v16)
  {
    v16->_dataVersion = [objc_opt_class() latestDataVersion];
    if (internalCopy)
    {
      v16->_hasIsInternal = 1;
      v16->_isInternal = [internalCopy BOOLValue];
    }

    else
    {
      v16->_hasIsInternal = 0;
      v16->_isInternal = 0;
    }

    objc_storeStrong(&v16->_systemBuild, build);
    objc_storeStrong(&v16->_deviceType, type);
    objc_storeStrong(&v16->_deviceId, id);
    v16->_oasisTeam = team;
  }

  return v16;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInternal" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceId" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"oasisTeam" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInternal" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"oasisTeam" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMOasisAnalyticsDeviceInfo alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end