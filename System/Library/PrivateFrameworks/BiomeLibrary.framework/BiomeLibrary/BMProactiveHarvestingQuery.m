@interface BMProactiveHarvestingQuery
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingQuery)initWithAbsoluteTimestamp:(id)a3 query:(id)a4 results:(id)a5 uniqueID:(id)a6 contentProtection:(id)a7 personaId:(id)a8;
- (BMProactiveHarvestingQuery)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_resultsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingQuery

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMProactiveHarvestingQuery *)self query];
    v14 = [v5 query];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingQuery *)self query];
      v17 = [v5 query];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMProactiveHarvestingQuery *)self results];
    v20 = [v5 results];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingQuery *)self results];
      v23 = [v5 results];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMProactiveHarvestingQuery *)self uniqueID];
    v26 = [v5 uniqueID];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingQuery *)self uniqueID];
      v29 = [v5 uniqueID];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    v31 = [(BMProactiveHarvestingQuery *)self contentProtection];
    v32 = [v5 contentProtection];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingQuery *)self contentProtection];
      v35 = [v5 contentProtection];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    v38 = [(BMProactiveHarvestingQuery *)self personaId];
    v39 = [v5 personaId];
    if (v38 == v39)
    {
      v12 = 1;
    }

    else
    {
      v40 = [(BMProactiveHarvestingQuery *)self personaId];
      v41 = [v5 personaId];
      v12 = [v40 isEqual:v41];
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
  v3 = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMProactiveHarvestingQuery *)self query];
  v8 = [(BMProactiveHarvestingQuery *)self _resultsJSONArray];
  v9 = [(BMProactiveHarvestingQuery *)self uniqueID];
  v10 = [(BMProactiveHarvestingQuery *)self contentProtection];
  v11 = [(BMProactiveHarvestingQuery *)self personaId];
  v25[0] = @"absoluteTimestamp";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v12;
  v26[0] = v12;
  v25[1] = @"query";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v13;
  v26[1] = v13;
  v25[2] = @"results";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v6;
  v26[2] = v14;
  v25[3] = @"uniqueID";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v15;
  v25[4] = @"contentProtection";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v16;
  v25[5] = @"personaId";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (v9)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!v10)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v9)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  if (v8)
  {
    if (v7)
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

  if (!v7)
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
  v4 = [(BMProactiveHarvestingQuery *)self results];
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

- (BMProactiveHarvestingQuery)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v104[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
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
      if (a4)
      {
        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v59 = self;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        v70 = objc_opt_class();
        v61 = v60;
        self = v59;
        v17 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v70, @"absoluteTimestamp"];
        v104[0] = v17;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
        v62 = [v57 initWithDomain:v58 code:2 userInfo:v16];
        v7 = 0;
        v36 = 0;
        *a4 = v62;
        goto LABEL_79;
      }

      v7 = 0;
      v36 = 0;
      goto LABEL_80;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [v5 objectForKeyedSubscript:@"query"];
  v78 = v15;
  v79 = v6;
  if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        v36 = 0;
        *a4 = [v35 initWithDomain:v33 code:2 userInfo:?];

        goto LABEL_78;
      }

      v17 = 0;
      v36 = 0;
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

  v18 = [v5 objectForKeyedSubscript:@"results"];
  v19 = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:v19];

  v76 = v17;
  if (v20)
  {
    v74 = self;

    v18 = 0;
  }

  else
  {
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v99 = *MEMORY[0x1E696A578];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"results"];
          v100 = v81;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          v36 = 0;
          *a4 = [v46 initWithDomain:v47 code:2 userInfo:v30];
          v7 = v77;
          goto LABEL_77;
        }

        v36 = 0;
        v7 = v77;
        goto LABEL_78;
      }
    }

    v74 = self;
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
  v73 = v5;
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
        v37 = a4;
        if (a4)
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
          v36 = 0;
          *v37 = [v41 initWithDomain:v42 code:2 userInfo:v40];
          v30 = v18;
          v5 = v73;
          self = v74;
          v17 = v76;
          v7 = v77;
          goto LABEL_75;
        }

