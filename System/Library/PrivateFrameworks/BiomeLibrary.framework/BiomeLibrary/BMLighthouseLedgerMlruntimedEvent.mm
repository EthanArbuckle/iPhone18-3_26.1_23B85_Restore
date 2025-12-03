@interface BMLighthouseLedgerMlruntimedEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLighthouseLedgerMlruntimedEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLighthouseLedgerMlruntimedEvent)initWithTrialIdentifiers:(id)identifiers contextID:(id)d timestamp:(id)timestamp activityScheduleStatus:(id)status taskFetched:(id)fetched taskScheduled:(id)scheduled taskCompleted:(id)completed;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    trialIdentifiers = [(BMLighthouseLedgerMlruntimedEvent *)self trialIdentifiers];
    trialIdentifiers2 = [v5 trialIdentifiers];
    v8 = trialIdentifiers2;
    if (trialIdentifiers == trialIdentifiers2)
    {
    }

    else
    {
      trialIdentifiers3 = [(BMLighthouseLedgerMlruntimedEvent *)self trialIdentifiers];
      trialIdentifiers4 = [v5 trialIdentifiers];
      v11 = [trialIdentifiers3 isEqual:trialIdentifiers4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    contextID = [(BMLighthouseLedgerMlruntimedEvent *)self contextID];
    contextID2 = [v5 contextID];
    v15 = contextID2;
    if (contextID == contextID2)
    {
    }

    else
    {
      contextID3 = [(BMLighthouseLedgerMlruntimedEvent *)self contextID];
      contextID4 = [v5 contextID];
      v18 = [contextID3 isEqual:contextID4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    timestamp = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
    timestamp2 = [v5 timestamp];
    v21 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
      timestamp4 = [v5 timestamp];
      v24 = [timestamp3 isEqual:timestamp4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    activityScheduleStatus = [(BMLighthouseLedgerMlruntimedEvent *)self activityScheduleStatus];
    activityScheduleStatus2 = [v5 activityScheduleStatus];
    v27 = activityScheduleStatus2;
    if (activityScheduleStatus == activityScheduleStatus2)
    {
    }

    else
    {
      activityScheduleStatus3 = [(BMLighthouseLedgerMlruntimedEvent *)self activityScheduleStatus];
      activityScheduleStatus4 = [v5 activityScheduleStatus];
      v30 = [activityScheduleStatus3 isEqual:activityScheduleStatus4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    taskFetched = [(BMLighthouseLedgerMlruntimedEvent *)self taskFetched];
    taskFetched2 = [v5 taskFetched];
    v33 = taskFetched2;
    if (taskFetched == taskFetched2)
    {
    }

    else
    {
      taskFetched3 = [(BMLighthouseLedgerMlruntimedEvent *)self taskFetched];
      taskFetched4 = [v5 taskFetched];
      v36 = [taskFetched3 isEqual:taskFetched4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    taskScheduled = [(BMLighthouseLedgerMlruntimedEvent *)self taskScheduled];
    taskScheduled2 = [v5 taskScheduled];
    v39 = taskScheduled2;
    if (taskScheduled == taskScheduled2)
    {
    }

    else
    {
      taskScheduled3 = [(BMLighthouseLedgerMlruntimedEvent *)self taskScheduled];
      taskScheduled4 = [v5 taskScheduled];
      v42 = [taskScheduled3 isEqual:taskScheduled4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    taskCompleted = [(BMLighthouseLedgerMlruntimedEvent *)self taskCompleted];
    taskCompleted2 = [v5 taskCompleted];
    if (taskCompleted == taskCompleted2)
    {
      v12 = 1;
    }

    else
    {
      taskCompleted3 = [(BMLighthouseLedgerMlruntimedEvent *)self taskCompleted];
      taskCompleted4 = [v5 taskCompleted];
      v12 = [taskCompleted3 isEqual:taskCompleted4];
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
  trialIdentifiers = [(BMLighthouseLedgerMlruntimedEvent *)self trialIdentifiers];
  jsonDictionary = [trialIdentifiers jsonDictionary];

  contextID = [(BMLighthouseLedgerMlruntimedEvent *)self contextID];
  timestamp = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
  if (timestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  activityScheduleStatus = [(BMLighthouseLedgerMlruntimedEvent *)self activityScheduleStatus];
  jsonDictionary2 = [activityScheduleStatus jsonDictionary];

  taskFetched = [(BMLighthouseLedgerMlruntimedEvent *)self taskFetched];
  jsonDictionary3 = [taskFetched jsonDictionary];

  taskScheduled = [(BMLighthouseLedgerMlruntimedEvent *)self taskScheduled];
  jsonDictionary4 = [taskScheduled jsonDictionary];

  taskCompleted = [(BMLighthouseLedgerMlruntimedEvent *)self taskCompleted];
  jsonDictionary5 = [taskCompleted jsonDictionary];

  v33[0] = @"trialIdentifiers";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null;
  v34[0] = null;
  v33[1] = @"contextID";
  null2 = contextID;
  if (!contextID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null2;
  v34[1] = null2;
  v33[2] = @"timestamp";
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = jsonDictionary;
  v28 = null3;
  v34[2] = null3;
  v33[3] = @"activityScheduleStatus";
  null4 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = contextID;
  v34[3] = null4;
  v33[4] = @"taskFetched";
  null5 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v34[4] = null5;
  v33[5] = @"taskScheduled";
  null6 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v34[5] = null6;
  v33[6] = @"taskCompleted";
  null7 = jsonDictionary5;
  if (!jsonDictionary5)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v34[6] = null7;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:7];
  if (jsonDictionary5)
  {
    if (jsonDictionary4)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (jsonDictionary3)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!jsonDictionary4)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (jsonDictionary3)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!jsonDictionary2)
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

- (BMLighthouseLedgerMlruntimedEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v101[1] = *MEMORY[0x1E69E9840];
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
    v87 = 0;
    v8 = [[BMLighthouseLedgerTrialIdentifiers alloc] initWithJSONDictionary:v10 error:&v87];
    v12 = v87;
    if (v12)
    {
      if (error)
      {
        v12 = v12;
        *error = v12;
      }

      v13 = 0;
      goto LABEL_83;
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
          v13 = 0;
LABEL_82:

          goto LABEL_83;
        }

        errorCopy = error;
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
        *errorCopy = [v23 initWithDomain:v27 code:2 userInfo:v26];
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    v80 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v72 = v7;
      errorCopy2 = error;
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
            if (!error)
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
            *error = [v59 initWithDomain:v63 code:2 userInfo:?];
            v7 = v72;
            goto LABEL_79;
          }

          v82 = v11;
        }
      }

      error = errorCopy2;
      v7 = v72;
    }

    else
    {
      v82 = 0;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"activityScheduleStatus"];
    selfCopy = self;
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
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
        errorCopy3 = error;
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
        *errorCopy3 = [v77 initWithDomain:v47 code:2 userInfo:v46];
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
        if (error)
        {
          v36 = v36;
          *error = v36;
        }

        v13 = 0;
        goto LABEL_79;
      }
    }

    else
    {
      v79 = 0;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"taskFetched"];
    v78 = v10;
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v13 = 0;
          goto LABEL_77;
        }

        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v92 = *MEMORY[0x1E696A578];
        v75 = v7;
        v52 = v11;
        errorCopy4 = error;
        v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"taskFetched"];
        v93 = v76;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v54 = [v71 initWithDomain:v51 code:2 userInfo:v31];
        v13 = 0;
        *errorCopy4 = v54;
        v11 = v52;
        v7 = v75;
        goto LABEL_75;
      }

      errorCopy6 = error;
      v31 = v30;
      v85 = 0;
      v76 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initWithJSONDictionary:v31 error:&v85];
      v37 = v85;
      if (v37)
      {
        if (errorCopy6)
        {
          v37 = v37;
          *errorCopy6 = v37;
        }

        v13 = 0;
        goto LABEL_75;
      }
    }

    else
    {
      errorCopy6 = error;
      v76 = 0;
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"taskScheduled"];
    v68 = v9;
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v74 = v7;
        v50 = v11;
        if (!errorCopy6)
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
        *errorCopy6 = v56;
        goto LABEL_95;
      }

      v33 = v31;
      v84 = 0;
      v32 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initWithJSONDictionary:v33 error:&v84];
      v38 = v84;
      if (v38)
      {
        if (errorCopy6)
        {
          v38 = v38;
          *errorCopy6 = v38;
        }

        v13 = 0;
        goto LABEL_74;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"taskCompleted"];
    if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v34 = 0;
