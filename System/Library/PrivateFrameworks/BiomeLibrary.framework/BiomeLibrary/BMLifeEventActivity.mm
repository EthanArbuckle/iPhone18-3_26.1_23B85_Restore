@interface BMLifeEventActivity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLifeEventActivity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLifeEventActivity)initWithStartDate:(id)a3 endDate:(id)a4 identifier:(id)a5 activityType:(int)a6 activitySource:(id)a7 confidence:(id)a8 members:(id)a9 metadata:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (id)_membersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLifeEventActivity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMLifeEventActivity *)self startDate];
    v7 = [v5 startDate];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMLifeEventActivity *)self startDate];
      v10 = [v5 startDate];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    v13 = [(BMLifeEventActivity *)self endDate];
    v14 = [v5 endDate];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMLifeEventActivity *)self endDate];
      v17 = [v5 endDate];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    v19 = [(BMLifeEventActivity *)self identifier];
    v20 = [v5 identifier];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMLifeEventActivity *)self identifier];
      v23 = [v5 identifier];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_27;
      }
    }

    v25 = [(BMLifeEventActivity *)self activityType];
    if (v25 == [v5 activityType])
    {
      v26 = [(BMLifeEventActivity *)self activitySource];
      v27 = [v5 activitySource];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMLifeEventActivity *)self activitySource];
        v30 = [v5 activitySource];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_27;
        }
      }

      if (-[BMLifeEventActivity hasConfidence](self, "hasConfidence") || [v5 hasConfidence])
      {
        if (![(BMLifeEventActivity *)self hasConfidence])
        {
          goto LABEL_27;
        }

        if (![v5 hasConfidence])
        {
          goto LABEL_27;
        }

        [(BMLifeEventActivity *)self confidence];
        v33 = v32;
        [v5 confidence];
        if (v33 != v34)
        {
          goto LABEL_27;
        }
      }

      v35 = [(BMLifeEventActivity *)self members];
      v36 = [v5 members];
      v37 = v36;
      if (v35 == v36)
      {
      }

      else
      {
        v38 = [(BMLifeEventActivity *)self members];
        v39 = [v5 members];
        v40 = [v38 isEqual:v39];

        if (!v40)
        {
          goto LABEL_27;
        }
      }

      v42 = [(BMLifeEventActivity *)self metadata];
      v43 = [v5 metadata];
      if (v42 == v43)
      {
        v12 = 1;
      }

      else
      {
        v44 = [(BMLifeEventActivity *)self metadata];
        v45 = [v5 metadata];
        v12 = [v44 isEqual:v45];
      }

      goto LABEL_28;
    }

