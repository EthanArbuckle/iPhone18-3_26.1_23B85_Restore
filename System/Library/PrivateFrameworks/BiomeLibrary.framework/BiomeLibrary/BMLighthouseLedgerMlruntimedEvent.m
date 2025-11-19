@interface BMLighthouseLedgerMlruntimedEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseLedgerMlruntimedEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseLedgerMlruntimedEvent)initWithTrialIdentifiers:(id)a3 contextID:(id)a4 timestamp:(id)a5 activityScheduleStatus:(id)a6 taskFetched:(id)a7 taskScheduled:(id)a8 taskCompleted:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseLedgerMlruntimedEvent

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trialIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_61266];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"activityScheduleStatus_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_207_61267];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"taskFetched_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_209_61268];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"taskScheduled_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_211];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"taskCompleted_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_213];
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
    v6 = [(BMLighthouseLedgerMlruntimedEvent *)self trialIdentifiers];
    v7 = [v5 trialIdentifiers];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMLighthouseLedgerMlruntimedEvent *)self trialIdentifiers];
      v10 = [v5 trialIdentifiers];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v13 = [(BMLighthouseLedgerMlruntimedEvent *)self contextID];
    v14 = [v5 contextID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMLighthouseLedgerMlruntimedEvent *)self contextID];
      v17 = [v5 contextID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    v19 = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
    v20 = [v5 timestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
      v23 = [v5 timestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    v25 = [(BMLighthouseLedgerMlruntimedEvent *)self activityScheduleStatus];
    v26 = [v5 activityScheduleStatus];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMLighthouseLedgerMlruntimedEvent *)self activityScheduleStatus];
      v29 = [v5 activityScheduleStatus];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    v31 = [(BMLighthouseLedgerMlruntimedEvent *)self taskFetched];
    v32 = [v5 taskFetched];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMLighthouseLedgerMlruntimedEvent *)self taskFetched];
      v35 = [v5 taskFetched];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    v37 = [(BMLighthouseLedgerMlruntimedEvent *)self taskScheduled];
    v38 = [v5 taskScheduled];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMLighthouseLedgerMlruntimedEvent *)self taskScheduled];
      v41 = [v5 taskScheduled];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v44 = [(BMLighthouseLedgerMlruntimedEvent *)self taskCompleted];
    v45 = [v5 taskCompleted];
    if (v44 == v45)
    {
      v12 = 1;
    }

    else
    {
      v46 = [(BMLighthouseLedgerMlruntimedEvent *)self taskCompleted];
      v47 = [v5 taskCompleted];
      v12 = [v46 isEqual:v47];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

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
  v34[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMLighthouseLedgerMlruntimedEvent *)self trialIdentifiers];
  v4 = [v3 jsonDictionary];

  v5 = [(BMLighthouseLedgerMlruntimedEvent *)self contextID];
  v6 = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
    [v8 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMLighthouseLedgerMlruntimedEvent *)self activityScheduleStatus];
  v11 = [v10 jsonDictionary];

  v12 = [(BMLighthouseLedgerMlruntimedEvent *)self taskFetched];
  v13 = [v12 jsonDictionary];

  v14 = [(BMLighthouseLedgerMlruntimedEvent *)self taskScheduled];
  v15 = [v14 jsonDictionary];

  v16 = [(BMLighthouseLedgerMlruntimedEvent *)self taskCompleted];
  v17 = [v16 jsonDictionary];

  v33[0] = @"trialIdentifiers";
  v18 = v4;
  if (!v4)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v18;
  v34[0] = v18;
  v33[1] = @"contextID";
  v19 = v5;
  if (!v5)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v19;
  v34[1] = v19;
  v33[2] = @"timestamp";
  v20 = v9;
  if (!v9)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v4;
  v28 = v20;
  v34[2] = v20;
  v33[3] = @"activityScheduleStatus";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v5;
  v34[3] = v21;
  v33[4] = @"taskFetched";
  v22 = v13;
  if (!v13)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v34[4] = v22;
  v33[5] = @"taskScheduled";
  v23 = v15;
  if (!v15)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v34[5] = v23;
  v33[6] = @"taskCompleted";
  v24 = v17;
  if (!v17)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v34[6] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:7];
  if (v17)
  {
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (v13)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v13)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v11)
  {
  }

  if (v9)
  {
    if (v31)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v32)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v31)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v32)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BMLighthouseLedgerMlruntimedEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v101[1] = *MEMORY[0x1E69E9840];
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
    v87 = 0;
    v8 = [[BMLighthouseLedgerTrialIdentifiers alloc] initWithJSONDictionary:v10 error:&v87];
    v12 = v87;
    if (v12)
    {
      if (a4)
      {
        v12 = v12;
        *a4 = v12;
      }

      v13 = 0;
      goto LABEL_83;
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
          v13 = 0;
LABEL_82:

          goto LABEL_83;
        }

        v22 = a4;
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = v9;
        v25 = *MEMORY[0x1E698F240];
        v98 = *MEMORY[0x1E696A578];
        v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contextID"];
        v99 = v82;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        v27 = v25;
        v9 = v24;
        v10 = 0;
        v13 = 0;
        *v22 = [v23 initWithDomain:v27 code:2 userInfo:v26];
        v11 = v26;
