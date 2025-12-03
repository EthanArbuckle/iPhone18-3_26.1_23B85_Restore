@interface BMSiriScorecardMetricsEventMetadataTimeInterval
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriScorecardMetricsEventMetadataTimeInterval)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriScorecardMetricsEventMetadataTimeInterval)initWithStartTimestampInSecondsSince1970:(id)since1970 numberOfSeconds:(id)seconds;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriScorecardMetricsEventMetadataTimeInterval

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriScorecardMetricsEventMetadataTimeInterval hasStartTimestampInSecondsSince1970](self, "hasStartTimestampInSecondsSince1970") || [v5 hasStartTimestampInSecondsSince1970])
    {
      if (![(BMSiriScorecardMetricsEventMetadataTimeInterval *)self hasStartTimestampInSecondsSince1970])
      {
        goto LABEL_13;
      }

      if (![v5 hasStartTimestampInSecondsSince1970])
      {
        goto LABEL_13;
      }

      startTimestampInSecondsSince1970 = [(BMSiriScorecardMetricsEventMetadataTimeInterval *)self startTimestampInSecondsSince1970];
      if (startTimestampInSecondsSince1970 != [v5 startTimestampInSecondsSince1970])
      {
        goto LABEL_13;
      }
    }

    if (!-[BMSiriScorecardMetricsEventMetadataTimeInterval hasNumberOfSeconds](self, "hasNumberOfSeconds") && ![v5 hasNumberOfSeconds])
    {
      v8 = 1;
      goto LABEL_14;
    }

    if (-[BMSiriScorecardMetricsEventMetadataTimeInterval hasNumberOfSeconds](self, "hasNumberOfSeconds") && [v5 hasNumberOfSeconds])
    {
      numberOfSeconds = [(BMSiriScorecardMetricsEventMetadataTimeInterval *)self numberOfSeconds];
      v8 = numberOfSeconds == [v5 numberOfSeconds];
    }

    else
    {
LABEL_13:
      v8 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(BMSiriScorecardMetricsEventMetadataTimeInterval *)self hasStartTimestampInSecondsSince1970])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadataTimeInterval startTimestampInSecondsSince1970](self, "startTimestampInSecondsSince1970")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriScorecardMetricsEventMetadataTimeInterval *)self hasNumberOfSeconds])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetricsEventMetadataTimeInterval numberOfSeconds](self, "numberOfSeconds")}];
  }

  else
  {
    v4 = 0;
  }

  v10[0] = @"startTimestampInSecondsSince1970";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"numberOfSeconds";
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

- (BMSiriScorecardMetricsEventMetadataTimeInterval)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"startTimestampInSecondsSince1970"];
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
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startTimestampInSecondsSince1970"];
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSeconds"];
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
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfSeconds"];
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

  self = [(BMSiriScorecardMetricsEventMetadataTimeInterval *)self initWithStartTimestampInSecondsSince1970:v8 numberOfSeconds:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriScorecardMetricsEventMetadataTimeInterval *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_hasStartTimestampInSecondsSince1970)
  {
    startTimestampInSecondsSince1970 = self->_startTimestampInSecondsSince1970;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_hasNumberOfSeconds)
  {
    numberOfSeconds = self->_numberOfSeconds;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMSiriScorecardMetricsEventMetadataTimeInterval;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_51;
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
        v5->_hasNumberOfSeconds = 1;
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
            v28 = 0;
            goto LABEL_47;
          }
        }

        v28 = [fromCopy hasError] ? 0 : v24;
LABEL_47:
        v5->_numberOfSeconds = v28;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasStartTimestampInSecondsSince1970 = 1;
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
        v5->_startTimestampInSecondsSince1970 = v21;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_50;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_50:
    v30 = 0;
  }

  else
  {
LABEL_51:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadataTimeInterval startTimestampInSecondsSince1970](self, "startTimestampInSecondsSince1970")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriScorecardMetricsEventMetadataTimeInterval numberOfSeconds](self, "numberOfSeconds")}];
  v6 = [v3 initWithFormat:@"BMSiriScorecardMetricsEventMetadataTimeInterval with startTimestampInSecondsSince1970: %@, numberOfSeconds: %@", v4, v5];

  return v6;
}

- (BMSiriScorecardMetricsEventMetadataTimeInterval)initWithStartTimestampInSecondsSince1970:(id)since1970 numberOfSeconds:(id)seconds
{
  since1970Copy = since1970;
  secondsCopy = seconds;
  v12.receiver = self;
  v12.super_class = BMSiriScorecardMetricsEventMetadataTimeInterval;
  v8 = [(BMEventBase *)&v12 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (since1970Copy)
    {
      v8->_hasStartTimestampInSecondsSince1970 = 1;
      unsignedLongLongValue = [since1970Copy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v8->_hasStartTimestampInSecondsSince1970 = 0;
    }

    v8->_startTimestampInSecondsSince1970 = unsignedLongLongValue;
    if (secondsCopy)
    {
      v8->_hasNumberOfSeconds = 1;
      unsignedIntValue = [secondsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v8->_hasNumberOfSeconds = 0;
    }

    v8->_numberOfSeconds = unsignedIntValue;
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startTimestampInSecondsSince1970" number:1 type:5 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSeconds" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startTimestampInSecondsSince1970" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfSeconds" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v7[0] = v2;
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

    v8 = [[BMSiriScorecardMetricsEventMetadataTimeInterval alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end