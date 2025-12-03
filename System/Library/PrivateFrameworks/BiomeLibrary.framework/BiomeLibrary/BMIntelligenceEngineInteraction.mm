@interface BMIntelligenceEngineInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligenceEngineInteraction)initWithAbsoluteTimestamp:(id)timestamp transcriptStatementId:(id)id appIntentInvocationUUID:(id)d sirikitIntentItemId:(id)itemId trigger:(int)trigger tupleInteraction:(id)interaction candidateInteractions:(id)interactions;
- (BMIntelligenceEngineInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (NSUUID)appIntentInvocationUUID;
- (id)_candidateInteractionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligenceEngineInteraction

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"transcriptStatementId_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_630];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appIntentInvocationUUID" dataType:6 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:3];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sirikitIntentItemId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trigger" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tupleInteraction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_632];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidateInteractions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_634];
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
    absoluteTimestamp = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_22;
      }
    }

    transcriptStatementId = [(BMIntelligenceEngineInteraction *)self transcriptStatementId];
    transcriptStatementId2 = [v5 transcriptStatementId];
    v15 = transcriptStatementId2;
    if (transcriptStatementId == transcriptStatementId2)
    {
    }

    else
    {
      transcriptStatementId3 = [(BMIntelligenceEngineInteraction *)self transcriptStatementId];
      transcriptStatementId4 = [v5 transcriptStatementId];
      v18 = [transcriptStatementId3 isEqual:transcriptStatementId4];

      if (!v18)
      {
        goto LABEL_22;
      }
    }

    appIntentInvocationUUID = [(BMIntelligenceEngineInteraction *)self appIntentInvocationUUID];
    appIntentInvocationUUID2 = [v5 appIntentInvocationUUID];
    v21 = appIntentInvocationUUID2;
    if (appIntentInvocationUUID == appIntentInvocationUUID2)
    {
    }

    else
    {
      appIntentInvocationUUID3 = [(BMIntelligenceEngineInteraction *)self appIntentInvocationUUID];
      appIntentInvocationUUID4 = [v5 appIntentInvocationUUID];
      v24 = [appIntentInvocationUUID3 isEqual:appIntentInvocationUUID4];

      if (!v24)
      {
        goto LABEL_22;
      }
    }

    sirikitIntentItemId = [(BMIntelligenceEngineInteraction *)self sirikitIntentItemId];
    sirikitIntentItemId2 = [v5 sirikitIntentItemId];
    v27 = sirikitIntentItemId2;
    if (sirikitIntentItemId == sirikitIntentItemId2)
    {
    }

    else
    {
      sirikitIntentItemId3 = [(BMIntelligenceEngineInteraction *)self sirikitIntentItemId];
      sirikitIntentItemId4 = [v5 sirikitIntentItemId];
      v30 = [sirikitIntentItemId3 isEqual:sirikitIntentItemId4];

      if (!v30)
      {
        goto LABEL_22;
      }
    }

    trigger = [(BMIntelligenceEngineInteraction *)self trigger];
    if (trigger == [v5 trigger])
    {
      tupleInteraction = [(BMIntelligenceEngineInteraction *)self tupleInteraction];
      tupleInteraction2 = [v5 tupleInteraction];
      v34 = tupleInteraction2;
      if (tupleInteraction == tupleInteraction2)
      {
      }

      else
      {
        tupleInteraction3 = [(BMIntelligenceEngineInteraction *)self tupleInteraction];
        tupleInteraction4 = [v5 tupleInteraction];
        v37 = [tupleInteraction3 isEqual:tupleInteraction4];

        if (!v37)
        {
          goto LABEL_22;
        }
      }

      candidateInteractions = [(BMIntelligenceEngineInteraction *)self candidateInteractions];
      candidateInteractions2 = [v5 candidateInteractions];
      if (candidateInteractions == candidateInteractions2)
      {
        v12 = 1;
      }

      else
      {
        candidateInteractions3 = [(BMIntelligenceEngineInteraction *)self candidateInteractions];
        candidateInteractions4 = [v5 candidateInteractions];
        v12 = [candidateInteractions3 isEqual:candidateInteractions4];
      }

      goto LABEL_23;
    }

