@interface BMSageTranscript
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSageTranscript)initWithAbsoluteTimestamp:(id)timestamp _machAbsoluteTime:(id)time _sessionID:(id)d _bootSessionID:(id)iD _clientSessionID:(id)sessionID eventLabel:(id)label eventType:(id)type serializationFormat:(int)self0 eventPayload:(id)self1 _sageMetadata:(id)self2 monotonicTimestamp:(id)self3 identifiers:(id)self4;
- (BMSageTranscript)initWithAbsoluteTimestamp:(id)timestamp eventLabel:(id)label eventType:(id)type serializationFormat:(int)format eventPayload:(id)payload monotonicTimestamp:(id)monotonicTimestamp identifiers:(id)identifiers;
- (BMSageTranscript)initWithAbsoluteTimestamp:(id)timestamp eventLabel:(id)label eventType:(id)type serializationFormat:(int)format eventPayload:(id)payload sageMetadata:(id)metadata monotonicTimestamp:(id)monotonicTimestamp;
- (BMSageTranscript)initWithAbsoluteTimestamp:(id)timestamp machAbsoluteTime:(id)time sessionID:(id)d bootSessionID:(id)iD clientSessionID:(id)sessionID eventLabel:(id)label eventType:(id)type serializationFormat:(int)self0 eventPayload:(id)self1;
- (BMSageTranscript)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)hasMachAbsoluteTime;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSNumber)spanId;
- (NSString)clientRequestId;
- (NSString)clientSessionId;
- (NSString)description;
- (NSUUID)sessionId;
- (double)machAbsoluteTime;
- (id)bootSessionID;
- (id)clientSessionID;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)sageMetadata;
- (id)serialize;
- (id)sessionID;
- (void)writeTo:(id)to;
@end

@implementation BMSageTranscript

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"machAbsoluteTime" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionID" dataType:6 requestOnly:0 fieldNumber:7 protoDataType:14 convertedType:3];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bootSessionID" dataType:6 requestOnly:0 fieldNumber:8 protoDataType:14 convertedType:3];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientSessionID" dataType:6 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventLabel" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"serializationFormat" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventPayload" dataType:4 requestOnly:0 fieldNumber:6 protoDataType:14 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"sageMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_114_6030];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"monotonicTimestamp_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_116];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"identifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_118];
  v17[0] = v16;
  v17[1] = v2;
  v17[2] = v3;
  v17[3] = v4;
  v17[4] = v12;
  v17[5] = v5;
  v17[6] = v14;
  v17[7] = v13;
  v17[8] = v15;
  v17[9] = v6;
  v17[10] = v7;
  v17[11] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMSageTranscript *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMSageTranscript *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_43;
      }
    }

    if (-[BMSageTranscript has_machAbsoluteTime](self, "has_machAbsoluteTime") || [v5 has_machAbsoluteTime])
    {
      if (![(BMSageTranscript *)self has_machAbsoluteTime])
      {
        goto LABEL_43;
      }

      if (![v5 has_machAbsoluteTime])
      {
        goto LABEL_43;
      }

      [(BMSageTranscript *)self _machAbsoluteTime];
      v14 = v13;
      [v5 _machAbsoluteTime];
      if (v14 != v15)
      {
        goto LABEL_43;
      }
    }

    _sessionID = [(BMSageTranscript *)self _sessionID];
    _sessionID2 = [v5 _sessionID];
    v18 = _sessionID2;
    if (_sessionID == _sessionID2)
    {
    }

    else
    {
      _sessionID3 = [(BMSageTranscript *)self _sessionID];
      _sessionID4 = [v5 _sessionID];
      v21 = [_sessionID3 isEqual:_sessionID4];

      if (!v21)
      {
        goto LABEL_43;
      }
    }

    _bootSessionID = [(BMSageTranscript *)self _bootSessionID];
    _bootSessionID2 = [v5 _bootSessionID];
    v24 = _bootSessionID2;
    if (_bootSessionID == _bootSessionID2)
    {
    }

    else
    {
      _bootSessionID3 = [(BMSageTranscript *)self _bootSessionID];
      _bootSessionID4 = [v5 _bootSessionID];
      v27 = [_bootSessionID3 isEqual:_bootSessionID4];

      if (!v27)
      {
        goto LABEL_43;
      }
    }

    _clientSessionID = [(BMSageTranscript *)self _clientSessionID];
    _clientSessionID2 = [v5 _clientSessionID];
    v30 = _clientSessionID2;
    if (_clientSessionID == _clientSessionID2)
    {
    }

    else
    {
      _clientSessionID3 = [(BMSageTranscript *)self _clientSessionID];
      _clientSessionID4 = [v5 _clientSessionID];
      v33 = [_clientSessionID3 isEqual:_clientSessionID4];

      if (!v33)
      {
        goto LABEL_43;
      }
    }

    eventLabel = [(BMSageTranscript *)self eventLabel];
    eventLabel2 = [v5 eventLabel];
    v36 = eventLabel2;
    if (eventLabel == eventLabel2)
    {
    }

    else
    {
      eventLabel3 = [(BMSageTranscript *)self eventLabel];
      eventLabel4 = [v5 eventLabel];
      v39 = [eventLabel3 isEqual:eventLabel4];

      if (!v39)
      {
        goto LABEL_43;
      }
    }

    eventType = [(BMSageTranscript *)self eventType];
    eventType2 = [v5 eventType];
    v42 = eventType2;
    if (eventType == eventType2)
    {
    }

    else
    {
      eventType3 = [(BMSageTranscript *)self eventType];
      eventType4 = [v5 eventType];
      v45 = [eventType3 isEqual:eventType4];

      if (!v45)
      {
        goto LABEL_43;
      }
    }

    serializationFormat = [(BMSageTranscript *)self serializationFormat];
    if (serializationFormat == [v5 serializationFormat])
    {
      eventPayload = [(BMSageTranscript *)self eventPayload];
      eventPayload2 = [v5 eventPayload];
      v49 = eventPayload2;
      if (eventPayload == eventPayload2)
      {
      }

      else
      {
        eventPayload3 = [(BMSageTranscript *)self eventPayload];
        eventPayload4 = [v5 eventPayload];
        v52 = [eventPayload3 isEqual:eventPayload4];

        if (!v52)
        {
          goto LABEL_43;
        }
      }

      _sageMetadata = [(BMSageTranscript *)self _sageMetadata];
      _sageMetadata2 = [v5 _sageMetadata];
      v55 = _sageMetadata2;
      if (_sageMetadata == _sageMetadata2)
      {
      }

      else
      {
        _sageMetadata3 = [(BMSageTranscript *)self _sageMetadata];
        _sageMetadata4 = [v5 _sageMetadata];
        v58 = [_sageMetadata3 isEqual:_sageMetadata4];

        if (!v58)
        {
          goto LABEL_43;
        }
      }

      monotonicTimestamp = [(BMSageTranscript *)self monotonicTimestamp];
      monotonicTimestamp2 = [v5 monotonicTimestamp];
      v61 = monotonicTimestamp2;
      if (monotonicTimestamp == monotonicTimestamp2)
      {
      }

      else
      {
        monotonicTimestamp3 = [(BMSageTranscript *)self monotonicTimestamp];
        monotonicTimestamp4 = [v5 monotonicTimestamp];
        v64 = [monotonicTimestamp3 isEqual:monotonicTimestamp4];

        if (!v64)
        {
          goto LABEL_43;
        }
      }

      identifiers = [(BMSageTranscript *)self identifiers];
      identifiers2 = [v5 identifiers];
      if (identifiers == identifiers2)
      {
        v12 = 1;
      }

      else
      {
        identifiers3 = [(BMSageTranscript *)self identifiers];
        identifiers4 = [v5 identifiers];
        v12 = [identifiers3 isEqual:identifiers4];
      }

      goto LABEL_44;
    }

