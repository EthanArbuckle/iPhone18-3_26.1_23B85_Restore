@interface BMLighthouseLedgerLighthousePluginEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseLedgerLighthousePluginEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseLedgerLighthousePluginEvent)initWithTrialIdentifiers:(id)a3 contextID:(id)a4 timestamp:(id)a5 usePrivateUpload:(id)a6 performTaskStatus:(id)a7 performTrialTaskStatus:(id)a8 stop:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMLighthouseLedgerLighthousePluginEvent *)self trialIdentifiers];
    v7 = [v5 trialIdentifiers];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMLighthouseLedgerLighthousePluginEvent *)self trialIdentifiers];
      v10 = [v5 trialIdentifiers];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    v13 = [(BMLighthouseLedgerLighthousePluginEvent *)self contextID];
    v14 = [v5 contextID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMLighthouseLedgerLighthousePluginEvent *)self contextID];
      v17 = [v5 contextID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_26;
      }
    }

    v19 = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
    v20 = [v5 timestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
      v23 = [v5 timestamp];
      v24 = [v22 isEqual:v23];

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

      v25 = [(BMLighthouseLedgerLighthousePluginEvent *)self usePrivateUpload];
      if (v25 != [v5 usePrivateUpload])
      {
        goto LABEL_26;
      }
    }

    v26 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTaskStatus];
    v27 = [v5 performTaskStatus];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTaskStatus];
      v30 = [v5 performTaskStatus];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_26;
      }
    }

    v32 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTrialTaskStatus];
    v33 = [v5 performTrialTaskStatus];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTrialTaskStatus];
      v36 = [v5 performTrialTaskStatus];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
LABEL_26:
        v12 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v39 = [(BMLighthouseLedgerLighthousePluginEvent *)self stop];
    v40 = [v5 stop];
    if (v39 == v40)
    {
      v12 = 1;
    }

    else
    {
      v41 = [(BMLighthouseLedgerLighthousePluginEvent *)self stop];
      v42 = [v5 stop];
      v12 = [v41 isEqual:v42];
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
  v3 = [(BMLighthouseLedgerLighthousePluginEvent *)self trialIdentifiers];
  v4 = [v3 jsonDictionary];

  v5 = [(BMLighthouseLedgerLighthousePluginEvent *)self contextID];
  v6 = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
    [v8 timeIntervalSince1970];
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

  v10 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTaskStatus];
  v11 = [v10 jsonDictionary];

  v12 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTrialTaskStatus];
  v13 = [v12 jsonDictionary];

  v14 = [(BMLighthouseLedgerLighthousePluginEvent *)self stop];
  v15 = [v14 jsonDictionary];

  v31[0] = @"trialIdentifiers";
  v16 = v4;
  if (!v4)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v16;
  v32[0] = v16;
  v31[1] = @"contextID";
  v17 = v5;
  if (!v5)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v17;
  v32[1] = v17;
  v31[2] = @"timestamp";
  v18 = v30;
  if (!v30)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v4;
  v32[2] = v18;
  v31[3] = @"usePrivateUpload";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v5;
  v32[3] = v19;
  v31[4] = @"performTaskStatus";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32[4] = v20;
  v31[5] = @"performTrialTaskStatus";
  v21 = v13;
  if (!v13)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = v21;
  v31[6] = @"stop";
  v22 = v15;
  if (!v15)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:7];
  if (v15)
  {
    if (v13)
    {
      goto LABEL_23;
    }

LABEL_33:

    if (v11)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (!v13)
  {
    goto LABEL_33;
  }

LABEL_23:
  if (v11)
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

- (BMLighthouseLedgerLighthousePluginEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v84[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"trialIdentifiers"];
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
      if (a4)
      {
        v19 = v19;
        *a4 = v19;
      }

      v18 = 0;
      goto LABEL_76;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"contextID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        v11 = v31 = a4;
        v10 = 0;
        v18 = 0;
        *v31 = [v62 initWithDomain:v30 code:2 userInfo:v11];
LABEL_74:

LABEL_75:
        goto LABEL_76;
      }

      v56 = a4;
      v10 = v9;
    }

    else
    {
      v56 = a4;
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"timestamp"];
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
            if (!v56)
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
            *v56 = v47;
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

    v12 = [v6 objectForKeyedSubscript:@"usePrivateUpload"];
    v64 = self;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v56)
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
        *v56 = v37;
        goto LABEL_71;
      }

      v61 = v12;
    }

    else
    {
      v61 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"performTaskStatus"];
    v57 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v56)
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
        *v56 = [v52 initWithDomain:v49 code:2 userInfo:v43];

        v18 = 0;
        v25 = v13;
LABEL_71:

        v13 = v25;
