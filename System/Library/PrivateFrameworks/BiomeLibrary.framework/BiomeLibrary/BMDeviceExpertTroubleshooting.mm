@interface BMDeviceExpertTroubleshooting
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceExpertTroubleshooting)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDeviceExpertTroubleshooting)initWithType:(id)a3 step:(id)a4 status:(id)a5 version:(id)a6 session:(id)a7 flow:(id)a8 interaction:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceExpertTroubleshooting

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"step" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"status" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"session" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flow" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"interaction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_344_107976];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDeviceExpertTroubleshooting *)self type];
    v7 = [v5 type];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDeviceExpertTroubleshooting *)self type];
      v10 = [v5 type];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    v13 = [(BMDeviceExpertTroubleshooting *)self step];
    v14 = [v5 step];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMDeviceExpertTroubleshooting *)self step];
      v17 = [v5 step];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_26;
      }
    }

    v19 = [(BMDeviceExpertTroubleshooting *)self status];
    v20 = [v5 status];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMDeviceExpertTroubleshooting *)self status];
      v23 = [v5 status];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_26;
      }
    }

    if (-[BMDeviceExpertTroubleshooting hasVersion](self, "hasVersion") || [v5 hasVersion])
    {
      if (![(BMDeviceExpertTroubleshooting *)self hasVersion])
      {
        goto LABEL_26;
      }

      if (![v5 hasVersion])
      {
        goto LABEL_26;
      }

      v25 = [(BMDeviceExpertTroubleshooting *)self version];
      if (v25 != [v5 version])
      {
        goto LABEL_26;
      }
    }

    v26 = [(BMDeviceExpertTroubleshooting *)self session];
    v27 = [v5 session];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMDeviceExpertTroubleshooting *)self session];
      v30 = [v5 session];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_26;
      }
    }

    v32 = [(BMDeviceExpertTroubleshooting *)self flow];
    v33 = [v5 flow];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(BMDeviceExpertTroubleshooting *)self flow];
      v36 = [v5 flow];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
LABEL_26:
        v12 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v39 = [(BMDeviceExpertTroubleshooting *)self interaction];
    v40 = [v5 interaction];
    if (v39 == v40)
    {
      v12 = 1;
    }

    else
    {
      v41 = [(BMDeviceExpertTroubleshooting *)self interaction];
      v42 = [v5 interaction];
      v12 = [v41 isEqual:v42];
    }

    goto LABEL_27;
  }

  v12 = 0;
LABEL_28:

  return v12;
}

- (id)jsonDictionary
{
  v27[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMDeviceExpertTroubleshooting *)self type];
  v4 = [(BMDeviceExpertTroubleshooting *)self step];
  v5 = [(BMDeviceExpertTroubleshooting *)self status];
  if ([(BMDeviceExpertTroubleshooting *)self hasVersion])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceExpertTroubleshooting version](self, "version")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMDeviceExpertTroubleshooting *)self session];
  v8 = [(BMDeviceExpertTroubleshooting *)self flow];
  v9 = [(BMDeviceExpertTroubleshooting *)self interaction];
  v10 = [v9 jsonDictionary];

  v26[0] = @"type";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v11;
  v27[0] = v11;
  v26[1] = @"step";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v12;
  v27[1] = v12;
  v26[2] = @"status";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v3;
  v21 = v13;
  v27[2] = v13;
  v26[3] = @"version";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v4;
  v27[3] = v14;
  v26[4] = @"session";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v15;
  v26[5] = @"flow";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = v16;
  v26[6] = @"interaction";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  if (v10)
  {
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (v7)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v6)
  {
  }

  if (v5)
  {
    if (v24)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v25)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v24)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v25)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMDeviceExpertTroubleshooting)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v71[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"step"];
    v46 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v19 = 0;
          goto LABEL_63;
        }

        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"step"];
        v69 = v25;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v11 = v26 = a4;
        v27 = [v54 initWithDomain:v24 code:2 userInfo:v11];
        v10 = 0;
        v19 = 0;
        *v26 = v27;
        v12 = v25;
        goto LABEL_62;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"status"];
    v56 = v8;
    v52 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v46)
        {
          v12 = 0;
          v19 = 0;
          goto LABEL_62;
        }

        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"status"];
        v67 = v53;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v31 = v30;
        v10 = v52;
        v12 = 0;
        v19 = 0;
        *v46 = [v50 initWithDomain:v31 code:2 userInfo:v13];
LABEL_61:

        v8 = v56;
LABEL_62:

        goto LABEL_63;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"version"];
    v49 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v46)
        {
          v53 = 0;
          v19 = 0;
          goto LABEL_61;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
        v65 = v47;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v33 = v32;
        v10 = v52;
        v34 = [v55 initWithDomain:v33 code:2 userInfo:v14];
        v53 = 0;
        v19 = 0;
        *v46 = v34;
        goto LABEL_60;
      }

      v53 = v13;
    }

    else
    {
      v53 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"session"];
    v51 = self;
    v45 = v7;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v46)
        {
          v47 = 0;
          v19 = 0;
          goto LABEL_59;
        }

        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"session"];
        v63 = v16;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v36 = [v48 initWithDomain:v35 code:2 userInfo:v15];
        v47 = 0;
        v19 = 0;
        *v46 = v36;
LABEL_58:

        self = v51;
        v10 = v52;
LABEL_59:
        v7 = v45;
