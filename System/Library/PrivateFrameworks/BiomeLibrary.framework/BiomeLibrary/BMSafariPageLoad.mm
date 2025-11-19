@interface BMSafariPageLoad
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariPageLoad)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSafariPageLoad)initWithSearch:(id)a3 visited:(id)a4 mode:(id)a5 platform:(int)a6 userAgent:(int)a7 countryCode:(id)a8 entryPoint:(int)a9 actualized:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSDate)visited;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariPageLoad

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMSafariPageLoad hasSearch](self, "hasSearch") || [v5 hasSearch])
    {
      if (![(BMSafariPageLoad *)self hasSearch])
      {
        goto LABEL_29;
      }

      if (![v5 hasSearch])
      {
        goto LABEL_29;
      }

      v6 = [(BMSafariPageLoad *)self search];
      if (v6 != [v5 search])
      {
        goto LABEL_29;
      }
    }

    v7 = [(BMSafariPageLoad *)self visited];
    v8 = [v5 visited];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMSafariPageLoad *)self visited];
      v11 = [v5 visited];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_29;
      }
    }

    if (-[BMSafariPageLoad hasMode](self, "hasMode") || [v5 hasMode])
    {
      if (![(BMSafariPageLoad *)self hasMode])
      {
        goto LABEL_29;
      }

      if (![v5 hasMode])
      {
        goto LABEL_29;
      }

      v14 = [(BMSafariPageLoad *)self mode];
      if (v14 != [v5 mode])
      {
        goto LABEL_29;
      }
    }

    v15 = [(BMSafariPageLoad *)self platform];
    if (v15 != [v5 platform])
    {
      goto LABEL_29;
    }

    v16 = [(BMSafariPageLoad *)self userAgent];
    if (v16 != [v5 userAgent])
    {
      goto LABEL_29;
    }

    v17 = [(BMSafariPageLoad *)self countryCode];
    v18 = [v5 countryCode];
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      v20 = [(BMSafariPageLoad *)self countryCode];
      v21 = [v5 countryCode];
      v22 = [v20 isEqual:v21];

      if (!v22)
      {
        goto LABEL_29;
      }
    }

    v23 = [(BMSafariPageLoad *)self entryPoint];
    if (v23 == [v5 entryPoint])
    {
      if (!-[BMSafariPageLoad hasActualized](self, "hasActualized") && ![v5 hasActualized])
      {
        LOBYTE(v13) = 1;
        goto LABEL_30;
      }

      if (-[BMSafariPageLoad hasActualized](self, "hasActualized") && [v5 hasActualized])
      {
        v24 = [(BMSafariPageLoad *)self actualized];
        v13 = v24 ^ [v5 actualized] ^ 1;
LABEL_30:

        goto LABEL_31;
      }
    }

LABEL_29:
    LOBYTE(v13) = 0;
    goto LABEL_30;
  }

  LOBYTE(v13) = 0;
LABEL_31:

  return v13;
}

- (NSDate)visited
{
  if (self->_hasRaw_visited)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_visited];
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
  v32[8] = *MEMORY[0x1E69E9840];
  if ([(BMSafariPageLoad *)self hasSearch])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariPageLoad search](self, "search")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMSafariPageLoad *)self visited];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMSafariPageLoad *)self visited];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMSafariPageLoad *)self hasMode])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariPageLoad mode](self, "mode")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariPageLoad platform](self, "platform")}];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariPageLoad userAgent](self, "userAgent")}];
  v10 = [(BMSafariPageLoad *)self countryCode];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariPageLoad entryPoint](self, "entryPoint")}];
  if ([(BMSafariPageLoad *)self hasActualized])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariPageLoad actualized](self, "actualized")}];
  }

  else
  {
    v12 = 0;
  }

  v31[0] = @"search";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v13;
  v32[0] = v13;
  v31[1] = @"visited";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v14;
  v32[1] = v14;
  v31[2] = @"mode";
  v15 = v8;
  v28 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v15;
  v32[2] = v15;
  v31[3] = @"platform";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v3;
  v32[3] = v16;
  v31[4] = @"userAgent";
  v17 = v30;
  if (!v30)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v7;
  v32[4] = v17;
  v31[5] = @"countryCode";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = v18;
  v31[6] = @"entryPoint";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = v19;
  v31[7] = @"actualized";
  v20 = v12;
  if (!v12)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:8];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_31;
    }
  }

LABEL_31:
  if (!v10)
  {
  }

  if (!v30)
  {
  }

  if (!v9)
  {
  }

  if (v28)
  {
    if (v27)
    {
      goto LABEL_39;
    }

LABEL_46:

    if (v29)
    {
      goto LABEL_40;
    }

    goto LABEL_47;
  }

  if (!v27)
  {
    goto LABEL_46;
  }