LABEL_27:
    v12 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (NSDate)endDate
{
  if (self->_hasRaw_endDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startDate
{
  if (self->_hasRaw_startDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startDate];
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
  v38[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMLifeEventActivity *)self startDate];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMLifeEventActivity *)self startDate];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMLifeEventActivity *)self endDate];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(BMLifeEventActivity *)self endDate];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(BMLifeEventActivity *)self identifier];
  v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLifeEventActivity activityType](self, "activityType")}];
  v12 = [(BMLifeEventActivity *)self activitySource];
  v35 = [v12 jsonDictionary];

  if (![(BMLifeEventActivity *)self hasConfidence]|| ([(BMLifeEventActivity *)self confidence], fabs(v13) == INFINITY))
  {
    v15 = 0;
  }

  else
  {
    [(BMLifeEventActivity *)self confidence];
    v14 = MEMORY[0x1E696AD98];
    [(BMLifeEventActivity *)self confidence];
    v15 = [v14 numberWithDouble:?];
  }

  v16 = [(BMLifeEventActivity *)self _membersJSONArray];
  v17 = [(BMLifeEventActivity *)self metadata];
  v18 = [v17 jsonDictionary];

  v37[0] = @"startDate";
  v19 = v6;
  if (!v6)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v19;
  v38[0] = v19;
  v37[1] = @"endDate";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v20;
  v38[1] = v20;
  v37[2] = @"identifier";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v6;
  v30 = v21;
  v38[2] = v21;
  v37[3] = @"activityType";
  v22 = v36;
  if (!v36)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v10;
  v38[3] = v22;
  v37[4] = @"activitySource";
  v23 = v35;
  if (!v35)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v38[4] = v23;
  v37[5] = @"confidence";
  v24 = v15;
  if (!v15)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v38[5] = v24;
  v37[6] = @"members";
  v25 = v16;
  if (!v16)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v38[6] = v25;
  v37[7] = @"metadata";
  v26 = v18;
  if (!v18)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v38[7] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:8];
  if (v18)
  {
    if (v16)
    {
      goto LABEL_29;
    }

LABEL_41:

    if (v15)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

  if (!v16)
  {
    goto LABEL_41;
  }

LABEL_29:
  if (v15)
  {
    goto LABEL_30;
  }

LABEL_42:

LABEL_30:
  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (v11)
  {
    if (v33)
    {
      goto LABEL_36;
    }

LABEL_44:

    if (v34)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  if (!v33)
  {
    goto LABEL_44;
  }

LABEL_36:
  if (v34)
  {
    goto LABEL_37;
  }

LABEL_45:

LABEL_37:
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)_membersJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMLifeEventActivity *)self members];
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

- (BMLifeEventActivity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v149[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"startDate"];
  v119 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E695DF00];
      v9 = v6;
      v10 = [v8 alloc];
      [v9 doubleValue];
      v12 = v11;

      v13 = [v10 initWithTimeIntervalSince1970:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v7 = [v14 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v89 = objc_alloc(MEMORY[0x1E696ABC0]);
          v90 = a4;
          v91 = *MEMORY[0x1E698F240];
          v148 = *MEMORY[0x1E696A578];
          v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
          v149[0] = v92;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v149 forKeys:&v148 count:1];
          v93 = v89;
          v16 = v92;
          v7 = 0;
          v32 = 0;
          *v90 = [v93 initWithDomain:v91 code:2 userInfo:v15];
          goto LABEL_101;
        }

        v7 = 0;
        v32 = 0;
        goto LABEL_102;
      }

      v13 = v6;
    }

    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  v15 = [v5 objectForKeyedSubscript:@"endDate"];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = MEMORY[0x1E695DF00];
      v18 = v15;
      v19 = [v17 alloc];
      [v18 doubleValue];
      v21 = v20;

      v22 = [v19 initWithTimeIntervalSince1970:v21];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v16 = [v23 dateFromString:v15];

        goto LABEL_17;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          v95 = *MEMORY[0x1E698F240];
          v146 = *MEMORY[0x1E696A578];
          v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endDate"];
          v147 = v96;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v97 = v95;
          a4 = v96;
          v98 = [v94 initWithDomain:v97 code:2 userInfo:v24];
          v16 = 0;
          v32 = 0;
          *v119 = v98;
          goto LABEL_100;
        }

        v16 = 0;
        v32 = 0;
        goto LABEL_101;
      }

      v22 = v15;
    }

    v16 = v22;
  }

  else
  {
    v16 = 0;
  }

