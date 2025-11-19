@interface BMProactiveHarvestingNewsArticle
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingNewsArticle)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingNewsArticle)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 title:(id)a6 content:(id)a7 summary:(id)a8 publication:(id)a9 contentProtection:(id)a10 personaId:(id)a11;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingNewsArticle

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingNewsArticle *)self uniqueID];
    v7 = [v5 uniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingNewsArticle *)self uniqueID];
      v10 = [v5 uniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    v13 = [(BMProactiveHarvestingNewsArticle *)self domainID];
    v14 = [v5 domainID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingNewsArticle *)self domainID];
      v17 = [v5 domainID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    v19 = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
    v20 = [v5 absoluteTimestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
      v23 = [v5 absoluteTimestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_33;
      }
    }

    v25 = [(BMProactiveHarvestingNewsArticle *)self title];
    v26 = [v5 title];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingNewsArticle *)self title];
      v29 = [v5 title];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_33;
      }
    }

    v31 = [(BMProactiveHarvestingNewsArticle *)self content];
    v32 = [v5 content];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingNewsArticle *)self content];
      v35 = [v5 content];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_33;
      }
    }

    v37 = [(BMProactiveHarvestingNewsArticle *)self summary];
    v38 = [v5 summary];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMProactiveHarvestingNewsArticle *)self summary];
      v41 = [v5 summary];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_33;
      }
    }

    v43 = [(BMProactiveHarvestingNewsArticle *)self publication];
    v44 = [v5 publication];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMProactiveHarvestingNewsArticle *)self publication];
      v47 = [v5 publication];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_33;
      }
    }

    v49 = [(BMProactiveHarvestingNewsArticle *)self contentProtection];
    v50 = [v5 contentProtection];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMProactiveHarvestingNewsArticle *)self contentProtection];
      v53 = [v5 contentProtection];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
LABEL_33:
        v12 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    v56 = [(BMProactiveHarvestingNewsArticle *)self personaId];
    v57 = [v5 personaId];
    if (v56 == v57)
    {
      v12 = 1;
    }

    else
    {
      v58 = [(BMProactiveHarvestingNewsArticle *)self personaId];
      v59 = [v5 personaId];
      v12 = [v58 isEqual:v59];
    }

    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

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
  v3 = [(BMProactiveHarvestingNewsArticle *)self uniqueID];
  v4 = [(BMProactiveHarvestingNewsArticle *)self domainID];
  v5 = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMProactiveHarvestingNewsArticle *)self title];
  v10 = [(BMProactiveHarvestingNewsArticle *)self content];
  v33 = [(BMProactiveHarvestingNewsArticle *)self summary];
  v11 = [(BMProactiveHarvestingNewsArticle *)self publication];
  v12 = [(BMProactiveHarvestingNewsArticle *)self contentProtection];
  v13 = [(BMProactiveHarvestingNewsArticle *)self personaId];
  v34[0] = @"uniqueID";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v14;
  v35[0] = v14;
  v34[1] = @"domainID";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v15;
  v35[1] = v15;
  v34[2] = @"absoluteTimestamp";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v3;
  v26 = v16;
  v35[2] = v16;
  v34[3] = @"title";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v25 = v17;
  v35[3] = v17;
  v34[4] = @"content";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v8;
  v35[4] = v18;
  v34[5] = @"summary";
  v19 = v33;
  if (!v33)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = v19;
  v34[6] = @"publication";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = v20;
  v34[7] = @"contentProtection";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = v21;
  v34[8] = @"personaId";
  v22 = v13;
  if (!v13)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = v22;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_24;
    }

LABEL_38:

    if (v11)
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  if (!v12)
  {
    goto LABEL_38;
  }

LABEL_24:
  if (v11)
  {
    goto LABEL_25;
  }

LABEL_39:

LABEL_25:
  if (!v33)
  {
  }

  if (!v10)
  {
  }

  if (!v9)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_33;
    }

