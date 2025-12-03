@interface BMProactiveHarvestingQuery
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingQuery)initWithAbsoluteTimestamp:(id)timestamp query:(id)query results:(id)results uniqueID:(id)d contentProtection:(id)protection personaId:(id)id;
- (BMProactiveHarvestingQuery)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_resultsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingQuery

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    query = [(BMProactiveHarvestingQuery *)self query];
    query2 = [v5 query];
    v15 = query2;
    if (query == query2)
    {
    }

    else
    {
      query3 = [(BMProactiveHarvestingQuery *)self query];
      query4 = [v5 query];
      v18 = [query3 isEqual:query4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    results = [(BMProactiveHarvestingQuery *)self results];
    results2 = [v5 results];
    v21 = results2;
    if (results == results2)
    {
    }

    else
    {
      results3 = [(BMProactiveHarvestingQuery *)self results];
      results4 = [v5 results];
      v24 = [results3 isEqual:results4];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    uniqueID = [(BMProactiveHarvestingQuery *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v27 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingQuery *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v30 = [uniqueID3 isEqual:uniqueID4];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    contentProtection = [(BMProactiveHarvestingQuery *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v33 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingQuery *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v36 = [contentProtection3 isEqual:contentProtection4];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    personaId = [(BMProactiveHarvestingQuery *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingQuery *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

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
  v26[6] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  query = [(BMProactiveHarvestingQuery *)self query];
  _resultsJSONArray = [(BMProactiveHarvestingQuery *)self _resultsJSONArray];
  uniqueID = [(BMProactiveHarvestingQuery *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingQuery *)self contentProtection];
  personaId = [(BMProactiveHarvestingQuery *)self personaId];
  v25[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v26[0] = null;
  v25[1] = @"query";
  null2 = query;
  if (!query)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v26[1] = null2;
  v25[2] = @"results";
  null3 = _resultsJSONArray;
  if (!_resultsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v6;
  v26[2] = null3;
  v25[3] = @"uniqueID";
  null4 = uniqueID;
  if (!uniqueID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"contentProtection";
  null5 = contentProtection;
  if (!contentProtection)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"personaId";
  null6 = personaId;
  if (!personaId)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (uniqueID)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!contentProtection)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (uniqueID)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  if (_resultsJSONArray)
  {
    if (query)
    {
      goto LABEL_21;
    }

LABEL_29:

    if (v24)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!query)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (v24)
  {
    goto LABEL_22;
  }

LABEL_30:

LABEL_22:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_resultsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  results = [(BMProactiveHarvestingQuery *)self results];
  v5 = [results countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(results);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [results countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMProactiveHarvestingQuery)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v104[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v7 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        v70 = objc_opt_class();
        v61 = v60;
        self = selfCopy;
        v17 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v70, @"absoluteTimestamp"];
        v104[0] = v17;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
        v62 = [v57 initWithDomain:v58 code:2 userInfo:v16];
        v7 = 0;
        selfCopy4 = 0;
        *error = v62;
        goto LABEL_79;
      }

      v7 = 0;
      selfCopy4 = 0;
      goto LABEL_80;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"query"];
  v78 = v15;
  v79 = v6;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v31 = v7;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v101 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"query"];
        v102 = v18;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v35 = v32;
        v7 = v31;
        v82 = v34;
        v17 = 0;
        selfCopy4 = 0;
        *error = [v35 initWithDomain:v33 code:2 userInfo:?];

        goto LABEL_78;
      }

      v17 = 0;
      selfCopy4 = 0;
      goto LABEL_79;
    }

    v77 = v7;
    v17 = v16;
  }

  else
  {
    v77 = v7;
    v17 = 0;
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"results"];
  null = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:null];

  v76 = v17;
  if (v20)
  {
    selfCopy3 = self;

    v18 = 0;
  }

  else
  {
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v99 = *MEMORY[0x1E696A578];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"results"];
          v100 = v81;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          selfCopy4 = 0;
          *error = [v46 initWithDomain:v47 code:2 userInfo:v30];
          v7 = v77;
          goto LABEL_77;
        }

        selfCopy4 = 0;
        v7 = v77;
        goto LABEL_78;
      }
    }

    selfCopy3 = self;
  }

  v81 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v18 = v18;
  v21 = [v18 countByEnumeratingWithState:&v84 objects:v98 count:16];
  if (!v21)
  {
    goto LABEL_27;
  }

  v22 = v21;
  v23 = *v85;
  v73 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v85 != v23)
      {
        objc_enumerationMutation(v18);
      }

      v25 = *(*(&v84 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"results"];
          v97 = v26;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v41 = v38;
          v42 = v39;
LABEL_38:
          selfCopy4 = 0;
          *errorCopy2 = [v41 initWithDomain:v42 code:2 userInfo:v40];
          v30 = v18;
          dictionaryCopy = v73;
          self = selfCopy3;
          v17 = v76;
          v7 = v77;
          goto LABEL_75;
        }

