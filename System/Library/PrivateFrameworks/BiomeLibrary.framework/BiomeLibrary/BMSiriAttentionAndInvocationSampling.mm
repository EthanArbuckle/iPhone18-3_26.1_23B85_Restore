@interface BMSiriAttentionAndInvocationSampling
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAttentionAndInvocationSampling)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriAttentionAndInvocationSampling)initWithTimestamp:(id)timestamp onDeviceSampleIdentifier:(id)identifier userSamplingIdentifier:(id)samplingIdentifier dataCollectionUseCase:(id)case deviceType:(id)type;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAttentionAndInvocationSampling

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"onDeviceSampleIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSamplingIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dataCollectionUseCase" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timestamp = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
    timestamp2 = [v5 timestamp];
    v8 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
      timestamp4 = [v5 timestamp];
      v11 = [timestamp3 isEqual:timestamp4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    onDeviceSampleIdentifier = [(BMSiriAttentionAndInvocationSampling *)self onDeviceSampleIdentifier];
    onDeviceSampleIdentifier2 = [v5 onDeviceSampleIdentifier];
    v15 = onDeviceSampleIdentifier2;
    if (onDeviceSampleIdentifier == onDeviceSampleIdentifier2)
    {
    }

    else
    {
      onDeviceSampleIdentifier3 = [(BMSiriAttentionAndInvocationSampling *)self onDeviceSampleIdentifier];
      onDeviceSampleIdentifier4 = [v5 onDeviceSampleIdentifier];
      v18 = [onDeviceSampleIdentifier3 isEqual:onDeviceSampleIdentifier4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    userSamplingIdentifier = [(BMSiriAttentionAndInvocationSampling *)self userSamplingIdentifier];
    userSamplingIdentifier2 = [v5 userSamplingIdentifier];
    v21 = userSamplingIdentifier2;
    if (userSamplingIdentifier == userSamplingIdentifier2)
    {
    }

    else
    {
      userSamplingIdentifier3 = [(BMSiriAttentionAndInvocationSampling *)self userSamplingIdentifier];
      userSamplingIdentifier4 = [v5 userSamplingIdentifier];
      v24 = [userSamplingIdentifier3 isEqual:userSamplingIdentifier4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    dataCollectionUseCase = [(BMSiriAttentionAndInvocationSampling *)self dataCollectionUseCase];
    dataCollectionUseCase2 = [v5 dataCollectionUseCase];
    v27 = dataCollectionUseCase2;
    if (dataCollectionUseCase == dataCollectionUseCase2)
    {
    }

    else
    {
      dataCollectionUseCase3 = [(BMSiriAttentionAndInvocationSampling *)self dataCollectionUseCase];
      dataCollectionUseCase4 = [v5 dataCollectionUseCase];
      v30 = [dataCollectionUseCase3 isEqual:dataCollectionUseCase4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    deviceType = [(BMSiriAttentionAndInvocationSampling *)self deviceType];
    deviceType2 = [v5 deviceType];
    if (deviceType == deviceType2)
    {
      v12 = 1;
    }

    else
    {
      deviceType3 = [(BMSiriAttentionAndInvocationSampling *)self deviceType];
      deviceType4 = [v5 deviceType];
      v12 = [deviceType3 isEqual:deviceType4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v26[5] = *MEMORY[0x1E69E9840];
  timestamp = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
  if (timestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  onDeviceSampleIdentifier = [(BMSiriAttentionAndInvocationSampling *)self onDeviceSampleIdentifier];
  userSamplingIdentifier = [(BMSiriAttentionAndInvocationSampling *)self userSamplingIdentifier];
  dataCollectionUseCase = [(BMSiriAttentionAndInvocationSampling *)self dataCollectionUseCase];
  deviceType = [(BMSiriAttentionAndInvocationSampling *)self deviceType];
  v21 = @"timestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v26[0] = null;
  v22 = @"onDeviceSampleIdentifier";
  null2 = onDeviceSampleIdentifier;
  if (!onDeviceSampleIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v23 = @"userSamplingIdentifier";
  null3 = userSamplingIdentifier;
  if (!userSamplingIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v24 = @"dataCollectionUseCase";
  null4 = dataCollectionUseCase;
  if (!dataCollectionUseCase)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25 = @"deviceType";
  null5 = deviceType;
  if (!deviceType)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (deviceType)
  {
    if (dataCollectionUseCase)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (dataCollectionUseCase)
    {
LABEL_16:
      if (userSamplingIdentifier)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (userSamplingIdentifier)
  {
LABEL_17:
    if (onDeviceSampleIdentifier)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v6)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!onDeviceSampleIdentifier)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMSiriAttentionAndInvocationSampling)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
LABEL_9:
    v15 = [dictionaryCopy objectForKeyedSubscript:@"onDeviceSampleIdentifier"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v22 = 0;
          goto LABEL_43;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"onDeviceSampleIdentifier"];
        v50 = v41;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v22 = 0;
        *error = [v23 initWithDomain:v24 code:2 userInfo:v16];
        error = 0;
        goto LABEL_42;
      }

      v40 = v15;
    }

    else
    {
      v40 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"userSamplingIdentifier"];
    v39 = v7;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v41 = 0;
          v22 = 0;
          error = v40;
          goto LABEL_42;
        }

        selfCopy3 = self;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userSamplingIdentifier"];
        v48 = v19;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v41 = 0;
        v22 = 0;
        *error = [v25 initWithDomain:v26 code:2 userInfo:v18];
        goto LABEL_50;
      }

      selfCopy3 = self;
      v41 = v16;
    }

    else
    {
      selfCopy3 = self;
      v41 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"dataCollectionUseCase"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
LABEL_18:
      v20 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v21 = 0;
LABEL_21:
        error = v40;
        v22 = [(BMSiriAttentionAndInvocationSampling *)selfCopy3 initWithTimestamp:v42 onDeviceSampleIdentifier:v40 userSamplingIdentifier:v41 dataCollectionUseCase:v19 deviceType:v21];
        selfCopy3 = v22;
LABEL_40:

LABEL_41:
        self = selfCopy3;
        v7 = v39;
LABEL_42:

        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
        goto LABEL_21;
      }

      if (error)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceType"];
        v44 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *error = [v38 initWithDomain:v36 code:2 userInfo:v30];
      }

      v21 = 0;
      v22 = 0;
LABEL_39:
      error = v40;
      goto LABEL_40;
    }

    if (error)
    {
      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E698F240];
      v45 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"dataCollectionUseCase"];
      v46 = v21;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v28 = [v37 initWithDomain:v27 code:2 userInfo:v20];
      v19 = 0;
      v22 = 0;
      *error = v28;
      goto LABEL_39;
    }

    v19 = 0;
    v22 = 0;
LABEL_50:
    error = v40;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v7;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSince1970:v12];
LABEL_6:
    v42 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v42 = [v14 dateFromString:v7];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v7;
    goto LABEL_6;
  }

  if (!error)
  {
    v42 = 0;
    v22 = 0;
    goto LABEL_44;
  }

  v33 = objc_alloc(MEMORY[0x1E696ABC0]);
  v34 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
  v52[0] = v35;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v42 = 0;
  v22 = 0;
  *error = [v33 initWithDomain:v34 code:2 userInfo:v15];
  error = v35;
LABEL_43:

LABEL_44:
  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAttentionAndInvocationSampling *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_onDeviceSampleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_userSamplingIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_dataCollectionUseCase)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMSiriAttentionAndInvocationSampling;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_40;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v5->_hasRaw_timestamp = 1;
          v26 = 0.0;
          v20 = [fromCopy position] + 8;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 8, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_timestamp = v26;
          goto LABEL_29;
        }

        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_28;
          case 4:
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_28;
          case 5:
            v16 = PBReaderReadString();
            v17 = 64;
