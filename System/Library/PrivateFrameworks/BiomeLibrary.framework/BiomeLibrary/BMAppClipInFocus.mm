@interface BMAppClipInFocus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppClipInFocus)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppClipInFocus)initWithURLHash:(id)hash clipBundleID:(id)d appBundleID:(id)iD webAppBundleID:(id)bundleID launchReason:(id)reason fullURL:(id)l referrerURL:(id)rL referrerBundleID:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppClipInFocus

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"URLHash" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clipBundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appBundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webAppBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"launchReason" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullURL" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"referrerURL" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"referrerBundleID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
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
    uRLHash = [(BMAppClipInFocus *)self URLHash];
    uRLHash2 = [v5 URLHash];
    v8 = uRLHash2;
    if (uRLHash == uRLHash2)
    {
    }

    else
    {
      uRLHash3 = [(BMAppClipInFocus *)self URLHash];
      uRLHash4 = [v5 URLHash];
      v11 = [uRLHash3 isEqual:uRLHash4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    clipBundleID = [(BMAppClipInFocus *)self clipBundleID];
    clipBundleID2 = [v5 clipBundleID];
    v15 = clipBundleID2;
    if (clipBundleID == clipBundleID2)
    {
    }

    else
    {
      clipBundleID3 = [(BMAppClipInFocus *)self clipBundleID];
      clipBundleID4 = [v5 clipBundleID];
      v18 = [clipBundleID3 isEqual:clipBundleID4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    appBundleID = [(BMAppClipInFocus *)self appBundleID];
    appBundleID2 = [v5 appBundleID];
    v21 = appBundleID2;
    if (appBundleID == appBundleID2)
    {
    }

    else
    {
      appBundleID3 = [(BMAppClipInFocus *)self appBundleID];
      appBundleID4 = [v5 appBundleID];
      v24 = [appBundleID3 isEqual:appBundleID4];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    webAppBundleID = [(BMAppClipInFocus *)self webAppBundleID];
    webAppBundleID2 = [v5 webAppBundleID];
    v27 = webAppBundleID2;
    if (webAppBundleID == webAppBundleID2)
    {
    }

    else
    {
      webAppBundleID3 = [(BMAppClipInFocus *)self webAppBundleID];
      webAppBundleID4 = [v5 webAppBundleID];
      v30 = [webAppBundleID3 isEqual:webAppBundleID4];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    launchReason = [(BMAppClipInFocus *)self launchReason];
    launchReason2 = [v5 launchReason];
    v33 = launchReason2;
    if (launchReason == launchReason2)
    {
    }

    else
    {
      launchReason3 = [(BMAppClipInFocus *)self launchReason];
      launchReason4 = [v5 launchReason];
      v36 = [launchReason3 isEqual:launchReason4];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    fullURL = [(BMAppClipInFocus *)self fullURL];
    fullURL2 = [v5 fullURL];
    v39 = fullURL2;
    if (fullURL == fullURL2)
    {
    }

    else
    {
      fullURL3 = [(BMAppClipInFocus *)self fullURL];
      fullURL4 = [v5 fullURL];
      v42 = [fullURL3 isEqual:fullURL4];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    referrerURL = [(BMAppClipInFocus *)self referrerURL];
    referrerURL2 = [v5 referrerURL];
    v45 = referrerURL2;
    if (referrerURL == referrerURL2)
    {
    }

    else
    {
      referrerURL3 = [(BMAppClipInFocus *)self referrerURL];
      referrerURL4 = [v5 referrerURL];
      v48 = [referrerURL3 isEqual:referrerURL4];

      if (!v48)
      {
LABEL_29:
        v12 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    referrerBundleID = [(BMAppClipInFocus *)self referrerBundleID];
    referrerBundleID2 = [v5 referrerBundleID];
    if (referrerBundleID == referrerBundleID2)
    {
      v12 = 1;
    }

    else
    {
      referrerBundleID3 = [(BMAppClipInFocus *)self referrerBundleID];
      referrerBundleID4 = [v5 referrerBundleID];
      v12 = [referrerBundleID3 isEqual:referrerBundleID4];
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (id)jsonDictionary
{
  v29[8] = *MEMORY[0x1E69E9840];
  uRLHash = [(BMAppClipInFocus *)self URLHash];
  clipBundleID = [(BMAppClipInFocus *)self clipBundleID];
  appBundleID = [(BMAppClipInFocus *)self appBundleID];
  webAppBundleID = [(BMAppClipInFocus *)self webAppBundleID];
  launchReason = [(BMAppClipInFocus *)self launchReason];
  fullURL = [(BMAppClipInFocus *)self fullURL];
  referrerURL = [(BMAppClipInFocus *)self referrerURL];
  referrerBundleID = [(BMAppClipInFocus *)self referrerBundleID];
  v28[0] = @"URLHash";
  null = uRLHash;
  if (!uRLHash)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v29[0] = null;
  v28[1] = @"clipBundleID";
  null2 = clipBundleID;
  if (!clipBundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null2;
  v29[1] = null2;
  v28[2] = @"appBundleID";
  null3 = appBundleID;
  if (!appBundleID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = uRLHash;
  v21 = null3;
  v29[2] = null3;
  v28[3] = @"webAppBundleID";
  null4 = webAppBundleID;
  if (!webAppBundleID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = clipBundleID;
  v29[3] = null4;
  v28[4] = @"launchReason";
  null5 = launchReason;
  if (!launchReason)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = appBundleID;
  v29[4] = null5;
  v28[5] = @"fullURL";
  null6 = fullURL;
  if (!fullURL)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v28[6] = @"referrerURL";
  null7 = referrerURL;
  if (!referrerURL)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null7;
  v28[7] = @"referrerBundleID";
  null8 = referrerBundleID;
  if (!referrerBundleID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = null8;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (referrerBundleID)
  {
    if (referrerURL)
    {
      goto LABEL_19;
    }

LABEL_31:

    if (fullURL)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  if (!referrerURL)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (fullURL)
  {
    goto LABEL_20;
  }

LABEL_32:

LABEL_20:
  if (!launchReason)
  {
  }

  if (!webAppBundleID)
  {
  }

  if (v25)
  {
    if (v26)
    {
      goto LABEL_26;
    }

LABEL_34:

    if (v27)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  if (!v26)
  {
    goto LABEL_34;
  }

LABEL_26:
  if (v27)
  {
    goto LABEL_27;
  }

LABEL_35:

LABEL_27:
  v19 = *MEMORY[0x1E69E9840];

  return v24;
}

- (BMAppClipInFocus)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v87[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"URLHash"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"clipBundleID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v25 = 0;
          goto LABEL_45;
        }

        errorCopy = error;
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v84 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clipBundleID"];
        v85 = v15;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v36 = v34;
        v11 = v35;
        v37 = [v33 initWithDomain:v36 code:2 userInfo:v35];
        v25 = 0;
        error = 0;
        *errorCopy = v37;
        goto LABEL_44;
      }

      v71 = v9;
    }

    else
    {
      v71 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appBundleID"];
    v69 = v7;
    v67 = v10;
    errorCopy2 = error;
    if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          v25 = v71;
          goto LABEL_44;
        }

        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appBundleID"];
        v83 = v70;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v40 = [v38 initWithDomain:v39 code:2 userInfo:v24];
        v15 = 0;
        error = 0;
        *errorCopy2 = v40;
        goto LABEL_42;
      }

      v12 = v8;
      v13 = v9;
      selfCopy2 = self;
      v15 = v11;
    }

    else
    {
      v12 = v8;
      v13 = v9;
      selfCopy2 = self;
      v15 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"webAppBundleID"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v70 = 0;
          v25 = v71;
          v24 = v16;
          self = selfCopy2;
          v9 = v13;
          v8 = v12;
          v7 = v69;
          goto LABEL_43;
        }

        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = v15;
        v43 = *MEMORY[0x1E698F240];
        v80 = *MEMORY[0x1E696A578];
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webAppBundleID"];
        v81 = v68;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v44 = v43;
        v15 = v42;
        v24 = v16;
        v45 = [v41 initWithDomain:v44 code:2 userInfo:v17];
        v70 = 0;
        error = 0;
        *errorCopy2 = v45;
        self = selfCopy2;
        v9 = v13;
        v8 = v12;
        goto LABEL_75;
      }

      v61 = v16;
      v70 = v16;
    }

    else
    {
      v61 = v16;
      v70 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"launchReason"];
    self = selfCopy2;
    v66 = v12;
    if (!v17)
    {
      v68 = 0;
      v9 = v13;
      goto LABEL_27;
    }

    objc_opt_class();
    v9 = v13;
    if (objc_opt_isKindOfClass())
    {
      v68 = 0;
LABEL_27:
      v18 = [dictionaryCopy objectForKeyedSubscript:@"fullURL"];
      v63 = v15;
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v7 = v69;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v64 = 0;
            error = 0;
            goto LABEL_39;
          }

          errorCopy3 = self;
          v65 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fullURL"];
          v77 = v21;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v53 = [v65 initWithDomain:v52 code:2 userInfo:v19];
          v64 = 0;
          error = 0;
          *errorCopy2 = v53;
LABEL_38:

          self = errorCopy3;
          v7 = v69;
LABEL_39:
          v15 = v63;
          v24 = v61;
LABEL_40:

          v8 = v66;
LABEL_41:

LABEL_42:
          v25 = v71;
LABEL_43:

          v11 = v67;
LABEL_44:

          goto LABEL_45;
        }

        v64 = v18;
      }

      else
      {
        v64 = 0;
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"referrerURL"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        errorCopy3 = self;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v21 = 0;
            error = 0;
            goto LABEL_38;
          }

          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v54 = *MEMORY[0x1E698F240];
          v74 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"referrerURL"];
          v75 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v55 = [v59 initWithDomain:v54 code:2 userInfo:v22];
          v21 = 0;
          error = 0;
          *errorCopy2 = v55;
          goto LABEL_37;
        }

        v21 = v19;
      }

      else
      {
        errorCopy3 = self;
        v21 = 0;
      }

      v22 = [dictionaryCopy objectForKeyedSubscript:@"referrerBundleID"];
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v60 = objc_alloc(MEMORY[0x1E696ABC0]);
            v58 = *MEMORY[0x1E698F240];
            v72 = *MEMORY[0x1E696A578];
            v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"referrerBundleID"];
            v73 = v56;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            *errorCopy2 = [v60 initWithDomain:v58 code:2 userInfo:v57];
          }

          v23 = 0;
          error = 0;
          goto LABEL_37;
        }

        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      error = [(BMAppClipInFocus *)errorCopy3 initWithURLHash:v66 clipBundleID:v71 appBundleID:v63 webAppBundleID:v70 launchReason:v68 fullURL:v64 referrerURL:v21 referrerBundleID:v23];
      errorCopy3 = error;
LABEL_37:

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = v17;
      goto LABEL_27;
    }

    if (error)
    {
      errorCopy4 = error;
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = v15;
      v49 = *MEMORY[0x1E698F240];
      v78 = *MEMORY[0x1E696A578];
      v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"launchReason"];
      v79 = v64;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v50 = v49;
      v15 = v48;
      v51 = [v47 initWithDomain:v50 code:2 userInfo:v18];
      v68 = 0;
      error = 0;
      *errorCopy4 = v51;
      v24 = v61;
      v7 = v69;
      goto LABEL_40;
    }

    v68 = 0;
    v8 = v12;
    v24 = v61;
LABEL_75:
    v7 = v69;
    goto LABEL_41;
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
    goto LABEL_46;
  }

  errorCopy5 = error;
  v29 = objc_alloc(MEMORY[0x1E696ABC0]);
  v30 = *MEMORY[0x1E698F240];
  v86 = *MEMORY[0x1E696A578];
  v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"URLHash"];
  v87[0] = v25;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
  v31 = [v29 initWithDomain:v30 code:2 userInfo:v9];
  v8 = 0;
  error = 0;
  *errorCopy5 = v31;
