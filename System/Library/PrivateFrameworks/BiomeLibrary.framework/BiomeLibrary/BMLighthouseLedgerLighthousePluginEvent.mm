@interface BMLighthouseLedgerLighthousePluginEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLighthouseLedgerLighthousePluginEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLighthouseLedgerLighthousePluginEvent)initWithTrialIdentifiers:(id)identifiers contextID:(id)d timestamp:(id)timestamp usePrivateUpload:(id)upload performTaskStatus:(id)status performTrialTaskStatus:(id)taskStatus stop:(id)stop;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLighthouseLedgerLighthousePluginEvent

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trialIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_16822];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usePrivateUpload" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"performTaskStatus_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_179];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"performTrialTaskStatus_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_181];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stop_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_183];
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
    trialIdentifiers = [(BMLighthouseLedgerLighthousePluginEvent *)self trialIdentifiers];
    trialIdentifiers2 = [v5 trialIdentifiers];
    v8 = trialIdentifiers2;
    if (trialIdentifiers == trialIdentifiers2)
    {
    }

    else
    {
      trialIdentifiers3 = [(BMLighthouseLedgerLighthousePluginEvent *)self trialIdentifiers];
      trialIdentifiers4 = [v5 trialIdentifiers];
      v11 = [trialIdentifiers3 isEqual:trialIdentifiers4];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    contextID = [(BMLighthouseLedgerLighthousePluginEvent *)self contextID];
    contextID2 = [v5 contextID];
    v15 = contextID2;
    if (contextID == contextID2)
    {
    }

    else
    {
      contextID3 = [(BMLighthouseLedgerLighthousePluginEvent *)self contextID];
      contextID4 = [v5 contextID];
      v18 = [contextID3 isEqual:contextID4];

      if (!v18)
      {
        goto LABEL_26;
      }
    }

    timestamp = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
    timestamp2 = [v5 timestamp];
    v21 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
      timestamp4 = [v5 timestamp];
      v24 = [timestamp3 isEqual:timestamp4];

      if (!v24)
      {
        goto LABEL_26;
      }
    }

    if (-[BMLighthouseLedgerLighthousePluginEvent hasUsePrivateUpload](self, "hasUsePrivateUpload") || [v5 hasUsePrivateUpload])
    {
      if (![(BMLighthouseLedgerLighthousePluginEvent *)self hasUsePrivateUpload])
      {
        goto LABEL_26;
      }

      if (![v5 hasUsePrivateUpload])
      {
        goto LABEL_26;
      }

      usePrivateUpload = [(BMLighthouseLedgerLighthousePluginEvent *)self usePrivateUpload];
      if (usePrivateUpload != [v5 usePrivateUpload])
      {
        goto LABEL_26;
      }
    }

    performTaskStatus = [(BMLighthouseLedgerLighthousePluginEvent *)self performTaskStatus];
    performTaskStatus2 = [v5 performTaskStatus];
    v28 = performTaskStatus2;
    if (performTaskStatus == performTaskStatus2)
    {
    }

    else
    {
      performTaskStatus3 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTaskStatus];
      performTaskStatus4 = [v5 performTaskStatus];
      v31 = [performTaskStatus3 isEqual:performTaskStatus4];

      if (!v31)
      {
        goto LABEL_26;
      }
    }

    performTrialTaskStatus = [(BMLighthouseLedgerLighthousePluginEvent *)self performTrialTaskStatus];
    performTrialTaskStatus2 = [v5 performTrialTaskStatus];
    v34 = performTrialTaskStatus2;
    if (performTrialTaskStatus == performTrialTaskStatus2)
    {
    }

    else
    {
      performTrialTaskStatus3 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTrialTaskStatus];
      performTrialTaskStatus4 = [v5 performTrialTaskStatus];
      v37 = [performTrialTaskStatus3 isEqual:performTrialTaskStatus4];

      if (!v37)
      {
LABEL_26:
        v12 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    stop = [(BMLighthouseLedgerLighthousePluginEvent *)self stop];
    stop2 = [v5 stop];
    if (stop == stop2)
    {
      v12 = 1;
    }

    else
    {
      stop3 = [(BMLighthouseLedgerLighthousePluginEvent *)self stop];
      stop4 = [v5 stop];
      v12 = [stop3 isEqual:stop4];
    }

    goto LABEL_27;
  }

  v12 = 0;