LABEL_28:
            v18 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_29;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_39;
      }

LABEL_29:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_39:
    v23 = 0;
  }

  else
  {
LABEL_40:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  timestamp = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
  onDeviceSampleIdentifier = [(BMSiriAttentionAndInvocationSampling *)self onDeviceSampleIdentifier];
  userSamplingIdentifier = [(BMSiriAttentionAndInvocationSampling *)self userSamplingIdentifier];
  dataCollectionUseCase = [(BMSiriAttentionAndInvocationSampling *)self dataCollectionUseCase];
  deviceType = [(BMSiriAttentionAndInvocationSampling *)self deviceType];
  v9 = [v3 initWithFormat:@"BMSiriAttentionAndInvocationSampling with timestamp: %@, onDeviceSampleIdentifier: %@, userSamplingIdentifier: %@, dataCollectionUseCase: %@, deviceType: %@", timestamp, onDeviceSampleIdentifier, userSamplingIdentifier, dataCollectionUseCase, deviceType];

  return v9;
}

- (BMSiriAttentionAndInvocationSampling)initWithTimestamp:(id)timestamp onDeviceSampleIdentifier:(id)identifier userSamplingIdentifier:(id)samplingIdentifier dataCollectionUseCase:(id)case deviceType:(id)type
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
  samplingIdentifierCopy = samplingIdentifier;
  caseCopy = case;
  typeCopy = type;
  v20.receiver = self;
  v20.super_class = BMSiriAttentionAndInvocationSampling;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v17->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_timestamp = 0;
      v18 = -1.0;
    }

    v17->_raw_timestamp = v18;
    objc_storeStrong(&v17->_onDeviceSampleIdentifier, identifier);
    objc_storeStrong(&v17->_userSamplingIdentifier, samplingIdentifier);
    objc_storeStrong(&v17->_dataCollectionUseCase, case);
    objc_storeStrong(&v17->_deviceType, type);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onDeviceSampleIdentifier" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSamplingIdentifier" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dataCollectionUseCase" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:5 type:13 subMessageClass:0];
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

    v8 = [[BMSiriAttentionAndInvocationSampling alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end