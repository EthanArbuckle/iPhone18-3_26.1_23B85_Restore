@interface BMProactiveHarvestingThirdPartyApp
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingThirdPartyApp)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingThirdPartyApp)initWithUniqueID:(id)a3 domainID:(id)a4 bundleID:(id)a5 absoluteTimestamp:(id)a6 title:(id)a7 desc:(id)a8 comment:(id)a9 content:(id)a10 contentProtection:(id)a11 personaId:(id)a12;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingThirdPartyApp

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingThirdPartyApp *)self uniqueID];
    v7 = [v5 uniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingThirdPartyApp *)self uniqueID];
      v10 = [v5 uniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_37;
      }
    }

    v13 = [(BMProactiveHarvestingThirdPartyApp *)self domainID];
    v14 = [v5 domainID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingThirdPartyApp *)self domainID];
      v17 = [v5 domainID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_37;
      }
    }

    v19 = [(BMProactiveHarvestingThirdPartyApp *)self bundleID];
    v20 = [v5 bundleID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingThirdPartyApp *)self bundleID];
      v23 = [v5 bundleID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_37;
      }
    }

    v25 = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
    v26 = [v5 absoluteTimestamp];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
      v29 = [v5 absoluteTimestamp];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_37;
      }
    }

    v31 = [(BMProactiveHarvestingThirdPartyApp *)self title];
    v32 = [v5 title];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingThirdPartyApp *)self title];
      v35 = [v5 title];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_37;
      }
    }

    v37 = [(BMProactiveHarvestingThirdPartyApp *)self desc];
    v38 = [v5 desc];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMProactiveHarvestingThirdPartyApp *)self desc];
      v41 = [v5 desc];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_37;
      }
    }

    v43 = [(BMProactiveHarvestingThirdPartyApp *)self comment];
    v44 = [v5 comment];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMProactiveHarvestingThirdPartyApp *)self comment];
      v47 = [v5 comment];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_37;
      }
    }

    v49 = [(BMProactiveHarvestingThirdPartyApp *)self content];
    v50 = [v5 content];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMProactiveHarvestingThirdPartyApp *)self content];
      v53 = [v5 content];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_37;
      }
    }

    v55 = [(BMProactiveHarvestingThirdPartyApp *)self contentProtection];
    v56 = [v5 contentProtection];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMProactiveHarvestingThirdPartyApp *)self contentProtection];
      v59 = [v5 contentProtection];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
LABEL_37:
        v12 = 0;
LABEL_38:

        goto LABEL_39;
      }
    }

    v62 = [(BMProactiveHarvestingThirdPartyApp *)self personaId];
    v63 = [v5 personaId];
    if (v62 == v63)
    {
      v12 = 1;
    }

    else
    {
      v64 = [(BMProactiveHarvestingThirdPartyApp *)self personaId];
      v65 = [v5 personaId];
      v12 = [v64 isEqual:v65];
    }

    goto LABEL_38;
  }

  v12 = 0;
LABEL_39:

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
  v41[10] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingThirdPartyApp *)self uniqueID];
  v4 = [(BMProactiveHarvestingThirdPartyApp *)self domainID];
  v5 = [(BMProactiveHarvestingThirdPartyApp *)self bundleID];
  v6 = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMProactiveHarvestingThirdPartyApp *)self title];
  v11 = [(BMProactiveHarvestingThirdPartyApp *)self desc];
  v12 = [(BMProactiveHarvestingThirdPartyApp *)self comment];
  v39 = [(BMProactiveHarvestingThirdPartyApp *)self content];
  v13 = [(BMProactiveHarvestingThirdPartyApp *)self contentProtection];
  v14 = [(BMProactiveHarvestingThirdPartyApp *)self personaId];
  v40[0] = @"uniqueID";
  v15 = v3;
  if (!v3)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v15;
  v41[0] = v15;
  v40[1] = @"domainID";
  v16 = v4;
  if (!v4)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v16;
  v41[1] = v16;
  v40[2] = @"bundleID";
  v17 = v5;
  if (!v5)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v3;
  v31 = v17;
  v41[2] = v17;
  v40[3] = @"absoluteTimestamp";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v4;
  v30 = v18;
  v41[3] = v18;
  v40[4] = @"title";
  v19 = v10;
  if (!v10)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v5;
  v29 = v19;
  v41[4] = v19;
  v40[5] = @"desc";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v9;
  v41[5] = v20;
  v40[6] = @"comment";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v41[6] = v21;
  v40[7] = @"content";
  v23 = v39;
  if (!v39)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v11;
  v41[7] = v23;
  v40[8] = @"contentProtection";
  v25 = v13;
  if (!v13)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v41[8] = v25;
  v40[9] = @"personaId";
  v26 = v14;
  if (!v14)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v41[9] = v26;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:10];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_26;
    }
  }

