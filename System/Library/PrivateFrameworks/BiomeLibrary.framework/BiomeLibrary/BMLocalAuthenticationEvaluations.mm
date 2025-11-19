@interface BMLocalAuthenticationEvaluations
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLocalAuthenticationEvaluations)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLocalAuthenticationEvaluations)initWithPolicy:(id)a3 result:(id)a4 biometry:(id)a5 passcode:(id)a6 ratchetState:(int)a7 ratchetArmingState:(int)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLocalAuthenticationEvaluations

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"policy" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"result" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"biometry_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_234];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"passcode_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_236];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ratchetState" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ratchetArmingState" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMLocalAuthenticationEvaluations hasPolicy](self, "hasPolicy") || [v5 hasPolicy])
    {
      if (![(BMLocalAuthenticationEvaluations *)self hasPolicy])
      {
        goto LABEL_23;
      }

      if (![v5 hasPolicy])
      {
        goto LABEL_23;
      }

      v6 = [(BMLocalAuthenticationEvaluations *)self policy];
      if (v6 != [v5 policy])
      {
        goto LABEL_23;
      }
    }

    if (-[BMLocalAuthenticationEvaluations hasResult](self, "hasResult") || [v5 hasResult])
    {
      if (![(BMLocalAuthenticationEvaluations *)self hasResult])
      {
        goto LABEL_23;
      }

      if (![v5 hasResult])
      {
        goto LABEL_23;
      }

      v7 = [(BMLocalAuthenticationEvaluations *)self result];
      if (v7 != [v5 result])
      {
        goto LABEL_23;
      }
    }

    v8 = [(BMLocalAuthenticationEvaluations *)self biometry];
    v9 = [v5 biometry];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [(BMLocalAuthenticationEvaluations *)self biometry];
      v12 = [v5 biometry];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    v15 = [(BMLocalAuthenticationEvaluations *)self passcode];
    v16 = [v5 passcode];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(BMLocalAuthenticationEvaluations *)self passcode];
      v19 = [v5 passcode];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_23;
      }
    }

    v21 = [(BMLocalAuthenticationEvaluations *)self ratchetState];
    if (v21 == [v5 ratchetState])
    {
      v22 = [(BMLocalAuthenticationEvaluations *)self ratchetArmingState];
      v14 = v22 == [v5 ratchetArmingState];
LABEL_24:

      goto LABEL_25;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  v14 = 0;
LABEL_25:

  return v14;
}