LABEL_28:

  return v12;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v32[7] = *MEMORY[0x1E69E9840];
  trialIdentifiers = [(BMLighthouseLedgerLighthousePluginEvent *)self trialIdentifiers];
  jsonDictionary = [trialIdentifiers jsonDictionary];

  contextID = [(BMLighthouseLedgerLighthousePluginEvent *)self contextID];
  timestamp = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
  if (timestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v30 = [v7 numberWithDouble:?];
  }

  else
  {
    v30 = 0;
  }

  if ([(BMLighthouseLedgerLighthousePluginEvent *)self hasUsePrivateUpload])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerLighthousePluginEvent usePrivateUpload](self, "usePrivateUpload")}];
  }

  else
  {
    v9 = 0;
  }

  performTaskStatus = [(BMLighthouseLedgerLighthousePluginEvent *)self performTaskStatus];
  jsonDictionary2 = [performTaskStatus jsonDictionary];

  performTrialTaskStatus = [(BMLighthouseLedgerLighthousePluginEvent *)self performTrialTaskStatus];
  jsonDictionary3 = [performTrialTaskStatus jsonDictionary];

  stop = [(BMLighthouseLedgerLighthousePluginEvent *)self stop];
  jsonDictionary4 = [stop jsonDictionary];

  v31[0] = @"trialIdentifiers";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v32[0] = null;
  v31[1] = @"contextID";
  null2 = contextID;
  if (!contextID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v32[1] = null2;
  v31[2] = @"timestamp";
  null3 = v30;
  if (!v30)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = jsonDictionary;
  v32[2] = null3;
  v31[3] = @"usePrivateUpload";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = contextID;
  v32[3] = null4;
  v31[4] = @"performTaskStatus";
  null5 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32[4] = null5;
  v31[5] = @"performTrialTaskStatus";
  null6 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = null6;
  v31[6] = @"stop";
  null7 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = null7;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:7];
  if (jsonDictionary4)
  {
    if (jsonDictionary3)
    {
      goto LABEL_23;
    }

LABEL_33:

    if (jsonDictionary2)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (!jsonDictionary3)
  {
    goto LABEL_33;
  }

LABEL_23:
  if (jsonDictionary2)
  {
    goto LABEL_24;
  }

LABEL_34:

LABEL_24:
  if (!v9)
  {
  }

  if (v30)
  {
    if (v28)
    {
      goto LABEL_28;
    }

LABEL_36:

    if (v29)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if (!v28)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v29)
  {
    goto LABEL_29;
  }

LABEL_37:

LABEL_29:
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BMLighthouseLedgerLighthousePluginEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v84[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"trialIdentifiers"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v70 = 0;
    v8 = [[BMLighthouseLedgerTrialIdentifiers alloc] initWithJSONDictionary:v10 error:&v70];
    v19 = v70;
    if (v19)
    {
      if (error)
      {
        v19 = v19;
        *error = v19;
      }

      v18 = 0;
      goto LABEL_76;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"contextID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v18 = 0;
          goto LABEL_75;
        }

        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contextID"];
        v82 = v65;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v11 = v31 = error;
        v10 = 0;
        v18 = 0;
        *v31 = [v62 initWithDomain:v30 code:2 userInfo:v11];
LABEL_74:

LABEL_75:
        goto LABEL_76;
      }

      errorCopy2 = error;
      v10 = v9;
    }

    else
    {
      errorCopy2 = error;
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    v58 = v9;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = MEMORY[0x1E695DF00];
        v21 = v11;
        v22 = [v20 alloc];
        [v21 doubleValue];
        v24 = v23;

        v65 = [v22 initWithTimeIntervalSince1970:v24];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v65 = [v32 dateFromString:v11];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy2)
            {
              v65 = 0;
              v18 = 0;
              goto LABEL_74;
            }

            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v60 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
            v80 = v61;
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            v47 = [v66 initWithDomain:v60 code:2 userInfo:v12];
            v65 = 0;
            v18 = 0;
            *errorCopy2 = v47;
            goto LABEL_73;
          }

          v65 = v11;
        }
      }
    }

    else
    {
      v65 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"usePrivateUpload"];
    selfCopy = self;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v61 = 0;
          v18 = 0;
          goto LABEL_73;
        }

        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = v10;
        v34 = *MEMORY[0x1E698F240];
        v77 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"usePrivateUpload"];
        v78 = v25;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v36 = v34;
        v10 = v33;
        v59 = v35;
        v37 = [v63 initWithDomain:v36 code:2 userInfo:?];
        v61 = 0;
        v18 = 0;
        *errorCopy2 = v37;
        goto LABEL_71;
      }

      v61 = v12;
    }

    else
    {
      v61 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"performTaskStatus"];
    v57 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v18 = 0;
          goto LABEL_72;
        }

        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v40 = v10;
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v48 = objc_opt_class();
        v42 = v41;
        v10 = v40;
        v59 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v48, @"performTaskStatus"];
        v76 = v59;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        *errorCopy2 = [v52 initWithDomain:v49 code:2 userInfo:v43];

        v18 = 0;
        v25 = v13;