LABEL_81:

        goto LABEL_82;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"timestamp"];
    v80 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v72 = v7;
      v14 = a4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = MEMORY[0x1E695DF00];
        v16 = v11;
        v17 = [v15 alloc];
        [v16 doubleValue];
        v19 = v18;

        v82 = [v17 initWithTimeIntervalSince1970:v19];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v82 = [v28 dateFromString:v11];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v82 = 0;
              v13 = 0;
              v7 = v72;
              goto LABEL_81;
            }

            v59 = objc_alloc(MEMORY[0x1E696ABC0]);
            v60 = v9;
            v61 = *MEMORY[0x1E698F240];
            v96 = *MEMORY[0x1E696A578];
            v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
            v97 = v35;
            v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
            v63 = v61;
            v9 = v60;
            v79 = v62;
            v82 = 0;
            v13 = 0;
            *a4 = [v59 initWithDomain:v63 code:2 userInfo:?];
            v7 = v72;
            goto LABEL_79;
          }

          v82 = v11;
        }
      }

      a4 = v14;
      v7 = v72;
    }

    else
    {
      v82 = 0;
    }

    v29 = [v6 objectForKeyedSubscript:@"activityScheduleStatus"];
    v81 = self;
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          goto LABEL_80;
        }

        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = v9;
        v40 = *MEMORY[0x1E698F240];
        v94 = *MEMORY[0x1E696A578];
        v73 = v7;
        v41 = v11;
        v42 = a4;
        v43 = v10;
        v44 = objc_alloc(MEMORY[0x1E696AEC0]);
        v64 = objc_opt_class();
        v45 = v44;
        v10 = v43;
        v79 = [v45 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v64, @"activityScheduleStatus"];
        v95 = v79;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v47 = v40;
        v9 = v39;
        *v42 = [v77 initWithDomain:v47 code:2 userInfo:v46];
        v11 = v41;
        v7 = v73;

        v13 = 0;
        goto LABEL_78;
      }

      v35 = v29;
      v86 = 0;
      v79 = [[BMLighthouseLedgerMlruntimedEventScheduleStatus alloc] initWithJSONDictionary:v35 error:&v86];
      v36 = v86;
      if (v36)
      {
        if (a4)
        {
          v36 = v36;
          *a4 = v36;
        }

        v13 = 0;
        goto LABEL_79;
      }
    }

    else
    {
      v79 = 0;
    }

    v30 = [v6 objectForKeyedSubscript:@"taskFetched"];
    v78 = v10;
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          goto LABEL_77;
        }

        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v92 = *MEMORY[0x1E696A578];
        v75 = v7;
        v52 = v11;
        v53 = a4;
        v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"taskFetched"];
        v93 = v76;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v54 = [v71 initWithDomain:v51 code:2 userInfo:v31];
        v13 = 0;
        *v53 = v54;
        v11 = v52;
        v7 = v75;
        goto LABEL_75;
      }

      v70 = a4;
      v31 = v30;
      v85 = 0;
      v76 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initWithJSONDictionary:v31 error:&v85];
      v37 = v85;
      if (v37)
      {
        if (v70)
        {
          v37 = v37;
          *v70 = v37;
        }

        v13 = 0;
        goto LABEL_75;
      }
    }

    else
    {
      v70 = a4;
      v76 = 0;
    }

    v31 = [v6 objectForKeyedSubscript:@"taskScheduled"];
    v68 = v9;
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v74 = v7;
        v50 = v11;
        if (!v70)
        {
          v13 = 0;
          v7 = v74;
          goto LABEL_76;
        }

        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v90 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"taskScheduled"];
        v91 = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v56 = [v66 initWithDomain:v55 code:2 userInfo:v33];
        v13 = 0;
        *v70 = v56;
        goto LABEL_95;
      }

      v33 = v31;
      v84 = 0;
      v32 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initWithJSONDictionary:v33 error:&v84];
      v38 = v84;
      if (v38)
      {
        if (v70)
        {
          v38 = v38;
          *v70 = v38;
        }

        v13 = 0;
        goto LABEL_74;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = [v6 objectForKeyedSubscript:@"taskCompleted"];
    if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v34 = 0;
LABEL_42:
      v13 = [(BMLighthouseLedgerMlruntimedEvent *)v81 initWithTrialIdentifiers:v80 contextID:v78 timestamp:v82 activityScheduleStatus:v79 taskFetched:v76 taskScheduled:v32 taskCompleted:v34];
      v81 = v13;
LABEL_73:

      v9 = v68;
LABEL_74:

LABEL_75:
      v10 = v78;
LABEL_76:

LABEL_77:
LABEL_78:
      v35 = v29;
      self = v81;
LABEL_79:

      v29 = v35;
LABEL_80:

      v8 = v80;
      goto LABEL_81;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v33;
      v83 = 0;
      v34 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initWithJSONDictionary:v48 error:&v83];
      v49 = v83;
      if (!v49)
      {

        goto LABEL_42;
      }

      v74 = v7;
      v50 = v11;
      if (v70)
      {
        v49 = v49;
        *v70 = v49;
      }

