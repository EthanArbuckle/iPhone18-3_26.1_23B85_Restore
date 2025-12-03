@interface BMSafariMemoryFootprint
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariMemoryFootprint)initWithDomain:(id)domain visited:(id)visited footprint:(int)footprint pageCount:(int)count lifetime:(int)lifetime countryCode:(id)code inForeground:(id)foreground privacyProxy:(id)self0 canSuspend:(id)self1;
- (BMSafariMemoryFootprint)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)visited;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariMemoryFootprint

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    domain = [(BMSafariMemoryFootprint *)self domain];
    domain2 = [v5 domain];
    v8 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMSafariMemoryFootprint *)self domain];
      domain4 = [v5 domain];
      v11 = [domain3 isEqual:domain4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    visited = [(BMSafariMemoryFootprint *)self visited];
    visited2 = [v5 visited];
    v15 = visited2;
    if (visited == visited2)
    {
    }

    else
    {
      visited3 = [(BMSafariMemoryFootprint *)self visited];
      visited4 = [v5 visited];
      v18 = [visited3 isEqual:visited4];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    footprint = [(BMSafariMemoryFootprint *)self footprint];
    if (footprint != [v5 footprint])
    {
      goto LABEL_33;
    }

    pageCount = [(BMSafariMemoryFootprint *)self pageCount];
    if (pageCount != [v5 pageCount])
    {
      goto LABEL_33;
    }

    lifetime = [(BMSafariMemoryFootprint *)self lifetime];
    if (lifetime != [v5 lifetime])
    {
      goto LABEL_33;
    }

    countryCode = [(BMSafariMemoryFootprint *)self countryCode];
    countryCode2 = [v5 countryCode];
    v24 = countryCode2;
    if (countryCode == countryCode2)
    {
    }

    else
    {
      countryCode3 = [(BMSafariMemoryFootprint *)self countryCode];
      countryCode4 = [v5 countryCode];
      v27 = [countryCode3 isEqual:countryCode4];

      if (!v27)
      {
        goto LABEL_33;
      }
    }

    if (!-[BMSafariMemoryFootprint hasInForeground](self, "hasInForeground") && ![v5 hasInForeground] || -[BMSafariMemoryFootprint hasInForeground](self, "hasInForeground") && objc_msgSend(v5, "hasInForeground") && (v28 = -[BMSafariMemoryFootprint inForeground](self, "inForeground"), v28 == objc_msgSend(v5, "inForeground")))
    {
      if (!-[BMSafariMemoryFootprint hasPrivacyProxy](self, "hasPrivacyProxy") && ![v5 hasPrivacyProxy] || -[BMSafariMemoryFootprint hasPrivacyProxy](self, "hasPrivacyProxy") && objc_msgSend(v5, "hasPrivacyProxy") && (v29 = -[BMSafariMemoryFootprint privacyProxy](self, "privacyProxy"), v29 == objc_msgSend(v5, "privacyProxy")))
      {
        if (!-[BMSafariMemoryFootprint hasCanSuspend](self, "hasCanSuspend") && ![v5 hasCanSuspend])
        {
          LOBYTE(v12) = 1;
          goto LABEL_34;
        }

        if (-[BMSafariMemoryFootprint hasCanSuspend](self, "hasCanSuspend") && [v5 hasCanSuspend])
        {
          canSuspend = [(BMSafariMemoryFootprint *)self canSuspend];
          v12 = canSuspend ^ [v5 canSuspend] ^ 1;
LABEL_34:

          goto LABEL_35;
        }
      }
    }

LABEL_33:
    LOBYTE(v12) = 0;
    goto LABEL_34;
  }

  LOBYTE(v12) = 0;
LABEL_35:

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
  v41[9] = *MEMORY[0x1E69E9840];
  domain = [(BMSafariMemoryFootprint *)self domain];
  visited = [(BMSafariMemoryFootprint *)self visited];
  if (visited)
  {
    v5 = MEMORY[0x1E696AD98];
    visited2 = [(BMSafariMemoryFootprint *)self visited];
    [visited2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariMemoryFootprint footprint](self, "footprint")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariMemoryFootprint pageCount](self, "pageCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariMemoryFootprint lifetime](self, "lifetime")}];
  countryCode = [(BMSafariMemoryFootprint *)self countryCode];
  if ([(BMSafariMemoryFootprint *)self hasInForeground])
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariMemoryFootprint inForeground](self, "inForeground")}];
  }

  else
  {
    v39 = 0;
  }

  if ([(BMSafariMemoryFootprint *)self hasPrivacyProxy])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariMemoryFootprint privacyProxy](self, "privacyProxy")}];
  }

  else
  {
    v38 = 0;
  }

  if ([(BMSafariMemoryFootprint *)self hasCanSuspend])
  {
    v12 = countryCode;
    v13 = MEMORY[0x1E696AD98];
    canSuspend = [(BMSafariMemoryFootprint *)self canSuspend];
    v15 = v13;
    countryCode = v12;
    v16 = [v15 numberWithBool:canSuspend];
  }

  else
  {
    v16 = 0;
  }

  v40[0] = @"domain";
  null = domain;
  if (!domain)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v41[0] = null;
  v40[1] = @"visited";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null2;
  v41[1] = null2;
  v40[2] = @"footprint";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null3;
  v41[2] = null3;
  v40[3] = @"pageCount";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = domain;
  v31 = null4;
  v41[3] = null4;
  v40[4] = @"lifetime";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v7;
  v41[4] = null5;
  v40[5] = @"countryCode";
  null6 = countryCode;
  if (!countryCode)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = countryCode;
  v24 = v8;
  v41[5] = null6;
  v40[6] = @"inForeground";
  null7 = v39;
  if (!v39)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v9;
  v41[6] = null7;
  v40[7] = @"privacyProxy";
  null8 = v38;
  if (!v38)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v41[7] = null8;
  v40[8] = @"canSuspend";
  null9 = v16;
  if (!v16)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v41[8] = null9;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:9];
  if (!v16)
  {
  }

  if (!v38)
  {
  }

  if (v39)
  {
    if (v23)
    {
      goto LABEL_37;
    }
  }

  else
  {

    if (v23)
    {
      goto LABEL_37;
    }
  }

