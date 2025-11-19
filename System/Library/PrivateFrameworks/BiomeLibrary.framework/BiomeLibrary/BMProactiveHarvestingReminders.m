@interface BMProactiveHarvestingReminders
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingReminders)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingReminders)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 title:(id)a6 notes:(id)a7 isAllDay:(id)a8 completionDateTimestamp:(id)a9 dueDateTimestamp:(id)a10 priority:(id)a11 contentProtection:(id)a12 personaId:(id)a13;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSDate)completionDateTimestamp;
- (NSDate)dueDateTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingReminders

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingReminders *)self uniqueID];
    v7 = [v5 uniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingReminders *)self uniqueID];
      v10 = [v5 uniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_43;
      }
    }

    v13 = [(BMProactiveHarvestingReminders *)self domainID];
    v14 = [v5 domainID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingReminders *)self domainID];
      v17 = [v5 domainID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_43;
      }
    }

    v19 = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
    v20 = [v5 absoluteTimestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
      v23 = [v5 absoluteTimestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_43;
      }
    }

    v25 = [(BMProactiveHarvestingReminders *)self title];
    v26 = [v5 title];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingReminders *)self title];
      v29 = [v5 title];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_43;
      }
    }

    v31 = [(BMProactiveHarvestingReminders *)self notes];
    v32 = [v5 notes];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingReminders *)self notes];
      v35 = [v5 notes];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_43;
      }
    }

    if (-[BMProactiveHarvestingReminders hasIsAllDay](self, "hasIsAllDay") || [v5 hasIsAllDay])
    {
      if (![(BMProactiveHarvestingReminders *)self hasIsAllDay])
      {
        goto LABEL_43;
      }

      if (![v5 hasIsAllDay])
      {
        goto LABEL_43;
      }

      v37 = [(BMProactiveHarvestingReminders *)self isAllDay];
      if (v37 != [v5 isAllDay])
      {
        goto LABEL_43;
      }
    }

    v38 = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
    v39 = [v5 completionDateTimestamp];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
      v42 = [v5 completionDateTimestamp];
      v43 = [v41 isEqual:v42];

      if (!v43)
      {
        goto LABEL_43;
      }
    }

    v44 = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
    v45 = [v5 dueDateTimestamp];
    v46 = v45;
    if (v44 == v45)
    {
    }

    else
    {
      v47 = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
      v48 = [v5 dueDateTimestamp];
      v49 = [v47 isEqual:v48];

      if (!v49)
      {
        goto LABEL_43;
      }
    }

    if (-[BMProactiveHarvestingReminders hasPriority](self, "hasPriority") || [v5 hasPriority])
    {
      if (![(BMProactiveHarvestingReminders *)self hasPriority])
      {
        goto LABEL_43;
      }

      if (![v5 hasPriority])
      {
        goto LABEL_43;
      }

      v50 = [(BMProactiveHarvestingReminders *)self priority];
      if (v50 != [v5 priority])
      {
        goto LABEL_43;
      }
    }

    v51 = [(BMProactiveHarvestingReminders *)self contentProtection];
    v52 = [v5 contentProtection];
    v53 = v52;
    if (v51 == v52)
    {
    }

    else
    {
      v54 = [(BMProactiveHarvestingReminders *)self contentProtection];
      v55 = [v5 contentProtection];
      v56 = [v54 isEqual:v55];

      if (!v56)
      {
LABEL_43:
        v12 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    v58 = [(BMProactiveHarvestingReminders *)self personaId];
    v59 = [v5 personaId];
    if (v58 == v59)
    {
      v12 = 1;
    }

    else
    {
      v60 = [(BMProactiveHarvestingReminders *)self personaId];
      v61 = [v5 personaId];
      v12 = [v60 isEqual:v61];
    }

    goto LABEL_44;
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (NSDate)dueDateTimestamp
{
  if (self->_hasRaw_dueDateTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_dueDateTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)completionDateTimestamp
{
  if (self->_hasRaw_completionDateTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_completionDateTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
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
  v48[11] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingReminders *)self uniqueID];
  v4 = [(BMProactiveHarvestingReminders *)self domainID];
  v5 = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMProactiveHarvestingReminders *)self title];
  v10 = [(BMProactiveHarvestingReminders *)self notes];
  if ([(BMProactiveHarvestingReminders *)self hasIsAllDay])
  {
    v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingReminders isAllDay](self, "isAllDay")}];
  }

  else
  {
    v46 = 0;
  }

  v11 = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
  if (v11)
  {
    v12 = MEMORY[0x1E696AD98];
    v13 = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
    [v13 timeIntervalSinceReferenceDate];
    v45 = [v12 numberWithDouble:?];
  }

  else
  {
    v45 = 0;
  }

  v14 = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
  if (v14)
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
    [v16 timeIntervalSinceReferenceDate];
    v44 = [v15 numberWithDouble:?];
  }

  else
  {
    v44 = 0;
  }

  if ([(BMProactiveHarvestingReminders *)self hasPriority])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingReminders priority](self, "priority")}];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(BMProactiveHarvestingReminders *)self contentProtection];
  v19 = [(BMProactiveHarvestingReminders *)self personaId];
  v47[0] = @"uniqueID";
  v20 = v3;
  if (!v3)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v20;
  v48[0] = v20;
  v47[1] = @"domainID";
  v21 = v4;
  if (!v4)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v21;
  v48[1] = v21;
  v47[2] = @"absoluteTimestamp";
  v22 = v8;
  if (!v8)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v22;
  v48[2] = v22;
  v47[3] = @"title";
  v23 = v9;
  if (!v9)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v3;
  v35 = v23;
  v48[3] = v23;
  v47[4] = @"notes";
  v24 = v10;
  if (!v10)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v4;
  v34 = v24;
  v48[4] = v24;
  v47[5] = @"isAllDay";
  v25 = v46;
  if (!v46)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v8;
  v48[5] = v25;
  v47[6] = @"completionDateTimestamp";
  v26 = v45;
  if (!v45)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v9;
  v48[6] = v26;
  v47[7] = @"dueDateTimestamp";
  v27 = v44;
  if (!v44)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v10;
  v48[7] = v27;
  v47[8] = @"priority";
  v29 = v17;
  if (!v17)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v48[8] = v29;
  v47[9] = @"contentProtection";
  v30 = v18;
  if (!v18)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v48[9] = v30;
  v47[10] = @"personaId";
  v31 = v19;
  if (!v19)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v48[10] = v31;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:11];
  if (v19)
  {
    if (v18)
    {
      goto LABEL_40;
    }

LABEL_57:

    if (v17)
    {
      goto LABEL_41;
    }

    goto LABEL_58;
  }

  if (!v18)
  {
    goto LABEL_57;
  }

