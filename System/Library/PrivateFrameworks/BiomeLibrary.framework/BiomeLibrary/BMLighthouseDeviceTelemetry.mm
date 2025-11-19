@interface BMLighthouseDeviceTelemetry
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseDeviceTelemetry)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseDeviceTelemetry)initWithVersion:(id)a3 bucketStart:(id)a4 bucketEnd:(id)a5 tasksCount:(id)a6 tasksRun:(id)a7 tasksDeferred:(id)a8 tasksFailed:(id)a9 tasksCompleted:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSDate)bucketEnd;
- (NSDate)bucketStart;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseDeviceTelemetry

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bucketStart" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bucketEnd" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tasksCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tasksRun" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tasksDeferred" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tasksFailed" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tasksCompleted" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMLighthouseDeviceTelemetry hasVersion](self, "hasVersion") || [v5 hasVersion])
    {
      if (![(BMLighthouseDeviceTelemetry *)self hasVersion])
      {
        goto LABEL_41;
      }

      if (![v5 hasVersion])
      {
        goto LABEL_41;
      }

      v6 = [(BMLighthouseDeviceTelemetry *)self version];
      if (v6 != [v5 version])
      {
        goto LABEL_41;
      }
    }

    v7 = [(BMLighthouseDeviceTelemetry *)self bucketStart];
    v8 = [v5 bucketStart];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMLighthouseDeviceTelemetry *)self bucketStart];
      v11 = [v5 bucketStart];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_41;
      }
    }

    v14 = [(BMLighthouseDeviceTelemetry *)self bucketEnd];
    v15 = [v5 bucketEnd];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMLighthouseDeviceTelemetry *)self bucketEnd];
      v18 = [v5 bucketEnd];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_41;
      }
    }

    if (!-[BMLighthouseDeviceTelemetry hasTasksCount](self, "hasTasksCount") && ![v5 hasTasksCount] || -[BMLighthouseDeviceTelemetry hasTasksCount](self, "hasTasksCount") && objc_msgSend(v5, "hasTasksCount") && (v20 = -[BMLighthouseDeviceTelemetry tasksCount](self, "tasksCount"), v20 == objc_msgSend(v5, "tasksCount")))
    {
      if (!-[BMLighthouseDeviceTelemetry hasTasksRun](self, "hasTasksRun") && ![v5 hasTasksRun] || -[BMLighthouseDeviceTelemetry hasTasksRun](self, "hasTasksRun") && objc_msgSend(v5, "hasTasksRun") && (v21 = -[BMLighthouseDeviceTelemetry tasksRun](self, "tasksRun"), v21 == objc_msgSend(v5, "tasksRun")))
      {
        if (!-[BMLighthouseDeviceTelemetry hasTasksDeferred](self, "hasTasksDeferred") && ![v5 hasTasksDeferred] || -[BMLighthouseDeviceTelemetry hasTasksDeferred](self, "hasTasksDeferred") && objc_msgSend(v5, "hasTasksDeferred") && (v22 = -[BMLighthouseDeviceTelemetry tasksDeferred](self, "tasksDeferred"), v22 == objc_msgSend(v5, "tasksDeferred")))
        {
          if (!-[BMLighthouseDeviceTelemetry hasTasksFailed](self, "hasTasksFailed") && ![v5 hasTasksFailed] || -[BMLighthouseDeviceTelemetry hasTasksFailed](self, "hasTasksFailed") && objc_msgSend(v5, "hasTasksFailed") && (v23 = -[BMLighthouseDeviceTelemetry tasksFailed](self, "tasksFailed"), v23 == objc_msgSend(v5, "tasksFailed")))
          {
            if (!-[BMLighthouseDeviceTelemetry hasTasksCompleted](self, "hasTasksCompleted") && ![v5 hasTasksCompleted])
            {
              v13 = 1;
              goto LABEL_42;
            }

            if (-[BMLighthouseDeviceTelemetry hasTasksCompleted](self, "hasTasksCompleted") && [v5 hasTasksCompleted])
            {
              v24 = [(BMLighthouseDeviceTelemetry *)self tasksCompleted];
              v13 = v24 == [v5 tasksCompleted];
LABEL_42:

              goto LABEL_43;
            }
          }
        }
      }
    }

LABEL_41:
    v13 = 0;
    goto LABEL_42;
  }

  v13 = 0;
LABEL_43:

  return v13;
}

