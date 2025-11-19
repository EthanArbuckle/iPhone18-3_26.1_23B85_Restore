@interface BMAppClipInFocus
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppClipInFocus)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAppClipInFocus)initWithURLHash:(id)a3 clipBundleID:(id)a4 appBundleID:(id)a5 webAppBundleID:(id)a6 launchReason:(id)a7 fullURL:(id)a8 referrerURL:(id)a9 referrerBundleID:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppClipInFocus *)self URLHash];
    v7 = [v5 URLHash];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppClipInFocus *)self URLHash];
      v10 = [v5 URLHash];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    v13 = [(BMAppClipInFocus *)self clipBundleID];
    v14 = [v5 clipBundleID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppClipInFocus *)self clipBundleID];
      v17 = [v5 clipBundleID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = [(BMAppClipInFocus *)self appBundleID];
    v20 = [v5 appBundleID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMAppClipInFocus *)self appBundleID];
      v23 = [v5 appBundleID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    v25 = [(BMAppClipInFocus *)self webAppBundleID];
    v26 = [v5 webAppBundleID];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMAppClipInFocus *)self webAppBundleID];
      v29 = [v5 webAppBundleID];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    v31 = [(BMAppClipInFocus *)self launchReason];
    v32 = [v5 launchReason];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMAppClipInFocus *)self launchReason];
      v35 = [v5 launchReason];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    v37 = [(BMAppClipInFocus *)self fullURL];
    v38 = [v5 fullURL];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMAppClipInFocus *)self fullURL];
      v41 = [v5 fullURL];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    v43 = [(BMAppClipInFocus *)self referrerURL];
    v44 = [v5 referrerURL];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMAppClipInFocus *)self referrerURL];
      v47 = [v5 referrerURL];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
LABEL_29:
        v12 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v50 = [(BMAppClipInFocus *)self referrerBundleID];
    v51 = [v5 referrerBundleID];
    if (v50 == v51)
    {
      v12 = 1;
    }

    else
    {
      v52 = [(BMAppClipInFocus *)self referrerBundleID];
      v53 = [v5 referrerBundleID];
      v12 = [v52 isEqual:v53];
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
  v3 = [(BMAppClipInFocus *)self URLHash];
  v4 = [(BMAppClipInFocus *)self clipBundleID];
  v5 = [(BMAppClipInFocus *)self appBundleID];
  v6 = [(BMAppClipInFocus *)self webAppBundleID];
  v7 = [(BMAppClipInFocus *)self launchReason];
  v8 = [(BMAppClipInFocus *)self fullURL];
  v9 = [(BMAppClipInFocus *)self referrerURL];
  v10 = [(BMAppClipInFocus *)self referrerBundleID];
  v28[0] = @"URLHash";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v11;
  v29[0] = v11;
  v28[1] = @"clipBundleID";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v12;
  v29[1] = v12;
  v28[2] = @"appBundleID";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v3;
  v21 = v13;
  v29[2] = v13;
  v28[3] = @"webAppBundleID";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v4;
  v29[3] = v14;
  v28[4] = @"launchReason";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v5;
  v29[4] = v15;
  v28[5] = @"fullURL";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v16;
  v28[6] = @"referrerURL";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v17;
  v28[7] = @"referrerBundleID";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = v18;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_31:

    if (v8)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (v8)
  {
    goto LABEL_20;
  }

LABEL_32:

LABEL_20:
  if (!v7)
  {
  }

  if (!v6)
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

- (BMAppClipInFocus)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v87[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"URLHash"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"clipBundleID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v25 = 0;
          goto LABEL_45;
        }

        v32 = a4;
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
        a4 = 0;
        *v32 = v37;
        goto LABEL_44;
      }

      v71 = v9;
    }

    else
    {
      v71 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"appBundleID"];
    v69 = v7;
    v67 = v10;
    v62 = a4;
    if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        a4 = 0;
        *v62 = v40;
        goto LABEL_42;
      }

      v12 = v8;
      v13 = v9;
      v14 = self;
      v15 = v11;
    }

    else
    {
      v12 = v8;
      v13 = v9;
      v14 = self;
      v15 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"webAppBundleID"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v70 = 0;
          v25 = v71;
          v24 = v16;
          self = v14;
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
        a4 = 0;
        *v62 = v45;
        self = v14;
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

    v17 = [v6 objectForKeyedSubscript:@"launchReason"];
    self = v14;
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
      v18 = [v6 objectForKeyedSubscript:@"fullURL"];
      v63 = v15;
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v7 = v69;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v64 = 0;
            a4 = 0;
            goto LABEL_39;
          }

          v20 = self;
          v65 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fullURL"];
          v77 = v21;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v53 = [v65 initWithDomain:v52 code:2 userInfo:v19];
          v64 = 0;
          a4 = 0;
          *v62 = v53;
