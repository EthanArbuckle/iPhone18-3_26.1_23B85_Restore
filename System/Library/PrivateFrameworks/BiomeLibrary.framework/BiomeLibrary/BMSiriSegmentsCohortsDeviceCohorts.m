@interface BMSiriSegmentsCohortsDeviceCohorts
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriSegmentsCohortsDeviceCohorts)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriSegmentsCohortsDeviceCohorts)initWithStartTimestampInSecondsSince1970:(id)a3 windowInSeconds:(id)a4 cohortType:(id)a5 cohortDataAvailabilityState:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriSegmentsCohortsDeviceCohorts

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSiriSegmentsCohortsDeviceCohorts hasStartTimestampInSecondsSince1970](self, "hasStartTimestampInSecondsSince1970") || [v5 hasStartTimestampInSecondsSince1970])
    {
      if (![(BMSiriSegmentsCohortsDeviceCohorts *)self hasStartTimestampInSecondsSince1970])
      {
        goto LABEL_23;
      }

      if (![v5 hasStartTimestampInSecondsSince1970])
      {
        goto LABEL_23;
      }

      v6 = [(BMSiriSegmentsCohortsDeviceCohorts *)self startTimestampInSecondsSince1970];
      if (v6 != [v5 startTimestampInSecondsSince1970])
      {
        goto LABEL_23;
      }
    }

    if (-[BMSiriSegmentsCohortsDeviceCohorts hasWindowInSeconds](self, "hasWindowInSeconds") || [v5 hasWindowInSeconds])
    {
      if (![(BMSiriSegmentsCohortsDeviceCohorts *)self hasWindowInSeconds])
      {
        goto LABEL_23;
      }

      if (![v5 hasWindowInSeconds])
      {
        goto LABEL_23;
      }

      v7 = [(BMSiriSegmentsCohortsDeviceCohorts *)self windowInSeconds];
      if (v7 != [v5 windowInSeconds])
      {
        goto LABEL_23;
      }
    }

    if (-[BMSiriSegmentsCohortsDeviceCohorts hasCohortType](self, "hasCohortType") || [v5 hasCohortType])
    {
      if (![(BMSiriSegmentsCohortsDeviceCohorts *)self hasCohortType])
      {
        goto LABEL_23;
      }

      if (![v5 hasCohortType])
      {
        goto LABEL_23;
      }

      v8 = [(BMSiriSegmentsCohortsDeviceCohorts *)self cohortType];
      if (v8 != [v5 cohortType])
      {
        goto LABEL_23;
      }
    }

    if (!-[BMSiriSegmentsCohortsDeviceCohorts hasCohortDataAvailabilityState](self, "hasCohortDataAvailabilityState") && ![v5 hasCohortDataAvailabilityState])
    {
      v10 = 1;
      goto LABEL_24;
    }

    if (-[BMSiriSegmentsCohortsDeviceCohorts hasCohortDataAvailabilityState](self, "hasCohortDataAvailabilityState") && [v5 hasCohortDataAvailabilityState])
    {
      v9 = [(BMSiriSegmentsCohortsDeviceCohorts *)self cohortDataAvailabilityState];
      v10 = v9 == [v5 cohortDataAvailabilityState];
    }

    else
    {
LABEL_23:
      v10 = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

  v10 = 0;
LABEL_25:

  return v10;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  if ([(BMSiriSegmentsCohortsDeviceCohorts *)self hasStartTimestampInSecondsSince1970])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriSegmentsCohortsDeviceCohorts startTimestampInSecondsSince1970](self, "startTimestampInSecondsSince1970")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriSegmentsCohortsDeviceCohorts *)self hasWindowInSeconds])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriSegmentsCohortsDeviceCohorts windowInSeconds](self, "windowInSeconds")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriSegmentsCohortsDeviceCohorts *)self hasCohortType])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSegmentsCohortsDeviceCohorts cohortType](self, "cohortType")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriSegmentsCohortsDeviceCohorts *)self hasCohortDataAvailabilityState])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSegmentsCohortsDeviceCohorts cohortDataAvailabilityState](self, "cohortDataAvailabilityState")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"startTimestampInSecondsSince1970";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"windowInSeconds";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"cohortType";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"cohortDataAvailabilityState";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (v5)
    {
LABEL_23:
      if (v4)
      {
        goto LABEL_24;
      }

LABEL_30:

      if (v3)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }
  }

  if (!v4)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (v3)
  {
    goto LABEL_25;
  }

LABEL_31:

LABEL_25:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMSiriSegmentsCohortsDeviceCohorts)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"startTimestampInSecondsSince1970"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"windowInSeconds"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = a4;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"windowInSeconds"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        a4 = 0;
        v15 = 0;
        *v33 = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"cohortType"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v12 = 0;
          v15 = 0;
          a4 = v32;
          goto LABEL_33;
        }

        v11 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cohortType"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *a4 = v23;
        goto LABEL_31;
      }

      v11 = self;
      v12 = v10;
    }

    else
    {
      v11 = self;
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"cohortDataAvailabilityState"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      a4 = v32;
      v15 = [(BMSiriSegmentsCohortsDeviceCohorts *)v11 initWithStartTimestampInSecondsSince1970:v8 windowInSeconds:v32 cohortType:v12 cohortDataAvailabilityState:v14];
      v11 = v15;
LABEL_32:

      self = v11;
      v7 = v31;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (a4)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cohortDataAvailabilityState"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a4 = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    a4 = v32;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startTimestampInSecondsSince1970"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
  a4 = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriSegmentsCohortsDeviceCohorts *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_hasStartTimestampInSecondsSince1970)
  {
    startTimestampInSecondsSince1970 = self->_startTimestampInSecondsSince1970;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasWindowInSeconds)
  {
    windowInSeconds = self->_windowInSeconds;
    PBDataWriterWriteUint32Field();
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
  v46.receiver = self;
  v46.super_class = BMSiriSegmentsCohortsDeviceCohorts;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_81;
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
        v47 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v47 & 0x7F) << v7;
        if ((v47 & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v5->_hasCohortType = 1;
          while (1)
          {
            v47 = 0;
            v39 = [v4 position] + 1;
            if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 1, v40 <= objc_msgSend(v4, "length")))
            {
              v41 = [v4 data];
              [v41 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v38 |= (v47 & 0x7F) << v36;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v13 = v37++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_76;
            }
          }

          if ([v4 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v38;
          }

LABEL_76:
          v42 = 28;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_41:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_80;
            }

            goto LABEL_78;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasCohortDataAvailabilityState = 1;
          while (1)
          {
            v47 = 0;
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v25 |= (v47 & 0x7F) << v23;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_68;
            }
          }

          if ([v4 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_68:
          v42 = 32;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v5->_hasStartTimestampInSecondsSince1970 = 1;
          while (1)
          {
            v47 = 0;
            v32 = [v4 position] + 1;
            if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
            {
              v34 = [v4 data];
              [v34 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v31 |= (v47 & 0x7F) << v29;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v13 = v30++ >= 9;
            if (v13)
            {
              v35 = 0;
              goto LABEL_72;
            }
          }

          if ([v4 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_72:
          v5->_startTimestampInSecondsSince1970 = v35;
          goto LABEL_78;
        }

        if (v15 != 2)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasWindowInSeconds = 1;
        while (1)
        {
          v47 = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v47 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v47 & 0x7F) << v16;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_64;
          }
        }

        if ([v4 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_64:
        v42 = 24;
      }

      *(&v5->super.super.isa + v42) = v22;
LABEL_78:
      v43 = [v4 position];
    }

    while (v43 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_80:
    v44 = 0;
  }

  else
  {
LABEL_81:
    v44 = v5;
  }

  return v44;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriSegmentsCohortsDeviceCohorts startTimestampInSecondsSince1970](self, "startTimestampInSecondsSince1970")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriSegmentsCohortsDeviceCohorts windowInSeconds](self, "windowInSeconds")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSegmentsCohortsDeviceCohorts cohortType](self, "cohortType")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSegmentsCohortsDeviceCohorts cohortDataAvailabilityState](self, "cohortDataAvailabilityState")}];
  v8 = [v3 initWithFormat:@"BMSiriSegmentsCohortsDeviceCohorts with startTimestampInSecondsSince1970: %@, windowInSeconds: %@, cohortType: %@, cohortDataAvailabilityState: %@", v4, v5, v6, v7];

  return v8;
}

- (BMSiriSegmentsCohortsDeviceCohorts)initWithStartTimestampInSecondsSince1970:(id)a3 windowInSeconds:(id)a4 cohortType:(id)a5 cohortDataAvailabilityState:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = BMSiriSegmentsCohortsDeviceCohorts;
  v14 = [(BMEventBase *)&v20 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasStartTimestampInSecondsSince1970 = 1;
      v15 = [v10 unsignedLongLongValue];
    }

    else
    {
      v15 = 0;
      v14->_hasStartTimestampInSecondsSince1970 = 0;
    }

    v14->_startTimestampInSecondsSince1970 = v15;
    if (v11)
    {
      v14->_hasWindowInSeconds = 1;
      v16 = [v11 unsignedIntValue];
    }

    else
    {
      v16 = 0;
      v14->_hasWindowInSeconds = 0;
    }

    v14->_windowInSeconds = v16;
    if (v12)
    {
      v14->_hasCohortType = 1;
      v17 = [v12 intValue];
    }

    else
    {
      v14->_hasCohortType = 0;
      v17 = -1;
    }

    v14->_cohortType = v17;
    if (v13)
    {
      v14->_hasCohortDataAvailabilityState = 1;
      v18 = [v13 intValue];
    }

    else
    {
      v14->_hasCohortDataAvailabilityState = 0;
      v18 = -1;
    }

    v14->_cohortDataAvailabilityState = v18;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startTimestampInSecondsSince1970" number:1 type:5 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"windowInSeconds" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cohortType" number:3 type:2 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cohortDataAvailabilityState" number:4 type:2 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startTimestampInSecondsSince1970" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"windowInSeconds" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cohortType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cohortDataAvailabilityState" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMSiriSegmentsCohortsDeviceCohorts alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end