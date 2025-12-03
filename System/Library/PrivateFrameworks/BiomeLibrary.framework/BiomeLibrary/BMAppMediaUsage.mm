@interface BMAppMediaUsage
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppMediaUsage)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppMediaUsage)initWithStarting:(id)starting bundleID:(id)d URL:(id)l mediaURL:(id)rL isUsageTrusted:(id)trusted absoluteTimestamp:(id)timestamp safariProfileID:(id)iD uniqueID:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppMediaUsage

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"URL" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaURL" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUsageTrusted" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:2];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"safariProfileID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMAppMediaUsage hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMAppMediaUsage *)self hasStarting])
      {
        goto LABEL_31;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_31;
      }

      starting = [(BMAppMediaUsage *)self starting];
      if (starting != [v5 starting])
      {
        goto LABEL_31;
      }
    }

    bundleID = [(BMAppMediaUsage *)self bundleID];
    bundleID2 = [v5 bundleID];
    v9 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMAppMediaUsage *)self bundleID];
      bundleID4 = [v5 bundleID];
      v12 = [bundleID3 isEqual:bundleID4];

      if (!v12)
      {
        goto LABEL_31;
      }
    }

    v14 = [(BMAppMediaUsage *)self URL];
    v15 = [v5 URL];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMAppMediaUsage *)self URL];
      v18 = [v5 URL];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_31;
      }
    }

    mediaURL = [(BMAppMediaUsage *)self mediaURL];
    mediaURL2 = [v5 mediaURL];
    v22 = mediaURL2;
    if (mediaURL == mediaURL2)
    {
    }

    else
    {
      mediaURL3 = [(BMAppMediaUsage *)self mediaURL];
      mediaURL4 = [v5 mediaURL];
      v25 = [mediaURL3 isEqual:mediaURL4];

      if (!v25)
      {
        goto LABEL_31;
      }
    }

    if (-[BMAppMediaUsage hasIsUsageTrusted](self, "hasIsUsageTrusted") || [v5 hasIsUsageTrusted])
    {
      if (![(BMAppMediaUsage *)self hasIsUsageTrusted])
      {
        goto LABEL_31;
      }

      if (![v5 hasIsUsageTrusted])
      {
        goto LABEL_31;
      }

      isUsageTrusted = [(BMAppMediaUsage *)self isUsageTrusted];
      if (isUsageTrusted != [v5 isUsageTrusted])
      {
        goto LABEL_31;
      }
    }

    absoluteTimestamp = [(BMAppMediaUsage *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v29 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMAppMediaUsage *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v32 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v32)
      {
        goto LABEL_31;
      }
    }

    safariProfileID = [(BMAppMediaUsage *)self safariProfileID];
    safariProfileID2 = [v5 safariProfileID];
    v35 = safariProfileID2;
    if (safariProfileID == safariProfileID2)
    {
    }

    else
    {
      safariProfileID3 = [(BMAppMediaUsage *)self safariProfileID];
      safariProfileID4 = [v5 safariProfileID];
      v38 = [safariProfileID3 isEqual:safariProfileID4];

      if (!v38)
      {
LABEL_31:
        v13 = 0;
LABEL_32:

        goto LABEL_33;
      }
    }

    uniqueID = [(BMAppMediaUsage *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    if (uniqueID == uniqueID2)
    {
      v13 = 1;
    }

    else
    {
      uniqueID3 = [(BMAppMediaUsage *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v13 = [uniqueID3 isEqual:uniqueID4];
    }

    goto LABEL_32;
  }

  v13 = 0;
LABEL_33:

  return v13;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
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
  if ([(BMAppMediaUsage *)self hasStarting])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppMediaUsage starting](self, "starting")}];
  }

  else
  {
    v3 = 0;
  }

  bundleID = [(BMAppMediaUsage *)self bundleID];
  v5 = [(BMAppMediaUsage *)self URL];
  mediaURL = [(BMAppMediaUsage *)self mediaURL];
  if ([(BMAppMediaUsage *)self hasIsUsageTrusted])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppMediaUsage isUsageTrusted](self, "isUsageTrusted")}];
  }

  else
  {
    v29 = 0;
  }

  absoluteTimestamp = [(BMAppMediaUsage *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMAppMediaUsage *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  safariProfileID = [(BMAppMediaUsage *)self safariProfileID];
  uniqueID = [(BMAppMediaUsage *)self uniqueID];
  v31[0] = @"starting";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null;
  v32[0] = null;
  v31[1] = @"bundleID";
  null2 = bundleID;
  if (!bundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null2;
  v32[1] = null2;
  v31[2] = @"URL";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null3;
  v32[2] = null3;
  v31[3] = @"mediaURL";
  null4 = mediaURL;
  if (!mediaURL)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v32[3] = null4;
  v31[4] = @"isUsageTrusted";
  null5 = v29;
  if (!v29)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = bundleID;
  v32[4] = null5;
  v31[5] = @"absoluteTimestamp";
  null6 = v9;
  if (!v9)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v5;
  v32[5] = null6;
  v31[6] = @"safariProfileID";
  null7 = safariProfileID;
  if (!safariProfileID)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = null7;
  v31[7] = @"uniqueID";
  null8 = uniqueID;
  if (!uniqueID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = null8;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:8];
  if (uniqueID)
  {
    if (safariProfileID)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (safariProfileID)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  if (!v9)
  {
  }

  if (!v29)
  {
  }

  if (mediaURL)
  {
    if (v18)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v18)
    {
LABEL_34:
      if (v27)
      {
        goto LABEL_35;
      }

LABEL_43:

      if (v28)
      {
        goto LABEL_36;
      }

      goto LABEL_44;
    }
  }

  if (!v27)
  {
    goto LABEL_43;
  }

LABEL_35:
  if (v28)
  {
    goto LABEL_36;
  }

LABEL_44:

LABEL_36:
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BMAppMediaUsage)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v90[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          goto LABEL_61;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v87 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v88 = v31;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v32 = [v29 initWithDomain:v30 code:2 userInfo:?];
        v10 = 0;
        error = 0;
        *errorCopy = v32;
        goto LABEL_60;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"URL"];
    v74 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        error = errorCopy;
        if (!errorCopy)
        {
          v31 = 0;
          goto LABEL_60;
        }

        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v85 = *MEMORY[0x1E696A578];
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"URL"];
        v86 = v72;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v35 = [v70 initWithDomain:v33 code:2 userInfo:v34];
        v31 = 0;
        error = 0;
        *errorCopy = v35;
        v13 = v34;
LABEL_59:

LABEL_60:
        goto LABEL_61;
      }

      v69 = v12;
    }

    else
    {
      v69 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"mediaURL"];
    v67 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      selfCopy = self;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        error = errorCopy;
        if (!errorCopy)
        {
          v72 = 0;
          v31 = v69;
          goto LABEL_59;
        }

        v73 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mediaURL"];
        v84 = v68;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v38 = v36;
        v39 = v37;
        v40 = [v73 initWithDomain:v38 code:2 userInfo:v37];
        v72 = 0;
        error = 0;
        v31 = v69;
        *errorCopy = v40;
        goto LABEL_58;
      }

      v15 = v9;
      v16 = v7;
      v72 = v13;
      selfCopy2 = selfCopy;
    }

    else
    {
      selfCopy2 = self;
      v15 = v9;
      v16 = v7;
      v72 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"isUsageTrusted"];
    v66 = v10;
    v63 = v13;
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v68 = 0;
          error = 0;
          v31 = v69;
          v39 = v17;
          v7 = v16;
          v9 = v15;
          self = selfCopy2;
          v8 = v67;
          goto LABEL_58;
        }

        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUsageTrusted"];
        v82 = v64;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v43 = [v41 initWithDomain:v42 code:2 userInfo:v18];
        v68 = 0;
        error = 0;
        *errorCopy = v43;
        v13 = v63;
        v39 = v17;
        v7 = v16;
        v9 = v15;
        self = selfCopy2;
        v8 = v67;