LABEL_42:
      v13 = [(BMLighthouseLedgerMlruntimedEvent *)selfCopy initWithTrialIdentifiers:v80 contextID:v78 timestamp:v82 activityScheduleStatus:v79 taskFetched:v76 taskScheduled:v32 taskCompleted:v34];
      selfCopy = v13;
LABEL_73:

      v9 = v68;
LABEL_74:

LABEL_75:
      v10 = v78;
LABEL_76:

LABEL_77:
LABEL_78:
      v35 = v29;
      self = selfCopy;
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
      if (errorCopy6)
      {
        v49 = v49;
        *errorCopy6 = v49;
      }

LABEL_72:
      v13 = 0;
      v11 = v50;
      v7 = v74;
      goto LABEL_73;
    }

    v74 = v7;
    v50 = v11;
    if (errorCopy6)
    {
      v67 = objc_alloc(MEMORY[0x1E696ABC0]);
      v65 = *MEMORY[0x1E698F240];
      v88 = *MEMORY[0x1E696A578];
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"taskCompleted"];
      v89 = v34;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      *errorCopy6 = [v67 initWithDomain:v65 code:2 userInfo:v48];
      goto LABEL_72;
    }

    v13 = 0;
LABEL_95:
    v11 = v50;
    v7 = v74;
    goto LABEL_74;
  }

  if (error)
  {
    errorCopy7 = error;
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = *MEMORY[0x1E698F240];
    v100 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifiers"];
    v101[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:&v100 count:1];
    v13 = 0;
    *errorCopy7 = [v20 initWithDomain:v21 code:2 userInfo:v10];
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

  if (self->_activityScheduleStatus)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerMlruntimedEventScheduleStatus *)self->_activityScheduleStatus writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_taskFetched)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self->_taskFetched writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_taskScheduled)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self->_taskScheduled writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_taskCompleted)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerMlruntimedEventTaskEvent *)self->_taskCompleted writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v27.receiver = self;
  v27.super_class = BMLighthouseLedgerMlruntimedEvent;
  v5 = [(BMEventBase *)&v27 init];
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
        LOBYTE(v28) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v16 = [[BMLighthouseLedgerTrialIdentifiers alloc] initByReadFrom:fromCopy];
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
          v18 = [fromCopy position] + 8;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v28 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_timestamp = v28;
          break;
        default:
          goto LABEL_39;
      }

