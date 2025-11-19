@interface BMProactiveHarvestingNotes
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProactiveHarvestingNotes)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMProactiveHarvestingNotes)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 title:(id)a6 content:(id)a7 contentProtection:(id)a8 personaId:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProactiveHarvestingNotes

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMProactiveHarvestingNotes *)self uniqueID];
    v7 = [v5 uniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProactiveHarvestingNotes *)self uniqueID];
      v10 = [v5 uniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v13 = [(BMProactiveHarvestingNotes *)self domainID];
    v14 = [v5 domainID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProactiveHarvestingNotes *)self domainID];
      v17 = [v5 domainID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    v19 = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
    v20 = [v5 absoluteTimestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
      v23 = [v5 absoluteTimestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    v25 = [(BMProactiveHarvestingNotes *)self title];
    v26 = [v5 title];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProactiveHarvestingNotes *)self title];
      v29 = [v5 title];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    v31 = [(BMProactiveHarvestingNotes *)self content];
    v32 = [v5 content];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProactiveHarvestingNotes *)self content];
      v35 = [v5 content];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    v37 = [(BMProactiveHarvestingNotes *)self contentProtection];
    v38 = [v5 contentProtection];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMProactiveHarvestingNotes *)self contentProtection];
      v41 = [v5 contentProtection];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v44 = [(BMProactiveHarvestingNotes *)self personaId];
    v45 = [v5 personaId];
    if (v44 == v45)
    {
      v12 = 1;
    }

    else
    {
      v46 = [(BMProactiveHarvestingNotes *)self personaId];
      v47 = [v5 personaId];
      v12 = [v46 isEqual:v47];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

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
  v29[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMProactiveHarvestingNotes *)self uniqueID];
  v4 = [(BMProactiveHarvestingNotes *)self domainID];
  v5 = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
    [v7 timeIntervalSinceReferenceDate];
    v27 = [v6 numberWithDouble:?];
  }

  else
  {
    v27 = 0;
  }

  v8 = [(BMProactiveHarvestingNotes *)self title];
  v9 = [(BMProactiveHarvestingNotes *)self content];
  v10 = [(BMProactiveHarvestingNotes *)self contentProtection];
  v11 = [(BMProactiveHarvestingNotes *)self personaId];
  v28[0] = @"uniqueID";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v12;
  v29[0] = v12;
  v28[1] = @"domainID";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v13;
  v29[1] = v13;
  v28[2] = @"absoluteTimestamp";
  v14 = v27;
  if (!v27)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v29[2] = v14;
  v28[3] = @"title";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v14;
  v26 = v3;
  v29[3] = v15;
  v28[4] = @"content";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v4;
  v29[4] = v16;
  v28[5] = @"contentProtection";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v18;
  v28[6] = @"personaId";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (v9)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v9)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v8)
  {
  }

  if (v27)
  {
    if (v17)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v17)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v26)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BMProactiveHarvestingNotes)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v83[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"uniqueID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"domainID"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v69 = 0;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
      v64 = v9;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = MEMORY[0x1E695DF00];
          v13 = v10;
          v14 = v10;
          v15 = [v12 alloc];
          [v14 doubleValue];
          v17 = v16;

          v10 = v13;
          v18 = [v15 initWithTimeIntervalSinceReferenceDate:v17];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v11 = [v28 dateFromString:v10];

            goto LABEL_23;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v11 = 0;
              v21 = v69;
              goto LABEL_68;
            }

            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v60 = a4;
            v49 = *MEMORY[0x1E698F240];
            v78 = *MEMORY[0x1E696A578];
            v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
            v79 = v68;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
            v50 = [v66 initWithDomain:v49 code:2 userInfo:v29];
            v11 = 0;
            a4 = 0;
            *v60 = v50;
            goto LABEL_66;
          }

          v18 = v10;
        }

        v11 = v18;
      }

      else
      {
        v11 = 0;
      }

LABEL_23:
      v29 = [v6 objectForKeyedSubscript:@"title"];
      v67 = v8;
      v62 = v10;
      v63 = v11;
      if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v68 = 0;
            v21 = v69;
LABEL_67:

            v9 = v64;
            goto LABEL_68;
          }

          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v56 = a4;
          v37 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
          v77 = v65;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v38 = v36;
          v10 = v62;
          v39 = [v38 initWithDomain:v37 code:2 userInfo:v30];
          v68 = 0;
          a4 = 0;
          *v56 = v39;
          goto LABEL_65;
        }

        v68 = v29;
      }

      else
      {
        v68 = 0;
      }

      v30 = [v6 objectForKeyedSubscript:@"content"];
      v61 = v7;
      if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v65 = 0;
LABEL_65:

            v8 = v67;
