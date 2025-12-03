@interface BMDeviceWiFiAvailabilityStatus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceWiFiAvailabilityStatus)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceWiFiAvailabilityStatus)initWithStarting:(id)starting isWiFiSwitchOn:(id)on quality:(id)quality;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceWiFiAvailabilityStatus

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isWiFiSwitchOn" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"quality" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
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
    if (-[BMDeviceWiFiAvailabilityStatus hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMDeviceWiFiAvailabilityStatus *)self hasStarting])
      {
        goto LABEL_18;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_18;
      }

      starting = [(BMDeviceWiFiAvailabilityStatus *)self starting];
      if (starting != [v5 starting])
      {
        goto LABEL_18;
      }
    }

    if (-[BMDeviceWiFiAvailabilityStatus hasIsWiFiSwitchOn](self, "hasIsWiFiSwitchOn") || [v5 hasIsWiFiSwitchOn])
    {
      if (![(BMDeviceWiFiAvailabilityStatus *)self hasIsWiFiSwitchOn])
      {
        goto LABEL_18;
      }

      if (![v5 hasIsWiFiSwitchOn])
      {
        goto LABEL_18;
      }

      isWiFiSwitchOn = [(BMDeviceWiFiAvailabilityStatus *)self isWiFiSwitchOn];
      if (isWiFiSwitchOn != [v5 isWiFiSwitchOn])
      {
        goto LABEL_18;
      }
    }

    if (!-[BMDeviceWiFiAvailabilityStatus hasQuality](self, "hasQuality") && ![v5 hasQuality])
    {
      v9 = 1;
      goto LABEL_19;
    }

    if (-[BMDeviceWiFiAvailabilityStatus hasQuality](self, "hasQuality") && [v5 hasQuality])
    {
      quality = [(BMDeviceWiFiAvailabilityStatus *)self quality];
      v9 = quality == [v5 quality];
    }

    else
    {
LABEL_18:
      v9 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v9 = 0;
LABEL_20:

  return v9;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceWiFiAvailabilityStatus *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceWiFiAvailabilityStatus starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDeviceWiFiAvailabilityStatus *)self hasIsWiFiSwitchOn])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceWiFiAvailabilityStatus isWiFiSwitchOn](self, "isWiFiSwitchOn")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDeviceWiFiAvailabilityStatus *)self hasQuality])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceWiFiAvailabilityStatus quality](self, "quality")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"starting";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"isWiFiSwitchOn";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"quality";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_18;
    }

LABEL_23:

    if (v3)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_24:

LABEL_19:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMDeviceWiFiAvailabilityStatus)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"isWiFiSwitchOn"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isWiFiSwitchOn"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"quality"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"quality"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *error = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMDeviceWiFiAvailabilityStatus *)self initWithStarting:v8 isWiFiSwitchOn:v10 quality:v12];
    selfCopy = self;
LABEL_11:

    goto LABEL_12;
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
    selfCopy = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceWiFiAvailabilityStatus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_hasIsWiFiSwitchOn)
  {
    isWiFiSwitchOn = self->_isWiFiSwitchOn;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_hasQuality)
  {
    quality = self->_quality;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMDeviceWiFiAvailabilityStatus;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_62;
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
        v41 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v41 & 0x7F) << v7;
        if ((v41 & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasQuality = 1;
        while (1)
        {
          v41 = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (v41 & 0x7F) << v29;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v13 = v30++ >= 9;
          if (v13)
          {
            v35 = 0;
            goto LABEL_55;
          }
        }

        if ([fromCopy hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v31;
        }

LABEL_55:
        v5->_quality = v35;
      }

      else
      {
        if (v15 == 2)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasIsWiFiSwitchOn = 1;
          while (1)
          {
            v41 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_51;
            }
          }

          v22 = (v25 != 0) & ~[fromCopy hasError];
LABEL_51:
          v36 = 18;
        }

        else
        {
          if (v15 != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_61;
            }

            goto LABEL_59;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          v5->_hasStarting = 1;
          while (1)
          {
            v41 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v41 & 0x7F) << v16;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v13 = v17++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_57;
            }
          }

          v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_57:
          v36 = 16;
        }

        *(&v5->super.super.isa + v36) = v22;
      }

LABEL_59:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_61:
    v38 = 0;
  }

  else
  {
LABEL_62:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceWiFiAvailabilityStatus starting](self, "starting")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceWiFiAvailabilityStatus isWiFiSwitchOn](self, "isWiFiSwitchOn")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceWiFiAvailabilityStatus quality](self, "quality")}];
  v7 = [v3 initWithFormat:@"BMDeviceWiFiAvailabilityStatus with starting: %@, isWiFiSwitchOn: %@, quality: %@", v4, v5, v6];

  return v7;
}

- (BMDeviceWiFiAvailabilityStatus)initWithStarting:(id)starting isWiFiSwitchOn:(id)on quality:(id)quality
{
  startingCopy = starting;
  onCopy = on;
  qualityCopy = quality;
  v14.receiver = self;
  v14.super_class = BMDeviceWiFiAvailabilityStatus;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startingCopy)
    {
      v11->_hasStarting = 1;
      v11->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v11->_hasStarting = 0;
      v11->_starting = 0;
    }

    if (onCopy)
    {
      v11->_hasIsWiFiSwitchOn = 1;
      v11->_isWiFiSwitchOn = [onCopy BOOLValue];
    }

    else
    {
      v11->_hasIsWiFiSwitchOn = 0;
      v11->_isWiFiSwitchOn = 0;
    }

    if (qualityCopy)
    {
      v11->_hasQuality = 1;
      unsignedIntValue = [qualityCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v11->_hasQuality = 0;
    }

    v11->_quality = unsignedIntValue;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isWiFiSwitchOn" number:2 type:12 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"quality" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMDeviceWiFiAvailabilityStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end