LABEL_48:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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

        v16 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initByReadFrom:fromCopy];
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

        v16 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initByReadFrom:fromCopy];
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

      v16 = [[BMLighthouseLedgerMlruntimedEventScheduleStatus alloc] initByReadFrom:fromCopy];
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

      v16 = [[BMLighthouseLedgerMlruntimedEventTaskEvent alloc] initByReadFrom:fromCopy];
      if (!v16)
      {
        goto LABEL_54;
      }

      v17 = 64;
    }

    goto LABEL_47;
  }

LABEL_53:
  if ([fromCopy hasError])
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
  trialIdentifiers = [(BMLighthouseLedgerMlruntimedEvent *)self trialIdentifiers];
  contextID = [(BMLighthouseLedgerMlruntimedEvent *)self contextID];
  timestamp = [(BMLighthouseLedgerMlruntimedEvent *)self timestamp];
  activityScheduleStatus = [(BMLighthouseLedgerMlruntimedEvent *)self activityScheduleStatus];
  taskFetched = [(BMLighthouseLedgerMlruntimedEvent *)self taskFetched];
  taskScheduled = [(BMLighthouseLedgerMlruntimedEvent *)self taskScheduled];
  taskCompleted = [(BMLighthouseLedgerMlruntimedEvent *)self taskCompleted];
  v11 = [v3 initWithFormat:@"BMLighthouseLedgerMlruntimedEvent with trialIdentifiers: %@, contextID: %@, timestamp: %@, activityScheduleStatus: %@, taskFetched: %@, taskScheduled: %@, taskCompleted: %@", trialIdentifiers, contextID, timestamp, activityScheduleStatus, taskFetched, taskScheduled, taskCompleted];

  return v11;
}

- (BMLighthouseLedgerMlruntimedEvent)initWithTrialIdentifiers:(id)identifiers contextID:(id)d timestamp:(id)timestamp activityScheduleStatus:(id)status taskFetched:(id)fetched taskScheduled:(id)scheduled taskCompleted:(id)completed
{
  identifiersCopy = identifiers;
  dCopy = d;
  timestampCopy = timestamp;
  statusCopy = status;
  fetchedCopy = fetched;
  scheduledCopy = scheduled;
  completedCopy = completed;
  v26.receiver = self;
  v26.super_class = BMLighthouseLedgerMlruntimedEvent;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_trialIdentifiers, identifiers);
    objc_storeStrong(&v19->_contextID, d);
    if (timestampCopy)
    {
      v19->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v19->_hasRaw_timestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_timestamp = v20;
    objc_storeStrong(&v19->_activityScheduleStatus, status);
    objc_storeStrong(&v19->_taskFetched, fetched);
    objc_storeStrong(&v19->_taskScheduled, scheduled);
    objc_storeStrong(&v19->_taskCompleted, completed);
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