LABEL_17:
  v24 = [v5 objectForKeyedSubscript:@"identifier"];
  v120 = v7;
  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v113 = v16;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        v118 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v145 = v118;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v30 = v27;
        v16 = v113;
        v31 = [v30 initWithDomain:v28 code:2 userInfo:v29];
        v32 = 0;
        *a4 = v31;
        a4 = 0;
        goto LABEL_99;
      }

      v32 = 0;
      goto LABEL_100;
    }

    a4 = v24;
  }

  else
  {
    a4 = 0;
  }

  v25 = [v5 objectForKeyedSubscript:@"activityType"];
  v117 = a4;
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v119)
        {
          v116 = v16;
          v80 = objc_alloc(MEMORY[0x1E696ABC0]);
          v81 = *MEMORY[0x1E698F240];
          v142 = *MEMORY[0x1E696A578];
          v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"activityType"];
          v143 = v53;
          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
          v83 = v80;
          v16 = v116;
          v84 = v81;
          v34 = v82;
          v118 = 0;
          v32 = 0;
          *v119 = [v83 initWithDomain:v84 code:2 userInfo:v82];
          v29 = v25;
          goto LABEL_97;
        }

        v118 = 0;
        v32 = 0;
        v29 = v25;
        goto LABEL_99;
      }

      v26 = [MEMORY[0x1E696AD98] numberWithInt:BMLifeEventActivityActivityTypeFromString(v25)];
    }

    v118 = v26;
  }

  else
  {
    v118 = 0;
  }

  v33 = [v5 objectForKeyedSubscript:@"activitySource"];
  if (!v33 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v106 = v33;
    v34 = 0;
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v55 = v33;
    if (!v119)
    {
      v32 = 0;
      v29 = v25;
      v53 = v55;
      goto LABEL_98;
    }

    v115 = v16;
    v56 = objc_alloc(MEMORY[0x1E696ABC0]);
    v110 = *MEMORY[0x1E698F240];
    v140 = *MEMORY[0x1E696A578];
    v57 = v15;
    v58 = objc_alloc(MEMORY[0x1E696AEC0]);
    v59 = v55;
    v101 = objc_opt_class();
    v60 = v58;
    v15 = v57;
    v34 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v101, @"activitySource"];
    v141 = v34;
    v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
    v62 = v56;
    v16 = v115;
    *v119 = [v62 initWithDomain:v110 code:2 userInfo:v61];

    v32 = 0;
    v53 = v59;
LABEL_66:
    v29 = v25;
    goto LABEL_97;
  }

  v53 = v33;
  v128 = 0;
  v34 = [[BMLifeEventActivityActivitySource alloc] initWithJSONDictionary:v53 error:&v128];
  v54 = v128;
  if (v54)
  {
    if (v119)
    {
      v54 = v54;
      *v119 = v54;
    }

    v32 = 0;
    goto LABEL_66;
  }

  v106 = v33;

