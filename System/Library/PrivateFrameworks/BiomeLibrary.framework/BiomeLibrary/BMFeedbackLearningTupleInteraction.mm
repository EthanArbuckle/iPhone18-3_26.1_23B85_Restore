@interface BMFeedbackLearningTupleInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFeedbackLearningTupleInteraction)initWithEventId:(id)id sessionId:(id)sessionId absoluteTimestamp:(id)timestamp tupleInteraction:(id)interaction candidateInteractions:(id)interactions statementId:(id)statementId;
- (BMFeedbackLearningTupleInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (NSUUID)eventId;
- (NSUUID)sessionId;
- (id)_candidateInteractionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMFeedbackLearningTupleInteraction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eventId = [(BMFeedbackLearningTupleInteraction *)self eventId];
    eventId2 = [v5 eventId];
    v8 = eventId2;
    if (eventId == eventId2)
    {
    }

    else
    {
      eventId3 = [(BMFeedbackLearningTupleInteraction *)self eventId];
      eventId4 = [v5 eventId];
      v11 = [eventId3 isEqual:eventId4];

      if (!v11)
      {
        goto LABEL_28;
      }
    }

    sessionId = [(BMFeedbackLearningTupleInteraction *)self sessionId];
    sessionId2 = [v5 sessionId];
    v15 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMFeedbackLearningTupleInteraction *)self sessionId];
      sessionId4 = [v5 sessionId];
      v18 = [sessionId3 isEqual:sessionId4];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    absoluteTimestamp = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v21 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v24 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v24)
      {
        goto LABEL_28;
      }
    }

    tupleInteraction = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
    tupleInteraction2 = [v5 tupleInteraction];
    v27 = tupleInteraction2;
    if (tupleInteraction == tupleInteraction2)
    {
    }

    else
    {
      tupleInteraction3 = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
      tupleInteraction4 = [v5 tupleInteraction];
      v30 = [tupleInteraction3 isEqual:tupleInteraction4];

      if (!v30)
      {
        goto LABEL_28;
      }
    }

    candidateInteractions = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
    candidateInteractions2 = [v5 candidateInteractions];
    v33 = candidateInteractions2;
    if (candidateInteractions == candidateInteractions2)
    {
    }

    else
    {
      candidateInteractions3 = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
      candidateInteractions4 = [v5 candidateInteractions];
      v36 = [candidateInteractions3 isEqual:candidateInteractions4];

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
      statementId = [(BMFeedbackLearningTupleInteraction *)self statementId];
      v12 = statementId == [v5 statementId];
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
  eventId = [(BMFeedbackLearningTupleInteraction *)self eventId];
  uUIDString = [eventId UUIDString];

  sessionId = [(BMFeedbackLearningTupleInteraction *)self sessionId];
  uUIDString2 = [sessionId UUIDString];

  absoluteTimestamp = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v8 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  tupleInteraction = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
  jsonDictionary = [tupleInteraction jsonDictionary];

  _candidateInteractionsJSONArray = [(BMFeedbackLearningTupleInteraction *)self _candidateInteractionsJSONArray];
  if ([(BMFeedbackLearningTupleInteraction *)self hasStatementId])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMFeedbackLearningTupleInteraction statementId](self, "statementId")}];
  }

  else
  {
    v14 = 0;
  }

  v27 = uUIDString;
  v28[0] = @"eventId";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v26 = uUIDString2;
  v29[0] = null;
  v28[1] = @"sessionId";
  null2 = uUIDString2;
  if (!uUIDString2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29[1] = null2;
  v28[2] = @"absoluteTimestamp";
  null3 = v10;
  if (!v10)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29[2] = null3;
  v28[3] = @"tupleInteraction";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = null4;
  v28[4] = @"candidateInteractions";
  null5 = _candidateInteractionsJSONArray;
  if (!_candidateInteractionsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = null5;
  v28[5] = @"statementId";
  null6 = v14;
  if (!v14)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:{6, v24}];
  if (v14)
  {
    if (_candidateInteractionsJSONArray)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (_candidateInteractionsJSONArray)
    {
LABEL_21:
      if (jsonDictionary)
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

  if (!jsonDictionary)
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
  candidateInteractions = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
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

- (BMFeedbackLearningTupleInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v147[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"eventId"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
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
        selfCopy3 = 0;
        *errorCopy = [v40 initWithDomain:v47 code:2 userInfo:v46];
        goto LABEL_83;
      }

      selfCopy3 = 0;
      goto LABEL_85;
    }

    v8 = v7;
    v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v17)
    {
      if (!error)
      {
        selfCopy3 = 0;
        goto LABEL_84;
      }

      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v77 = *MEMORY[0x1E698F240];
      v146 = *MEMORY[0x1E696A578];
      v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"eventId"];
      v147[0] = v78;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:&v146 count:1];
      v80 = v77;
      v9 = v78;
      *errorCopy2 = [v75 initWithDomain:v80 code:2 userInfo:v79];

      goto LABEL_66;
    }

    v18 = v17;
    errorCopy4 = error;

    v8 = v18;
  }

  else
  {
    errorCopy4 = error;
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
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
          if (errorCopy4)
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
            *errorCopy4 = [v120 initWithDomain:v85 code:2 userInfo:v84];

            selfCopy3 = 0;
            v10 = v81;
          }

          else
          {
            selfCopy3 = 0;
            v10 = v19;
          }

          goto LABEL_82;
        }

        v21 = v20;

        v10 = v21;
        goto LABEL_7;
      }

      if (errorCopy4)
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
        selfCopy3 = 0;
        *errorCopy4 = [v48 initWithDomain:v55 code:2 userInfo:?];

        goto LABEL_82;
      }