LABEL_22:
    v12 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (NSUUID)appIntentInvocationUUID
{
  raw_appIntentInvocationUUID = self->_raw_appIntentInvocationUUID;
  if (raw_appIntentInvocationUUID)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_appIntentInvocationUUID toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v32[7] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  transcriptStatementId = [(BMIntelligenceEngineInteraction *)self transcriptStatementId];
  jsonDictionary = [transcriptStatementId jsonDictionary];

  appIntentInvocationUUID = [(BMIntelligenceEngineInteraction *)self appIntentInvocationUUID];
  uUIDString = [appIntentInvocationUUID UUIDString];

  sirikitIntentItemId = [(BMIntelligenceEngineInteraction *)self sirikitIntentItemId];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligenceEngineInteraction trigger](self, "trigger")}];
  tupleInteraction = [(BMIntelligenceEngineInteraction *)self tupleInteraction];
  jsonDictionary2 = [tupleInteraction jsonDictionary];

  _candidateInteractionsJSONArray = [(BMIntelligenceEngineInteraction *)self _candidateInteractionsJSONArray];
  v31[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v32[0] = null;
  v31[1] = @"transcriptStatementId";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v32[1] = null2;
  v31[2] = @"appIntentInvocationUUID";
  null3 = uUIDString;
  if (!uUIDString)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32[2] = null3;
  v31[3] = @"sirikitIntentItemId";
  null4 = sirikitIntentItemId;
  if (!sirikitIntentItemId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null3;
  v29 = v6;
  v32[3] = null4;
  v31[4] = @"trigger";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = jsonDictionary;
  v32[4] = null5;
  v31[5] = @"tupleInteraction";
  null6 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = null6;
  v31[6] = @"candidateInteractions";
  null7 = _candidateInteractionsJSONArray;
  if (!_candidateInteractionsJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = null7;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:7];
  if (_candidateInteractionsJSONArray)
  {
    if (jsonDictionary2)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (v11)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!jsonDictionary2)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v11)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!sirikitIntentItemId)
  {
  }

  if (uUIDString)
  {
    if (v20)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v29)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v29)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)_candidateInteractionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  candidateInteractions = [(BMIntelligenceEngineInteraction *)self candidateInteractions];
  v5 = [candidateInteractions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(candidateInteractions);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [candidateInteractions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMIntelligenceEngineInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v161[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  v7 = 0x1E695D000uLL;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = v6;
      v11 = [v9 alloc];
      [v10 doubleValue];
      v13 = v12;

      v7 = 0x1E695D000;
      v14 = [v11 initWithTimeIntervalSinceReferenceDate:v13];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v8 = [v15 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          goto LABEL_95;
        }

        v99 = objc_alloc(MEMORY[0x1E696ABC0]);
        v100 = dictionaryCopy;
        v101 = *MEMORY[0x1E698F240];
        v160 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
        v161[0] = v25;
        v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v161 forKeys:&v160 count:1];
        v103 = v101;
        dictionaryCopy = v100;
        v132 = v102;
        v104 = [v99 initWithDomain:v103 code:2 userInfo:?];
        v8 = 0;
        errorCopy = error;
        error = 0;
        *errorCopy = v104;
        goto LABEL_93;
      }

      v14 = v6;
    }

    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"transcriptStatementId"];
  if (!v16 || (v17 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v132 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v16;
    v140 = 0;
    v132 = [[BMIntelligenceEngineInteractionTranscriptStatementID alloc] initWithJSONDictionary:v25 error:&v140];
    v26 = v140;
    if (v26)
    {
      if (error)
      {
        v26 = v26;
        *error = v26;
      }

      error = 0;
      goto LABEL_93;
    }

LABEL_12:
    v18 = [dictionaryCopy objectForKeyedSubscript:@"appIntentInvocationUUID"];
    if (v18 && (v19 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
LABEL_92:

          v25 = v16;
          goto LABEL_93;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = v8;
        v36 = v16;
        v37 = *MEMORY[0x1E698F240];
        v154 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appIntentInvocationUUID"];
        v155 = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
        v41 = v37;
        v16 = v36;
        v8 = v35;
        v42 = v40;
        error = 0;
        *errorCopy2 = [v34 initWithDomain:v41 code:2 userInfo:v40];
        goto LABEL_90;
      }

      v127 = v8;
      v27 = v18;
      v28 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v27];
      if (!v28)
      {
        if (!error)
        {
          v39 = v27;
          v8 = v127;
          goto LABEL_91;
        }

        v94 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
        v95 = v16;
        v96 = *MEMORY[0x1E698F240];
        v156 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"appIntentInvocationUUID"];
        v157 = v42;
        v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
        v98 = v96;
        v16 = v95;
        *errorCopy3 = [v94 initWithDomain:v98 code:2 userInfo:v97];

        error = 0;
        v39 = v27;
        v8 = v127;
LABEL_90:

LABEL_91:
        goto LABEL_92;
      }

      v29 = v28;

      v126 = v29;
      v8 = v127;
      v7 = 0x1E695D000;
    }

    else
    {
      v126 = 0;
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"sirikitIntentItemId"];
    if (v20 && (v21 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v125 = 0;
          v39 = v126;
          goto LABEL_89;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v129 = v8;
        v44 = v16;
        v45 = *MEMORY[0x1E698F240];
        v152 = *MEMORY[0x1E696A578];
        errorCopy4 = error;
        v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sirikitIntentItemId"];
        v153 = v123;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
        v48 = v45;
        v16 = v44;
        v8 = v129;
        v125 = 0;
        error = 0;
        *errorCopy4 = [v43 initWithDomain:v48 code:2 userInfo:v47];
        v22 = v47;
LABEL_88:
        v39 = v126;

LABEL_89:
        v42 = v125;
        goto LABEL_90;
      }

      v125 = v20;
    }

    else
    {
      v125 = 0;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"trigger"];
    v121 = v6;
    v122 = v18;
    if (v22 && (v23 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy8 = error;
        v123 = v22;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v123 = 0;
            goto LABEL_88;
          }

          v124 = objc_alloc(MEMORY[0x1E696ABC0]);
          v119 = v16;
          v106 = *MEMORY[0x1E698F240];
          v150 = *MEMORY[0x1E696A578];
          errorCopy6 = error;
          v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"trigger"];
          v151 = v55;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
          v108 = v106;
          v16 = v119;
          v109 = [v124 initWithDomain:v108 code:2 userInfo:v56];
          v123 = 0;
          error = 0;
          *errorCopy6 = v109;
          v18 = v122;
          goto LABEL_86;
        }

        errorCopy8 = error;
        v123 = [MEMORY[0x1E696AD98] numberWithInt:BMIntelligenceEngineInteractionDonationTriggerFromString(v22)];
      }

      v7 = 0x1E695D000uLL;
    }

    else
    {
      errorCopy8 = error;
      v123 = 0;
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"tupleInteraction"];
    v120 = v22;
    if (!v49 || (v50 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v116 = v49;
      v117 = v16;
      v115 = 0;
LABEL_47:
      v51 = [dictionaryCopy objectForKeyedSubscript:@"candidateInteractions"];
      null = [*(v7 + 4016) null];
      v53 = [v51 isEqual:null];

      v130 = v8;
      if (v53)
      {
        v112 = errorCopy8;
        v114 = v20;

        v51 = 0;
LABEL_60:
        v54 = 0x1E695D000uLL;
        goto LABEL_61;
      }

      if (!v51)
      {
        v112 = errorCopy8;
        v114 = v20;
        goto LABEL_60;
      }

      objc_opt_class();
      v54 = 0x1E695D000;
      if (objc_opt_isKindOfClass())
      {
        v112 = errorCopy8;
        v114 = v20;
LABEL_61:
        v66 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v51, "count")}];
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v51 = v51;
        v67 = [v51 countByEnumeratingWithState:&v135 objects:v145 count:16];
        if (!v67)
        {
          goto LABEL_71;
        }

        v68 = v67;
        v69 = *v136;
        v111 = dictionaryCopy;