LABEL_45:

LABEL_46:
  v26 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppClipInFocus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_URLHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clipBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_appBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_webAppBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_launchReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_fullURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_referrerURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_referrerBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMAppClipInFocus;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = (v14 >> 3) - 1;
      if (v15 >= 8)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E9A440[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uRLHash = [(BMAppClipInFocus *)self URLHash];
  clipBundleID = [(BMAppClipInFocus *)self clipBundleID];
  appBundleID = [(BMAppClipInFocus *)self appBundleID];
  webAppBundleID = [(BMAppClipInFocus *)self webAppBundleID];
  launchReason = [(BMAppClipInFocus *)self launchReason];
  fullURL = [(BMAppClipInFocus *)self fullURL];
  referrerURL = [(BMAppClipInFocus *)self referrerURL];
  referrerBundleID = [(BMAppClipInFocus *)self referrerBundleID];
  v12 = [v3 initWithFormat:@"BMAppClipInFocus with URLHash: %@, clipBundleID: %@, appBundleID: %@, webAppBundleID: %@, launchReason: %@, fullURL: %@, referrerURL: %@, referrerBundleID: %@", uRLHash, clipBundleID, appBundleID, webAppBundleID, launchReason, fullURL, referrerURL, referrerBundleID];

  return v12;
}

