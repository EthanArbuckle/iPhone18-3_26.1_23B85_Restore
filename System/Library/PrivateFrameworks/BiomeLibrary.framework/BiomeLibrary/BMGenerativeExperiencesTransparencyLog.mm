@interface BMGenerativeExperiencesTransparencyLog
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMGenerativeExperiencesTransparencyLog)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMGenerativeExperiencesTransparencyLog)initWithTimestamp:(id)timestamp identifier:(id)identifier prompt:(id)prompt response:(id)response model:(id)model modelVersion:(id)version useCase:(id)case errorCode:(id)self0 clientIdentifier:(id)self1 executionEnvironment:(int)self2;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timestamp = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
    timestamp2 = [v5 timestamp];
    v8 = timestamp2;
    if (timestamp == timestamp2)
    {
    }

    else
    {
      timestamp3 = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
      timestamp4 = [v5 timestamp];
      v11 = [timestamp3 isEqual:timestamp4];

      if (!v11)
      {
        goto LABEL_38;
      }
    }

    identifier = [(BMGenerativeExperiencesTransparencyLog *)self identifier];
    identifier2 = [v5 identifier];
    v15 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMGenerativeExperiencesTransparencyLog *)self identifier];
      identifier4 = [v5 identifier];
      v18 = [identifier3 isEqual:identifier4];

      if (!v18)
      {
        goto LABEL_38;
      }
    }

    prompt = [(BMGenerativeExperiencesTransparencyLog *)self prompt];
    prompt2 = [v5 prompt];
    v21 = prompt2;
    if (prompt == prompt2)
    {
    }

    else
    {
      prompt3 = [(BMGenerativeExperiencesTransparencyLog *)self prompt];
      prompt4 = [v5 prompt];
      v24 = [prompt3 isEqual:prompt4];

      if (!v24)
      {
        goto LABEL_38;
      }
    }

    response = [(BMGenerativeExperiencesTransparencyLog *)self response];
    response2 = [v5 response];
    v27 = response2;
    if (response == response2)
    {
    }

    else
    {
      response3 = [(BMGenerativeExperiencesTransparencyLog *)self response];
      response4 = [v5 response];
      v30 = [response3 isEqual:response4];

      if (!v30)
      {
        goto LABEL_38;
      }
    }

    model = [(BMGenerativeExperiencesTransparencyLog *)self model];
    model2 = [v5 model];
    v33 = model2;
    if (model == model2)
    {
    }

    else
    {
      model3 = [(BMGenerativeExperiencesTransparencyLog *)self model];
      model4 = [v5 model];
      v36 = [model3 isEqual:model4];

      if (!v36)
      {
        goto LABEL_38;
      }
    }

    modelVersion = [(BMGenerativeExperiencesTransparencyLog *)self modelVersion];
    modelVersion2 = [v5 modelVersion];
    v39 = modelVersion2;
    if (modelVersion == modelVersion2)
    {
    }

    else
    {
      modelVersion3 = [(BMGenerativeExperiencesTransparencyLog *)self modelVersion];
      modelVersion4 = [v5 modelVersion];
      v42 = [modelVersion3 isEqual:modelVersion4];

      if (!v42)
      {
        goto LABEL_38;
      }
    }

    useCase = [(BMGenerativeExperiencesTransparencyLog *)self useCase];
    useCase2 = [v5 useCase];
    v45 = useCase2;
    if (useCase == useCase2)
    {
    }

    else
    {
      useCase3 = [(BMGenerativeExperiencesTransparencyLog *)self useCase];
      useCase4 = [v5 useCase];
      v48 = [useCase3 isEqual:useCase4];

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

      errorCode = [(BMGenerativeExperiencesTransparencyLog *)self errorCode];
      if (errorCode != [v5 errorCode])
      {
        goto LABEL_38;
      }
    }

    clientIdentifier = [(BMGenerativeExperiencesTransparencyLog *)self clientIdentifier];
    clientIdentifier2 = [v5 clientIdentifier];
    v52 = clientIdentifier2;
    if (clientIdentifier == clientIdentifier2)
    {
    }

    else
    {
      clientIdentifier3 = [(BMGenerativeExperiencesTransparencyLog *)self clientIdentifier];
      clientIdentifier4 = [v5 clientIdentifier];
      v55 = [clientIdentifier3 isEqual:clientIdentifier4];

      if (!v55)
      {
LABEL_38:
        v12 = 0;
LABEL_39:

        goto LABEL_40;
      }
    }

    executionEnvironment = [(BMGenerativeExperiencesTransparencyLog *)self executionEnvironment];
    v12 = executionEnvironment == [v5 executionEnvironment];
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
  timestamp = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
  if (timestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  identifier = [(BMGenerativeExperiencesTransparencyLog *)self identifier];
  prompt = [(BMGenerativeExperiencesTransparencyLog *)self prompt];
  response = [(BMGenerativeExperiencesTransparencyLog *)self response];
  model = [(BMGenerativeExperiencesTransparencyLog *)self model];
  modelVersion = [(BMGenerativeExperiencesTransparencyLog *)self modelVersion];
  useCase = [(BMGenerativeExperiencesTransparencyLog *)self useCase];
  v39 = modelVersion;
  if ([(BMGenerativeExperiencesTransparencyLog *)self hasErrorCode])
  {
    v12 = MEMORY[0x1E696AD98];
    errorCode = [(BMGenerativeExperiencesTransparencyLog *)self errorCode];
    v14 = v12;
    modelVersion = v39;
    v40 = [v14 numberWithInt:errorCode];
  }

  else
  {
    v40 = 0;
  }

  clientIdentifier = [(BMGenerativeExperiencesTransparencyLog *)self clientIdentifier];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesTransparencyLog executionEnvironment](self, "executionEnvironment")}];
  v42[0] = @"timestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v34 = null;
  v43[0] = null;
  v42[1] = @"identifier";
  null2 = identifier;
  if (!identifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null2;
  v43[1] = null2;
  v42[2] = @"prompt";
  null3 = prompt;
  if (!prompt)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null3;
  v43[2] = null3;
  v42[3] = @"response";
  null4 = response;
  if (!response)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v6;
  v31 = null4;
  v43[3] = null4;
  v42[4] = @"model";
  null5 = model;
  if (!model)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = identifier;
  v43[4] = null5;
  v42[5] = @"modelVersion";
  null6 = modelVersion;
  if (!modelVersion)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = prompt;
  v43[5] = null6;
  v42[6] = @"useCase";
  null7 = useCase;
  if (!useCase)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = response;
  v43[6] = null7;
  v42[7] = @"errorCode";
  null8 = v40;
  if (!v40)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = model;
  v43[7] = null8;
  v42[8] = @"clientIdentifier";
  null9 = clientIdentifier;
  if (!clientIdentifier)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v43[8] = null9;
  v42[9] = @"executionEnvironment";
  null10 = v16;
  if (!v16)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = null10;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:10];
  if (v16)
  {
    if (clientIdentifier)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (clientIdentifier)
    {
      goto LABEL_29;
    }
  }