LABEL_37:
  if (!v10)
  {
  }

  if (v26)
  {
    if (v24)
    {
      goto LABEL_41;
    }
  }

  else
  {

    if (v24)
    {
LABEL_41:
      if (v36)
      {
        goto LABEL_42;
      }

LABEL_50:

      if (v37)
      {
        goto LABEL_43;
      }

      goto LABEL_51;
    }
  }

  if (!v36)
  {
    goto LABEL_50;
  }

LABEL_42:
  if (v37)
  {
    goto LABEL_43;
  }

LABEL_51:

LABEL_43:
  v29 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BMSafariMemoryFootprint)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v99[1] = *MEMORY[0x1E69E9840];
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
          v81 = [v20 dateFromString:v9];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v81 = 0;
            v19 = 0;
            goto LABEL_60;
          }

          v62 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v64 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"visited"];
          v97 = v80;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v81 = 0;
          v19 = 0;
          *errorCopy = [v62 initWithDomain:v64 code:2 userInfo:v21];
          goto LABEL_59;
        }

        v15 = v9;
      }

      v81 = v15;
    }

    else
    {
      v81 = 0;
    }

LABEL_16:
    v21 = [dictionaryCopy objectForKeyedSubscript:@"footprint"];
    v78 = v8;
    v79 = v7;
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy3 = self;
        v80 = v21;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v80 = 0;
            v19 = 0;
            goto LABEL_59;
          }

          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy2 = error;
          v49 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"footprint"];
          v95 = v77;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v51 = v48;
          v23 = v50;
          v80 = 0;
          v19 = 0;
          *errorCopy2 = [v51 initWithDomain:v49 code:2 userInfo:v50];
LABEL_58:

LABEL_59:
          goto LABEL_60;
        }

        selfCopy3 = self;
        v80 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariMemoryFootprintFootprintFromString(v21)];
      }
    }

    else
    {
      selfCopy3 = self;
      v80 = 0;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"pageCount"];
    v72 = v21;
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v77 = v23;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          self = selfCopy3;
          if (!error)
          {
            v77 = 0;
            v19 = 0;
            v7 = v79;
            goto LABEL_58;
          }

          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy3 = error;
          v56 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"pageCount"];
          v93 = v75;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v58 = v56;
          v35 = v57;
          v77 = 0;
          v19 = 0;
          *errorCopy3 = [v54 initWithDomain:v58 code:2 userInfo:v57];
          v7 = v79;
          goto LABEL_57;
        }

        v77 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariMemoryFootprintPageCountFromString(v23)];
      }
    }

    else
    {
      v77 = 0;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"lifetime"];
    v69 = v9;
    v70 = v24;
    v71 = v23;
    if (v24 && (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = v25;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v75 = 0;
            v19 = 0;
            v35 = v70;
            self = selfCopy3;
            v7 = v79;
            goto LABEL_57;
          }

          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy4 = error;
          v61 = *MEMORY[0x1E698F240];
          v90 = *MEMORY[0x1E696A578];
          v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"lifetime"];
          v91 = v74;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
          v75 = 0;
          v19 = 0;
          *errorCopy4 = [v59 initWithDomain:v61 code:2 userInfo:v26];
          v23 = v71;
          self = selfCopy3;
          v7 = v79;
