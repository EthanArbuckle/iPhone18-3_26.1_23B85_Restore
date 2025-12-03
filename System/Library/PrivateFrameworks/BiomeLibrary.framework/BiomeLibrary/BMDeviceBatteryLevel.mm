@interface BMDeviceBatteryLevel
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceBatteryLevel)initWithBatteryPercentage:(id)percentage fullyCharged:(id)charged;
- (BMDeviceBatteryLevel)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceBatteryLevel

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batteryPercentage" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullyCharged" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
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
    if (-[BMDeviceBatteryLevel hasBatteryPercentage](self, "hasBatteryPercentage") || [v5 hasBatteryPercentage])
    {
      if (![(BMDeviceBatteryLevel *)self hasBatteryPercentage])
      {
        goto LABEL_13;
      }

      if (![v5 hasBatteryPercentage])
      {
        goto LABEL_13;
      }

      [(BMDeviceBatteryLevel *)self batteryPercentage];
      v7 = v6;
      [v5 batteryPercentage];
      if (v7 != v8)
      {
        goto LABEL_13;
      }
    }

    if (!-[BMDeviceBatteryLevel hasFullyCharged](self, "hasFullyCharged") && ![v5 hasFullyCharged])
    {
      LOBYTE(v10) = 1;
      goto LABEL_14;
    }

    if (-[BMDeviceBatteryLevel hasFullyCharged](self, "hasFullyCharged") && [v5 hasFullyCharged])
    {
      fullyCharged = [(BMDeviceBatteryLevel *)self fullyCharged];
      v10 = fullyCharged ^ [v5 fullyCharged] ^ 1;
    }

    else
    {
LABEL_13:
      LOBYTE(v10) = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  LOBYTE(v10) = 0;
LABEL_15:

  return v10;
}

- (id)jsonDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (![(BMDeviceBatteryLevel *)self hasBatteryPercentage]|| ([(BMDeviceBatteryLevel *)self batteryPercentage], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMDeviceBatteryLevel *)self batteryPercentage];
    v4 = MEMORY[0x1E696AD98];
    [(BMDeviceBatteryLevel *)self batteryPercentage];
    v5 = [v4 numberWithDouble:?];
  }

  if ([(BMDeviceBatteryLevel *)self hasFullyCharged])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBatteryLevel fullyCharged](self, "fullyCharged")}];
  }

  else
  {
    v6 = 0;
  }

  v12[0] = @"batteryPercentage";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"fullyCharged";
  v13[0] = null;
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v5)
    {
      goto LABEL_14;
    }
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMDeviceBatteryLevel)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"batteryPercentage"];
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
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"batteryPercentage"];
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"fullyCharged"];
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
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fullyCharged"];
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

  self = [(BMDeviceBatteryLevel *)self initWithBatteryPercentage:v8 fullyCharged:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceBatteryLevel *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_hasBatteryPercentage)
  {
    batteryPercentage = self->_batteryPercentage;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_hasFullyCharged)
  {
    fullyCharged = self->_fullyCharged;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMDeviceBatteryLevel;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v29) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v29) & 0x7F) << v7;
        if ((LOBYTE(v29) & 0x80) == 0)
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
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasFullyCharged = 1;
        while (1)
        {
          LOBYTE(v29) = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (LOBYTE(v29) & 0x7F) << v17;
          if ((LOBYTE(v29) & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_35;
          }
        }

        v23 = (v19 != 0) & ~[fromCopy hasError];
LABEL_35:
        v5->_fullyCharged = v23;
      }

      else if ((v14 >> 3) == 1)
      {
        v5->_hasBatteryPercentage = 1;
        v29 = 0.0;
        v15 = [fromCopy position] + 8;
        if (v15 >= [fromCopy position] && (v16 = objc_msgSend(fromCopy, "position") + 8, v16 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_batteryPercentage = v29;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_40;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_40:
    v26 = 0;
  }

  else
  {
LABEL_41:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMDeviceBatteryLevel *)self batteryPercentage];
  v5 = [v4 numberWithDouble:?];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceBatteryLevel fullyCharged](self, "fullyCharged")}];
  v7 = [v3 initWithFormat:@"BMDeviceBatteryLevel with batteryPercentage: %@, fullyCharged: %@", v5, v6];

  return v7;
}

- (BMDeviceBatteryLevel)initWithBatteryPercentage:(id)percentage fullyCharged:(id)charged
{
  percentageCopy = percentage;
  chargedCopy = charged;
  v11.receiver = self;
  v11.super_class = BMDeviceBatteryLevel;
  v8 = [(BMEventBase *)&v11 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (percentageCopy)
    {
      v8->_hasBatteryPercentage = 1;
      [percentageCopy doubleValue];
    }

    else
    {
      v8->_hasBatteryPercentage = 0;
      v9 = -1.0;
    }

    v8->_batteryPercentage = v9;
    if (chargedCopy)
    {
      v8->_hasFullyCharged = 1;
      v8->_fullyCharged = [chargedCopy BOOLValue];
    }

    else
    {
      v8->_hasFullyCharged = 0;
      v8->_fullyCharged = 0;
    }
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batteryPercentage" number:1 type:0 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullyCharged" number:2 type:12 subMessageClass:0];
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

    v8 = [[BMDeviceBatteryLevel alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end