LABEL_40:
  if (v17)
  {
    goto LABEL_41;
  }

LABEL_58:

LABEL_41:
  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v46)
  {
  }

  if (!v28)
  {
  }

  if (v40)
  {
    if (v41)
    {
      goto LABEL_51;
    }
  }

  else
  {

    if (v41)
    {
LABEL_51:
      if (v42)
      {
        goto LABEL_52;
      }

LABEL_61:

      if (v43)
      {
        goto LABEL_53;
      }

      goto LABEL_62;
    }
  }

  if (!v42)
  {
    goto LABEL_61;
  }

LABEL_52:
  if (v43)
  {
    goto LABEL_53;
  }

LABEL_62:

LABEL_53:
  v32 = *MEMORY[0x1E69E9840];

  return v39;
}

- (BMProactiveHarvestingReminders)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v152[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"uniqueID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"domainID"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v21 = 0;
          v22 = 0;
          goto LABEL_81;
        }

        v23 = v6;
        v24 = v7;
        v25 = a4;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v149 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
        v150 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        v30 = v27;
        v9 = v29;
        v21 = 0;
        v22 = 0;
        *v25 = [v26 initWithDomain:v30 code:2 userInfo:v29];
        v7 = v24;
        v6 = v23;
        v10 = v28;
        goto LABEL_80;
      }

      v128 = v8;
    }

    else
    {
      v128 = 0;
    }

    v9 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x1E695DF00];
        v12 = a4;
        v13 = v9;
        v14 = [v11 alloc];
        [v13 doubleValue];
        v16 = v15;

        a4 = v12;
        v17 = [v14 initWithTimeIntervalSinceReferenceDate:v16];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v10 = [v31 dateFromString:v9];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v10 = 0;
            v22 = 0;
            v21 = v128;
            goto LABEL_80;
          }

          v90 = v6;
          v91 = v7;
          v92 = a4;
          v93 = objc_alloc(MEMORY[0x1E696ABC0]);
          v94 = v9;
          v95 = *MEMORY[0x1E698F240];
          v147 = *MEMORY[0x1E696A578];
          v127 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v148 = v127;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v96 = v95;
          v9 = v94;
          v22 = 0;
          *v92 = [v93 initWithDomain:v96 code:2 userInfo:v32];
          v7 = v91;
          v6 = v90;
          v10 = 0;
          v21 = v128;
