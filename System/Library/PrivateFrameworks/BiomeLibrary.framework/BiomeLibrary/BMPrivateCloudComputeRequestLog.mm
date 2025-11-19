@interface BMPrivateCloudComputeRequestLog
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPrivateCloudComputeRequestLog)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMPrivateCloudComputeRequestLog)initWithTimestamp:(id)a3 requestId:(id)a4 pipelineKind:(id)a5 pipelineParameters:(id)a6 nodes:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)_nodesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPrivateCloudComputeRequestLog

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPrivateCloudComputeRequestLog *)self timestamp];
    v7 = [v5 timestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMPrivateCloudComputeRequestLog *)self timestamp];
      v10 = [v5 timestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMPrivateCloudComputeRequestLog *)self requestId];
    v14 = [v5 requestId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMPrivateCloudComputeRequestLog *)self requestId];
      v17 = [v5 requestId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMPrivateCloudComputeRequestLog *)self pipelineKind];
    v20 = [v5 pipelineKind];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMPrivateCloudComputeRequestLog *)self pipelineKind];
      v23 = [v5 pipelineKind];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMPrivateCloudComputeRequestLog *)self pipelineParameters];
    v26 = [v5 pipelineParameters];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMPrivateCloudComputeRequestLog *)self pipelineParameters];
      v29 = [v5 pipelineParameters];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMPrivateCloudComputeRequestLog *)self nodes];
    v32 = [v5 nodes];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMPrivateCloudComputeRequestLog *)self nodes];
      v34 = [v5 nodes];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

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
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(BMPrivateCloudComputeRequestLog *)self timestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMPrivateCloudComputeRequestLog *)self timestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMPrivateCloudComputeRequestLog *)self requestId];
  v8 = [(BMPrivateCloudComputeRequestLog *)self pipelineKind];
  v9 = [(BMPrivateCloudComputeRequestLog *)self pipelineParameters];
  v10 = [(BMPrivateCloudComputeRequestLog *)self _nodesJSONArray];
  v21[0] = @"timestamp";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v11;
  v23[0] = v11;
  v21[1] = @"requestId";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v12;
  v21[2] = @"pipelineKind";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v13;
  v21[3] = @"pipelineParameters";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v14;
  v21[4] = @"nodes";
  if (v10)
  {
    v24 = v10;
    v22 = @"attestations";
    v15 = v10;
  }

  else
  {
    v19 = [MEMORY[0x1E695DFB0] null];
    v24 = v19;
    v22 = @"attestations";
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v21 count:6];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v9)
    {
LABEL_17:
      if (v8)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  if (v8)
  {
LABEL_18:
    if (v7)
    {
      goto LABEL_19;
    }

LABEL_26:

    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (v6)
  {
    goto LABEL_20;
  }

LABEL_27:

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)_nodesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMPrivateCloudComputeRequestLog *)self nodes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMPrivateCloudComputeRequestLog)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v109[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"timestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E695DF00];
    v10 = v7;
    v11 = [v9 alloc];
    [v10 doubleValue];
    v13 = v12;

    v14 = [v11 initWithTimeIntervalSince1970:v13];
LABEL_6:
    v8 = v14;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v8 = 0;
        v36 = 0;
        goto LABEL_63;
      }

      v68 = objc_alloc(MEMORY[0x1E696ABC0]);
      v84 = a4;
      v69 = *MEMORY[0x1E698F240];
      v108 = *MEMORY[0x1E696A578];
      v70 = v6;
      v71 = objc_alloc(MEMORY[0x1E696AEC0]);
      v75 = objc_opt_class();
      v72 = v71;
      v6 = v70;
      v34 = [v72 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v75, @"timestamp"];
      v109[0] = v34;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:&v108 count:1];
      v8 = 0;
      v36 = 0;
      *v84 = [v68 initWithDomain:v69 code:2 userInfo:v16];
      goto LABEL_62;
    }

    v14 = v7;
    goto LABEL_6;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v8 = [v15 dateFromString:v7];

LABEL_9:
  v16 = [v6 objectForKeyedSubscript:@"requestId"];
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v87 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v87 = v16;
LABEL_12:
    v17 = [v6 objectForKeyedSubscript:@"pipelineKind"];
    v89 = v17;
    if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v85 = 0;