LABEL_57:

        v10 = v66;
        v31 = v69;
LABEL_58:

        goto LABEL_59;
      }

      v62 = v17;
      v68 = v17;
    }

    else
    {
      v62 = v17;
      v68 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
    v7 = v16;
    if (v18)
    {
      objc_opt_class();
      v9 = v15;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        self = selfCopy2;
        if (objc_opt_isKindOfClass())
        {
          v23 = MEMORY[0x1E695DF00];
          v24 = v18;
          v25 = [v23 alloc];
          [v24 doubleValue];
          v27 = v26;

          v28 = [v25 initWithTimeIntervalSince1970:v27];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v64 = [v44 dateFromString:v18];

            goto LABEL_46;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v64 = 0;
              error = 0;
              goto LABEL_56;
            }

            v56 = objc_alloc(MEMORY[0x1E696ABC0]);
            v57 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
            v80 = v47;
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            v58 = [v56 initWithDomain:v57 code:2 userInfo:v45];
            v64 = 0;
            error = 0;
            *errorCopy = v58;
LABEL_55:

LABEL_56:
            v8 = v67;
            v39 = v62;
            v13 = v63;
            goto LABEL_57;
          }

          v28 = v18;
        }

        v64 = v28;
LABEL_46:
        v45 = [dictionaryCopy objectForKeyedSubscript:@"safariProfileID"];
        errorCopy2 = self;
        if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v47 = 0;
              error = 0;
              goto LABEL_54;
            }

            v60 = objc_alloc(MEMORY[0x1E696ABC0]);
            v52 = *MEMORY[0x1E698F240];
            v77 = *MEMORY[0x1E696A578];
            v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"safariProfileID"];
            v78 = v49;
            v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v53 = [v60 initWithDomain:v52 code:2 userInfo:v48];
            v47 = 0;
            error = 0;
            *errorCopy = v53;
            goto LABEL_53;
          }

          v47 = v45;
        }

        else
        {
          v47 = 0;
        }

        v48 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
        if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy)
            {
              v61 = objc_alloc(MEMORY[0x1E696ABC0]);
              v59 = *MEMORY[0x1E698F240];
              v75 = *MEMORY[0x1E696A578];
              v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
              v76 = v54;
              v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
              *errorCopy = [v61 initWithDomain:v59 code:2 userInfo:v55];
            }

            v49 = 0;
            error = 0;
            goto LABEL_53;
          }

          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        error = [(BMAppMediaUsage *)errorCopy2 initWithStarting:v67 bundleID:v66 URL:v69 mediaURL:v72 isUsageTrusted:v68 absoluteTimestamp:v64 safariProfileID:v47 uniqueID:v49];
        errorCopy2 = error;
