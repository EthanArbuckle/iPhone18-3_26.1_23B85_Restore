@interface BMCommCenterEmergencyVoiceCall
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMCommCenterEmergencyVoiceCall)initWithEmNum:(id)num MCC:(id)c MNC:(id)nC matchedEmNumSource:(int)source sip380Procedure:(int)procedure sip380RedirectedURN:(int)n callDuration:(id)duration;
- (BMCommCenterEmergencyVoiceCall)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMCommCenterEmergencyVoiceCall

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"emNum" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"MCC" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"MNC" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedEmNumSource" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sip380Procedure" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sip380RedirectedURN" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"callDuration" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
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
    emNum = [(BMCommCenterEmergencyVoiceCall *)self emNum];
    emNum2 = [v5 emNum];
    v8 = emNum2;
    if (emNum == emNum2)
    {
    }

    else
    {
      emNum3 = [(BMCommCenterEmergencyVoiceCall *)self emNum];
      emNum4 = [v5 emNum];
      v11 = [emNum3 isEqual:emNum4];

      if (!v11)
      {
        goto LABEL_23;
      }
    }

    v13 = [(BMCommCenterEmergencyVoiceCall *)self MCC];
    v14 = [v5 MCC];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMCommCenterEmergencyVoiceCall *)self MCC];
      v17 = [v5 MCC];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    v19 = [(BMCommCenterEmergencyVoiceCall *)self MNC];
    v20 = [v5 MNC];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMCommCenterEmergencyVoiceCall *)self MNC];
      v23 = [v5 MNC];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_23;
      }
    }

    matchedEmNumSource = [(BMCommCenterEmergencyVoiceCall *)self matchedEmNumSource];
    if (matchedEmNumSource == [v5 matchedEmNumSource])
    {
      sip380Procedure = [(BMCommCenterEmergencyVoiceCall *)self sip380Procedure];
      if (sip380Procedure == [v5 sip380Procedure])
      {
        sip380RedirectedURN = [(BMCommCenterEmergencyVoiceCall *)self sip380RedirectedURN];
        if (sip380RedirectedURN == [v5 sip380RedirectedURN])
        {
          if (!-[BMCommCenterEmergencyVoiceCall hasCallDuration](self, "hasCallDuration") && ![v5 hasCallDuration])
          {
            v12 = 1;
            goto LABEL_24;
          }

          if (-[BMCommCenterEmergencyVoiceCall hasCallDuration](self, "hasCallDuration") && [v5 hasCallDuration])
          {
            callDuration = [(BMCommCenterEmergencyVoiceCall *)self callDuration];
            v12 = callDuration == [v5 callDuration];
LABEL_24:

            goto LABEL_25;
          }
        }
      }
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v12 = 0;
LABEL_25:

  return v12;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  emNum = [(BMCommCenterEmergencyVoiceCall *)self emNum];
  v4 = [(BMCommCenterEmergencyVoiceCall *)self MCC];
  v5 = [(BMCommCenterEmergencyVoiceCall *)self MNC];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommCenterEmergencyVoiceCall matchedEmNumSource](self, "matchedEmNumSource")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommCenterEmergencyVoiceCall sip380Procedure](self, "sip380Procedure")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommCenterEmergencyVoiceCall sip380RedirectedURN](self, "sip380RedirectedURN")}];
  if ([(BMCommCenterEmergencyVoiceCall *)self hasCallDuration])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommCenterEmergencyVoiceCall callDuration](self, "callDuration")}];
  }

  else
  {
    v9 = 0;
  }

  v25[0] = @"emNum";
  null = emNum;
  if (!emNum)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v26[0] = null;
  v25[1] = @"MCC";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v26[1] = null2;
  v25[2] = @"MNC";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = emNum;
  v20 = null3;
  v26[2] = null3;
  v25[3] = @"matchedEmNumSource";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v26[3] = null4;
  v25[4] = @"sip380Procedure";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"sip380RedirectedURN";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"callDuration";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
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
    if (v23)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v24)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v23)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v24)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMCommCenterEmergencyVoiceCall)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v79[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"emNum"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v64 = 0;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"MCC"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v20 = 0;
          goto LABEL_55;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v23 = *MEMORY[0x1E698F240];
        v76 = *MEMORY[0x1E696A578];
        v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"MCC"];
        v77 = v63;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v25 = [v21 initWithDomain:v23 code:2 userInfo:v24];
        error = 0;
        v20 = 0;
        *errorCopy = v25;
        goto LABEL_54;
      }

      errorCopy3 = error;
      error = v7;
    }

    else
    {
      errorCopy3 = error;
      error = 0;
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"MNC"];
    v59 = v8;
    if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
        {
          v63 = 0;
          v20 = 0;
          v24 = v59;
          goto LABEL_54;
        }

        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy4 = error;
        v27 = *MEMORY[0x1E698F240];
        v74 = *MEMORY[0x1E696A578];
        v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"MNC"];
        v75 = v58;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v29 = v27;
        error = errorCopy4;
        v63 = 0;
        v20 = 0;
        *errorCopy3 = [v26 initWithDomain:v29 code:2 userInfo:v28];
        v24 = v59;
