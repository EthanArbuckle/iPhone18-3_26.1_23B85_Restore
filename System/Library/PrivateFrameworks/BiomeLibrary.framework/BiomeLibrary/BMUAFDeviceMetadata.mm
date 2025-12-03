@interface BMUAFDeviceMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUAFDeviceMetadata)initWithDeviceId:(id)id deviceType:(id)type programCode:(id)code systemBuild:(id)build inputLocale:(id)locale nanoSecondsSinceLastBoot:(id)boot;
- (BMUAFDeviceMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUAFDeviceMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceId = [(BMUAFDeviceMetadata *)self deviceId];
    deviceId2 = [v5 deviceId];
    v8 = deviceId2;
    if (deviceId == deviceId2)
    {
    }

    else
    {
      deviceId3 = [(BMUAFDeviceMetadata *)self deviceId];
      deviceId4 = [v5 deviceId];
      v11 = [deviceId3 isEqual:deviceId4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    deviceType = [(BMUAFDeviceMetadata *)self deviceType];
    deviceType2 = [v5 deviceType];
    v15 = deviceType2;
    if (deviceType == deviceType2)
    {
    }

    else
    {
      deviceType3 = [(BMUAFDeviceMetadata *)self deviceType];
      deviceType4 = [v5 deviceType];
      v18 = [deviceType3 isEqual:deviceType4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    if (-[BMUAFDeviceMetadata hasProgramCode](self, "hasProgramCode") || [v5 hasProgramCode])
    {
      if (![(BMUAFDeviceMetadata *)self hasProgramCode])
      {
        goto LABEL_29;
      }

      if (![v5 hasProgramCode])
      {
        goto LABEL_29;
      }

      programCode = [(BMUAFDeviceMetadata *)self programCode];
      if (programCode != [v5 programCode])
      {
        goto LABEL_29;
      }
    }

    systemBuild = [(BMUAFDeviceMetadata *)self systemBuild];
    systemBuild2 = [v5 systemBuild];
    v22 = systemBuild2;
    if (systemBuild == systemBuild2)
    {
    }

    else
    {
      systemBuild3 = [(BMUAFDeviceMetadata *)self systemBuild];
      systemBuild4 = [v5 systemBuild];
      v25 = [systemBuild3 isEqual:systemBuild4];

      if (!v25)
      {
        goto LABEL_29;
      }
    }

    inputLocale = [(BMUAFDeviceMetadata *)self inputLocale];
    inputLocale2 = [v5 inputLocale];
    v28 = inputLocale2;
    if (inputLocale == inputLocale2)
    {
    }

    else
    {
      inputLocale3 = [(BMUAFDeviceMetadata *)self inputLocale];
      inputLocale4 = [v5 inputLocale];
      v31 = [inputLocale3 isEqual:inputLocale4];

      if (!v31)
      {
        goto LABEL_29;
      }
    }

    if (!-[BMUAFDeviceMetadata hasNanoSecondsSinceLastBoot](self, "hasNanoSecondsSinceLastBoot") && ![v5 hasNanoSecondsSinceLastBoot])
    {
      v12 = 1;
      goto LABEL_30;
    }

    if (-[BMUAFDeviceMetadata hasNanoSecondsSinceLastBoot](self, "hasNanoSecondsSinceLastBoot") && [v5 hasNanoSecondsSinceLastBoot])
    {
      nanoSecondsSinceLastBoot = [(BMUAFDeviceMetadata *)self nanoSecondsSinceLastBoot];
      v12 = nanoSecondsSinceLastBoot == [v5 nanoSecondsSinceLastBoot];
LABEL_30:

      goto LABEL_31;
    }

LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (id)jsonDictionary
{
  v25[6] = *MEMORY[0x1E69E9840];
  deviceId = [(BMUAFDeviceMetadata *)self deviceId];
  v4 = [deviceId base64EncodedStringWithOptions:0];

  deviceType = [(BMUAFDeviceMetadata *)self deviceType];
  v6 = 0;
  if ([(BMUAFDeviceMetadata *)self hasProgramCode])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMUAFDeviceMetadata programCode](self, "programCode")}];
  }

  systemBuild = [(BMUAFDeviceMetadata *)self systemBuild];
  inputLocale = [(BMUAFDeviceMetadata *)self inputLocale];
  jsonDictionary = [inputLocale jsonDictionary];

  if ([(BMUAFDeviceMetadata *)self hasNanoSecondsSinceLastBoot])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFDeviceMetadata nanoSecondsSinceLastBoot](self, "nanoSecondsSinceLastBoot")}];
  }

  else
  {
    v10 = 0;
  }

  v24[0] = @"deviceId";
  null = v4;
  if (!v4)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v23 = v4;
  v25[0] = null;
  v24[1] = @"deviceType";
  null2 = deviceType;
  if (!deviceType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v25[1] = null2;
  v24[2] = @"programCode";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = null3;
  v24[3] = @"systemBuild";
  null4 = systemBuild;
  if (!systemBuild)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = null4;
  v24[4] = @"inputLocale";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null5;
  v24[5] = @"nanoSecondsSinceLastBoot";
  null6 = v10;
  if (!v10)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (v10)
  {
    if (jsonDictionary)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (jsonDictionary)
    {
LABEL_20:
      if (systemBuild)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }
  }

  if (systemBuild)
  {
LABEL_21:
    if (v6)
    {
      goto LABEL_22;
    }

LABEL_31:

    if (deviceType)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

LABEL_30:

  if (!v6)
  {
    goto LABEL_31;
  }

LABEL_22:
  if (deviceType)
  {
    goto LABEL_23;
  }

LABEL_32:

LABEL_23:
  if (!v23)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMUAFDeviceMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v64[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceId"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        goto LABEL_4;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
        if (v8)
        {
          goto LABEL_4;
        }

        if (error)
        {
          v22 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v63 = *MEMORY[0x1E696A578];
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"deviceId"];
          v64[0] = v49;
          v24 = MEMORY[0x1E695DF20];
          v25 = v64;
          v26 = &v63;
LABEL_57:
          v9 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
          v8 = 0;
          v17 = 0;
          *error = [v22 initWithDomain:v23 code:2 userInfo:v9];
          goto LABEL_26;
        }
      }

      else if (error)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"deviceId"];
        v62 = v49;
        v24 = MEMORY[0x1E695DF20];
        v25 = &v62;
        v26 = &v61;
        goto LABEL_57;
      }

      v8 = 0;
      v17 = 0;
      goto LABEL_27;
    }
  }

  v8 = 0;
