@interface BMFeedbackLearningTupleInteraction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFeedbackLearningTupleInteraction)initWithEventId:(id)a3 sessionId:(id)a4 absoluteTimestamp:(id)a5 tupleInteraction:(id)a6 candidateInteractions:(id)a7 statementId:(id)a8;
- (BMFeedbackLearningTupleInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (NSUUID)eventId;
- (NSUUID)sessionId;
- (id)_candidateInteractionsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFeedbackLearningTupleInteraction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMFeedbackLearningTupleInteraction *)self eventId];
    v7 = [v5 eventId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMFeedbackLearningTupleInteraction *)self eventId];
      v10 = [v5 eventId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_28;
      }
    }

    v13 = [(BMFeedbackLearningTupleInteraction *)self sessionId];
    v14 = [v5 sessionId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMFeedbackLearningTupleInteraction *)self sessionId];
      v17 = [v5 sessionId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    v19 = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
    v20 = [v5 absoluteTimestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
      v23 = [v5 absoluteTimestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_28;
      }
    }

    v25 = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
    v26 = [v5 tupleInteraction];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
      v29 = [v5 tupleInteraction];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_28;
      }
    }

    v31 = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
    v32 = [v5 candidateInteractions];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
      v35 = [v5 candidateInteractions];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_28;
      }
    }

    if (!-[BMFeedbackLearningTupleInteraction hasStatementId](self, "hasStatementId") && ![v5 hasStatementId])
    {
      v12 = 1;
      goto LABEL_29;
    }

    if (-[BMFeedbackLearningTupleInteraction hasStatementId](self, "hasStatementId") && [v5 hasStatementId])
    {
      v37 = [(BMFeedbackLearningTupleInteraction *)self statementId];
      v12 = v37 == [v5 statementId];
LABEL_29:

      goto LABEL_30;
    }

LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  v12 = 0;
LABEL_30:

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

- (NSUUID)sessionId
{
  raw_sessionId = self->_raw_sessionId;
  if (raw_sessionId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_sessionId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)eventId
{
  raw_eventId = self->_raw_eventId;
  if (raw_eventId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_eventId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v29[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMFeedbackLearningTupleInteraction *)self eventId];
  v4 = [v3 UUIDString];

  v5 = [(BMFeedbackLearningTupleInteraction *)self sessionId];
  v6 = [v5 UUIDString];

  v7 = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
    [v9 timeIntervalSinceReferenceDate];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
  v12 = [v11 jsonDictionary];

  v13 = [(BMFeedbackLearningTupleInteraction *)self _candidateInteractionsJSONArray];
  if ([(BMFeedbackLearningTupleInteraction *)self hasStatementId])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMFeedbackLearningTupleInteraction statementId](self, "statementId")}];
  }

  else
  {
    v14 = 0;
  }

  v27 = v4;
  v28[0] = @"eventId";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v15;
  v26 = v6;
  v29[0] = v15;
  v28[1] = @"sessionId";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29[1] = v16;
  v28[2] = @"absoluteTimestamp";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29[2] = v17;
  v28[3] = @"tupleInteraction";
  v18 = v12;
  if (!v12)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = v18;
  v28[4] = @"candidateInteractions";
  v19 = v13;
  if (!v13)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = v19;
  v28[5] = @"statementId";
  v20 = v14;
  if (!v14)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:{6, v24}];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v13)
    {
LABEL_21:
      if (v12)
      {
        goto LABEL_22;
      }

LABEL_32:

      if (v10)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }
  }

  if (!v12)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (v10)
  {
    goto LABEL_23;
  }

LABEL_33:

LABEL_23:
  if (!v26)
  {
  }

  if (!v27)
  {
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_candidateInteractionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
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

- (BMFeedbackLearningTupleInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v147[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"eventId"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = a4;
        v42 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        v43 = v7;
        v44 = objc_alloc(MEMORY[0x1E696AEC0]);
        v97 = objc_opt_class();
        v45 = v44;
        v7 = v43;
        v8 = [v45 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v97, @"eventId"];
        v145 = v8;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v47 = v42;
        v9 = v46;
        v39 = 0;
        *v41 = [v40 initWithDomain:v47 code:2 userInfo:v46];
        goto LABEL_83;
      }

      v39 = 0;
      goto LABEL_85;
    }

    v8 = v7;
    v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v17)
    {
      if (!a4)
      {
        v39 = 0;
        goto LABEL_84;
      }

      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
      v76 = a4;
      v77 = *MEMORY[0x1E698F240];
      v146 = *MEMORY[0x1E696A578];
      v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"eventId"];
      v147[0] = v78;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:&v146 count:1];
      v80 = v77;
      v9 = v78;
      *v76 = [v75 initWithDomain:v80 code:2 userInfo:v79];

      goto LABEL_66;
    }

    v18 = v17;
    v114 = a4;

    v8 = v18;
  }

  else
  {
    v114 = a4;
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"sessionId"];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v9;
        v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v19];
        if (!v20)
        {
          v81 = v19;
          if (v114)
          {
            v120 = objc_alloc(MEMORY[0x1E696ABC0]);
            v82 = v9;
            v83 = *MEMORY[0x1E698F240];
            v142 = *MEMORY[0x1E696A578];
            v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"sessionId"];
            v143 = v117;
            v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
            v85 = v83;
            v9 = v82;
            *v114 = [v120 initWithDomain:v85 code:2 userInfo:v84];

            v39 = 0;
            v10 = v81;
          }

          else
          {
            v39 = 0;
            v10 = v19;
          }

          goto LABEL_82;
        }

        v21 = v20;

        v10 = v21;
        goto LABEL_7;
      }

      if (v114)
      {
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = v9;
        v50 = *MEMORY[0x1E698F240];
        v140 = *MEMORY[0x1E696A578];
        v51 = v8;
        v52 = objc_alloc(MEMORY[0x1E696AEC0]);
        v98 = objc_opt_class();
        v53 = v52;
        v8 = v51;
        v10 = [v53 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v98, @"sessionId"];
        v141 = v10;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
        v55 = v50;
        v9 = v49;
        v116 = v54;
        v39 = 0;
        *v114 = [v48 initWithDomain:v55 code:2 userInfo:?];

        goto LABEL_82;
      }

LABEL_66:
      v39 = 0;
      goto LABEL_83;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
  v110 = v11;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = MEMORY[0x1E695DF00];
      v33 = v12;
      v34 = [v32 alloc];
      [v33 doubleValue];
      v36 = v35;

      v115 = [v34 initWithTimeIntervalSinceReferenceDate:v36];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v115 = [v56 dateFromString:v12];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v114)
          {
            v106 = v9;
            v88 = objc_alloc(MEMORY[0x1E696ABC0]);
            v108 = v8;
            v89 = *MEMORY[0x1E698F240];
            v138 = *MEMORY[0x1E696A578];
            v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
            v139 = v37;
            v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
            v91 = v88;
            v92 = v89;
            v9 = v106;
            v8 = v108;
            v113 = v90;
            v115 = 0;
            v39 = 0;
            *v114 = [v91 initWithDomain:v92 code:2 userInfo:?];

            goto LABEL_80;
          }

          v115 = 0;
          v39 = 0;
          goto LABEL_81;
        }

        v115 = v12;
      }
    }
  }

  else
  {
    v115 = 0;
  }

  v13 = [v6 objectForKeyedSubscript:@"tupleInteraction"];
  v109 = v10;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v57 = v13;
      if (v114)
      {
        v119 = objc_alloc(MEMORY[0x1E696ABC0]);
        v105 = v9;
        v58 = *MEMORY[0x1E698F240];
        v136 = *MEMORY[0x1E696A578];
        v59 = v8;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        v99 = objc_opt_class();
        v61 = v60;
        v8 = v59;
        v112 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v99, @"tupleInteraction"];
        v137 = v112;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
        v63 = v58;
        v9 = v105;
        *v114 = [v119 initWithDomain:v63 code:2 userInfo:v62];

        v39 = 0;
        v37 = v57;
      }

      else
      {
        v39 = 0;
        v37 = v13;
      }

      goto LABEL_80;
    }

    v37 = v13;
    v126 = 0;
    v111 = [[BMFeedbackLearningTupleInteractionTupleInteraction alloc] initWithJSONDictionary:v37 error:&v126];
    v38 = v126;
    if (v38)
    {
      if (v114)
      {
        v38 = v38;
        *v114 = v38;
      }

      v39 = 0;
      goto LABEL_79;
    }

    v103 = v13;
    v107 = v8;
  }

  else
  {
    v103 = v13;
    v107 = v8;
    v111 = 0;
  }

  v14 = [v6 objectForKeyedSubscript:@"candidateInteractions"];
  v15 = [MEMORY[0x1E695DFB0] null];
  v16 = [v14 isEqual:v15];

  v104 = v9;
  if (v16)
  {
    v101 = self;
    v102 = v6;

    v14 = 0;
  }

  else
  {
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v114)
        {
          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v73 = *MEMORY[0x1E698F240];
          v134 = *MEMORY[0x1E696A578];
          v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidateInteractions"];
          v135 = v118;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
          v74 = [v72 initWithDomain:v73 code:2 userInfo:v31];
          v39 = 0;
          *v114 = v74;
          goto LABEL_77;
        }

        v39 = 0;
        goto LABEL_78;
      }
    }

    v101 = self;
    v102 = v6;
  }

  v118 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v14 = v14;
  v22 = [v14 countByEnumeratingWithState:&v122 objects:v133 count:16];
  if (!v22)
  {
    goto LABEL_34;
  }

  v23 = v22;
  v24 = *v123;
  v100 = v7;
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v123 != v24)
      {
        objc_enumerationMutation(v14);
      }

      v26 = *(*(&v122 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v114)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v131 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"candidateInteractions"];
          v132 = v27;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          *v114 = [v64 initWithDomain:v65 code:2 userInfo:v66];