LABEL_53:

LABEL_54:
        goto LABEL_55;
      }

      v63 = v9;
    }

    else
    {
      v63 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"matchedEmNumSource"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v28 = v10;
          if (!errorCopy3)
          {
            v58 = 0;
            v20 = 0;
            v24 = v59;
            goto LABEL_53;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v72 = *MEMORY[0x1E696A578];
          v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"matchedEmNumSource"];
          v73 = v62;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v47 = [v44 initWithDomain:v45 code:2 userInfo:v46];
          v58 = 0;
          v20 = 0;
          *errorCopy3 = v47;
          v37 = v46;
          v24 = v59;
          goto LABEL_52;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMCommCenterEmergencyVoiceCallMatchedEmNumSourceFromString(v10)];
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sip380Procedure"];
    v55 = v6;
    v56 = v10;
    v57 = v12;
    v58 = v11;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v62 = 0;
            v20 = 0;
            goto LABEL_51;
          }

          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v70 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"sip380Procedure"];
          v71 = v61;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          v50 = [v48 initWithDomain:v49 code:2 userInfo:v30];
          v62 = 0;
          v20 = 0;
          *errorCopy3 = v50;
LABEL_50:

          v6 = v55;
LABEL_51:
          v24 = v59;
          v28 = v56;
          v37 = v57;
LABEL_52:

          goto LABEL_53;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMCommCenterEmergencyVoiceCallSIP380ProcedureFromString(v13)];
      }

      v62 = v14;
    }

    else
    {
      v62 = 0;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"sip380RedirectedURN"];
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v61 = 0;
            v20 = 0;
            goto LABEL_50;
          }

          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v68 = *MEMORY[0x1E696A578];
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"sip380RedirectedURN"];
          v69 = v36;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          v53 = [v51 initWithDomain:v52 code:2 userInfo:v32];
          v61 = 0;
          v20 = 0;
          *errorCopy3 = v53;
          goto LABEL_49;
        }

        v31 = [MEMORY[0x1E696AD98] numberWithInt:BMCommCenterEmergencyVoiceCallEmergencyURNFromString(v30)];
      }

      v61 = v31;
    }

    else
    {
      v61 = 0;
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"callDuration"];
    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v66 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"callDuration"];
          v67 = v42;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
          *errorCopy3 = [v40 initWithDomain:v41 code:2 userInfo:v43];
        }

        v36 = 0;
        v20 = 0;
        goto LABEL_49;
      }

      v33 = v7;
      v35 = v64;
      selfCopy2 = self;
      v36 = v32;
    }

    else
    {
      v33 = v7;
      v35 = v64;
      selfCopy2 = self;
      v36 = 0;
    }

    v64 = v35;
    v20 = -[BMCommCenterEmergencyVoiceCall initWithEmNum:MCC:MNC:matchedEmNumSource:sip380Procedure:sip380RedirectedURN:callDuration:](selfCopy2, "initWithEmNum:MCC:MNC:matchedEmNumSource:sip380Procedure:sip380RedirectedURN:callDuration:", v35, error, v63, [v11 intValue], objc_msgSend(v62, "intValue"), objc_msgSend(v61, "intValue"), v36);
    self = v20;
    v7 = v33;
LABEL_49:

    goto LABEL_50;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v64 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v64 = 0;
    v20 = 0;
    goto LABEL_56;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy5 = error;
  v17 = *MEMORY[0x1E698F240];
  v78 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"emNum"];
  v79[0] = v18;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
  v19 = v17;
  error = v18;
  v64 = 0;
  v20 = 0;
  *errorCopy5 = [v15 initWithDomain:v19 code:2 userInfo:v7];
LABEL_55:

LABEL_56:
  v38 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCommCenterEmergencyVoiceCall *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_emNum)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_MCC)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_MNC)
  {
    PBDataWriterWriteStringField();
  }

  matchedEmNumSource = self->_matchedEmNumSource;
  PBDataWriterWriteUint32Field();
  sip380Procedure = self->_sip380Procedure;
  PBDataWriterWriteUint32Field();
  sip380RedirectedURN = self->_sip380RedirectedURN;
  PBDataWriterWriteUint32Field();
  if (self->_hasCallDuration)
  {
    callDuration = self->_callDuration;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMCommCenterEmergencyVoiceCall;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_89;
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
        v48 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v23 = PBReaderReadString();
            v24 = 40;
            break;
          case 2:
            v23 = PBReaderReadString();
            v24 = 48;
            break;
          case 3:
            v23 = PBReaderReadString();
            v24 = 56;
            break;
          default:
            goto LABEL_47;
        }

        v42 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;
      }

      else
      {
        if (v15 > 5)
        {
          if (v15 == 7)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v5->_hasCallDuration = 1;
            while (1)
            {
              v48 = 0;
              v38 = [fromCopy position] + 1;
              if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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
                v41 = 0;
                goto LABEL_76;
              }
            }

            if ([fromCopy hasError])
            {
              v41 = 0;
            }

            else
            {
              v41 = v37;
            }

LABEL_76:
            v5->_callDuration = v41;
            goto LABEL_86;
          }

          if (v15 != 6)
          {
LABEL_47:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_88;
            }

            goto LABEL_86;
          }

          v25 = 0;
          v26 = 0;
          v18 = 0;
          while (1)
          {
            v48 = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v48 & 0x7F) << v25;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v22 = v26++ > 8;
            if (v22)
            {
              goto LABEL_83;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 6)
          {
LABEL_83:
            LODWORD(v18) = 0;
          }

          v43 = 32;
        }

        else if (v15 == 4)
        {
          v30 = 0;
          v31 = 0;
          v18 = 0;
          while (1)
          {
            v48 = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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
              goto LABEL_71;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 0x11)
          {
LABEL_71:
            LODWORD(v18) = 0;
          }

          v43 = 24;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_47;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v48 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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
              goto LABEL_79;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 4)
          {
LABEL_79:
            LODWORD(v18) = 0;
          }

          v43 = 28;
        }

        *(&v5->super.super.isa + v43) = v18;
      }

LABEL_86:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_88:
    v45 = 0;
  }

  else
  {
LABEL_89:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  emNum = [(BMCommCenterEmergencyVoiceCall *)self emNum];
  v5 = [(BMCommCenterEmergencyVoiceCall *)self MCC];
  v6 = [(BMCommCenterEmergencyVoiceCall *)self MNC];
  v7 = BMCommCenterEmergencyVoiceCallMatchedEmNumSourceAsString([(BMCommCenterEmergencyVoiceCall *)self matchedEmNumSource]);
  v8 = BMCommCenterEmergencyVoiceCallSIP380ProcedureAsString([(BMCommCenterEmergencyVoiceCall *)self sip380Procedure]);
  v9 = BMCommCenterEmergencyVoiceCallEmergencyURNAsString([(BMCommCenterEmergencyVoiceCall *)self sip380RedirectedURN]);
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommCenterEmergencyVoiceCall callDuration](self, "callDuration")}];
  v11 = [v3 initWithFormat:@"BMCommCenterEmergencyVoiceCall with emNum: %@, MCC: %@, MNC: %@, matchedEmNumSource: %@, sip380Procedure: %@, sip380RedirectedURN: %@, callDuration: %@", emNum, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMCommCenterEmergencyVoiceCall)initWithEmNum:(id)num MCC:(id)c MNC:(id)nC matchedEmNumSource:(int)source sip380Procedure:(int)procedure sip380RedirectedURN:(int)n callDuration:(id)duration
{
  numCopy = num;
  cCopy = c;
  nCCopy = nC;
  durationCopy = duration;
  v23.receiver = self;
  v23.super_class = BMCommCenterEmergencyVoiceCall;
  v19 = [(BMEventBase *)&v23 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_emNum, num);
    objc_storeStrong(&v19->_MCC, c);
    objc_storeStrong(&v19->_MNC, nC);
    v19->_matchedEmNumSource = source;
    v19->_sip380Procedure = procedure;
    v19->_sip380RedirectedURN = n;
    if (durationCopy)
    {
      v19->_hasCallDuration = 1;
      intValue = [durationCopy intValue];
    }

    else
    {
      v19->_hasCallDuration = 0;
      intValue = -1;
    }

    v19->_callDuration = intValue;
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"emNum" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"MCC" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"MNC" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedEmNumSource" number:4 type:4 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sip380Procedure" number:5 type:4 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sip380RedirectedURN" number:6 type:4 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"callDuration" number:7 type:2 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMCommCenterEmergencyVoiceCall alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end