LABEL_79:

LABEL_80:
          goto LABEL_81;
        }

        v17 = v9;
      }

      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

LABEL_23:
    v32 = [v5 objectForKeyedSubscript:@"title"];
    v124 = v32;
    v126 = v10;
    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v127 = 0;
          v22 = 0;
          v21 = v128;
          goto LABEL_79;
        }

        v115 = a4;
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = v9;
        v45 = *MEMORY[0x1E698F240];
        v145 = *MEMORY[0x1E696A578];
        v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
        v146 = v125;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
        v47 = v43;
        v48 = v46;
        v49 = v45;
        v9 = v44;
        v127 = 0;
        v22 = 0;
        *v115 = [v47 initWithDomain:v49 code:2 userInfo:v46];
        v21 = v128;
        goto LABEL_78;
      }

      v127 = v32;
    }

    else
    {
      v127 = 0;
    }

    v33 = [v5 objectForKeyedSubscript:@"notes"];
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v125 = 0;
          v22 = 0;
          v21 = v128;
          v48 = v33;
          goto LABEL_77;
        }

        v122 = v6;
        v118 = v7;
        v50 = a4;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = v9;
        v53 = *MEMORY[0x1E698F240];
        v143 = *MEMORY[0x1E696A578];
        v48 = v33;
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"notes"];
        v144 = v34;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v55 = v53;
        v9 = v52;
        v120 = v54;
        v125 = 0;
        v22 = 0;
        *v50 = [v51 initWithDomain:v55 code:2 userInfo:?];
        v7 = v118;
        v6 = v122;
        goto LABEL_75;
      }

      v116 = v33;
      v125 = v33;
    }

    else
    {
      v116 = v33;
      v125 = 0;
    }

    v34 = [v5 objectForKeyedSubscript:@"isAllDay"];
    v120 = v34;
    v114 = a4;
    if (v34)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v34 = 0;
            v22 = 0;
            v21 = v128;
            v48 = v116;
            goto LABEL_76;
          }

          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = v9;
          v58 = *MEMORY[0x1E698F240];
          v141 = *MEMORY[0x1E696A578];
          v59 = objc_alloc(MEMORY[0x1E696AEC0]);
          v107 = objc_opt_class();
          v60 = v59;
          v32 = v124;
          v121 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v107, @"isAllDay"];
          v142 = v121;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
          v62 = v58;
          v9 = v57;
          v112 = v61;
          v63 = [v56 initWithDomain:v62 code:2 userInfo:?];
          v34 = 0;
          v22 = 0;
          v48 = v116;
          *v114 = v63;
          goto LABEL_74;
        }

        v34 = v34;
      }
    }

    v35 = [v5 objectForKeyedSubscript:@"completionDateTimestamp"];
    v112 = v35;
    if (v35 && (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = MEMORY[0x1E695DF00];
        v38 = v36;
        v39 = [v37 alloc];
        [v38 doubleValue];
        v41 = v40;

        v42 = [v39 initWithTimeIntervalSinceReferenceDate:v41];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v64 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v121 = [v64 dateFromString:v36];

          goto LABEL_52;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v97 = v6;
          v98 = v7;
          if (!v114)
          {
            v121 = 0;
            v22 = 0;
            v32 = v124;
            v6 = v97;
            v48 = v116;
            goto LABEL_74;
          }

          v99 = objc_alloc(MEMORY[0x1E696ABC0]);
          v100 = v9;
          v101 = *MEMORY[0x1E698F240];
          v139 = *MEMORY[0x1E696A578];
          v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"completionDateTimestamp"];
          v140 = v117;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
          v102 = v101;
          v9 = v100;
          v121 = 0;
          v22 = 0;
          *v114 = [v99 initWithDomain:v102 code:2 userInfo:v65];
          v7 = v98;
          v6 = v97;
LABEL_73:
          v48 = v116;

          v32 = v124;
LABEL_74:

LABEL_75:
          v21 = v128;
LABEL_76:

LABEL_77:
          v10 = v126;
LABEL_78:

          goto LABEL_79;
        }

        v42 = v36;
      }

      v121 = v42;
    }

    else
    {
      v121 = 0;
    }