LABEL_72:
      v13 = 0;
      v11 = v50;
      v7 = v74;
      goto LABEL_73;
    }

    v74 = v7;
    v50 = v11;
    if (v70)
    {
      v67 = objc_alloc(MEMORY[0x1E696ABC0]);
      v65 = *MEMORY[0x1E698F240];
      v88 = *MEMORY[0x1E696A578];
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"taskCompleted"];
      v89 = v34;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      *v70 = [v67 initWithDomain:v65 code:2 userInfo:v48];
      goto LABEL_72;
    }

    v13 = 0;
LABEL_95:
    v11 = v50;
    v7 = v74;
    goto LABEL_74;
  }

  if (a4)
  {
    v69 = a4;
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E698F240];
    v100 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifiers"];
    v101[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:&v100 count:1];
    v13 = 0;
    *v69 = [v20 initWithDomain:v21 code:2 userInfo:v10];
LABEL_83:

    goto LABEL_84;
  }

  v13 = 0;
LABEL_84:

  v57 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseLedgerMlruntimedEvent *)self writeTo:v3];
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

  if (self->_activityScheduleStatus)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerMlruntimedEventScheduleStatus *)self->_activityScheduleStatus writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_taskFetched)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self->_taskFetched writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_taskScheduled)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self->_taskScheduled writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_taskCompleted)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self->_taskCompleted writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = BMLighthouseLedgerMlruntimedEvent;
  v5 = [(BMEventBase *)&v27 init];
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
        LOBYTE(v28) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v28 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v28) & 0x7F) << v7;
        if ((LOBYTE(v28) & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_53;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 100)
      {
        break;
      }

      switch(v15)
      {
        case 1:
          v28 = 0.0;
          v29 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_54;
          }

          v16 = [[BMLighthouseLedgerTrialIdentifiers alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_54;
          }

          v17 = 40;
LABEL_47:
          v20 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          PBReaderRecallMark();
          break;
        case 2:
          v22 = PBReaderReadString();
          contextID = v5->_contextID;
          v5->_contextID = v22;

          break;
        case 3:
          v5->_hasRaw_timestamp = 1;
          v28 = 0.0;
          v18 = [v4 position] + 8;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:&v28 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_timestamp = v28;
          break;
        default:
          goto LABEL_39;
      }

LABEL_48:
      v21 = [v4 position];
      if (v21 >= [v4 length])
      {
        goto LABEL_53;
      }
    }

    if (v15 > 102)
    {
      if (v15 == 103)
      {
        v28 = 0.0;
        v29 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_54;
        }

        v16 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_54;
        }

        v17 = 72;
      }

      else
      {
        if (v15 != 104)
        {
LABEL_39:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_48;
        }

        v28 = 0.0;
        v29 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_54;
        }

        v16 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_54;
        }

        v17 = 80;
      }
    }

    else if (v15 == 101)
    {
      v28 = 0.0;
      v29 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_54;
      }

      v16 = [[BMLighthouseLedgerMlruntimedEventScheduleStatus alloc] initByReadFrom:v4];
      if (!v16)
      {
        goto LABEL_54;
      }

      v17 = 56;
    }

    else
    {
      if (v15 != 102)
      {
        goto LABEL_39;
      }

      v28 = 0.0;
      v29 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_54;
      }

      v16 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initByReadFrom:v4];
      if (!v16)
      {
        goto LABEL_54;
      }

      v17 = 64;
    }

    goto LABEL_47;
  }

