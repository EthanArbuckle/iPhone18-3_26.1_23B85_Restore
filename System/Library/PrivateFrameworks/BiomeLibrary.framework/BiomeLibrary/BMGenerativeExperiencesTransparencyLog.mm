@interface BMGenerativeExperiencesTransparencyLog
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMGenerativeExperiencesTransparencyLog)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMGenerativeExperiencesTransparencyLog)initWithTimestamp:(id)a3 identifier:(id)a4 prompt:(id)a5 response:(id)a6 model:(id)a7 modelVersion:(id)a8 useCase:(id)a9 errorCode:(id)a10 clientIdentifier:(id)a11 executionEnvironment:(int)a12;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMGenerativeExperiencesTransparencyLog

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prompt" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"response" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"model" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"useCase" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorCode" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"executionEnvironment" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v7;
  v15[6] = v8;
  v15[7] = v9;
  v15[8] = v10;
  v15[9] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
    v7 = [v5 timestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
      v10 = [v5 timestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_38;
      }
    }

    v13 = [(BMGenerativeExperiencesTransparencyLog *)self identifier];
    v14 = [v5 identifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMGenerativeExperiencesTransparencyLog *)self identifier];
      v17 = [v5 identifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_38;
      }
    }

    v19 = [(BMGenerativeExperiencesTransparencyLog *)self prompt];
    v20 = [v5 prompt];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMGenerativeExperiencesTransparencyLog *)self prompt];
      v23 = [v5 prompt];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_38;
      }
    }

    v25 = [(BMGenerativeExperiencesTransparencyLog *)self response];
    v26 = [v5 response];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMGenerativeExperiencesTransparencyLog *)self response];
      v29 = [v5 response];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_38;
      }
    }

    v31 = [(BMGenerativeExperiencesTransparencyLog *)self model];
    v32 = [v5 model];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMGenerativeExperiencesTransparencyLog *)self model];
      v35 = [v5 model];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_38;
      }
    }

    v37 = [(BMGenerativeExperiencesTransparencyLog *)self modelVersion];
    v38 = [v5 modelVersion];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMGenerativeExperiencesTransparencyLog *)self modelVersion];
      v41 = [v5 modelVersion];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_38;
      }
    }

    v43 = [(BMGenerativeExperiencesTransparencyLog *)self useCase];
    v44 = [v5 useCase];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMGenerativeExperiencesTransparencyLog *)self useCase];
      v47 = [v5 useCase];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_38;
      }
    }

    if (-[BMGenerativeExperiencesTransparencyLog hasErrorCode](self, "hasErrorCode") || [v5 hasErrorCode])
    {
      if (![(BMGenerativeExperiencesTransparencyLog *)self hasErrorCode])
      {
        goto LABEL_38;
      }

      if (![v5 hasErrorCode])
      {
        goto LABEL_38;
      }

      v49 = [(BMGenerativeExperiencesTransparencyLog *)self errorCode];
      if (v49 != [v5 errorCode])
      {
        goto LABEL_38;
      }
    }

    v50 = [(BMGenerativeExperiencesTransparencyLog *)self clientIdentifier];
    v51 = [v5 clientIdentifier];
    v52 = v51;
    if (v50 == v51)
    {
    }

    else
    {
      v53 = [(BMGenerativeExperiencesTransparencyLog *)self clientIdentifier];
      v54 = [v5 clientIdentifier];
      v55 = [v53 isEqual:v54];

      if (!v55)
      {
LABEL_38:
        v12 = 0;
LABEL_39:

        goto LABEL_40;
      }
    }

    v57 = [(BMGenerativeExperiencesTransparencyLog *)self executionEnvironment];
    v12 = v57 == [v5 executionEnvironment];
    goto LABEL_39;
  }

  v12 = 0;