LABEL_26:
  if (!v39)
  {
  }

  if (!v12)
  {
  }

  if (!v24)
  {
  }

  if (!v22)
  {
  }

  if (!v35)
  {
  }

  if (v36)
  {
    if (v37)
    {
      goto LABEL_38;
    }

LABEL_45:

    if (v38)
    {
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  if (!v37)
  {
    goto LABEL_45;
  }

LABEL_38:
  if (v38)
  {
    goto LABEL_39;
  }

LABEL_46:

LABEL_39:
  v27 = *MEMORY[0x1E69E9840];

  return v34;
}

- (BMProactiveHarvestingThirdPartyApp)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v114[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"domainID"];
    v90 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v25 = 0;
          goto LABEL_57;
        }

        v76 = self;
        v26 = a4;
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v28 = *MEMORY[0x1E698F240];
        v111 = *MEMORY[0x1E696A578];
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
        v112 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v31 = v27;
        v11 = v30;
        v32 = [v31 initWithDomain:v28 code:2 userInfo:v30];
        v10 = 0;
        v25 = 0;
        *v26 = v32;
        goto LABEL_86;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"bundleID"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v91 = 0;
LABEL_10:
      v12 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
      v83 = v11;
      v84 = v12;
      if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = MEMORY[0x1E695DF00];
          v15 = v13;
          v16 = [v14 alloc];
          [v15 doubleValue];
          v18 = v17;

          v19 = [v16 initWithTimeIntervalSinceReferenceDate:v18];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v93 = [v37 dateFromString:v13];

            goto LABEL_30;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v90)
            {
              v93 = 0;
              v25 = 0;
              v29 = v91;
              v35 = v84;
              goto LABEL_55;
            }

            v94 = objc_alloc(MEMORY[0x1E696ABC0]);
            v68 = v10;
            v69 = *MEMORY[0x1E698F240];
            v107 = *MEMORY[0x1E696A578];
            v35 = v84;
            v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
            v108 = v89;
            v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
            v71 = v69;
            v10 = v68;
            v85 = v70;
            v72 = [v94 initWithDomain:v71 code:2 userInfo:?];
            v93 = 0;
            v25 = 0;
            *v90 = v72;
            v29 = v91;
            goto LABEL_54;
          }

          v19 = v13;
        }

        v93 = v19;
      }

      else
      {
        v93 = 0;
      }

LABEL_30:
      v38 = [v6 objectForKeyedSubscript:@"title"];
      v88 = v10;
      v85 = v38;
      if (v38 && (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v50 = self;
          if (!v90)
          {
            v89 = 0;
            v25 = 0;
            v29 = v91;
            v35 = v84;
            goto LABEL_54;
          }

          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v105 = *MEMORY[0x1E696A578];
          v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
          v106 = v86;
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
          v53 = v51;
          v10 = v88;
          v54 = [v53 initWithDomain:v52 code:2 userInfo:v40];
          v89 = 0;
          v25 = 0;
          *v90 = v54;
          goto LABEL_92;
        }

        v89 = v39;
      }

      else
      {
        v89 = 0;
      }

      v40 = [v6 objectForKeyedSubscript:@"desc"];
      v81 = v9;
      if (!v40 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v86 = 0;
LABEL_36:
        v41 = [v6 objectForKeyedSubscript:@"comment"];
        if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v90)
            {
              v82 = 0;
              v25 = 0;
              goto LABEL_52;
            }

            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = *MEMORY[0x1E698F240];
            v101 = *MEMORY[0x1E696A578];
            v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"comment"];
            v102 = v79;
            v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
            v60 = [v58 initWithDomain:v59 code:2 userInfo:v42];
            v82 = 0;
            v25 = 0;
            *v90 = v60;
            goto LABEL_51;
          }

          v82 = v41;
        }

        else
        {
          v82 = 0;
        }

        v42 = [v6 objectForKeyedSubscript:@"content"];
        v74 = v7;
        v78 = v8;
        if (v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v90)
            {
              v79 = 0;
              v25 = 0;
              goto LABEL_51;
            }

            v44 = self;
            v80 = objc_alloc(MEMORY[0x1E696ABC0]);
            v61 = *MEMORY[0x1E698F240];
            v99 = *MEMORY[0x1E696A578];
            v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"content"];
            v100 = v45;
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
            v62 = [v80 initWithDomain:v61 code:2 userInfo:v43];
            v79 = 0;
            v25 = 0;
            *v90 = v62;