LABEL_53:
  if ([v4 hasError])
  {
LABEL_54:
    v25 = 0;
  }

  else
  {
LABEL_55:
    v25 = v5;
  }

  return v25;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMLighthouseLedgerMlruntimedEvent *)self trialIdentifiers];
  v5 = [(BMLighthouseLedgerMlruntimedEvent *)self contextID];
  v6 = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
  v7 = [(BMLighthouseLedgerMlruntimedEvent *)self activityScheduleStatus];
  v8 = [(BMLighthouseLedgerMlruntimedEvent *)self taskFetched];
  v9 = [(BMLighthouseLedgerMlruntimedEvent *)self taskScheduled];
  v10 = [(BMLighthouseLedgerMlruntimedEvent *)self taskCompleted];
  v11 = [v3 initWithFormat:@"BMLighthouseLedgerMlruntimedEvent with trialIdentifiers: %@, contextID: %@, timestamp: %@, activityScheduleStatus: %@, taskFetched: %@, taskScheduled: %@, taskCompleted: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMLighthouseLedgerMlruntimedEvent)initWithTrialIdentifiers:(id)a3 contextID:(id)a4 timestamp:(id)a5 activityScheduleStatus:(id)a6 taskFetched:(id)a7 taskScheduled:(id)a8 taskCompleted:(id)a9
{
  v25 = a3;
  v24 = a4;
  v16 = a5;
  v23 = a6;
  v22 = a7;
  v17 = a8;
  v18 = a9;
  v26.receiver = self;
  v26.super_class = BMLighthouseLedgerMlruntimedEvent;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_trialIdentifiers, a3);
    objc_storeStrong(&v19->_contextID, a4);
    if (v16)
    {
      v19->_hasRaw_timestamp = 1;
      [v16 timeIntervalSince1970];
    }

    else
    {
      v19->_hasRaw_timestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_timestamp = v20;
    objc_storeStrong(&v19->_activityScheduleStatus, a6);
    objc_storeStrong(&v19->_taskFetched, a7);
    objc_storeStrong(&v19->_taskScheduled, a8);
    objc_storeStrong(&v19->_taskCompleted, a9);
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialIdentifiers" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextID" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityScheduleStatus" number:101 type:14 subMessageClass:objc_opt_class()];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskFetched" number:102 type:14 subMessageClass:objc_opt_class()];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskScheduled" number:103 type:14 subMessageClass:objc_opt_class()];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskCompleted" number:104 type:14 subMessageClass:objc_opt_class()];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __44__BMLighthouseLedgerMlruntimedEvent_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 taskCompleted];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMLighthouseLedgerMlruntimedEvent_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 taskScheduled];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMLighthouseLedgerMlruntimedEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 taskFetched];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMLighthouseLedgerMlruntimedEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 activityScheduleStatus];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMLighthouseLedgerMlruntimedEvent_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMLighthouseLedgerMlruntimedEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end