LABEL_40:

  return v12;
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
  v43[10] = *MEMORY[0x1E69E9840];
  v3 = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMGenerativeExperiencesTransparencyLog *)self identifier];
  v8 = [(BMGenerativeExperiencesTransparencyLog *)self prompt];
  v9 = [(BMGenerativeExperiencesTransparencyLog *)self response];
  v10 = [(BMGenerativeExperiencesTransparencyLog *)self model];
  v11 = [(BMGenerativeExperiencesTransparencyLog *)self modelVersion];
  v41 = [(BMGenerativeExperiencesTransparencyLog *)self useCase];
  v39 = v11;
  if ([(BMGenerativeExperiencesTransparencyLog *)self hasErrorCode])
  {
    v12 = MEMORY[0x1E696AD98];
    v13 = [(BMGenerativeExperiencesTransparencyLog *)self errorCode];
    v14 = v12;
    v11 = v39;
    v40 = [v14 numberWithInt:v13];
  }

  else
  {
    v40 = 0;
  }

  v15 = [(BMGenerativeExperiencesTransparencyLog *)self clientIdentifier];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesTransparencyLog executionEnvironment](self, "executionEnvironment")}];
  v42[0] = @"timestamp";
  v17 = v6;
  if (!v6)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v17;
  v43[0] = v17;
  v42[1] = @"identifier";
  v18 = v7;
  if (!v7)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v18;
  v43[1] = v18;
  v42[2] = @"prompt";
  v19 = v8;
  if (!v8)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v19;
  v43[2] = v19;
  v42[3] = @"response";
  v20 = v9;
  if (!v9)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v6;
  v31 = v20;
  v43[3] = v20;
  v42[4] = @"model";
  v21 = v10;
  if (!v10)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v7;
  v43[4] = v21;
  v42[5] = @"modelVersion";
  v22 = v11;
  if (!v11)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v8;
  v43[5] = v22;
  v42[6] = @"useCase";
  v23 = v41;
  if (!v41)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v9;
  v43[6] = v23;
  v42[7] = @"errorCode";
  v25 = v40;
  if (!v40)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v10;
  v43[7] = v25;
  v42[8] = @"clientIdentifier";
  v27 = v15;
  if (!v15)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v43[8] = v27;
  v42[9] = @"executionEnvironment";
  v28 = v16;
  if (!v16)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = v28;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:10];
  if (v16)
  {
    if (v15)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (v15)
    {
      goto LABEL_29;
    }
  }

LABEL_29:
  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v39)
  {
  }

  if (!v26)
  {
  }

  if (v24)
  {
    if (v36)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (v36)
    {
LABEL_39:
      if (v37)
      {
        goto LABEL_40;
      }

LABEL_48:

      if (v38)
      {
        goto LABEL_41;
      }

      goto LABEL_49;
    }
  }

  if (!v37)
  {
    goto LABEL_48;
  }

LABEL_40:
  if (v38)
  {
    goto LABEL_41;
  }

LABEL_49:

LABEL_41:
  v29 = *MEMORY[0x1E69E9840];

  return v35;
}

- (BMGenerativeExperiencesTransparencyLog)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v122[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"timestamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSince1970:v12];
LABEL_6:
    v7 = v13;
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
        v7 = 0;
        v33 = 0;
        v46 = self;
        goto LABEL_94;
      }

      v71 = objc_alloc(MEMORY[0x1E696ABC0]);
      v72 = *MEMORY[0x1E698F240];
      v121 = *MEMORY[0x1E696A578];
      v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
      v122[0] = v73;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
      v74 = v72;
      v16 = v73;
      v75 = [v71 initWithDomain:v74 code:2 userInfo:v15];
      v7 = 0;
      v33 = 0;
      *a4 = v75;
      goto LABEL_80;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [v5 objectForKeyedSubscript:@"identifier"];
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
    v17 = [v5 objectForKeyedSubscript:@"prompt"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v100 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v100 = v17;
LABEL_15:
      v18 = [v5 objectForKeyedSubscript:@"response"];
      v99 = v18;
      v96 = a4;
      v97 = v17;
      if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v101 = 0;
LABEL_18:
        v20 = [v5 objectForKeyedSubscript:@"model"];
        v94 = v7;
        if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v96)
            {
              v98 = 0;
              v33 = 0;
              v46 = self;
              v30 = v100;
              goto LABEL_90;
            }

            v55 = objc_alloc(MEMORY[0x1E696ABC0]);
            v90 = v6;
            v56 = v16;
            v57 = *MEMORY[0x1E698F240];
            v113 = *MEMORY[0x1E696A578];
            v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"model"];
            v114 = v95;
            v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
            v59 = v55;
            v7 = v94;
            v60 = v57;
            v16 = v56;
            v91 = v58;
            v98 = 0;
            v33 = 0;
            *v96 = [v59 initWithDomain:v60 code:2 userInfo:?];
            v6 = v90;
            v46 = self;
            v30 = v100;
            goto LABEL_89;
          }

          v21 = v15;
          v98 = v20;
        }

        else
        {
          v21 = v15;
          v98 = 0;
        }

        v22 = [v5 objectForKeyedSubscript:@"modelVersion"];
        v93 = v16;
        v91 = v22;
        if (v22 && (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v96)
            {
              v95 = 0;
              v33 = 0;
              v46 = self;
              v30 = v100;
              v15 = v21;
              v17 = v97;
              goto LABEL_89;
            }

            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E698F240];
            v111 = *MEMORY[0x1E696A578];
            v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modelVersion"];
            v112 = v92;
            v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
            v95 = 0;
            v33 = 0;
            *v96 = [v62 initWithDomain:v63 code:2 userInfo:?];
            v46 = self;
            v30 = v100;
            v15 = v21;
            v17 = v97;