LABEL_66:
      selfCopy3 = 0;
      goto LABEL_83;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
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
          if (errorCopy4)
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
            selfCopy3 = 0;
            *errorCopy4 = [v91 initWithDomain:v92 code:2 userInfo:?];

            goto LABEL_80;
          }

          v115 = 0;
          selfCopy3 = 0;
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

  v13 = [dictionaryCopy objectForKeyedSubscript:@"tupleInteraction"];
  v109 = v10;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v57 = v13;
      if (errorCopy4)
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
        *errorCopy4 = [v119 initWithDomain:v63 code:2 userInfo:v62];

        selfCopy3 = 0;
        v37 = v57;
      }

      else
      {
        selfCopy3 = 0;
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
      if (errorCopy4)
      {
        v38 = v38;
        *errorCopy4 = v38;
      }

      selfCopy3 = 0;
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

  v14 = [dictionaryCopy objectForKeyedSubscript:@"candidateInteractions"];
  null = [MEMORY[0x1E695DFB0] null];
  v16 = [v14 isEqual:null];

  v104 = v9;
  if (v16)
  {
    selfCopy2 = self;
    v102 = dictionaryCopy;

    v14 = 0;
  }

  else
  {
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy4)
        {
          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v73 = *MEMORY[0x1E698F240];
          v134 = *MEMORY[0x1E696A578];
          v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidateInteractions"];
          v135 = v118;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
          v74 = [v72 initWithDomain:v73 code:2 userInfo:v31];
          selfCopy3 = 0;
          *errorCopy4 = v74;
          goto LABEL_77;
        }

        selfCopy3 = 0;
        goto LABEL_78;
      }
    }

    selfCopy2 = self;
    v102 = dictionaryCopy;
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
        if (errorCopy4)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v131 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"candidateInteractions"];
          v132 = v27;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          *errorCopy4 = [v64 initWithDomain:v65 code:2 userInfo:v66];

LABEL_56:
          selfCopy3 = 0;
          v31 = v14;
          self = selfCopy2;
          dictionaryCopy = v102;
          v7 = v100;
LABEL_60:
          v10 = v109;
          goto LABEL_76;
        }

