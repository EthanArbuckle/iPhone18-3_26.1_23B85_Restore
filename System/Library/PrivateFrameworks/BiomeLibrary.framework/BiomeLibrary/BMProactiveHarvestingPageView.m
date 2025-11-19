@interface BMProactiveHarvestingPageView
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingPageView)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingPageView)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 title:(id)a6 content:(id)a7 contentIsReaderText:(id)a8 url:(id)a9 contentProtection:(id)a10 personaId:(id)a11;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingPageView

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingPageView *)self uniqueID];
    v7 = [v5 uniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingPageView *)self uniqueID];
      v10 = [v5 uniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    v13 = [(BMProactiveHarvestingPageView *)self domainID];
    v14 = [v5 domainID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingPageView *)self domainID];
      v17 = [v5 domainID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_34;
      }
    }

    v19 = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
    v20 = [v5 absoluteTimestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
      v23 = [v5 absoluteTimestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_34;
      }
    }

    v25 = [(BMProactiveHarvestingPageView *)self title];
    v26 = [v5 title];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingPageView *)self title];
      v29 = [v5 title];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_34;
      }
    }

    v31 = [(BMProactiveHarvestingPageView *)self content];
    v32 = [v5 content];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingPageView *)self content];
      v35 = [v5 content];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_34;
      }
    }

    if (-[BMProactiveHarvestingPageView hasContentIsReaderText](self, "hasContentIsReaderText") || [v5 hasContentIsReaderText])
    {
      if (![(BMProactiveHarvestingPageView *)self hasContentIsReaderText])
      {
        goto LABEL_34;
      }

      if (![v5 hasContentIsReaderText])
      {
        goto LABEL_34;
      }

      v37 = [(BMProactiveHarvestingPageView *)self contentIsReaderText];
      if (v37 != [v5 contentIsReaderText])
      {
        goto LABEL_34;
      }
    }

    v38 = [(BMProactiveHarvestingPageView *)self url];
    v39 = [v5 url];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [(BMProactiveHarvestingPageView *)self url];
      v42 = [v5 url];
      v43 = [v41 isEqual:v42];

      if (!v43)
      {
        goto LABEL_34;
      }
    }

    v44 = [(BMProactiveHarvestingPageView *)self contentProtection];
    v45 = [v5 contentProtection];
    v46 = v45;
    if (v44 == v45)
    {
    }

    else
    {
      v47 = [(BMProactiveHarvestingPageView *)self contentProtection];
      v48 = [v5 contentProtection];
      v49 = [v47 isEqual:v48];

      if (!v49)
      {
LABEL_34:
        v12 = 0;
LABEL_35:

        goto LABEL_36;
      }
    }

    v51 = [(BMProactiveHarvestingPageView *)self personaId];
    v52 = [v5 personaId];
    if (v51 == v52)
    {
      v12 = 1;
    }

    else
    {
      v53 = [(BMProactiveHarvestingPageView *)self personaId];
      v54 = [v5 personaId];
      v12 = [v53 isEqual:v54];
    }

    goto LABEL_35;
  }

  v12 = 0;
LABEL_36:

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
  v37[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingPageView *)self uniqueID];
  v4 = [(BMProactiveHarvestingPageView *)self domainID];
  v5 = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMProactiveHarvestingPageView *)self title];
  v10 = [(BMProactiveHarvestingPageView *)self content];
  if ([(BMProactiveHarvestingPageView *)self hasContentIsReaderText])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingPageView contentIsReaderText](self, "contentIsReaderText")}];
  }

  else
  {
    v35 = 0;
  }

  v11 = [(BMProactiveHarvestingPageView *)self url];
  v12 = [(BMProactiveHarvestingPageView *)self contentProtection];
  v13 = [(BMProactiveHarvestingPageView *)self personaId];
  v36[0] = @"uniqueID";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v14;
  v37[0] = v14;
  v36[1] = @"domainID";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v15;
  v37[1] = v15;
  v36[2] = @"absoluteTimestamp";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v16;
  v37[2] = v16;
  v36[3] = @"title";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v3;
  v27 = v17;
  v37[3] = v17;
  v36[4] = @"content";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v4;
  v37[4] = v18;
  v36[5] = @"contentIsReaderText";
  v19 = v35;
  if (!v35)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v10;
  v20 = v8;
  v37[5] = v19;
  v36[6] = @"url";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v9;
  v37[6] = v21;
  v36[7] = @"contentProtection";
  v23 = v12;
  if (!v12)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v37[7] = v23;
  v36[8] = @"personaId";
  v24 = v13;
  if (!v13)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v37[8] = v24;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:9];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_27;
    }