LABEL_43:
    v12 = 0;
LABEL_44:

    goto LABEL_45;
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v90 = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMSageTranscript *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMSageTranscript *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMSageTranscript *)self has_machAbsoluteTime]|| ([(BMSageTranscript *)self _machAbsoluteTime], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSageTranscript *)self _machAbsoluteTime];
    v8 = MEMORY[0x1E696AD98];
    [(BMSageTranscript *)self _machAbsoluteTime];
    v9 = [v8 numberWithDouble:?];
  }

  _sessionID = [(BMSageTranscript *)self _sessionID];
  uUIDString = [_sessionID UUIDString];

  _bootSessionID = [(BMSageTranscript *)self _bootSessionID];
  uUIDString2 = [_bootSessionID UUIDString];

  _clientSessionID = [(BMSageTranscript *)self _clientSessionID];
  uUIDString3 = [_clientSessionID UUIDString];

  eventLabel = [(BMSageTranscript *)self eventLabel];
  eventType = [(BMSageTranscript *)self eventType];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSageTranscript serializationFormat](self, "serializationFormat")}];
  eventPayload = [(BMSageTranscript *)self eventPayload];
  v54 = [eventPayload base64EncodedStringWithOptions:0];

  _sageMetadata = [(BMSageTranscript *)self _sageMetadata];
  jsonDictionary = [_sageMetadata jsonDictionary];

  monotonicTimestamp = [(BMSageTranscript *)self monotonicTimestamp];
  jsonDictionary2 = [monotonicTimestamp jsonDictionary];

  identifiers = [(BMSageTranscript *)self identifiers];
  jsonDictionary3 = [identifiers jsonDictionary];

  v57[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null;
  v73 = null;
  v57[1] = @"_machAbsoluteTime";
  if (v9)
  {
    v74 = v9;
    v58 = @"machAbsoluteTime";
    null3 = v9;
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    v74 = null2;
    v58 = @"machAbsoluteTime";
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null3;
  v75 = null3;
  v59 = @"_sessionID";
  if (uUIDString)
  {
    v76 = uUIDString;
    v60 = @"sessionID";
    null5 = uUIDString;
  }

  else
  {
    null4 = [MEMORY[0x1E695DFB0] null];
    v76 = null4;
    v60 = @"sessionID";
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null5;
  v77 = null5;
  v61 = @"_bootSessionID";
  if (uUIDString2)
  {
    v78 = uUIDString2;
    v62 = @"bootSessionID";
    null7 = uUIDString2;
  }

  else
  {
    null6 = [MEMORY[0x1E695DFB0] null];
    v78 = null6;
    v62 = @"bootSessionID";
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null7;
  v79 = null7;
  v63 = @"_clientSessionID";
  v51 = v6;
  if (uUIDString3)
  {
    v80 = uUIDString3;
    v64 = @"clientSessionID";
    null9 = uUIDString3;
  }

  else
  {
    null8 = [MEMORY[0x1E695DFB0] null];
    v80 = null8;
    v64 = @"clientSessionID";
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = uUIDString;
  v50 = v9;
  v42 = null9;
  v81 = null9;
  v65 = @"eventLabel";
  null10 = eventLabel;
  if (!eventLabel)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = uUIDString2;
  v82 = null10;
  v66 = @"eventType";
  null11 = eventType;
  if (!eventType)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = uUIDString3;
  v83 = null11;
  v67 = @"serializationFormat";
  null12 = v55;
  if (!v55)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null12;
  v68 = @"eventPayload";
  null13 = v54;
  if (!v54)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null13;
  v69 = @"_sageMetadata";
  null15 = jsonDictionary;
  if (jsonDictionary)
  {
    v86 = jsonDictionary;
    v70 = @"sageMetadata";
  }

  else
  {
    null14 = [MEMORY[0x1E695DFB0] null];
    v86 = null14;
    v70 = @"sageMetadata";
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = null15;
  v71 = @"monotonicTimestamp";
  null16 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = null16;
  v72 = @"identifiers";
  null17 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = null17;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:v57 count:17];
  if (!jsonDictionary3)
  {
  }

  if (!jsonDictionary2)
  {
  }

  if (!jsonDictionary)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!eventType)
  {
  }

  if (!eventLabel)
  {
  }

  if (!v47)
  {
  }

  if (v48)
  {
    if (v49)
    {
      goto LABEL_55;
    }
  }

  else
  {

    if (v49)
    {
LABEL_55:
      if (v50)
      {
        goto LABEL_56;
      }

LABEL_62:

      if (v51)
      {
        goto LABEL_57;
      }

      goto LABEL_63;
    }
  }

  if (!v50)
  {
    goto LABEL_62;
  }

LABEL_56:
  if (v51)
  {
    goto LABEL_57;
  }

LABEL_63:

LABEL_57:
  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

- (BMSageTranscript)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v185[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_9:
    v15 = [dictionaryCopy objectForKeyedSubscript:@"_machAbsoluteTime"];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:@"machAbsoluteTime"];
      if (!v16)
      {
LABEL_13:
        v148 = 0;
LABEL_16:
        v17 = [dictionaryCopy objectForKeyedSubscript:@"_sessionID"];
        v149 = v6;
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = [dictionaryCopy objectForKeyedSubscript:@"sessionID"];
          if (!v18)
          {
LABEL_20:
            selfCopy4 = self;
            v19 = 0;
            goto LABEL_21;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_20;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = MEMORY[0x1E696AFB0];
          v18 = v18;
          v19 = [[v22 alloc] initWithUUIDString:v18];

          if (v19)
          {
            selfCopy4 = self;
LABEL_21:
            v20 = [dictionaryCopy objectForKeyedSubscript:@"_bootSessionID"];
            v146 = v19;
            if (v20)
            {
              v21 = v20;
            }

            else
            {
              v21 = [dictionaryCopy objectForKeyedSubscript:@"bootSessionID"];
              if (!v21)
              {
LABEL_30:
                v143 = 0;
                goto LABEL_31;
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_30;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = MEMORY[0x1E696AFB0];
              v21 = v21;
              v40 = [[v39 alloc] initWithUUIDString:v21];

              v143 = v40;
              if (v40)
              {
LABEL_31:
                v35 = [dictionaryCopy objectForKeyedSubscript:@"_clientSessionID"];
                v144 = v7;
                if (!v35)
                {
                  v35 = [dictionaryCopy objectForKeyedSubscript:@"clientSessionID"];
                  if (!v35)
                  {
                    v136 = v16;
                    v137 = v18;
                    v37 = v21;
                    v38 = 0;
                    goto LABEL_58;
                  }
                }

                v36 = v35;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v136 = v16;
                  v137 = v18;
                  v37 = v21;
                  v38 = v36;
LABEL_58:
                  v145 = 0;
LABEL_59:
                  v64 = [dictionaryCopy objectForKeyedSubscript:@"eventLabel"];
                  v141 = v64;
                  if (!v64 || (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v142 = 0;
LABEL_62:
                    v66 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
                    v135 = v66;
                    if (!v66)
                    {
                      v140 = 0;
                      v36 = v38;
                      goto LABEL_66;
                    }

                    v67 = v66;
                    objc_opt_class();
                    v36 = v38;
                    if (objc_opt_isKindOfClass())
                    {
                      v140 = 0;
LABEL_66:
                      v21 = v37;
LABEL_67:
                      v68 = [dictionaryCopy objectForKeyedSubscript:@"serializationFormat"];
                      v133 = v68;
                      if (v68 && (v69 = v68, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        v18 = v137;
                        if (objc_opt_isKindOfClass())
                        {
                          v134 = v69;
                        }

                        else
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (!error)
                            {
                              v134 = 0;
                              v34 = 0;
                              v33 = v148;
                              v59 = v143;
                              v16 = v136;
                              goto LABEL_149;
                            }

                            v115 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v116 = *MEMORY[0x1E698F240];
                            v164 = *MEMORY[0x1E696A578];
                            v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"serializationFormat"];
                            v165 = v132;
                            v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v165 forKeys:&v164 count:1];
                            v134 = 0;
                            v34 = 0;
                            *error = [v115 initWithDomain:v116 code:2 userInfo:?];
                            v33 = v148;
                            v59 = v143;
                            v16 = v136;
                            goto LABEL_148;
                          }

                          v134 = [MEMORY[0x1E696AD98] numberWithInt:BMSageTranscriptSerializationFormatFromString(v69)];
                        }
                      }

                      else
                      {
                        v134 = 0;
                        v18 = v137;
                      }

                      v70 = [dictionaryCopy objectForKeyedSubscript:@"eventPayload"];
                      v16 = v136;
                      v131 = v70;
                      if (!v70 || (v71 = v70, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v132 = 0;
LABEL_73:
                        v72 = [dictionaryCopy objectForKeyedSubscript:@"_sageMetadata"];
                        if (v72)
                        {
                          v73 = v72;
                        }

                        else
                        {
                          v73 = [dictionaryCopy objectForKeyedSubscript:@"sageMetadata"];
                          if (!v73)
                          {
LABEL_83:
                            v138 = 0;
LABEL_84:
                            v74 = [dictionaryCopy objectForKeyedSubscript:@"monotonicTimestamp"];
                            v129 = v74;
                            if (!v74 || (v75 = v74, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v130 = 0;
                              goto LABEL_87;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v100 = v75;
                              v152 = 0;
                              v130 = [[BMMonotonicTimestamp alloc] initWithJSONDictionary:v100 error:&v152];
                              v101 = v152;
                              if (!v101)
                              {

LABEL_87:
                                v76 = [dictionaryCopy objectForKeyedSubscript:@"identifiers"];
                                v127 = v76;
                                if (!v76 || (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v78 = 0;
LABEL_90:
                                  v33 = v148;
                                  LODWORD(v125) = [v134 intValue];
                                  v59 = v143;
                                  v34 = [(BMSageTranscript *)selfCopy4 initWithAbsoluteTimestamp:v144 _machAbsoluteTime:v148 _sessionID:v146 _bootSessionID:v143 _clientSessionID:v145 eventLabel:v142 eventType:v140 serializationFormat:v125 eventPayload:v132 _sageMetadata:v138 monotonicTimestamp:v130 identifiers:v78];
                                  selfCopy4 = v34;
LABEL_144:

                                  v6 = v149;
                                  goto LABEL_145;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v110 = v77;
                                  v151 = 0;
                                  v78 = [[BMIntelligenceFlowIdentifiers alloc] initWithJSONDictionary:v110 error:&v151];
                                  v111 = v151;
                                  if (!v111)
                                  {

                                    goto LABEL_90;
                                  }

                                  v33 = v148;
                                  if (error)
                                  {
                                    v111 = v111;
                                    *error = v111;
                                  }

                                  v34 = 0;
LABEL_143:
                                  v59 = v143;
                                  goto LABEL_144;
                                }

                                if (error)
                                {
                                  v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v118 = *MEMORY[0x1E698F240];
                                  v154 = *MEMORY[0x1E696A578];
                                  v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"identifiers"];
                                  v155 = v78;
                                  v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
                                  *error = [v126 initWithDomain:v118 code:2 userInfo:v119];

                                  v34 = 0;
                                  v33 = v148;
                                  goto LABEL_143;
                                }

                                v34 = 0;
LABEL_132:
                                v33 = v148;
                                v59 = v143;
LABEL_145:

LABEL_146:
                                goto LABEL_147;
                              }

                              v127 = v100;
                              if (error)
                              {
                                v101 = v101;
                                *error = v101;
                              }

                              v34 = 0;
                            }

                            else
                            {
                              if (!error)
                              {
                                v34 = 0;
                                v33 = v148;
                                v59 = v143;
                                goto LABEL_146;
                              }

                              v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v112 = *MEMORY[0x1E698F240];
                              v156 = *MEMORY[0x1E696A578];
                              v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"monotonicTimestamp"];
                              v157 = v130;
                              v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
                              v114 = v128;
                              v127 = v113;
                              v34 = 0;
                              *error = [v114 initWithDomain:v112 code:2 userInfo:?];
                            }

                            v6 = v149;
                            goto LABEL_132;
                          }
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          goto LABEL_83;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v73 = v73;
                          v153 = 0;
                          v138 = [[BMSageMetadata alloc] initWithJSONDictionary:v73 error:&v153];

                          v79 = v153;
                          if (!v79)
                          {
                            goto LABEL_84;
                          }

                          if (error)
                          {
                            v79 = v79;
                            *error = v79;
                          }
                        }

                        else
                        {
                          if (error)
                          {
                            v139 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v96 = *MEMORY[0x1E698F240];
                            v158 = *MEMORY[0x1E696A578];
                            v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"_sageMetadata"];
                            v159 = v97;
                            v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
                            v99 = v96;
                            v6 = v149;
                            *error = [v139 initWithDomain:v99 code:2 userInfo:v98];
                          }

                          v138 = 0;
                        }

                        v34 = 0;
LABEL_108:
                        v33 = v148;
                        v59 = v143;
LABEL_147:

LABEL_148:
                        v7 = v144;
                        goto LABEL_149;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v132 = v71;
                        goto LABEL_73;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v132 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v71 options:0];
                        if (v132)
                        {
                          goto LABEL_73;
                        }

                        if (error)
                        {
                          errorCopy2 = error;
                          v105 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v106 = *MEMORY[0x1E698F240];
                          v162 = *MEMORY[0x1E696A578];
                          v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"eventPayload"];
                          v163 = v138;
                          v107 = MEMORY[0x1E695DF20];
                          v108 = &v163;
                          v109 = &v162;
LABEL_139:
                          v73 = [v107 dictionaryWithObjects:v108 forKeys:v109 count:1];
                          v117 = v106;
                          v6 = v149;
                          v132 = 0;
                          v34 = 0;
                          *errorCopy2 = [v105 initWithDomain:v117 code:2 userInfo:v73];
                          goto LABEL_108;
                        }
                      }

                      else if (error)
                      {
                        errorCopy2 = error;
                        v105 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v106 = *MEMORY[0x1E698F240];
                        v160 = *MEMORY[0x1E696A578];
                        v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"eventPayload"];
                        v161 = v138;
                        v107 = MEMORY[0x1E695DF20];
                        v108 = &v161;
                        v109 = &v160;
                        goto LABEL_139;
                      }

                      v132 = 0;
                      v34 = 0;
                      v33 = v148;
                      v59 = v143;
                      goto LABEL_148;
                    }

                    objc_opt_class();
                    v21 = v37;
                    if (objc_opt_isKindOfClass())
                    {
                      v140 = v67;
                      goto LABEL_67;
                    }

                    v16 = v136;
                    v18 = v137;
                    if (error)
                    {
                      v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v91 = *MEMORY[0x1E698F240];
                      v166 = *MEMORY[0x1E696A578];
                      v92 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v124 = objc_opt_class();
                      v93 = v92;
                      v6 = v149;
                      v134 = [v93 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v124, @"eventType"];
                      v167 = v134;
                      v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
                      v95 = v90;
                      v7 = v144;
                      v133 = v94;
                      v140 = 0;
                      v34 = 0;
                      *error = [v95 initWithDomain:v91 code:2 userInfo:?];
                      v33 = v148;
                      v59 = v143;
LABEL_149:

                      goto LABEL_150;
                    }

                    v140 = 0;
                    v34 = 0;
                    v33 = v148;
                    v59 = v143;
LABEL_150:

                    goto LABEL_151;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v142 = v65;
                    goto LABEL_62;
                  }

                  if (error)
                  {
                    v80 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v81 = *MEMORY[0x1E698F240];
                    v168 = *MEMORY[0x1E696A578];
                    v82 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v123 = objc_opt_class();
                    v83 = v82;
                    v6 = v149;
                    v140 = [v83 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v123, @"eventLabel"];
                    v169 = v140;
                    v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
                    v85 = v80;
                    v7 = v144;
                    v135 = v84;
                    v142 = 0;
                    v34 = 0;
                    *error = [v85 initWithDomain:v81 code:2 userInfo:?];
                    v33 = v148;
                    v59 = v143;
                    v36 = v38;
                    v21 = v37;
                    v16 = v136;
                    v18 = v137;
                    goto LABEL_150;
                  }

                  v142 = 0;
                  v34 = 0;
                  v33 = v148;
                  v59 = v143;
                  v36 = v38;
                  v21 = v37;
                  v16 = v136;
                  v18 = v137;
LABEL_151:

                  goto LABEL_152;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v55 = MEMORY[0x1E696AFB0];
                  v36 = v36;
                  v56 = [[v55 alloc] initWithUUIDString:v36];

                  v145 = v56;
                  if (v56)
                  {
                    v136 = v16;
                    v137 = v18;
                    v37 = v21;
                    v38 = v36;
                    v7 = v144;
                    goto LABEL_59;
                  }

                  if (error)
                  {
                    v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v103 = *MEMORY[0x1E698F240];
                    v172 = *MEMORY[0x1E696A578];
                    v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"_clientSessionID"];
                    v173 = v142;
                    v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
                    v145 = 0;
                    v34 = 0;
                    *error = [v102 initWithDomain:v103 code:2 userInfo:?];
                    goto LABEL_116;
                  }
                }

                else if (error)
                {
                  v60 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v61 = *MEMORY[0x1E698F240];
                  v170 = *MEMORY[0x1E696A578];
                  v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"_clientSessionID"];
                  v171 = v142;
                  v141 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
                  v145 = 0;
                  v34 = 0;
                  *error = [v60 initWithDomain:v61 code:2 userInfo:?];
LABEL_116:
                  v33 = v148;
                  v6 = v149;
                  v59 = v143;
                  v7 = v144;
                  goto LABEL_151;
                }

                v145 = 0;
                v34 = 0;
                v33 = v148;
                v59 = v143;
                v7 = v144;
LABEL_152:

                goto LABEL_153;
              }

              if (error)
              {
                v41 = v7;
                v42 = objc_alloc(MEMORY[0x1E696ABC0]);
                v43 = *MEMORY[0x1E698F240];
                v176 = *MEMORY[0x1E696A578];
                v145 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"_bootSessionID"];
                v177 = v145;
                v44 = MEMORY[0x1E695DF20];
                v45 = &v177;
                v46 = &v176;
LABEL_46:
                v36 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:1];
                v57 = v42;
                v7 = v41;
                v58 = v43;
                v6 = v149;
                v59 = 0;
                v34 = 0;
                *error = [v57 initWithDomain:v58 code:2 userInfo:v36];
                v33 = v148;
                goto LABEL_152;
              }
            }

            else if (error)
            {
              v41 = v7;
              v42 = objc_alloc(MEMORY[0x1E696ABC0]);
              v43 = *MEMORY[0x1E698F240];
              v174 = *MEMORY[0x1E696A578];
              v145 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"_bootSessionID"];
              v175 = v145;
              v44 = MEMORY[0x1E695DF20];
              v45 = &v175;
              v46 = &v174;
              goto LABEL_46;
            }

            v59 = 0;
            v34 = 0;
            v33 = v148;
