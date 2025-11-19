@interface BMSiriUI
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriUI)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriUI)initWithSessionID:(id)a3 uuid:(id)a4 viewMode:(id)a5 dismissalReason:(id)a6 starting:(id)a7 absoluteTimestamp:(id)a8 turnID:(id)a9 carplayPPID:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriUI

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uuid" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewMode" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dismissalReason" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:1];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"turnID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"carplayPPID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
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

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriUI *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriUI *)self sessionID];
    v7 = [v5 sessionID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriUI *)self sessionID];
      v10 = [v5 sessionID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    v13 = [(BMSiriUI *)self uuid];
    v14 = [v5 uuid];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriUI *)self uuid];
      v17 = [v5 uuid];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    v19 = [(BMSiriUI *)self viewMode];
    v20 = [v5 viewMode];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriUI *)self viewMode];
      v23 = [v5 viewMode];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    v25 = [(BMSiriUI *)self dismissalReason];
    v26 = [v5 dismissalReason];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSiriUI *)self dismissalReason];
      v29 = [v5 dismissalReason];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_30;
      }
    }

    if (-[BMSiriUI hasStarting](self, "hasStarting") || [v5 hasStarting])
    {
      if (![(BMSiriUI *)self hasStarting])
      {
        goto LABEL_30;
      }

      if (![v5 hasStarting])
      {
        goto LABEL_30;
      }

      v31 = [(BMSiriUI *)self starting];
      if (v31 != [v5 starting])
      {
        goto LABEL_30;
      }
    }

    v32 = [(BMSiriUI *)self absoluteTimestamp];
    v33 = [v5 absoluteTimestamp];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(BMSiriUI *)self absoluteTimestamp];
      v36 = [v5 absoluteTimestamp];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
        goto LABEL_30;
      }
    }

    v38 = [(BMSiriUI *)self turnID];
    v39 = [v5 turnID];
    v40 = v39;
    if (v38 == v39)
    {
    }

    else
    {
      v41 = [(BMSiriUI *)self turnID];
      v42 = [v5 turnID];
      v43 = [v41 isEqual:v42];

      if (!v43)
      {
LABEL_30:
        v12 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    v45 = [(BMSiriUI *)self carplayPPID];
    v46 = [v5 carplayPPID];
    if (v45 == v46)
    {
      v12 = 1;
    }

    else
    {
      v47 = [(BMSiriUI *)self carplayPPID];
      v48 = [v5 carplayPPID];
      v12 = [v47 isEqual:v48];
    }

    goto LABEL_31;
  }

  v12 = 0;
LABEL_32:

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
  v32[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriUI *)self sessionID];
  v4 = [(BMSiriUI *)self uuid];
  v5 = [(BMSiriUI *)self viewMode];
  v30 = [(BMSiriUI *)self dismissalReason];
  if ([(BMSiriUI *)self hasStarting])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriUI starting](self, "starting")}];
  }

  else
  {
    v29 = 0;
  }

  v6 = [(BMSiriUI *)self absoluteTimestamp];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMSiriUI *)self absoluteTimestamp];
    [v8 timeIntervalSinceReferenceDate];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMSiriUI *)self turnID];
  v11 = [(BMSiriUI *)self carplayPPID];
  v31[0] = @"sessionID";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v12;
  v32[0] = v12;
  v31[1] = @"uuid";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v13;
  v32[1] = v13;
  v31[2] = @"viewMode";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v14;
  v32[2] = v14;
  v31[3] = @"dismissalReason";
  v15 = v30;
  if (!v30)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v32[3] = v15;
  v31[4] = @"starting";
  v16 = v29;
  if (!v29)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v32[4] = v16;
  v31[5] = @"absoluteTimestamp";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v5;
  v32[5] = v17;
  v31[6] = @"turnID";
  v19 = v10;
  if (!v10)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = v19;
  v31[7] = @"carplayPPID";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:8];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_25;
    }
  }

LABEL_25:
  if (!v9)
  {
  }

  if (!v29)
  {
  }

  if (v30)
  {
    if (v18)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (v18)
    {
LABEL_31:
      if (v27)
      {
        goto LABEL_32;
      }

LABEL_40:

      if (v28)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    }
  }

  if (!v27)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (v28)
  {
    goto LABEL_33;
  }

LABEL_41:

LABEL_33:
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BMSiriUI)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v90[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"sessionID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"uuid"];
    v71 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          goto LABEL_61;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v87 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uuid"];
        v88 = v31;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        v32 = [v29 initWithDomain:v30 code:2 userInfo:?];
        v10 = 0;
        a4 = 0;
        *v71 = v32;
        goto LABEL_60;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"viewMode"];
    v74 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        a4 = v71;
        if (!v71)
        {
          v31 = 0;
          goto LABEL_60;
        }

        v70 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v85 = *MEMORY[0x1E696A578];
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"viewMode"];
        v86 = v72;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v35 = [v70 initWithDomain:v33 code:2 userInfo:v34];
        v31 = 0;
        a4 = 0;
        *v71 = v35;
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

    v13 = [v6 objectForKeyedSubscript:@"dismissalReason"];
    v67 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v65 = self;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        a4 = v71;
        if (!v71)
        {
          v72 = 0;
          v31 = v69;
          goto LABEL_59;
        }

        v73 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"dismissalReason"];
        v84 = v68;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v38 = v36;
        v39 = v37;
        v40 = [v73 initWithDomain:v38 code:2 userInfo:v37];
        v72 = 0;
        a4 = 0;
        v31 = v69;
        *v71 = v40;
        goto LABEL_58;
      }

      v15 = v9;
      v16 = v7;
      v72 = v13;
      v14 = v65;
    }

    else
    {
      v14 = self;
      v15 = v9;
      v16 = v7;
      v72 = 0;
    }

    v17 = [v6 objectForKeyedSubscript:@"starting"];
    v66 = v10;
    v63 = v13;
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v71)
        {
          v68 = 0;
          a4 = 0;
          v31 = v69;
          v39 = v17;
          v7 = v16;
          v9 = v15;
          self = v14;
          v8 = v67;
          goto LABEL_58;
        }

        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
        v82 = v64;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v43 = [v41 initWithDomain:v42 code:2 userInfo:v18];
        v68 = 0;
        a4 = 0;
        *v71 = v43;
        v13 = v63;
        v39 = v17;
        v7 = v16;
        v9 = v15;
        self = v14;
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

    v18 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
    v7 = v16;
    if (v18)
    {
      objc_opt_class();
      v9 = v15;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        self = v14;
        if (objc_opt_isKindOfClass())
        {
          v23 = MEMORY[0x1E695DF00];
          v24 = v18;
          v25 = [v23 alloc];
          [v24 doubleValue];
          v27 = v26;

          v28 = [v25 initWithTimeIntervalSinceReferenceDate:v27];
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
            if (!v71)
            {
              v64 = 0;
              a4 = 0;
              goto LABEL_56;
            }

            v56 = objc_alloc(MEMORY[0x1E696ABC0]);
            v57 = *MEMORY[0x1E698F240];
            v79 = *MEMORY[0x1E696A578];
            v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
            v80 = v47;
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
            v58 = [v56 initWithDomain:v57 code:2 userInfo:v45];
            v64 = 0;
            a4 = 0;
            *v71 = v58;
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
        v45 = [v6 objectForKeyedSubscript:@"turnID"];
        v46 = self;
        if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v71)
            {
              v47 = 0;
              a4 = 0;
              goto LABEL_54;
            }

            v60 = objc_alloc(MEMORY[0x1E696ABC0]);
            v52 = *MEMORY[0x1E698F240];
            v77 = *MEMORY[0x1E696A578];
            v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"turnID"];
            v78 = v49;
            v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v53 = [v60 initWithDomain:v52 code:2 userInfo:v48];
            v47 = 0;
            a4 = 0;
            *v71 = v53;
            goto LABEL_53;
          }

          v47 = v45;
        }

        else
        {
          v47 = 0;
        }

        v48 = [v6 objectForKeyedSubscript:@"carplayPPID"];
        if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v71)
            {
              v61 = objc_alloc(MEMORY[0x1E696ABC0]);
              v59 = *MEMORY[0x1E698F240];
              v75 = *MEMORY[0x1E696A578];
              v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"carplayPPID"];
              v76 = v54;
              v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
              *v71 = [v61 initWithDomain:v59 code:2 userInfo:v55];
            }

            v49 = 0;
            a4 = 0;
            goto LABEL_53;
          }

          v49 = v48;
        }

        else
        {
          v49 = 0;
        }

        a4 = [(BMSiriUI *)v46 initWithSessionID:v67 uuid:v66 viewMode:v69 dismissalReason:v72 starting:v68 absoluteTimestamp:v64 turnID:v47 carplayPPID:v49];
        v46 = a4;