LABEL_41:

    if (v32)
    {
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  if (!v31)
  {
    goto LABEL_41;
  }

LABEL_33:
  if (v32)
  {
    goto LABEL_34;
  }

LABEL_42:

LABEL_34:
  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BMProactiveHarvestingNewsArticle)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v100[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"domainID"];
    v77 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v24 = 0;
          goto LABEL_50;
        }

        v25 = a4;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v97 = *MEMORY[0x1E696A578];
        v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
        v98 = v81;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v29 = v26;
        v11 = v28;
        v30 = [v29 initWithDomain:v27 code:2 userInfo:v28];
        v10 = 0;
        v24 = 0;
        *v25 = v30;
        goto LABEL_49;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
    v80 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = MEMORY[0x1E695DF00];
        v13 = v11;
        v14 = v11;
        v15 = [v12 alloc];
        [v14 doubleValue];
        v17 = v16;

        v11 = v13;
        v18 = [v15 initWithTimeIntervalSinceReferenceDate:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v81 = [v31 dateFromString:v11];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v77)
          {
            v81 = 0;
            v24 = 0;
            goto LABEL_49;
          }

          v82 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v95 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v96 = v42;
          v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v64 = v62;
          v10 = v80;
          v78 = v63;
          v65 = [v82 initWithDomain:v64 code:2 userInfo:?];
          v81 = 0;
          v24 = 0;
          *v77 = v65;
LABEL_48:

LABEL_49:
          goto LABEL_50;
        }

        v18 = v11;
      }

      v81 = v18;
    }

    else
    {
      v81 = 0;
    }

LABEL_23:
    v32 = [v6 objectForKeyedSubscript:@"title"];
    v73 = v11;
    v74 = v9;
    v78 = v32;
    if (v32 && (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v77)
        {
          v42 = 0;
          v24 = 0;
          goto LABEL_48;
        }

        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v93 = *MEMORY[0x1E696A578];
        v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
        v94 = v79;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        v47 = v45;
        v11 = v73;
        v48 = v46;
        v10 = v80;
        v42 = 0;
        v24 = 0;
        *v77 = [v47 initWithDomain:v48 code:2 userInfo:v34];
        goto LABEL_47;
      }

      v76 = v33;
    }

    else
    {
      v76 = 0;
    }

    v34 = [v6 objectForKeyedSubscript:@"content"];
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v77)
        {
          v79 = 0;
          v24 = 0;
          goto LABEL_46;
        }

        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = *MEMORY[0x1E698F240];
        v91 = *MEMORY[0x1E696A578];
        v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"content"];
        v92 = v75;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v51 = v49;
        v11 = v73;
        v52 = v50;
        v10 = v80;
        v79 = 0;
        v24 = 0;
        *v77 = [v51 initWithDomain:v52 code:2 userInfo:v35];
LABEL_45:

LABEL_46:
        v42 = v76;
LABEL_47:

        v9 = v74;
        goto LABEL_48;
      }

      v79 = v34;
    }

    else
    {
      v79 = 0;
    }

    v35 = [v6 objectForKeyedSubscript:@"summary"];
    v72 = v8;
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v77)
        {
          v75 = 0;
          v24 = 0;
          goto LABEL_45;
        }

        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = *MEMORY[0x1E698F240];
        v89 = *MEMORY[0x1E696A578];
        v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"summary"];
        v90 = v70;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v55 = [v53 initWithDomain:v54 code:2 userInfo:v36];
        v75 = 0;
        v24 = 0;
        *v77 = v55;
        goto LABEL_44;
      }

      v75 = v35;
    }

    else
    {
      v75 = 0;
    }

    v36 = [v6 objectForKeyedSubscript:@"publication"];
    v69 = v7;
    if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v77)
        {
          v70 = 0;
          v24 = 0;
          goto LABEL_44;
        }

        v38 = self;
        v71 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v87 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"publication"];
        v88 = v39;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v57 = [v71 initWithDomain:v56 code:2 userInfo:v37];
        v70 = 0;
        v24 = 0;
        *v77 = v57;
LABEL_43:

        self = v38;
        v7 = v69;