LABEL_153:
            v31 = v146;
            goto LABEL_154;
          }

          errorCopy4 = error;
          if (error)
          {
            selfCopy4 = self;
            v48 = objc_alloc(MEMORY[0x1E696ABC0]);
            v49 = v7;
            v50 = *MEMORY[0x1E698F240];
            v180 = *MEMORY[0x1E696A578];
            v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"_sessionID"];
            v181 = v51;
            v52 = MEMORY[0x1E695DF20];
            v53 = &v181;
            v54 = &v180;
            goto LABEL_54;
          }
        }

        else
        {
          errorCopy4 = error;
          if (error)
          {
            selfCopy4 = self;
            v48 = objc_alloc(MEMORY[0x1E696ABC0]);
            v49 = v7;
            v50 = *MEMORY[0x1E698F240];
            v178 = *MEMORY[0x1E696A578];
            v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"_sessionID"];
            v179 = v51;
            v52 = MEMORY[0x1E695DF20];
            v53 = &v179;
            v54 = &v178;
LABEL_54:
            v21 = [v52 dictionaryWithObjects:v53 forKeys:v54 count:1];
            v62 = v50;
            v7 = v49;
            v63 = [v48 initWithDomain:v62 code:2 userInfo:v21];
            v31 = 0;
            v34 = 0;
            *errorCopy4 = v63;
            v59 = v51;
            v33 = v148;
            v6 = v149;
LABEL_154:

            self = selfCopy4;
            goto LABEL_155;
          }
        }

        v31 = 0;
        v34 = 0;
        v33 = v148;