LABEL_44:
        selfCopy4 = 0;
        v30 = v18;
        dictionaryCopy = v73;
        self = selfCopy3;
        v17 = v76;
        v7 = v77;
        goto LABEL_77;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"results"];
          v95 = v26;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v41 = v43;
          v42 = v44;
          goto LABEL_38;
        }

        goto LABEL_44;
      }

      v26 = v25;
      v27 = [BMProactiveHarvestingQueryResult alloc];
      v83 = 0;
      v28 = [(BMProactiveHarvestingQueryResult *)v27 initWithJSONDictionary:v26 error:&v83];
      v29 = v83;
      if (v29)
      {
        v40 = v29;
        if (error)
        {
          v45 = v29;
          *error = v40;
        }

        selfCopy4 = 0;
        v30 = v18;
        dictionaryCopy = v73;
        self = selfCopy3;
        goto LABEL_74;
      }

      [v81 addObject:v28];
    }

    v22 = [v18 countByEnumeratingWithState:&v84 objects:v98 count:16];
    dictionaryCopy = v73;
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v26 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (!v26)
  {
    v30 = 0;
    self = selfCopy3;
    goto LABEL_48;
  }

  objc_opt_class();
  self = selfCopy3;
  if (objc_opt_isKindOfClass())
  {
    v30 = 0;
LABEL_48:
    v48 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
    v75 = v48;
    if (v48 && (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v49;
        goto LABEL_51;
      }

      if (error)
      {
        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = *MEMORY[0x1E698F240];
        v90 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
        v91 = v51;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v65 = [v63 initWithDomain:v64 code:2 userInfo:v50];
        v40 = 0;
        selfCopy4 = 0;
        *error = v65;
        goto LABEL_72;
      }

      v40 = 0;
      selfCopy4 = 0;
    }

    else
    {
      v40 = 0;
LABEL_51:
      v50 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
      if (!v50 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v51 = 0;
        goto LABEL_54;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v51 = v50;
LABEL_54:
        self = [(BMProactiveHarvestingQuery *)self initWithAbsoluteTimestamp:v77 query:v17 results:v81 uniqueID:v30 contentProtection:v40 personaId:v51];
        selfCopy4 = self;
      }

      else
      {
        if (error)
        {
          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = *MEMORY[0x1E698F240];
          v88 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
          v89 = v66;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          *error = [v72 initWithDomain:v71 code:2 userInfo:v67];
        }

        v51 = 0;
        selfCopy4 = 0;
      }

LABEL_72:

      v49 = v75;
    }

LABEL_73:

LABEL_74:
    v7 = v77;
LABEL_75:
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v26;
      goto LABEL_48;
    }

    if (error)
    {
      v52 = objc_alloc(MEMORY[0x1E696ABC0]);
      v53 = *MEMORY[0x1E698F240];
      v92 = *MEMORY[0x1E696A578];
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
      v93 = v40;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v55 = v53;
      v49 = v54;
      v56 = [v52 initWithDomain:v55 code:2 userInfo:v54];
      v30 = 0;
      selfCopy4 = 0;
      *error = v56;
      goto LABEL_73;
    }

    v30 = 0;
    selfCopy4 = 0;
    v7 = v77;
  }

LABEL_77:
LABEL_78:

  v16 = v78;
  v6 = v79;
LABEL_79:

LABEL_80:
  v68 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingQuery *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_query)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_results;
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

  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMProactiveHarvestingQuery;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_42;
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
        goto LABEL_42;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 3)
      {
        break;
      }

      if (v16 == 1)
      {
        v5->_hasRaw_absoluteTimestamp = 1;
        v32[0] = 0;
        v21 = [fromCopy position] + 8;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 8, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        *&v5->_raw_absoluteTimestamp = v32[0];
        goto LABEL_38;
      }

      if (v16 == 2)
      {
        v19 = PBReaderReadString();
        v20 = 40;
        goto LABEL_37;
      }

      if (v16 != 3)
      {
        goto LABEL_33;
      }

      v32[0] = 0;
      v32[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMProactiveHarvestingQueryResult alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_46:

        goto LABEL_43;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_38:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_42;
      }
    }

    switch(v16)
    {
      case 4:
        v19 = PBReaderReadString();
        v20 = 56;
        goto LABEL_37;
      case 5:
        v19 = PBReaderReadString();
        v20 = 64;
        goto LABEL_37;
      case 6:
        v19 = PBReaderReadString();
        v20 = 72;
LABEL_37:
        v23 = *(&v5->super.super.isa + v20);
        *(&v5->super.super.isa + v20) = v19;

        goto LABEL_38;
    }

LABEL_33:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

LABEL_42:
  v26 = [v6 copy];
  results = v5->_results;
  v5->_results = v26;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_43:
    v29 = 0;
  }

  else
  {
LABEL_44:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
  query = [(BMProactiveHarvestingQuery *)self query];
  results = [(BMProactiveHarvestingQuery *)self results];
  uniqueID = [(BMProactiveHarvestingQuery *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingQuery *)self contentProtection];
  personaId = [(BMProactiveHarvestingQuery *)self personaId];
  v10 = [v3 initWithFormat:@"BMProactiveHarvestingQuery with absoluteTimestamp: %@, query: %@, results: %@, uniqueID: %@, contentProtection: %@, personaId: %@", absoluteTimestamp, query, results, uniqueID, contentProtection, personaId];

  return v10;
}

- (BMProactiveHarvestingQuery)initWithAbsoluteTimestamp:(id)timestamp query:(id)query results:(id)results uniqueID:(id)d contentProtection:(id)protection personaId:(id)id
{
  timestampCopy = timestamp;
  queryCopy = query;
  resultsCopy = results;
  dCopy = d;
  protectionCopy = protection;
  idCopy = id;
  v23.receiver = self;
  v23.super_class = BMProactiveHarvestingQuery;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v18->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_absoluteTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_absoluteTimestamp = v19;
    objc_storeStrong(&v18->_query, query);
    objc_storeStrong(&v18->_results, results);
    objc_storeStrong(&v18->_uniqueID, d);
    objc_storeStrong(&v18->_contentProtection, protection);
    objc_storeStrong(&v18->_personaId, id);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"query" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"results" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"query" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"results_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_28195];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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

id __37__BMProactiveHarvestingQuery_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _resultsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingQuery alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end