LABEL_15:
      v19 = [v6 objectForKeyedSubscript:@"pipelineParameters"];
      v80 = v16;
      v86 = v19;
      if (v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v88 = 0;
            v36 = 0;
            v34 = v87;
            v35 = v85;
            goto LABEL_59;
          }

          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v102 = *MEMORY[0x1E696A578];
          v52 = a4;
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"pipelineParameters"];
          v103 = v21;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v53 = [v50 initWithDomain:v51 code:2 userInfo:v24];
          v88 = 0;
          v36 = 0;
          *v52 = v53;
          goto LABEL_56;
        }

        v81 = a4;
        v88 = v20;
      }

      else
      {
        v81 = a4;
        v88 = 0;
      }

      v21 = [v6 objectForKeyedSubscript:@"nodes"];
      v22 = [MEMORY[0x1E695DFB0] null];
      v23 = [v21 isEqual:v22];

      v79 = v8;
      if (v23)
      {
        v77 = v7;
        v78 = self;

        v21 = 0;
LABEL_25:
        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v21 = v21;
        v25 = [v21 countByEnumeratingWithState:&v91 objects:v99 count:16];
        if (!v25)
        {
          goto LABEL_35;
        }

        v26 = v25;
        v27 = *v92;
        v76 = v6;
LABEL_27:
        v28 = 0;
        while (1)
        {
          if (*v92 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v91 + 1) + 8 * v28);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v6 = v76;
            self = v78;
            v8 = v79;
            v54 = v81;
            if (!v81)
            {
              goto LABEL_55;
            }

            v55 = objc_alloc(MEMORY[0x1E696ABC0]);
            v56 = *MEMORY[0x1E698F240];
            v95 = *MEMORY[0x1E696A578];
            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"nodes"];
            v96 = v30;
            v57 = MEMORY[0x1E695DF20];
            v58 = &v96;
            v59 = &v95;
            goto LABEL_50;
          }

          v30 = v29;
          v31 = [BMPrivateCloudComputeRequestLogAttestation alloc];
          v90 = 0;
          v32 = [(BMPrivateCloudComputeRequestLogAttestation *)v31 initWithJSONDictionary:v30 error:&v90];
          v33 = v90;
          if (v33)
          {
            v60 = v33;
            if (v81)
            {
              v62 = v33;
              *v81 = v60;
            }

            v6 = v76;
            self = v78;
            v8 = v79;
LABEL_54:

LABEL_55:
            v36 = 0;
            v7 = v77;
            goto LABEL_56;
          }

          [v24 addObject:v32];

          if (v26 == ++v28)
          {
            v26 = [v21 countByEnumeratingWithState:&v91 objects:v99 count:16];
            v6 = v76;
            if (v26)
            {
              goto LABEL_27;
            }

LABEL_35:

            v8 = v79;
            v34 = v87;
            v35 = v85;
            self = [(BMPrivateCloudComputeRequestLog *)v78 initWithTimestamp:v79 requestId:v87 pipelineKind:v85 pipelineParameters:v88 nodes:v24];
            v36 = self;
            v7 = v77;
LABEL_57:

            v16 = v80;
LABEL_58:

LABEL_59:
            v49 = v86;
LABEL_60:

            goto LABEL_61;
          }
        }

        v6 = v76;
        self = v78;
        v8 = v79;
        v54 = v81;
        if (!v81)
        {
          goto LABEL_55;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v97 = *MEMORY[0x1E696A578];
        v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"nodes"];
        v98 = v30;
        v57 = MEMORY[0x1E695DF20];
        v58 = &v98;
        v59 = &v97;
LABEL_50:
        v60 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:1];
        v61 = v56;
        v8 = v79;
        *v54 = [v55 initWithDomain:v61 code:2 userInfo:v60];
        goto LABEL_54;
      }

      if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v77 = v7;
        v78 = self;
        goto LABEL_25;
      }

      if (!v81)
      {
        v36 = 0;
        v34 = v87;
        v35 = v85;
        goto LABEL_58;
      }

      v65 = objc_alloc(MEMORY[0x1E696ABC0]);
      v66 = *MEMORY[0x1E698F240];
      v100 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"nodes"];
      v101 = v24;
      v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      *v81 = [v65 initWithDomain:v66 code:2 userInfo:v67];

      v36 = 0;
LABEL_56:
      v34 = v87;
      v35 = v85;
      goto LABEL_57;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = v18;
      goto LABEL_15;
    }

    if (a4)
    {
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v83 = a4;
      v43 = *MEMORY[0x1E698F240];
      v104 = *MEMORY[0x1E696A578];
      v44 = v16;
      v45 = objc_alloc(MEMORY[0x1E696AEC0]);
      v74 = objc_opt_class();
      v46 = v45;
      v16 = v44;
      v88 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v74, @"pipelineKind"];
      v105 = v88;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      v48 = v42;
      v49 = v47;
      v35 = 0;
      v36 = 0;
      *v83 = [v48 initWithDomain:v43 code:2 userInfo:v47];
      v34 = v87;
      goto LABEL_60;
    }

    v35 = 0;
    v36 = 0;
    v34 = v87;