LABEL_155:

        goto LABEL_156;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v16;
      v148 = v16;
      goto LABEL_16;
    }

    if (error)
    {
      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = v7;
      v25 = *MEMORY[0x1E698F240];
      v182 = *MEMORY[0x1E696A578];
      v26 = v16;
      v27 = objc_alloc(MEMORY[0x1E696AEC0]);
      v122 = objc_opt_class();
      v28 = v27;
      v16 = v26;
      v29 = [v28 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v122, @"_machAbsoluteTime"];
      v183 = v29;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
      v30 = v23;
      v31 = v29;
      v32 = v25;
      v7 = v24;
      v33 = 0;
      v34 = 0;
      *error = [v30 initWithDomain:v32 code:2 userInfo:v18];
      goto LABEL_155;
    }

    v33 = 0;
    v34 = 0;
LABEL_156:

    goto LABEL_157;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v7 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v7 = [v14 dateFromString:v6];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v6;
    goto LABEL_6;
  }

  if (error)
  {
    v86 = objc_alloc(MEMORY[0x1E696ABC0]);
    v87 = *MEMORY[0x1E698F240];
    v184 = *MEMORY[0x1E696A578];
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
    v185[0] = v33;
    v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v185 forKeys:&v184 count:1];
    v89 = [v86 initWithDomain:v87 code:2 userInfo:v88];
    v7 = 0;
    v34 = 0;
    *error = v89;
    v16 = v88;
    goto LABEL_156;
  }

  v7 = 0;
  v34 = 0;
