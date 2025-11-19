@interface BMSiriAttentionAndInvocationSampling
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriAttentionAndInvocationSampling)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriAttentionAndInvocationSampling)initWithTimestamp:(id)a3 onDeviceSampleIdentifier:(id)a4 userSamplingIdentifier:(id)a5 dataCollectionUseCase:(id)a6 deviceType:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
    v7 = [v5 timestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
      v10 = [v5 timestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMSiriAttentionAndInvocationSampling *)self onDeviceSampleIdentifier];
    v14 = [v5 onDeviceSampleIdentifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriAttentionAndInvocationSampling *)self onDeviceSampleIdentifier];
      v17 = [v5 onDeviceSampleIdentifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMSiriAttentionAndInvocationSampling *)self userSamplingIdentifier];
    v20 = [v5 userSamplingIdentifier];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriAttentionAndInvocationSampling *)self userSamplingIdentifier];
      v23 = [v5 userSamplingIdentifier];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMSiriAttentionAndInvocationSampling *)self dataCollectionUseCase];
    v26 = [v5 dataCollectionUseCase];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSiriAttentionAndInvocationSampling *)self dataCollectionUseCase];
      v29 = [v5 dataCollectionUseCase];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMSiriAttentionAndInvocationSampling *)self deviceType];
    v32 = [v5 deviceType];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMSiriAttentionAndInvocationSampling *)self deviceType];
      v34 = [v5 deviceType];
      v12 = [v33 isEqual:v34];
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
  v3 = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMSiriAttentionAndInvocationSampling *)self onDeviceSampleIdentifier];
  v8 = [(BMSiriAttentionAndInvocationSampling *)self userSamplingIdentifier];
  v9 = [(BMSiriAttentionAndInvocationSampling *)self dataCollectionUseCase];
  v10 = [(BMSiriAttentionAndInvocationSampling *)self deviceType];
  v21 = @"timestamp";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v26[0] = v11;
  v22 = @"onDeviceSampleIdentifier";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v12;
  v23 = @"userSamplingIdentifier";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"dataCollectionUseCase";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v14;
  v25 = @"deviceType";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v9)
    {
LABEL_16:
      if (v8)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v8)
  {
LABEL_17:
    if (v7)
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

  if (!v7)
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

- (BMSiriAttentionAndInvocationSampling)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"timestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
LABEL_9:
    v15 = [v6 objectForKeyedSubscript:@"onDeviceSampleIdentifier"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *a4 = [v23 initWithDomain:v24 code:2 userInfo:v16];
        a4 = 0;
        goto LABEL_42;
      }

      v40 = v15;
    }

    else
    {
      v40 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"userSamplingIdentifier"];
    v39 = v7;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v41 = 0;
          v22 = 0;
          a4 = v40;
          goto LABEL_42;
        }

        v17 = self;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userSamplingIdentifier"];
        v48 = v19;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v41 = 0;
        v22 = 0;
        *a4 = [v25 initWithDomain:v26 code:2 userInfo:v18];
        goto LABEL_50;
      }

      v17 = self;
      v41 = v16;
    }

    else
    {
      v17 = self;
      v41 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"dataCollectionUseCase"];
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
      v20 = [v6 objectForKeyedSubscript:@"deviceType"];
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v21 = 0;
LABEL_21:
        a4 = v40;
        v22 = [(BMSiriAttentionAndInvocationSampling *)v17 initWithTimestamp:v42 onDeviceSampleIdentifier:v40 userSamplingIdentifier:v41 dataCollectionUseCase:v19 deviceType:v21];
        v17 = v22;
LABEL_40:

LABEL_41:
        self = v17;
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

      if (a4)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceType"];
        v44 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *a4 = [v38 initWithDomain:v36 code:2 userInfo:v30];
      }

      v21 = 0;
      v22 = 0;
LABEL_39:
      a4 = v40;
      goto LABEL_40;
    }

    if (a4)
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
      *a4 = v28;
      goto LABEL_39;
    }

    v19 = 0;
    v22 = 0;
LABEL_50:
    a4 = v40;
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

  if (!a4)
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
  *a4 = [v33 initWithDomain:v34 code:2 userInfo:v15];
  a4 = v35;
LABEL_43:

LABEL_44:
  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAttentionAndInvocationSampling *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_onDeviceSampleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_userSamplingIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_dataCollectionUseCase)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_deviceType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMSiriAttentionAndInvocationSampling;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v20 = [v4 position] + 8;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 8, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMSiriAttentionAndInvocationSampling *)self timestamp];
  v5 = [(BMSiriAttentionAndInvocationSampling *)self onDeviceSampleIdentifier];
  v6 = [(BMSiriAttentionAndInvocationSampling *)self userSamplingIdentifier];
  v7 = [(BMSiriAttentionAndInvocationSampling *)self dataCollectionUseCase];
  v8 = [(BMSiriAttentionAndInvocationSampling *)self deviceType];
  v9 = [v3 initWithFormat:@"BMSiriAttentionAndInvocationSampling with timestamp: %@, onDeviceSampleIdentifier: %@, userSamplingIdentifier: %@, dataCollectionUseCase: %@, deviceType: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMSiriAttentionAndInvocationSampling)initWithTimestamp:(id)a3 onDeviceSampleIdentifier:(id)a4 userSamplingIdentifier:(id)a5 dataCollectionUseCase:(id)a6 deviceType:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMSiriAttentionAndInvocationSampling;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v17->_hasRaw_timestamp = 1;
      [v12 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_timestamp = 0;
      v18 = -1.0;
    }

    v17->_raw_timestamp = v18;
    objc_storeStrong(&v17->_onDeviceSampleIdentifier, a4);
    objc_storeStrong(&v17->_userSamplingIdentifier, a5);
    objc_storeStrong(&v17->_dataCollectionUseCase, a6);
    objc_storeStrong(&v17->_deviceType, a7);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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