LABEL_53:

LABEL_54:
        self = v46;
        goto LABEL_55;
      }

      v64 = 0;
    }

    else
    {
      v64 = 0;
      v9 = v15;
    }

    self = v14;
    goto LABEL_46;
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
    goto LABEL_62;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v89 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionID"];
  v90[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
  v22 = [v20 initWithDomain:v21 code:2 userInfo:v9];
  v8 = 0;
  a4 = 0;
  *v19 = v22;
LABEL_61:

LABEL_62:
  v50 = *MEMORY[0x1E69E9840];
  return a4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_sessionID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_viewMode)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_dismissalReason)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasStarting)
  {
    starting = self->_starting;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_turnID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_carplayPPID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMSiriUI;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_58;
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
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v16 = PBReaderReadString();
            v17 = 72;
            goto LABEL_47;
          }

          if (v15 == 8)
          {
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_47;
          }
        }

        else
        {
          if (v15 == 5)
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v5->_hasStarting = 1;
            while (1)
            {
              LOBYTE(v33) = 0;
              v23 = [v4 position] + 1;
              if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
              {
                v25 = [v4 data];
                [v25 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v22 |= (LOBYTE(v33) & 0x7F) << v20;
              if ((LOBYTE(v33) & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v13 = v21++ >= 9;
              if (v13)
              {
                LOBYTE(v26) = 0;
                goto LABEL_53;
              }
            }

            v26 = (v22 != 0) & ~[v4 hasError];
LABEL_53:
            v5->_starting = v26;
            goto LABEL_48;
          }

          if (v15 == 6)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v33 = 0.0;
            v18 = [v4 position] + 8;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
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
            goto LABEL_48;
          }
        }
      }

      else if (v15 > 2)
      {
        if (v15 == 3)
        {
          v16 = PBReaderReadString();
          v17 = 56;
          goto LABEL_47;
        }

        if (v15 == 4)
        {
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_47;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_47;
        }

        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 48;
LABEL_47:
          v27 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_48;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_57;
      }

LABEL_48:
      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_57:
    v30 = 0;
  }

  else
  {
LABEL_58:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriUI *)self sessionID];
  v5 = [(BMSiriUI *)self uuid];
  v6 = [(BMSiriUI *)self viewMode];
  v7 = [(BMSiriUI *)self dismissalReason];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriUI starting](self, "starting")}];
  v9 = [(BMSiriUI *)self absoluteTimestamp];
  v10 = [(BMSiriUI *)self turnID];
  v11 = [(BMSiriUI *)self carplayPPID];
  v12 = [v3 initWithFormat:@"BMSiriUI with sessionID: %@, uuid: %@, viewMode: %@, dismissalReason: %@, starting: %@, absoluteTimestamp: %@, turnID: %@, carplayPPID: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMSiriUI)initWithSessionID:(id)a3 uuid:(id)a4 viewMode:(id)a5 dismissalReason:(id)a6 starting:(id)a7 absoluteTimestamp:(id)a8 turnID:(id)a9 carplayPPID:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v17 = a7;
  v18 = a8;
  v23 = a9;
  v19 = a10;
  v28.receiver = self;
  v28.super_class = BMSiriUI;
  v20 = [(BMEventBase *)&v28 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_sessionID, a3);
    objc_storeStrong(&v20->_uuid, a4);
    objc_storeStrong(&v20->_viewMode, a5);
    objc_storeStrong(&v20->_dismissalReason, a6);
    if (v17)
    {
      v20->_hasStarting = 1;
      v20->_starting = [v17 BOOLValue];
    }

    else
    {
      v20->_hasStarting = 0;
      v20->_starting = 0;
    }

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
    objc_storeStrong(&v20->_turnID, a9);
    objc_storeStrong(&v20->_carplayPPID, a10);
  }

  return v20;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionID" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uuid" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewMode" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dismissalReason" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:5 type:12 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:6 type:0 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"turnID" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"carplayPPID" number:8 type:13 subMessageClass:0];
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

    v8 = [[BMSiriUI alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end