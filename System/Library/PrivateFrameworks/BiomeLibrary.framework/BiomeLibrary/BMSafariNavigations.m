@interface BMSafariNavigations
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariNavigations)initWithDomain:(id)a3 visited:(id)a4 platform:(int)a5 userAgent:(int)a6 countryCode:(id)a7 privacyProxy:(id)a8 error:(int)a9 url:(id)a10 privateRelayVendorName:(id)a11;
- (BMSafariNavigations)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)visited;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariNavigations

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariNavigations *)self domain];
    v7 = [v5 domain];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSafariNavigations *)self domain];
      v10 = [v5 domain];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v13 = [(BMSafariNavigations *)self visited];
    v14 = [v5 visited];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSafariNavigations *)self visited];
      v17 = [v5 visited];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    v19 = [(BMSafariNavigations *)self platform];
    if (v19 != [v5 platform])
    {
      goto LABEL_25;
    }

    v20 = [(BMSafariNavigations *)self userAgent];
    if (v20 != [v5 userAgent])
    {
      goto LABEL_25;
    }

    v21 = [(BMSafariNavigations *)self countryCode];
    v22 = [v5 countryCode];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(BMSafariNavigations *)self countryCode];
      v25 = [v5 countryCode];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
        goto LABEL_25;
      }
    }

    if (-[BMSafariNavigations hasPrivacyProxy](self, "hasPrivacyProxy") || [v5 hasPrivacyProxy])
    {
      if (![(BMSafariNavigations *)self hasPrivacyProxy])
      {
        goto LABEL_25;
      }

      if (![v5 hasPrivacyProxy])
      {
        goto LABEL_25;
      }

      v27 = [(BMSafariNavigations *)self privacyProxy];
      if (v27 != [v5 privacyProxy])
      {
        goto LABEL_25;
      }
    }

    v28 = [(BMSafariNavigations *)self error];
    if (v28 != [v5 error])
    {
      goto LABEL_25;
    }

    v29 = [(BMSafariNavigations *)self url];
    v30 = [v5 url];
    v31 = v30;
    if (v29 == v30)
    {
    }

    else
    {
      v32 = [(BMSafariNavigations *)self url];
      v33 = [v5 url];
      v34 = [v32 isEqual:v33];

      if (!v34)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v36 = [(BMSafariNavigations *)self privateRelayVendorName];
    v37 = [v5 privateRelayVendorName];
    if (v36 == v37)
    {
      v12 = 1;
    }

    else
    {
      v38 = [(BMSafariNavigations *)self privateRelayVendorName];
      v39 = [v5 privateRelayVendorName];
      v12 = [v38 isEqual:v39];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12;
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
  v35[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMSafariNavigations *)self domain];
  v4 = [(BMSafariNavigations *)self visited];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMSafariNavigations *)self visited];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariNavigations platform](self, "platform")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariNavigations userAgent](self, "userAgent")}];
  v10 = [(BMSafariNavigations *)self countryCode];
  if ([(BMSafariNavigations *)self hasPrivacyProxy])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariNavigations privacyProxy](self, "privacyProxy")}];
  }

  else
  {
    v33 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariNavigations error](self, "error")}];
  v12 = [(BMSafariNavigations *)self url];
  v13 = [(BMSafariNavigations *)self privateRelayVendorName];
  v34[0] = @"domain";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v14;
  v35[0] = v14;
  v34[1] = @"visited";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v15;
  v35[1] = v15;
  v34[2] = @"platform";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v16;
  v35[2] = v16;
  v34[3] = @"userAgent";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v3;
  v25 = v17;
  v35[3] = v17;
  v34[4] = @"countryCode";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v7;
  v35[4] = v18;
  v34[5] = @"privacyProxy";
  v19 = v33;
  if (!v33)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v9;
  v35[5] = v19;
  v34[6] = @"error";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = v20;
  v34[7] = @"url";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = v21;
  v34[8] = @"privateRelayVendorName";
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
      goto LABEL_27;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_27;
    }
  }

LABEL_27:
  if (!v11)
  {
  }

  if (!v33)
  {
  }

  if (!v10)
  {
  }

  if (v30)
  {
    if (v8)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (v8)
    {
LABEL_35:
      if (v31)
      {
        goto LABEL_36;
      }

LABEL_44:

      if (v32)
      {
        goto LABEL_37;
      }

      goto LABEL_45;
    }
  }

  if (!v31)
  {
    goto LABEL_44;
  }

