@interface BMLocalAuthenticationEvaluationsMechanism
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLocalAuthenticationEvaluationsMechanism)initWithAvailable:(id)available started:(id)started success:(id)success lockout:(id)lockout generation:(id)generation;
- (BMLocalAuthenticationEvaluationsMechanism)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLocalAuthenticationEvaluationsMechanism

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMLocalAuthenticationEvaluationsMechanism hasAvailable](self, "hasAvailable") || [v5 hasAvailable])
    {
      if (![(BMLocalAuthenticationEvaluationsMechanism *)self hasAvailable])
      {
        goto LABEL_28;
      }

      if (![v5 hasAvailable])
      {
        goto LABEL_28;
      }

      available = [(BMLocalAuthenticationEvaluationsMechanism *)self available];
      if (available != [v5 available])
      {
        goto LABEL_28;
      }
    }

    if (-[BMLocalAuthenticationEvaluationsMechanism hasStarted](self, "hasStarted") || [v5 hasStarted])
    {
      if (![(BMLocalAuthenticationEvaluationsMechanism *)self hasStarted])
      {
        goto LABEL_28;
      }

      if (![v5 hasStarted])
      {
        goto LABEL_28;
      }

      started = [(BMLocalAuthenticationEvaluationsMechanism *)self started];
      if (started != [v5 started])
      {
        goto LABEL_28;
      }
    }

    if (-[BMLocalAuthenticationEvaluationsMechanism hasSuccess](self, "hasSuccess") || [v5 hasSuccess])
    {
      if (![(BMLocalAuthenticationEvaluationsMechanism *)self hasSuccess])
      {
        goto LABEL_28;
      }

      if (![v5 hasSuccess])
      {
        goto LABEL_28;
      }

      success = [(BMLocalAuthenticationEvaluationsMechanism *)self success];
      if (success != [v5 success])
      {
        goto LABEL_28;
      }
    }

    if (-[BMLocalAuthenticationEvaluationsMechanism hasLockout](self, "hasLockout") || [v5 hasLockout])
    {
      if (![(BMLocalAuthenticationEvaluationsMechanism *)self hasLockout])
      {
        goto LABEL_28;
      }

      if (![v5 hasLockout])
      {
        goto LABEL_28;
      }

      lockout = [(BMLocalAuthenticationEvaluationsMechanism *)self lockout];
      if (lockout != [v5 lockout])
      {
        goto LABEL_28;
      }
    }

    if (!-[BMLocalAuthenticationEvaluationsMechanism hasGeneration](self, "hasGeneration") && ![v5 hasGeneration])
    {
      v11 = 1;
      goto LABEL_29;
    }

    if (-[BMLocalAuthenticationEvaluationsMechanism hasGeneration](self, "hasGeneration") && [v5 hasGeneration])
    {
      generation = [(BMLocalAuthenticationEvaluationsMechanism *)self generation];
      v11 = generation == [v5 generation];
    }

    else
    {
LABEL_28:
      v11 = 0;
    }

LABEL_29:

    goto LABEL_30;
  }

  v11 = 0;
LABEL_30:

  return v11;
}

- (id)jsonDictionary
{
  v19[5] = *MEMORY[0x1E69E9840];
  if ([(BMLocalAuthenticationEvaluationsMechanism *)self hasAvailable])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocalAuthenticationEvaluationsMechanism available](self, "available")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMLocalAuthenticationEvaluationsMechanism *)self hasStarted])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocalAuthenticationEvaluationsMechanism started](self, "started")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMLocalAuthenticationEvaluationsMechanism *)self hasSuccess])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocalAuthenticationEvaluationsMechanism success](self, "success")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMLocalAuthenticationEvaluationsMechanism *)self hasLockout])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocalAuthenticationEvaluationsMechanism lockout](self, "lockout")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMLocalAuthenticationEvaluationsMechanism *)self hasGeneration])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMLocalAuthenticationEvaluationsMechanism generation](self, "generation")}];
  }

  else
  {
    v7 = 0;
  }

  v16 = v3;
  v18[0] = @"available";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"started";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"success";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null3;
  v18[3] = @"lockout";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = null4;
  v18[4] = @"generation";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v6)
    {
LABEL_28:
      if (v5)
      {
        goto LABEL_29;
      }

LABEL_37:

      if (v4)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }
  }

  if (!v5)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v4)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:
  if (!v17)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMLocalAuthenticationEvaluationsMechanism)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"available"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v39 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        errorCopy = error;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"started"];
        v47 = v37;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v39 = 0;
        v16 = 0;
        *errorCopy = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v39 = v9;
    }

    else
    {
      v39 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"success"];
    v36 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v37 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        errorCopy2 = error;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"success"];
        v45 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v37 = 0;
        v16 = 0;
        *errorCopy2 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_18:

        self = selfCopy;
        v8 = v36;
LABEL_19:

        goto LABEL_20;
      }

      v37 = v10;
    }

    else
    {
      v37 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"lockout"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_18;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lockout"];
        v43 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v29 = [v34 initWithDomain:v27 code:2 userInfo:v14];
        v13 = 0;
        v16 = 0;
        *errorCopy3 = v29;
        goto LABEL_17;
      }

      errorCopy5 = error;
      v13 = v11;
    }

    else
    {
      errorCopy5 = error;
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"generation"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy5)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v40 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"generation"];
          v41 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          *errorCopy5 = [v35 initWithDomain:v32 code:2 userInfo:v31];
        }

        v15 = 0;
        v16 = 0;
        goto LABEL_17;
      }

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(BMLocalAuthenticationEvaluationsMechanism *)selfCopy initWithAvailable:v36 started:v39 success:v37 lockout:v13 generation:v15];
    selfCopy = v16;