LABEL_40:

    if (v11)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_27:
  if (v11)
  {
    goto LABEL_28;
  }

LABEL_41:

LABEL_28:
  if (!v35)
  {
  }

  if (!v32)
  {
  }

  if (v22)
  {
    if (v20)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v20)
    {
LABEL_34:
      if (v33)
      {
        goto LABEL_35;
      }

LABEL_44:

      if (v34)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }
  }

  if (!v33)
  {
    goto LABEL_44;
  }

LABEL_35:
  if (v34)
  {
    goto LABEL_36;
  }

LABEL_45:

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BMProactiveHarvestingPageView)initWithJSONDictionary:(id)a3 error:(id *)a4
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

    v35 = [v6 objectForKeyedSubscript:@"contentIsReaderText"];
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
        v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contentIsReaderText"];
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

    v36 = [v6 objectForKeyedSubscript:@"url"];
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
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"url"];
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

    v24 = [(BMProactiveHarvestingPageView *)v38 initWithUniqueID:v72 domainID:v80 absoluteTimestamp:v81 title:v76 content:v79 contentIsReaderText:v75 url:v70 contentProtection:v39 personaId:v41];
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
  [(BMProactiveHarvestingPageView *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_domainID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_content)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasContentIsReaderText)
  {
    contentIsReaderText = self->_contentIsReaderText;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMProactiveHarvestingPageView;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_60;
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
        LOBYTE(v33) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v33 = 0.0;
            v25 = [v4 position] + 8;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v33 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_absoluteTimestamp = v33;
            goto LABEL_50;
          }

          if (v15 == 4)
          {
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_49;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_49;
          }

          if (v15 == 2)
          {
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_49;
          }
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_49;
        }

        if (v15 == 6)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasContentIsReaderText = 1;
          while (1)
          {
            LOBYTE(v33) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (LOBYTE(v33) & 0x7F) << v18;
            if ((LOBYTE(v33) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              LOBYTE(v24) = 0;
              goto LABEL_55;
            }
          }

          v24 = (v20 != 0) & ~[v4 hasError];
LABEL_55:
          v5->_contentIsReaderText = v24;
          goto LABEL_50;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_49;
          case 8:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_49;
          case 9:
            v16 = PBReaderReadString();
            v17 = 88;
LABEL_49:
            v27 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_50;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_59;
      }

LABEL_50:
      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_59:
    v30 = 0;
  }

  else
  {
LABEL_60:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMProactiveHarvestingPageView *)self uniqueID];
  v5 = [(BMProactiveHarvestingPageView *)self domainID];
  v6 = [(BMProactiveHarvestingPageView *)self absoluteTimestamp];
  v7 = [(BMProactiveHarvestingPageView *)self title];
  v8 = [(BMProactiveHarvestingPageView *)self content];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingPageView contentIsReaderText](self, "contentIsReaderText")}];
  v10 = [(BMProactiveHarvestingPageView *)self url];
  v11 = [(BMProactiveHarvestingPageView *)self contentProtection];
  v12 = [(BMProactiveHarvestingPageView *)self personaId];
  v13 = [v3 initWithFormat:@"BMProactiveHarvestingPageView with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, title: %@, content: %@, contentIsReaderText: %@, url: %@, contentProtection: %@, personaId: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMProactiveHarvestingPageView)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 title:(id)a6 content:(id)a7 contentIsReaderText:(id)a8 url:(id)a9 contentProtection:(id)a10 personaId:(id)a11
{
  v29 = a3;
  v28 = a4;
  v18 = a5;
  v27 = a6;
  v26 = a7;
  v19 = a8;
  v25 = a9;
  v24 = a10;
  v23 = a11;
  v30.receiver = self;
  v30.super_class = BMProactiveHarvestingPageView;
  v20 = [(BMEventBase *)&v30 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_uniqueID, a3);
    objc_storeStrong(&v20->_domainID, a4);
    if (v18)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [v18 timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v21;
    objc_storeStrong(&v20->_title, a6);
    objc_storeStrong(&v20->_content, a7);
    if (v19)
    {
      v20->_hasContentIsReaderText = 1;
      v20->_contentIsReaderText = [v19 BOOLValue];
    }

    else
    {
      v20->_hasContentIsReaderText = 0;
      v20->_contentIsReaderText = 0;
    }

    objc_storeStrong(&v20->_url, a9);
    objc_storeStrong(&v20->_contentProtection, a10);
    objc_storeStrong(&v20->_personaId, a11);
  }

  return v20;
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
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentIsReaderText" number:6 type:12 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"url" number:7 type:13 subMessageClass:0];
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
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentIsReaderText" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"url" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
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

    v7 = [[BMProactiveHarvestingPageView alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[9] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end