LABEL_36:
  if (v32)
  {
    goto LABEL_37;
  }

LABEL_45:

LABEL_37:
  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BMSafariNavigations)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v101[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"domain"];
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
        v10 = MEMORY[0x1E695DF00];
        v11 = v9;
        v12 = [v10 alloc];
        [v11 doubleValue];
        v14 = v13;

        v15 = [v12 initWithTimeIntervalSince1970:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v83 = [v20 dateFromString:v9];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v83 = 0;
            v19 = 0;
            goto LABEL_80;
          }

          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = a4;
          v63 = *MEMORY[0x1E698F240];
          v98 = *MEMORY[0x1E696A578];
          v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"visited"];
          v99 = v82;
          v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
          v83 = 0;
          v19 = 0;
          *v62 = [v61 initWithDomain:v63 code:2 userInfo:?];
          goto LABEL_79;
        }

        v15 = v9;
      }

      v83 = v15;
    }

    else
    {
      v83 = 0;
    }

LABEL_16:
    v21 = [v6 objectForKeyedSubscript:@"platform"];
    v80 = v21;
    if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v82 = v22;
      }

      else
      {
        v79 = self;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v82 = 0;
            v19 = 0;
            goto LABEL_79;
          }

          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = a4;
          v48 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"platform"];
          v97 = v81;
          v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v82 = 0;
          v19 = 0;
          *v47 = [v46 initWithDomain:v48 code:2 userInfo:?];
          goto LABEL_95;
        }

        v82 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariNavigationsPlatformFromString(v22)];
      }
    }

    else
    {
      v82 = 0;
    }

    v23 = [v6 objectForKeyedSubscript:@"userAgent"];
    v77 = v23;
    if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v81 = 0;
LABEL_22:
      v25 = [v6 objectForKeyedSubscript:@"countryCode"];
      v74 = v9;
      if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v32 = 0;
            v19 = 0;
            goto LABEL_77;
          }

          v29 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = a4;
          v30 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
          v93 = v78;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v31 = [v29 initWithDomain:v30 code:2 userInfo:v26];
          v32 = 0;
          v19 = 0;
          *v69 = v31;
          goto LABEL_76;
        }

        v72 = v25;
      }

      else
      {
        v72 = 0;
      }

      v26 = [v6 objectForKeyedSubscript:@"privacyProxy"];
      v71 = v25;
      if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v78 = 0;
            v19 = 0;
            v32 = v72;
            goto LABEL_76;
          }

          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v90 = *MEMORY[0x1E696A578];
          v35 = a4;
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"privacyProxy"];
          v91 = v75;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
          v36 = [v33 initWithDomain:v34 code:2 userInfo:v27];
          v78 = 0;
          v19 = 0;
          *v35 = v36;
          v32 = v72;
LABEL_75:

          v25 = v71;
LABEL_76:

          v9 = v74;
LABEL_77:

LABEL_78:
LABEL_79:

          goto LABEL_80;
        }

        v68 = a4;
        v78 = v26;
      }

      else
      {
        v68 = a4;
        v78 = 0;
      }

      v27 = [v6 objectForKeyedSubscript:@"error"];
      v73 = v8;
      if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v27;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v68)
            {
              v75 = 0;
              v19 = 0;
              v32 = v72;
              goto LABEL_75;
            }

            v76 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = *MEMORY[0x1E698F240];
            v88 = *MEMORY[0x1E696A578];
            v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"error"];
            v89 = v38;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
            v60 = [v76 initWithDomain:v59 code:2 userInfo:v37];
            v75 = 0;
            v19 = 0;
            *v68 = v60;
            goto LABEL_92;
          }

          v28 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariNavigationsErrorResponseFromString(v27)];
        }

        v75 = v28;
      }

      else
      {
        v75 = 0;
      }

      v37 = [v6 objectForKeyedSubscript:@"url"];
      v70 = v7;
      if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v38 = 0;
        goto LABEL_55;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
LABEL_55:
        v39 = [v6 objectForKeyedSubscript:@"privateRelayVendorName"];
        if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v40 = 0;