LABEL_56:

          v9 = v69;
          v35 = v70;
LABEL_57:

          goto LABEL_58;
        }

        v75 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariMemoryFootprintLifetimeFromString(v25)];
      }
    }

    else
    {
      v75 = 0;
    }

    v68 = selfCopy3;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
    errorCopy5 = error;
    if (v26)
    {
      objc_opt_class();
      v7 = v79;
      if (objc_opt_isKindOfClass())
      {
        v74 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v74 = 0;
            v19 = 0;
            self = v68;
            goto LABEL_56;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = v21;
          v40 = *MEMORY[0x1E698F240];
          v88 = *MEMORY[0x1E696A578];
          v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
          v89 = v73;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          v41 = v38;
          v23 = v71;
          v42 = v40;
          v21 = v39;
          v74 = 0;
          v19 = 0;
          *errorCopy5 = [v41 initWithDomain:v42 code:2 userInfo:v28];
          goto LABEL_90;
        }

        v74 = v26;
      }
    }

    else
    {
      v74 = 0;
      v7 = v79;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"inForeground"];
    if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v73 = 0;
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v73 = v28;
LABEL_46:
      v29 = [dictionaryCopy objectForKeyedSubscript:@"privacyProxy"];
      if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v30 = 0;
        goto LABEL_49;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
LABEL_49:
        v31 = [dictionaryCopy objectForKeyedSubscript:@"canSuspend"];
        if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v34 = v68;
            v33 = errorCopy5;
            if (errorCopy5)
            {
              v67 = objc_alloc(MEMORY[0x1E696ABC0]);
              v65 = *MEMORY[0x1E698F240];
              v82 = *MEMORY[0x1E696A578];
              v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"canSuspend"];
              v83 = v52;
              v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
              *v33 = [v67 initWithDomain:v65 code:2 userInfo:v53];

              v33 = 0;
            }

            v19 = 0;
            goto LABEL_53;
          }

          v32 = v68;
          v33 = v31;
        }

        else
        {
          v32 = v68;
          v33 = 0;
        }

        v19 = -[BMSafariMemoryFootprint initWithDomain:visited:footprint:pageCount:lifetime:countryCode:inForeground:privacyProxy:canSuspend:](v32, "initWithDomain:visited:footprint:pageCount:lifetime:countryCode:inForeground:privacyProxy:canSuspend:", v78, v81, [v80 intValue], objc_msgSend(v77, "intValue"), objc_msgSend(v75, "intValue"), v74, v73, v30, v33);
        v34 = v19;
LABEL_53:

        self = v34;
        v8 = v78;
        v7 = v79;
LABEL_54:

        v23 = v71;
        v21 = v72;
LABEL_55:

        goto LABEL_56;
      }

      if (errorCopy5)
      {
        v34 = v68;
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"privacyProxy"];
        v85 = v33;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v47 = [v66 initWithDomain:v46 code:2 userInfo:v31];
        v30 = 0;
        v19 = 0;
        *errorCopy5 = v47;
        goto LABEL_53;
      }

      v30 = 0;
      v19 = 0;
LABEL_92:
      self = v68;
      goto LABEL_54;
    }

    if (errorCopy5)
    {
      v43 = objc_alloc(MEMORY[0x1E696ABC0]);
      v44 = *MEMORY[0x1E698F240];
      v86 = *MEMORY[0x1E696A578];
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"inForeground"];
      v87 = v30;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      v45 = v44;
      v8 = v78;
      v73 = 0;
      v19 = 0;
      *errorCopy5 = [v43 initWithDomain:v45 code:2 userInfo:v29];
      goto LABEL_92;
    }

    v73 = 0;
    v19 = 0;
LABEL_90:
    self = v68;
    goto LABEL_55;
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
    goto LABEL_61;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy6 = error;
  v18 = *MEMORY[0x1E698F240];
  v98 = *MEMORY[0x1E696A578];
  v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
  v99[0] = v81;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:&v98 count:1];
  v8 = 0;
  v19 = 0;
  *errorCopy6 = [v16 initWithDomain:v18 code:2 userInfo:v9];
