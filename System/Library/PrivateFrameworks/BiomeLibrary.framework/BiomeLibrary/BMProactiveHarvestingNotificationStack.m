@interface BMProactiveHarvestingNotificationStack
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingNotificationStack)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingNotificationStack)initWithUniqueID:(id)a3 absoluteTimestamp:(id)a4 notificationIDs:(id)a5 appBundleID:(id)a6 threadID:(id)a7 stackState:(id)a8 sectionID:(id)a9 contentProtection:(id)a10 personaId:(id)a11;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_notificationIDsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingNotificationStack

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingNotificationStack *)self uniqueID];
    v7 = [v5 uniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingNotificationStack *)self uniqueID];
      v10 = [v5 uniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_35;
      }
    }

    v13 = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
    v14 = [v5 absoluteTimestamp];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
      v17 = [v5 absoluteTimestamp];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_35;
      }
    }

    v19 = [(BMProactiveHarvestingNotificationStack *)self notificationIDs];
    v20 = [v5 notificationIDs];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingNotificationStack *)self notificationIDs];
      v23 = [v5 notificationIDs];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_35;
      }
    }

    v25 = [(BMProactiveHarvestingNotificationStack *)self appBundleID];
    v26 = [v5 appBundleID];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingNotificationStack *)self appBundleID];
      v29 = [v5 appBundleID];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_35;
      }
    }

    v31 = [(BMProactiveHarvestingNotificationStack *)self threadID];
    v32 = [v5 threadID];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingNotificationStack *)self threadID];
      v35 = [v5 threadID];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_35;
      }
    }

    if (-[BMProactiveHarvestingNotificationStack hasStackState](self, "hasStackState") || [v5 hasStackState])
    {
      if (![(BMProactiveHarvestingNotificationStack *)self hasStackState])
      {
        goto LABEL_35;
      }

      if (![v5 hasStackState])
      {
        goto LABEL_35;
      }

      v37 = [(BMProactiveHarvestingNotificationStack *)self stackState];
      if (v37 != [v5 stackState])
      {
        goto LABEL_35;
      }
    }

    if (-[BMProactiveHarvestingNotificationStack hasSectionID](self, "hasSectionID") || [v5 hasSectionID])
    {
      if (![(BMProactiveHarvestingNotificationStack *)self hasSectionID])
      {
        goto LABEL_35;
      }

      if (![v5 hasSectionID])
      {
        goto LABEL_35;
      }

      v38 = [(BMProactiveHarvestingNotificationStack *)self sectionID];
      if (v38 != [v5 sectionID])
      {
        goto LABEL_35;
      }
    }

    v39 = [(BMProactiveHarvestingNotificationStack *)self contentProtection];
    v40 = [v5 contentProtection];
    v41 = v40;
    if (v39 == v40)
    {
    }

    else
    {
      v42 = [(BMProactiveHarvestingNotificationStack *)self contentProtection];
      v43 = [v5 contentProtection];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
LABEL_35:
        v12 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    v46 = [(BMProactiveHarvestingNotificationStack *)self personaId];
    v47 = [v5 personaId];
    if (v46 == v47)
    {
      v12 = 1;
    }

    else
    {
      v48 = [(BMProactiveHarvestingNotificationStack *)self personaId];
      v49 = [v5 personaId];
      v12 = [v48 isEqual:v49];
    }

    goto LABEL_36;
  }

  v12 = 0;