LABEL_71:

        v13 = v25;
LABEL_72:

        self = selfCopy;
LABEL_73:

        v9 = v58;
        goto LABEL_74;
      }

      v25 = v13;
      v69 = 0;
      v59 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initWithJSONDictionary:v25 error:&v69];
      v26 = v69;
      if (v26)
      {
        if (errorCopy2)
        {
          v26 = v26;
          *errorCopy2 = v26;
        }

        v18 = 0;
        goto LABEL_71;
      }
    }

    else
    {
      v59 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"performTrialTaskStatus"];
    v55 = v10;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v18 = 0;
          goto LABEL_70;
        }

        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"performTrialTaskStatus"];
        v74 = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v18 = 0;
        *errorCopy2 = [v53 initWithDomain:v50 code:2 userInfo:v16];
LABEL_69:

        v8 = v57;
        v10 = v55;
LABEL_70:

        v25 = v13;
        goto LABEL_71;
      }

      v16 = v14;
      v68 = 0;
      v15 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initWithJSONDictionary:v16 error:&v68];
      v29 = v68;
      if (v29)
      {
        if (errorCopy2)
        {
          v29 = v29;
          *errorCopy2 = v29;
        }

        goto LABEL_78;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"stop"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = 0;
LABEL_22:
      v18 = [(BMLighthouseLedgerLighthousePluginEvent *)selfCopy initWithTrialIdentifiers:v57 contextID:v55 timestamp:v65 usePrivateUpload:v61 performTaskStatus:v59 performTrialTaskStatus:v15 stop:v17];
      selfCopy = v18;
LABEL_68:

      goto LABEL_69;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v16;
      v67 = 0;
      v17 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initWithJSONDictionary:v38 error:&v67];
      v39 = v67;
      if (!v39)
      {

        goto LABEL_22;
      }

      if (errorCopy2)
      {
        v39 = v39;
        *errorCopy2 = v39;
      }

LABEL_67:
      v18 = 0;
      goto LABEL_68;
    }

    if (errorCopy2)
    {
      v54 = objc_alloc(MEMORY[0x1E696ABC0]);
      v51 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"stop"];
      v72 = v17;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      *errorCopy2 = [v54 initWithDomain:v51 code:2 userInfo:v44];

      goto LABEL_67;
    }

LABEL_78:
    v18 = 0;
    goto LABEL_69;
  }

  if (error)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E698F240];
    v83 = *MEMORY[0x1E696A578];
    v84[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifiers"];
    v8 = v84[0];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
    v18 = 0;
    *error = [v27 initWithDomain:v28 code:2 userInfo:v10];
LABEL_76:

    goto LABEL_77;
  }

  v18 = 0;
LABEL_77:

  v45 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseLedgerLighthousePluginEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_trialIdentifiers)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerTrialIdentifiers *)self->_trialIdentifiers writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasUsePrivateUpload)
  {
    usePrivateUpload = self->_usePrivateUpload;
    PBDataWriterWriteBOOLField();
  }

  if (self->_performTaskStatus)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self->_performTaskStatus writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_performTrialTaskStatus)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self->_performTrialTaskStatus writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_stop)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self->_stop writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMLighthouseLedgerLighthousePluginEvent;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_62;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_60;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v35) & 0x7F) << v7;
        if ((LOBYTE(v35) & 0x80) == 0)
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
        goto LABEL_60;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        break;
      }

      switch(v15)
      {
        case 1:
          v35 = 0.0;
          v36 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_61;
          }

          v16 = [[BMLighthouseLedgerTrialIdentifiers alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_61;
          }

          v17 = 40;
LABEL_53:
          v27 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          PBReaderRecallMark();
          break;
        case 2:
          v28 = PBReaderReadString();
          contextID = v5->_contextID;
          v5->_contextID = v28;

          break;
        case 3:
          v5->_hasRaw_timestamp = 1;
          v35 = 0.0;
          v18 = [fromCopy position] + 8;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_timestamp = v35;
          break;
        default:
          goto LABEL_39;
      }

