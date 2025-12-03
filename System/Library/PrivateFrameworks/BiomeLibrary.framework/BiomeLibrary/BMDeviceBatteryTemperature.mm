@interface BMDeviceBatteryTemperature
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceBatteryTemperature)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceBatteryTemperature)initWithTemperature:(id)temperature pluggedIn:(id)in;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceBatteryTemperature

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceBatteryTemperature *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"temperature" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pluggedIn" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMDeviceBatteryTemperature hasTemperature](self, "hasTemperature") || [v5 hasTemperature])
    {
      if (![(BMDeviceBatteryTemperature *)self hasTemperature])
      {
        goto LABEL_13;
      }

      if (![v5 hasTemperature])
      {
        goto LABEL_13;
      }

      temperature = [(BMDeviceBatteryTemperature *)self temperature];
      if (temperature != [v5 temperature])
      {
        goto LABEL_13;
      }
    }

    if (!-[BMDeviceBatteryTemperature hasPluggedIn](self, "hasPluggedIn") && ![v5 hasPluggedIn])
    {
      LOBYTE(v8) = 1;
      goto LABEL_14;
    }

    if (-[BMDeviceBatteryTemperature hasPluggedIn](self, "hasPluggedIn") && [v5 hasPluggedIn])
    {
      pluggedIn = [(BMDeviceBatteryTemperature *)self pluggedIn];
      v8 = pluggedIn ^ [v5 pluggedIn] ^ 1;
    }

    else
    {
LABEL_13:
      LOBYTE(v8) = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  LOBYTE(v8) = 0;
LABEL_15:

  return v8;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceBatteryTemperature *)self hasTemperature])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryTemperature temperature](self, "temperature")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDeviceBatteryTemperature *)self hasPluggedIn])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBatteryTemperature pluggedIn](self, "pluggedIn")}];
  }

  else
  {
    v4 = 0;
  }

  v10[0] = @"temperature";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"pluggedIn";
  v11[0] = null;
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (v3)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMDeviceBatteryTemperature)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"temperature"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v23 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"temperature"];
      v24[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      selfCopy = 0;
      *error = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"pluggedIn"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pluggedIn"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *error = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      selfCopy = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMDeviceBatteryTemperature *)self initWithTemperature:v8 pluggedIn:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_hasTemperature)
  {
    temperature = self->_temperature;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_hasPluggedIn)
  {
    pluggedIn = self->_pluggedIn;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMDeviceBatteryTemperature;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
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
        v33 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v33 & 0x7F) << v7;
        if ((v33 & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v5->_hasPluggedIn = 1;
        while (1)
        {
          v33 = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v24 |= (v33 & 0x7F) << v22;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v13 = v23++ >= 9;
          if (v13)
          {
            LOBYTE(v28) = 0;
            goto LABEL_45;
          }
        }

        v28 = (v24 != 0) & ~[fromCopy hasError];
LABEL_45:
        v5->_pluggedIn = v28;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasTemperature = 1;
        while (1)
        {
          v33 = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v33 & 0x7F) << v15;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v13 = v16++ >= 9;
          if (v13)
          {
            v21 = 0;
            goto LABEL_43;
          }
        }

        v21 = [fromCopy hasError] ? 0 : v17;
LABEL_43:
        v5->_temperature = v21;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_48;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_48:
    v30 = 0;
  }

  else
  {
LABEL_49:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceBatteryTemperature temperature](self, "temperature")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBatteryTemperature pluggedIn](self, "pluggedIn")}];
  v6 = [v3 initWithFormat:@"BMDeviceBatteryTemperature with temperature: %@, pluggedIn: %@", v4, v5];

  return v6;
}

- (BMDeviceBatteryTemperature)initWithTemperature:(id)temperature pluggedIn:(id)in
{
  temperatureCopy = temperature;
  inCopy = in;
  v11.receiver = self;
  v11.super_class = BMDeviceBatteryTemperature;
  v8 = [(BMEventBase *)&v11 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (temperatureCopy)
    {
      v8->_hasTemperature = 1;
      intValue = [temperatureCopy intValue];
    }

    else
    {
      v8->_hasTemperature = 0;
      intValue = -1;
    }

    v8->_temperature = intValue;
    if (inCopy)
    {
      v8->_hasPluggedIn = 1;
      v8->_pluggedIn = [inCopy BOOLValue];
    }

    else
    {
      v8->_hasPluggedIn = 0;
      v8->_pluggedIn = 0;
    }
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"temperature" number:1 type:2 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pluggedIn" number:2 type:12 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
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

    v8 = [[BMDeviceBatteryTemperature alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end