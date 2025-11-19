@interface BMWritingToolsComposeAndAdjust
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWritingToolsComposeAndAdjust)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMWritingToolsComposeAndAdjust)initWithTimestamp:(id)a3 prompt:(id)a4 identifier:(id)a5 topic:(id)a6 userInterfaceLanguage:(id)a7 userSetRegionFormat:(id)a8 result:(int)a9 feature:(int)a10;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (NSUUID)identifier;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWritingToolsComposeAndAdjust

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prompt" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:6 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:3];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"topic" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInterfaceLanguage" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSetRegionFormat" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"result" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feature" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
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
    v6 = [(BMWritingToolsComposeAndAdjust *)self timestamp];
    v7 = [v5 timestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWritingToolsComposeAndAdjust *)self timestamp];
      v10 = [v5 timestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    v13 = [(BMWritingToolsComposeAndAdjust *)self prompt];
    v14 = [v5 prompt];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWritingToolsComposeAndAdjust *)self prompt];
      v17 = [v5 prompt];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = [(BMWritingToolsComposeAndAdjust *)self identifier];
    v20 = [v5 identifier];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWritingToolsComposeAndAdjust *)self identifier];
      v23 = [v5 identifier];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    v25 = [(BMWritingToolsComposeAndAdjust *)self topic];
    v26 = [v5 topic];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWritingToolsComposeAndAdjust *)self topic];
      v29 = [v5 topic];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    v31 = [(BMWritingToolsComposeAndAdjust *)self userInterfaceLanguage];
    v32 = [v5 userInterfaceLanguage];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWritingToolsComposeAndAdjust *)self userInterfaceLanguage];
      v35 = [v5 userInterfaceLanguage];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    v37 = [(BMWritingToolsComposeAndAdjust *)self userSetRegionFormat];
    v38 = [v5 userSetRegionFormat];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMWritingToolsComposeAndAdjust *)self userSetRegionFormat];
      v41 = [v5 userSetRegionFormat];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    v43 = [(BMWritingToolsComposeAndAdjust *)self result];
    if (v43 == [v5 result])
    {
      v44 = [(BMWritingToolsComposeAndAdjust *)self feature];
      v12 = v44 == [v5 feature];
LABEL_30:

      goto LABEL_31;
    }

LABEL_29:
    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (NSUUID)identifier
{
  raw_identifier = self->_raw_identifier;
  if (raw_identifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_identifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
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
  v3 = [(BMWritingToolsComposeAndAdjust *)self timestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMWritingToolsComposeAndAdjust *)self timestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMWritingToolsComposeAndAdjust *)self prompt];
  v8 = [(BMWritingToolsComposeAndAdjust *)self identifier];
  v9 = [v8 UUIDString];

  v30 = [(BMWritingToolsComposeAndAdjust *)self topic];
  v10 = [(BMWritingToolsComposeAndAdjust *)self userInterfaceLanguage];
  v11 = [(BMWritingToolsComposeAndAdjust *)self userSetRegionFormat];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWritingToolsComposeAndAdjust result](self, "result")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWritingToolsComposeAndAdjust feature](self, "feature")}];
  v31[0] = @"timestamp";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v14;
  v32[0] = v14;
  v31[1] = @"prompt";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v15;
  v32[1] = v15;
  v31[2] = @"identifier";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v16;
  v32[2] = v16;
  v31[3] = @"topic";
  v17 = v30;
  if (!v30)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v6;
  v32[3] = v17;
  v31[4] = @"userInterfaceLanguage";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v7;
  v32[4] = v18;
  v31[5] = @"userSetRegionFormat";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = v19;
  v31[6] = @"result";
  v20 = v12;
  if (!v12)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = v20;
  v31[7] = @"feature";
  v21 = v13;
  if (!v13)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = v21;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:8];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_22;
    }

LABEL_33:

    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (!v12)
  {
    goto LABEL_33;
  }

LABEL_22:
  if (v11)
  {
    goto LABEL_23;
  }

LABEL_34:

LABEL_23:
  if (!v10)
  {
  }

  if (v30)
  {
    if (v9)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (v9)
    {
LABEL_27:
      if (v28)
      {
        goto LABEL_28;
      }

LABEL_37:

      if (v29)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }
  }

  if (!v28)
  {
    goto LABEL_37;
  }

LABEL_28:
  if (v29)
  {
    goto LABEL_29;
  }

LABEL_38:

LABEL_29:
  v22 = *MEMORY[0x1E69E9840];

  return v27;
}

- (BMWritingToolsComposeAndAdjust)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v104[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"timestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v86 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v7;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSince1970:v12];
LABEL_6:
    v86 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v86 = 0;
        goto LABEL_74;
      }

      v61 = objc_alloc(MEMORY[0x1E696ABC0]);
      v62 = a4;
      v63 = *MEMORY[0x1E698F240];
      v103 = *MEMORY[0x1E696A578];
      v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
      v104[0] = v64;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
      v65 = v61;
      v16 = v64;
      v66 = [v65 initWithDomain:v63 code:2 userInfo:v15];
      v86 = 0;
      a4 = 0;
      *v62 = v66;
      goto LABEL_73;
    }

    v13 = v7;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v86 = [v14 dateFromString:v7];

LABEL_9:
  v15 = [v6 objectForKeyedSubscript:@"prompt"];
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
LABEL_12:
    v17 = [v6 objectForKeyedSubscript:@"identifier"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v83 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = self;
      v80 = v16;
      v24 = v17;
      v25 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v24];
      if (!v25)
      {
        if (a4)
        {
          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = a4;
          v58 = *MEMORY[0x1E698F240];
          v99 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
          v100 = v59;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          *v57 = [v56 initWithDomain:v58 code:2 userInfo:v60];

          a4 = 0;
        }

        v30 = v24;
        v17 = v24;
        v16 = v80;
        self = v85;
        goto LABEL_71;
      }

      v26 = v25;

      v83 = v26;
      v16 = v80;
      self = v85;
LABEL_15:
      v18 = [v6 objectForKeyedSubscript:@"topic"];
      v74 = a4;
      v76 = v7;
      v77 = v18;
      if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v82 = 0;
            v30 = v83;
            goto LABEL_70;
          }

          v38 = v16;
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v95 = *MEMORY[0x1E696A578];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"topic"];
          v96 = v81;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v41 = v39;
          v16 = v38;
          v42 = [v41 initWithDomain:v40 code:2 userInfo:v20];
          v82 = 0;
          a4 = 0;
          *v74 = v42;
LABEL_69:

          v7 = v76;
          v30 = v83;
LABEL_70:

          goto LABEL_71;
        }

        v82 = v19;
      }

      else
      {
        v82 = 0;
      }

      v20 = [v6 objectForKeyedSubscript:@"userInterfaceLanguage"];
      if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v81 = 0;
            goto LABEL_69;
          }

          v43 = v16;
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v93 = *MEMORY[0x1E696A578];
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userInterfaceLanguage"];
          v94 = v78;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v46 = v44;
          v16 = v43;
          v47 = [v46 initWithDomain:v45 code:2 userInfo:v21];
          v81 = 0;
          a4 = 0;
          *v74 = v47;
          goto LABEL_68;
        }

        v79 = v16;
        v81 = v20;
      }

      else
      {
        v79 = v16;
        v81 = 0;
      }

      v21 = [v6 objectForKeyedSubscript:@"userSetRegionFormat"];
      v84 = self;
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v78 = 0;
            goto LABEL_67;
          }

          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v91 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userSetRegionFormat"];
          v92 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
          v50 = [v48 initWithDomain:v49 code:2 userInfo:v22];
          v78 = 0;
          a4 = 0;
          *v74 = v50;
LABEL_66:

          self = v84;
LABEL_67:
          v16 = v79;