LABEL_63:
        v70 = 0;
        while (1)
        {
          if (*v136 != v69)
          {
            objc_enumerationMutation(v51);
          }

          v71 = *(*(&v135 + 1) + 8 * v70);
          v72 = *(v54 + 4016);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            dictionaryCopy = v111;
            v77 = v112;
            v6 = v121;
            v20 = v114;
            if (!v112)
            {
              goto LABEL_82;
            }

            v110 = objc_alloc(MEMORY[0x1E696ABC0]);
            v78 = v121;
            v79 = *MEMORY[0x1E698F240];
            v141 = *MEMORY[0x1E696A578];
            v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidateInteractions"];
            v142 = v73;
            v80 = MEMORY[0x1E695DF20];
            v81 = &v142;
            v82 = &v141;
            goto LABEL_76;
          }

          v73 = v71;
          v74 = [BMIntelligenceEngineInteractionCandidateInteraction alloc];
          v134 = 0;
          v75 = [(BMIntelligenceEngineInteractionCandidateInteraction *)v74 initWithJSONDictionary:v73 error:&v134];
          v76 = v134;
          if (v76)
          {
            v83 = v76;
            if (v112)
            {
              v86 = v76;
              *v112 = v83;
            }

            dictionaryCopy = v111;
            v6 = v121;
            v85 = v130;
            v20 = v114;
LABEL_81:

            v8 = v85;
LABEL_82:

            error = 0;
            goto LABEL_83;
          }

          [v66 addObject:v75];

          ++v70;
          v54 = 0x1E695D000;
          if (v68 == v70)
          {
            v68 = [v51 countByEnumeratingWithState:&v135 objects:v145 count:16];
            dictionaryCopy = v111;
            if (v68)
            {
              goto LABEL_63;
            }

LABEL_71:

            v56 = v115;
            error = -[BMIntelligenceEngineInteraction initWithAbsoluteTimestamp:transcriptStatementId:appIntentInvocationUUID:sirikitIntentItemId:trigger:tupleInteraction:candidateInteractions:](self, "initWithAbsoluteTimestamp:transcriptStatementId:appIntentInvocationUUID:sirikitIntentItemId:trigger:tupleInteraction:candidateInteractions:", v8, v132, v126, v125, [v123 intValue], v115, v66);
            self = error;
            v6 = v121;
            v20 = v114;
LABEL_84:

            v22 = v120;
            v55 = v116;
            goto LABEL_85;
          }
        }

        dictionaryCopy = v111;
        v77 = v112;
        v6 = v121;
        v20 = v114;
        if (!v112)
        {
          goto LABEL_82;
        }

        v110 = objc_alloc(MEMORY[0x1E696ABC0]);
        v78 = v121;
        v79 = *MEMORY[0x1E698F240];
        v143 = *MEMORY[0x1E696A578];
        v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"candidateInteractions"];
        v144 = v73;
        v80 = MEMORY[0x1E695DF20];
        v81 = &v144;
        v82 = &v143;
