@interface BMPrivateCloudComputeRequestLog
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPrivateCloudComputeRequestLog)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMPrivateCloudComputeRequestLog)initWithTimestamp:(id)timestamp requestId:(id)id pipelineKind:(id)kind pipelineParameters:(id)parameters nodes:(id)nodes;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)_nodesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPrivateCloudComputeRequestLog

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timestamp = [(BMPrivateCloudComputeRequestLog *)self timestamp];
    timestamp2 = [v5 timestamp];
    v8 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMPrivateCloudComputeRequestLog *)self timestamp];
      timestamp4 = [v5 timestamp];
      v11 = [timestamp3 isEqual:timestamp4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    requestId = [(BMPrivateCloudComputeRequestLog *)self requestId];
    requestId2 = [v5 requestId];
    v15 = requestId2;
    if (requestId == requestId2)
    {
    }

    else
    {
      requestId3 = [(BMPrivateCloudComputeRequestLog *)self requestId];
      requestId4 = [v5 requestId];
      v18 = [requestId3 isEqual:requestId4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    pipelineKind = [(BMPrivateCloudComputeRequestLog *)self pipelineKind];
    pipelineKind2 = [v5 pipelineKind];
    v21 = pipelineKind2;
    if (pipelineKind == pipelineKind2)
    {
    }

    else
    {
      pipelineKind3 = [(BMPrivateCloudComputeRequestLog *)self pipelineKind];
      pipelineKind4 = [v5 pipelineKind];
      v24 = [pipelineKind3 isEqual:pipelineKind4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    pipelineParameters = [(BMPrivateCloudComputeRequestLog *)self pipelineParameters];
    pipelineParameters2 = [v5 pipelineParameters];
    v27 = pipelineParameters2;
    if (pipelineParameters == pipelineParameters2)
    {
    }

    else
    {
      pipelineParameters3 = [(BMPrivateCloudComputeRequestLog *)self pipelineParameters];
      pipelineParameters4 = [v5 pipelineParameters];
      v30 = [pipelineParameters3 isEqual:pipelineParameters4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    nodes = [(BMPrivateCloudComputeRequestLog *)self nodes];
    nodes2 = [v5 nodes];
    if (nodes == nodes2)
    {
      v12 = 1;
    }

    else
    {
      nodes3 = [(BMPrivateCloudComputeRequestLog *)self nodes];
      nodes4 = [v5 nodes];
      v12 = [nodes3 isEqual:nodes4];
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
  timestamp = [(BMPrivateCloudComputeRequestLog *)self timestamp];
  if (timestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMPrivateCloudComputeRequestLog *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  requestId = [(BMPrivateCloudComputeRequestLog *)self requestId];
  pipelineKind = [(BMPrivateCloudComputeRequestLog *)self pipelineKind];
  pipelineParameters = [(BMPrivateCloudComputeRequestLog *)self pipelineParameters];
  _nodesJSONArray = [(BMPrivateCloudComputeRequestLog *)self _nodesJSONArray];
  v21[0] = @"timestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v23[0] = null;
  v21[1] = @"requestId";
  null2 = requestId;
  if (!requestId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v21[2] = @"pipelineKind";
  null3 = pipelineKind;
  if (!pipelineKind)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21[3] = @"pipelineParameters";
  null4 = pipelineParameters;
  if (!pipelineParameters)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v21[4] = @"nodes";
  if (_nodesJSONArray)
  {
    v24 = _nodesJSONArray;
    v22 = @"attestations";
    null6 = _nodesJSONArray;
  }

  else
  {
    null5 = [MEMORY[0x1E695DFB0] null];
    v24 = null5;
    v22 = @"attestations";
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null6;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v21 count:6];
  if (_nodesJSONArray)
  {
    if (pipelineParameters)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (pipelineParameters)
    {
LABEL_17:
      if (pipelineKind)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  if (pipelineKind)
  {
LABEL_18:
    if (requestId)
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

  if (!requestId)
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
  nodes = [(BMPrivateCloudComputeRequestLog *)self nodes];
  v5 = [nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(nodes);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMPrivateCloudComputeRequestLog)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v109[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
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
      if (!error)
      {
        v8 = 0;
        selfCopy2 = 0;
        goto LABEL_63;
      }

      v68 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy = error;
      v69 = *MEMORY[0x1E698F240];
      v108 = *MEMORY[0x1E696A578];
      v70 = dictionaryCopy;
      v71 = objc_alloc(MEMORY[0x1E696AEC0]);
      v75 = objc_opt_class();
      v72 = v71;
      dictionaryCopy = v70;
      v34 = [v72 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v75, @"timestamp"];
      v109[0] = v34;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:&v108 count:1];
      v8 = 0;
      selfCopy2 = 0;
      *errorCopy = [v68 initWithDomain:v69 code:2 userInfo:v16];
      goto LABEL_62;
    }

    v14 = v7;
    goto LABEL_6;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v8 = [v15 dateFromString:v7];

LABEL_9:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"requestId"];
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
    v17 = [dictionaryCopy objectForKeyedSubscript:@"pipelineKind"];
    v89 = v17;
    if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v85 = 0;
LABEL_15:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"pipelineParameters"];
      v80 = v16;
      v86 = v19;
      if (v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v88 = 0;
            selfCopy2 = 0;
            v34 = v87;
            v35 = v85;
            goto LABEL_59;
          }

          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v102 = *MEMORY[0x1E696A578];
          errorCopy2 = error;
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"pipelineParameters"];
          v103 = v21;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v53 = [v50 initWithDomain:v51 code:2 userInfo:v24];
          v88 = 0;
          selfCopy2 = 0;
          *errorCopy2 = v53;
          goto LABEL_56;
        }

        errorCopy4 = error;
        v88 = v20;
      }

      else
      {
        errorCopy4 = error;
        v88 = 0;
      }

      v21 = [dictionaryCopy objectForKeyedSubscript:@"nodes"];
      null = [MEMORY[0x1E695DFB0] null];
      v23 = [v21 isEqual:null];

      v79 = v8;
      if (v23)
      {
        v77 = v7;
        selfCopy3 = self;

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
        v76 = dictionaryCopy;
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
            dictionaryCopy = v76;
            self = selfCopy3;
            v8 = v79;
            v54 = errorCopy4;
            if (!errorCopy4)
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
            if (errorCopy4)
            {
              v62 = v33;
              *errorCopy4 = v60;
            }

            dictionaryCopy = v76;
            self = selfCopy3;
            v8 = v79;
LABEL_54:

LABEL_55:
            selfCopy2 = 0;
            v7 = v77;
            goto LABEL_56;
          }

          [v24 addObject:v32];

          if (v26 == ++v28)
          {
            v26 = [v21 countByEnumeratingWithState:&v91 objects:v99 count:16];
            dictionaryCopy = v76;
            if (v26)
            {
              goto LABEL_27;
            }

LABEL_35:

            v8 = v79;
            v34 = v87;
            v35 = v85;
            self = [(BMPrivateCloudComputeRequestLog *)selfCopy3 initWithTimestamp:v79 requestId:v87 pipelineKind:v85 pipelineParameters:v88 nodes:v24];
            selfCopy2 = self;
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

        dictionaryCopy = v76;
        self = selfCopy3;
        v8 = v79;
        v54 = errorCopy4;
        if (!errorCopy4)
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
        selfCopy3 = self;
        goto LABEL_25;
      }

      if (!errorCopy4)
      {
        selfCopy2 = 0;
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
      *errorCopy4 = [v65 initWithDomain:v66 code:2 userInfo:v67];

      selfCopy2 = 0;
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

    if (error)
    {
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy5 = error;
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
      selfCopy2 = 0;
      *errorCopy5 = [v48 initWithDomain:v43 code:2 userInfo:v47];
      v34 = v87;
      goto LABEL_60;
    }

    v35 = 0;
    selfCopy2 = 0;
    v34 = v87;
LABEL_61:

    goto LABEL_62;
  }

  if (error)
  {
    v37 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy6 = error;
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
    selfCopy2 = 0;
    *errorCopy6 = [v37 initWithDomain:v38 code:2 userInfo:?];
    goto LABEL_61;
  }

  v34 = 0;
  selfCopy2 = 0;
LABEL_62:

LABEL_63:
  v63 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPrivateCloudComputeRequestLog *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
        [v11 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMPrivateCloudComputeRequestLog;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_41;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_39;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
          v17 = [fromCopy position] + 8;
          if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 8, v18 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
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
      if (!PBReaderPlaceMark() || (v21 = [[BMPrivateCloudComputeRequestLogAttestation alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_43:

        goto LABEL_40;
      }

      v22 = v21;
      [v6 addObject:v21];
      PBReaderRecallMark();

LABEL_38:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  timestamp = [(BMPrivateCloudComputeRequestLog *)self timestamp];
  requestId = [(BMPrivateCloudComputeRequestLog *)self requestId];
  pipelineKind = [(BMPrivateCloudComputeRequestLog *)self pipelineKind];
  pipelineParameters = [(BMPrivateCloudComputeRequestLog *)self pipelineParameters];
  nodes = [(BMPrivateCloudComputeRequestLog *)self nodes];
  v9 = [v3 initWithFormat:@"BMPrivateCloudComputeRequestLog with timestamp: %@, requestId: %@, pipelineKind: %@, pipelineParameters: %@, nodes: %@", timestamp, requestId, pipelineKind, pipelineParameters, nodes];

  return v9;
}

- (BMPrivateCloudComputeRequestLog)initWithTimestamp:(id)timestamp requestId:(id)id pipelineKind:(id)kind pipelineParameters:(id)parameters nodes:(id)nodes
{
  timestampCopy = timestamp;
  idCopy = id;
  kindCopy = kind;
  parametersCopy = parameters;
  nodesCopy = nodes;
  v20.receiver = self;
  v20.super_class = BMPrivateCloudComputeRequestLog;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v17->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_timestamp = 0;
      v18 = -1.0;
    }

    v17->_raw_timestamp = v18;
    objc_storeStrong(&v17->_requestId, id);
    objc_storeStrong(&v17->_pipelineKind, kind);
    objc_storeStrong(&v17->_pipelineParameters, parameters);
    objc_storeStrong(&v17->_nodes, nodes);
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