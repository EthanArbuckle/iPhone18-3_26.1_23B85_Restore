@interface BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts)initWithTimeInterval:(id)a3 cohortType:(id)a4 cohortDataAvailabilityState:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)self timeInterval];
    v7 = [v5 timeInterval];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)self timeInterval];
      v10 = [v5 timeInterval];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    if (!-[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts hasCohortType](self, "hasCohortType") && ![v5 hasCohortType] || -[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts hasCohortType](self, "hasCohortType") && objc_msgSend(v5, "hasCohortType") && (v13 = -[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts cohortType](self, "cohortType"), v13 == objc_msgSend(v5, "cohortType")))
    {
      if (!-[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts hasCohortDataAvailabilityState](self, "hasCohortDataAvailabilityState") && ![v5 hasCohortDataAvailabilityState])
      {
        v12 = 1;
        goto LABEL_18;
      }

      if (-[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts hasCohortDataAvailabilityState](self, "hasCohortDataAvailabilityState") && [v5 hasCohortDataAvailabilityState])
      {
        v14 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)self cohortDataAvailabilityState];
        v12 = v14 == [v5 cohortDataAvailabilityState];
LABEL_18:

        goto LABEL_19;
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)self timeInterval];
  v4 = [v3 jsonDictionary];

  if ([(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)self hasCohortType])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts cohortType](self, "cohortType")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)self hasCohortDataAvailabilityState])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts cohortDataAvailabilityState](self, "cohortDataAvailabilityState")}];
  }

  else
  {
    v6 = 0;
  }

  v13[0] = @"timeInterval";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v7;
  v13[1] = @"cohortType";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v8;
  v13[2] = @"cohortDataAvailabilityState";
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v4)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v4)
  {
    goto LABEL_16;
  }

LABEL_21:

LABEL_16:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"timeInterval"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v26 = 0;
    v8 = [[BMSiriOnDeviceDigestSegmentsCohortsTimeInterval alloc] initWithJSONDictionary:v10 error:&v26];
    v16 = v26;
    if (v16)
    {
      if (a4)
      {
        v16 = v16;
        *a4 = v16;
      }

      v13 = 0;
      goto LABEL_13;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"cohortType"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v13 = 0;
          goto LABEL_12;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v29 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cohortType"];
        v30 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v20 = [v24 initWithDomain:v19 code:2 userInfo:v11];
        v10 = 0;
        v13 = 0;
        *a4 = v20;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"cohortDataAvailabilityState"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v27 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cohortDataAvailabilityState"];
          v28 = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          *a4 = [v25 initWithDomain:v23 code:2 userInfo:v22];
        }

        v12 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)self initWithTimeInterval:v8 cohortType:v10 cohortDataAvailabilityState:v12];
    v13 = self;
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  if (!a4)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v31 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeInterval"];
  v32[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v13 = 0;
  *a4 = [v17 initWithDomain:v18 code:2 userInfo:v10];
LABEL_13:

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_timeInterval)
  {
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestSegmentsCohortsTimeInterval *)self->_timeInterval writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasCohortType)
  {
    cohortType = self->_cohortType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCohortDataAvailabilityState)
  {
    cohortDataAvailabilityState = self->_cohortDataAvailabilityState;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_54;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v36[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v36[0] & 0x7F) << v7;
        if ((v36[0] & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_54;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        break;
      }

      if (v15 == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasCohortType = 1;
        while (1)
        {
          LOBYTE(v36[0]) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:v36 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v36[0] & 0x7F) << v18;
          if ((v36[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v13 = v19++ >= 9;
          if (v13)
          {
            v24 = 0;
            goto LABEL_47;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_47:
        v31 = 24;
LABEL_52:
        *(&v5->super.super.isa + v31) = v24;
        goto LABEL_53;
      }

      if (v15 == 1)
      {
        v36[0] = 0;
        v36[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_55;
        }

        v16 = [[BMSiriOnDeviceDigestSegmentsCohortsTimeInterval alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_55;
        }

        timeInterval = v5->_timeInterval;
        v5->_timeInterval = v16;

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_53:
      v32 = [v4 position];
      if (v32 >= [v4 length])
      {
        goto LABEL_54;
      }
    }

    v25 = 0;
    v26 = 0;
    v27 = 0;
    v5->_hasCohortDataAvailabilityState = 1;
    while (1)
    {
      LOBYTE(v36[0]) = 0;
      v28 = [v4 position] + 1;
      if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
      {
        v30 = [v4 data];
        [v30 getBytes:v36 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v27 |= (v36[0] & 0x7F) << v25;
      if ((v36[0] & 0x80) == 0)
      {
        break;
      }

      v25 += 7;
      v13 = v26++ >= 9;
      if (v13)
      {
        v24 = 0;
        goto LABEL_51;
      }
    }

    if ([v4 hasError])
    {
      v24 = 0;
    }

    else
    {
      v24 = v27;
    }

LABEL_51:
    v31 = 28;
    goto LABEL_52;
  }

LABEL_54:
  if ([v4 hasError])
  {
LABEL_55:
    v33 = 0;
  }

  else
  {
LABEL_56:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts *)self timeInterval];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts cohortType](self, "cohortType")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts cohortDataAvailabilityState](self, "cohortDataAvailabilityState")}];
  v7 = [v3 initWithFormat:@"BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts with timeInterval: %@, cohortType: %@, cohortDataAvailabilityState: %@", v4, v5, v6];

  return v7;
}

- (BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts)initWithTimeInterval:(id)a3 cohortType:(id)a4 cohortDataAvailabilityState:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts;
  v12 = [(BMEventBase *)&v16 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_timeInterval, a3);
    if (v10)
    {
      v12->_hasCohortType = 1;
      v13 = [v10 intValue];
    }

    else
    {
      v12->_hasCohortType = 0;
      v13 = -1;
    }

    v12->_cohortType = v13;
    if (v11)
    {
      v12->_hasCohortDataAvailabilityState = 1;
      v14 = [v11 intValue];
    }

    else
    {
      v12->_hasCohortDataAvailabilityState = 0;
      v14 = -1;
    }

    v12->_cohortDataAvailabilityState = v14;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeInterval" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cohortType" number:2 type:2 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cohortDataAvailabilityState" number:3 type:2 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeInterval_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_283_37372];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cohortType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cohortDataAvailabilityState" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __59__BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 timeInterval];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMSiriOnDeviceDigestSegmentsCohortsDeviceCohorts alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end