- (NSDate)bucketEnd
{
  if (self->_hasRaw_bucketEnd)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_bucketEnd];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)bucketStart
{
  if (self->_hasRaw_bucketStart)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_bucketStart];
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
  v35[8] = *MEMORY[0x1E69E9840];
  if ([(BMLighthouseDeviceTelemetry *)self hasVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry version](self, "version")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMLighthouseDeviceTelemetry *)self bucketStart];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMLighthouseDeviceTelemetry *)self bucketStart];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMLighthouseDeviceTelemetry *)self bucketEnd];
  if (v8)
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [(BMLighthouseDeviceTelemetry *)self bucketEnd];
    [v10 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMLighthouseDeviceTelemetry *)self hasTasksCount])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksCount](self, "tasksCount")}];
  }

  else
  {
    v33 = 0;
  }

  if ([(BMLighthouseDeviceTelemetry *)self hasTasksRun])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksRun](self, "tasksRun")}];
  }

  else
  {
    v32 = 0;
  }

  if ([(BMLighthouseDeviceTelemetry *)self hasTasksDeferred])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksDeferred](self, "tasksDeferred")}];
  }

  else
  {
    v12 = 0;
  }

  if ([(BMLighthouseDeviceTelemetry *)self hasTasksFailed])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksFailed](self, "tasksFailed")}];
  }

  else
  {
    v13 = 0;
  }

  if ([(BMLighthouseDeviceTelemetry *)self hasTasksCompleted])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksCompleted](self, "tasksCompleted")}];
  }

  else
  {
    v14 = 0;
  }

  v34[0] = @"version";
  v15 = v3;
  if (!v3)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v15;
  v35[0] = v15;
  v34[1] = @"bucketStart";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v16;
  v35[1] = v16;
  v34[2] = @"bucketEnd";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v3;
  v27 = v17;
  v35[2] = v17;
  v34[3] = @"tasksCount";
  v18 = v33;
  if (!v33)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v7;
  v35[3] = v18;
  v34[4] = @"tasksRun";
  v19 = v32;
  if (!v32)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v11;
  v35[4] = v19;
  v34[5] = @"tasksDeferred";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = v21;
  v34[6] = @"tasksFailed";
  v22 = v13;
  if (!v13)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = v22;
  v34[7] = @"tasksCompleted";
  v23 = v14;
  if (!v14)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:8];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_43;
    }

LABEL_55:

    if (v12)
    {
      goto LABEL_44;
    }

    goto LABEL_56;
  }

  if (!v13)
  {
    goto LABEL_55;
  }

LABEL_43:
  if (v12)
  {
    goto LABEL_44;
  }

LABEL_56:

LABEL_44:
  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (v20)
  {
    if (v30)
    {
      goto LABEL_50;
    }

LABEL_58:

    if (v31)
    {
      goto LABEL_51;
    }

    goto LABEL_59;
  }

  if (!v30)
  {
    goto LABEL_58;
  }

LABEL_50:
  if (v31)
  {
    goto LABEL_51;
  }

LABEL_59:

LABEL_51:
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BMLighthouseDeviceTelemetry)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v106[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"version"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"bucketStart"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x1E695DF00];
        v12 = v9;
        v13 = [v11 alloc];
        [v12 doubleValue];
        v15 = v14;

        v90 = [v13 initWithTimeIntervalSince1970:v15];
      }

      else
      {
        v25 = a4;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v90 = [v26 dateFromString:v9];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v90 = 0;
              a4 = 0;
              goto LABEL_49;
            }

            v60 = objc_alloc(MEMORY[0x1E696ABC0]);
            v61 = v9;
            v62 = v8;
            v63 = *MEMORY[0x1E698F240];
            v103 = *MEMORY[0x1E696A578];
            v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bucketStart"];
            v104 = v88;
            v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
            v65 = v63;
            v8 = v62;
            v9 = v61;
            v10 = v64;
            v90 = 0;
            a4 = 0;
            *v25 = [v60 initWithDomain:v65 code:2 userInfo:v64];
            goto LABEL_48;
          }

          v90 = v9;
        }
      }
    }

    else
    {
      v90 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"bucketEnd"];
    v85 = v9;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = MEMORY[0x1E695DF00];
        v17 = v10;
        v18 = [v16 alloc];
        [v17 doubleValue];
        v20 = v19;

        v88 = [v18 initWithTimeIntervalSince1970:v20];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v88 = [v27 dateFromString:v10];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v66 = v10;
            if (!a4)
            {
              v88 = 0;
              a4 = 0;
              goto LABEL_48;
            }

            v67 = a4;
            v89 = objc_alloc(MEMORY[0x1E696ABC0]);
            v68 = v8;
            v69 = *MEMORY[0x1E698F240];
            v101 = *MEMORY[0x1E696A578];
            v70 = v66;
            v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"bucketEnd"];
            v102 = v87;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
            v71 = v69;
            v8 = v68;
            v9 = v85;
            v72 = [v89 initWithDomain:v71 code:2 userInfo:v28];
            v88 = 0;
            a4 = 0;
            *v67 = v72;
            v10 = v70;
