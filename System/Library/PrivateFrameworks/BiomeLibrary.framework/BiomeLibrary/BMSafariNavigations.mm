@interface BMSafariNavigations
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariNavigations)initWithDomain:(id)domain visited:(id)visited platform:(int)platform userAgent:(int)agent countryCode:(id)code privacyProxy:(id)proxy error:(int)error url:(id)self0 privateRelayVendorName:(id)self1;
- (BMSafariNavigations)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)visited;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariNavigations

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    domain = [(BMSafariNavigations *)self domain];
    domain2 = [v5 domain];
    v8 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMSafariNavigations *)self domain];
      domain4 = [v5 domain];
      v11 = [domain3 isEqual:domain4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    visited = [(BMSafariNavigations *)self visited];
    visited2 = [v5 visited];
    v15 = visited2;
    if (visited == visited2)
    {
    }

    else
    {
      visited3 = [(BMSafariNavigations *)self visited];
      visited4 = [v5 visited];
      v18 = [visited3 isEqual:visited4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    platform = [(BMSafariNavigations *)self platform];
    if (platform != [v5 platform])
    {
      goto LABEL_25;
    }

    userAgent = [(BMSafariNavigations *)self userAgent];
    if (userAgent != [v5 userAgent])
    {
      goto LABEL_25;
    }

    countryCode = [(BMSafariNavigations *)self countryCode];
    countryCode2 = [v5 countryCode];
    v23 = countryCode2;
    if (countryCode == countryCode2)
    {
    }

    else
    {
      countryCode3 = [(BMSafariNavigations *)self countryCode];
      countryCode4 = [v5 countryCode];
      v26 = [countryCode3 isEqual:countryCode4];

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

      privacyProxy = [(BMSafariNavigations *)self privacyProxy];
      if (privacyProxy != [v5 privacyProxy])
      {
        goto LABEL_25;
      }
    }

    error = [(BMSafariNavigations *)self error];
    if (error != [v5 error])
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

    privateRelayVendorName = [(BMSafariNavigations *)self privateRelayVendorName];
    privateRelayVendorName2 = [v5 privateRelayVendorName];
    if (privateRelayVendorName == privateRelayVendorName2)
    {
      v12 = 1;
    }

    else
    {
      privateRelayVendorName3 = [(BMSafariNavigations *)self privateRelayVendorName];
      privateRelayVendorName4 = [v5 privateRelayVendorName];
      v12 = [privateRelayVendorName3 isEqual:privateRelayVendorName4];
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
  domain = [(BMSafariNavigations *)self domain];
  visited = [(BMSafariNavigations *)self visited];
  if (visited)
  {
    v5 = MEMORY[0x1E696AD98];
    visited2 = [(BMSafariNavigations *)self visited];
    [visited2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariNavigations platform](self, "platform")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariNavigations userAgent](self, "userAgent")}];
  countryCode = [(BMSafariNavigations *)self countryCode];
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
  privateRelayVendorName = [(BMSafariNavigations *)self privateRelayVendorName];
  v34[0] = @"domain";
  null = domain;
  if (!domain)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v35[0] = null;
  v34[1] = @"visited";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v35[1] = null2;
  v34[2] = @"platform";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null3;
  v35[2] = null3;
  v34[3] = @"userAgent";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = domain;
  v25 = null4;
  v35[3] = null4;
  v34[4] = @"countryCode";
  null5 = countryCode;
  if (!countryCode)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v7;
  v35[4] = null5;
  v34[5] = @"privacyProxy";
  null6 = v33;
  if (!v33)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v9;
  v35[5] = null6;
  v34[6] = @"error";
  null7 = v11;
  if (!v11)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v35[6] = null7;
  v34[7] = @"url";
  null8 = v12;
  if (!v12)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = null8;
  v34[8] = @"privateRelayVendorName";
  null9 = privateRelayVendorName;
  if (!privateRelayVendorName)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = null9;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (privateRelayVendorName)
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

  if (!countryCode)
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

- (BMSafariNavigations)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v101[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"visited"];
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
          if (!error)
          {
            v83 = 0;
            v19 = 0;
            goto LABEL_80;
          }

          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v63 = *MEMORY[0x1E698F240];
          v98 = *MEMORY[0x1E696A578];
          v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"visited"];
          v99 = v82;
          v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
          v83 = 0;
          v19 = 0;
          *errorCopy = [v61 initWithDomain:v63 code:2 userInfo:?];
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
    v21 = [dictionaryCopy objectForKeyedSubscript:@"platform"];
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
        selfCopy2 = self;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v82 = 0;
            v19 = 0;
            goto LABEL_79;
          }

          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy2 = error;
          v48 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"platform"];
          v97 = v81;
          v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v82 = 0;
          v19 = 0;
          *errorCopy2 = [v46 initWithDomain:v48 code:2 userInfo:?];
          goto LABEL_95;
        }

        v82 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariNavigationsPlatformFromString(v22)];
      }
    }

    else
    {
      v82 = 0;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"userAgent"];
    v77 = v23;
    if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v81 = 0;