LABEL_38:

          self = v20;
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

      v19 = [v6 objectForKeyedSubscript:@"referrerURL"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v20 = self;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v21 = 0;
            a4 = 0;
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
          a4 = 0;
          *v62 = v55;
          goto LABEL_37;
        }

        v21 = v19;
      }

      else
      {
        v20 = self;
        v21 = 0;
      }

      v22 = [v6 objectForKeyedSubscript:@"referrerBundleID"];
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v60 = objc_alloc(MEMORY[0x1E696ABC0]);
            v58 = *MEMORY[0x1E698F240];
            v72 = *MEMORY[0x1E696A578];
            v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"referrerBundleID"];
            v73 = v56;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            *v62 = [v60 initWithDomain:v58 code:2 userInfo:v57];
          }

          v23 = 0;
          a4 = 0;
          goto LABEL_37;
        }

        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      a4 = [(BMAppClipInFocus *)v20 initWithURLHash:v66 clipBundleID:v71 appBundleID:v63 webAppBundleID:v70 launchReason:v68 fullURL:v64 referrerURL:v21 referrerBundleID:v23];
      v20 = a4;
LABEL_37:

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = v17;
      goto LABEL_27;
    }

    if (a4)
    {
      v46 = a4;
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
      a4 = 0;
      *v46 = v51;
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

  if (!a4)
  {
    v8 = 0;
    goto LABEL_46;
  }

  v28 = a4;
  v29 = objc_alloc(MEMORY[0x1E696ABC0]);
  v30 = *MEMORY[0x1E698F240];
  v86 = *MEMORY[0x1E696A578];
  v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"URLHash"];
  v87[0] = v25;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
  v31 = [v29 initWithDomain:v30 code:2 userInfo:v9];
  v8 = 0;
  a4 = 0;
  *v28 = v31;
LABEL_45:

LABEL_46:
  v26 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppClipInFocus *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_URLHash)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_clipBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_appBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_webAppBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_launchReason)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_fullURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_referrerURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_referrerBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMAppClipInFocus;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMAppClipInFocus *)self URLHash];
  v5 = [(BMAppClipInFocus *)self clipBundleID];
  v6 = [(BMAppClipInFocus *)self appBundleID];
  v7 = [(BMAppClipInFocus *)self webAppBundleID];
  v8 = [(BMAppClipInFocus *)self launchReason];
  v9 = [(BMAppClipInFocus *)self fullURL];
  v10 = [(BMAppClipInFocus *)self referrerURL];
  v11 = [(BMAppClipInFocus *)self referrerBundleID];
  v12 = [v3 initWithFormat:@"BMAppClipInFocus with URLHash: %@, clipBundleID: %@, appBundleID: %@, webAppBundleID: %@, launchReason: %@, fullURL: %@, referrerURL: %@, referrerBundleID: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMAppClipInFocus)initWithURLHash:(id)a3 clipBundleID:(id)a4 appBundleID:(id)a5 webAppBundleID:(id)a6 launchReason:(id)a7 fullURL:(id)a8 referrerURL:(id)a9 referrerBundleID:(id)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a8;
  v20 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = BMAppClipInFocus;
  v18 = [(BMEventBase *)&v27 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_URLHash, a3);
    objc_storeStrong(&v18->_clipBundleID, a4);
    objc_storeStrong(&v18->_appBundleID, a5);
    objc_storeStrong(&v18->_webAppBundleID, a6);
    objc_storeStrong(&v18->_launchReason, a7);
    objc_storeStrong(&v18->_fullURL, a8);
    objc_storeStrong(&v18->_referrerURL, a9);
    objc_storeStrong(&v18->_referrerBundleID, a10);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

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