LABEL_47:

LABEL_48:
            goto LABEL_49;
          }

          v88 = v10;
        }
      }
    }

    else
    {
      v88 = 0;
    }

    v28 = [v6 objectForKeyedSubscript:@"tasksCount"];
    v84 = v10;
    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v87 = 0;
          goto LABEL_47;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = v8;
        v42 = *MEMORY[0x1E698F240];
        v99 = *MEMORY[0x1E696A578];
        v75 = a4;
        v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tasksCount"];
        v100 = v86;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v43 = v42;
        v8 = v41;
        v10 = v84;
        v87 = 0;
        a4 = 0;
        *v75 = [v40 initWithDomain:v43 code:2 userInfo:v29];
        goto LABEL_46;
      }

      v87 = v28;
    }

    else
    {
      v87 = 0;
    }

    v29 = [v6 objectForKeyedSubscript:@"tasksRun"];
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v86 = 0;
          goto LABEL_46;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = v8;
        v46 = *MEMORY[0x1E698F240];
        v97 = *MEMORY[0x1E696A578];
        v76 = a4;
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tasksRun"];
        v98 = v47;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v48 = v44;
        v37 = v47;
        v49 = v46;
        v8 = v45;
        v10 = v84;
        v86 = 0;
        a4 = 0;
        *v76 = [v48 initWithDomain:v49 code:2 userInfo:v30];
LABEL_45:

LABEL_46:
        v9 = v85;
        goto LABEL_47;
      }

      v82 = v28;
      v86 = v29;
    }

    else
    {
      v82 = v28;
      v86 = 0;
    }

    v30 = [v6 objectForKeyedSubscript:@"tasksDeferred"];
    v83 = v8;
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v37 = 0;
          goto LABEL_44;
        }

        v77 = a4;
        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = self;
        v52 = *MEMORY[0x1E698F240];
        v95 = *MEMORY[0x1E696A578];
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tasksDeferred"];
        v96 = v34;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        v53 = v52;
        self = v51;
        v10 = v84;
        v54 = [v50 initWithDomain:v53 code:2 userInfo:v32];
        v37 = 0;
        a4 = 0;
        *v77 = v54;
LABEL_43:

        v8 = v83;
LABEL_44:
        v28 = v82;
        goto LABEL_45;
      }

      v81 = v29;
      v31 = v30;
    }

    else
    {
      v81 = v29;
      v31 = 0;
    }

    v32 = [v6 objectForKeyedSubscript:@"tasksFailed"];
    v80 = v7;
    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v34 = 0;
          v37 = v31;
          v29 = v81;
          goto LABEL_43;
        }

        v33 = self;
        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = a4;
        v56 = *MEMORY[0x1E698F240];
        v93 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tasksFailed"];
        v94 = v36;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        v57 = [v78 initWithDomain:v56 code:2 userInfo:v35];
        v34 = 0;
        a4 = 0;
        *v55 = v57;
        v37 = v31;
        v29 = v81;
        goto LABEL_42;
      }

      v33 = self;
      v34 = v32;
    }

    else
    {
      v33 = self;
      v34 = 0;
    }

    v35 = [v6 objectForKeyedSubscript:@"tasksCompleted"];
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v37 = v31;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = v81;
        if (a4)
        {
          v74 = objc_alloc(MEMORY[0x1E696ABC0]);
          v73 = *MEMORY[0x1E698F240];
          v91 = *MEMORY[0x1E696A578];
          v79 = a4;
          v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tasksCompleted"];
          v92 = v58;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
          *v79 = [v74 initWithDomain:v73 code:2 userInfo:v59];

          v36 = 0;
          a4 = 0;
        }

        else
        {
          v36 = 0;
        }

        goto LABEL_42;
      }

      v36 = v35;
    }

    else
    {
      v36 = 0;
      v37 = v31;
    }

    v29 = v81;
    a4 = [(BMLighthouseDeviceTelemetry *)v33 initWithVersion:v83 bucketStart:v90 bucketEnd:v88 tasksCount:v87 tasksRun:v86 tasksDeferred:v37 tasksFailed:v34 tasksCompleted:v36];
    v33 = a4;