LABEL_35:
  v35 = [v5 objectForKeyedSubscript:@"confidence"];
  v112 = v15;
  v114 = v16;
  v108 = v35;
  if (v35 && (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = v25;
      if (v119)
      {
        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = *MEMORY[0x1E698F240];
        v138 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
        v139 = v37;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
        v65 = v63;
        v16 = v114;
        v66 = [v65 initWithDomain:v64 code:2 userInfo:v40];
        v109 = 0;
        v32 = 0;
        *v119 = v66;
        v67 = v106;
        goto LABEL_94;
      }

      v109 = 0;
      v32 = 0;
      v67 = v106;
      goto LABEL_96;
    }

    v109 = v36;
  }

  else
  {
    v109 = 0;
  }

  v37 = [v5 objectForKeyedSubscript:@"members"];
  v38 = [MEMORY[0x1E695DFB0] null];
  v39 = [v37 isEqual:v38];

  v105 = v6;
  if (v39)
  {
    v104 = v34;
    v111 = v25;
    v107 = v24;

    v37 = 0;
  }

  else
  {
    if (v37)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = v25;
        if (v119)
        {
          v77 = objc_alloc(MEMORY[0x1E696ABC0]);
          v78 = *MEMORY[0x1E698F240];
          v136 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"members"];
          v137 = v40;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
          v79 = [v77 initWithDomain:v78 code:2 userInfo:v50];
          v32 = 0;
          *v119 = v79;
          goto LABEL_92;
        }

        v32 = 0;
        v16 = v114;
        v67 = v106;
        goto LABEL_95;
      }
    }

    v104 = v34;
    v111 = v25;
    v107 = v24;
  }

  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v37, "count")}];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v37 = v37;
  v41 = [v37 countByEnumeratingWithState:&v124 objects:v135 count:16];
  if (!v41)
  {
    goto LABEL_53;
  }

  v42 = v41;
  v43 = *v125;
  v103 = v5;
  while (2)
  {
    for (i = 0; i != v42; ++i)
    {
      if (*v125 != v43)
      {
        objc_enumerationMutation(v37);
      }

      v45 = *(*(&v124 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = v119;
        if (v119)
        {
          v69 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v133 = *MEMORY[0x1E696A578];
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"members"];
          v134 = v46;
          v71 = MEMORY[0x1E695DF20];
          v72 = &v134;
          v73 = &v133;
LABEL_73:
          v74 = [v71 dictionaryWithObjects:v72 forKeys:v73 count:1];
          *v68 = [v69 initWithDomain:v70 code:2 userInfo:v74];

LABEL_79:
          v32 = 0;
          v50 = v37;
          v5 = v103;
          v34 = v104;
          goto LABEL_80;
        }

LABEL_88:
        v32 = 0;
        v50 = v37;
        v5 = v103;
        v34 = v104;
        v67 = v106;
        v24 = v107;
        v29 = v111;
        goto LABEL_93;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v68 = v119;
        if (v119)
        {
          v69 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v131 = *MEMORY[0x1E696A578];
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"members"];
          v132 = v46;
          v71 = MEMORY[0x1E695DF20];
          v72 = &v132;
          v73 = &v131;
          goto LABEL_73;
        }

        goto LABEL_88;
      }

      v46 = v45;
      v47 = [BMLifeEventActivityPerson alloc];
      v123 = 0;
      v48 = [(BMLifeEventActivityPerson *)v47 initWithJSONDictionary:v46 error:&v123];
      v49 = v123;
      if (v49)
      {
        v75 = v49;
        if (v119)
        {
          v76 = v49;
          *v119 = v75;
        }

        goto LABEL_79;
      }

      [v40 addObject:v48];
    }

    v42 = [v37 countByEnumeratingWithState:&v124 objects:v135 count:16];
    v5 = v103;
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_53:

  v50 = [v5 objectForKeyedSubscript:@"metadata"];
  if (!v50)
  {
    v46 = 0;
    v51 = v7;
    v24 = v107;
    v52 = v117;
    v29 = v111;
    v34 = v104;
    goto LABEL_90;
  }

  objc_opt_class();
  v34 = v104;
  if (objc_opt_isKindOfClass())
  {
    v46 = 0;
    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v87 = v50;
    v122 = 0;
    v46 = [[BMLifeEventActivityMetadata alloc] initWithJSONDictionary:v87 error:&v122];
    v88 = v122;
    if (v88)
    {
      v24 = v107;
      if (v119)
      {
        v88 = v88;
        *v119 = v88;
      }

      v50 = v87;
      v32 = 0;
      goto LABEL_81;
    }

LABEL_56:
    v24 = v107;
    v51 = v7;
    v29 = v111;
    v52 = v117;
LABEL_90:
    v32 = -[BMLifeEventActivity initWithStartDate:endDate:identifier:activityType:activitySource:confidence:members:metadata:](self, "initWithStartDate:endDate:identifier:activityType:activitySource:confidence:members:metadata:", v51, v114, v52, [v118 intValue], v34, v109, v40, v46);
    self = v32;
LABEL_91:
  }

  else
  {
    if (v119)
    {
      v102 = objc_alloc(MEMORY[0x1E696ABC0]);
      v99 = *MEMORY[0x1E698F240];
      v129 = *MEMORY[0x1E696A578];
      v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
      v130 = v46;
      v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      *v119 = [v102 initWithDomain:v99 code:2 userInfo:v100];

      v32 = 0;
LABEL_80:
      v24 = v107;
LABEL_81:
      v29 = v111;
      goto LABEL_91;
    }

    v32 = 0;
    v24 = v107;
    v29 = v111;
  }

