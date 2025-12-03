@interface BMASRContextualReplayRecord
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMASRContextualReplayRecord)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMASRContextualReplayRecord)initWithMetadata:(id)metadata audio:(id)audio preITNTranscript:(id)transcript postITNTranscript:(id)nTranscript profile:(id)profile contextualEntities:(id)entities userEditedText:(id)text;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_contextualEntitiesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMASRContextualReplayRecord

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_235_104301];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"audio" dataType:4 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"preITNTranscript" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"postITNTranscript" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"profile" dataType:4 requestOnly:0 fieldNumber:5 protoDataType:14 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contextualEntities_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_237];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userEditedText" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    metadata = [(BMASRContextualReplayRecord *)self metadata];
    metadata2 = [v5 metadata];
    v8 = metadata2;
    if (metadata == metadata2)
    {
    }

    else
    {
      metadata3 = [(BMASRContextualReplayRecord *)self metadata];
      metadata4 = [v5 metadata];
      v11 = [metadata3 isEqual:metadata4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    audio = [(BMASRContextualReplayRecord *)self audio];
    audio2 = [v5 audio];
    v15 = audio2;
    if (audio == audio2)
    {
    }

    else
    {
      audio3 = [(BMASRContextualReplayRecord *)self audio];
      audio4 = [v5 audio];
      v18 = [audio3 isEqual:audio4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    preITNTranscript = [(BMASRContextualReplayRecord *)self preITNTranscript];
    preITNTranscript2 = [v5 preITNTranscript];
    v21 = preITNTranscript2;
    if (preITNTranscript == preITNTranscript2)
    {
    }

    else
    {
      preITNTranscript3 = [(BMASRContextualReplayRecord *)self preITNTranscript];
      preITNTranscript4 = [v5 preITNTranscript];
      v24 = [preITNTranscript3 isEqual:preITNTranscript4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    postITNTranscript = [(BMASRContextualReplayRecord *)self postITNTranscript];
    postITNTranscript2 = [v5 postITNTranscript];
    v27 = postITNTranscript2;
    if (postITNTranscript == postITNTranscript2)
    {
    }

    else
    {
      postITNTranscript3 = [(BMASRContextualReplayRecord *)self postITNTranscript];
      postITNTranscript4 = [v5 postITNTranscript];
      v30 = [postITNTranscript3 isEqual:postITNTranscript4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    profile = [(BMASRContextualReplayRecord *)self profile];
    profile2 = [v5 profile];
    v33 = profile2;
    if (profile == profile2)
    {
    }

    else
    {
      profile3 = [(BMASRContextualReplayRecord *)self profile];
      profile4 = [v5 profile];
      v36 = [profile3 isEqual:profile4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    contextualEntities = [(BMASRContextualReplayRecord *)self contextualEntities];
    contextualEntities2 = [v5 contextualEntities];
    v39 = contextualEntities2;
    if (contextualEntities == contextualEntities2)
    {
    }

    else
    {
      contextualEntities3 = [(BMASRContextualReplayRecord *)self contextualEntities];
      contextualEntities4 = [v5 contextualEntities];
      v42 = [contextualEntities3 isEqual:contextualEntities4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    userEditedText = [(BMASRContextualReplayRecord *)self userEditedText];
    userEditedText2 = [v5 userEditedText];
    if (userEditedText == userEditedText2)
    {
      v12 = 1;
    }

    else
    {
      userEditedText3 = [(BMASRContextualReplayRecord *)self userEditedText];
      userEditedText4 = [v5 userEditedText];
      v12 = [userEditedText3 isEqual:userEditedText4];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)jsonDictionary
{
  v29[7] = *MEMORY[0x1E69E9840];
  metadata = [(BMASRContextualReplayRecord *)self metadata];
  jsonDictionary = [metadata jsonDictionary];

  audio = [(BMASRContextualReplayRecord *)self audio];
  v6 = [audio base64EncodedStringWithOptions:0];

  preITNTranscript = [(BMASRContextualReplayRecord *)self preITNTranscript];
  postITNTranscript = [(BMASRContextualReplayRecord *)self postITNTranscript];
  profile = [(BMASRContextualReplayRecord *)self profile];
  v10 = [profile base64EncodedStringWithOptions:0];

  _contextualEntitiesJSONArray = [(BMASRContextualReplayRecord *)self _contextualEntitiesJSONArray];
  userEditedText = [(BMASRContextualReplayRecord *)self userEditedText];
  v28[0] = @"metadata";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v29[0] = null;
  v28[1] = @"audio";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v29[1] = null2;
  v28[2] = @"preITNTranscript";
  null3 = preITNTranscript;
  if (!preITNTranscript)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = jsonDictionary;
  v23 = null3;
  v29[2] = null3;
  v28[3] = @"postITNTranscript";
  null4 = postITNTranscript;
  if (!postITNTranscript)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v6;
  v29[3] = null4;
  v28[4] = @"profile";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = null5;
  v28[5] = @"contextualEntities";
  null6 = _contextualEntitiesJSONArray;
  if (!_contextualEntitiesJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v28[6] = @"userEditedText";
  null7 = userEditedText;
  if (!userEditedText)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null7;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];
  if (userEditedText)
  {
    if (_contextualEntitiesJSONArray)
    {
      goto LABEL_17;
    }

LABEL_27:

    if (v10)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (!_contextualEntitiesJSONArray)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v10)
  {
    goto LABEL_18;
  }

LABEL_28:

LABEL_18:
  if (!postITNTranscript)
  {
  }

  if (preITNTranscript)
  {
    if (v26)
    {
      goto LABEL_22;
    }

LABEL_30:

    if (v27)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (!v26)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (v27)
  {
    goto LABEL_23;
  }

LABEL_31:

LABEL_23:
  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_contextualEntitiesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contextualEntities = [(BMASRContextualReplayRecord *)self contextualEntities];
  v5 = [contextualEntities countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(contextualEntities);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [contextualEntities countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMASRContextualReplayRecord)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v115[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v32 = *MEMORY[0x1E698F240];
        v114 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
        v115[0] = v8;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:&v114 count:1];
        v34 = v30;
        v10 = v33;
        selfCopy4 = 0;
        *errorCopy = [v34 initWithDomain:v32 code:2 userInfo:v33];
        goto LABEL_86;
      }

      selfCopy4 = 0;
      goto LABEL_87;
    }

    v10 = v7;
    v92 = 0;
    v8 = [[BMASRContextualReplayRecordRequestMetadata alloc] initWithJSONDictionary:v10 error:&v92];
    v19 = v92;
    if (v19)
    {
      if (error)
      {
        v19 = v19;
        *error = v19;
      }

      selfCopy4 = 0;
      goto LABEL_86;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"audio"];
  errorCopy2 = error;
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
        if (v10)
        {
          goto LABEL_7;
        }

        if (error)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v112 = *MEMORY[0x1E696A578];
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"audio"];
          v113 = v37;
          v38 = MEMORY[0x1E695DF20];
          v39 = &v113;
          v40 = &v112;
LABEL_72:
          v11 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:1];
          v63 = [v35 initWithDomain:v36 code:2 userInfo:v11];
          v10 = 0;
          selfCopy4 = 0;
          *errorCopy2 = v63;
          goto LABEL_84;
        }
      }

      else if (error)
      {
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v110 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"audio"];
        v111 = v37;
        v38 = MEMORY[0x1E695DF20];
        v39 = &v111;
        v40 = &v110;
        goto LABEL_72;
      }

      v10 = 0;
      selfCopy4 = 0;
      goto LABEL_85;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = [dictionaryCopy objectForKeyedSubscript:@"preITNTranscript"];
  v87 = v8;
  v85 = v10;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v108 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"preITNTranscript"];
        v109 = v28;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
        v51 = v48;
        v10 = v85;
        v52 = v49;
        v53 = v50;
        v37 = 0;
        selfCopy4 = 0;
        *errorCopy2 = [v51 initWithDomain:v52 code:2 userInfo:v50];
        goto LABEL_83;
      }

      v37 = 0;
      selfCopy4 = 0;
      goto LABEL_84;
    }

    v12 = v9;
    v84 = v11;
  }

  else
  {
    v12 = v9;
    v84 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"postITNTranscript"];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v106 = *MEMORY[0x1E696A578];
        v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"postITNTranscript"];
        v107 = v83;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v57 = v55;
        v53 = v13;
        v82 = v56;
        selfCopy4 = 0;
        *errorCopy2 = [v54 initWithDomain:v57 code:2 userInfo:?];
        v37 = v84;
        v9 = v12;
        v28 = 0;
        goto LABEL_82;
      }

      selfCopy4 = 0;
      v37 = v84;
      v53 = v13;
      v9 = v12;
      v28 = 0;
      goto LABEL_83;
    }

    v80 = v13;
  }

  else
  {
    v80 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"profile"];
  v81 = v13;
  v82 = v14;
  if (v14)
  {
    v15 = v14;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      v9 = v12;
      if (objc_opt_isKindOfClass())
      {
        v83 = v15;
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v83 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v15 options:0];
        if (v83)
        {
          goto LABEL_16;
        }

        if (errorCopy2)
        {
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = *MEMORY[0x1E698F240];
          v104 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"profile"];
          v105 = v16;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
          v60 = [v58 initWithDomain:v59 code:2 userInfo:v21];
          v83 = 0;
          selfCopy4 = 0;
          *errorCopy2 = v60;
LABEL_91:
          v28 = v80;
          goto LABEL_80;
        }

        v83 = 0;
        selfCopy4 = 0;
      }

      else
      {
        selfCopy = self;
        v68 = v11;
        if (errorCopy2)
        {
          v69 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v102 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"profile"];
          v103 = v16;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v71 = [v69 initWithDomain:v70 code:2 userInfo:v21];
          v83 = 0;
          selfCopy4 = 0;
          *errorCopy2 = v71;
          v11 = v68;
          self = selfCopy;
          goto LABEL_91;
        }

        v83 = 0;
        selfCopy4 = 0;
        self = selfCopy;
      }

      v37 = v84;
      v28 = v80;
      v53 = v81;
      goto LABEL_82;
    }
  }

  v83 = 0;
  v9 = v12;