LABEL_37:

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
  v35[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingNotificationStack *)self uniqueID];
  v4 = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
    [v6 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMProactiveHarvestingNotificationStack *)self _notificationIDsJSONArray];
  v9 = [(BMProactiveHarvestingNotificationStack *)self appBundleID];
  v10 = [(BMProactiveHarvestingNotificationStack *)self threadID];
  if ([(BMProactiveHarvestingNotificationStack *)self hasStackState])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMProactiveHarvestingNotificationStack stackState](self, "stackState")}];
  }

  else
  {
    v33 = 0;
  }

  if ([(BMProactiveHarvestingNotificationStack *)self hasSectionID])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMProactiveHarvestingNotificationStack sectionID](self, "sectionID")}];
  }

  else
  {
    v32 = 0;
  }

  v11 = [(BMProactiveHarvestingNotificationStack *)self contentProtection];
  v12 = [(BMProactiveHarvestingNotificationStack *)self personaId];
  v34[0] = @"uniqueID";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v13;
  v35[0] = v13;
  v34[1] = @"absoluteTimestamp";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v14;
  v35[1] = v14;
  v34[2] = @"notificationIDs";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v15;
  v35[2] = v15;
  v34[3] = @"appBundleID";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v3;
  v25 = v16;
  v35[3] = v16;
  v34[4] = @"threadID";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v7;
  v35[4] = v17;
  v34[5] = @"stackState";
  v18 = v33;
  if (!v33)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = v18;
  v34[6] = @"sectionID";
  v19 = v32;
  if (!v32)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v10;
  v35[6] = v19;
  v34[7] = @"contentProtection";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = v21;
  v34[8] = @"personaId";
  v22 = v12;
  if (!v12)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = v22;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (!v20)
  {
  }

  if (v9)
  {
    if (v8)
    {
      goto LABEL_38;
    }
  }

  else
  {

    if (v8)
    {
LABEL_38:
      if (v30)
      {
        goto LABEL_39;
      }

LABEL_47:

      if (v31)
      {
        goto LABEL_40;
      }

      goto LABEL_48;
    }
  }

  if (!v30)
  {
    goto LABEL_47;
  }

LABEL_39:
  if (v31)
  {
    goto LABEL_40;
  }

LABEL_48:

LABEL_40:
  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)_notificationIDsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMProactiveHarvestingNotificationStack *)self notificationIDs];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMProactiveHarvestingNotificationStack)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v134[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"uniqueID"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E698F240];
        v133 = *MEMORY[0x1E696A578];
        v17 = v5;
        v18 = self;
        v19 = objc_alloc(MEMORY[0x1E696AEC0]);
        v84 = objc_opt_class();
        v20 = v19;
        self = v18;
        v5 = v17;
        v8 = [v20 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v84, @"uniqueID"];
        v134[0] = v8;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:&v133 count:1];
        v21 = [v15 initWithDomain:v16 code:2 userInfo:v7];
        v22 = 0;
        v23 = 0;
        *a4 = v21;
        goto LABEL_100;
      }

      v22 = 0;
      v23 = 0;
      goto LABEL_101;
    }

    v106 = v6;
  }

  else
  {
    v106 = 0;
  }

  v7 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  v104 = v7;
  v105 = v6;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = v7;
      v11 = [v9 alloc];
      [v10 doubleValue];
      v13 = v12;

      v14 = [v11 initWithTimeIntervalSinceReferenceDate:v13];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v8 = [v24 dateFromString:v7];

        goto LABEL_16;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v131 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v132 = v25;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          v69 = [v67 initWithDomain:v68 code:2 userInfo:v28];
          v8 = 0;
          v23 = 0;
          *a4 = v69;
          v22 = v106;
          goto LABEL_98;
        }

        v8 = 0;
        v23 = 0;
        v22 = v106;
        goto LABEL_100;
      }

      v14 = v7;
    }

    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

LABEL_16:
  v25 = [v5 objectForKeyedSubscript:@"notificationIDs"];
  v26 = [MEMORY[0x1E695DFB0] null];
  v27 = [v25 isEqual:v26];

  v103 = v8;
  if (v27)
  {

    v25 = 0;
  }

  else if (v25)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v23 = 0;
        v22 = v106;
        goto LABEL_99;
      }

      v56 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E698F240];
      v129 = *MEMORY[0x1E696A578];
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"notificationIDs"];
      v130 = v28;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      v58 = [v56 initWithDomain:v57 code:2 userInfo:v36];
      v23 = 0;
      *a4 = v58;
LABEL_56:
      v22 = v106;
      goto LABEL_97;
    }
  }

  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v25 = v25;
  v29 = [v25 countByEnumeratingWithState:&v108 objects:v128 count:16];
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = *v109;
  v102 = v5;
  while (2)
  {
    v32 = self;
    for (i = 0; i != v30; ++i)
    {
      if (*v109 != v31)
      {
        objc_enumerationMutation(v25);
      }

      v34 = *(*(&v108 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a4)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v126 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"notificationIDs"];
          v127 = v35;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
          v50 = v47;
          v51 = v48;
LABEL_52:
          v55 = v49;
          self = v32;
          v22 = v106;
          v23 = 0;
          *a4 = [v50 initWithDomain:v51 code:2 userInfo:?];
          v36 = v25;
          v5 = v102;
          v8 = v103;
          goto LABEL_95;
        }

        goto LABEL_53;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v124 = *MEMORY[0x1E696A578];
          v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"notificationIDs"];
          v125 = v54;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
          v50 = v52;
          v51 = v53;
          v35 = v54;
          goto LABEL_52;
        }