LABEL_4:
  v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v49 = 0;
        v17 = 0;
        goto LABEL_26;
      }

      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v59 = *MEMORY[0x1E696A578];
      v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceType"];
      v60 = v47;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v10 = v29 = error;
      v49 = 0;
      v17 = 0;
      *v29 = [v27 initWithDomain:v28 code:2 userInfo:v10];
      goto LABEL_25;
    }

    errorCopy2 = error;
    v49 = v9;
  }

  else
  {
    errorCopy2 = error;
    v49 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"programCode"];
  v46 = v8;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v47 = 0;
LABEL_10:
    v11 = [dictionaryCopy objectForKeyedSubscript:@"systemBuild"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v44 = 0;
          v17 = 0;
          goto LABEL_24;
        }

        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v55 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemBuild"];
        v56 = v12;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v33 = [v45 initWithDomain:v32 code:2 userInfo:v14];
        v44 = 0;
        v17 = 0;
        *errorCopy2 = v33;
        goto LABEL_22;
      }

      v44 = v11;
    }

    else
    {
      v44 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"inputLocale"];
    v42 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v17 = 0;
          goto LABEL_23;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"inputLocale"];
        v54 = v14;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        *errorCopy2 = [v40 initWithDomain:v38 code:2 userInfo:v35];

        self = selfCopy;
        v7 = v42;
        v17 = 0;
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      selfCopy3 = self;
      v20 = v12;
      v50 = 0;
      v14 = [[BMUAFISOLocale alloc] initWithJSONDictionary:v20 error:&v50];
      v21 = v50;
      if (v21)
      {
        if (errorCopy2)
        {
          v21 = v21;
          *errorCopy2 = v21;
        }

        v17 = 0;
        v12 = v20;
        goto LABEL_21;
      }
    }

    else
    {
      selfCopy3 = self;
      v14 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"nanoSecondsSinceLastBoot"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy2)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v51 = *MEMORY[0x1E696A578];
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nanoSecondsSinceLastBoot"];
          v52 = v36;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *errorCopy2 = [v41 initWithDomain:v39 code:2 userInfo:v37];
        }

        v16 = 0;
        v17 = 0;
        goto LABEL_20;
      }

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [(BMUAFDeviceMetadata *)selfCopy3 initWithDeviceId:v46 deviceType:v49 programCode:v47 systemBuild:v44 inputLocale:v14 nanoSecondsSinceLastBoot:v16];
    selfCopy3 = v17;
LABEL_20:

LABEL_21:
    self = selfCopy3;
    v7 = v42;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = v10;
    goto LABEL_10;
  }

  if (!errorCopy2)
  {
    v47 = 0;
    v17 = 0;
    goto LABEL_25;
  }

  v48 = objc_alloc(MEMORY[0x1E696ABC0]);
  v30 = *MEMORY[0x1E698F240];
  v57 = *MEMORY[0x1E696A578];
  v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"programCode"];
  v58 = v44;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v31 = [v48 initWithDomain:v30 code:2 userInfo:v11];
  v47 = 0;
  v17 = 0;
  *errorCopy2 = v31;