LABEL_53:

LABEL_54:
        self = errorCopy2;
        goto LABEL_55;
      }

      v64 = 0;
    }

    else
    {
      v64 = 0;
      v9 = v15;
    }

    self = selfCopy2;
    goto LABEL_46;
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
    goto LABEL_62;
  }

  errorCopy3 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v89 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
  v90[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
  v22 = [v20 initWithDomain:v21 code:2 userInfo:v9];
  v8 = 0;
  error = 0;
  *errorCopy3 = v22;
LABEL_61:

LABEL_62:
  v50 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppMediaUsage *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_URL)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_mediaURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_hasIsUsageTrusted)
  {
    isUsageTrusted = self->_isUsageTrusted;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_safariProfileID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMAppMediaUsage;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_68;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_66;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v40) & 0x7F) << v7;
        if ((LOBYTE(v40) & 0x80) == 0)
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
        goto LABEL_66;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        break;
      }

      if (v15 > 6)
      {
        if (v15 == 7)
        {
          v16 = PBReaderReadString();
          v17 = 64;
        }

        else
        {
          if (v15 != 8)
          {
LABEL_56:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_67;
            }

            goto LABEL_65;
          }

          v16 = PBReaderReadString();
          v17 = 72;
        }

LABEL_55:
        v33 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        goto LABEL_65;
      }

      if (v15 == 5)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v5->_hasIsUsageTrusted = 1;
        while (1)
        {
          LOBYTE(v40) = 0;
          v30 = [fromCopy position] + 1;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v29 |= (LOBYTE(v40) & 0x7F) << v27;
          if ((LOBYTE(v40) & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v13 = v28++ >= 9;
          if (v13)
          {
            LOBYTE(v26) = 0;
            goto LABEL_61;
          }
        }

        v26 = (v29 != 0) & ~[fromCopy hasError];
LABEL_61:
        v34 = 34;
        goto LABEL_62;
      }

      if (v15 != 6)
      {
        goto LABEL_56;
      }

      v5->_hasRaw_absoluteTimestamp = 1;
      v40 = 0.0;
      v18 = [fromCopy position] + 8;
      if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
      {
        data3 = [fromCopy data];
        [data3 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v5->_raw_absoluteTimestamp = v40;
LABEL_65:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_66;
      }
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = PBReaderReadString();
        v17 = 48;
      }

      else
      {
        if (v15 != 4)
        {
          goto LABEL_56;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }
    }

    else
    {
      if (v15 == 1)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasStarting = 1;
        while (1)
        {
          LOBYTE(v40) = 0;
          v23 = [fromCopy position] + 1;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v22 |= (LOBYTE(v40) & 0x7F) << v20;
          if ((LOBYTE(v40) & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            LOBYTE(v26) = 0;
            goto LABEL_59;
          }
        }

        v26 = (v22 != 0) & ~[fromCopy hasError];
LABEL_59:
        v34 = 32;
LABEL_62:
        *(&v5->super.super.isa + v34) = v26;
        goto LABEL_65;
      }

      if (v15 != 2)
      {
        goto LABEL_56;
      }

      v16 = PBReaderReadString();
      v17 = 40;
    }

    goto LABEL_55;
  }