LABEL_157:

  v120 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSageTranscript *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_has_machAbsoluteTime)
  {
    machAbsoluteTime = self->__machAbsoluteTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_raw__sessionID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_raw__bootSessionID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_raw__clientSessionID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_eventLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_eventType)
  {
    PBDataWriterWriteStringField();
  }

  serializationFormat = self->_serializationFormat;
  PBDataWriterWriteUint32Field();
  if (self->_eventPayload)
  {
    PBDataWriterWriteDataField();
  }

  if (self->__sageMetadata)
  {
    PBDataWriterPlaceMark();
    [(BMSageMetadata *)self->__sageMetadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_monotonicTimestamp)
  {
    PBDataWriterPlaceMark();
    [(BMMonotonicTimestamp *)self->_monotonicTimestamp writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_identifiers)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceFlowIdentifiers *)self->_identifiers writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMSageTranscript;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_84;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_82;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v43 & 0x7F) << v7;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_82;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 6)
      {
        break;
      }

      if (v15 <= 9)
      {
        switch(v15)
        {
          case 7:
            v24 = PBReaderReadData();
            if ([v24 length] != 16)
            {
              goto LABEL_86;
            }

            v25 = 32;
            break;
          case 8:
            v24 = PBReaderReadData();
            if ([v24 length] != 16)
            {
LABEL_86:

              goto LABEL_83;
            }

            v25 = 40;
            break;
          case 9:
            v5->_has_machAbsoluteTime = 1;
            v43 = 0;
            v18 = [fromCopy position] + 8;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v36 = v43;
            v37 = 112;
            goto LABEL_80;
          default:
            goto LABEL_70;
        }

LABEL_55:
        v26 = *(&v5->super.super.isa + v25);
        *(&v5->super.super.isa + v25) = v24;
        goto LABEL_56;
      }

      switch(v15)
      {
        case 0xA:
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_83;
          }

          v20 = [[BMSageMetadata alloc] initByReadFrom:fromCopy];
          if (!v20)
          {
            goto LABEL_83;
          }

          v21 = 144;
          break;
        case 0xB:
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_83;
          }

          v20 = [[BMMonotonicTimestamp alloc] initByReadFrom:fromCopy];
          if (!v20)
          {
            goto LABEL_83;
          }

          v21 = 96;
          break;
        case 0xC:
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_83;
          }

          v20 = [[BMIntelligenceFlowIdentifiers alloc] initByReadFrom:fromCopy];
          if (!v20)
          {
            goto LABEL_83;
          }

          v21 = 104;
          break;
        default:
LABEL_70:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_83;
          }

          goto LABEL_81;
      }

      v34 = *(&v5->super.super.isa + v21);
      *(&v5->super.super.isa + v21) = v20;

      PBReaderRecallMark();
LABEL_81:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_82;
      }
    }

    if (v15 > 3)
    {
      switch(v15)
      {
        case 4:
          v16 = PBReaderReadString();
          v17 = 80;
          break;
        case 5:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          while (1)
          {
            LOBYTE(v43) = 0;
            v30 = [fromCopy position] + 1;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v29 |= (v43 & 0x7F) << v27;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            if (v28++ > 8)
            {
              goto LABEL_74;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v29 > 2)
          {
LABEL_74:
            LODWORD(v29) = 0;
          }

          v5->_serializationFormat = v29;
          goto LABEL_81;
        case 6:
          v16 = PBReaderReadData();
          v17 = 88;
          break;
        default:
          goto LABEL_70;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v5->_hasRaw_absoluteTimestamp = 1;
        v43 = 0;
        v22 = [fromCopy position] + 8;
        if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 8, v23 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v36 = v43;
        v37 = 24;
LABEL_80:
        *(&v5->super.super.isa + v37) = v36;
        goto LABEL_81;
      }

      if (v15 == 2)
      {
        v24 = PBReaderReadData();
        if ([v24 length] != 16)
        {
          goto LABEL_86;
        }

        v25 = 48;
        goto LABEL_55;
      }

      if (v15 != 3)
      {
        goto LABEL_70;
      }

      v16 = PBReaderReadString();
      v17 = 72;
    }

    v26 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;
LABEL_56:

    goto LABEL_81;
  }

LABEL_82:
  if ([fromCopy hasError])
  {
LABEL_83:
    v40 = 0;
  }

  else
  {
LABEL_84:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMSageTranscript *)self absoluteTimestamp];
  v3 = MEMORY[0x1E696AD98];
  [(BMSageTranscript *)self _machAbsoluteTime];
  v17 = [v3 numberWithDouble:?];
  _sessionID = [(BMSageTranscript *)self _sessionID];
  _bootSessionID = [(BMSageTranscript *)self _bootSessionID];
  _clientSessionID = [(BMSageTranscript *)self _clientSessionID];
  eventLabel = [(BMSageTranscript *)self eventLabel];
  eventType = [(BMSageTranscript *)self eventType];
  v9 = BMSageTranscriptSerializationFormatAsString([(BMSageTranscript *)self serializationFormat]);
  eventPayload = [(BMSageTranscript *)self eventPayload];
  _sageMetadata = [(BMSageTranscript *)self _sageMetadata];
  monotonicTimestamp = [(BMSageTranscript *)self monotonicTimestamp];
  identifiers = [(BMSageTranscript *)self identifiers];
  v16 = [v15 initWithFormat:@"BMSageTranscript with absoluteTimestamp: %@, _machAbsoluteTime: %@, _sessionID: %@, _bootSessionID: %@, _clientSessionID: %@, eventLabel: %@, eventType: %@, serializationFormat: %@, eventPayload: %@, _sageMetadata: %@, monotonicTimestamp: %@, identifiers: %@", absoluteTimestamp, v17, _sessionID, _bootSessionID, _clientSessionID, eventLabel, eventType, v9, eventPayload, _sageMetadata, monotonicTimestamp, identifiers];

  return v16;
}