LABEL_44:
        v36 = 0;
        v30 = v18;
        v5 = v73;
        self = v74;
        v17 = v76;
        v7 = v77;
        goto LABEL_77;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v37 = a4;
        if (a4)
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
        if (a4)
        {
          v45 = v29;
          *a4 = v40;
        }

        v36 = 0;
        v30 = v18;
        v5 = v73;
        self = v74;
        goto LABEL_74;
      }

      [v81 addObject:v28];
    }

    v22 = [v18 countByEnumeratingWithState:&v84 objects:v98 count:16];
    v5 = v73;
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v26 = [v5 objectForKeyedSubscript:@"uniqueID"];
  if (!v26)
  {
    v30 = 0;
    self = v74;
    goto LABEL_48;
  }

  objc_opt_class();
  self = v74;
  if (objc_opt_isKindOfClass())
  {
    v30 = 0;
LABEL_48:
    v48 = [v5 objectForKeyedSubscript:@"contentProtection"];
    v75 = v48;
    if (v48 && (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v49;
        goto LABEL_51;
      }

      if (a4)
      {
        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = *MEMORY[0x1E698F240];
        v90 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
        v91 = v51;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v65 = [v63 initWithDomain:v64 code:2 userInfo:v50];
        v40 = 0;
        v36 = 0;
        *a4 = v65;
        goto LABEL_72;
      }

      v40 = 0;
      v36 = 0;
    }

    else
    {
      v40 = 0;
LABEL_51:
      v50 = [v5 objectForKeyedSubscript:@"personaId"];
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
        v36 = self;
      }

      else
      {
        if (a4)
        {
          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = *MEMORY[0x1E698F240];
          v88 = *MEMORY[0x1E696A578];
          v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
          v89 = v66;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          *a4 = [v72 initWithDomain:v71 code:2 userInfo:v67];
        }

        v51 = 0;
        v36 = 0;
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

    if (a4)
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
      v36 = 0;
      *a4 = v56;
      goto LABEL_73;
    }

    v30 = 0;
    v36 = 0;
    v7 = v77;
  }

LABEL_77:
LABEL_78:

  v16 = v78;
  v6 = v79;
LABEL_79:

LABEL_80:
  v68 = *MEMORY[0x1E69E9840];
  return v36;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingQuery *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        [v11 writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMProactiveHarvestingQuery;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_42;
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
        v21 = [v4 position] + 8;
        if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 8, v22 <= objc_msgSend(v4, "length")))
        {
          v25 = [v4 data];
          [v25 getBytes:v32 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
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
      if (!PBReaderPlaceMark() || (v17 = [[BMProactiveHarvestingQueryResult alloc] initByReadFrom:v4]) == 0)
      {
LABEL_46:

        goto LABEL_43;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_38:
      v24 = [v4 position];
      if (v24 >= [v4 length])
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

  v28 = [v4 hasError];
  if (v28)
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
  v4 = [(BMProactiveHarvestingQuery *)self absoluteTimestamp];
  v5 = [(BMProactiveHarvestingQuery *)self query];
  v6 = [(BMProactiveHarvestingQuery *)self results];
  v7 = [(BMProactiveHarvestingQuery *)self uniqueID];
  v8 = [(BMProactiveHarvestingQuery *)self contentProtection];
  v9 = [(BMProactiveHarvestingQuery *)self personaId];
  v10 = [v3 initWithFormat:@"BMProactiveHarvestingQuery with absoluteTimestamp: %@, query: %@, results: %@, uniqueID: %@, contentProtection: %@, personaId: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMProactiveHarvestingQuery)initWithAbsoluteTimestamp:(id)a3 query:(id)a4 results:(id)a5 uniqueID:(id)a6 contentProtection:(id)a7 personaId:(id)a8
{
  v14 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BMProactiveHarvestingQuery;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v18->_hasRaw_absoluteTimestamp = 1;
      [v14 timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_absoluteTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_absoluteTimestamp = v19;
    objc_storeStrong(&v18->_query, a4);
    objc_storeStrong(&v18->_results, a5);
    objc_storeStrong(&v18->_uniqueID, a6);
    objc_storeStrong(&v18->_contentProtection, a7);
    objc_storeStrong(&v18->_personaId, a8);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

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