LABEL_52:
    v65 = [v5 objectForKeyedSubscript:@"dueDateTimestamp"];
    v119 = v7;
    v110 = v9;
    v111 = v8;
    if (v65 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = MEMORY[0x1E695DF00];
        v67 = v9;
        v68 = v65;
        v69 = [v66 alloc];
        [v68 doubleValue];
        v71 = v70;

        v9 = v67;
        v72 = [v69 initWithTimeIntervalSinceReferenceDate:v71];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v73 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v117 = [v73 dateFromString:v65];

          goto LABEL_60;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v114)
          {
            v117 = 0;
            v22 = 0;
            goto LABEL_73;
          }

          v103 = objc_alloc(MEMORY[0x1E696ABC0]);
          v104 = *MEMORY[0x1E698F240];
          v137 = *MEMORY[0x1E696A578];
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"dueDateTimestamp"];
          v138 = v75;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v105 = v103;
          v9 = v110;
          v106 = v104;
          v7 = v119;
          v117 = 0;
          v22 = 0;
          *v114 = [v105 initWithDomain:v106 code:2 userInfo:v74];
          goto LABEL_72;
        }

        v72 = v65;
      }

      v117 = v72;
    }

    else
    {
      v117 = 0;
    }

LABEL_60:
    v74 = [v5 objectForKeyedSubscript:@"priority"];
    v113 = v34;
    if (v74 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v114)
        {
          v75 = 0;
          v22 = 0;
          goto LABEL_72;
        }

        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = *MEMORY[0x1E698F240];
        v135 = *MEMORY[0x1E696A578];
        v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"priority"];
        v136 = v78;
        v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
        v85 = [v83 initWithDomain:v84 code:2 userInfo:v76];
        v75 = 0;
        v22 = 0;
        *v114 = v85;
LABEL_71:

        v7 = v119;
        v9 = v110;
        v34 = v113;
LABEL_72:

        v8 = v111;
        goto LABEL_73;
      }

      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    v76 = [v5 objectForKeyedSubscript:@"contentProtection"];
    v123 = v6;
    if (v76 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v114)
        {
          v78 = 0;
          v22 = 0;
          goto LABEL_71;
        }

        v77 = self;
        v108 = objc_alloc(MEMORY[0x1E696ABC0]);
        v86 = *MEMORY[0x1E698F240];
        v133 = *MEMORY[0x1E696A578];
        v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
        v134 = v80;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
        v87 = [v108 initWithDomain:v86 code:2 userInfo:v79];
        v78 = 0;
        v22 = 0;
        *v114 = v87;
        goto LABEL_70;
      }

      v77 = self;
      v78 = v76;
    }

    else
    {
      v77 = self;
      v78 = 0;
    }

    v79 = [v5 objectForKeyedSubscript:@"personaId"];
    if (v79 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v114)
        {
          v130 = objc_alloc(MEMORY[0x1E696ABC0]);
          v109 = *MEMORY[0x1E698F240];
          v131 = *MEMORY[0x1E696A578];
          v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
          v132 = v88;
          v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
          *v114 = [v130 initWithDomain:v109 code:2 userInfo:v89];
        }

        v80 = 0;
        v22 = 0;
        goto LABEL_70;
      }

      v80 = v79;
    }

    else
    {
      v80 = 0;
    }

    v22 = [(BMProactiveHarvestingReminders *)v77 initWithUniqueID:v119 domainID:v128 absoluteTimestamp:v126 title:v127 notes:v125 isAllDay:v113 completionDateTimestamp:v121 dueDateTimestamp:v117 priority:v75 contentProtection:v78 personaId:v80];
    v77 = v22;