LABEL_53:
        v23 = 0;
        v36 = v25;
        self = v32;
        v5 = v102;
        goto LABEL_56;
      }

      [v28 addObject:v34];
    }

    v30 = [v25 countByEnumeratingWithState:&v108 objects:v128 count:16];
    self = v32;
    v5 = v102;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v35 = [v5 objectForKeyedSubscript:@"appBundleID"];
  if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
      goto LABEL_32;
    }

    if (a4)
    {
      v59 = objc_alloc(MEMORY[0x1E696ABC0]);
      v60 = *MEMORY[0x1E698F240];
      v122 = *MEMORY[0x1E696A578];
      v61 = v35;
      v62 = objc_alloc(MEMORY[0x1E696AEC0]);
      v85 = objc_opt_class();
      v63 = v62;
      v35 = v61;
      v55 = [v63 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v85, @"appBundleID"];
      v123 = v55;
      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
      v64 = [v59 initWithDomain:v60 code:2 userInfo:?];
      v36 = 0;
      v23 = 0;
      *a4 = v64;
      v22 = v106;
      v8 = v103;

      goto LABEL_95;
    }

    v36 = 0;
    v23 = 0;
    v22 = v106;
  }

  else
  {
    v36 = 0;
LABEL_32:
    v37 = [v5 objectForKeyedSubscript:@"threadID"];
    v96 = v35;
    v100 = v37;
    if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v90 = v36;
        v97 = v38;
        goto LABEL_35;
      }

      v23 = a4;
      if (a4)
      {
        v98 = objc_alloc(MEMORY[0x1E696ABC0]);
        v65 = *MEMORY[0x1E698F240];
        v120 = *MEMORY[0x1E696A578];
        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"threadID"];
        v121 = v99;
        v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        v66 = [v98 initWithDomain:v65 code:2 userInfo:?];
        v55 = 0;
        v23 = 0;
        v22 = v106;
        *a4 = v66;
        goto LABEL_93;
      }

      v55 = 0;
      v22 = v106;
    }

    else
    {
      v90 = v36;
      v97 = 0;
LABEL_35:
      v39 = [v5 objectForKeyedSubscript:@"stackState"];
      v93 = v39;
      if (v39 && (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v99 = v40;
          goto LABEL_38;
        }

        if (a4)
        {
          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = *MEMORY[0x1E698F240];
          v118 = *MEMORY[0x1E696A578];
          v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stackState"];
          v119 = v94;
          v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
          v73 = v71;
          v35 = v96;
          v89 = v72;
          v99 = 0;
          v23 = 0;
          *a4 = [v70 initWithDomain:v73 code:2 userInfo:?];
          v22 = v106;
          v55 = v97;
          v36 = v90;
          goto LABEL_92;
        }

        v99 = 0;
        v23 = 0;
        v22 = v106;
        v55 = v97;
        v36 = v90;
      }

      else
      {
        v99 = 0;
LABEL_38:
        v41 = [v5 objectForKeyedSubscript:@"sectionID"];
        v36 = v90;
        v89 = v41;
        if (v41 && (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v94 = v42;
            goto LABEL_41;
          }

          if (a4)
          {
            v95 = objc_alloc(MEMORY[0x1E696ABC0]);
            v74 = *MEMORY[0x1E698F240];
            v116 = *MEMORY[0x1E696A578];
            v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sectionID"];
            v117 = v91;
            v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
            v76 = v74;
            v35 = v96;
            v77 = [v95 initWithDomain:v76 code:2 userInfo:v75];
            v94 = 0;
            v23 = 0;
            *a4 = v77;
            v22 = v106;
            goto LABEL_90;
          }

          v94 = 0;
          v23 = 0;
          v22 = v106;
        }

        else
        {
          v94 = 0;
LABEL_41:
          v43 = [v5 objectForKeyedSubscript:@"contentProtection"];
          v88 = v43;
          if (v43 && (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v91 = v44;
              goto LABEL_44;
            }

            if (a4)
            {
              v92 = objc_alloc(MEMORY[0x1E696ABC0]);
              v78 = *MEMORY[0x1E698F240];
              v114 = *MEMORY[0x1E696A578];
              v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
              v115 = v46;
              v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
              v79 = [v92 initWithDomain:v78 code:2 userInfo:v45];
              v91 = 0;
              v23 = 0;
              *a4 = v79;
              v22 = v106;
              goto LABEL_88;
            }

            v91 = 0;
            v23 = 0;
            v22 = v106;
          }

          else
          {
            v91 = 0;
LABEL_44:
            v45 = [v5 objectForKeyedSubscript:@"personaId"];
            if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v46 = 0;
              v22 = v106;
              goto LABEL_47;
            }

            objc_opt_class();
            v22 = v106;
            if (objc_opt_isKindOfClass())
            {
              v46 = v45;
LABEL_47:
              self = [(BMProactiveHarvestingNotificationStack *)self initWithUniqueID:v22 absoluteTimestamp:v8 notificationIDs:v28 appBundleID:v90 threadID:v97 stackState:v99 sectionID:v94 contentProtection:v91 personaId:v46];
              v23 = self;
            }

            else
            {
              if (a4)
              {
                v87 = objc_alloc(MEMORY[0x1E696ABC0]);
                v86 = *MEMORY[0x1E698F240];
                v112 = *MEMORY[0x1E696A578];
                v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
                v113 = v80;
                v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
                *a4 = [v87 initWithDomain:v86 code:2 userInfo:v81];
              }

              v46 = 0;
              v23 = 0;
            }

LABEL_88:

            v35 = v96;
          }

          v75 = v88;
LABEL_90:
        }

        v55 = v97;
LABEL_92:
      }

