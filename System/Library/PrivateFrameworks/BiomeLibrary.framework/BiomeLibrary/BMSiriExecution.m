@interface BMSiriExecution
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriExecution)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriExecution)initWithTaskId:(id)a3 taskStep:(int)a4 statusReason:(id)a5 slotValue:(id)a6 intentName:(id)a7 appBundleID:(id)a8 interactionID:(id)a9 absoluteTimestamp:(id)a10 rootInteractionID:(id)a11;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriExecution

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskStep" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"statusReason" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"slotValue" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intentName" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appBundleID" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:1];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rootInteractionID" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriExecution *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriExecution *)self taskId];
    v7 = [v5 taskId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriExecution *)self taskId];
      v10 = [v5 taskId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    v13 = [(BMSiriExecution *)self taskStep];
    if (v13 == [v5 taskStep])
    {
      v14 = [(BMSiriExecution *)self statusReason];
      v15 = [v5 statusReason];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMSiriExecution *)self statusReason];
        v18 = [v5 statusReason];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_30;
        }
      }

      v20 = [(BMSiriExecution *)self slotValue];
      v21 = [v5 slotValue];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMSiriExecution *)self slotValue];
        v24 = [v5 slotValue];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_30;
        }
      }

      v26 = [(BMSiriExecution *)self intentName];
      v27 = [v5 intentName];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMSiriExecution *)self intentName];
        v30 = [v5 intentName];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_30;
        }
      }

      v32 = [(BMSiriExecution *)self appBundleID];
      v33 = [v5 appBundleID];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMSiriExecution *)self appBundleID];
        v36 = [v5 appBundleID];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_30;
        }
      }

      v38 = [(BMSiriExecution *)self interactionID];
      v39 = [v5 interactionID];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(BMSiriExecution *)self interactionID];
        v42 = [v5 interactionID];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_30;
        }
      }

      v44 = [(BMSiriExecution *)self absoluteTimestamp];
      v45 = [v5 absoluteTimestamp];
      v46 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        v47 = [(BMSiriExecution *)self absoluteTimestamp];
        v48 = [v5 absoluteTimestamp];
        v49 = [v47 isEqual:v48];

        if (!v49)
        {
          goto LABEL_30;
        }
      }

      v51 = [(BMSiriExecution *)self rootInteractionID];
      v52 = [v5 rootInteractionID];
      if (v51 == v52)
      {
        v12 = 1;
      }

      else
      {
        v53 = [(BMSiriExecution *)self rootInteractionID];
        v54 = [v5 rootInteractionID];
        v12 = [v53 isEqual:v54];
      }

      goto LABEL_31;
    }

LABEL_30:
    v12 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v12 = 0;
LABEL_32:

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
  v37[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriExecution *)self taskId];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriExecution taskStep](self, "taskStep")}];
  v5 = [(BMSiriExecution *)self statusReason];
  v6 = [(BMSiriExecution *)self slotValue];
  v7 = [(BMSiriExecution *)self intentName];
  v35 = [(BMSiriExecution *)self appBundleID];
  v34 = [(BMSiriExecution *)self interactionID];
  v8 = [(BMSiriExecution *)self absoluteTimestamp];
  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(BMSiriExecution *)self absoluteTimestamp];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BMSiriExecution *)self rootInteractionID];
  v36[0] = @"taskId";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v13;
  v37[0] = v13;
  v36[1] = @"taskStep";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v14;
  v37[1] = v14;
  v36[2] = @"statusReason";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v15;
  v37[2] = v15;
  v36[3] = @"slotValue";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v3;
  v27 = v16;
  v37[3] = v16;
  v36[4] = @"intentName";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v4;
  v37[4] = v17;
  v36[5] = @"appBundleID";
  v18 = v35;
  if (!v35)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v7;
  v20 = v5;
  v37[5] = v18;
  v36[6] = @"interactionID";
  v21 = v34;
  if (!v34)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v6;
  v37[6] = v21;
  v36[7] = @"absoluteTimestamp";
  v23 = v11;
  if (!v11)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v37[7] = v23;
  v36[8] = @"rootInteractionID";
  v24 = v12;
  if (!v12)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v37[8] = v24;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:9];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  if (!v34)
  {
  }

  if (!v35)
  {
  }

  if (!v19)
  {
  }

  if (v22)
  {
    if (v20)
    {
      goto LABEL_32;
    }
  }

  else
  {

    if (v20)
    {
LABEL_32:
      if (v32)
      {
        goto LABEL_33;
      }

LABEL_41:

      if (v33)
      {
        goto LABEL_34;
      }

      goto LABEL_42;
    }
  }

  if (!v32)
  {
    goto LABEL_41;
  }

LABEL_33:
  if (v33)
  {
    goto LABEL_34;
  }

LABEL_42:

LABEL_34:
  v25 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BMSiriExecution)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v94[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"taskId"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"taskStep"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v9 = 0;
            v14 = 0;
            goto LABEL_74;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = v7;
          v46 = *MEMORY[0x1E698F240];
          v91 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"taskStep"];
          v92 = v28;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
          v48 = v46;
          v7 = v45;
          v73 = v47;
          v49 = [v44 initWithDomain:v48 code:2 userInfo:?];
          v9 = 0;
          v14 = 0;
          *a4 = v49;
          goto LABEL_73;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriExecutionTaskStepFromString(v8)];
      }

      v9 = v10;
    }

    else
    {
      v9 = 0;
    }

    v15 = [v5 objectForKeyedSubscript:@"statusReason"];
    v75 = v9;
    v73 = v15;
    if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v28 = 0;
          v14 = 0;
          goto LABEL_73;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = v7;
        v25 = *MEMORY[0x1E698F240];
        v89 = *MEMORY[0x1E696A578];
        v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"statusReason"];
        v90 = v74;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v26 = v25;
        v7 = v24;
        v27 = [v23 initWithDomain:v26 code:2 userInfo:v17];
        v28 = 0;
        v14 = 0;
        *a4 = v27;
LABEL_72:

        v9 = v75;
LABEL_73:

        goto LABEL_74;
      }

      v71 = v16;
    }

    else
    {
      v71 = 0;
    }

    v17 = [v5 objectForKeyedSubscript:@"slotValue"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v74 = 0;
          v14 = 0;
          goto LABEL_71;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = v7;
        v37 = *MEMORY[0x1E698F240];
        v87 = *MEMORY[0x1E696A578];
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"slotValue"];
        v88 = v69;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v38 = v37;
        v7 = v36;
        v39 = [v35 initWithDomain:v38 code:2 userInfo:v18];
        v74 = 0;
        v14 = 0;
        *a4 = v39;
LABEL_70:

LABEL_71:
        v28 = v71;
        goto LABEL_72;
      }

      v74 = v17;
    }

    else
    {
      v74 = 0;
    }

    v18 = [v5 objectForKeyedSubscript:@"intentName"];
    v72 = self;
    v68 = v7;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v69 = 0;
          v14 = 0;
          goto LABEL_70;
        }

        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v85 = *MEMORY[0x1E696A578];
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"intentName"];
        v86 = v67;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v41 = [v70 initWithDomain:v40 code:2 userInfo:v19];
        v69 = 0;
        v14 = 0;
        *a4 = v41;
        goto LABEL_69;
      }

      v69 = v18;
    }

    else
    {
      v69 = 0;
    }

    v19 = [v5 objectForKeyedSubscript:@"appBundleID"];
    v65 = v18;
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v67 = 0;
          v14 = 0;
          goto LABEL_69;
        }

        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appBundleID"];
        v84 = v66;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v67 = 0;
        v14 = 0;
        *a4 = [v42 initWithDomain:v43 code:2 userInfo:v20];
LABEL_68:

        v18 = v65;
LABEL_69:

        v7 = v68;
        goto LABEL_70;
      }

      v67 = v19;
    }

    else
    {
      v67 = 0;
    }

    v20 = [v5 objectForKeyedSubscript:@"interactionID"];
    v64 = v6;
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v66 = 0;
          v14 = 0;
          goto LABEL_68;
        }

        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"interactionID"];
        v82 = v22;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v66 = 0;
        v14 = 0;
        *a4 = [v50 initWithDomain:v51 code:2 userInfo:v21];
        goto LABEL_67;
      }

      v66 = v20;
    }

    else
    {
      v66 = 0;
    }

    v21 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = 0;
      goto LABEL_62;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = MEMORY[0x1E695DF00];
      v30 = v21;
      v31 = [v29 alloc];
      [v30 doubleValue];
      v33 = v32;

      v34 = [v31 initWithTimeIntervalSinceReferenceDate:v33];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v22 = [v52 dateFromString:v21];

LABEL_62:
        v53 = [v5 objectForKeyedSubscript:@"rootInteractionID"];
        if (v53 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
              v62 = objc_alloc(MEMORY[0x1E696ABC0]);
              v61 = *MEMORY[0x1E698F240];
              v77 = *MEMORY[0x1E696A578];
              v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"rootInteractionID"];
              v78 = v57;
              v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
              *a4 = [v62 initWithDomain:v61 code:2 userInfo:v58];
            }

            v54 = 0;
            v14 = 0;
            goto LABEL_66;
          }

          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        v14 = -[BMSiriExecution initWithTaskId:taskStep:statusReason:slotValue:intentName:appBundleID:interactionID:absoluteTimestamp:rootInteractionID:](v72, "initWithTaskId:taskStep:statusReason:slotValue:intentName:appBundleID:interactionID:absoluteTimestamp:rootInteractionID:", v68, [v75 intValue], v71, v74, v69, v67, v66, v22, v54);
        v72 = v14;
LABEL_66:

LABEL_67:
        self = v72;
        v6 = v64;
        goto LABEL_68;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v22 = 0;
          v14 = 0;
          goto LABEL_67;
        }

        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v59 = *MEMORY[0x1E698F240];
        v79 = *MEMORY[0x1E696A578];
        v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
        v80 = v54;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v60 = [v63 initWithDomain:v59 code:2 userInfo:v53];
        v22 = 0;
        v14 = 0;
        *a4 = v60;
        goto LABEL_66;
      }

      v34 = v21;
    }

    v22 = v34;
    goto LABEL_62;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (a4)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E698F240];
    v93 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskId"];
    v94[0] = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:&v93 count:1];
    v13 = [v11 initWithDomain:v12 code:2 userInfo:v8];
    v7 = 0;
    v14 = 0;
    *a4 = v13;
LABEL_74:

    goto LABEL_75;
  }

  v7 = 0;
  v14 = 0;
LABEL_75:

  v55 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_taskId)
  {
    PBDataWriterWriteStringField();
  }

  taskStep = self->_taskStep;
  PBDataWriterWriteUint32Field();
  if (self->_statusReason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_slotValue)
  {
    PBDataWriterWriteStringField();
  }

  v5 = v7;
  if (self->_intentName)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (self->_appBundleID)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (self->_interactionID)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v5 = v7;
  }

  if (self->_rootInteractionID)
  {
    PBDataWriterWriteStringField();
    v5 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMSiriExecution;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_62;
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
        LOBYTE(v33) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_46;
          }

          if (v15 == 4)
          {
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_46;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_46;
          }

          if (v15 == 2)
          {
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v33) = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (LOBYTE(v33) & 0x7F) << v18;
              if ((LOBYTE(v33) & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              if (v19++ > 8)
              {
                goto LABEL_56;
              }
            }

            if (([v4 hasError] & 1) != 0 || v20 > 0x5E)
            {
LABEL_56:
              LODWORD(v20) = 0;
            }

            v5->_taskStep = v20;
            goto LABEL_47;
          }
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_46;
        }

        if (v15 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_46;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_46;
          case 8:
            v5->_hasRaw_absoluteTimestamp = 1;
            v33 = 0.0;
            v27 = [v4 position] + 8;
            if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 8, v28 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v33 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_absoluteTimestamp = v33;
            goto LABEL_47;
          case 9:
            v16 = PBReaderReadString();
            v17 = 88;
LABEL_46:
            v25 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_47;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_61;
      }

LABEL_47:
      v26 = [v4 position];
    }

    while (v26 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_61:
    v30 = 0;
  }

  else
  {
LABEL_62:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriExecution *)self taskId];
  v5 = BMSiriExecutionTaskStepAsString([(BMSiriExecution *)self taskStep]);
  v6 = [(BMSiriExecution *)self statusReason];
  v7 = [(BMSiriExecution *)self slotValue];
  v8 = [(BMSiriExecution *)self intentName];
  v9 = [(BMSiriExecution *)self appBundleID];
  v10 = [(BMSiriExecution *)self interactionID];
  v11 = [(BMSiriExecution *)self absoluteTimestamp];
  v12 = [(BMSiriExecution *)self rootInteractionID];
  v13 = [v3 initWithFormat:@"BMSiriExecution with taskId: %@, taskStep: %@, statusReason: %@, slotValue: %@, intentName: %@, appBundleID: %@, interactionID: %@, absoluteTimestamp: %@, rootInteractionID: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMSiriExecution)initWithTaskId:(id)a3 taskStep:(int)a4 statusReason:(id)a5 slotValue:(id)a6 intentName:(id)a7 appBundleID:(id)a8 interactionID:(id)a9 absoluteTimestamp:(id)a10 rootInteractionID:(id)a11
{
  v28 = a3;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v17 = a10;
  v18 = a11;
  v29.receiver = self;
  v29.super_class = BMSiriExecution;
  v19 = [(BMEventBase *)&v29 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_taskId, a3);
    v19->_taskStep = a4;
    objc_storeStrong(&v19->_statusReason, a5);
    objc_storeStrong(&v19->_slotValue, a6);
    objc_storeStrong(&v19->_intentName, a7);
    objc_storeStrong(&v19->_appBundleID, a8);
    objc_storeStrong(&v19->_interactionID, a9);
    if (v17)
    {
      v19->_hasRaw_absoluteTimestamp = 1;
      [v17 timeIntervalSinceReferenceDate];
    }

    else
    {
      v19->_hasRaw_absoluteTimestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_absoluteTimestamp = v20;
    objc_storeStrong(&v19->_rootInteractionID, a11);
  }

  return v19;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskStep" number:2 type:4 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"statusReason" number:3 type:13 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"slotValue" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intentName" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appBundleID" number:6 type:13 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionID" number:7 type:13 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:8 type:0 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rootInteractionID" number:9 type:13 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4 == 2)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMSiriExecution_v2;
  }

  else
  {
    if (a4 != 3)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMSiriExecution;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 32) = a4;
  }

LABEL_9:

  return v9;
}

@end