LABEL_39:
  if (v29)
  {
    goto LABEL_40;
  }

LABEL_47:

LABEL_40:
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BMSafariPageLoad)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v101[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"search"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"visited"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = MEMORY[0x1E695DF00];
        v12 = v9;
        v13 = [v11 alloc];
        [v12 doubleValue];
        v15 = v14;

        v16 = [v13 initWithTimeIntervalSince1970:v15];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v10 = [v22 dateFromString:v9];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v10 = 0;
            v21 = 0;
            goto LABEL_65;
          }

          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = a4;
          v69 = *MEMORY[0x1E698F240];
          v98 = *MEMORY[0x1E696A578];
          v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"visited"];
          v99 = v85;
          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
          v70 = [v67 initWithDomain:v69 code:2 userInfo:?];
          v10 = 0;
          v21 = 0;
          *v68 = v70;
          goto LABEL_64;
        }

        v16 = v9;
      }

      v10 = v16;
    }

    else
    {
      v10 = 0;
    }

LABEL_16:
    v23 = [v6 objectForKeyedSubscript:@"mode"];
    v82 = v23;
    v76 = a4;
    if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v85 = 0;
          v21 = 0;
          goto LABEL_64;
        }

        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v96 = *MEMORY[0x1E696A578];
        v30 = v10;
        v31 = objc_alloc(MEMORY[0x1E696AEC0]);
        v72 = objc_opt_class();
        v32 = v31;
        v10 = v30;
        v84 = [v32 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v72, @"mode"];
        v97 = v84;
        v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        v33 = [v28 initWithDomain:v29 code:2 userInfo:?];
        v85 = 0;
        v21 = 0;
        *v76 = v33;
LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

      v85 = v24;
    }

    else
    {
      v85 = 0;
    }

    v25 = [v6 objectForKeyedSubscript:@"platform"];
    v80 = v10;
    v78 = v25;
    if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v84 = 0;
            v21 = 0;
            goto LABEL_63;
          }

          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"platform"];
          v95 = v81;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v58 = v57;
          v10 = v80;
          v59 = [v56 initWithDomain:v58 code:2 userInfo:v34];
          v84 = 0;
          v21 = 0;
          *v76 = v59;
          goto LABEL_62;
        }

        v27 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariPageLoadPlatformFromString(v26)];
      }

      v84 = v27;
    }

    else
    {
      v84 = 0;
    }

    v34 = [v6 objectForKeyedSubscript:@"userAgent"];
    v77 = v9;
    v79 = v8;
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v34;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v76)
          {
            v81 = 0;
            v21 = 0;
            goto LABEL_61;
          }

          v60 = objc_alloc(MEMORY[0x1E696ABC0]);
          v61 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userAgent"];
          v93 = v37;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v62 = v61;
          v10 = v80;
          v63 = [v60 initWithDomain:v62 code:2 userInfo:v36];
          v81 = 0;
          v21 = 0;
          *v76 = v63;
LABEL_60:

          v8 = v79;
LABEL_61:
          v9 = v77;
LABEL_62:

          goto LABEL_63;
        }

        v35 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariPageLoadDeviceClassFromString(v34)];
      }

      v81 = v35;
    }

    else
    {
      v81 = 0;
    }

    v36 = [v6 objectForKeyedSubscript:@"countryCode"];
    v75 = v7;
    v83 = self;
    if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v76)
        {
          v37 = 0;
          v21 = 0;
          goto LABEL_60;
        }

        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v90 = *MEMORY[0x1E696A578];
        v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
        v91 = v39;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v43 = [v41 initWithDomain:v42 code:2 userInfo:v38];
        v37 = 0;
        v21 = 0;
        *v76 = v43;
        goto LABEL_59;
      }

      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = [v6 objectForKeyedSubscript:@"entryPoint"];
    if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v74 = v37;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v38;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v76)
          {
            v39 = 0;
            v21 = 0;
            goto LABEL_59;
          }

          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v88 = *MEMORY[0x1E696A578];
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"entryPoint"];
          v89 = v47;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          v66 = [v64 initWithDomain:v65 code:2 userInfo:v44];
          v39 = 0;
          v21 = 0;
          *v76 = v66;
          goto LABEL_82;
        }

        v40 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariPageLoadEntryPointFromString(v38)];
      }

      v39 = v40;
    }

    else
    {
      v39 = 0;
    }

    v44 = [v6 objectForKeyedSubscript:@"actualized"];
    if (!v44 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v45 = v34;
      v46 = v37;
      v47 = 0;
LABEL_57:
      v48 = [v84 intValue];
      v49 = [v81 intValue];
      LODWORD(v71) = [v39 intValue];
      v50 = v49;
      v37 = v46;
      v21 = [(BMSafariPageLoad *)v83 initWithSearch:v79 visited:v80 mode:v85 platform:v48 userAgent:v50 countryCode:v46 entryPoint:v71 actualized:v47];
      v83 = v21;
      v34 = v45;
LABEL_58:

LABEL_59:
      self = v83;
      v7 = v75;
      v10 = v80;
      goto LABEL_60;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v34;
      v46 = v37;
      v47 = v44;
      goto LABEL_57;
    }

    v74 = v37;
    if (v76)
    {
      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v73 = *MEMORY[0x1E698F240];
      v86 = *MEMORY[0x1E696A578];
      v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"actualized"];
      v87 = v54;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      *v76 = [v53 initWithDomain:v73 code:2 userInfo:v55];
    }

    v47 = 0;
    v21 = 0;
