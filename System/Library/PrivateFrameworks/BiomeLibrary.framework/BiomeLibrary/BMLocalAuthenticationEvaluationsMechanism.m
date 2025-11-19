@interface BMLocalAuthenticationEvaluationsMechanism
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLocalAuthenticationEvaluationsMechanism)initWithAvailable:(id)a3 started:(id)a4 success:(id)a5 lockout:(id)a6 generation:(id)a7;
- (BMLocalAuthenticationEvaluationsMechanism)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLocalAuthenticationEvaluationsMechanism

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

      v6 = [(BMLocalAuthenticationEvaluationsMechanism *)self available];
      if (v6 != [v5 available])
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

      v7 = [(BMLocalAuthenticationEvaluationsMechanism *)self started];
      if (v7 != [v5 started])
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

      v8 = [(BMLocalAuthenticationEvaluationsMechanism *)self success];
      if (v8 != [v5 success])
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

      v9 = [(BMLocalAuthenticationEvaluationsMechanism *)self lockout];
      if (v9 != [v5 lockout])
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
      v10 = [(BMLocalAuthenticationEvaluationsMechanism *)self generation];
      v11 = v10 == [v5 generation];
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
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v8;
  v18[1] = @"started";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v9;
  v18[2] = @"success";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v10;
  v18[3] = @"lockout";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = v11;
  v18[4] = @"generation";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = v12;
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

- (BMLocalAuthenticationEvaluationsMechanism)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"available"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"started"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v39 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        v33 = a4;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"started"];
        v47 = v37;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v39 = 0;
        v16 = 0;
        *v33 = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v39 = v9;
    }

    else
    {
      v39 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"success"];
    v36 = v8;
    v38 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v37 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        v24 = a4;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"success"];
        v45 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v37 = 0;
        v16 = 0;
        *v24 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_18:

        self = v38;
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

    v11 = [v6 objectForKeyedSubscript:@"lockout"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_18;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v28 = a4;
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lockout"];
        v43 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v29 = [v34 initWithDomain:v27 code:2 userInfo:v14];
        v13 = 0;
        v16 = 0;
        *v28 = v29;
        goto LABEL_17;
      }

      v12 = a4;
      v13 = v11;
    }

    else
    {
      v12 = a4;
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"generation"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v12)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v40 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"generation"];
          v41 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          *v12 = [v35 initWithDomain:v32 code:2 userInfo:v31];
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

    v16 = [(BMLocalAuthenticationEvaluationsMechanism *)v38 initWithAvailable:v36 started:v39 success:v37 lockout:v13 generation:v15];
    v38 = v16;
LABEL_17:

    goto LABEL_18;
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
    v16 = 0;
    goto LABEL_21;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"available"];
  v49[0] = v39;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v8 = 0;
  v16 = 0;
  *v19 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocalAuthenticationEvaluationsMechanism *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = BMLocalAuthenticationEvaluationsMechanism;
  v5 = [(BMEventBase *)&v52 init];
  if (!v5)
  {
    goto LABEL_87;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_85;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v53 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v45 = [v4 position] + 1;
            if (v45 >= [v4 position] && (v46 = objc_msgSend(v4, "position") + 1, v46 <= objc_msgSend(v4, "length")))
            {
              v47 = [v4 data];
              [v47 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v29 = (v44 != 0) & ~[v4 hasError];
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
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v29 = (v25 != 0) & ~[v4 hasError];
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
          v39 = [v4 position] + 1;
          if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 1, v40 <= objc_msgSend(v4, "length")))
          {
            v41 = [v4 data];
            [v41 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        v29 = (v38 != 0) & ~[v4 hasError];
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
        v19 = [v4 position] + 1;
        if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
        {
          v21 = [v4 data];
          [v21 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      if ([v4 hasError])
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
      v49 = [v4 position];
      if (v49 >= [v4 length])
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
      v33 = [v4 position] + 1;
      if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
      {
        v35 = [v4 data];
        [v35 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
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

    v29 = (v32 != 0) & ~[v4 hasError];
LABEL_72:
    v48 = 20;
    goto LABEL_83;
  }

LABEL_85:
  if ([v4 hasError])
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

- (BMLocalAuthenticationEvaluationsMechanism)initWithAvailable:(id)a3 started:(id)a4 success:(id)a5 lockout:(id)a6 generation:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMLocalAuthenticationEvaluationsMechanism;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v17->_hasAvailable = 1;
      v17->_available = [v12 BOOLValue];
    }

    else
    {
      v17->_hasAvailable = 0;
      v17->_available = 0;
    }

    if (v13)
    {
      v17->_hasStarted = 1;
      v17->_started = [v13 BOOLValue];
    }

    else
    {
      v17->_hasStarted = 0;
      v17->_started = 0;
    }

    if (v14)
    {
      v17->_hasSuccess = 1;
      v17->_success = [v14 BOOLValue];
    }

    else
    {
      v17->_hasSuccess = 0;
      v17->_success = 0;
    }

    if (v15)
    {
      v17->_hasLockout = 1;
      v17->_lockout = [v15 BOOLValue];
    }

    else
    {
      v17->_hasLockout = 0;
      v17->_lockout = 0;
    }

    if (v16)
    {
      v17->_hasGeneration = 1;
      v18 = [v16 unsignedIntValue];
    }

    else
    {
      v18 = 0;
      v17->_hasGeneration = 0;
    }

    v17->_generation = v18;
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