LABEL_76:
        v83 = [v80 dictionaryWithObjects:v81 forKeys:v82 count:1];
        v84 = v79;
        v6 = v78;
        v18 = v122;
        v85 = v130;
        *v77 = [v110 initWithDomain:v84 code:2 userInfo:v83];
        goto LABEL_81;
      }

      if (errorCopy8)
      {
        v89 = objc_alloc(MEMORY[0x1E696ABC0]);
        v90 = *MEMORY[0x1E698F240];
        v146 = *MEMORY[0x1E696A578];
        v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidateInteractions"];
        v147 = v66;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
        v91 = v20;
        v93 = v92 = v8;
        *errorCopy8 = [v89 initWithDomain:v90 code:2 userInfo:v93];

        v8 = v92;
        v20 = v91;
        error = 0;
        v6 = v121;
LABEL_83:
        v56 = v115;
        goto LABEL_84;
      }

      error = 0;
      v56 = v115;
      v55 = v116;
      v6 = v121;
LABEL_85:

      v16 = v117;
      goto LABEL_86;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = v49;
      v139 = 0;
      v56 = [[BMIntelligenceEngineInteractionTupleInteraction alloc] initWithJSONDictionary:v55 error:&v139];
      v57 = v139;
      if (!v57)
      {
        v115 = v56;
        v116 = v49;
        v117 = v16;

        v7 = 0x1E695D000;
        goto LABEL_47;
      }

      if (errorCopy8)
      {
        v57 = v57;
        *errorCopy8 = v57;
      }

      error = 0;
      v6 = v121;
    }

    else
    {
      v58 = v49;
      if (!errorCopy8)
      {
        error = 0;
        v6 = v121;
        v55 = v58;
        goto LABEL_87;
      }

      v118 = objc_alloc(MEMORY[0x1E696ABC0]);
      v131 = v8;
      v59 = v16;
      v60 = *MEMORY[0x1E698F240];
      v148 = *MEMORY[0x1E696A578];
      v61 = v20;
      v62 = errorCopy8;
      v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"tupleInteraction"];
      v149 = v63;
      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
      v65 = v60;
      v16 = v59;
      v8 = v131;
      *v62 = [v118 initWithDomain:v65 code:2 userInfo:v64];
      v20 = v61;
      v18 = v122;

      error = 0;
      v55 = v58;
      v56 = v63;
      v6 = v121;
    }

