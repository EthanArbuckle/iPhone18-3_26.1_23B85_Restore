@interface BMLighthouseTaskStatus
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseTaskStatus)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseTaskStatus)initWithVersion:(id)a3 taskName:(id)a4 taskState:(id)a5 taskSource:(id)a6 pushMetadata:(id)a7 pullMetadata:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseTaskStatus

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskState" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskSource" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pushMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_62302];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pullMetadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_185_62303];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMLighthouseTaskStatus hasVersion](self, "hasVersion") || [v5 hasVersion])
    {
      if (![(BMLighthouseTaskStatus *)self hasVersion])
      {
        goto LABEL_22;
      }

      if (![v5 hasVersion])
      {
        goto LABEL_22;
      }

      v6 = [(BMLighthouseTaskStatus *)self version];
      if (v6 != [v5 version])
      {
        goto LABEL_22;
      }
    }

    v7 = [(BMLighthouseTaskStatus *)self taskName];
    v8 = [v5 taskName];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [(BMLighthouseTaskStatus *)self taskName];
      v11 = [v5 taskName];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    v14 = [(BMLighthouseTaskStatus *)self taskState];
    v15 = [v5 taskState];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMLighthouseTaskStatus *)self taskState];
      v18 = [v5 taskState];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_22;
      }
    }

    v20 = [(BMLighthouseTaskStatus *)self taskSource];
    v21 = [v5 taskSource];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMLighthouseTaskStatus *)self taskSource];
      v24 = [v5 taskSource];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_22;
      }
    }

    v26 = [(BMLighthouseTaskStatus *)self pushMetadata];
    v27 = [v5 pushMetadata];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMLighthouseTaskStatus *)self pushMetadata];
      v30 = [v5 pushMetadata];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
LABEL_22:
        v13 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v33 = [(BMLighthouseTaskStatus *)self pullMetadata];
    v34 = [v5 pullMetadata];
    if (v33 == v34)
    {
      v13 = 1;
    }

    else
    {
      v35 = [(BMLighthouseTaskStatus *)self pullMetadata];
      v36 = [v5 pullMetadata];
      v13 = [v35 isEqual:v36];
    }

    goto LABEL_23;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (id)jsonDictionary
{
  v25[6] = *MEMORY[0x1E69E9840];
  if ([(BMLighthouseTaskStatus *)self hasVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskStatus version](self, "version")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(BMLighthouseTaskStatus *)self taskName];
  v5 = [(BMLighthouseTaskStatus *)self taskState];
  v6 = [(BMLighthouseTaskStatus *)self taskSource];
  v7 = [(BMLighthouseTaskStatus *)self pushMetadata];
  v8 = [v7 jsonDictionary];

  v9 = [(BMLighthouseTaskStatus *)self pullMetadata];
  v10 = [v9 jsonDictionary];

  v24[0] = @"version";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v23 = v3;
  v25[0] = v11;
  v24[1] = @"taskName";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v25[1] = v12;
  v24[2] = @"taskState";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = v13;
  v24[3] = @"taskSource";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v14;
  v24[4] = @"pushMetadata";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v15;
  v24[5] = @"pullMetadata";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (v10)
  {
    if (v8)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v8)
    {
LABEL_18:
      if (v6)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (v6)
  {
LABEL_19:
    if (v5)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (v4)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v4)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v23)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMLighthouseTaskStatus)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v69[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"version"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"taskName"];
    v53 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v22 = 0;
          v16 = 0;
          goto LABEL_59;
        }

        v24 = v8;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = a4;
        v27 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskName"];
        v67 = v28;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v29 = v25;
        v8 = v24;
        v30 = v27;
        a4 = v28;
        v22 = 0;
        v16 = 0;
        *v26 = [v29 initWithDomain:v30 code:2 userInfo:v10];
        goto LABEL_58;
      }

      v54 = v9;
    }

    else
    {
      v54 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"taskState"];
    v55 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v16 = 0;
          goto LABEL_57;
        }

        v33 = v8;
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = a4;
        v36 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskState"];
        v65 = v52;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v37 = v34;
        v8 = v33;
        v38 = [v37 initWithDomain:v36 code:2 userInfo:v11];
        a4 = 0;
        v16 = 0;
        *v35 = v38;
LABEL_56:

        self = v55;
LABEL_57:
        v22 = v54;
LABEL_58:

        v7 = v53;
        goto LABEL_59;
      }

      v50 = v10;
    }

    else
    {
      v50 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"taskSource"];
    v51 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v52 = 0;
          v16 = 0;
          a4 = v50;
          goto LABEL_56;
        }

        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v62 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"taskSource"];
        v63 = v17;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v41 = v39;
        v8 = v51;
        v42 = [v41 initWithDomain:v40 code:2 userInfo:v13];
        v52 = 0;
        v16 = 0;
        *a4 = v42;
        goto LABEL_46;
      }

      v52 = v11;
    }

    else
    {
      v52 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"pushMetadata"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
LABEL_16:
      v14 = [v6 objectForKeyedSubscript:@"pullMetadata"];
      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v15 = 0;
LABEL_19:
        a4 = v50;
        v16 = [(BMLighthouseTaskStatus *)v55 initWithVersion:v51 taskName:v54 taskState:v50 taskSource:v52 pushMetadata:v13 pullMetadata:v15];
        v55 = v16;
LABEL_52:

LABEL_53:
        v17 = v12;
        v8 = v51;
        goto LABEL_54;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v14;
        v56 = 0;
        v15 = [[BMLighthouseTaskStatusPullMetadata alloc] initWithJSONDictionary:v31 error:&v56];
        v32 = v56;
        if (!v32)
        {

          goto LABEL_19;
        }

        if (a4)
        {
          v32 = v32;
          *a4 = v32;
        }
      }

      else
      {
        if (!a4)
        {
          v16 = 0;
          a4 = v50;
          goto LABEL_53;
        }

        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pullMetadata"];
        v59 = v15;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        *a4 = [v49 initWithDomain:v47 code:2 userInfo:v31];
      }

      v16 = 0;
      a4 = v50;
      goto LABEL_52;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v16 = 0;
        a4 = v50;
        goto LABEL_55;
      }

      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v60 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pushMetadata"];
      v61 = v13;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      *a4 = [v48 initWithDomain:v43 code:2 userInfo:v44];

      v16 = 0;
      v17 = v12;
      a4 = v50;
      v8 = v51;