LABEL_88:

            v16 = v93;
LABEL_89:

            goto LABEL_90;
          }

          v95 = v23;
        }

        else
        {
          v95 = 0;
        }

        v24 = [v5 objectForKeyedSubscript:@"useCase"];
        v15 = v21;
        v85 = v24;
        if (v24)
        {
          v25 = v24;
          objc_opt_class();
          v26 = v25;
          v17 = v97;
          if (objc_opt_isKindOfClass())
          {
            v92 = 0;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!v96)
              {
                v92 = 0;
                v33 = 0;
                v46 = self;
                v30 = v100;
                goto LABEL_88;
              }

              v64 = objc_alloc(MEMORY[0x1E696ABC0]);
              v65 = *MEMORY[0x1E698F240];
              v109 = *MEMORY[0x1E696A578];
              v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"useCase"];
              v110 = v86;
              v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
              v66 = v64;
              v7 = v94;
              v92 = 0;
              v33 = 0;
              *v96 = [v66 initWithDomain:v65 code:2 userInfo:v34];
              goto LABEL_99;
            }

            v92 = v26;
          }
        }

        else
        {
          v92 = 0;
          v17 = v97;
        }

        v34 = [v5 objectForKeyedSubscript:@"errorCode"];
        v87 = v6;
        v84 = v20;
        if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v86 = 0;
          goto LABEL_45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v86 = v34;
LABEL_45:
          v35 = [v5 objectForKeyedSubscript:@"clientIdentifier"];
          if (v35)
          {
            v36 = v96;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v37 = v35;
                goto LABEL_53;
              }

              if (v96)
              {
                v82 = objc_alloc(MEMORY[0x1E696ABC0]);
                v69 = *MEMORY[0x1E698F240];
                v105 = *MEMORY[0x1E696A578];
                v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
                v106 = v48;
                v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
                v70 = [v82 initWithDomain:v69 code:2 userInfo:v47];
                v37 = 0;
                v33 = 0;
                *v96 = v70;
                goto LABEL_85;
              }

              v37 = 0;
              v33 = 0;
LABEL_104:
              v6 = v87;
              goto LABEL_86;
            }
          }

          else
          {
            v36 = v96;
          }

          v37 = 0;
LABEL_53:
          v47 = [v5 objectForKeyedSubscript:@"executionEnvironment"];
          if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = v47;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (v36)
                {
                  v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v81 = *MEMORY[0x1E698F240];
                  v103 = *MEMORY[0x1E696A578];
                  v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"executionEnvironment"];
                  v104 = v78;
                  v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
                  *v36 = [v83 initWithDomain:v81 code:2 userInfo:v79];
                }

                v48 = 0;
                v33 = 0;
                goto LABEL_85;
              }

              v61 = [MEMORY[0x1E696AD98] numberWithInt:BMGenerativeExperiencesTransparencyLogExecutionEnvironmentFromString(v47)];
            }

            v48 = v61;
          }

          else
          {
            v48 = 0;
          }

          LODWORD(v80) = [v48 intValue];
          v33 = [(BMGenerativeExperiencesTransparencyLog *)self initWithTimestamp:v94 identifier:v93 prompt:v100 response:v101 model:v98 modelVersion:v95 useCase:v92 errorCode:v86 clientIdentifier:v37 executionEnvironment:v80];
          self = v33;
LABEL_85:
          v6 = v87;

LABEL_86:
          v46 = self;
          v7 = v94;
          v30 = v100;
          v20 = v84;