LABEL_29:
  if (!v40)
  {
  }

  if (!useCase)
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

- (BMGenerativeExperiencesTransparencyLog)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v122[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
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
      if (!error)
      {
        v7 = 0;
        v33 = 0;
        selfCopy13 = self;
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
      *error = v75;
      goto LABEL_80;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
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
    v17 = [dictionaryCopy objectForKeyedSubscript:@"prompt"];
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
      v18 = [dictionaryCopy objectForKeyedSubscript:@"response"];
      v99 = v18;
      errorCopy = error;
      v97 = v17;
      if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v101 = 0;
LABEL_18:
        v20 = [dictionaryCopy objectForKeyedSubscript:@"model"];
        v94 = v7;
        if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v98 = 0;
              v33 = 0;
              selfCopy13 = self;
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
            *errorCopy = [v59 initWithDomain:v60 code:2 userInfo:?];
            v6 = v90;
            selfCopy13 = self;
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

        v22 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
        v93 = v16;
        v91 = v22;
        if (v22 && (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v95 = 0;
              v33 = 0;
              selfCopy13 = self;
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
            *errorCopy = [v62 initWithDomain:v63 code:2 userInfo:?];
            selfCopy13 = self;
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

        v24 = [dictionaryCopy objectForKeyedSubscript:@"useCase"];
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
              if (!errorCopy)
              {
                v92 = 0;
                v33 = 0;
                selfCopy13 = self;
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
              *errorCopy = [v66 initWithDomain:v65 code:2 userInfo:v34];
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

        v34 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
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
          v35 = [dictionaryCopy objectForKeyedSubscript:@"clientIdentifier"];
          if (v35)
          {
            v36 = errorCopy;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v37 = v35;
                goto LABEL_53;
              }

              if (errorCopy)
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
                *errorCopy = v70;
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
            v36 = errorCopy;
          }

          v37 = 0;
LABEL_53:
          v47 = [dictionaryCopy objectForKeyedSubscript:@"executionEnvironment"];
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
          selfCopy13 = self;
          v7 = v94;
          v30 = v100;
          v20 = v84;
LABEL_87:

          goto LABEL_88;
        }

        if (errorCopy)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v107 = *MEMORY[0x1E696A578];
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"errorCode"];
          v108 = v37;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          v86 = 0;
          v33 = 0;
          *errorCopy = [v67 initWithDomain:v68 code:2 userInfo:v35];
          goto LABEL_104;
        }

        v86 = 0;
        v33 = 0;
LABEL_99:
        selfCopy13 = self;
        v30 = v100;
        goto LABEL_87;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v101 = v19;
        goto LABEL_18;
      }

      if (error)
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
        *errorCopy = [v53 initWithDomain:v54 code:2 userInfo:v20];
        v6 = v89;
        selfCopy13 = self;
        v30 = v100;