LABEL_59:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_60;
      }
    }

    if (v15 > 101)
    {
      if (v15 == 102)
      {
        v35 = 0.0;
        v36 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_61;
        }

        v16 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_61;
        }

        v17 = 64;
      }

      else
      {
        if (v15 != 103)
        {
LABEL_39:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_59;
        }

        v35 = 0.0;
        v36 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_61;
        }

        v16 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_61;
        }

        v17 = 72;
      }
    }

    else
    {
      if (v15 == 4)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasUsePrivateUpload = 1;
        while (1)
        {
          LOBYTE(v35) = 0;
          v23 = [fromCopy position] + 1;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v22 |= (LOBYTE(v35) & 0x7F) << v20;
          if ((LOBYTE(v35) & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            LOBYTE(v26) = 0;
            goto LABEL_56;
          }
        }

        v26 = (v22 != 0) & ~[fromCopy hasError];
LABEL_56:
        v5->_usePrivateUpload = v26;
        goto LABEL_59;
      }

      if (v15 != 101)
      {
        goto LABEL_39;
      }

      v35 = 0.0;
      v36 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_61;
      }

      v16 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initByReadFrom:fromCopy];
      if (!v16)
      {
        goto LABEL_61;
      }

      v17 = 56;
    }

    goto LABEL_53;
  }

LABEL_60:
  if ([fromCopy hasError])
  {
LABEL_61:
    v32 = 0;
  }

  else
  {
LABEL_62:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  trialIdentifiers = [(BMLighthouseLedgerLighthousePluginEvent *)self trialIdentifiers];
  contextID = [(BMLighthouseLedgerLighthousePluginEvent *)self contextID];
  timestamp = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerLighthousePluginEvent usePrivateUpload](self, "usePrivateUpload")}];
  performTaskStatus = [(BMLighthouseLedgerLighthousePluginEvent *)self performTaskStatus];
  performTrialTaskStatus = [(BMLighthouseLedgerLighthousePluginEvent *)self performTrialTaskStatus];
  stop = [(BMLighthouseLedgerLighthousePluginEvent *)self stop];
  v11 = [v3 initWithFormat:@"BMLighthouseLedgerLighthousePluginEvent with trialIdentifiers: %@, contextID: %@, timestamp: %@, usePrivateUpload: %@, performTaskStatus: %@, performTrialTaskStatus: %@, stop: %@", trialIdentifiers, contextID, timestamp, v7, performTaskStatus, performTrialTaskStatus, stop];

  return v11;
}

- (BMLighthouseLedgerLighthousePluginEvent)initWithTrialIdentifiers:(id)identifiers contextID:(id)d timestamp:(id)timestamp usePrivateUpload:(id)upload performTaskStatus:(id)status performTrialTaskStatus:(id)taskStatus stop:(id)stop
{
  identifiersCopy = identifiers;
  dCopy = d;
  timestampCopy = timestamp;
  uploadCopy = upload;
  statusCopy = status;
  taskStatusCopy = taskStatus;
  stopCopy = stop;
  v26.receiver = self;
  v26.super_class = BMLighthouseLedgerLighthousePluginEvent;
  v20 = [(BMEventBase *)&v26 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_trialIdentifiers, identifiers);
    objc_storeStrong(&v20->_contextID, d);
    if (timestampCopy)
    {
      v20->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_timestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_timestamp = v21;
    if (uploadCopy)
    {
      v20->_hasUsePrivateUpload = 1;
      v20->_usePrivateUpload = [uploadCopy BOOLValue];
    }

    else
    {
      v20->_hasUsePrivateUpload = 0;
      v20->_usePrivateUpload = 0;
    }

    objc_storeStrong(&v20->_performTaskStatus, status);
    objc_storeStrong(&v20->_performTrialTaskStatus, taskStatus);
    objc_storeStrong(&v20->_stop, stop);
  }

  return v20;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialIdentifiers" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextID" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usePrivateUpload" number:4 type:12 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"performTaskStatus" number:101 type:14 subMessageClass:objc_opt_class()];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"performTrialTaskStatus" number:102 type:14 subMessageClass:objc_opt_class()];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stop" number:103 type:14 subMessageClass:objc_opt_class()];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __50__BMLighthouseLedgerLighthousePluginEvent_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 stop];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __50__BMLighthouseLedgerLighthousePluginEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 performTrialTaskStatus];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __50__BMLighthouseLedgerLighthousePluginEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 performTaskStatus];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __50__BMLighthouseLedgerLighthousePluginEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trialIdentifiers];
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

    v8 = [[BMLighthouseLedgerLighthousePluginEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end