LABEL_66:
  if ([fromCopy hasError])
  {
LABEL_67:
    v37 = 0;
  }

  else
  {
LABEL_68:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppMediaUsage starting](self, "starting")}];
  bundleID = [(BMAppMediaUsage *)self bundleID];
  v6 = [(BMAppMediaUsage *)self URL];
  mediaURL = [(BMAppMediaUsage *)self mediaURL];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppMediaUsage isUsageTrusted](self, "isUsageTrusted")}];
  absoluteTimestamp = [(BMAppMediaUsage *)self absoluteTimestamp];
  safariProfileID = [(BMAppMediaUsage *)self safariProfileID];
  uniqueID = [(BMAppMediaUsage *)self uniqueID];
  v12 = [v3 initWithFormat:@"BMAppMediaUsage with starting: %@, bundleID: %@, URL: %@, mediaURL: %@, isUsageTrusted: %@, absoluteTimestamp: %@, safariProfileID: %@, uniqueID: %@", v4, bundleID, v6, mediaURL, v8, absoluteTimestamp, safariProfileID, uniqueID];

  return v12;
}

- (BMAppMediaUsage)initWithStarting:(id)starting bundleID:(id)d URL:(id)l mediaURL:(id)rL isUsageTrusted:(id)trusted absoluteTimestamp:(id)timestamp safariProfileID:(id)iD uniqueID:(id)self0
{
  startingCopy = starting;
  dCopy = d;
  lCopy = l;
  rLCopy = rL;
  trustedCopy = trusted;
  timestampCopy = timestamp;
  iDCopy = iD;
  uniqueIDCopy = uniqueID;
  v27.receiver = self;
  v27.super_class = BMAppMediaUsage;
  v20 = [(BMEventBase *)&v27 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (startingCopy)
    {
      v20->_hasStarting = 1;
      v20->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v20->_hasStarting = 0;
      v20->_starting = 0;
    }

    objc_storeStrong(&v20->_bundleID, d);
    objc_storeStrong(&v20->_URL, l);
    objc_storeStrong(&v20->_mediaURL, rL);
    if (trustedCopy)
    {
      v20->_hasIsUsageTrusted = 1;
      v20->_isUsageTrusted = [trustedCopy BOOLValue];
    }

    else
    {
      v20->_hasIsUsageTrusted = 0;
      v20->_isUsageTrusted = 0;
    }

    if (timestampCopy)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v21;
    objc_storeStrong(&v20->_safariProfileID, iD);
    objc_storeStrong(&v20->_uniqueID, uniqueID);
  }

  return v20;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:1 type:12 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"URL" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaURL" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUsageTrusted" number:5 type:12 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:6 type:0 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"safariProfileID" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMAppMediaUsage alloc] initByReadFrom:v6];
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