LABEL_92:
  v67 = v106;
LABEL_93:

  v6 = v105;
  v16 = v114;
LABEL_94:

LABEL_95:
  v15 = v112;
LABEL_96:

  v53 = v67;
LABEL_97:

LABEL_98:
  a4 = v117;
LABEL_99:

  v7 = v120;
LABEL_100:

LABEL_101:
LABEL_102:

  v85 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLifeEventActivity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasRaw_startDate)
  {
    raw_startDate = self->_raw_startDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_endDate)
  {
    raw_endDate = self->_raw_endDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  activityType = self->_activityType;
  PBDataWriterWriteUint32Field();
  if (self->_activitySource)
  {
    v20 = 0;
    PBDataWriterPlaceMark();
    [(BMLifeEventActivityActivitySource *)self->_activitySource writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_members;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        v20 = 0;
        PBDataWriterPlaceMark();
        [v14 writeTo:{v4, v16}];
        PBDataWriterRecallMark();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  if (self->_metadata)
  {
    v20 = 0;
    PBDataWriterPlaceMark();
    [(BMLifeEventActivityMetadata *)self->_metadata writeTo:v4];
    PBDataWriterRecallMark();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = BMLifeEventActivity;
  v5 = [(BMEventBase *)&v48 init];
  if (!v5)
  {
    goto LABEL_74;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_72;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v49) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v49 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v49 & 0x7F) << v8;
        if ((v49 & 0x80) == 0)
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
        goto LABEL_72;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 4)
      {
        break;
      }

      if (v16 <= 6)
      {
        if (v16 == 5)
        {
          v49 = 0;
          v50 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_76;
          }

          v28 = [[BMLifeEventActivityActivitySource alloc] initByReadFrom:v4];
          if (!v28)
          {
            goto LABEL_76;
          }

          v29 = 72;
LABEL_53:
          v32 = *(&v5->super.super.isa + v29);
          *(&v5->super.super.isa + v29) = v28;

          PBReaderRecallMark();
          goto LABEL_71;
        }

        if (v16 == 6)
        {
          v5->_hasConfidence = 1;
          v49 = 0;
          v19 = [v4 position] + 8;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 8, v20 <= objc_msgSend(v4, "length")))
          {
            v41 = [v4 data];
            [v41 getBytes:&v49 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v38 = v49;
          v39 = 80;
          goto LABEL_70;
        }

        goto LABEL_58;
      }

      if (v16 != 7)
      {
        if (v16 == 8)
        {
          v49 = 0;
          v50 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_76;
          }

          v28 = [[BMLifeEventActivityMetadata alloc] initByReadFrom:v4];
          if (!v28)
          {
            goto LABEL_76;
          }

          v29 = 96;
          goto LABEL_53;
        }

        goto LABEL_58;
      }

      v49 = 0;
      v50 = 0;
      if (!PBReaderPlaceMark() || (v35 = [[BMLifeEventActivityPerson alloc] initByReadFrom:v4]) == 0)
      {
LABEL_76:

        goto LABEL_73;
      }

      v36 = v35;
      [v6 addObject:v35];
      PBReaderRecallMark();

LABEL_71:
      v42 = [v4 position];
      if (v42 >= [v4 length])
      {
        goto LABEL_72;
      }
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v33 = PBReaderReadString();
        identifier = v5->_identifier;
        v5->_identifier = v33;

        goto LABEL_71;
      }

      if (v16 == 4)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v49) = 0;
          v24 = [v4 position] + 1;
          if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
          {
            v26 = [v4 data];
            [v26 getBytes:&v49 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v23 |= (v49 & 0x7F) << v21;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          if (v22++ > 8)
          {
            goto LABEL_62;
          }
        }

        if (([v4 hasError] & 1) != 0 || v23 > 0x11)
        {
LABEL_62:
          LODWORD(v23) = 0;
        }

        v5->_activityType = v23;
        goto LABEL_71;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v5->_hasRaw_startDate = 1;
        v49 = 0;
        v30 = [v4 position] + 8;
        if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 8, v31 <= objc_msgSend(v4, "length")))
        {
          v37 = [v4 data];
          [v37 getBytes:&v49 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v38 = v49;
        v39 = 24;
        goto LABEL_70;
      }

      if (v16 == 2)
      {
        v5->_hasRaw_endDate = 1;
        v49 = 0;
        v17 = [v4 position] + 8;
        if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 8, v18 <= objc_msgSend(v4, "length")))
        {
          v40 = [v4 data];
          [v40 getBytes:&v49 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v38 = v49;
        v39 = 40;
LABEL_70:
        *(&v5->super.super.isa + v39) = v38;
        goto LABEL_71;
      }
    }

