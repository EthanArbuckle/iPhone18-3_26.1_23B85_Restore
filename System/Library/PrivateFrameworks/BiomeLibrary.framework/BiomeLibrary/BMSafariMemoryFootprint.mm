@interface BMSafariMemoryFootprint
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSafariMemoryFootprint)initWithDomain:(id)a3 visited:(id)a4 footprint:(int)a5 pageCount:(int)a6 lifetime:(int)a7 countryCode:(id)a8 inForeground:(id)a9 privacyProxy:(id)a10 canSuspend:(id)a11;
- (BMSafariMemoryFootprint)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)visited;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSafariMemoryFootprint

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSafariMemoryFootprint *)self domain];
    v7 = [v5 domain];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSafariMemoryFootprint *)self domain];
      v10 = [v5 domain];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    v13 = [(BMSafariMemoryFootprint *)self visited];
    v14 = [v5 visited];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSafariMemoryFootprint *)self visited];
      v17 = [v5 visited];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    v19 = [(BMSafariMemoryFootprint *)self footprint];
    if (v19 != [v5 footprint])
    {
      goto LABEL_33;
    }

    v20 = [(BMSafariMemoryFootprint *)self pageCount];
    if (v20 != [v5 pageCount])
    {
      goto LABEL_33;
    }

    v21 = [(BMSafariMemoryFootprint *)self lifetime];
    if (v21 != [v5 lifetime])
    {
      goto LABEL_33;
    }

    v22 = [(BMSafariMemoryFootprint *)self countryCode];
    v23 = [v5 countryCode];
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      v25 = [(BMSafariMemoryFootprint *)self countryCode];
      v26 = [v5 countryCode];
      v27 = [v25 isEqual:v26];

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
          v30 = [(BMSafariMemoryFootprint *)self canSuspend];
          v12 = v30 ^ [v5 canSuspend] ^ 1;
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
  v3 = [(BMSafariMemoryFootprint *)self domain];
  v4 = [(BMSafariMemoryFootprint *)self visited];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMSafariMemoryFootprint *)self visited];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariMemoryFootprint footprint](self, "footprint")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariMemoryFootprint pageCount](self, "pageCount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariMemoryFootprint lifetime](self, "lifetime")}];
  v11 = [(BMSafariMemoryFootprint *)self countryCode];
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
    v12 = v11;
    v13 = MEMORY[0x1E696AD98];
    v14 = [(BMSafariMemoryFootprint *)self canSuspend];
    v15 = v13;
    v11 = v12;
    v16 = [v15 numberWithBool:v14];
  }

  else
  {
    v16 = 0;
  }

  v40[0] = @"domain";
  v17 = v3;
  if (!v3)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v17;
  v41[0] = v17;
  v40[1] = @"visited";
  v18 = v7;
  if (!v7)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v18;
  v41[1] = v18;
  v40[2] = @"footprint";
  v19 = v8;
  if (!v8)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v19;
  v41[2] = v19;
  v40[3] = @"pageCount";
  v20 = v9;
  if (!v9)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v3;
  v31 = v20;
  v41[3] = v20;
  v40[4] = @"lifetime";
  v21 = v10;
  if (!v10)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v7;
  v41[4] = v21;
  v40[5] = @"countryCode";
  v22 = v11;
  if (!v11)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v11;
  v24 = v8;
  v41[5] = v22;
  v40[6] = @"inForeground";
  v25 = v39;
  if (!v39)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v9;
  v41[6] = v25;
  v40[7] = @"privacyProxy";
  v27 = v38;
  if (!v38)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v41[7] = v27;
  v40[8] = @"canSuspend";
  v28 = v16;
  if (!v16)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v41[8] = v28;
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