LABEL_56:
          v39 = 0;
          v31 = v14;
          self = v101;
          v6 = v102;
          v7 = v100;
LABEL_60:
          v10 = v109;
          goto LABEL_76;
        }

LABEL_63:
        v39 = 0;
        v31 = v14;
        self = v101;
        v6 = v102;
        v7 = v100;
        v10 = v109;
        goto LABEL_77;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v114)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v129 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidateInteractions"];
          v130 = v27;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
          *v114 = [v67 initWithDomain:v68 code:2 userInfo:v69];

          goto LABEL_56;
        }

        goto LABEL_63;
      }

      v27 = v26;
      v28 = [BMFeedbackLearningTupleInteractionCandidateInteraction alloc];
      v121 = 0;
      v29 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)v28 initWithJSONDictionary:v27 error:&v121];
      v30 = v121;
      if (v30)
      {
        v70 = v30;
        v7 = v100;
        if (v114)
        {
          v71 = v30;
          *v114 = v70;
        }

        v39 = 0;
        v31 = v14;
        self = v101;
        v6 = v102;
        goto LABEL_60;
      }

      [v118 addObject:v29];
    }

    v23 = [v14 countByEnumeratingWithState:&v122 objects:v133 count:16];
    v7 = v100;
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v6 = v102;
  v27 = [v102 objectForKeyedSubscript:@"statementId"];
  if (!v27)
  {
    v31 = 0;
    self = v101;
    v10 = v109;
    goto LABEL_75;
  }

  objc_opt_class();
  self = v101;
  v10 = v109;
  if (objc_opt_isKindOfClass())
  {
    v31 = 0;
    goto LABEL_75;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v27;
LABEL_75:
    self = [(BMFeedbackLearningTupleInteraction *)self initWithEventId:v107 sessionId:v10 absoluteTimestamp:v115 tupleInteraction:v111 candidateInteractions:v118 statementId:v31];
    v39 = self;
  }

  else
  {
    v31 = v114;
    if (v114)
    {
      v93 = objc_alloc(MEMORY[0x1E696ABC0]);
      v94 = *MEMORY[0x1E698F240];
      v127 = *MEMORY[0x1E696A578];
      v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"statementId"];
      v128 = v95;
      v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      *v114 = [v93 initWithDomain:v94 code:2 userInfo:v96];

      v31 = 0;
    }

    v39 = 0;
  }

LABEL_76:

LABEL_77:
  v9 = v104;
LABEL_78:

  v37 = v103;
  v8 = v107;
LABEL_79:

LABEL_80:
  v12 = v110;
LABEL_81:

LABEL_82:
LABEL_83:

LABEL_84:
LABEL_85:

  v86 = *MEMORY[0x1E69E9840];
  return v39;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackLearningTupleInteraction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_raw_eventId)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_raw_sessionId)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_tupleInteraction)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMFeedbackLearningTupleInteractionTupleInteraction *)self->_tupleInteraction writeTo:v4];
    PBDataWriterRecallMark();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_candidateInteractions;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v18 = 0;
        PBDataWriterPlaceMark();
        [v11 writeTo:{v4, v14}];
        PBDataWriterRecallMark();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  if (self->_hasStatementId)
  {
    statementId = self->_statementId;
    PBDataWriterWriteUint32Field();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = BMFeedbackLearningTupleInteraction;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_58;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_57;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v41) & 0x7F) << v8;
        if ((LOBYTE(v41) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_57;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      switch(v16)
      {
        case 4:
          v41 = 0.0;
          v42 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_60;
          }

          v28 = [[BMFeedbackLearningTupleInteractionTupleInteraction alloc] initByReadFrom:v4];
          if (!v28)
          {
            goto LABEL_60;
          }

          tupleInteraction = v5->_tupleInteraction;
          v5->_tupleInteraction = v28;

          PBReaderRecallMark();
          break;
        case 5:
          v41 = 0.0;
          v42 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_60;
          }

          v31 = [[BMFeedbackLearningTupleInteractionCandidateInteraction alloc] initByReadFrom:v4];
          if (!v31)
          {
            goto LABEL_60;
          }

          v32 = v31;
          [v6 addObject:v31];
          PBReaderRecallMark();

          break;
        case 6:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasStatementId = 1;
          while (1)
          {
            LOBYTE(v41) = 0;
            v22 = [v4 position] + 1;
            if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
            {
              v24 = [v4 data];
              [v24 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v21 |= (LOBYTE(v41) & 0x7F) << v19;
            if ((LOBYTE(v41) & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v14 = v20++ >= 9;
            if (v14)
            {
              v25 = 0;
              goto LABEL_53;
            }
          }

          if ([v4 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_53:
          v5->_statementId = v25;
          break;
        default:
LABEL_42:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_60;
          }

          break;
      }

LABEL_56:
      v34 = [v4 position];
      if (v34 >= [v4 length])
      {
        goto LABEL_57;
      }
    }

    switch(v16)
    {
      case 1:
        v26 = PBReaderReadData();
        if ([v26 length] != 16)
        {
          goto LABEL_59;
        }

        v27 = 16;
LABEL_46:
        v30 = *(&v5->super.super.isa + v27);
        *(&v5->super.super.isa + v27) = v26;

        goto LABEL_56;
      case 2:
        v26 = PBReaderReadData();
        if ([v26 length] != 16)
        {
LABEL_59:

LABEL_60:
          goto LABEL_61;
        }

        v27 = 24;
        goto LABEL_46;
      case 3:
        v5->_hasRaw_absoluteTimestamp = 1;
        v41 = 0.0;
        v17 = [v4 position] + 8;
        if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 8, v18 <= objc_msgSend(v4, "length")))
        {
          v33 = [v4 data];
          [v33 getBytes:&v41 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_absoluteTimestamp = v41;
        goto LABEL_56;
    }

    goto LABEL_42;
  }

LABEL_57:
  v35 = [v6 copy];
  candidateInteractions = v5->_candidateInteractions;
  v5->_candidateInteractions = v35;

  v37 = [v4 hasError];
  if (v37)
  {
LABEL_61:
    v38 = 0;
  }

  else
  {
LABEL_58:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMFeedbackLearningTupleInteraction *)self eventId];
  v5 = [(BMFeedbackLearningTupleInteraction *)self sessionId];
  v6 = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
  v7 = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
  v8 = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMFeedbackLearningTupleInteraction statementId](self, "statementId")}];
  v10 = [v3 initWithFormat:@"BMFeedbackLearningTupleInteraction with eventId: %@, sessionId: %@, absoluteTimestamp: %@, tupleInteraction: %@, candidateInteractions: %@, statementId: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMFeedbackLearningTupleInteraction)initWithEventId:(id)a3 sessionId:(id)a4 absoluteTimestamp:(id)a5 tupleInteraction:(id)a6 candidateInteractions:(id)a7 statementId:(id)a8
{
  v32 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v29.receiver = self;
  v29.super_class = BMFeedbackLearningTupleInteraction;
  v20 = [(BMEventBase *)&v29 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v30 = 0;
      v31 = 0;
      [v14 getUUIDBytes:&v30];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v30 length:16];
      raw_eventId = v20->_raw_eventId;
      v20->_raw_eventId = v21;
    }

    else
    {
      raw_eventId = v20->_raw_eventId;
      v20->_raw_eventId = 0;
    }

    if (v15)
    {
      v30 = 0;
      v31 = 0;
      [v15 getUUIDBytes:&v30];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v30 length:16];
      raw_sessionId = v20->_raw_sessionId;
      v20->_raw_sessionId = v23;
    }

    else
    {
      raw_sessionId = v20->_raw_sessionId;
      v20->_raw_sessionId = 0;
    }

    if (v16)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [v16 timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v25 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v25;
    objc_storeStrong(&v20->_tupleInteraction, a6);
    objc_storeStrong(&v20->_candidateInteractions, a7);
    if (v19)
    {
      v20->_hasStatementId = 1;
      v26 = [v19 unsignedIntValue];
    }

    else
    {
      v26 = 0;
      v20->_hasStatementId = 0;
    }

    v20->_statementId = v26;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventId" number:1 type:14 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:14 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tupleInteraction" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidateInteractions" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"statementId" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:6 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:3];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tupleInteraction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_223];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidateInteractions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_225];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"statementId" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __45__BMFeedbackLearningTupleInteraction_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _candidateInteractionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __45__BMFeedbackLearningTupleInteraction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 tupleInteraction];
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

    v8 = [[BMFeedbackLearningTupleInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end