LABEL_70:
    self = v77;

    v6 = v123;
    goto LABEL_71;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (!a4)
  {
    v7 = 0;
    v22 = 0;
    goto LABEL_82;
  }

  v18 = a4;
  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v151 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
  v152[0] = v21;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:&v151 count:1];
  v22 = 0;
  *v18 = [v19 initWithDomain:v20 code:2 userInfo:v8];
  v7 = 0;
LABEL_81:

LABEL_82:
  v81 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingReminders *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_domainID)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_notes)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_hasIsAllDay)
  {
    isAllDay = self->_isAllDay;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

  if (self->_hasRaw_completionDateTimestamp)
  {
    raw_completionDateTimestamp = self->_raw_completionDateTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_hasRaw_dueDateTimestamp)
  {
    raw_dueDateTimestamp = self->_raw_dueDateTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_hasPriority)
  {
    priority = self->_priority;
    PBDataWriterWriteSint32Field();
    v4 = v10;
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = BMProactiveHarvestingReminders;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_84;
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
        LOBYTE(v48) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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
      if ((v14 >> 3) <= 5)
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v18 = PBReaderReadString();
            v19 = 80;
          }

          else
          {
            if (v15 != 2)
            {
LABEL_66:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_83;
              }

              goto LABEL_81;
            }

            v18 = PBReaderReadString();
            v19 = 88;
          }
        }

        else
        {
          switch(v15)
          {
            case 3:
              v5->_hasRaw_absoluteTimestamp = 1;
              v48 = 0;
              v23 = [v4 position] + 8;
              if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
              {
                v42 = [v4 data];
                [v42 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
              }

              else
              {
                [v4 _setError];
              }

              v40 = v48;
              v41 = 24;
LABEL_80:
              *(&v5->super.super.isa + v41) = v40;
              goto LABEL_81;
            case 4:
              v18 = PBReaderReadString();
              v19 = 96;
              break;
            case 5:
              v18 = PBReaderReadString();
              v19 = 104;
              break;
            default:
              goto LABEL_66;
          }
        }
      }

      else
      {
        if (v15 <= 8)
        {
          switch(v15)
          {
            case 6:
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v5->_hasIsAllDay = 1;
              while (1)
              {
                LOBYTE(v48) = 0;
                v28 = [v4 position] + 1;
                if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
                {
                  v30 = [v4 data];
                  [v30 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v27 |= (v48 & 0x7F) << v25;
                if ((v48 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v13 = v26++ >= 9;
                if (v13)
                {
                  LOBYTE(v31) = 0;
                  goto LABEL_69;
                }
              }

              v31 = (v27 != 0) & ~[v4 hasError];
LABEL_69:
              v5->_isAllDay = v31;
              goto LABEL_81;
            case 7:
              v5->_hasRaw_completionDateTimestamp = 1;
              v48 = 0;
              v20 = [v4 position] + 8;
              if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 8, v21 <= objc_msgSend(v4, "length")))
              {
                v39 = [v4 data];
                [v39 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
              }

              else
              {
                [v4 _setError];
              }

              v40 = v48;
              v41 = 40;
              break;
            case 8:
              v5->_hasRaw_dueDateTimestamp = 1;
              v48 = 0;
              v16 = [v4 position] + 8;
              if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
              {
                v43 = [v4 data];
                [v43 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
              }

              else
              {
                [v4 _setError];
              }

              v40 = v48;
              v41 = 56;
              break;
            default:
              goto LABEL_66;
          }

          goto LABEL_80;
        }

        switch(v15)
        {
          case 9:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasPriority = 1;
            while (1)
            {
              LOBYTE(v48) = 0;
              v35 = [v4 position] + 1;
              if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
              {
                v37 = [v4 data];
                [v37 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v34 |= (v48 & 0x7F) << v32;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v13 = v33++ >= 9;
              if (v13)
              {
                v38 = 0;
                goto LABEL_73;
              }
            }

            if ([v4 hasError])
            {
              v38 = 0;
            }

            else
            {
              v38 = v34;
            }

LABEL_73:
            v5->_priority = -(v38 & 1) ^ (v38 >> 1);
            goto LABEL_81;
          case 0xA:
            v18 = PBReaderReadString();
            v19 = 112;
            break;
          case 0xB:
            v18 = PBReaderReadString();
            v19 = 120;
            break;
          default:
            goto LABEL_66;
        }
      }

      v22 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

LABEL_81:
      v44 = [v4 position];
    }

    while (v44 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_83:
    v45 = 0;
  }

  else
  {
LABEL_84:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [(BMProactiveHarvestingReminders *)self uniqueID];
  v3 = [(BMProactiveHarvestingReminders *)self domainID];
  v4 = [(BMProactiveHarvestingReminders *)self absoluteTimestamp];
  v5 = [(BMProactiveHarvestingReminders *)self title];
  v6 = [(BMProactiveHarvestingReminders *)self notes];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingReminders isAllDay](self, "isAllDay")}];
  v8 = [(BMProactiveHarvestingReminders *)self completionDateTimestamp];
  v9 = [(BMProactiveHarvestingReminders *)self dueDateTimestamp];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingReminders priority](self, "priority")}];
  v11 = [(BMProactiveHarvestingReminders *)self contentProtection];
  v12 = [(BMProactiveHarvestingReminders *)self personaId];
  v15 = [v14 initWithFormat:@"BMProactiveHarvestingReminders with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, title: %@, notes: %@, isAllDay: %@, completionDateTimestamp: %@, dueDateTimestamp: %@, priority: %@, contentProtection: %@, personaId: %@", v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMProactiveHarvestingReminders)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 title:(id)a6 notes:(id)a7 isAllDay:(id)a8 completionDateTimestamp:(id)a9 dueDateTimestamp:(id)a10 priority:(id)a11 contentProtection:(id)a12 personaId:(id)a13
{
  v38 = a3;
  v31 = a4;
  v37 = a4;
  v18 = a5;
  v36 = a6;
  v32 = a7;
  v35 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v34 = a13;
  v39.receiver = self;
  v39.super_class = BMProactiveHarvestingReminders;
  v24 = [(BMEventBase *)&v39 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v24->_uniqueID, a3);
    objc_storeStrong(&v24->_domainID, v31);
    if (v18)
    {
      v24->_hasRaw_absoluteTimestamp = 1;
      [v18 timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_absoluteTimestamp = 0;
      v25 = -1.0;
    }

    v24->_raw_absoluteTimestamp = v25;
    objc_storeStrong(&v24->_title, a6);
    objc_storeStrong(&v24->_notes, v32);
    if (v19)
    {
      v24->_hasIsAllDay = 1;
      v24->_isAllDay = [v19 BOOLValue];
    }

    else
    {
      v24->_hasIsAllDay = 0;
      v24->_isAllDay = 0;
    }

    if (v20)
    {
      v24->_hasRaw_completionDateTimestamp = 1;
      [v20 timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_completionDateTimestamp = 0;
      v26 = -1.0;
    }

    v24->_raw_completionDateTimestamp = v26;
    if (v21)
    {
      v24->_hasRaw_dueDateTimestamp = 1;
      [v21 timeIntervalSinceReferenceDate];
    }

    else
    {
      v24->_hasRaw_dueDateTimestamp = 0;
      v27 = -1.0;
    }

    v24->_raw_dueDateTimestamp = v27;
    if (v22)
    {
      v24->_hasPriority = 1;
      v28 = [v22 intValue];
    }

    else
    {
      v24->_hasPriority = 0;
      v28 = -1;
    }

    v24->_priority = v28;
    objc_storeStrong(&v24->_contentProtection, a12);
    objc_storeStrong(&v24->_personaId, a13);
  }

  return v24;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:4 type:13 subMessageClass:0];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notes" number:5 type:13 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAllDay" number:6 type:12 subMessageClass:0];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"completionDateTimestamp" number:7 type:0 subMessageClass:0];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dueDateTimestamp" number:8 type:0 subMessageClass:0];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"priority" number:9 type:6 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:10 type:13 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:11 type:13 subMessageClass:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"notes" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAllDay" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"completionDateTimestamp" dataType:3 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:1];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dueDateTimestamp" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:1];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"priority" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:6 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v14;
  v16[6] = v7;
  v16[7] = v8;
  v16[8] = v15;
  v16[9] = v9;
  v16[10] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMProactiveHarvestingReminders alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[17] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end