LABEL_22:
      v25 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
      v74 = v9;
      if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v32 = 0;
            v19 = 0;
            goto LABEL_77;
          }

          v29 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy3 = error;
          v30 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
          v93 = v78;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v31 = [v29 initWithDomain:v30 code:2 userInfo:v26];
          v32 = 0;
          v19 = 0;
          *errorCopy3 = v31;
          goto LABEL_76;
        }

        v72 = v25;
      }

      else
      {
        v72 = 0;
      }

      v26 = [dictionaryCopy objectForKeyedSubscript:@"privacyProxy"];
      v71 = v25;
      if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v78 = 0;
            v19 = 0;
            v32 = v72;
            goto LABEL_76;
          }

          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v90 = *MEMORY[0x1E696A578];
          errorCopy4 = error;
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"privacyProxy"];
          v91 = v75;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
          v36 = [v33 initWithDomain:v34 code:2 userInfo:v27];
          v78 = 0;
          v19 = 0;
          *errorCopy4 = v36;
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

        errorCopy6 = error;
        v78 = v26;
      }

      else
      {
        errorCopy6 = error;
        v78 = 0;
      }

      v27 = [dictionaryCopy objectForKeyedSubscript:@"error"];
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
            if (!errorCopy6)
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
            *errorCopy6 = v60;
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

      v37 = [dictionaryCopy objectForKeyedSubscript:@"url"];
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
        v39 = [dictionaryCopy objectForKeyedSubscript:@"privateRelayVendorName"];
        if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v40 = 0;
LABEL_58:
          intValue = [v82 intValue];
          intValue2 = [v81 intValue];
          LODWORD(v64) = [v75 intValue];
          v43 = intValue2;
          v32 = v72;
          v19 = [(BMSafariNavigations *)self initWithDomain:v73 visited:v83 platform:intValue userAgent:v43 countryCode:v72 privacyProxy:v78 error:v64 url:v38 privateRelayVendorName:v40];
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

        v40 = errorCopy6;
        if (errorCopy6)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v84 = *MEMORY[0x1E696A578];
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"privateRelayVendorName"];
          v85 = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          *errorCopy6 = [v67 initWithDomain:v65 code:2 userInfo:v50];

          v40 = 0;
        }

        v19 = 0;
LABEL_72:
        v32 = v72;
        goto LABEL_73;
      }

      if (errorCopy6)
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
        *errorCopy6 = v45;
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

    selfCopy2 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v81 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariNavigationsDeviceClassFromString(v24)];
      goto LABEL_22;
    }

    if (error)
    {
      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy7 = error;
      v55 = *MEMORY[0x1E698F240];
      v94 = *MEMORY[0x1E696A578];
      v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userAgent"];
      v95 = v56;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v58 = v53;
      v25 = v57;
      v81 = 0;
      v19 = 0;
      *errorCopy7 = [v58 initWithDomain:v55 code:2 userInfo:v57];
      v32 = v56;
      goto LABEL_77;
    }

    v81 = 0;
    v19 = 0;