LABEL_60:

LABEL_61:
  v36 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariMemoryFootprint *)self writeTo:v3];
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

  footprint = self->_footprint;
  PBDataWriterWriteUint32Field();
  pageCount = self->_pageCount;
  PBDataWriterWriteUint32Field();
  lifetime = self->_lifetime;
  PBDataWriterWriteUint32Field();
  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasInForeground)
  {
    inForeground = self->_inForeground;
    PBDataWriterWriteBOOLField();
  }

  v9 = toCopy;
  if (self->_hasPrivacyProxy)
  {
    privacyProxy = self->_privacyProxy;
    PBDataWriterWriteBOOLField();
    v9 = toCopy;
  }

  if (self->_hasCanSuspend)
  {
    canSuspend = self->_canSuspend;
    PBDataWriterWriteBOOLField();
    v9 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v63.receiver = self;
  v63.super_class = BMSafariMemoryFootprint;
  v5 = [(BMEventBase *)&v63 init];
  if (!v5)
  {
    goto LABEL_117;
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
        LOBYTE(v64) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v64) & 0x7F) << v7;
        if ((LOBYTE(v64) & 0x80) == 0)
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
            v35 = 0;
            v36 = 0;
            v27 = 0;
            while (1)
            {
              LOBYTE(v64) = 0;
              v37 = [fromCopy position] + 1;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v27 |= (LOBYTE(v64) & 0x7F) << v35;
              if ((LOBYTE(v64) & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v31 = v36++ > 8;
              if (v31)
              {
                goto LABEL_98;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v27 > 5)
            {
LABEL_98:
              LODWORD(v27) = 0;
            }

            v57 = 44;
          }

          else
          {
            if (v15 != 4)
            {
              goto LABEL_90;
            }

            v25 = 0;
            v26 = 0;
            v27 = 0;
            while (1)
            {
              LOBYTE(v64) = 0;
              v28 = [fromCopy position] + 1;
              if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v27 |= (LOBYTE(v64) & 0x7F) << v25;
              if ((LOBYTE(v64) & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v31 = v26++ > 8;
              if (v31)
              {
                goto LABEL_94;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v27 > 3)
            {
LABEL_94:
              LODWORD(v27) = 0;
            }

            v57 = 48;
          }

          goto LABEL_106;
        }

        if (v15 == 1)
        {
          v32 = PBReaderReadString();
          v33 = 56;
LABEL_53:
          v34 = *(&v5->super.super.isa + v33);
          *(&v5->super.super.isa + v33) = v32;

          goto LABEL_114;
        }

        if (v15 != 2)
        {
          goto LABEL_90;
        }

        v5->_hasRaw_visited = 1;
        v64 = 0.0;
        v23 = [fromCopy position] + 8;
        if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_visited = v64;
      }

      else
      {
        if (v15 <= 6)
        {
          if (v15 == 5)
          {
            v46 = 0;
            v47 = 0;
            v27 = 0;
            while (1)
            {
              LOBYTE(v64) = 0;
              v48 = [fromCopy position] + 1;
              if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v27 |= (LOBYTE(v64) & 0x7F) << v46;
              if ((LOBYTE(v64) & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              v31 = v47++ > 8;
              if (v31)
              {
                goto LABEL_104;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v27 > 8)
            {
LABEL_104:
              LODWORD(v27) = 0;
            }

            v57 = 52;
LABEL_106:
            *(&v5->super.super.isa + v57) = v27;
            goto LABEL_114;
          }

          if (v15 != 6)
          {
LABEL_90:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_116;
            }

            goto LABEL_114;
          }

          v32 = PBReaderReadString();
          v33 = 64;
          goto LABEL_53;
        }

        switch(v15)
        {
          case 7:
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v5->_hasInForeground = 1;
            while (1)
            {
              LOBYTE(v64) = 0;
              v43 = [fromCopy position] + 1;
              if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v42 |= (LOBYTE(v64) & 0x7F) << v40;
              if ((LOBYTE(v64) & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v13 = v41++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_101;
              }
            }

            v22 = (v42 != 0) & ~[fromCopy hasError];
LABEL_101:
            v58 = 32;
            break;
          case 8:
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v5->_hasPrivacyProxy = 1;
            while (1)
            {
              LOBYTE(v64) = 0;
              v54 = [fromCopy position] + 1;
              if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 1, v55 <= objc_msgSend(fromCopy, "length")))
              {
                data7 = [fromCopy data];
                [data7 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v53 |= (LOBYTE(v64) & 0x7F) << v51;
              if ((LOBYTE(v64) & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              v13 = v52++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_110;
              }
            }

            v22 = (v53 != 0) & ~[fromCopy hasError];
LABEL_110:
            v58 = 34;
            break;
          case 9:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasCanSuspend = 1;
            while (1)
            {
              LOBYTE(v64) = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data8 = [fromCopy data];
                [data8 getBytes:&v64 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (LOBYTE(v64) & 0x7F) << v16;
              if ((LOBYTE(v64) & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v13 = v17++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_108;
              }
            }

            v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_108:
            v58 = 36;
            break;
          default:
            goto LABEL_90;
        }

        *(&v5->super.super.isa + v58) = v22;
      }

LABEL_114:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_116:
    v61 = 0;
  }

  else
  {
LABEL_117:
    v61 = v5;
  }

  return v61;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  domain = [(BMSafariMemoryFootprint *)self domain];
  visited = [(BMSafariMemoryFootprint *)self visited];
  v5 = BMSafariMemoryFootprintFootprintAsString([(BMSafariMemoryFootprint *)self footprint]);
  v6 = BMSafariMemoryFootprintPageCountAsString([(BMSafariMemoryFootprint *)self pageCount]);
  v7 = BMSafariMemoryFootprintLifetimeAsString([(BMSafariMemoryFootprint *)self lifetime]);
  countryCode = [(BMSafariMemoryFootprint *)self countryCode];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariMemoryFootprint inForeground](self, "inForeground")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariMemoryFootprint privacyProxy](self, "privacyProxy")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariMemoryFootprint canSuspend](self, "canSuspend")}];
  v12 = [v14 initWithFormat:@"BMSafariMemoryFootprint with domain: %@, visited: %@, footprint: %@, pageCount: %@, lifetime: %@, countryCode: %@, inForeground: %@, privacyProxy: %@, canSuspend: %@", domain, visited, v5, v6, v7, countryCode, v9, v10, v11];

  return v12;
}

- (BMSafariMemoryFootprint)initWithDomain:(id)domain visited:(id)visited footprint:(int)footprint pageCount:(int)count lifetime:(int)lifetime countryCode:(id)code inForeground:(id)foreground privacyProxy:(id)self0 canSuspend:(id)self1
{
  domainCopy = domain;
  visitedCopy = visited;
  codeCopy = code;
  foregroundCopy = foreground;
  proxyCopy = proxy;
  suspendCopy = suspend;
  v27.receiver = self;
  v27.super_class = BMSafariMemoryFootprint;
  v22 = [(BMEventBase *)&v27 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_domain, domain);
    if (visitedCopy)
    {
      v22->_hasRaw_visited = 1;
      [visitedCopy timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_visited = 0;
      v23 = -1.0;
    }

    v22->_raw_visited = v23;
    v22->_footprint = footprint;
    v22->_pageCount = count;
    v22->_lifetime = lifetime;
    objc_storeStrong(&v22->_countryCode, code);
    if (foregroundCopy)
    {
      v22->_hasInForeground = 1;
      v22->_inForeground = [foregroundCopy BOOLValue];
    }

    else
    {
      v22->_hasInForeground = 0;
      v22->_inForeground = 0;
    }

    if (proxyCopy)
    {
      v22->_hasPrivacyProxy = 1;
      v22->_privacyProxy = [proxyCopy BOOLValue];
    }

    else
    {
      v22->_hasPrivacyProxy = 0;
      v22->_privacyProxy = 0;
    }

    if (suspendCopy)
    {
      v22->_hasCanSuspend = 1;
      v22->_canSuspend = [suspendCopy BOOLValue];
    }

    else
    {
      v22->_hasCanSuspend = 0;
      v22->_canSuspend = 0;
    }
  }

  return v22;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visited" number:2 type:0 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"footprint" number:3 type:4 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pageCount" number:4 type:4 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lifetime" number:5 type:4 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:6 type:13 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inForeground" number:7 type:12 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privacyProxy" number:8 type:12 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"canSuspend" number:9 type:12 subMessageClass:0];
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
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"footprint" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pageCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lifetime" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inForeground" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privacyProxy" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"canSuspend" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
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

    v8 = [[BMSafariMemoryFootprint alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end