LABEL_58:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_71;
  }

LABEL_72:
  v43 = [v6 copy];
  members = v5->_members;
  v5->_members = v43;

  v45 = [v4 hasError];
  if (v45)
  {
LABEL_73:
    v46 = 0;
  }

  else
  {
LABEL_74:
    v46 = v5;
  }

  return v46;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMLifeEventActivity *)self startDate];
  v5 = [(BMLifeEventActivity *)self endDate];
  v6 = [(BMLifeEventActivity *)self identifier];
  v7 = BMLifeEventActivityActivityTypeAsString([(BMLifeEventActivity *)self activityType]);
  v8 = [(BMLifeEventActivity *)self activitySource];
  v9 = MEMORY[0x1E696AD98];
  [(BMLifeEventActivity *)self confidence];
  v10 = [v9 numberWithDouble:?];
  v11 = [(BMLifeEventActivity *)self members];
  v12 = [(BMLifeEventActivity *)self metadata];
  v13 = [v3 initWithFormat:@"BMLifeEventActivity with startDate: %@, endDate: %@, identifier: %@, activityType: %@, activitySource: %@, confidence: %@, members: %@, metadata: %@", v4, v5, v6, v7, v8, v10, v11, v12];

  return v13;
}

- (BMLifeEventActivity)initWithStartDate:(id)a3 endDate:(id)a4 identifier:(id)a5 activityType:(int)a6 activitySource:(id)a7 confidence:(id)a8 members:(id)a9 metadata:(id)a10
{
  v15 = a3;
  v16 = a4;
  v27 = a5;
  v26 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v28.receiver = self;
  v28.super_class = BMLifeEventActivity;
  v20 = [(BMEventBase *)&v28 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v15)
    {
      v20->_hasRaw_startDate = 1;
      [v15 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_startDate = 0;
      v21 = -1.0;
    }

    v20->_raw_startDate = v21;
    if (v16)
    {
      v20->_hasRaw_endDate = 1;
      [v16 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_endDate = 0;
      v22 = -1.0;
    }

    v20->_raw_endDate = v22;
    objc_storeStrong(&v20->_identifier, a5);
    v20->_activityType = a6;
    objc_storeStrong(&v20->_activitySource, a7);
    if (v17)
    {
      v20->_hasConfidence = 1;
      [v17 doubleValue];
    }

    else
    {
      v20->_hasConfidence = 0;
      v23 = -1.0;
    }

    v20->_confidence = v23;
    objc_storeStrong(&v20->_members, a9);
    objc_storeStrong(&v20->_metadata, a10);
  }

  return v20;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:1 type:0 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endDate" number:2 type:0 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityType" number:4 type:4 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activitySource" number:5 type:14 subMessageClass:objc_opt_class()];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:6 type:0 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"members" number:7 type:14 subMessageClass:objc_opt_class()];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:8 type:14 subMessageClass:objc_opt_class()];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"activitySource_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_336];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"members_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_338];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_340_15518];
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

id __30__BMLifeEventActivity_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __30__BMLifeEventActivity_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _membersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __30__BMLifeEventActivity_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 activitySource];
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

    v8 = [[BMLifeEventActivity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end