LABEL_54:

      v12 = v17;
LABEL_55:

      goto LABEL_56;
    }

    v17 = v12;
    v57 = 0;
    v13 = [[BMLighthouseTaskStatusPushMetadata alloc] initWithJSONDictionary:v17 error:&v57];
    v18 = v57;
    if (!v18)
    {

      goto LABEL_16;
    }

    if (a4)
    {
      v18 = v18;
      *a4 = v18;
    }

    v16 = 0;
LABEL_46:
    a4 = v50;
    goto LABEL_54;
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
    v16 = 0;
    goto LABEL_60;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = a4;
  v21 = *MEMORY[0x1E698F240];
  v68 = *MEMORY[0x1E696A578];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
  v69[0] = v22;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
  v23 = [v19 initWithDomain:v21 code:2 userInfo:v9];
  v8 = 0;
  v16 = 0;
  *v20 = v23;
LABEL_59:

LABEL_60:
  v45 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseTaskStatus *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_hasVersion)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  if (self->_taskName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskState)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskSource)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pushMetadata)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseTaskStatusPushMetadata *)self->_pushMetadata writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_pullMetadata)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseTaskStatusPullMetadata *)self->_pullMetadata writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMLighthouseTaskStatus;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_54;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_52;
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

        v9 |= (v33 & 0x7F) << v7;
        if ((v33 & 0x80) == 0)
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
        goto LABEL_52;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      switch(v15)
      {
        case 4:
          v16 = PBReaderReadString();
          v17 = 48;
LABEL_42:
          v27 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_51;
        case 5:
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v18 = [[BMLighthouseTaskStatusPushMetadata alloc] initByReadFrom:v4];
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = 56;
          break;
        case 6:
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v18 = [[BMLighthouseTaskStatusPullMetadata alloc] initByReadFrom:v4];
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = 64;
          break;
        default:
LABEL_39:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_51;
      }

      v28 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

      PBReaderRecallMark();
LABEL_51:
      v29 = [v4 position];
      if (v29 >= [v4 length])
      {
        goto LABEL_52;
      }
    }

    switch(v15)
    {
      case 1:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasVersion = 1;
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

          v22 |= (v33 & 0x7F) << v20;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            v26 = 0;
            goto LABEL_50;
          }
        }

        if ([v4 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_50:
        v5->_version = v26;
        goto LABEL_51;
      case 2:
        v16 = PBReaderReadString();
        v17 = 32;
        break;
      case 3:
        v16 = PBReaderReadString();
        v17 = 40;
        break;
      default:
        goto LABEL_39;
    }

    goto LABEL_42;
  }

LABEL_52:
  if ([v4 hasError])
  {
LABEL_53:
    v30 = 0;
  }

  else
  {
LABEL_54:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseTaskStatus version](self, "version")}];
  v5 = [(BMLighthouseTaskStatus *)self taskName];
  v6 = [(BMLighthouseTaskStatus *)self taskState];
  v7 = [(BMLighthouseTaskStatus *)self taskSource];
  v8 = [(BMLighthouseTaskStatus *)self pushMetadata];
  v9 = [(BMLighthouseTaskStatus *)self pullMetadata];
  v10 = [v3 initWithFormat:@"BMLighthouseTaskStatus with version: %@, taskName: %@, taskState: %@, taskSource: %@, pushMetadata: %@, pullMetadata: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMLighthouseTaskStatus)initWithVersion:(id)a3 taskName:(id)a4 taskState:(id)a5 taskSource:(id)a6 pushMetadata:(id)a7 pullMetadata:(id)a8
{
  v14 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BMLighthouseTaskStatus;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v18->_hasVersion = 1;
      v19 = [v14 intValue];
    }

    else
    {
      v18->_hasVersion = 0;
      v19 = -1;
    }

    v18->_version = v19;
    objc_storeStrong(&v18->_taskName, a4);
    objc_storeStrong(&v18->_taskState, a5);
    objc_storeStrong(&v18->_taskSource, a6);
    objc_storeStrong(&v18->_pushMetadata, a7);
    objc_storeStrong(&v18->_pullMetadata, a8);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:1 type:2 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskName" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskState" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskSource" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pushMetadata" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pullMetadata" number:6 type:14 subMessageClass:objc_opt_class()];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __33__BMLighthouseTaskStatus_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 pullMetadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __33__BMLighthouseTaskStatus_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 pushMetadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMLighthouseTaskStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end