LABEL_87:

          goto LABEL_88;
        }

        if (v96)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v107 = *MEMORY[0x1E696A578];
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"errorCode"];
          v108 = v37;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          v86 = 0;
          v33 = 0;
          *v96 = [v67 initWithDomain:v68 code:2 userInfo:v35];
          goto LABEL_104;
        }

        v86 = 0;
        v33 = 0;
LABEL_99:
        v46 = self;
        v30 = v100;
        goto LABEL_87;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v101 = v19;
        goto LABEL_18;
      }

      if (a4)
      {
        v49 = v7;
        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v89 = v6;
        v51 = v16;
        v52 = *MEMORY[0x1E698F240];
        v115 = *MEMORY[0x1E696A578];
        v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"response"];
        v116 = v98;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v53 = v50;
        v7 = v49;
        v54 = v52;
        v16 = v51;
        v101 = 0;
        v33 = 0;
        *v96 = [v53 initWithDomain:v54 code:2 userInfo:v20];
        v6 = v89;
        v46 = self;
        v30 = v100;
LABEL_90:

        goto LABEL_91;
      }

      v101 = 0;
      v33 = 0;
      v46 = self;
      v30 = v100;
LABEL_91:

      goto LABEL_92;
    }

    if (a4)
    {
      v38 = v7;
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v88 = v6;
      v40 = a4;
      v41 = v16;
      v42 = *MEMORY[0x1E698F240];
      v117 = *MEMORY[0x1E696A578];
      v101 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"prompt"];
      v118 = v101;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      v44 = v39;
      v7 = v38;
      v45 = v42;
      v16 = v41;
      v99 = v43;
      v30 = 0;
      v33 = 0;
      *v40 = [v44 initWithDomain:v45 code:2 userInfo:?];
      v6 = v88;
      v46 = self;
      goto LABEL_91;
    }

    v30 = 0;
    v33 = 0;
LABEL_74:
    v46 = self;
LABEL_92:

    goto LABEL_93;
  }

  if (a4)
  {
    v27 = v7;
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = *MEMORY[0x1E698F240];
    v119 = *MEMORY[0x1E696A578];
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v120 = v30;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
    v31 = v28;
    v7 = v27;
    v32 = [v31 initWithDomain:v29 code:2 userInfo:v17];
    v16 = 0;
    v33 = 0;
    *a4 = v32;
    goto LABEL_74;
  }

  v16 = 0;
  v33 = 0;
LABEL_80:
  v46 = self;
LABEL_93:

LABEL_94:
  v76 = *MEMORY[0x1E69E9840];
  return v33;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGenerativeExperiencesTransparencyLog *)self writeTo:v3];
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

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_prompt)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_response)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_model)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_useCase)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasErrorCode)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  executionEnvironment = self->_executionEnvironment;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = BMGenerativeExperiencesTransparencyLog;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_79;
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
        LOBYTE(v42) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v42 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v42) & 0x7F) << v7;
        if ((LOBYTE(v42) & 0x80) == 0)
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
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v16 = PBReaderReadString();
            v17 = 80;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_60:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_78;
              }

              goto LABEL_76;
            }

            v16 = PBReaderReadString();
            v17 = 88;
          }
        }

        else
        {
          if (v15 == 8)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v5->_hasErrorCode = 1;
            while (1)
            {
              LOBYTE(v42) = 0;
              v30 = [v4 position] + 1;
              if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
              {
                v32 = [v4 data];
                [v32 getBytes:&v42 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v29 |= (LOBYTE(v42) & 0x7F) << v27;
              if ((LOBYTE(v42) & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v13 = v28++ >= 9;
              if (v13)
              {
                v33 = 0;
                goto LABEL_65;
              }
            }

            if ([v4 hasError])
            {
              v33 = 0;
            }

            else
            {
              v33 = v29;
            }

LABEL_65:
            v35 = 40;
LABEL_73:
            *(&v5->super.super.isa + v35) = v33;
            goto LABEL_76;
          }

          if (v15 != 9)
          {
            if (v15 != 10)
            {
              goto LABEL_60;
            }

            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v42) = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v42 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (LOBYTE(v42) & 0x7F) << v18;
              if ((LOBYTE(v42) & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              if (v19++ > 8)
              {
                goto LABEL_71;
              }
            }

            if ([v4 hasError])
            {
              v36 = 0;
            }

            else
            {
              v36 = v20;
            }

            if (v36 <= 5)
            {
              v33 = dword_185544DF4[v36];
              goto LABEL_72;
            }

LABEL_71:
            v33 = 0;
LABEL_72:
            v35 = 44;
            goto LABEL_73;
          }

          v16 = PBReaderReadString();
          v17 = 96;
        }
      }

      else if (v15 <= 2)
      {
        if (v15 == 1)
        {
          v5->_hasRaw_timestamp = 1;
          v42 = 0.0;
          v25 = [v4 position] + 8;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
          {
            v37 = [v4 data];
            [v37 getBytes:&v42 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_timestamp = v42;
          goto LABEL_76;
        }

        if (v15 != 2)
        {
          goto LABEL_60;
        }

        v16 = PBReaderReadString();
        v17 = 48;
      }

      else
      {
        switch(v15)
        {
          case 3:
            v16 = PBReaderReadString();
            v17 = 56;
            break;
          case 4:
            v16 = PBReaderReadString();
            v17 = 64;
            break;
          case 5:
            v16 = PBReaderReadString();
            v17 = 72;
            break;
          default:
            goto LABEL_60;
        }
      }

      v34 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_76:
      v38 = [v4 position];
    }

    while (v38 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_78:
    v39 = 0;
  }

  else
  {
LABEL_79:
    v39 = v5;
  }

  return v39;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
  v3 = [(BMGenerativeExperiencesTransparencyLog *)self identifier];
  v4 = [(BMGenerativeExperiencesTransparencyLog *)self prompt];
  v5 = [(BMGenerativeExperiencesTransparencyLog *)self response];
  v6 = [(BMGenerativeExperiencesTransparencyLog *)self model];
  v7 = [(BMGenerativeExperiencesTransparencyLog *)self modelVersion];
  v8 = [(BMGenerativeExperiencesTransparencyLog *)self useCase];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesTransparencyLog errorCode](self, "errorCode")}];
  v10 = [(BMGenerativeExperiencesTransparencyLog *)self clientIdentifier];
  v11 = BMGenerativeExperiencesTransparencyLogExecutionEnvironmentAsString([(BMGenerativeExperiencesTransparencyLog *)self executionEnvironment]);
  v12 = [v15 initWithFormat:@"BMGenerativeExperiencesTransparencyLog with timestamp: %@, identifier: %@, prompt: %@, response: %@, model: %@, modelVersion: %@, useCase: %@, errorCode: %@, clientIdentifier: %@, executionEnvironment: %@", v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMGenerativeExperiencesTransparencyLog)initWithTimestamp:(id)a3 identifier:(id)a4 prompt:(id)a5 response:(id)a6 model:(id)a7 modelVersion:(id)a8 useCase:(id)a9 errorCode:(id)a10 clientIdentifier:(id)a11 executionEnvironment:(int)a12
{
  v18 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v25 = a9;
  v19 = a10;
  v24 = a11;
  v31.receiver = self;
  v31.super_class = BMGenerativeExperiencesTransparencyLog;
  v20 = [(BMEventBase *)&v31 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v18)
    {
      v20->_hasRaw_timestamp = 1;
      [v18 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_timestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_timestamp = v21;
    objc_storeStrong(&v20->_identifier, a4);
    objc_storeStrong(&v20->_prompt, a5);
    objc_storeStrong(&v20->_response, a6);
    objc_storeStrong(&v20->_model, a7);
    objc_storeStrong(&v20->_modelVersion, a8);
    objc_storeStrong(&v20->_useCase, a9);
    if (v19)
    {
      v20->_hasErrorCode = 1;
      v22 = [v19 intValue];
    }

    else
    {
      v20->_hasErrorCode = 0;
      v22 = -1;
    }

    v20->_errorCode = v22;
    objc_storeStrong(&v20->_clientIdentifier, a11);
    v20->_executionEnvironment = a12;
  }

  return v20;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:1 type:0 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:2 type:13 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prompt" number:3 type:13 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"response" number:4 type:13 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"model" number:5 type:13 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:6 type:13 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"useCase" number:7 type:13 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorCode" number:8 type:2 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:9 type:13 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"executionEnvironment" number:10 type:4 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

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

    v8 = [[BMGenerativeExperiencesTransparencyLog alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end