LABEL_72:

        self = v64;
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
        if (v56)
        {
          v26 = v26;
          *v56 = v26;
        }

        v18 = 0;
        goto LABEL_71;
      }
    }

    else
    {
      v59 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"performTrialTaskStatus"];
    v55 = v10;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v56)
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
        *v56 = [v53 initWithDomain:v50 code:2 userInfo:v16];
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
        if (v56)
        {
          v29 = v29;
          *v56 = v29;
        }

        goto LABEL_78;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"stop"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = 0;
LABEL_22:
      v18 = [(BMLighthouseLedgerLighthousePluginEvent *)v64 initWithTrialIdentifiers:v57 contextID:v55 timestamp:v65 usePrivateUpload:v61 performTaskStatus:v59 performTrialTaskStatus:v15 stop:v17];
      v64 = v18;
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

      if (v56)
      {
        v39 = v39;
        *v56 = v39;
      }

LABEL_67:
      v18 = 0;
      goto LABEL_68;
    }

    if (v56)
    {
      v54 = objc_alloc(MEMORY[0x1E696ABC0]);
      v51 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"stop"];
      v72 = v17;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      *v56 = [v54 initWithDomain:v51 code:2 userInfo:v44];

      goto LABEL_67;
    }

LABEL_78:
    v18 = 0;
    goto LABEL_69;
  }

  if (a4)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = *MEMORY[0x1E698F240];
    v83 = *MEMORY[0x1E696A578];
    v84[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifiers"];
    v8 = v84[0];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
    v18 = 0;
    *a4 = [v27 initWithDomain:v28 code:2 userInfo:v10];
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_trialIdentifiers)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerTrialIdentifiers *)self->_trialIdentifiers writeTo:v4];
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
    [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self->_performTaskStatus writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_performTrialTaskStatus)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self->_performTrialTaskStatus writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_stop)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerLighthousePluginEventEventStatus *)self->_stop writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMLighthouseLedgerLighthousePluginEvent;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_62;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_60;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v16 = [[BMLighthouseLedgerTrialIdentifiers alloc] initByReadFrom:v4];
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
          v18 = [v4 position] + 8;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v35 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_timestamp = v35;
          break;
        default:
          goto LABEL_39;
      }

LABEL_59:
      v31 = [v4 position];
      if (v31 >= [v4 length])
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

        v16 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initByReadFrom:v4];
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

        v16 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initByReadFrom:v4];
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
          v23 = [v4 position] + 1;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
          {
            v25 = [v4 data];
            [v25 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        v26 = (v22 != 0) & ~[v4 hasError];
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

      v16 = [[BMLighthouseLedgerLighthousePluginEventEventStatus alloc] initByReadFrom:v4];
      if (!v16)
      {
        goto LABEL_61;
      }

      v17 = 56;
    }

    goto LABEL_53;
  }

LABEL_60:
  if ([v4 hasError])
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
  v4 = [(BMLighthouseLedgerLighthousePluginEvent *)self trialIdentifiers];
  v5 = [(BMLighthouseLedgerLighthousePluginEvent *)self contextID];
  v6 = [(BMLighthouseLedgerLighthousePluginEvent *)self timestamp];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMLighthouseLedgerLighthousePluginEvent usePrivateUpload](self, "usePrivateUpload")}];
  v8 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTaskStatus];
  v9 = [(BMLighthouseLedgerLighthousePluginEvent *)self performTrialTaskStatus];
  v10 = [(BMLighthouseLedgerLighthousePluginEvent *)self stop];
  v11 = [v3 initWithFormat:@"BMLighthouseLedgerLighthousePluginEvent with trialIdentifiers: %@, contextID: %@, timestamp: %@, usePrivateUpload: %@, performTaskStatus: %@, performTrialTaskStatus: %@, stop: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMLighthouseLedgerLighthousePluginEvent)initWithTrialIdentifiers:(id)a3 contextID:(id)a4 timestamp:(id)a5 usePrivateUpload:(id)a6 performTaskStatus:(id)a7 performTrialTaskStatus:(id)a8 stop:(id)a9
{
  v25 = a3;
  v24 = a4;
  v16 = a5;
  v17 = a6;
  v23 = a7;
  v18 = a8;
  v19 = a9;
  v26.receiver = self;
  v26.super_class = BMLighthouseLedgerLighthousePluginEvent;
  v20 = [(BMEventBase *)&v26 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_trialIdentifiers, a3);
    objc_storeStrong(&v20->_contextID, a4);
    if (v16)
    {
      v20->_hasRaw_timestamp = 1;
      [v16 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_timestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_timestamp = v21;
    if (v17)
    {
      v20->_hasUsePrivateUpload = 1;
      v20->_usePrivateUpload = [v17 BOOLValue];
    }

    else
    {
      v20->_hasUsePrivateUpload = 0;
      v20->_usePrivateUpload = 0;
    }

    objc_storeStrong(&v20->_performTaskStatus, a7);
    objc_storeStrong(&v20->_performTrialTaskStatus, a8);
    objc_storeStrong(&v20->_stop, a9);
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