LABEL_82:
    v37 = v74;
    goto LABEL_58;
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
    v21 = 0;
    goto LABEL_66;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = a4;
  v19 = *MEMORY[0x1E698F240];
  v100 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"search"];
  v101[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:&v100 count:1];
  v20 = [v17 initWithDomain:v19 code:2 userInfo:v9];
  v8 = 0;
  v21 = 0;
  *v18 = v20;
LABEL_65:

LABEL_66:
  v51 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariPageLoad *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  if (self->_hasSearch)
  {
    search = self->_search;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_visited)
  {
    raw_visited = self->_raw_visited;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasMode)
  {
    mode = self->_mode;
    PBDataWriterWriteBOOLField();
  }

  platform = self->_platform;
  PBDataWriterWriteUint32Field();
  userAgent = self->_userAgent;
  PBDataWriterWriteUint32Field();
  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  entryPoint = self->_entryPoint;
  PBDataWriterWriteUint32Field();
  if (self->_hasActualized)
  {
    actualized = self->_actualized;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v62.receiver = self;
  v62.super_class = BMSafariPageLoad;
  v5 = [(BMEventBase *)&v62 init];
  if (!v5)
  {
    goto LABEL_114;
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
        LOBYTE(v63) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v63) & 0x7F) << v7;
        if ((LOBYTE(v63) & 0x80) == 0)
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
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 != 8)
          {
            if (v15 != 7)
            {
LABEL_87:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_113;
              }

              goto LABEL_111;
            }

            v27 = 0;
            v28 = 0;
            v22 = 0;
            while (1)
            {
              LOBYTE(v63) = 0;
              v29 = [v4 position] + 1;
              if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
              {
                v31 = [v4 data];
                [v31 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v22 |= (LOBYTE(v63) & 0x7F) << v27;
              if ((LOBYTE(v63) & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v26 = v28++ > 8;
              if (v26)
              {
                goto LABEL_106;
              }
            }

            if (([v4 hasError] & 1) != 0 || v22 > 2)
            {
LABEL_106:
              LODWORD(v22) = 0;
            }

            v57 = 52;
            goto LABEL_108;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v5->_hasActualized = 1;
          while (1)
          {
            LOBYTE(v63) = 0;
            v53 = [v4 position] + 1;
            if (v53 >= [v4 position] && (v54 = objc_msgSend(v4, "position") + 1, v54 <= objc_msgSend(v4, "length")))
            {
              v55 = [v4 data];
              [v55 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v52 |= (LOBYTE(v63) & 0x7F) << v50;
            if ((LOBYTE(v63) & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            v13 = v51++ >= 9;
            if (v13)
            {
              LOBYTE(v38) = 0;
              goto LABEL_98;
            }
          }

          v38 = (v52 != 0) & ~[v4 hasError];
LABEL_98:
          v56 = 36;
          goto LABEL_99;
        }

        if (v15 == 5)
        {
          v39 = 0;
          v40 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v63) = 0;
            v41 = [v4 position] + 1;
            if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
            {
              v43 = [v4 data];
              [v43 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v22 |= (LOBYTE(v63) & 0x7F) << v39;
            if ((LOBYTE(v63) & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v26 = v40++ > 8;
            if (v26)
            {
              goto LABEL_93;
            }
          }

          if (([v4 hasError] & 1) != 0 || v22 > 2)
          {
LABEL_93:
            LODWORD(v22) = 0;
          }

          v57 = 48;
LABEL_108:
          *(&v5->super.super.isa + v57) = v22;
          goto LABEL_111;
        }

        if (v15 != 6)
        {
          goto LABEL_87;
        }

        v18 = PBReaderReadString();
        countryCode = v5->_countryCode;
        v5->_countryCode = v18;
      }

      else
      {
        if (v15 > 2)
        {
          if (v15 != 3)
          {
            if (v15 != 4)
            {
              goto LABEL_87;
            }

            v20 = 0;
            v21 = 0;
            v22 = 0;
            while (1)
            {
              LOBYTE(v63) = 0;
              v23 = [v4 position] + 1;
              if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
              {
                v25 = [v4 data];
                [v25 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v22 |= (LOBYTE(v63) & 0x7F) << v20;
              if ((LOBYTE(v63) & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v26 = v21++ > 8;
              if (v26)
              {
                goto LABEL_102;
              }
            }

            if (([v4 hasError] & 1) != 0 || v22 > 3)
            {
LABEL_102:
              LODWORD(v22) = 0;
            }

            v57 = 44;
            goto LABEL_108;
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          v5->_hasMode = 1;
          while (1)
          {
            LOBYTE(v63) = 0;
            v47 = [v4 position] + 1;
            if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
            {
              v49 = [v4 data];
              [v49 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v46 |= (LOBYTE(v63) & 0x7F) << v44;
            if ((LOBYTE(v63) & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v13 = v45++ >= 9;
            if (v13)
            {
              LOBYTE(v38) = 0;
              goto LABEL_96;
            }
          }

          v38 = (v46 != 0) & ~[v4 hasError];
LABEL_96:
          v56 = 34;
          goto LABEL_99;
        }

        if (v15 == 1)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasSearch = 1;
          while (1)
          {
            LOBYTE(v63) = 0;
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:&v63 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v34 |= (LOBYTE(v63) & 0x7F) << v32;
            if ((LOBYTE(v63) & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              LOBYTE(v38) = 0;
              goto LABEL_90;
            }
          }

          v38 = (v34 != 0) & ~[v4 hasError];
LABEL_90:
          v56 = 32;
LABEL_99:
          *(&v5->super.super.isa + v56) = v38;
          goto LABEL_111;
        }

        if (v15 != 2)
        {
          goto LABEL_87;
        }

        v5->_hasRaw_visited = 1;
        v63 = 0.0;
        v16 = [v4 position] + 8;
        if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
        {
          v58 = [v4 data];
          [v58 getBytes:&v63 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_visited = v63;
      }

LABEL_111:
      v59 = [v4 position];
    }

    while (v59 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_113:
    v60 = 0;
  }

  else
  {
LABEL_114:
    v60 = v5;
  }

  return v60;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariPageLoad search](self, "search")}];
  v5 = [(BMSafariPageLoad *)self visited];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariPageLoad mode](self, "mode")}];
  v7 = BMSafariPageLoadPlatformAsString([(BMSafariPageLoad *)self platform]);
  v8 = BMSafariPageLoadDeviceClassAsString([(BMSafariPageLoad *)self userAgent]);
  v9 = [(BMSafariPageLoad *)self countryCode];
  v10 = BMSafariPageLoadEntryPointAsString([(BMSafariPageLoad *)self entryPoint]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariPageLoad actualized](self, "actualized")}];
  v12 = [v3 initWithFormat:@"BMSafariPageLoad with search: %@, visited: %@, mode: %@, platform: %@, userAgent: %@, countryCode: %@, entryPoint: %@, actualized: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMSafariPageLoad)initWithSearch:(id)a3 visited:(id)a4 mode:(id)a5 platform:(int)a6 userAgent:(int)a7 countryCode:(id)a8 entryPoint:(int)a9 actualized:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a10;
  v24.receiver = self;
  v24.super_class = BMSafariPageLoad;
  v21 = [(BMEventBase *)&v24 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v16)
    {
      v21->_hasSearch = 1;
      v21->_search = [v16 BOOLValue];
    }

    else
    {
      v21->_hasSearch = 0;
      v21->_search = 0;
    }

    if (v17)
    {
      v21->_hasRaw_visited = 1;
      [v17 timeIntervalSince1970];
    }

    else
    {
      v21->_hasRaw_visited = 0;
      v22 = -1.0;
    }

    v21->_raw_visited = v22;
    if (v18)
    {
      v21->_hasMode = 1;
      v21->_mode = [v18 BOOLValue];
    }

    else
    {
      v21->_hasMode = 0;
      v21->_mode = 0;
    }

    v21->_platform = a6;
    v21->_userAgent = a7;
    objc_storeStrong(&v21->_countryCode, a8);
    v21->_entryPoint = a9;
    if (v20)
    {
      v21->_hasActualized = 1;
      v21->_actualized = [v20 BOOLValue];
    }

    else
    {
      v21->_hasActualized = 0;
      v21->_actualized = 0;
    }
  }

  return v21;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"search" number:1 type:12 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visited" number:2 type:0 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mode" number:3 type:12 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"platform" number:4 type:4 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAgent" number:5 type:4 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entryPoint" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actualized" number:8 type:12 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"search" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visited" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mode" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"platform" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAgent" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entryPoint" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actualized" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
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

    v8 = [[BMSafariPageLoad alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end