LABEL_60:

        v12 = v49;
        goto LABEL_61;
      }

      v47 = v14;
    }

    else
    {
      v47 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"flow"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v46)
        {
          v16 = 0;
          v19 = 0;
          goto LABEL_58;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"flow"];
        v61 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v38 = [v43 initWithDomain:v37 code:2 userInfo:v18];
        v16 = 0;
        v19 = 0;
        *v46 = v38;
        goto LABEL_56;
      }

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v6 objectForKeyedSubscript:@"interaction"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = 0;
LABEL_22:
      v19 = [(BMDeviceExpertTroubleshooting *)v51 initWithType:v56 step:v52 status:v49 version:v53 session:v47 flow:v16 interaction:v18];
      v51 = v19;
LABEL_56:

LABEL_57:
      goto LABEL_58;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v17;
      v57 = 0;
      v18 = [[BMDeviceExpertTroubleshootingInteraction alloc] initWithJSONDictionary:v28 error:&v57];
      v29 = v57;
      if (!v29)
      {

        goto LABEL_22;
      }

      v17 = v28;
      if (v46)
      {
        v29 = v29;
        *v46 = v29;
      }
    }

    else
    {
      if (!v46)
      {
        v19 = 0;
        goto LABEL_57;
      }

      v44 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = *MEMORY[0x1E698F240];
      v58 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"interaction"];
      v59 = v18;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      *v46 = [v44 initWithDomain:v42 code:2 userInfo:v39];
    }

    v19 = 0;
    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (a4)
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E698F240];
    v70 = *MEMORY[0x1E696A578];
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"type"];
    v71[0] = v22;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v23 = v21;
    v10 = v22;
    v8 = 0;
    v19 = 0;
    *a4 = [v20 initWithDomain:v23 code:2 userInfo:v9];
LABEL_63:

    goto LABEL_64;
  }

  v8 = 0;
  v19 = 0;
LABEL_64:

  v40 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceExpertTroubleshooting *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_type)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_step)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_status)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasVersion)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  if (self->_session)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_flow)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_interaction)
  {
    PBDataWriterPlaceMark();
    [(BMDeviceExpertTroubleshootingInteraction *)self->_interaction writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMDeviceExpertTroubleshooting;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_53;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v32[0] & 0x7F) << v7;
        if ((v32[0] & 0x80) == 0)
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
        goto LABEL_53;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      if (v15 <= 5)
      {
        if (v15 == 4)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v5->_hasVersion = 1;
          while (1)
          {
            LOBYTE(v32[0]) = 0;
            v23 = [v4 position] + 1;
            if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
            {
              v25 = [v4 data];
              [v25 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v22 |= (v32[0] & 0x7F) << v20;
            if ((v32[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v13 = v21++ >= 9;
            if (v13)
            {
              v26 = 0;
              goto LABEL_52;
            }
          }

          if ([v4 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_52:
          v5->_version = v26;
          goto LABEL_47;
        }

        if (v15 != 5)
        {
          goto LABEL_33;
        }

        v16 = PBReaderReadString();
        v17 = 40;
        goto LABEL_46;
      }

      if (v15 == 6)
      {
        v16 = PBReaderReadString();
        v17 = 48;
LABEL_46:
        v27 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        goto LABEL_47;
      }

      if (v15 != 7)
      {
LABEL_33:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_47;
      }

      v32[0] = 0;
      v32[1] = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_54;
      }

      v18 = [[BMDeviceExpertTroubleshootingInteraction alloc] initByReadFrom:v4];
      if (!v18)
      {
        goto LABEL_54;
      }

      interaction = v5->_interaction;
      v5->_interaction = v18;

      PBReaderRecallMark();
LABEL_47:
      v28 = [v4 position];
      if (v28 >= [v4 length])
      {
        goto LABEL_53;
      }
    }

    switch(v15)
    {
      case 1:
        v16 = PBReaderReadString();
        v17 = 64;
        break;
      case 2:
        v16 = PBReaderReadString();
        v17 = 32;
        break;
      case 3:
        v16 = PBReaderReadString();
        v17 = 72;
        break;
      default:
        goto LABEL_33;
    }

    goto LABEL_46;
  }

LABEL_53:
  if ([v4 hasError])
  {
LABEL_54:
    v29 = 0;
  }

  else
  {
LABEL_55:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMDeviceExpertTroubleshooting *)self type];
  v5 = [(BMDeviceExpertTroubleshooting *)self step];
  v6 = [(BMDeviceExpertTroubleshooting *)self status];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceExpertTroubleshooting version](self, "version")}];
  v8 = [(BMDeviceExpertTroubleshooting *)self session];
  v9 = [(BMDeviceExpertTroubleshooting *)self flow];
  v10 = [(BMDeviceExpertTroubleshooting *)self interaction];
  v11 = [v3 initWithFormat:@"BMDeviceExpertTroubleshooting with type: %@, step: %@, status: %@, version: %@, session: %@, flow: %@, interaction: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMDeviceExpertTroubleshooting)initWithType:(id)a3 step:(id)a4 status:(id)a5 version:(id)a6 session:(id)a7 flow:(id)a8 interaction:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v16 = a6;
  v22 = a7;
  v17 = a8;
  v18 = a9;
  v26.receiver = self;
  v26.super_class = BMDeviceExpertTroubleshooting;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_type, a3);
    objc_storeStrong(&v19->_step, a4);
    objc_storeStrong(&v19->_status, a5);
    if (v16)
    {
      v19->_hasVersion = 1;
      v20 = [v16 intValue];
    }

    else
    {
      v19->_hasVersion = 0;
      v20 = -1;
    }

    v19->_version = v20;
    objc_storeStrong(&v19->_session, a7);
    objc_storeStrong(&v19->_flow, a8);
    objc_storeStrong(&v19->_interaction, a9);
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"step" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"status" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:4 type:2 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"session" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flow" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interaction" number:7 type:14 subMessageClass:objc_opt_class()];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __40__BMDeviceExpertTroubleshooting_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 interaction];
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

    v8 = [[BMDeviceExpertTroubleshooting alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end