LABEL_90:

        goto LABEL_91;
      }

      v101 = 0;
      v33 = 0;
      selfCopy13 = self;
      v30 = v100;
LABEL_91:

      goto LABEL_92;
    }

    if (error)
    {
      v38 = v7;
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v88 = v6;
      errorCopy2 = error;
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
      *errorCopy2 = [v44 initWithDomain:v45 code:2 userInfo:?];
      v6 = v88;
      selfCopy13 = self;
      goto LABEL_91;
    }

    v30 = 0;
    v33 = 0;
LABEL_74:
    selfCopy13 = self;
LABEL_92:

    goto LABEL_93;
  }

  if (error)
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
    *error = v32;
    goto LABEL_74;
  }

  v16 = 0;
  v33 = 0;
LABEL_80:
  selfCopy13 = self;
LABEL_93:

LABEL_94:
  v76 = *MEMORY[0x1E69E9840];
  return v33;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGenerativeExperiencesTransparencyLog *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v41.receiver = self;
  v41.super_class = BMGenerativeExperiencesTransparencyLog;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_79;
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
        LOBYTE(v42) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v30 = [fromCopy position] + 1;
              if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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
          v25 = [fromCopy position] + 8;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  timestamp = [(BMGenerativeExperiencesTransparencyLog *)self timestamp];
  identifier = [(BMGenerativeExperiencesTransparencyLog *)self identifier];
  prompt = [(BMGenerativeExperiencesTransparencyLog *)self prompt];
  response = [(BMGenerativeExperiencesTransparencyLog *)self response];
  model = [(BMGenerativeExperiencesTransparencyLog *)self model];
  modelVersion = [(BMGenerativeExperiencesTransparencyLog *)self modelVersion];
  useCase = [(BMGenerativeExperiencesTransparencyLog *)self useCase];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGenerativeExperiencesTransparencyLog errorCode](self, "errorCode")}];
  clientIdentifier = [(BMGenerativeExperiencesTransparencyLog *)self clientIdentifier];
  v11 = BMGenerativeExperiencesTransparencyLogExecutionEnvironmentAsString([(BMGenerativeExperiencesTransparencyLog *)self executionEnvironment]);
  v12 = [v15 initWithFormat:@"BMGenerativeExperiencesTransparencyLog with timestamp: %@, identifier: %@, prompt: %@, response: %@, model: %@, modelVersion: %@, useCase: %@, errorCode: %@, clientIdentifier: %@, executionEnvironment: %@", timestamp, identifier, prompt, response, model, modelVersion, useCase, v9, clientIdentifier, v11];

  return v12;
}

- (BMGenerativeExperiencesTransparencyLog)initWithTimestamp:(id)timestamp identifier:(id)identifier prompt:(id)prompt response:(id)response model:(id)model modelVersion:(id)version useCase:(id)case errorCode:(id)self0 clientIdentifier:(id)self1 executionEnvironment:(int)self2
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
  promptCopy = prompt;
  responseCopy = response;
  modelCopy = model;
  versionCopy = version;
  caseCopy = case;
  codeCopy = code;
  clientIdentifierCopy = clientIdentifier;
  v31.receiver = self;
  v31.super_class = BMGenerativeExperiencesTransparencyLog;
  v20 = [(BMEventBase *)&v31 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v20->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_timestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_timestamp = v21;
    objc_storeStrong(&v20->_identifier, identifier);
    objc_storeStrong(&v20->_prompt, prompt);
    objc_storeStrong(&v20->_response, response);
    objc_storeStrong(&v20->_model, model);
    objc_storeStrong(&v20->_modelVersion, version);
    objc_storeStrong(&v20->_useCase, case);
    if (codeCopy)
    {
      v20->_hasErrorCode = 1;
      intValue = [codeCopy intValue];
    }

    else
    {
      v20->_hasErrorCode = 0;
      intValue = -1;
    }

    v20->_errorCode = intValue;
    objc_storeStrong(&v20->_clientIdentifier, clientIdentifier);
    v20->_executionEnvironment = environment;
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