- (BMSageTranscript)initWithAbsoluteTimestamp:(id)timestamp eventLabel:(id)label eventType:(id)type serializationFormat:(int)format eventPayload:(id)payload monotonicTimestamp:(id)monotonicTimestamp identifiers:(id)identifiers
{
  timestampCopy = timestamp;
  labelCopy = label;
  typeCopy = type;
  payloadCopy = payload;
  monotonicTimestampCopy = monotonicTimestamp;
  identifiersCopy = identifiers;
  v24.receiver = self;
  v24.super_class = BMSageTranscript;
  v18 = [(BMEventBase *)&v24 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v18->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_absoluteTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_absoluteTimestamp = v19;
    objc_storeStrong(&v18->_eventLabel, label);
    objc_storeStrong(&v18->_eventType, type);
    v18->_serializationFormat = format;
    objc_storeStrong(&v18->_eventPayload, payload);
    objc_storeStrong(&v18->_monotonicTimestamp, monotonicTimestamp);
    objc_storeStrong(&v18->_identifiers, identifiers);
  }

  return v18;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"_machAbsoluteTime" number:9 type:0 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"_sessionID" number:7 type:14 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"_bootSessionID" number:8 type:14 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"_clientSessionID" number:2 type:14 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventLabel" number:3 type:13 subMessageClass:0];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:4 type:13 subMessageClass:0];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serializationFormat" number:5 type:4 subMessageClass:0];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventPayload" number:6 type:14 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"_sageMetadata" number:10 type:14 subMessageClass:objc_opt_class()];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"monotonicTimestamp" number:11 type:14 subMessageClass:objc_opt_class()];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifiers" number:12 type:14 subMessageClass:objc_opt_class()];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __27__BMSageTranscript_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 identifiers];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __27__BMSageTranscript_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 monotonicTimestamp];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __27__BMSageTranscript_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 sageMetadata];
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

    v8 = [[BMSageTranscript alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[15] = 0;
    }
  }

  return v4;
}

- (id)sageMetadata
{
  v3 = [BMSageMetadata alloc];
  identifiers = [(BMSageTranscript *)self identifiers];
  sessionId = [identifiers sessionId];
  identifiers2 = [(BMSageTranscript *)self identifiers];
  clientGroupIdentifier = [identifiers2 clientGroupIdentifier];
  identifiers3 = [(BMSageTranscript *)self identifiers];
  clientRequestId = [identifiers3 clientRequestId];
  identifiers4 = [(BMSageTranscript *)self identifiers];
  clientSessionId = [identifiers4 clientSessionId];
  v12 = [(BMSageMetadata *)v3 initWithRawSessionId:sessionId clientId:clientGroupIdentifier clientRequestId:clientRequestId clientSessionId:clientSessionId];

  return v12;
}

- (id)clientSessionID
{
  identifiers = [(BMSageTranscript *)self identifiers];

  if (identifiers)
  {
    identifiers2 = [(BMSageTranscript *)self identifiers];
    clientSessionId = [identifiers2 clientSessionId];

    if (clientSessionId)
    {
      v6 = objc_alloc(MEMORY[0x1E696AFB0]);
      identifiers3 = [(BMSageTranscript *)self identifiers];
      clientSessionId2 = [identifiers3 clientSessionId];
      _clientSessionID = [v6 initWithUUIDString:clientSessionId2];
    }

    else
    {
      _clientSessionID = 0;
    }
  }

  else
  {
    _clientSessionID = [(BMSageTranscript *)self _clientSessionID];
  }

  return _clientSessionID;
}

- (id)sessionID
{
  identifiers = [(BMSageTranscript *)self identifiers];

  if (identifiers)
  {
    identifiers2 = [(BMSageTranscript *)self identifiers];
    sessionId = [identifiers2 sessionId];
  }

  else
  {
    sessionId = [(BMSageTranscript *)self _sessionID];
  }

  return sessionId;
}

- (id)bootSessionID
{
  monotonicTimestamp = [(BMSageTranscript *)self monotonicTimestamp];

  if (monotonicTimestamp)
  {
    monotonicTimestamp2 = [(BMSageTranscript *)self monotonicTimestamp];
    bootSessionUUID = [monotonicTimestamp2 bootSessionUUID];
  }

  else
  {
    bootSessionUUID = [(BMSageTranscript *)self _bootSessionID];
  }

  return bootSessionUUID;
}

- (double)machAbsoluteTime
{
  monotonicTimestamp = [(BMSageTranscript *)self monotonicTimestamp];

  if (monotonicTimestamp)
  {
    monotonicTimestamp2 = [(BMSageTranscript *)self monotonicTimestamp];
    value = [monotonicTimestamp2 value];
    suspendingNanosecondsSinceBoot = [value suspendingNanosecondsSinceBoot];

    return suspendingNanosecondsSinceBoot;
  }

  else
  {

    [(BMSageTranscript *)self _machAbsoluteTime];
  }

  return result;
}

- (BOOL)hasMachAbsoluteTime
{
  monotonicTimestamp = [(BMSageTranscript *)self monotonicTimestamp];

  if (monotonicTimestamp)
  {
    monotonicTimestamp2 = [(BMSageTranscript *)self monotonicTimestamp];
    value = [monotonicTimestamp2 value];
    hasSuspendingNanosecondsSinceBoot = [value hasSuspendingNanosecondsSinceBoot];

    return hasSuspendingNanosecondsSinceBoot;
  }

  else
  {

    return [(BMSageTranscript *)self has_machAbsoluteTime];
  }
}