LABEL_50:

            self = v44;
            v7 = v74;
            v8 = v78;
            v10 = v88;
LABEL_51:

            v9 = v81;
LABEL_52:

LABEL_53:
            v35 = v84;

            v29 = v91;
LABEL_54:

            v11 = v83;
            goto LABEL_55;
          }

          v79 = v42;
        }

        else
        {
          v79 = 0;
        }

        v43 = [v6 objectForKeyedSubscript:@"contentProtection"];
        v44 = self;
        if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v90)
            {
              v45 = 0;
              v25 = 0;
              goto LABEL_50;
            }

            v63 = objc_alloc(MEMORY[0x1E696ABC0]);
            v64 = *MEMORY[0x1E698F240];
            v97 = *MEMORY[0x1E696A578];
            v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
            v98 = v47;
            v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            v65 = [v63 initWithDomain:v64 code:2 userInfo:v46];
            v45 = 0;
            v25 = 0;
            *v90 = v65;
            goto LABEL_49;
          }

          v45 = v43;
        }

        else
        {
          v45 = 0;
        }

        v46 = [v6 objectForKeyedSubscript:@"personaId"];
        if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v90)
            {
              v77 = objc_alloc(MEMORY[0x1E696ABC0]);
              v73 = *MEMORY[0x1E698F240];
              v95 = *MEMORY[0x1E696A578];
              v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
              v96 = v66;
              v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              *v90 = [v77 initWithDomain:v73 code:2 userInfo:v67];
            }

            v47 = 0;
            v25 = 0;
            goto LABEL_49;
          }

          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        v25 = [(BMProactiveHarvestingThirdPartyApp *)v44 initWithUniqueID:v78 domainID:v88 bundleID:v91 absoluteTimestamp:v93 title:v89 desc:v86 comment:v82 content:v79 contentProtection:v45 personaId:v47];
        v44 = v25;
LABEL_49:

        goto LABEL_50;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v86 = v40;
        goto LABEL_36;
      }

      v50 = self;
      if (v90)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v87 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"desc"];
        v104 = v82;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v56 = v55;
        v10 = v88;
        v57 = [v56 initWithDomain:v87 code:2 userInfo:v41];
        v86 = 0;
        v25 = 0;
        *v90 = v57;
        goto LABEL_52;
      }

      v86 = 0;
      v25 = 0;
LABEL_92:
      self = v50;
      goto LABEL_53;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v91 = v11;
      goto LABEL_10;
    }

    v76 = self;
    if (v90)
    {
      v92 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = v10;
      v34 = *MEMORY[0x1E698F240];
      v109 = *MEMORY[0x1E696A578];
      v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
      v110 = v93;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
      v36 = v34;
      v10 = v33;
      v29 = 0;
      v25 = 0;
      *v90 = [v92 initWithDomain:v36 code:2 userInfo:v35];
LABEL_55:

LABEL_56:
      goto LABEL_57;
    }

    v29 = 0;
    v25 = 0;
LABEL_86:
    self = v76;
    goto LABEL_56;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v25 = 0;
    goto LABEL_58;
  }

  v75 = self;
  v20 = a4;
  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v113 = *MEMORY[0x1E696A578];
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
  v114[0] = v23;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:&v113 count:1];
  v24 = v22;
  v10 = v23;
  v8 = 0;
  v25 = 0;
  *v20 = [v21 initWithDomain:v24 code:2 userInfo:v9];
  self = v75;
