@interface BMUserFocusModeComputed
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMUserFocusModeComputed)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMUserFocusModeComputed)initWithMode:(id)a3 starting:(id)a4 updateReason:(int)a5 semanticType:(int)a6 updateSource:(int)a7 semanticModeIdentifier:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMUserFocusModeComputed

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mode" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"updateReason" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"semanticType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"updateSource" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"semanticModeIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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
    v6 = [(BMUserFocusModeComputed *)self mode];
    v7 = [v5 mode];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMUserFocusModeComputed *)self mode];
      v10 = [v5 mode];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    if (!-[BMUserFocusModeComputed hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMUserFocusModeComputed hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v13 = -[BMUserFocusModeComputed starting](self, "starting"), v13 == objc_msgSend(v5, "starting")))
    {
      v14 = [(BMUserFocusModeComputed *)self updateReason];
      if (v14 == [v5 updateReason])
      {
        v15 = [(BMUserFocusModeComputed *)self semanticType];
        if (v15 == [v5 semanticType])
        {
          v16 = [(BMUserFocusModeComputed *)self updateSource];
          if (v16 == [v5 updateSource])
          {
            v17 = [(BMUserFocusModeComputed *)self semanticModeIdentifier];
            v18 = [v5 semanticModeIdentifier];
            if (v17 == v18)
            {
              v12 = 1;
            }

            else
            {
              v19 = [(BMUserFocusModeComputed *)self semanticModeIdentifier];
              v20 = [v5 semanticModeIdentifier];
              v12 = [v19 isEqual:v20];
            }

            goto LABEL_18;
          }
        }
      }
    }

LABEL_17:
    v12 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMUserFocusModeComputed *)self mode];
  if ([(BMUserFocusModeComputed *)self hasStarting])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusModeComputed starting](self, "starting")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusModeComputed updateReason](self, "updateReason")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusModeComputed semanticType](self, "semanticType")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusModeComputed updateSource](self, "updateSource")}];
  v8 = [(BMUserFocusModeComputed *)self semanticModeIdentifier];
  v22[0] = @"mode";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v21 = v3;
  v23[0] = v9;
  v22[1] = @"starting";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v23[1] = v10;
  v22[2] = @"updateReason";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v11;
  v22[3] = @"semanticType";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v12;
  v22[4] = @"updateSource";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v13;
  v22[5] = @"semanticModeIdentifier";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (v6)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (v6)
  {
LABEL_19:
    if (v5)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (v4)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v4)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v21)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMUserFocusModeComputed)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v62[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"mode"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!p_isa)
      {
        v50 = 0;
        v25 = self;
        goto LABEL_48;
      }

      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = *MEMORY[0x1E698F240];
      v61 = *MEMORY[0x1E696A578];
      v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mode"];
      v62[0] = v49;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
      v12 = [v10 initWithDomain:v11 code:2 userInfo:v7];
      v50 = 0;
      v13 = p_isa;
      p_isa = 0;
      *v13 = v12;
      goto LABEL_59;
    }

    v50 = v6;
  }

  else
  {
    v50 = 0;
  }

  v7 = [v5 objectForKeyedSubscript:@"starting"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v7;
        goto LABEL_7;
      }

      if (p_isa)
      {
        v14 = objc_alloc(MEMORY[0x1E696ABC0]);
        v15 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
        v60 = v48;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v16 = [v14 initWithDomain:v15 code:2 userInfo:v8];
        v49 = 0;
        v17 = p_isa;
        p_isa = 0;
        *v17 = v16;
        goto LABEL_65;
      }

      v49 = 0;
LABEL_59:
      v25 = self;
      goto LABEL_47;
    }
  }

  v49 = 0;
LABEL_7:
  v8 = [v5 objectForKeyedSubscript:@"updateReason"];
  v45 = v6;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
LABEL_22:
        v48 = v9;
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusModeComputedUpdateReasonFromString(v8)];
        goto LABEL_22;
      }

      if (p_isa)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"updateReason"];
        v58 = v46;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v33 = [v31 initWithDomain:v32 code:2 userInfo:v18];
        v48 = 0;
        v34 = p_isa;
        p_isa = 0;
        *v34 = v33;
        goto LABEL_67;
      }

      v48 = 0;
LABEL_65:
      v25 = self;
      goto LABEL_46;
    }
  }

  v48 = 0;
LABEL_23:
  v18 = [v5 objectForKeyedSubscript:@"semanticType"];
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
LABEL_30:
        v46 = v19;
        goto LABEL_31;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusModeComputedSemanticTypeFromString(v18)];
        goto LABEL_30;
      }

      if (p_isa)
      {
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = p_isa;
        v37 = *MEMORY[0x1E698F240];
        v55 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"semanticType"];
        v56 = v21;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v38 = [v35 initWithDomain:v37 code:2 userInfo:v20];
        v46 = 0;
        p_isa = 0;
        *v36 = v38;
        goto LABEL_69;
      }

      v46 = 0;
LABEL_67:
      v25 = self;
      goto LABEL_45;
    }
  }

  v46 = 0;
LABEL_31:
  v20 = [v5 objectForKeyedSubscript:@"updateSource"];
  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v20;
LABEL_38:
        v21 = v22;
        goto LABEL_39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusModeComputedUpdateSourceFromString(v20)];
        goto LABEL_38;
      }

      if (p_isa)
      {
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = p_isa;
        v41 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"updateSource"];
        v54 = v24;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v42 = [v39 initWithDomain:v41 code:2 userInfo:v23];
        v21 = 0;
        p_isa = 0;
        *v40 = v42;
        goto LABEL_63;
      }

      v21 = 0;
LABEL_69:
      v25 = self;
      goto LABEL_44;
    }
  }

  v21 = 0;