- (BMSageTranscript)initWithAbsoluteTimestamp:(id)timestamp machAbsoluteTime:(id)time sessionID:(id)d bootSessionID:(id)iD clientSessionID:(id)sessionID eventLabel:(id)label eventType:(id)type serializationFormat:(int)self0 eventPayload:(id)self1
{
  timeCopy = time;
  iDCopy = iD;
  payloadCopy = payload;
  typeCopy = type;
  labelCopy = label;
  sessionIDCopy = sessionID;
  dCopy = d;
  timestampCopy = timestamp;
  v32 = timeCopy;
  if (timeCopy && iDCopy)
  {
    v24 = [[BMMonotonicTimestamp alloc] initWithBootSessionUUID:iDCopy machAbsoluteTime:timeCopy machContinuousTime:0];
  }

  else
  {
    v24 = +[BMMonotonicTimestamp nowFromSuspendingClock];
  }

  v25 = v24;
  v26 = iDCopy;
  v27 = [BMIntelligenceFlowIdentifiers alloc];
  uUIDString = [sessionIDCopy UUIDString];

  v29 = [(BMIntelligenceFlowIdentifiers *)v27 initWithSessionId:dCopy spanId:0 clientRequestId:0 clientSessionId:uUIDString clientApplicationId:0 clientGroupIdentifier:0];
  v30 = [(BMSageTranscript *)self initWithAbsoluteTimestamp:timestampCopy eventLabel:labelCopy eventType:typeCopy serializationFormat:format eventPayload:payloadCopy monotonicTimestamp:v25 identifiers:v29];

  return v30;
}

- (BMSageTranscript)initWithAbsoluteTimestamp:(id)timestamp _machAbsoluteTime:(id)time _sessionID:(id)d _bootSessionID:(id)iD _clientSessionID:(id)sessionID eventLabel:(id)label eventType:(id)type serializationFormat:(int)self0 eventPayload:(id)self1 _sageMetadata:(id)self2 monotonicTimestamp:(id)self3 identifiers:(id)self4
{
  timestampCopy = timestamp;
  timeCopy = time;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  labelCopy = label;
  typeCopy = type;
  payloadCopy = payload;
  metadataCopy = metadata;
  monotonicTimestampCopy = monotonicTimestamp;
  identifiersCopy = identifiers;
  v44 = identifiersCopy;
  if (metadataCopy || monotonicTimestampCopy || identifiersCopy)
  {
    v43 = sessionIDCopy;
    v31 = identifiersCopy;
    v32 = v31;
    if (metadataCopy)
    {
      formatCopy2 = format;
      if (!v31)
      {
        v34 = [BMIntelligenceFlowIdentifiers alloc];
        rawSessionId = [metadataCopy rawSessionId];
        [metadataCopy clientRequestId];
        v36 = v42 = monotonicTimestampCopy;
        clientSessionId = [metadataCopy clientSessionId];
        clientId = [metadataCopy clientId];
        v32 = [(BMIntelligenceFlowIdentifiers *)v34 initWithSessionId:rawSessionId spanId:0 clientRequestId:v36 clientSessionId:clientSessionId clientApplicationId:0 clientGroupIdentifier:clientId];

        monotonicTimestampCopy = v42;
      }
    }

    else
    {
      formatCopy2 = format;
    }

    v26 = timestampCopy;
    v30 = [(BMSageTranscript *)self initWithAbsoluteTimestamp:timestampCopy eventLabel:labelCopy eventType:typeCopy serializationFormat:formatCopy2 eventPayload:payloadCopy monotonicTimestamp:monotonicTimestampCopy identifiers:v32];

    v28 = typeCopy;
    v29 = iDCopy;
    v27 = timeCopy;
    sessionIDCopy = v43;
  }

  else
  {
    LODWORD(v41) = format;
    v40 = typeCopy;
    v27 = timeCopy;
    v26 = timestampCopy;
    v28 = typeCopy;
    v29 = iDCopy;
    v30 = [(BMSageTranscript *)self initWithAbsoluteTimestamp:timestampCopy machAbsoluteTime:timeCopy sessionID:dCopy bootSessionID:iDCopy clientSessionID:sessionIDCopy eventLabel:labelCopy eventType:v40 serializationFormat:v41 eventPayload:payloadCopy];
  }

  return v30;
}

- (BMSageTranscript)initWithAbsoluteTimestamp:(id)timestamp eventLabel:(id)label eventType:(id)type serializationFormat:(int)format eventPayload:(id)payload sageMetadata:(id)metadata monotonicTimestamp:(id)monotonicTimestamp
{
  monotonicTimestampCopy = monotonicTimestamp;
  metadataCopy = metadata;
  payloadCopy = payload;
  typeCopy = type;
  labelCopy = label;
  timestampCopy = timestamp;
  v19 = [BMIntelligenceFlowIdentifiers alloc];
  rawSessionId = [metadataCopy rawSessionId];
  clientRequestId = [metadataCopy clientRequestId];
  clientSessionId = [metadataCopy clientSessionId];
  clientId = [metadataCopy clientId];

  v24 = [(BMIntelligenceFlowIdentifiers *)v19 initWithSessionId:rawSessionId spanId:0 clientRequestId:clientRequestId clientSessionId:clientSessionId clientApplicationId:0 clientGroupIdentifier:clientId];
  v25 = [(BMSageTranscript *)self initWithAbsoluteTimestamp:timestampCopy eventLabel:labelCopy eventType:typeCopy serializationFormat:format eventPayload:payloadCopy monotonicTimestamp:monotonicTimestampCopy identifiers:v24];

  return v25;
}

- (NSString)clientRequestId
{
  identifiers = [(BMSageTranscript *)self identifiers];
  clientRequestId = [identifiers clientRequestId];

  return clientRequestId;
}

- (NSString)clientSessionId
{
  identifiers = [(BMSageTranscript *)self identifiers];
  clientSessionId = [identifiers clientSessionId];

  return clientSessionId;
}

- (NSNumber)spanId
{
  identifiers = [(BMSageTranscript *)self identifiers];
  hasSpanId = [identifiers hasSpanId];

  if (hasSpanId)
  {
    v5 = MEMORY[0x1E696AD98];
    identifiers2 = [(BMSageTranscript *)self identifiers];
    v7 = [v5 numberWithUnsignedLongLong:{objc_msgSend(identifiers2, "spanId")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSUUID)sessionId
{
  identifiers = [(BMSageTranscript *)self identifiers];
  sessionId = [identifiers sessionId];

  return sessionId;
}

@end