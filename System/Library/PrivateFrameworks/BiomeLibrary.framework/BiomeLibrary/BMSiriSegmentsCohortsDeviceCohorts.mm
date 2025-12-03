@interface BMSiriSegmentsCohortsDeviceCohorts
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriSegmentsCohortsDeviceCohorts)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriSegmentsCohortsDeviceCohorts)initWithStartTimestampInSecondsSince1970:(id)since1970 windowInSeconds:(id)seconds cohortType:(id)type cohortDataAvailabilityState:(id)state;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriSegmentsCohortsDeviceCohorts

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

      startTimestampInSecondsSince1970 = [(BMSiriSegmentsCohortsDeviceCohorts *)self startTimestampInSecondsSince1970];
      if (startTimestampInSecondsSince1970 != [v5 startTimestampInSecondsSince1970])
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

      windowInSeconds = [(BMSiriSegmentsCohortsDeviceCohorts *)self windowInSeconds];
      if (windowInSeconds != [v5 windowInSeconds])
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

      cohortType = [(BMSiriSegmentsCohortsDeviceCohorts *)self cohortType];
      if (cohortType != [v5 cohortType])
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
      cohortDataAvailabilityState = [(BMSiriSegmentsCohortsDeviceCohorts *)self cohortDataAvailabilityState];
      v10 = cohortDataAvailabilityState == [v5 cohortDataAvailabilityState];
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
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"windowInSeconds";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"cohortType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"cohortDataAvailabilityState";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
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

- (BMSiriSegmentsCohortsDeviceCohorts)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"startTimestampInSecondsSince1970"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"windowInSeconds"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"windowInSeconds"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"cohortType"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_33;
        }

        selfCopy3 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cohortType"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *error = v23;
        goto LABEL_31;
      }

      selfCopy3 = self;
      v12 = v10;
    }

    else
    {
      selfCopy3 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"cohortDataAvailabilityState"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMSiriSegmentsCohortsDeviceCohorts *)selfCopy3 initWithStartTimestampInSecondsSince1970:v8 windowInSeconds:v32 cohortType:v12 cohortDataAvailabilityState:v14];
      selfCopy3 = v15;
LABEL_32:

      self = selfCopy3;
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

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cohortDataAvailabilityState"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    error = v32;
    goto LABEL_32;
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
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
  error = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriSegmentsCohortsDeviceCohorts *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v46.receiver = self;
  v46.super_class = BMSiriSegmentsCohortsDeviceCohorts;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_81;
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
        v47 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v39 = [fromCopy position] + 1;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if ([fromCopy hasError])
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
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if ([fromCopy hasError])
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
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if ([fromCopy hasError])
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
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v47 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if ([fromCopy hasError])
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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

- (BMSiriSegmentsCohortsDeviceCohorts)initWithStartTimestampInSecondsSince1970:(id)since1970 windowInSeconds:(id)seconds cohortType:(id)type cohortDataAvailabilityState:(id)state
{
  since1970Copy = since1970;
  secondsCopy = seconds;
  typeCopy = type;
  stateCopy = state;
  v20.receiver = self;
  v20.super_class = BMSiriSegmentsCohortsDeviceCohorts;
  v14 = [(BMEventBase *)&v20 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (since1970Copy)
    {
      v14->_hasStartTimestampInSecondsSince1970 = 1;
      unsignedLongLongValue = [since1970Copy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v14->_hasStartTimestampInSecondsSince1970 = 0;
    }

    v14->_startTimestampInSecondsSince1970 = unsignedLongLongValue;
    if (secondsCopy)
    {
      v14->_hasWindowInSeconds = 1;
      unsignedIntValue = [secondsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v14->_hasWindowInSeconds = 0;
    }

    v14->_windowInSeconds = unsignedIntValue;
    if (typeCopy)
    {
      v14->_hasCohortType = 1;
      intValue = [typeCopy intValue];
    }

    else
    {
      v14->_hasCohortType = 0;
      intValue = -1;
    }

    v14->_cohortType = intValue;
    if (stateCopy)
    {
      v14->_hasCohortDataAvailabilityState = 1;
      intValue2 = [stateCopy intValue];
    }

    else
    {
      v14->_hasCohortDataAvailabilityState = 0;
      intValue2 = -1;
    }

    v14->_cohortDataAvailabilityState = intValue2;
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