LABEL_16:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"contextualEntities"];
  null = [MEMORY[0x1E695DFB0] null];
  v18 = [v16 isEqual:null];

  v79 = v11;
  if (v18)
  {
    v76 = v9;
    selfCopy3 = self;

    v16 = 0;
  }

  else
  {
    if (v16)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = v80;
        if (errorCopy2)
        {
          v78 = objc_alloc(MEMORY[0x1E696ABC0]);
          v61 = *MEMORY[0x1E698F240];
          v100 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"contextualEntities"];
          v101 = v21;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          v62 = [v78 initWithDomain:v61 code:2 userInfo:v29];
          selfCopy4 = 0;
          *errorCopy2 = v62;
          goto LABEL_79;
        }

        selfCopy4 = 0;
        goto LABEL_81;
      }
    }

    v76 = v9;
    selfCopy3 = self;
  }

  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v16 = v16;
  v22 = [v16 countByEnumeratingWithState:&v88 objects:v99 count:16];
  if (!v22)
  {
    goto LABEL_37;
  }

  v23 = v22;
  v24 = *v89;
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v89 != v24)
      {
        objc_enumerationMutation(v16);
      }

      v26 = *(*(&v88 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy2)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v97 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"contextualEntities"];
          v98 = v27;
          v43 = MEMORY[0x1E695DF20];
          v44 = &v98;
          v45 = &v97;