LABEL_86:

LABEL_87:
    goto LABEL_88;
  }

  if (error)
  {
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v128 = v8;
    v31 = v16;
    v32 = *MEMORY[0x1E698F240];
    v158 = *MEMORY[0x1E696A578];
    v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"transcriptStatementId"];
    v159 = v132;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
    *error = [v30 initWithDomain:v32 code:2 userInfo:v33];

    error = 0;
    v25 = v31;
    v8 = v128;
LABEL_93:

    v16 = v25;
  }

LABEL_95:
  v87 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceEngineInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_transcriptStatementId)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionTranscriptStatementID *)self->_transcriptStatementId writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_raw_appIntentInvocationUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sirikitIntentItemId)
  {
    PBDataWriterWriteStringField();
  }

  trigger = self->_trigger;
  PBDataWriterWriteUint32Field();
  if (self->_tupleInteraction)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionTupleInteraction *)self->_tupleInteraction writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_candidateInteractions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v18 = 0;
        PBDataWriterPlaceMark();
        [v12 writeTo:{toCopy, v14}];
        PBDataWriterRecallMark();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v41.receiver = self;
  v41.super_class = BMIntelligenceEngineInteraction;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_63;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_62;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v42) & 0x7F) << v8;
        if ((LOBYTE(v42) & 0x80) == 0)
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
        goto LABEL_62;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      if (v16 <= 5)
      {
        if (v16 == 4)
        {
          v30 = PBReaderReadString();
          sirikitIntentItemId = v5->_sirikitIntentItemId;
          v5->_sirikitIntentItemId = v30;
LABEL_47:

          goto LABEL_61;
        }

        if (v16 == 5)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v42) = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (LOBYTE(v42) & 0x7F) << v17;
            if ((LOBYTE(v42) & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ > 8)
            {
              goto LABEL_57;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 4)
          {
LABEL_57:
            LODWORD(v19) = 0;
          }

          v5->_trigger = v19;
          goto LABEL_61;
        }

LABEL_44:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_61;
      }

      if (v16 == 6)
      {
        v42 = 0.0;
        v43 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_65;
        }

        v31 = [[BMIntelligenceEngineInteractionTupleInteraction alloc] initByReadFrom:fromCopy];
        if (!v31)
        {
          goto LABEL_65;
        }

        v32 = 64;
LABEL_54:
        v33 = *(&v5->super.super.isa + v32);
        *(&v5->super.super.isa + v32) = v31;

        PBReaderRecallMark();
        goto LABEL_61;
      }

      if (v16 != 7)
      {
        goto LABEL_44;
      }

      v42 = 0.0;
      v43 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_65;
      }

      v26 = [[BMIntelligenceEngineInteractionCandidateInteraction alloc] initByReadFrom:fromCopy];
      if (!v26)
      {
        goto LABEL_65;
      }

      v27 = v26;
      [v6 addObject:v26];
      PBReaderRecallMark();