LABEL_39:
  v23 = [v5 objectForKeyedSubscript:@"semanticModeIdentifier"];
  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
        goto LABEL_42;
      }

      if (p_isa)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v51 = *MEMORY[0x1E696A578];
        v28 = p_isa;
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"semanticModeIdentifier"];
        v52 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        *v28 = [v44 initWithDomain:v43 code:2 userInfo:v30];

        v24 = 0;
        p_isa = 0;
      }

      else
      {
        v24 = 0;
      }

LABEL_63:
      v25 = self;
      goto LABEL_43;
    }
  }

  v24 = 0;
LABEL_42:
  v25 = -[BMUserFocusModeComputed initWithMode:starting:updateReason:semanticType:updateSource:semanticModeIdentifier:](self, "initWithMode:starting:updateReason:semanticType:updateSource:semanticModeIdentifier:", v50, v49, [v48 intValue], objc_msgSend(v46, "intValue"), objc_msgSend(v21, "intValue"), v24);
  p_isa = &v25->super.super.isa;
LABEL_43:

LABEL_44:
LABEL_45:

  v6 = v45;
LABEL_46:

LABEL_47:
LABEL_48:

  v26 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUserFocusModeComputed *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_mode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
  }

  updateReason = self->_updateReason;
  PBDataWriterWriteUint32Field();
  semanticType = self->_semanticType;
  PBDataWriterWriteUint32Field();
  updateSource = self->_updateSource;
  PBDataWriterWriteUint32Field();
  if (self->_semanticModeIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = BMUserFocusModeComputed;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_84;
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
        v48 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        if (v15 == 4)
        {
          v30 = 0;
          v31 = 0;
          v18 = 0;
          while (1)
          {
            v48 = 0;
            v32 = [v4 position] + 1;
            if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
            {
              v34 = [v4 data];
              [v34 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v48 & 0x7F) << v30;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v31++ > 8;
            if (v22)
            {
              goto LABEL_68;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 0xB)
          {
LABEL_68:
            LODWORD(v18) = 0;
          }

          v43 = 28;
LABEL_78:
          *(&v5->super.super.isa + v43) = v18;
          goto LABEL_81;
        }

        if (v15 != 6)
        {
          if (v15 != 5)
          {
LABEL_53:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_83;
            }

            goto LABEL_81;
          }

          v23 = 0;
          v24 = 0;
          v18 = 0;
          while (1)
          {
            v48 = 0;
            v25 = [v4 position] + 1;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
            {
              v27 = [v4 data];
              [v27 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_76;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 3)
          {
LABEL_76:
            LODWORD(v18) = 0;
          }

          v43 = 32;
          goto LABEL_78;
        }

        v28 = PBReaderReadString();
        v29 = 48;
      }

      else
      {
        if (v15 != 1)
        {
          if (v15 == 2)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v5->_hasStarting = 1;
            while (1)
            {
              v48 = 0;
              v38 = [v4 position] + 1;
              if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
              {
                v40 = [v4 data];
                [v40 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v37 |= (v48 & 0x7F) << v35;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v13 = v36++ >= 9;
              if (v13)
              {
                LOBYTE(v41) = 0;
                goto LABEL_80;
              }
            }

            v41 = (v37 != 0) & ~[v4 hasError];
LABEL_80:
            v5->_starting = v41;
            goto LABEL_81;
          }

          if (v15 != 3)
          {
            goto LABEL_53;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v48 = 0;
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v48 & 0x7F) << v16;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_72;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 3)
          {
LABEL_72:
            LODWORD(v18) = 0;
          }

          v43 = 24;
          goto LABEL_78;
        }

        v28 = PBReaderReadString();
        v29 = 40;
      }

      v42 = *(&v5->super.super.isa + v29);
      *(&v5->super.super.isa + v29) = v28;

LABEL_81:
      v44 = [v4 position];
    }

    while (v44 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_83:
    v45 = 0;
  }

  else
  {
LABEL_84:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMUserFocusModeComputed *)self mode];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusModeComputed starting](self, "starting")}];
  v6 = BMUserFocusModeComputedUpdateReasonAsString([(BMUserFocusModeComputed *)self updateReason]);
  v7 = BMUserFocusModeComputedSemanticTypeAsString([(BMUserFocusModeComputed *)self semanticType]);
  v8 = BMUserFocusModeComputedUpdateSourceAsString([(BMUserFocusModeComputed *)self updateSource]);
  v9 = [(BMUserFocusModeComputed *)self semanticModeIdentifier];
  v10 = [v3 initWithFormat:@"BMUserFocusModeComputed with mode: %@, starting: %@, updateReason: %@, semanticType: %@, updateSource: %@, semanticModeIdentifier: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMUserFocusModeComputed)initWithMode:(id)a3 starting:(id)a4 updateReason:(int)a5 semanticType:(int)a6 updateSource:(int)a7 semanticModeIdentifier:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v20.receiver = self;
  v20.super_class = BMUserFocusModeComputed;
  v18 = [(BMEventBase *)&v20 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_mode, a3);
    if (v16)
    {
      v18->_hasStarting = 1;
      v18->_starting = [v16 BOOLValue];
    }

    else
    {
      v18->_hasStarting = 0;
      v18->_starting = 0;
    }

    v18->_updateReason = a5;
    v18->_semanticType = a6;
    v18->_updateSource = a7;
    objc_storeStrong(&v18->_semanticModeIdentifier, a8);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mode" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:2 type:12 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"updateReason" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"semanticType" number:4 type:4 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"updateSource" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"semanticModeIdentifier" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMUserFocusModeComputed_v1;
  }

  else
  {
    if (a4 != 2)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMUserFocusModeComputed;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 20) = a4;
  }

LABEL_9:

  return v9;
}

@end