LABEL_68:

          goto LABEL_69;
        }

        v78 = v21;
      }

      else
      {
        v78 = 0;
      }

      v22 = [v6 objectForKeyedSubscript:@"result"];
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v37 = v22;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v23 = 0;
              goto LABEL_66;
            }

            v72 = objc_alloc(MEMORY[0x1E696ABC0]);
            v67 = *MEMORY[0x1E698F240];
            v89 = *MEMORY[0x1E696A578];
            v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"result"];
            v90 = v52;
            v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
            v68 = [v72 initWithDomain:v67 code:2 userInfo:v51];
            v23 = 0;
            a4 = 0;
            *v74 = v68;
            goto LABEL_65;
          }

          v37 = [MEMORY[0x1E696AD98] numberWithInt:BMWritingToolsComposeAndAdjustResultFromString(v22)];
        }

        v23 = v37;
      }

      else
      {
        v23 = 0;
      }

      v51 = [v6 objectForKeyedSubscript:@"feature"];
      if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = v51;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
              v73 = objc_alloc(MEMORY[0x1E696ABC0]);
              v71 = *MEMORY[0x1E698F240];
              v87 = *MEMORY[0x1E696A578];
              v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feature"];
              v88 = v69;
              v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
              *v74 = [v73 initWithDomain:v71 code:2 userInfo:v70];
            }

            v52 = 0;
            a4 = 0;
            goto LABEL_65;
          }

          v53 = [MEMORY[0x1E696AD98] numberWithInt:BMWritingToolsComposeAndAdjustFeatureFromString(v51)];
        }

        v52 = v53;
      }

      else
      {
        v52 = 0;
      }

      a4 = -[BMWritingToolsComposeAndAdjust initWithTimestamp:prompt:identifier:topic:userInterfaceLanguage:userSetRegionFormat:result:feature:](v84, "initWithTimestamp:prompt:identifier:topic:userInterfaceLanguage:userSetRegionFormat:result:feature:", v86, v79, v83, v82, v81, v78, __PAIR64__([v52 intValue], objc_msgSend(v23, "intValue")));
      v84 = a4;
LABEL_65:

      goto LABEL_66;
    }

    if (!a4)
    {
LABEL_72:

      goto LABEL_73;
    }

    v32 = v16;
    v33 = objc_alloc(MEMORY[0x1E696ABC0]);
    v75 = a4;
    v34 = *MEMORY[0x1E698F240];
    v97 = *MEMORY[0x1E696A578];
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v98 = v30;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
    v36 = v33;
    v16 = v32;
    *v75 = [v36 initWithDomain:v34 code:2 userInfo:v35];

    a4 = 0;
LABEL_71:

    goto LABEL_72;
  }

  if (a4)
  {
    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v28 = a4;
    v29 = *MEMORY[0x1E698F240];
    v101 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"prompt"];
    v102 = v17;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    v31 = [v27 initWithDomain:v29 code:2 userInfo:v30];
    v16 = 0;
    a4 = 0;
    *v28 = v31;
    goto LABEL_71;
  }

  v16 = 0;
LABEL_73:

LABEL_74:
  v54 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWritingToolsComposeAndAdjust *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_prompt)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_raw_identifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_topic)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userInterfaceLanguage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userSetRegionFormat)
  {
    PBDataWriterWriteStringField();
  }

  result = self->_result;
  PBDataWriterWriteUint32Field();
  feature = self->_feature;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMWritingToolsComposeAndAdjust;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_74;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_72;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v40) & 0x7F) << v7;
        if ((LOBYTE(v40) & 0x80) == 0)
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
        goto LABEL_72;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        break;
      }

      if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 72;
        }

        else
        {
          if (v15 != 6)
          {
            goto LABEL_58;
          }

          v16 = PBReaderReadString();
          v17 = 80;
        }

        goto LABEL_45;
      }

      if (v15 == 7)
      {
        v29 = 0;
        v30 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v40) = 0;
          v31 = [v4 position] + 1;
          if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
          {
            v33 = [v4 data];
            [v33 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (LOBYTE(v40) & 0x7F) << v29;
          if ((LOBYTE(v40) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v24 = v30++ > 8;
          if (v24)
          {
            goto LABEL_62;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 3)
        {
LABEL_62:
          LODWORD(v20) = 0;
        }

        v34 = 44;
      }

      else
      {
        if (v15 != 8)
        {
LABEL_58:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_73;
          }

          goto LABEL_71;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v40) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (LOBYTE(v40) & 0x7F) << v18;
          if ((LOBYTE(v40) & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v24 = v19++ > 8;
          if (v24)
          {
            goto LABEL_66;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 2)
        {
LABEL_66:
          LODWORD(v20) = 0;
        }

        v34 = 48;
      }

      *(&v5->super.super.isa + v34) = v20;
LABEL_71:
      v36 = [v4 position];
      if (v36 >= [v4 length])
      {
        goto LABEL_72;
      }
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v28 = PBReaderReadData();
        if ([(NSData *)v28 length]!= 16)
        {

          goto LABEL_73;
        }

        raw_identifier = v5->_raw_identifier;
        v5->_raw_identifier = v28;
        goto LABEL_46;
      }

      if (v15 != 4)
      {
        goto LABEL_58;
      }

      v16 = PBReaderReadString();
      v17 = 64;
    }

    else
    {
      if (v15 == 1)
      {
        v5->_hasRaw_timestamp = 1;
        v40 = 0.0;
        v25 = [v4 position] + 8;
        if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
        {
          v35 = [v4 data];
          [v35 getBytes:&v40 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_timestamp = v40;
        goto LABEL_71;
      }

      if (v15 != 2)
      {
        goto LABEL_58;
      }

      v16 = PBReaderReadString();
      v17 = 56;
    }

LABEL_45:
    raw_identifier = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;
LABEL_46:

    goto LABEL_71;
  }

LABEL_72:
  if ([v4 hasError])
  {
LABEL_73:
    v37 = 0;
  }

  else
  {
LABEL_74:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMWritingToolsComposeAndAdjust *)self timestamp];
  v5 = [(BMWritingToolsComposeAndAdjust *)self prompt];
  v6 = [(BMWritingToolsComposeAndAdjust *)self identifier];
  v7 = [(BMWritingToolsComposeAndAdjust *)self topic];
  v8 = [(BMWritingToolsComposeAndAdjust *)self userInterfaceLanguage];
  v9 = [(BMWritingToolsComposeAndAdjust *)self userSetRegionFormat];
  v10 = BMWritingToolsComposeAndAdjustResultAsString([(BMWritingToolsComposeAndAdjust *)self result]);
  v11 = BMWritingToolsComposeAndAdjustFeatureAsString([(BMWritingToolsComposeAndAdjust *)self feature]);
  v12 = [v3 initWithFormat:@"BMWritingToolsComposeAndAdjust with timestamp: %@, prompt: %@, identifier: %@, topic: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, result: %@, feature: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMWritingToolsComposeAndAdjust)initWithTimestamp:(id)a3 prompt:(id)a4 identifier:(id)a5 topic:(id)a6 userInterfaceLanguage:(id)a7 userSetRegionFormat:(id)a8 result:(int)a9 feature:(int)a10
{
  v29[2] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v27 = a7;
  v20 = a8;
  v28.receiver = self;
  v28.super_class = BMWritingToolsComposeAndAdjust;
  v21 = [(BMEventBase *)&v28 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v16)
    {
      v21->_hasRaw_timestamp = 1;
      [v16 timeIntervalSince1970];
    }

    else
    {
      v21->_hasRaw_timestamp = 0;
      v22 = -1.0;
    }

    v21->_raw_timestamp = v22;
    objc_storeStrong(&v21->_prompt, a4);
    if (v18)
    {
      v29[0] = 0;
      v29[1] = 0;
      [v18 getUUIDBytes:v29];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v29 length:16];
      raw_identifier = v21->_raw_identifier;
      v21->_raw_identifier = v23;
    }

    else
    {
      raw_identifier = v21->_raw_identifier;
      v21->_raw_identifier = 0;
    }

    objc_storeStrong(&v21->_topic, a6);
    objc_storeStrong(&v21->_userInterfaceLanguage, a7);
    objc_storeStrong(&v21->_userSetRegionFormat, a8);
    v21->_result = a9;
    v21->_feature = a10;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:1 type:0 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prompt" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:3 type:14 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topic" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInterfaceLanguage" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSetRegionFormat" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"result" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feature" number:8 type:4 subMessageClass:0];
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

    v8 = [[BMWritingToolsComposeAndAdjust alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end