LABEL_56:
          v46 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
          v47 = [v41 initWithDomain:v42 code:2 userInfo:v46];
          v9 = v76;
          self = selfCopy3;
          v28 = v80;
          *errorCopy2 = v47;

          selfCopy4 = 0;
          v29 = v16;
          goto LABEL_78;
        }

LABEL_61:
        selfCopy4 = 0;
        v29 = v16;
        v9 = v76;
        self = selfCopy3;
        v28 = v80;
        goto LABEL_79;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy2)
        {
          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v95 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contextualEntities"];
          v96 = v27;
          v43 = MEMORY[0x1E695DF20];
          v44 = &v96;
          v45 = &v95;
          goto LABEL_56;
        }

        goto LABEL_61;
      }

      [v21 addObject:v26];
    }

    v23 = [v16 countByEnumeratingWithState:&v88 objects:v99 count:16];
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_37:

  v27 = [dictionaryCopy objectForKeyedSubscript:@"userEditedText"];
  if (!v27)
  {
    v29 = 0;
    v9 = v76;
    self = selfCopy3;
    v64 = v87;
    v28 = v80;
    goto LABEL_77;
  }

  objc_opt_class();
  v9 = v76;
  self = selfCopy3;
  v28 = v80;
  if (objc_opt_isKindOfClass())
  {
    v29 = 0;
    goto LABEL_76;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v27;
LABEL_76:
    v64 = v87;
LABEL_77:
    self = [(BMASRContextualReplayRecord *)self initWithMetadata:v64 audio:v85 preITNTranscript:v84 postITNTranscript:v28 profile:v83 contextualEntities:v21 userEditedText:v29];
    selfCopy4 = self;
  }

  else
  {
    if (errorCopy2)
    {
      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
      v74 = *MEMORY[0x1E698F240];
      v93 = *MEMORY[0x1E696A578];
      v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userEditedText"];
      v94 = v72;
      v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      *errorCopy2 = [v75 initWithDomain:v74 code:2 userInfo:v73];
    }

    v29 = 0;
    selfCopy4 = 0;
  }

LABEL_78:

LABEL_79:
  v11 = v79;
LABEL_80:

LABEL_81:
  v53 = v81;

  v37 = v84;