LABEL_61:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_62;
      }
    }

    switch(v16)
    {
      case 1:
        v5->_hasRaw_absoluteTimestamp = 1;
        v42 = 0.0;
        v28 = [fromCopy position] + 8;
        if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 8, v29 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_absoluteTimestamp = v42;
        goto LABEL_61;
      case 2:
        v42 = 0.0;
        v43 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_65;
        }

        v31 = [[BMIntelligenceEngineInteractionTranscriptStatementID alloc] initByReadFrom:fromCopy];
        if (!v31)
        {
          goto LABEL_65;
        }

        v32 = 48;
        goto LABEL_54;
      case 3:
        v24 = PBReaderReadData();
        if ([(NSData *)v24 length]!= 16)
        {

LABEL_65:
          goto LABEL_66;
        }

        sirikitIntentItemId = v5->_raw_appIntentInvocationUUID;
        v5->_raw_appIntentInvocationUUID = v24;
        goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_62:
  v36 = [v6 copy];
  candidateInteractions = v5->_candidateInteractions;
  v5->_candidateInteractions = v36;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_66:
    v39 = 0;
  }

  else
  {
LABEL_63:
    v39 = v5;
  }

  return v39;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
  transcriptStatementId = [(BMIntelligenceEngineInteraction *)self transcriptStatementId];
  appIntentInvocationUUID = [(BMIntelligenceEngineInteraction *)self appIntentInvocationUUID];
  sirikitIntentItemId = [(BMIntelligenceEngineInteraction *)self sirikitIntentItemId];
  v8 = BMIntelligenceEngineInteractionDonationTriggerAsString([(BMIntelligenceEngineInteraction *)self trigger]);
  tupleInteraction = [(BMIntelligenceEngineInteraction *)self tupleInteraction];
  candidateInteractions = [(BMIntelligenceEngineInteraction *)self candidateInteractions];
  v11 = [v3 initWithFormat:@"BMIntelligenceEngineInteraction with absoluteTimestamp: %@, transcriptStatementId: %@, appIntentInvocationUUID: %@, sirikitIntentItemId: %@, trigger: %@, tupleInteraction: %@, candidateInteractions: %@", absoluteTimestamp, transcriptStatementId, appIntentInvocationUUID, sirikitIntentItemId, v8, tupleInteraction, candidateInteractions];

  return v11;
}

- (BMIntelligenceEngineInteraction)initWithAbsoluteTimestamp:(id)timestamp transcriptStatementId:(id)id appIntentInvocationUUID:(id)d sirikitIntentItemId:(id)itemId trigger:(int)trigger tupleInteraction:(id)interaction candidateInteractions:(id)interactions
{
  v28[2] = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  idCopy = id;
  dCopy = d;
  itemIdCopy = itemId;
  interactionCopy = interaction;
  interactionsCopy = interactions;
  v27.receiver = self;
  v27.super_class = BMIntelligenceEngineInteraction;
  v19 = [(BMEventBase *)&v27 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v19->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v19->_hasRaw_absoluteTimestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_absoluteTimestamp = v20;
    objc_storeStrong(&v19->_transcriptStatementId, id);
    if (dCopy)
    {
      v28[0] = 0;
      v28[1] = 0;
      [dCopy getUUIDBytes:v28];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v28 length:16];
      raw_appIntentInvocationUUID = v19->_raw_appIntentInvocationUUID;
      v19->_raw_appIntentInvocationUUID = v21;
    }

    else
    {
      raw_appIntentInvocationUUID = v19->_raw_appIntentInvocationUUID;
      v19->_raw_appIntentInvocationUUID = 0;
    }

    objc_storeStrong(&v19->_sirikitIntentItemId, itemId);
    v19->_trigger = trigger;
    objc_storeStrong(&v19->_tupleInteraction, interaction);
    objc_storeStrong(&v19->_candidateInteractions, interactions);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transcriptStatementId" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appIntentInvocationUUID" number:3 type:14 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sirikitIntentItemId" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trigger" number:5 type:4 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tupleInteraction" number:6 type:14 subMessageClass:objc_opt_class()];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidateInteractions" number:7 type:14 subMessageClass:objc_opt_class()];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __42__BMIntelligenceEngineInteraction_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _candidateInteractionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __42__BMIntelligenceEngineInteraction_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 tupleInteraction];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __42__BMIntelligenceEngineInteraction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 transcriptStatementId];
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

    v8 = [[BMIntelligenceEngineInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end