- (BMAppClipInFocus)initWithURLHash:(id)hash clipBundleID:(id)d appBundleID:(id)iD webAppBundleID:(id)bundleID launchReason:(id)reason fullURL:(id)l referrerURL:(id)rL referrerBundleID:(id)self0
{
  hashCopy = hash;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  reasonCopy = reason;
  lCopy = l;
  rLCopy = rL;
  referrerBundleIDCopy = referrerBundleID;
  v27.receiver = self;
  v27.super_class = BMAppClipInFocus;
  v18 = [(BMEventBase *)&v27 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_URLHash, hash);
    objc_storeStrong(&v18->_clipBundleID, d);
    objc_storeStrong(&v18->_appBundleID, iD);
    objc_storeStrong(&v18->_webAppBundleID, bundleID);
    objc_storeStrong(&v18->_launchReason, reason);
    objc_storeStrong(&v18->_fullURL, l);
    objc_storeStrong(&v18->_referrerURL, rL);
    objc_storeStrong(&v18->_referrerBundleID, referrerBundleID);
  }

  return v18;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"URLHash" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clipBundleID" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appBundleID" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webAppBundleID" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"launchReason" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullURL" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"referrerURL" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"referrerBundleID" number:8 type:13 subMessageClass:0];
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

    v7 = [[BMAppClipInFocus alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[4] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end