LABEL_95:
    self = selfCopy2;
    goto LABEL_78;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v19 = 0;
    goto LABEL_81;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy8 = error;
  v18 = *MEMORY[0x1E698F240];
  v100 = *MEMORY[0x1E696A578];
  v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
  v101[0] = v83;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:&v100 count:1];
  v8 = 0;
  v19 = 0;
  *errorCopy8 = [v16 initWithDomain:v18 code:2 userInfo:v9];
LABEL_80:

LABEL_81:
  v51 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariNavigations *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v50.receiver = self;
  v50.super_class = BMSafariNavigations;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_96;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v51) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v41 = [fromCopy position] + 1;
              if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v18 > 3)
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
              v27 = [fromCopy position] + 1;
              if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if (([fromCopy hasError] & 1) != 0 || v18 > 2)
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
        v23 = [fromCopy position] + 8;
        if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
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
                v19 = [fromCopy position] + 1;
                if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
                {
                  data5 = [fromCopy data];
                  [data5 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
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

              if (([fromCopy hasError] & 1) != 0 || v18 > 0x25)
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
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v36 = (v32 != 0) & ~[fromCopy hasError];
LABEL_81:
        v5->_privacyProxy = v36;
      }

LABEL_93:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  domain = [(BMSafariNavigations *)self domain];
  visited = [(BMSafariNavigations *)self visited];
  v6 = BMSafariNavigationsPlatformAsString([(BMSafariNavigations *)self platform]);
  v7 = BMSafariNavigationsDeviceClassAsString([(BMSafariNavigations *)self userAgent]);
  countryCode = [(BMSafariNavigations *)self countryCode];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariNavigations privacyProxy](self, "privacyProxy")}];
  v10 = BMSafariNavigationsErrorResponseAsString([(BMSafariNavigations *)self error]);
  v11 = [(BMSafariNavigations *)self url];
  privateRelayVendorName = [(BMSafariNavigations *)self privateRelayVendorName];
  v13 = [v3 initWithFormat:@"BMSafariNavigations with domain: %@, visited: %@, platform: %@, userAgent: %@, countryCode: %@, privacyProxy: %@, error: %@, url: %@, privateRelayVendorName: %@", domain, visited, v6, v7, countryCode, v9, v10, v11, privateRelayVendorName];

  return v13;
}

- (BMSafariNavigations)initWithDomain:(id)domain visited:(id)visited platform:(int)platform userAgent:(int)agent countryCode:(id)code privacyProxy:(id)proxy error:(int)error url:(id)self0 privateRelayVendorName:(id)self1
{
  domainCopy = domain;
  visitedCopy = visited;
  codeCopy = code;
  proxyCopy = proxy;
  urlCopy = url;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = BMSafariNavigations;
  v21 = [(BMEventBase *)&v27 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_domain, domain);
    if (visitedCopy)
    {
      v21->_hasRaw_visited = 1;
      [visitedCopy timeIntervalSince1970];
    }

    else
    {
      v21->_hasRaw_visited = 0;
      v22 = -1.0;
    }

    v21->_raw_visited = v22;
    v21->_platform = platform;
    v21->_userAgent = agent;
    objc_storeStrong(&v21->_countryCode, code);
    if (proxyCopy)
    {
      v21->_hasPrivacyProxy = 1;
      v21->_privacyProxy = [proxyCopy BOOLValue];
    }

    else
    {
      v21->_hasPrivacyProxy = 0;
      v21->_privacyProxy = 0;
    }

    v21->_error = error;
    objc_storeStrong(&v21->_url, url);
    objc_storeStrong(&v21->_privateRelayVendorName, name);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

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