LABEL_82:

  v10 = v85;
LABEL_83:

  v8 = v87;
LABEL_84:

LABEL_85:
LABEL_86:

LABEL_87:
  v65 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMASRContextualReplayRecord *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_metadata)
  {
    v16 = 0;
    PBDataWriterPlaceMark();
    [(BMASRContextualReplayRecordRequestMetadata *)self->_metadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_audio)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_preITNTranscript)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postITNTranscript)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_profile)
  {
    PBDataWriterWriteDataField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_contextualEntities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_userEditedText)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v30.receiver = self;
  v30.super_class = BMASRContextualReplayRecord;
  v5 = [(BMEventBase *)&v30 init];
  if (!v5)
  {
    goto LABEL_43;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v31 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v31[0] & 0x7F) << v8;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        if (v16 != 1)
        {
          if (v16 == 2)
          {
            v17 = PBReaderReadData();
            v18 = 32;
            goto LABEL_39;
          }

          if (v16 == 3)
          {
            v17 = PBReaderReadString();
            v18 = 40;
            goto LABEL_39;
          }

          goto LABEL_33;
        }

        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || (v19 = [[BMASRContextualReplayRecordRequestMetadata alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_45:

          goto LABEL_42;
        }

        metadata = v5->_metadata;
        v5->_metadata = v19;

        PBReaderRecallMark();
      }

      else
      {
        if (v16 <= 5)
        {
          if (v16 == 4)
          {
            v17 = PBReaderReadString();
            v18 = 48;
            goto LABEL_39;
          }

          if (v16 == 5)
          {
            v17 = PBReaderReadData();
            v18 = 56;
LABEL_39:
            v23 = *(&v5->super.super.isa + v18);
            *(&v5->super.super.isa + v18) = v17;

            goto LABEL_40;
          }

          goto LABEL_33;
        }

        if (v16 != 6)
        {
          if (v16 == 7)
          {
            v17 = PBReaderReadString();
            v18 = 72;
            goto LABEL_39;
          }

LABEL_33:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        }

        v21 = PBReaderReadString();
        if (!v21)
        {
          goto LABEL_45;
        }

        v22 = v21;
        [v6 addObject:v21];
      }

LABEL_40:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v25 = [v6 copy];
  contextualEntities = v5->_contextualEntities;
  v5->_contextualEntities = v25;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_42:
    v28 = 0;
  }

  else
  {
LABEL_43:
    v28 = v5;
  }

  return v28;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  metadata = [(BMASRContextualReplayRecord *)self metadata];
  audio = [(BMASRContextualReplayRecord *)self audio];
  preITNTranscript = [(BMASRContextualReplayRecord *)self preITNTranscript];
  postITNTranscript = [(BMASRContextualReplayRecord *)self postITNTranscript];
  profile = [(BMASRContextualReplayRecord *)self profile];
  contextualEntities = [(BMASRContextualReplayRecord *)self contextualEntities];
  userEditedText = [(BMASRContextualReplayRecord *)self userEditedText];
  v11 = [v3 initWithFormat:@"BMASRContextualReplayRecord with metadata: %@, audio: %@, preITNTranscript: %@, postITNTranscript: %@, profile: %@, contextualEntities: %@, userEditedText: %@", metadata, audio, preITNTranscript, postITNTranscript, profile, contextualEntities, userEditedText];

  return v11;
}

- (BMASRContextualReplayRecord)initWithMetadata:(id)metadata audio:(id)audio preITNTranscript:(id)transcript postITNTranscript:(id)nTranscript profile:(id)profile contextualEntities:(id)entities userEditedText:(id)text
{
  metadataCopy = metadata;
  audioCopy = audio;
  transcriptCopy = transcript;
  nTranscriptCopy = nTranscript;
  profileCopy = profile;
  entitiesCopy = entities;
  textCopy = text;
  v25.receiver = self;
  v25.super_class = BMASRContextualReplayRecord;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_metadata, metadata);
    objc_storeStrong(&v18->_audio, audio);
    objc_storeStrong(&v18->_preITNTranscript, transcript);
    objc_storeStrong(&v18->_postITNTranscript, nTranscript);
    objc_storeStrong(&v18->_profile, profile);
    objc_storeStrong(&v18->_contextualEntities, entities);
    objc_storeStrong(&v18->_userEditedText, text);
  }

  return v18;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"audio" number:2 type:14 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"preITNTranscript" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"postITNTranscript" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"profile" number:5 type:14 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextualEntities" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userEditedText" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __38__BMASRContextualReplayRecord_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _contextualEntitiesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __38__BMASRContextualReplayRecord_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMASRContextualReplayRecord alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end