LABEL_61:

    goto LABEL_62;
  }

  if (a4)
  {
    v37 = objc_alloc(MEMORY[0x1E696ABC0]);
    v82 = a4;
    v38 = *MEMORY[0x1E698F240];
    v106 = *MEMORY[0x1E696A578];
    v39 = v16;
    v40 = objc_alloc(MEMORY[0x1E696AEC0]);
    v73 = objc_opt_class();
    v41 = v40;
    v16 = v39;
    v35 = [v41 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v73, @"requestId"];
    v107 = v35;
    v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v34 = 0;
    v36 = 0;
    *v82 = [v37 initWithDomain:v38 code:2 userInfo:?];
    goto LABEL_61;
  }

  v34 = 0;
  v36 = 0;
LABEL_62:

LABEL_63:
  v63 = *MEMORY[0x1E69E9840];
  return v36;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPrivateCloudComputeRequestLog *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pipelineKind)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pipelineParameters)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_nodes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v11 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMPrivateCloudComputeRequestLog;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_39;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v32[0] & 0x7F) << v8;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_39;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      if (v16 != 3)
      {
        if (v16 == 5)
        {
          v19 = PBReaderReadString();
          v20 = 40;
          goto LABEL_33;
        }

        if (v16 == 4)
        {
          v5->_hasRaw_timestamp = 1;
          v32[0] = 0;
          v17 = [v4 position] + 8;
          if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 8, v18 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:v32 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          *&v5->_raw_timestamp = v32[0];
          goto LABEL_38;
        }

LABEL_34:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      v32[0] = 0;
      v32[1] = 0;
      if (!PBReaderPlaceMark() || (v21 = [[BMPrivateCloudComputeRequestLogAttestation alloc] initByReadFrom:v4]) == 0)
      {
LABEL_43:

        goto LABEL_40;
      }

      v22 = v21;
      [v6 addObject:v21];
      PBReaderRecallMark();

LABEL_38:
      v25 = [v4 position];
      if (v25 >= [v4 length])
      {
        goto LABEL_39;
      }
    }

    if (v16 == 1)
    {
      v19 = PBReaderReadString();
      v20 = 48;
      goto LABEL_33;
    }

    if (v16 == 2)
    {
      v19 = PBReaderReadString();
      v20 = 56;
LABEL_33:
      v23 = *(&v5->super.super.isa + v20);
      *(&v5->super.super.isa + v20) = v19;

      goto LABEL_38;
    }

    goto LABEL_34;
  }

LABEL_39:
  v26 = [v6 copy];
  nodes = v5->_nodes;
  v5->_nodes = v26;

  v28 = [v4 hasError];
  if (v28)
  {
LABEL_40:
    v29 = 0;
  }

  else
  {
LABEL_41:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMPrivateCloudComputeRequestLog *)self timestamp];
  v5 = [(BMPrivateCloudComputeRequestLog *)self requestId];
  v6 = [(BMPrivateCloudComputeRequestLog *)self pipelineKind];
  v7 = [(BMPrivateCloudComputeRequestLog *)self pipelineParameters];
  v8 = [(BMPrivateCloudComputeRequestLog *)self nodes];
  v9 = [v3 initWithFormat:@"BMPrivateCloudComputeRequestLog with timestamp: %@, requestId: %@, pipelineKind: %@, pipelineParameters: %@, nodes: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMPrivateCloudComputeRequestLog)initWithTimestamp:(id)a3 requestId:(id)a4 pipelineKind:(id)a5 pipelineParameters:(id)a6 nodes:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMPrivateCloudComputeRequestLog;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v17->_hasRaw_timestamp = 1;
      [v12 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_timestamp = 0;
      v18 = -1.0;
    }

    v17->_raw_timestamp = v18;
    objc_storeStrong(&v17->_requestId, a4);
    objc_storeStrong(&v17->_pipelineKind, a5);
    objc_storeStrong(&v17->_pipelineParameters, a6);
    objc_storeStrong(&v17->_nodes, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:4 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestId" number:5 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pipelineKind" number:1 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pipelineParameters" number:2 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nodes" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestId" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pipelineKind" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pipelineParameters" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"nodes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_88751];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attestations_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_189];
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v2;
  v11[5] = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __42__BMPrivateCloudComputeRequestLog_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _attestationsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __42__BMPrivateCloudComputeRequestLog_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _nodesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMPrivateCloudComputeRequestLog alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end