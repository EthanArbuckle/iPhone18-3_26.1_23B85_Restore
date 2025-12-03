@interface BMOasisAnalyticsRelocalizationSucceededType
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsRelocalizationSucceededType)initWithDescriptorType:(int)type localizedSubmapId:(id)id timeToLocalizationInSecond:(id)second;
- (BMOasisAnalyticsRelocalizationSucceededType)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsRelocalizationSucceededType

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    descriptorType = [(BMOasisAnalyticsRelocalizationSucceededType *)self descriptorType];
    if (descriptorType != [v5 descriptorType])
    {
      goto LABEL_14;
    }

    if (-[BMOasisAnalyticsRelocalizationSucceededType hasLocalizedSubmapId](self, "hasLocalizedSubmapId") || [v5 hasLocalizedSubmapId])
    {
      if (![(BMOasisAnalyticsRelocalizationSucceededType *)self hasLocalizedSubmapId])
      {
        goto LABEL_14;
      }

      if (![v5 hasLocalizedSubmapId])
      {
        goto LABEL_14;
      }

      localizedSubmapId = [(BMOasisAnalyticsRelocalizationSucceededType *)self localizedSubmapId];
      if (localizedSubmapId != [v5 localizedSubmapId])
      {
        goto LABEL_14;
      }
    }

    if (!-[BMOasisAnalyticsRelocalizationSucceededType hasTimeToLocalizationInSecond](self, "hasTimeToLocalizationInSecond") && ![v5 hasTimeToLocalizationInSecond])
    {
      v11 = 1;
      goto LABEL_15;
    }

    if (-[BMOasisAnalyticsRelocalizationSucceededType hasTimeToLocalizationInSecond](self, "hasTimeToLocalizationInSecond") && [v5 hasTimeToLocalizationInSecond])
    {
      [(BMOasisAnalyticsRelocalizationSucceededType *)self timeToLocalizationInSecond];
      v9 = v8;
      [v5 timeToLocalizationInSecond];
      v11 = v9 == v10;
    }

    else
    {
LABEL_14:
      v11 = 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMOasisAnalyticsRelocalizationSucceededType descriptorType](self, "descriptorType")}];
  if ([(BMOasisAnalyticsRelocalizationSucceededType *)self hasLocalizedSubmapId])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsRelocalizationSucceededType localizedSubmapId](self, "localizedSubmapId")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMOasisAnalyticsRelocalizationSucceededType *)self hasTimeToLocalizationInSecond]|| ([(BMOasisAnalyticsRelocalizationSucceededType *)self timeToLocalizationInSecond], fabsf(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMOasisAnalyticsRelocalizationSucceededType *)self timeToLocalizationInSecond];
    v6 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsRelocalizationSucceededType *)self timeToLocalizationInSecond];
    v7 = [v6 numberWithFloat:?];
  }

  v14[0] = @"descriptorType";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"localizedSubmapId";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"timeToLocalizationInSecond";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v7)
  {
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_21:

    if (v3)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_22:

LABEL_17:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMOasisAnalyticsRelocalizationSucceededType)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"descriptorType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"localizedSubmapId"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          selfCopy = 0;
          goto LABEL_17;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v28 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"localizedSubmapId"];
        v29 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = [v24 initWithDomain:v17 code:2 userInfo:v12];
        v11 = 0;
        selfCopy = 0;
        *error = v18;
        goto LABEL_16;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"timeToLocalizationInSecond"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v26 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeToLocalizationInSecond"];
          v27 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *error = [v25 initWithDomain:v23 code:2 userInfo:v20];
        }

        v13 = 0;
        selfCopy = 0;
        goto LABEL_16;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    self = -[BMOasisAnalyticsRelocalizationSucceededType initWithDescriptorType:localizedSubmapId:timeToLocalizationInSecond:](self, "initWithDescriptorType:localizedSubmapId:timeToLocalizationInSecond:", [v8 intValue], v11, v13);
    selfCopy = self;
LABEL_16:

    goto LABEL_17;
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
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsRelocalizationSucceededDescriptorTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_18;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"descriptorType"];
  v31[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v21 initWithDomain:v22 code:2 userInfo:v10];
LABEL_17:

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsRelocalizationSucceededType *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  descriptorType = self->_descriptorType;
  v8 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_hasLocalizedSubmapId)
  {
    localizedSubmapId = self->_localizedSubmapId;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTimeToLocalizationInSecond)
  {
    timeToLocalizationInSecond = self->_timeToLocalizationInSecond;
    PBDataWriterWriteFloatField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v36.receiver = self;
  v36.super_class = BMOasisAnalyticsRelocalizationSucceededType;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_57;
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
        LOBYTE(v37) = 0;
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

        v9 |= (LOBYTE(v37) & 0x7F) << v7;
        if ((LOBYTE(v37) & 0x80) == 0)
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
        v5->_hasTimeToLocalizationInSecond = 1;
        v37 = 0.0;
        v30 = [fromCopy position] + 4;
        if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 4, v31 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_timeToLocalizationInSecond = v37;
      }

      else if (v15 == 2)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasLocalizedSubmapId = 1;
        while (1)
        {
          LOBYTE(v37) = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (LOBYTE(v37) & 0x7F) << v23;
          if ((LOBYTE(v37) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            v29 = 0;
            goto LABEL_47;
          }
        }

        v29 = [fromCopy hasError] ? 0 : v25;
LABEL_47:
        v5->_localizedSubmapId = v29;
      }

      else if (v15 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v37) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v37) & 0x7F) << v16;
          if ((LOBYTE(v37) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_50;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 3)
        {
LABEL_50:
          LODWORD(v18) = 0;
        }

        v5->_descriptorType = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_56;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

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
  v4 = BMOasisAnalyticsRelocalizationSucceededDescriptorTypeAsString([(BMOasisAnalyticsRelocalizationSucceededType *)self descriptorType]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsRelocalizationSucceededType localizedSubmapId](self, "localizedSubmapId")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsRelocalizationSucceededType *)self timeToLocalizationInSecond];
  v7 = [v6 numberWithFloat:?];
  v8 = [v3 initWithFormat:@"BMOasisAnalyticsRelocalizationSucceededType with descriptorType: %@, localizedSubmapId: %@, timeToLocalizationInSecond: %@", v4, v5, v7];

  return v8;
}

- (BMOasisAnalyticsRelocalizationSucceededType)initWithDescriptorType:(int)type localizedSubmapId:(id)id timeToLocalizationInSecond:(id)second
{
  idCopy = id;
  secondCopy = second;
  v14.receiver = self;
  v14.super_class = BMOasisAnalyticsRelocalizationSucceededType;
  v10 = [(BMEventBase *)&v14 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    v10->_descriptorType = type;
    if (idCopy)
    {
      v10->_hasLocalizedSubmapId = 1;
      unsignedLongLongValue = [idCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v10->_hasLocalizedSubmapId = 0;
    }

    v10->_localizedSubmapId = unsignedLongLongValue;
    if (secondCopy)
    {
      v10->_hasTimeToLocalizationInSecond = 1;
      [secondCopy floatValue];
    }

    else
    {
      v10->_hasTimeToLocalizationInSecond = 0;
      v12 = -1.0;
    }

    v10->_timeToLocalizationInSecond = v12;
  }

  return v10;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"descriptorType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"localizedSubmapId" number:2 type:5 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeToLocalizationInSecond" number:3 type:1 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"descriptorType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"localizedSubmapId" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeToLocalizationInSecond" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
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

    v8 = [[BMOasisAnalyticsRelocalizationSucceededType alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end