LABEL_66:
            v21 = v69;
            goto LABEL_67;
          }

          v32 = self;
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = a4;
          v41 = *MEMORY[0x1E698F240];
          v74 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"content"];
          v75 = v33;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v42 = [v40 initWithDomain:v41 code:2 userInfo:v31];
          v65 = 0;
          a4 = 0;
          *v57 = v42;
          goto LABEL_64;
        }

        v65 = v30;
      }

      else
      {
        v65 = 0;
      }

      v31 = [v6 objectForKeyedSubscript:@"contentProtection"];
      if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v32 = self;
        v33 = 0;
        goto LABEL_32;
      }

      objc_opt_class();
      v32 = self;
      if (objc_opt_isKindOfClass())
      {
        v33 = v31;
LABEL_32:
        v34 = [v6 objectForKeyedSubscript:@"personaId"];
        if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v35 = 0;
LABEL_35:
          a4 = [(BMProactiveHarvestingNotes *)v32 initWithUniqueID:v67 domainID:v69 absoluteTimestamp:v11 title:v68 content:v65 contentProtection:v33 personaId:v35];
          v32 = a4;
LABEL_63:

          goto LABEL_64;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v35 = v34;
          goto LABEL_35;
        }

        if (a4)
        {
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v70 = *MEMORY[0x1E696A578];
          v46 = a4;
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
          v71 = v47;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          *v46 = [v59 initWithDomain:v53 code:2 userInfo:v48];

          v35 = 0;
          a4 = 0;
        }

        else
        {
          v35 = 0;
        }

LABEL_62:
        v11 = v63;
        goto LABEL_63;
      }

      if (a4)
      {
        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v72 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
        v73 = v35;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v44 = [v58 initWithDomain:v43 code:2 userInfo:v34];
        v33 = 0;
        v45 = a4;
        a4 = 0;
        *v45 = v44;
        goto LABEL_62;
      }

      v33 = 0;
LABEL_64:

      self = v32;
      v7 = v61;
      v10 = v62;
      goto LABEL_65;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = v9;
      goto LABEL_7;
    }

    if (a4)
    {
      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      v55 = a4;
      v24 = *MEMORY[0x1E698F240];
      v80 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
      v81 = v11;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v26 = v23;
      v10 = v25;
      v27 = [v26 initWithDomain:v24 code:2 userInfo:v25];
      v21 = 0;
      a4 = 0;
      *v55 = v27;
LABEL_68:

      goto LABEL_69;
    }

    v21 = 0;
LABEL_69:

    goto LABEL_70;
  }

  if (a4)
  {
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v54 = a4;
    v20 = *MEMORY[0x1E698F240];
    v82 = *MEMORY[0x1E696A578];
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
    v83[0] = v21;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
    v22 = [v19 initWithDomain:v20 code:2 userInfo:v9];
    v8 = 0;
    a4 = 0;
    *v54 = v22;
    goto LABEL_69;
  }

  v8 = 0;
LABEL_70:

  v51 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingNotes *)self writeTo:v3];
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
  v25.super_class = BMProactiveHarvestingNotes;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_45;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_43;
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
        goto LABEL_43;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        if (v15 > 5)
        {
          if (v15 == 6)
          {
            v16 = PBReaderReadString();
            v17 = 72;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_33:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_44;
              }

              goto LABEL_39;
            }

            v16 = PBReaderReadString();
            v17 = 80;
          }
        }

        else if (v15 == 4)
        {
          v16 = PBReaderReadString();
          v17 = 56;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_33;
          }

          v16 = PBReaderReadString();
          v17 = 64;
        }

        goto LABEL_38;
      }

      if (v15 == 1)
      {
        break;
      }

      if (v15 == 2)
      {
        v16 = PBReaderReadString();
        v17 = 48;
        goto LABEL_38;
      }

      if (v15 != 3)
      {
        goto LABEL_33;
      }

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
LABEL_39:
      v21 = [v4 position];
      if (v21 >= [v4 length])
      {
        goto LABEL_43;
      }
    }

    v16 = PBReaderReadString();
    v17 = 40;
LABEL_38:
    v20 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;

    goto LABEL_39;
  }

LABEL_43:
  if ([v4 hasError])
  {
LABEL_44:
    v23 = 0;
  }

  else
  {
LABEL_45:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMProactiveHarvestingNotes *)self uniqueID];
  v5 = [(BMProactiveHarvestingNotes *)self domainID];
  v6 = [(BMProactiveHarvestingNotes *)self absoluteTimestamp];
  v7 = [(BMProactiveHarvestingNotes *)self title];
  v8 = [(BMProactiveHarvestingNotes *)self content];
  v9 = [(BMProactiveHarvestingNotes *)self contentProtection];
  v10 = [(BMProactiveHarvestingNotes *)self personaId];
  v11 = [v3 initWithFormat:@"BMProactiveHarvestingNotes with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, title: %@, content: %@, contentProtection: %@, personaId: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMProactiveHarvestingNotes)initWithUniqueID:(id)a3 domainID:(id)a4 absoluteTimestamp:(id)a5 title:(id)a6 content:(id)a7 contentProtection:(id)a8 personaId:(id)a9
{
  v25 = a3;
  v24 = a4;
  v16 = a5;
  v23 = a6;
  v22 = a7;
  v17 = a8;
  v18 = a9;
  v26.receiver = self;
  v26.super_class = BMProactiveHarvestingNotes;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_uniqueID, a3);
    objc_storeStrong(&v19->_domainID, a4);
    if (v16)
    {
      v19->_hasRaw_absoluteTimestamp = 1;
      [v16 timeIntervalSinceReferenceDate];
    }

    else
    {
      v19->_hasRaw_absoluteTimestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_absoluteTimestamp = v20;
    objc_storeStrong(&v19->_title, a6);
    objc_storeStrong(&v19->_content, a7);
    objc_storeStrong(&v19->_contentProtection, a8);
    objc_storeStrong(&v19->_personaId, a9);
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"content" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"content" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMProactiveHarvestingNotes alloc] initByReadFrom:v6];
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