LABEL_63:
        selfCopy3 = 0;
        v31 = v14;
        self = selfCopy2;
        dictionaryCopy = v102;
        v7 = v100;
        v10 = v109;
        goto LABEL_77;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy4)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v129 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidateInteractions"];
          v130 = v27;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
          *errorCopy4 = [v67 initWithDomain:v68 code:2 userInfo:v69];

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
        if (errorCopy4)
        {
          v71 = v30;
          *errorCopy4 = v70;
        }

        selfCopy3 = 0;
        v31 = v14;
        self = selfCopy2;
        dictionaryCopy = v102;
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

  dictionaryCopy = v102;
  v27 = [v102 objectForKeyedSubscript:@"statementId"];
  if (!v27)
  {
    v31 = 0;
    self = selfCopy2;
    v10 = v109;
    goto LABEL_75;
  }

  objc_opt_class();
  self = selfCopy2;
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
    selfCopy3 = self;
  }

  else
  {
    v31 = errorCopy4;
    if (errorCopy4)
    {
      v93 = objc_alloc(MEMORY[0x1E696ABC0]);
      v94 = *MEMORY[0x1E698F240];
      v127 = *MEMORY[0x1E696A578];
      v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"statementId"];
      v128 = v95;
      v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
      *errorCopy4 = [v93 initWithDomain:v94 code:2 userInfo:v96];

      v31 = 0;
    }

    selfCopy3 = 0;
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
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackLearningTupleInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
    [(BMFeedbackLearningTupleInteractionTupleInteraction *)self->_tupleInteraction writeTo:toCopy];
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
        [v11 writeTo:{toCopy, v14}];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMFeedbackLearningTupleInteraction;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_58;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_57;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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

          v28 = [[BMFeedbackLearningTupleInteractionTupleInteraction alloc] initByReadFrom:fromCopy];
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

          v31 = [[BMFeedbackLearningTupleInteractionCandidateInteraction alloc] initByReadFrom:fromCopy];
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
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if ([fromCopy hasError])
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
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
        v17 = [fromCopy position] + 8;
        if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 8, v18 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  eventId = [(BMFeedbackLearningTupleInteraction *)self eventId];
  sessionId = [(BMFeedbackLearningTupleInteraction *)self sessionId];
  absoluteTimestamp = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
  tupleInteraction = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
  candidateInteractions = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMFeedbackLearningTupleInteraction statementId](self, "statementId")}];
  v10 = [v3 initWithFormat:@"BMFeedbackLearningTupleInteraction with eventId: %@, sessionId: %@, absoluteTimestamp: %@, tupleInteraction: %@, candidateInteractions: %@, statementId: %@", eventId, sessionId, absoluteTimestamp, tupleInteraction, candidateInteractions, v9];

  return v10;
}

- (BMFeedbackLearningTupleInteraction)initWithEventId:(id)id sessionId:(id)sessionId absoluteTimestamp:(id)timestamp tupleInteraction:(id)interaction candidateInteractions:(id)interactions statementId:(id)statementId
{
  v32 = *MEMORY[0x1E69E9840];
  idCopy = id;
  sessionIdCopy = sessionId;
  timestampCopy = timestamp;
  interactionCopy = interaction;
  interactionsCopy = interactions;
  statementIdCopy = statementId;
  v29.receiver = self;
  v29.super_class = BMFeedbackLearningTupleInteraction;
  v20 = [(BMEventBase *)&v29 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (idCopy)
    {
      v30 = 0;
      v31 = 0;
      [idCopy getUUIDBytes:&v30];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v30 length:16];
      raw_eventId = v20->_raw_eventId;
      v20->_raw_eventId = v21;
    }

    else
    {
      raw_eventId = v20->_raw_eventId;
      v20->_raw_eventId = 0;
    }

    if (sessionIdCopy)
    {
      v30 = 0;
      v31 = 0;
      [sessionIdCopy getUUIDBytes:&v30];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v30 length:16];
      raw_sessionId = v20->_raw_sessionId;
      v20->_raw_sessionId = v23;
    }

    else
    {
      raw_sessionId = v20->_raw_sessionId;
      v20->_raw_sessionId = 0;
    }

    if (timestampCopy)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v25 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v25;
    objc_storeStrong(&v20->_tupleInteraction, interaction);
    objc_storeStrong(&v20->_candidateInteractions, interactions);
    if (statementIdCopy)
    {
      v20->_hasStatementId = 1;
      unsignedIntValue = [statementIdCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasStatementId = 0;
    }

    v20->_statementId = unsignedIntValue;
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