LABEL_57:

LABEL_58:
  v48 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingThirdPartyApp *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_domainID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_desc)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_comment)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_content)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMProactiveHarvestingThirdPartyApp;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_52;
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
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
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
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_43;
          }

          if (v15 == 7)
          {
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_43;
          }
        }

        else
        {
          switch(v15)
          {
            case 8:
              v16 = PBReaderReadString();
              v17 = 88;
              goto LABEL_43;
            case 9:
              v16 = PBReaderReadString();
              v17 = 96;
              goto LABEL_43;
            case 0xA:
              v16 = PBReaderReadString();
              v17 = 104;
              goto LABEL_43;
          }
        }
      }

      else if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_43;
        }

        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 48;
          goto LABEL_43;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_43;
          case 4:
            v5->_hasRaw_absoluteTimestamp = 1;
            v26 = 0.0;
            v18 = [v4 position] + 8;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_absoluteTimestamp = v26;
            goto LABEL_44;
          case 5:
            v16 = PBReaderReadString();
            v17 = 64;
LABEL_43:
            v20 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_44;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_51;
      }

LABEL_44:
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_51:
    v23 = 0;
  }

  else
  {
LABEL_52:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(BMProactiveHarvestingThirdPartyApp *)self uniqueID];
  v3 = [(BMProactiveHarvestingThirdPartyApp *)self domainID];
  v4 = [(BMProactiveHarvestingThirdPartyApp *)self bundleID];
  v5 = [(BMProactiveHarvestingThirdPartyApp *)self absoluteTimestamp];
  v6 = [(BMProactiveHarvestingThirdPartyApp *)self title];
  v7 = [(BMProactiveHarvestingThirdPartyApp *)self desc];
  v8 = [(BMProactiveHarvestingThirdPartyApp *)self comment];
  v9 = [(BMProactiveHarvestingThirdPartyApp *)self content];
  v10 = [(BMProactiveHarvestingThirdPartyApp *)self contentProtection];
  v11 = [(BMProactiveHarvestingThirdPartyApp *)self personaId];
  v12 = [v15 initWithFormat:@"BMProactiveHarvestingThirdPartyApp with uniqueID: %@, domainID: %@, bundleID: %@, absoluteTimestamp: %@, title: %@, desc: %@, comment: %@, content: %@, contentProtection: %@, personaId: %@", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMProactiveHarvestingThirdPartyApp)initWithUniqueID:(id)a3 domainID:(id)a4 bundleID:(id)a5 absoluteTimestamp:(id)a6 title:(id)a7 desc:(id)a8 comment:(id)a9 content:(id)a10 contentProtection:(id)a11 personaId:(id)a12
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v18 = a6;
  v27 = a7;
  v29 = a7;
  v28 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v33.receiver = self;
  v33.super_class = BMProactiveHarvestingThirdPartyApp;
  v23 = [(BMEventBase *)&v33 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_uniqueID, a3);
    objc_storeStrong(&v23->_domainID, a4);
    objc_storeStrong(&v23->_bundleID, a5);
    if (v18)
    {
      v23->_hasRaw_absoluteTimestamp = 1;
      [v18 timeIntervalSinceReferenceDate];
    }

    else
    {
      v23->_hasRaw_absoluteTimestamp = 0;
      v24 = -1.0;
    }

    v23->_raw_absoluteTimestamp = v24;
    objc_storeStrong(&v23->_title, v27);
    objc_storeStrong(&v23->_desc, a8);
    objc_storeStrong(&v23->_comment, a9);
    objc_storeStrong(&v23->_content, a10);
    objc_storeStrong(&v23->_contentProtection, a11);
    objc_storeStrong(&v23->_personaId, a12);
  }

  return v23;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:3 type:13 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:4 type:0 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:5 type:13 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"desc" number:6 type:13 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"comment" number:7 type:13 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"content" number:8 type:13 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:9 type:13 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:10 type:13 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:1];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"desc" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"comment" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"content" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v7;
  v15[6] = v8;
  v15[7] = v9;
  v15[8] = v10;
  v15[9] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMProactiveHarvestingThirdPartyApp alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end