@interface BMDeviceExpertTroubleshooting
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceExpertTroubleshooting)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMDeviceExpertTroubleshooting)initWithType:(id)type step:(id)step status:(id)status version:(id)version session:(id)session flow:(id)flow interaction:(id)interaction;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMDeviceExpertTroubleshooting *)self type];
    type2 = [v5 type];
    v8 = type2;
    if (type == type2)
    {
    }

    else
    {
      type3 = [(BMDeviceExpertTroubleshooting *)self type];
      type4 = [v5 type];
      v11 = [type3 isEqual:type4];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    step = [(BMDeviceExpertTroubleshooting *)self step];
    step2 = [v5 step];
    v15 = step2;
    if (step == step2)
    {
    }

    else
    {
      step3 = [(BMDeviceExpertTroubleshooting *)self step];
      step4 = [v5 step];
      v18 = [step3 isEqual:step4];

      if (!v18)
      {
        goto LABEL_26;
      }
    }

    status = [(BMDeviceExpertTroubleshooting *)self status];
    status2 = [v5 status];
    v21 = status2;
    if (status == status2)
    {
    }

    else
    {
      status3 = [(BMDeviceExpertTroubleshooting *)self status];
      status4 = [v5 status];
      v24 = [status3 isEqual:status4];

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

      version = [(BMDeviceExpertTroubleshooting *)self version];
      if (version != [v5 version])
      {
        goto LABEL_26;
      }
    }

    session = [(BMDeviceExpertTroubleshooting *)self session];
    session2 = [v5 session];
    v28 = session2;
    if (session == session2)
    {
    }

    else
    {
      session3 = [(BMDeviceExpertTroubleshooting *)self session];
      session4 = [v5 session];
      v31 = [session3 isEqual:session4];

      if (!v31)
      {
        goto LABEL_26;
      }
    }

    flow = [(BMDeviceExpertTroubleshooting *)self flow];
    flow2 = [v5 flow];
    v34 = flow2;
    if (flow == flow2)
    {
    }

    else
    {
      flow3 = [(BMDeviceExpertTroubleshooting *)self flow];
      flow4 = [v5 flow];
      v37 = [flow3 isEqual:flow4];

      if (!v37)
      {
LABEL_26:
        v12 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    interaction = [(BMDeviceExpertTroubleshooting *)self interaction];
    interaction2 = [v5 interaction];
    if (interaction == interaction2)
    {
      v12 = 1;
    }

    else
    {
      interaction3 = [(BMDeviceExpertTroubleshooting *)self interaction];
      interaction4 = [v5 interaction];
      v12 = [interaction3 isEqual:interaction4];
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
  type = [(BMDeviceExpertTroubleshooting *)self type];
  step = [(BMDeviceExpertTroubleshooting *)self step];
  status = [(BMDeviceExpertTroubleshooting *)self status];
  if ([(BMDeviceExpertTroubleshooting *)self hasVersion])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceExpertTroubleshooting version](self, "version")}];
  }

  else
  {
    v6 = 0;
  }

  session = [(BMDeviceExpertTroubleshooting *)self session];
  flow = [(BMDeviceExpertTroubleshooting *)self flow];
  interaction = [(BMDeviceExpertTroubleshooting *)self interaction];
  jsonDictionary = [interaction jsonDictionary];

  v26[0] = @"type";
  null = type;
  if (!type)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v27[0] = null;
  v26[1] = @"step";
  null2 = step;
  if (!step)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null2;
  v27[1] = null2;
  v26[2] = @"status";
  null3 = status;
  if (!status)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = type;
  v21 = null3;
  v27[2] = null3;
  v26[3] = @"version";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = step;
  v27[3] = null4;
  v26[4] = @"session";
  null5 = session;
  if (!session)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null5;
  v26[5] = @"flow";
  null6 = flow;
  if (!flow)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = null6;
  v26[6] = @"interaction";
  null7 = jsonDictionary;
  if (!jsonDictionary)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = null7;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  if (jsonDictionary)
  {
    if (flow)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (session)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!flow)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (session)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v6)
  {
  }

  if (status)
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

- (BMDeviceExpertTroubleshooting)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"step"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        v11 = v26 = error;
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    v56 = v8;
    v52 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
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
        *errorCopy = [v50 initWithDomain:v31 code:2 userInfo:v13];
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    v49 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
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
        *errorCopy = v34;
        goto LABEL_60;
      }

      v53 = v13;
    }

    else
    {
      v53 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"session"];
    selfCopy = self;
    v45 = v7;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
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
        *errorCopy = v36;
LABEL_58:

        self = selfCopy;
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

    v15 = [dictionaryCopy objectForKeyedSubscript:@"flow"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
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
        *errorCopy = v38;
        goto LABEL_56;
      }

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"interaction"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = 0;
LABEL_22:
      v19 = [(BMDeviceExpertTroubleshooting *)selfCopy initWithType:v56 step:v52 status:v49 version:v53 session:v47 flow:v16 interaction:v18];
      selfCopy = v19;
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
      if (errorCopy)
      {
        v29 = v29;
        *errorCopy = v29;
      }
    }

    else
    {
      if (!errorCopy)
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
      *errorCopy = [v44 initWithDomain:v42 code:2 userInfo:v39];
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

  if (error)
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
    *error = [v20 initWithDomain:v23 code:2 userInfo:v9];
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
    [(BMDeviceExpertTroubleshootingInteraction *)self->_interaction writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMDeviceExpertTroubleshooting;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_55;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_53;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v23 = [fromCopy position] + 1;
            if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if ([fromCopy hasError])
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

      v18 = [[BMDeviceExpertTroubleshootingInteraction alloc] initByReadFrom:fromCopy];
      if (!v18)
      {
        goto LABEL_54;
      }

      interaction = v5->_interaction;
      v5->_interaction = v18;

      PBReaderRecallMark();
LABEL_47:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
  if ([fromCopy hasError])
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
  type = [(BMDeviceExpertTroubleshooting *)self type];
  step = [(BMDeviceExpertTroubleshooting *)self step];
  status = [(BMDeviceExpertTroubleshooting *)self status];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceExpertTroubleshooting version](self, "version")}];
  session = [(BMDeviceExpertTroubleshooting *)self session];
  flow = [(BMDeviceExpertTroubleshooting *)self flow];
  interaction = [(BMDeviceExpertTroubleshooting *)self interaction];
  v11 = [v3 initWithFormat:@"BMDeviceExpertTroubleshooting with type: %@, step: %@, status: %@, version: %@, session: %@, flow: %@, interaction: %@", type, step, status, v7, session, flow, interaction];

  return v11;
}

- (BMDeviceExpertTroubleshooting)initWithType:(id)type step:(id)step status:(id)status version:(id)version session:(id)session flow:(id)flow interaction:(id)interaction
{
  typeCopy = type;
  stepCopy = step;
  statusCopy = status;
  versionCopy = version;
  sessionCopy = session;
  flowCopy = flow;
  interactionCopy = interaction;
  v26.receiver = self;
  v26.super_class = BMDeviceExpertTroubleshooting;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_type, type);
    objc_storeStrong(&v19->_step, step);
    objc_storeStrong(&v19->_status, status);
    if (versionCopy)
    {
      v19->_hasVersion = 1;
      intValue = [versionCopy intValue];
    }

    else
    {
      v19->_hasVersion = 0;
      intValue = -1;
    }

    v19->_version = intValue;
    objc_storeStrong(&v19->_session, session);
    objc_storeStrong(&v19->_flow, flow);
    objc_storeStrong(&v19->_interaction, interaction);
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