- (BMSafariMemoryFootprint)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v99[1] = *MEMORY[0x1E69E9840];
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
          v81 = [v20 dateFromString:v9];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v81 = 0;
            v19 = 0;
            goto LABEL_60;
          }

          v62 = objc_alloc(MEMORY[0x1E696ABC0]);
          v63 = a4;
          v64 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"visited"];
          v97 = v80;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v81 = 0;
          v19 = 0;
          *v63 = [v62 initWithDomain:v64 code:2 userInfo:v21];
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
    v21 = [v6 objectForKeyedSubscript:@"footprint"];
    v78 = v8;
    v79 = v7;
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = self;
        v80 = v21;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v80 = 0;
            v19 = 0;
            goto LABEL_59;
          }

          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v76 = a4;
          v49 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"footprint"];
          v95 = v77;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v51 = v48;
          v23 = v50;
          v80 = 0;
          v19 = 0;
          *v76 = [v51 initWithDomain:v49 code:2 userInfo:v50];
LABEL_58:

LABEL_59:
          goto LABEL_60;
        }

        v22 = self;
        v80 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariMemoryFootprintFootprintFromString(v21)];
      }
    }

    else
    {
      v22 = self;
      v80 = 0;
    }

    v23 = [v6 objectForKeyedSubscript:@"pageCount"];
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
          self = v22;
          if (!a4)
          {
            v77 = 0;
            v19 = 0;
            v7 = v79;
            goto LABEL_58;
          }

          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = a4;
          v56 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"pageCount"];
          v93 = v75;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          v58 = v56;
          v35 = v57;
          v77 = 0;
          v19 = 0;
          *v55 = [v54 initWithDomain:v58 code:2 userInfo:v57];
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

    v24 = [v6 objectForKeyedSubscript:@"lifetime"];
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
          if (!a4)
          {
            v75 = 0;
            v19 = 0;
            v35 = v70;
            self = v22;
            v7 = v79;
            goto LABEL_57;
          }

          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = a4;
          v61 = *MEMORY[0x1E698F240];
          v90 = *MEMORY[0x1E696A578];
          v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"lifetime"];
          v91 = v74;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
          v75 = 0;
          v19 = 0;
          *v60 = [v59 initWithDomain:v61 code:2 userInfo:v26];
          v23 = v71;
          self = v22;
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

    v68 = v22;
    v26 = [v6 objectForKeyedSubscript:@"countryCode"];
    v27 = a4;
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
          if (!a4)
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
          *v27 = [v41 initWithDomain:v42 code:2 userInfo:v28];
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

    v28 = [v6 objectForKeyedSubscript:@"inForeground"];
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
      v29 = [v6 objectForKeyedSubscript:@"privacyProxy"];
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
        v31 = [v6 objectForKeyedSubscript:@"canSuspend"];
        if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v34 = v68;
            v33 = v27;
            if (v27)
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

      if (v27)
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
        *v27 = v47;
        goto LABEL_53;
      }

      v30 = 0;
      v19 = 0;
LABEL_92:
      self = v68;
      goto LABEL_54;
    }

    if (v27)
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
      *v27 = [v43 initWithDomain:v45 code:2 userInfo:v29];
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

  if (!a4)
  {
    v8 = 0;
    v19 = 0;
    goto LABEL_61;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = a4;
  v18 = *MEMORY[0x1E698F240];
  v98 = *MEMORY[0x1E696A578];
  v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
  v99[0] = v81;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:&v98 count:1];
  v8 = 0;
  v19 = 0;
  *v17 = [v16 initWithDomain:v18 code:2 userInfo:v9];
LABEL_60:

LABEL_61:
  v36 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariMemoryFootprint *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
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

  v9 = v12;
  if (self->_hasPrivacyProxy)
  {
    privacyProxy = self->_privacyProxy;
    PBDataWriterWriteBOOLField();
    v9 = v12;
  }

  if (self->_hasCanSuspend)
  {
    canSuspend = self->_canSuspend;
    PBDataWriterWriteBOOLField();
    v9 = v12;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v63.receiver = self;
  v63.super_class = BMSafariMemoryFootprint;
  v5 = [(BMEventBase *)&v63 init];
  if (!v5)
  {
    goto LABEL_117;
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
        LOBYTE(v64) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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
            v35 = 0;
            v36 = 0;
            v27 = 0;
            while (1)
            {
              LOBYTE(v64) = 0;
              v37 = [v4 position] + 1;
              if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
              {
                v39 = [v4 data];
                [v39 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v27 > 5)
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
              v28 = [v4 position] + 1;
              if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
              {
                v30 = [v4 data];
                [v30 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v27 > 3)
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
        v23 = [v4 position] + 8;
        if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
        {
          v59 = [v4 data];
          [v59 getBytes:&v64 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
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
              v48 = [v4 position] + 1;
              if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 1, v49 <= objc_msgSend(v4, "length")))
              {
                v50 = [v4 data];
                [v50 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v27 > 8)
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
              v43 = [v4 position] + 1;
              if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
              {
                v45 = [v4 data];
                [v45 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            v22 = (v42 != 0) & ~[v4 hasError];
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
              v54 = [v4 position] + 1;
              if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 1, v55 <= objc_msgSend(v4, "length")))
              {
                v56 = [v4 data];
                [v56 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            v22 = (v53 != 0) & ~[v4 hasError];
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
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v64 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            v22 = (v18 != 0) & ~[v4 hasError];
LABEL_108:
            v58 = 36;
            break;
          default:
            goto LABEL_90;
        }

        *(&v5->super.super.isa + v58) = v22;
      }

LABEL_114:
      v60 = [v4 position];
    }

    while (v60 < [v4 length]);
  }

  if ([v4 hasError])
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
  v3 = [(BMSafariMemoryFootprint *)self domain];
  v4 = [(BMSafariMemoryFootprint *)self visited];
  v5 = BMSafariMemoryFootprintFootprintAsString([(BMSafariMemoryFootprint *)self footprint]);
  v6 = BMSafariMemoryFootprintPageCountAsString([(BMSafariMemoryFootprint *)self pageCount]);
  v7 = BMSafariMemoryFootprintLifetimeAsString([(BMSafariMemoryFootprint *)self lifetime]);
  v8 = [(BMSafariMemoryFootprint *)self countryCode];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariMemoryFootprint inForeground](self, "inForeground")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariMemoryFootprint privacyProxy](self, "privacyProxy")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariMemoryFootprint canSuspend](self, "canSuspend")}];
  v12 = [v14 initWithFormat:@"BMSafariMemoryFootprint with domain: %@, visited: %@, footprint: %@, pageCount: %@, lifetime: %@, countryCode: %@, inForeground: %@, privacyProxy: %@, canSuspend: %@", v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMSafariMemoryFootprint)initWithDomain:(id)a3 visited:(id)a4 footprint:(int)a5 pageCount:(int)a6 lifetime:(int)a7 countryCode:(id)a8 inForeground:(id)a9 privacyProxy:(id)a10 canSuspend:(id)a11
{
  v26 = a3;
  v18 = a4;
  v25 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v27.receiver = self;
  v27.super_class = BMSafariMemoryFootprint;
  v22 = [(BMEventBase *)&v27 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_domain, a3);
    if (v18)
    {
      v22->_hasRaw_visited = 1;
      [v18 timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_visited = 0;
      v23 = -1.0;
    }

    v22->_raw_visited = v23;
    v22->_footprint = a5;
    v22->_pageCount = a6;
    v22->_lifetime = a7;
    objc_storeStrong(&v22->_countryCode, a8);
    if (v19)
    {
      v22->_hasInForeground = 1;
      v22->_inForeground = [v19 BOOLValue];
    }

    else
    {
      v22->_hasInForeground = 0;
      v22->_inForeground = 0;
    }

    if (v20)
    {
      v22->_hasPrivacyProxy = 1;
      v22->_privacyProxy = [v20 BOOLValue];
    }

    else
    {
      v22->_hasPrivacyProxy = 0;
      v22->_privacyProxy = 0;
    }

    if (v21)
    {
      v22->_hasCanSuspend = 1;
      v22->_canSuspend = [v21 BOOLValue];
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