LABEL_58:
          v41 = [v82 intValue];
          v42 = [v81 intValue];
          LODWORD(v64) = [v75 intValue];
          v43 = v42;
          v32 = v72;
          v19 = [(BMSafariNavigations *)self initWithDomain:v73 visited:v83 platform:v41 userAgent:v43 countryCode:v72 privacyProxy:v78 error:v64 url:v38 privateRelayVendorName:v40];
          self = v19;
LABEL_73:

          v7 = v70;
LABEL_74:

          v8 = v73;
          goto LABEL_75;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v39;
          goto LABEL_58;
        }

        v40 = v68;
        if (v68)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v84 = *MEMORY[0x1E696A578];
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"privateRelayVendorName"];
          v85 = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          *v68 = [v67 initWithDomain:v65 code:2 userInfo:v50];

          v40 = 0;
        }

        v19 = 0;
LABEL_72:
        v32 = v72;
        goto LABEL_73;
      }

      if (v68)
      {
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v86 = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"url"];
        v87 = v40;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v45 = [v66 initWithDomain:v44 code:2 userInfo:v39];
        v38 = 0;
        v19 = 0;
        *v68 = v45;
        goto LABEL_72;
      }

      v38 = 0;
      v19 = 0;
LABEL_92:
      v32 = v72;
      goto LABEL_74;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = v24;
      goto LABEL_22;
    }

    v79 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariNavigationsDeviceClassFromString(v24)];
      goto LABEL_22;
    }

    if (a4)
    {
      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v54 = a4;
      v55 = *MEMORY[0x1E698F240];
      v94 = *MEMORY[0x1E696A578];
      v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userAgent"];
      v95 = v56;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v58 = v53;
      v25 = v57;
      v81 = 0;
      v19 = 0;
      *v54 = [v58 initWithDomain:v55 code:2 userInfo:v57];
      v32 = v56;
      goto LABEL_77;
    }

    v81 = 0;
    v19 = 0;
LABEL_95:
    self = v79;
    goto LABEL_78;
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
    v19 = 0;
    goto LABEL_81;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = a4;
  v18 = *MEMORY[0x1E698F240];
  v100 = *MEMORY[0x1E696A578];
  v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
  v101[0] = v83;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:&v100 count:1];
  v8 = 0;
  v19 = 0;
  *v17 = [v16 initWithDomain:v18 code:2 userInfo:v9];
LABEL_80:

LABEL_81:
  v51 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariNavigations *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_visited)
  {
    raw_visited = self->_raw_visited;
    PBDataWriterWriteDoubleField();
  }

  platform = self->_platform;
  PBDataWriterWriteUint32Field();
  userAgent = self->_userAgent;
  PBDataWriterWriteUint32Field();
  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPrivacyProxy)
  {
    privacyProxy = self->_privacyProxy;
    PBDataWriterWriteBOOLField();
  }

  error = self->_error;
  PBDataWriterWriteUint32Field();
  if (self->_url)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_privateRelayVendorName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMSafariNavigations;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_96;
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
        LOBYTE(v51) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v51) & 0x7F) << v7;
        if ((LOBYTE(v51) & 0x80) == 0)
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
            v39 = 0;
            v40 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v41 = [v4 position] + 1;
              if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
              {
                v43 = [v4 data];
                [v43 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (LOBYTE(v51) & 0x7F) << v39;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v22 = v40++ > 8;
              if (v22)
              {
                goto LABEL_84;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 3)
            {
LABEL_84:
              LODWORD(v18) = 0;
            }

            v45 = 40;
          }

          else
          {
            if (v15 != 4)
            {
              goto LABEL_74;
            }

            v25 = 0;
            v26 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (LOBYTE(v51) & 0x7F) << v25;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v22 = v26++ > 8;
              if (v22)
              {
                goto LABEL_78;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 2)
            {
LABEL_78:
              LODWORD(v18) = 0;
            }

            v45 = 44;
          }

          goto LABEL_90;
        }

        if (v15 == 1)
        {
          v37 = PBReaderReadString();
          v38 = 56;
LABEL_73:
          v44 = *(&v5->super.super.isa + v38);
          *(&v5->super.super.isa + v38) = v37;

          goto LABEL_93;
        }

        if (v15 != 2)
        {
          goto LABEL_74;
        }

        v5->_hasRaw_visited = 1;
        v51 = 0.0;
        v23 = [v4 position] + 8;
        if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
        {
          v46 = [v4 data];
          [v46 getBytes:&v51 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_visited = v51;
      }

      else
      {
        if (v15 > 6)
        {
          switch(v15)
          {
            case 9:
              v37 = PBReaderReadString();
              v38 = 80;
              break;
            case 8:
              v37 = PBReaderReadString();
              v38 = 72;
              break;
            case 7:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                LOBYTE(v51) = 0;
                v19 = [v4 position] + 1;
                if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
                {
                  v21 = [v4 data];
                  [v21 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v18 |= (LOBYTE(v51) & 0x7F) << v16;
                if ((LOBYTE(v51) & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v22 = v17++ > 8;
                if (v22)
                {
                  goto LABEL_88;
                }
              }

              if (([v4 hasError] & 1) != 0 || v18 > 0x25)
              {
LABEL_88:
                LODWORD(v18) = 0;
              }

              v45 = 48;
LABEL_90:
              *(&v5->super.super.isa + v45) = v18;
              goto LABEL_93;
            default:
              goto LABEL_74;
          }

          goto LABEL_73;
        }

        if (v15 == 5)
        {
          v37 = PBReaderReadString();
          v38 = 64;
          goto LABEL_73;
        }

        if (v15 != 6)
        {
LABEL_74:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_95;
          }

          goto LABEL_93;
        }

        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasPrivacyProxy = 1;
        while (1)
        {
          LOBYTE(v51) = 0;
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v32 |= (LOBYTE(v51) & 0x7F) << v30;
          if ((LOBYTE(v51) & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            LOBYTE(v36) = 0;
            goto LABEL_81;
          }
        }

        v36 = (v32 != 0) & ~[v4 hasError];
LABEL_81:
        v5->_privacyProxy = v36;
      }

LABEL_93:
      v47 = [v4 position];
    }

    while (v47 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_95:
    v48 = 0;
  }

  else
  {
LABEL_96:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSafariNavigations *)self domain];
  v5 = [(BMSafariNavigations *)self visited];
  v6 = BMSafariNavigationsPlatformAsString([(BMSafariNavigations *)self platform]);
  v7 = BMSafariNavigationsDeviceClassAsString([(BMSafariNavigations *)self userAgent]);
  v8 = [(BMSafariNavigations *)self countryCode];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariNavigations privacyProxy](self, "privacyProxy")}];
  v10 = BMSafariNavigationsErrorResponseAsString([(BMSafariNavigations *)self error]);
  v11 = [(BMSafariNavigations *)self url];
  v12 = [(BMSafariNavigations *)self privateRelayVendorName];
  v13 = [v3 initWithFormat:@"BMSafariNavigations with domain: %@, visited: %@, platform: %@, userAgent: %@, countryCode: %@, privacyProxy: %@, error: %@, url: %@, privateRelayVendorName: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMSafariNavigations)initWithDomain:(id)a3 visited:(id)a4 platform:(int)a5 userAgent:(int)a6 countryCode:(id)a7 privacyProxy:(id)a8 error:(int)a9 url:(id)a10 privateRelayVendorName:(id)a11
{
  v26 = a3;
  v17 = a4;
  v25 = a7;
  v18 = a8;
  v19 = a10;
  v20 = a11;
  v27.receiver = self;
  v27.super_class = BMSafariNavigations;
  v21 = [(BMEventBase *)&v27 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_domain, a3);
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
    v21->_platform = a5;
    v21->_userAgent = a6;
    objc_storeStrong(&v21->_countryCode, a7);
    if (v18)
    {
      v21->_hasPrivacyProxy = 1;
      v21->_privacyProxy = [v18 BOOLValue];
    }

    else
    {
      v21->_hasPrivacyProxy = 0;
      v21->_privacyProxy = 0;
    }

    v21->_error = a9;
    objc_storeStrong(&v21->_url, a10);
    objc_storeStrong(&v21->_privateRelayVendorName, a11);
  }

  return v21;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visited" number:2 type:0 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"platform" number:3 type:4 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAgent" number:4 type:4 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privacyProxy" number:6 type:12 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"error" number:7 type:4 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"url" number:8 type:13 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privateRelayVendorName" number:9 type:13 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visited" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"platform" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAgent" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privacyProxy" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"error" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"url" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privateRelayVendorName" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
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
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMSafariNavigations alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end