- (id)jsonDictionary
{
  v25[6] = *MEMORY[0x1E69E9840];
  if ([(BMLocalAuthenticationEvaluations *)self hasPolicy])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations policy](self, "policy")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMLocalAuthenticationEvaluations *)self hasResult])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations result](self, "result")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BMLocalAuthenticationEvaluations *)self biometry];
  v6 = [v5 jsonDictionary];

  v7 = [(BMLocalAuthenticationEvaluations *)self passcode];
  v8 = [v7 jsonDictionary];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations ratchetState](self, "ratchetState")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations ratchetArmingState](self, "ratchetArmingState")}];
  v24[0] = @"policy";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v23 = v3;
  v25[0] = v11;
  v24[1] = @"result";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v25[1] = v12;
  v24[2] = @"biometry";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = v13;
  v24[3] = @"passcode";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v14;
  v24[4] = @"ratchetState";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v15;
  v24[5] = @"ratchetArmingState";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v9)
    {
LABEL_21:
      if (v8)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  if (v8)
  {
LABEL_22:
    if (v6)
    {
      goto LABEL_23;
    }

LABEL_32:

    if (v4)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_31:

  if (!v6)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (v4)
  {
    goto LABEL_24;
  }

LABEL_33:

LABEL_24:
  if (!v23)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMLocalAuthenticationEvaluations)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v82[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"policy"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"result"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v17 = 0;
          goto LABEL_61;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = v8;
        v26 = *MEMORY[0x1E698F240];
        v79 = *MEMORY[0x1E696A578];
        v27 = self;
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v55 = objc_opt_class();
        v29 = v28;
        self = v27;
        v15 = [v29 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v55, @"result"];
        v80 = v15;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v31 = v26;
        v8 = v25;
        v68 = v30;
        v32 = [v24 initWithDomain:v31 code:2 userInfo:?];
        v10 = 0;
        v17 = 0;
        *a4 = v32;
        goto LABEL_59;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"biometry"];
    v60 = a4;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v17 = 0;
          goto LABEL_60;
        }

        v65 = v10;
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = v8;
        v35 = *MEMORY[0x1E698F240];
        v77 = *MEMORY[0x1E696A578];
        v36 = self;
        v37 = objc_alloc(MEMORY[0x1E696AEC0]);
        v56 = objc_opt_class();
        v38 = v37;
        self = v36;
        v68 = [v38 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v56, @"biometry"];
        v78 = v68;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v40 = v34;
        v41 = v35;
        v8 = v63;
        v10 = v65;
        *a4 = [v40 initWithDomain:v41 code:2 userInfo:v39];

        v17 = 0;
        goto LABEL_58;
      }

      v15 = v11;
      v70 = 0;
      v68 = [[BMLocalAuthenticationEvaluationsMechanism alloc] initWithJSONDictionary:v15 error:&v70];
      v16 = v70;
      if (v16)
      {
        if (a4)
        {
          v16 = v16;
          *a4 = v16;
        }

        v17 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      v68 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"passcode"];
    v62 = v8;
    v64 = v10;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v60)
        {
          v17 = 0;
          goto LABEL_57;
        }

        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = self;
        v43 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"passcode"];
        v76 = v61;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v44 = v43;
        self = v67;
        v45 = [v42 initWithDomain:v44 code:2 userInfo:v14];
        v17 = 0;
        *v60 = v45;
        goto LABEL_55;
      }

      v14 = v12;
      v69 = 0;
      v61 = [[BMLocalAuthenticationEvaluationsMechanism alloc] initWithJSONDictionary:v14 error:&v69];
      v18 = v69;
      if (v18)
      {
        if (v60)
        {
          v18 = v18;
          *v60 = v18;
        }

        v17 = 0;
        goto LABEL_56;
      }

      v66 = self;
    }

    else
    {
      v66 = self;
      v61 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"ratchetState"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v60)
          {
            v14 = 0;
            v17 = 0;
            goto LABEL_54;
          }

          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v73 = *MEMORY[0x1E696A578];
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ratchetState"];
          v74 = v47;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v52 = [v58 initWithDomain:v51 code:2 userInfo:v46];
          v14 = 0;
          v17 = 0;
          *v60 = v52;
          goto LABEL_53;
        }

        v33 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationEvaluationsRatchetStateFromString(v13)];
      }

      v14 = v33;
    }

    else
    {
      v14 = 0;
    }

    v46 = [v6 objectForKeyedSubscript:@"ratchetArmingState"];
    if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = v46;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v60)
          {
            v59 = objc_alloc(MEMORY[0x1E696ABC0]);
            v57 = *MEMORY[0x1E698F240];
            v71 = *MEMORY[0x1E696A578];
            v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ratchetArmingState"];
            v72 = v53;
            v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
            *v60 = [v59 initWithDomain:v57 code:2 userInfo:v54];
          }

          v47 = 0;
          v17 = 0;
          goto LABEL_53;
        }

        v48 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationEvaluationsRatchetArmingStateFromString(v46)];
      }

      v47 = v48;
    }

    else
    {
      v47 = 0;
    }

    v17 = -[BMLocalAuthenticationEvaluations initWithPolicy:result:biometry:passcode:ratchetState:ratchetArmingState:](v66, "initWithPolicy:result:biometry:passcode:ratchetState:ratchetArmingState:", v62, v64, v68, v61, [v14 intValue], objc_msgSend(v47, "intValue"));
    v66 = v17;
LABEL_53:

LABEL_54:
    self = v66;
LABEL_55:
    v10 = v64;
LABEL_56:

    v8 = v62;
LABEL_57:

LABEL_58:
    v15 = v11;
LABEL_59:

    v11 = v15;
LABEL_60:

    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (a4)
  {
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E698F240];
    v81 = *MEMORY[0x1E696A578];
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"policy"];
    v82[0] = v21;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:&v81 count:1];
    v22 = v19;
    v10 = v21;
    v23 = [v22 initWithDomain:v20 code:2 userInfo:v9];
    v8 = 0;
    v17 = 0;
    *a4 = v23;
LABEL_61:

    goto LABEL_62;
  }

  v8 = 0;
  v17 = 0;
LABEL_62:

  v49 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocalAuthenticationEvaluations *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_hasPolicy)
  {
    policy = self->_policy;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasResult)
  {
    result = self->_result;
    PBDataWriterWriteInt32Field();
  }

  if (self->_biometry)
  {
    PBDataWriterPlaceMark();
    [(BMLocalAuthenticationEvaluationsMechanism *)self->_biometry writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_passcode)
  {
    PBDataWriterPlaceMark();
    [(BMLocalAuthenticationEvaluationsMechanism *)self->_passcode writeTo:v4];
    PBDataWriterRecallMark();
  }

  ratchetState = self->_ratchetState;
  PBDataWriterWriteUint32Field();
  ratchetArmingState = self->_ratchetArmingState;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = BMLocalAuthenticationEvaluations;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_91;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_89;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v50) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v50 & 0x7F) << v7;
        if ((v50 & 0x80) == 0)
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
        goto LABEL_89;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      switch(v15)
      {
        case 4:
          v50 = 0;
          v51 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_90;
          }

          v16 = [[BMLocalAuthenticationEvaluationsMechanism alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_90;
          }

          v17 = 48;
LABEL_49:
          v32 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          PBReaderRecallMark();
          goto LABEL_88;
        case 5:
          v39 = 0;
          v40 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v41 = [v4 position] + 1;
            if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
            {
              v43 = [v4 data];
              [v43 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v50 & 0x7F) << v39;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v24 = v40++ > 8;
            if (v24)
            {
              goto LABEL_85;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 8)
          {
LABEL_85:
            LODWORD(v20) = 0;
          }

          v45 = 32;
          break;
        case 7:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v50 & 0x7F) << v18;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_76;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 5)
          {
LABEL_76:
            LODWORD(v20) = 0;
          }

          v45 = 36;
          break;
        default:
LABEL_50:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_90;
          }

          goto LABEL_88;
      }

      *(&v5->super.super.isa + v45) = v20;
LABEL_88:
      v46 = [v4 position];
      if (v46 >= [v4 length])
      {
        goto LABEL_89;
      }
    }

    if (v15 == 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v5->_hasPolicy = 1;
      while (1)
      {
        LOBYTE(v50) = 0;
        v28 = [v4 position] + 1;
        if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
        {
          v30 = [v4 data];
          [v30 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v27 |= (v50 & 0x7F) << v25;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v13 = v26++ >= 9;
        if (v13)
        {
          v31 = 0;
          goto LABEL_73;
        }
      }

      if ([v4 hasError])
      {
        v31 = 0;
      }

      else
      {
        v31 = v27;
      }

LABEL_73:
      v44 = 24;
      goto LABEL_82;
    }

    if (v15 == 2)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v5->_hasResult = 1;
      while (1)
      {
        LOBYTE(v50) = 0;
        v36 = [v4 position] + 1;
        if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 1, v37 <= objc_msgSend(v4, "length")))
        {
          v38 = [v4 data];
          [v38 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v35 |= (v50 & 0x7F) << v33;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v13 = v34++ >= 9;
        if (v13)
        {
          v31 = 0;
          goto LABEL_81;
        }
      }

      if ([v4 hasError])
      {
        v31 = 0;
      }

      else
      {
        v31 = v35;
      }

LABEL_81:
      v44 = 28;
LABEL_82:
      *(&v5->super.super.isa + v44) = v31;
      goto LABEL_88;
    }

    if (v15 != 3)
    {
      goto LABEL_50;
    }

    v50 = 0;
    v51 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_90;
    }

    v16 = [[BMLocalAuthenticationEvaluationsMechanism alloc] initByReadFrom:v4];
    if (!v16)
    {
      goto LABEL_90;
    }

    v17 = 40;
    goto LABEL_49;
  }

LABEL_89:
  if ([v4 hasError])
  {
LABEL_90:
    v47 = 0;
  }

  else
  {
LABEL_91:
    v47 = v5;
  }

  return v47;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations policy](self, "policy")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations result](self, "result")}];
  v6 = [(BMLocalAuthenticationEvaluations *)self biometry];
  v7 = [(BMLocalAuthenticationEvaluations *)self passcode];
  v8 = BMLocalAuthenticationEvaluationsRatchetStateAsString([(BMLocalAuthenticationEvaluations *)self ratchetState]);
  v9 = BMLocalAuthenticationEvaluationsRatchetArmingStateAsString([(BMLocalAuthenticationEvaluations *)self ratchetArmingState]);
  v10 = [v3 initWithFormat:@"BMLocalAuthenticationEvaluations with policy: %@, result: %@, biometry: %@, passcode: %@, ratchetState: %@, ratchetArmingState: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMLocalAuthenticationEvaluations)initWithPolicy:(id)a3 result:(id)a4 biometry:(id)a5 passcode:(id)a6 ratchetState:(int)a7 ratchetArmingState:(int)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = BMLocalAuthenticationEvaluations;
  v18 = [(BMEventBase *)&v22 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v18->_hasPolicy = 1;
      v19 = [v14 intValue];
    }

    else
    {
      v18->_hasPolicy = 0;
      v19 = -1;
    }

    v18->_policy = v19;
    if (v15)
    {
      v18->_hasResult = 1;
      v20 = [v15 intValue];
    }

    else
    {
      v18->_hasResult = 0;
      v20 = -1;
    }

    v18->_result = v20;
    objc_storeStrong(&v18->_biometry, a5);
    objc_storeStrong(&v18->_passcode, a6);
    v18->_ratchetState = a7;
    v18->_ratchetArmingState = a8;
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"policy" number:1 type:2 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"result" number:2 type:2 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"biometry" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"passcode" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ratchetState" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ratchetArmingState" number:7 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __43__BMLocalAuthenticationEvaluations_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 passcode];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMLocalAuthenticationEvaluations_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 biometry];
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

    v8 = [[BMLocalAuthenticationEvaluations alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end