LABEL_17:

    goto LABEL_18;
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
    v16 = 0;
    goto LABEL_21;
  }

  errorCopy6 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"available"];
  v49[0] = v39;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v8 = 0;
  v16 = 0;
  *errorCopy6 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocalAuthenticationEvaluationsMechanism *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasAvailable)
  {
    available = self->_available;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasStarted)
  {
    started = self->_started;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasSuccess)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasLockout)
  {
    lockout = self->_lockout;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasGeneration)
  {
    generation = self->_generation;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v52.receiver = self;
  v52.super_class = BMLocalAuthenticationEvaluationsMechanism;
  v5 = [(BMEventBase *)&v52 init];
  if (!v5)
  {
    goto LABEL_87;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_85;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v53 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v53 & 0x7F) << v7;
        if ((v53 & 0x80) == 0)
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
        goto LABEL_85;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v5->_hasAvailable = 1;
          while (1)
          {
            v53 = 0;
            v45 = [fromCopy position] + 1;
            if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 1, v46 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v44 |= (v53 & 0x7F) << v42;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v13 = v43++ >= 9;
            if (v13)
            {
              LOBYTE(v29) = 0;
              goto LABEL_76;
            }
          }

          v29 = (v44 != 0) & ~[fromCopy hasError];
LABEL_76:
          v48 = 16;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_69:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_86;
            }

            goto LABEL_84;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasStarted = 1;
          while (1)
          {
            v53 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v53 & 0x7F) << v23;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              LOBYTE(v29) = 0;
              goto LABEL_82;
            }
          }

          v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_82:
          v48 = 18;
        }

        goto LABEL_83;
      }

      if (v15 == 3)
      {
        break;
      }

      if (v15 == 4)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v5->_hasLockout = 1;
        while (1)
        {
          v53 = 0;
          v39 = [fromCopy position] + 1;
          if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v38 |= (v53 & 0x7F) << v36;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v13 = v37++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_74;
          }
        }

        v29 = (v38 != 0) & ~[fromCopy hasError];
LABEL_74:
        v48 = 22;
LABEL_83:
        *(&v5->super.super.isa + v48) = v29;
        goto LABEL_84;
      }

      if (v15 != 5)
      {
        goto LABEL_69;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v5->_hasGeneration = 1;
      while (1)
      {
        v53 = 0;
        v19 = [fromCopy position] + 1;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v18 |= (v53 & 0x7F) << v16;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v13 = v17++ >= 9;
        if (v13)
        {
          v22 = 0;
          goto LABEL_80;
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

LABEL_80:
      v5->_generation = v22;
LABEL_84:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_85;
      }
    }

    v30 = 0;
    v31 = 0;
    v32 = 0;
    v5->_hasSuccess = 1;
    while (1)
    {
      v53 = 0;
      v33 = [fromCopy position] + 1;
      if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
      {
        data6 = [fromCopy data];
        [data6 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v32 |= (v53 & 0x7F) << v30;
      if ((v53 & 0x80) == 0)
      {
        break;
      }

      v30 += 7;
      v13 = v31++ >= 9;
      if (v13)
      {
        LOBYTE(v29) = 0;
        goto LABEL_72;
      }
    }

    v29 = (v32 != 0) & ~[fromCopy hasError];
LABEL_72:
    v48 = 20;
    goto LABEL_83;
  }

LABEL_85:
  if ([fromCopy hasError])
  {
LABEL_86:
    v50 = 0;
  }

  else
  {
LABEL_87:
    v50 = v5;
  }

  return v50;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocalAuthenticationEvaluationsMechanism available](self, "available")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocalAuthenticationEvaluationsMechanism started](self, "started")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocalAuthenticationEvaluationsMechanism success](self, "success")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLocalAuthenticationEvaluationsMechanism lockout](self, "lockout")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMLocalAuthenticationEvaluationsMechanism generation](self, "generation")}];
  v9 = [v3 initWithFormat:@"BMLocalAuthenticationEvaluationsMechanism with available: %@, started: %@, success: %@, lockout: %@, generation: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMLocalAuthenticationEvaluationsMechanism)initWithAvailable:(id)available started:(id)started success:(id)success lockout:(id)lockout generation:(id)generation
{
  availableCopy = available;
  startedCopy = started;
  successCopy = success;
  lockoutCopy = lockout;
  generationCopy = generation;
  v20.receiver = self;
  v20.super_class = BMLocalAuthenticationEvaluationsMechanism;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (availableCopy)
    {
      v17->_hasAvailable = 1;
      v17->_available = [availableCopy BOOLValue];
    }

    else
    {
      v17->_hasAvailable = 0;
      v17->_available = 0;
    }

    if (startedCopy)
    {
      v17->_hasStarted = 1;
      v17->_started = [startedCopy BOOLValue];
    }

    else
    {
      v17->_hasStarted = 0;
      v17->_started = 0;
    }

    if (successCopy)
    {
      v17->_hasSuccess = 1;
      v17->_success = [successCopy BOOLValue];
    }

    else
    {
      v17->_hasSuccess = 0;
      v17->_success = 0;
    }

    if (lockoutCopy)
    {
      v17->_hasLockout = 1;
      v17->_lockout = [lockoutCopy BOOLValue];
    }

    else
    {
      v17->_hasLockout = 0;
      v17->_lockout = 0;
    }

    if (generationCopy)
    {
      v17->_hasGeneration = 1;
      unsignedIntValue = [generationCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v17->_hasGeneration = 0;
    }

    v17->_generation = unsignedIntValue;
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"available" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"started" number:2 type:12 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"success" number:3 type:12 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lockout" number:4 type:12 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"generation" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"available" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"started" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"success" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lockout" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"generation" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
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

    v8 = [[BMLocalAuthenticationEvaluationsMechanism alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end