LABEL_44:
        v11 = v73;

        v8 = v72;
        v10 = v80;
        goto LABEL_45;
      }

      v70 = v36;
    }

    else
    {
      v70 = 0;
    }

    v37 = [v6 objectForKeyedSubscript:@"contentProtection"];
    if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v38 = self;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v77)
        {
          v39 = 0;
          v24 = 0;
          goto LABEL_43;
        }

        v67 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = *MEMORY[0x1E698F240];
        v85 = *MEMORY[0x1E696A578];
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
        v86 = v41;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v59 = [v67 initWithDomain:v58 code:2 userInfo:v40];
        v39 = 0;
        v24 = 0;
        *v77 = v59;
        goto LABEL_42;
      }

      v39 = v37;
    }

    else
    {
      v38 = self;
      v39 = 0;
    }

    v40 = [v6 objectForKeyedSubscript:@"personaId"];
    if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v77)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v66 = *MEMORY[0x1E698F240];
          v83 = *MEMORY[0x1E696A578];
          v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
          v84 = v60;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          *v77 = [v68 initWithDomain:v66 code:2 userInfo:v61];
        }

        v41 = 0;
        v24 = 0;
        goto LABEL_42;
      }

      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v24 = [(BMProactiveHarvestingNewsArticle *)v38 initWithUniqueID:v72 domainID:v80 absoluteTimestamp:v81 title:v76 content:v79 summary:v75 publication:v70 contentProtection:v39 personaId:v41];
    v38 = v24;
LABEL_42:

    goto LABEL_43;
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
    v24 = 0;
    goto LABEL_51;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v99 = *MEMORY[0x1E696A578];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
  v100[0] = v22;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:&v99 count:1];
  v23 = v21;
  v10 = v22;
  v8 = 0;
  v24 = 0;
  *v19 = [v20 initWithDomain:v23 code:2 userInfo:v9];
LABEL_50:

LABEL_51:
  v43 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingNewsArticle *)self writeTo:v3];
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

  if (self->_content)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_summary)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_publication)
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
  v25.super_class = BMProactiveHarvestingNewsArticle;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_50;
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
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
            goto LABEL_42;
          }

          if (v15 == 4)
          {
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_41;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_41;
          }

          if (v15 == 2)
          {
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_41;
          }
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_41;
        }

        if (v15 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_41;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_41;
          case 8:
            v16 = PBReaderReadString();
            v17 = 88;
            goto LABEL_41;
          case 9:
            v16 = PBReaderReadString();
            v17 = 96;
LABEL_41:
            v20 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_42;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_49;
      }

LABEL_42:
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_49:
    v23 = 0;
  }

  else
  {
LABEL_50:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMProactiveHarvestingNewsArticle *)self uniqueID];
  v5 = [(BMProactiveHarvestingNewsArticle *)self domainID];
  v6 = [(BMProactiveHarvestingNewsArticle *)self absoluteTimestamp];
  v7 = [(BMProactiveHarvestingNewsArticle *)self title];
  v8 = [(BMProactiveHarvestingNewsArticle *)self content];
  v9 = [(BMProactiveHarvestingNewsArticle *)self summary];
  v10 = [(BMProactiveHarvestingNewsArticle *)self publication];
  v11 = [(BMProactiveHarvestingNewsArticle *)self contentProtection];
  v12 = [(BMProactiveHarvestingNewsArticle *)self personaId];
  v13 = [v3 initWithFormat:@"BMProactiveHarvestingNewsArticle with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, title: %@, content: %@, summary: %@, publication: %@, contentProtection: %@, personaId: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMProactiveHarvestingNewsArticle)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 title:(id)a6 content:(id)a7 summary:(id)a8 publication:(id)a9 contentProtection:(id)a10 personaId:(id)a11
{
  v30 = a3;
  v29 = a4;
  v18 = a5;
  v28 = a6;
  v27 = a7;
  obj = a8;
  v26 = a8;
  v25 = a9;
  v19 = a10;
  v20 = a11;
  v31.receiver = self;
  v31.super_class = BMProactiveHarvestingNewsArticle;
  v21 = [(BMEventBase *)&v31 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_uniqueID, a3);
    objc_storeStrong(&v21->_domainID, a4);
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
    objc_storeStrong(&v21->_title, a6);
    objc_storeStrong(&v21->_content, a7);
    objc_storeStrong(&v21->_summary, obj);
    objc_storeStrong(&v21->_publication, a9);
    objc_storeStrong(&v21->_contentProtection, a10);
    objc_storeStrong(&v21->_personaId, a11);
  }

  return v21;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"content" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"summary" number:6 type:13 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"publication" number:7 type:13 subMessageClass:0];
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
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"content" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"summary" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"publication" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMProactiveHarvestingNewsArticle alloc] initByReadFrom:v6];
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