LABEL_93:
    }

LABEL_95:
  }

LABEL_97:
LABEL_98:

  v7 = v104;
  v6 = v105;
LABEL_99:

LABEL_100:
LABEL_101:

  v82 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingNotificationStack *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_notificationIDs;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (self->_appBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_threadID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasStackState)
  {
    stackState = self->_stackState;
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasSectionID)
  {
    sectionID = self->_sectionID;
    PBDataWriterWriteInt64Field();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = BMProactiveHarvestingNotificationStack;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_75;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_73;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v46) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v46) & 0x7F) << v8;
        if ((LOBYTE(v46) & 0x80) == 0)
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
        goto LABEL_73;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 4)
      {
        break;
      }

      if (v16 <= 2)
      {
        if (v16 == 1)
        {
          v17 = PBReaderReadString();
          v18 = 40;
          goto LABEL_58;
        }

        if (v16 == 2)
        {
          v5->_hasRaw_absoluteTimestamp = 1;
          v46 = 0.0;
          v19 = [v4 position] + 8;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 8, v20 <= objc_msgSend(v4, "length")))
          {
            v38 = [v4 data];
            [v38 getBytes:&v46 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_absoluteTimestamp = v46;
          goto LABEL_72;
        }

LABEL_59:
        if (!PBReaderSkipValueWithTag())
        {
LABEL_77:

          goto LABEL_74;
        }

        goto LABEL_72;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          v17 = PBReaderReadString();
          v18 = 56;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      v28 = PBReaderReadString();
      if (!v28)
      {
        goto LABEL_77;
      }

      v29 = v28;
      [v6 addObject:v28];

LABEL_72:
      v39 = [v4 position];
      if (v39 >= [v4 length])
      {
        goto LABEL_73;
      }
    }

    if (v16 <= 6)
    {
      if (v16 == 5)
      {
        v17 = PBReaderReadString();
        v18 = 64;
        goto LABEL_58;
      }

      if (v16 == 6)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v5->_hasStackState = 1;
        while (1)
        {
          LOBYTE(v46) = 0;
          v24 = [v4 position] + 1;
          if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
          {
            v26 = [v4 data];
            [v26 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v23 = (((LOBYTE(v46) & 0x7F) << v21) | v23);
          if ((LOBYTE(v46) & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v14 = v22++ >= 9;
          if (v14)
          {
            v27 = 0;
            goto LABEL_64;
          }
        }

        if ([v4 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_64:
        v37 = 72;
        goto LABEL_69;
      }
    }

    else
    {
      switch(v16)
      {
        case 7:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v5->_hasSectionID = 1;
          while (1)
          {
            LOBYTE(v46) = 0;
            v33 = [v4 position] + 1;
            if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
            {
              v35 = [v4 data];
              [v35 getBytes:&v46 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v32 = (((LOBYTE(v46) & 0x7F) << v30) | v32);
            if ((LOBYTE(v46) & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v14 = v31++ >= 9;
            if (v14)
            {
              v27 = 0;
              goto LABEL_68;
            }
          }

          if ([v4 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v32;
          }

LABEL_68:
          v37 = 80;
LABEL_69:
          *(&v5->super.super.isa + v37) = v27;
          goto LABEL_72;
        case 8:
          v17 = PBReaderReadString();
          v18 = 88;
          goto LABEL_58;
        case 9:
          v17 = PBReaderReadString();
          v18 = 96;
LABEL_58:
          v36 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_72;
      }
    }

    goto LABEL_59;
  }

LABEL_73:
  v40 = [v6 copy];
  notificationIDs = v5->_notificationIDs;
  v5->_notificationIDs = v40;

  v42 = [v4 hasError];
  if (v42)
  {
LABEL_74:
    v43 = 0;
  }

  else
  {
LABEL_75:
    v43 = v5;
  }

  return v43;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMProactiveHarvestingNotificationStack *)self uniqueID];
  v5 = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
  v6 = [(BMProactiveHarvestingNotificationStack *)self notificationIDs];
  v7 = [(BMProactiveHarvestingNotificationStack *)self appBundleID];
  v8 = [(BMProactiveHarvestingNotificationStack *)self threadID];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMProactiveHarvestingNotificationStack stackState](self, "stackState")}];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMProactiveHarvestingNotificationStack sectionID](self, "sectionID")}];
  v11 = [(BMProactiveHarvestingNotificationStack *)self contentProtection];
  v12 = [(BMProactiveHarvestingNotificationStack *)self personaId];
  v13 = [v3 initWithFormat:@"BMProactiveHarvestingNotificationStack with uniqueID: %@, absoluteTimestamp: %@, notificationIDs: %@, appBundleID: %@, threadID: %@, stackState: %@, sectionID: %@, contentProtection: %@, personaId: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMProactiveHarvestingNotificationStack)initWithUniqueID:(id)a3 absoluteTimestamp:(id)a4 notificationIDs:(id)a5 appBundleID:(id)a6 threadID:(id)a7 stackState:(id)a8 sectionID:(id)a9 contentProtection:(id)a10 personaId:(id)a11
{
  v31 = a3;
  v18 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v19 = a8;
  v20 = a9;
  v27 = a10;
  v26 = a11;
  v32.receiver = self;
  v32.super_class = BMProactiveHarvestingNotificationStack;
  v21 = [(BMEventBase *)&v32 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_uniqueID, a3);
    if (v18)
    {
      v21->_hasRaw_absoluteTimestamp = 1;
      [v18 timeIntervalSinceReferenceDate];
    }

    else
    {
      v21->_hasRaw_absoluteTimestamp = 0;
      v22 = -1.0;
    }

    v21->_raw_absoluteTimestamp = v22;
    objc_storeStrong(&v21->_notificationIDs, a5);
    objc_storeStrong(&v21->_appBundleID, a6);
    objc_storeStrong(&v21->_threadID, a7);
    if (v19)
    {
      v21->_hasStackState = 1;
      v23 = [v19 longLongValue];
    }

    else
    {
      v21->_hasStackState = 0;
      v23 = -1;
    }

    v21->_stackState = v23;
    if (v20)
    {
      v21->_hasSectionID = 1;
      v24 = [v20 longLongValue];
    }

    else
    {
      v21->_hasSectionID = 0;
      v24 = -1;
    }

    v21->_sectionID = v24;
    objc_storeStrong(&v21->_contentProtection, a10);
    objc_storeStrong(&v21->_personaId, a11);
  }

  return v21;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationIDs" number:3 type:13 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appBundleID" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"threadID" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stackState" number:6 type:3 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sectionID" number:7 type:3 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:8 type:13 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:9 type:13 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"notificationIDs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_30805];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"threadID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stackState" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:3 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sectionID" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:3 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
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

id __49__BMProactiveHarvestingNotificationStack_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _notificationIDsJSONArray];
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

    v8 = [[BMProactiveHarvestingNotificationStack alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end