LABEL_42:

    self = v33;
    v7 = v80;
    v10 = v84;
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    goto LABEL_50;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v105 = *MEMORY[0x1E696A578];
  v23 = a4;
  v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
  v106[0] = v90;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
  v24 = [v21 initWithDomain:v22 code:2 userInfo:v9];
  v8 = 0;
  a4 = 0;
  *v23 = v24;
LABEL_49:

LABEL_50:
  v38 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseDeviceTelemetry *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if (self->_hasVersion)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRaw_bucketStart)
  {
    raw_bucketStart = self->_raw_bucketStart;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_bucketEnd)
  {
    raw_bucketEnd = self->_raw_bucketEnd;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasTasksCount)
  {
    tasksCount = self->_tasksCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasTasksRun)
  {
    tasksRun = self->_tasksRun;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasTasksDeferred)
  {
    tasksDeferred = self->_tasksDeferred;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasTasksFailed)
  {
    tasksFailed = self->_tasksFailed;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasTasksCompleted)
  {
    tasksCompleted = self->_tasksCompleted;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v65.receiver = self;
  v65.super_class = BMLighthouseDeviceTelemetry;
  v5 = [(BMEventBase *)&v65 init];
  if (!v5)
  {
    goto LABEL_124;
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
        LOBYTE(v66) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v66 & 0x7F) << v7;
        if ((v66 & 0x80) == 0)
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
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v5->_hasTasksFailed = 1;
            while (1)
            {
              LOBYTE(v66) = 0;
              v54 = [v4 position] + 1;
              if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 1, v55 <= objc_msgSend(v4, "length")))
              {
                v56 = [v4 data];
                [v56 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v53 |= (v66 & 0x7F) << v51;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v13 = v52++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_102;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v53;
            }

LABEL_102:
            v57 = 76;
          }

          else
          {
            if (v15 != 8)
            {
LABEL_89:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_123;
              }

              goto LABEL_121;
            }

            v31 = 0;
            v32 = 0;
            v33 = 0;
            v5->_hasTasksCompleted = 1;
            while (1)
            {
              LOBYTE(v66) = 0;
              v34 = [v4 position] + 1;
              if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
              {
                v36 = [v4 data];
                [v36 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v33 |= (v66 & 0x7F) << v31;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v13 = v32++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_114;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v33;
            }

LABEL_114:
            v57 = 80;
          }
        }

        else if (v15 == 5)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasTasksRun = 1;
          while (1)
          {
            LOBYTE(v66) = 0;
            v46 = [v4 position] + 1;
            if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 1, v47 <= objc_msgSend(v4, "length")))
            {
              v48 = [v4 data];
              [v48 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v45 |= (v66 & 0x7F) << v43;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              v24 = 0;
              goto LABEL_98;
            }
          }

          if ([v4 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v45;
          }

LABEL_98:
          v57 = 68;
        }

        else
        {
          if (v15 != 6)
          {
            goto LABEL_89;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasTasksDeferred = 1;
          while (1)
          {
            LOBYTE(v66) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v66 & 0x7F) << v18;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              v24 = 0;
              goto LABEL_106;
            }
          }

          if ([v4 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_106:
          v57 = 72;
        }
      }

      else if (v15 > 2)
      {
        if (v15 == 3)
        {
          v5->_hasRaw_bucketEnd = 1;
          v66 = 0;
          v49 = [v4 position] + 8;
          if (v49 >= [v4 position] && (v50 = objc_msgSend(v4, "position") + 8, v50 <= objc_msgSend(v4, "length")))
          {
            v58 = [v4 data];
            [v58 getBytes:&v66 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v59 = v66;
          v60 = 40;
LABEL_120:
          *(&v5->super.super.isa + v60) = v59;
          goto LABEL_121;
        }

        if (v15 != 4)
        {
          goto LABEL_89;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasTasksCount = 1;
        while (1)
        {
          LOBYTE(v66) = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (v66 & 0x7F) << v25;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            v24 = 0;
            goto LABEL_110;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_110:
        v57 = 64;
      }

      else
      {
        if (v15 != 1)
        {
          if (v15 != 2)
          {
            goto LABEL_89;
          }

          v5->_hasRaw_bucketStart = 1;
          v66 = 0;
          v16 = [v4 position] + 8;
          if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
          {
            v61 = [v4 data];
            [v61 getBytes:&v66 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v59 = v66;
          v60 = 24;
          goto LABEL_120;
        }

        v37 = 0;
        v38 = 0;
        v39 = 0;
        v5->_hasVersion = 1;
        while (1)
        {
          LOBYTE(v66) = 0;
          v40 = [v4 position] + 1;
          if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
          {
            v42 = [v4 data];
            [v42 getBytes:&v66 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v39 |= (v66 & 0x7F) << v37;
          if ((v66 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v13 = v38++ >= 9;
          if (v13)
          {
            v24 = 0;
            goto LABEL_94;
          }
        }

        if ([v4 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v39;
        }

LABEL_94:
        v57 = 60;
      }

      *(&v5->super.super.isa + v57) = v24;
LABEL_121:
      v62 = [v4 position];
    }

    while (v62 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_123:
    v63 = 0;
  }

  else
  {
LABEL_124:
    v63 = v5;
  }

  return v63;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry version](self, "version")}];
  v5 = [(BMLighthouseDeviceTelemetry *)self bucketStart];
  v6 = [(BMLighthouseDeviceTelemetry *)self bucketEnd];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksCount](self, "tasksCount")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksRun](self, "tasksRun")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksDeferred](self, "tasksDeferred")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksFailed](self, "tasksFailed")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseDeviceTelemetry tasksCompleted](self, "tasksCompleted")}];
  v12 = [v3 initWithFormat:@"BMLighthouseDeviceTelemetry with version: %@, bucketStart: %@, bucketEnd: %@, tasksCount: %@, tasksRun: %@, tasksDeferred: %@, tasksFailed: %@, tasksCompleted: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMLighthouseDeviceTelemetry)initWithVersion:(id)a3 bucketStart:(id)a4 bucketEnd:(id)a5 tasksCount:(id)a6 tasksRun:(id)a7 tasksDeferred:(id)a8 tasksFailed:(id)a9 tasksCompleted:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v34.receiver = self;
  v34.super_class = BMLighthouseDeviceTelemetry;
  v24 = [(BMEventBase *)&v34 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v16)
    {
      v24->_hasVersion = 1;
      v25 = [v16 intValue];
    }

    else
    {
      v24->_hasVersion = 0;
      v25 = -1;
    }

    v24->_version = v25;
    if (v17)
    {
      v24->_hasRaw_bucketStart = 1;
      [v17 timeIntervalSince1970];
    }

    else
    {
      v24->_hasRaw_bucketStart = 0;
      v26 = -1.0;
    }

    v24->_raw_bucketStart = v26;
    if (v18)
    {
      v24->_hasRaw_bucketEnd = 1;
      [v18 timeIntervalSince1970];
    }

    else
    {
      v24->_hasRaw_bucketEnd = 0;
      v27 = -1.0;
    }

    v24->_raw_bucketEnd = v27;
    if (v19)
    {
      v24->_hasTasksCount = 1;
      v28 = [v19 intValue];
    }

    else
    {
      v24->_hasTasksCount = 0;
      v28 = -1;
    }

    v24->_tasksCount = v28;
    if (v20)
    {
      v24->_hasTasksRun = 1;
      v29 = [v20 intValue];
    }

    else
    {
      v24->_hasTasksRun = 0;
      v29 = -1;
    }

    v24->_tasksRun = v29;
    if (v21)
    {
      v24->_hasTasksDeferred = 1;
      v30 = [v21 intValue];
    }

    else
    {
      v24->_hasTasksDeferred = 0;
      v30 = -1;
    }

    v24->_tasksDeferred = v30;
    if (v22)
    {
      v24->_hasTasksFailed = 1;
      v31 = [v22 intValue];
    }

    else
    {
      v24->_hasTasksFailed = 0;
      v31 = -1;
    }

    v24->_tasksFailed = v31;
    if (v23)
    {
      v24->_hasTasksCompleted = 1;
      v32 = [v23 intValue];
    }

    else
    {
      v24->_hasTasksCompleted = 0;
      v32 = -1;
    }

    v24->_tasksCompleted = v32;
  }

  return v24;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:1 type:2 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bucketStart" number:2 type:0 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bucketEnd" number:3 type:0 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tasksCount" number:4 type:2 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tasksRun" number:5 type:2 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tasksDeferred" number:6 type:2 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tasksFailed" number:7 type:2 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tasksCompleted" number:8 type:2 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

    v8 = [[BMLighthouseDeviceTelemetry alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[14] = 0;
    }
  }

  return v4;
}

@end