LABEL_24:

  v8 = v46;
LABEL_25:

LABEL_26:
LABEL_27:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUAFDeviceMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_deviceId)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasProgramCode)
  {
    programCode = self->_programCode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_systemBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_inputLocale)
  {
    PBDataWriterPlaceMark();
    [(BMUAFISOLocale *)self->_inputLocale writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasNanoSecondsSinceLastBoot)
  {
    nanoSecondsSinceLastBoot = self->_nanoSecondsSinceLastBoot;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMUAFDeviceMetadata;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_63;
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
        LOBYTE(v39[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v39[0] & 0x7F) << v7;
        if ((v39[0] & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v30 = PBReaderReadString();
            v31 = 48;
            goto LABEL_48;
          case 5:
            v39[0] = 0;
            v39[1] = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_62;
            }

            v33 = [[BMUAFISOLocale alloc] initByReadFrom:fromCopy];
            if (!v33)
            {
              goto LABEL_62;
            }

            inputLocale = v5->_inputLocale;
            v5->_inputLocale = v33;

            PBReaderRecallMark();
            break;
          case 6:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            v5->_hasNanoSecondsSinceLastBoot = 1;
            while (1)
            {
              LOBYTE(v39[0]) = 0;
              v26 = [fromCopy position] + 1;
              if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v25 |= (v39[0] & 0x7F) << v23;
              if ((v39[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v13 = v24++ >= 9;
              if (v13)
              {
                v29 = 0;
                goto LABEL_59;
              }
            }

            if ([fromCopy hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_59:
            v5->_nanoSecondsSinceLastBoot = v29;
            break;
          default:
LABEL_45:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_62;
            }

            break;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v30 = PBReaderReadData();
          v31 = 32;
LABEL_48:
          v32 = *(&v5->super.super.isa + v31);
          *(&v5->super.super.isa + v31) = v30;

          goto LABEL_60;
        }

        if (v15 == 2)
        {
          v30 = PBReaderReadString();
          v31 = 40;
          goto LABEL_48;
        }

        if (v15 != 3)
        {
          goto LABEL_45;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasProgramCode = 1;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v39[0] & 0x7F) << v16;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_55;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_55:
        v5->_programCode = v22;
      }

LABEL_60:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_62:
    v36 = 0;
  }

  else
  {
LABEL_63:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  deviceId = [(BMUAFDeviceMetadata *)self deviceId];
  deviceType = [(BMUAFDeviceMetadata *)self deviceType];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMUAFDeviceMetadata programCode](self, "programCode")}];
  systemBuild = [(BMUAFDeviceMetadata *)self systemBuild];
  inputLocale = [(BMUAFDeviceMetadata *)self inputLocale];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUAFDeviceMetadata nanoSecondsSinceLastBoot](self, "nanoSecondsSinceLastBoot")}];
  v10 = [v3 initWithFormat:@"BMUAFDeviceMetadata with deviceId: %@, deviceType: %@, programCode: %@, systemBuild: %@, inputLocale: %@, nanoSecondsSinceLastBoot: %@", deviceId, deviceType, v6, systemBuild, inputLocale, v9];

  return v10;
}

- (BMUAFDeviceMetadata)initWithDeviceId:(id)id deviceType:(id)type programCode:(id)code systemBuild:(id)build inputLocale:(id)locale nanoSecondsSinceLastBoot:(id)boot
{
  idCopy = id;
  typeCopy = type;
  codeCopy = code;
  buildCopy = build;
  localeCopy = locale;
  bootCopy = boot;
  v25.receiver = self;
  v25.super_class = BMUAFDeviceMetadata;
  v19 = [(BMEventBase *)&v25 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_deviceId, id);
    objc_storeStrong(&v19->_deviceType, type);
    if (codeCopy)
    {
      v19->_hasProgramCode = 1;
      unsignedIntValue = [codeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v19->_hasProgramCode = 0;
    }

    v19->_programCode = unsignedIntValue;
    objc_storeStrong(&v19->_systemBuild, build);
    objc_storeStrong(&v19->_inputLocale, locale);
    if (bootCopy)
    {
      v19->_hasNanoSecondsSinceLastBoot = 1;
      unsignedLongLongValue = [bootCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v19->_hasNanoSecondsSinceLastBoot = 0;
    }

    v19->_nanoSecondsSinceLastBoot = unsignedLongLongValue;
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceId" number:1 type:14 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"programCode" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemBuild" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inputLocale" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nanoSecondsSinceLastBoot" number:6 type:5 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceId" dataType:4 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"programCode" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemBuild" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"inputLocale_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_201];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nanoSecondsSinceLastBoot" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:5 convertedType:0];
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

id __30__BMUAFDeviceMetadata_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 inputLocale];
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

    v8 = [[BMUAFDeviceMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end