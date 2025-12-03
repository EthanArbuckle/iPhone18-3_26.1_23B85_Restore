@interface BMAppContextualActions
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppContextualActions)initWithIdentifier:(id)identifier appName:(id)name actionName:(id)actionName content:(id)content parameter:(id)parameter;
- (BMAppContextualActions)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_contentJSONArray;
- (id)_parameterJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppContextualActions

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"content_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_57270];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"parameter_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_47_57271];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMAppContextualActions *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMAppContextualActions *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    appName = [(BMAppContextualActions *)self appName];
    appName2 = [v5 appName];
    v15 = appName2;
    if (appName == appName2)
    {
    }

    else
    {
      appName3 = [(BMAppContextualActions *)self appName];
      appName4 = [v5 appName];
      v18 = [appName3 isEqual:appName4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    actionName = [(BMAppContextualActions *)self actionName];
    actionName2 = [v5 actionName];
    v21 = actionName2;
    if (actionName == actionName2)
    {
    }

    else
    {
      actionName3 = [(BMAppContextualActions *)self actionName];
      actionName4 = [v5 actionName];
      v24 = [actionName3 isEqual:actionName4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    content = [(BMAppContextualActions *)self content];
    content2 = [v5 content];
    v27 = content2;
    if (content == content2)
    {
    }

    else
    {
      content3 = [(BMAppContextualActions *)self content];
      content4 = [v5 content];
      v30 = [content3 isEqual:content4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    parameter = [(BMAppContextualActions *)self parameter];
    parameter2 = [v5 parameter];
    if (parameter == parameter2)
    {
      v12 = 1;
    }

    else
    {
      parameter3 = [(BMAppContextualActions *)self parameter];
      parameter4 = [v5 parameter];
      v12 = [parameter3 isEqual:parameter4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  identifier = [(BMAppContextualActions *)self identifier];
  appName = [(BMAppContextualActions *)self appName];
  actionName = [(BMAppContextualActions *)self actionName];
  _contentJSONArray = [(BMAppContextualActions *)self _contentJSONArray];
  _parameterJSONArray = [(BMAppContextualActions *)self _parameterJSONArray];
  v18 = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"appName";
  null2 = appName;
  if (!appName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"actionName";
  null3 = actionName;
  if (!actionName)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"content";
  null4 = _contentJSONArray;
  if (!_contentJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"parameter";
  null5 = _parameterJSONArray;
  if (!_parameterJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (_parameterJSONArray)
  {
    if (_contentJSONArray)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (_contentJSONArray)
    {
LABEL_13:
      if (actionName)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (actionName)
  {
LABEL_14:
    if (appName)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (identifier)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!appName)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (identifier)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_parameterJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  parameter = [(BMAppContextualActions *)self parameter];
  v5 = [parameter countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(parameter);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) base64EncodedStringWithOptions:0];
        [v3 addObject:v9];
      }

      v6 = [parameter countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_contentJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  content = [(BMAppContextualActions *)self content];
  v5 = [content countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(content);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) base64EncodedStringWithOptions:0];
        [v3 addObject:v9];
      }

      v6 = [content countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMAppContextualActions)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v107[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v106 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
        v107[0] = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:&v106 count:1];
        v34 = v30;
        v9 = v33;
        v35 = [v34 initWithDomain:v31 code:2 userInfo:v33];
        v8 = 0;
        v36 = 0;
        *error = v35;
        goto LABEL_71;
      }

      v8 = 0;
      v36 = 0;
      goto LABEL_72;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"appName"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v40 = v9;
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v104 = *MEMORY[0x1E696A578];
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appName"];
        v105 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v45 = v41;
        v9 = v40;
        v39 = v43;
        v79 = v44;
        v46 = [v45 initWithDomain:v42 code:2 userInfo:?];
        v32 = 0;
        v36 = 0;
        *error = v46;
        goto LABEL_70;
      }

      v32 = 0;
      v36 = 0;
      goto LABEL_71;
    }

    v78 = v9;
  }

  else
  {
    v78 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"actionName"];
  v77 = v7;
  v75 = v9;
  v79 = v10;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v102 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"actionName"];
        v103 = v12;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v49 = [v47 initWithDomain:v48 code:2 userInfo:v15];
        v39 = 0;
        v36 = 0;
        *error = v49;
        v32 = v78;
        goto LABEL_68;
      }

      v39 = 0;
      v36 = 0;
      v32 = v78;
      goto LABEL_70;
    }

    v74 = v11;
  }

  else
  {
    v74 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"content"];
  null = [MEMORY[0x1E695DFB0] null];
  v14 = [v12 isEqual:null];

  if (v14)
  {
    errorCopy3 = error;
    selfCopy2 = self;
    v73 = dictionaryCopy;

    v12 = 0;
  }

  else
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v36 = 0;
          v32 = v78;
          v39 = v74;
          goto LABEL_69;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v57 = *MEMORY[0x1E698F240];
        v100 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"content"];
        v101 = v15;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v58 = [v55 initWithDomain:v57 code:2 userInfo:v21];
        v36 = 0;
        *errorCopy2 = v58;
        goto LABEL_58;
      }
    }

    errorCopy3 = error;
    selfCopy2 = self;
    v73 = dictionaryCopy;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v12 = v12;
  v16 = [v12 countByEnumeratingWithState:&v84 objects:v99 count:16];
  v71 = v8;
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = v16;
  v18 = *v85;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v85 != v18)
      {
        objc_enumerationMutation(v12);
      }

      v20 = *(*(&v84 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy3)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = *MEMORY[0x1E698F240];
          v97 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"content"];
          v98 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v28 = v24;
          v29 = v25;
LABEL_38:
          dictionaryCopy = v73;
          v39 = v74;
          v8 = v71;
          v32 = v78;
          *errorCopy3 = [v28 initWithDomain:v29 code:2 userInfo:v27];

          v36 = 0;
          v21 = v12;
          goto LABEL_66;
        }

LABEL_41:
        v36 = 0;
        v21 = v12;
        self = selfCopy2;
        dictionaryCopy = v73;
        v8 = v71;
LABEL_58:
        v32 = v78;
        v39 = v74;
        goto LABEL_67;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy3)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v95 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSData", objc_opt_class(), @"content"];
          v96 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v28 = v37;
          v29 = v38;
          goto LABEL_38;
        }

        goto LABEL_41;
      }

      [v15 addObject:v20];
    }

    v17 = [v12 countByEnumeratingWithState:&v84 objects:v99 count:16];
    v8 = v71;
  }

  while (v17);
LABEL_26:

  dictionaryCopy = v73;
  v21 = [v73 objectForKeyedSubscript:@"parameter"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v23 = [v21 isEqual:null2];

  if (v23)
  {

    v21 = 0;
    goto LABEL_46;
  }

  if (v21)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy3)
      {
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = *MEMORY[0x1E698F240];
        v93 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"parameter"];
        v94 = v26;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        *errorCopy3 = [v66 initWithDomain:v67 code:2 userInfo:v68];

        v36 = 0;
        v32 = v78;
        v39 = v74;
        goto LABEL_66;
      }

      v36 = 0;
      self = selfCopy2;
      goto LABEL_58;
    }
  }

LABEL_46:
  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v21 = v21;
  v50 = [v21 countByEnumeratingWithState:&v80 objects:v92 count:16];
  if (!v50)
  {
    goto LABEL_55;
  }

  v51 = v50;
  v52 = *v81;
  while (2)
  {
    v53 = 0;
    while (2)
    {
      if (*v81 != v52)
      {
        objc_enumerationMutation(v21);
      }

      v54 = *(*(&v80 + 1) + 8 * v53);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionaryCopy = v73;
        v39 = v74;
        v8 = v71;
        v32 = v78;
        if (errorCopy3)
        {
          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v90 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"parameter"];
          v91 = v59;
          v60 = MEMORY[0x1E695DF20];
          v61 = &v91;
          v62 = &v90;
LABEL_64:
          v63 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:1];
          *errorCopy3 = [v70 initWithDomain:v69 code:2 userInfo:v63];
        }

LABEL_65:

        v36 = 0;
        goto LABEL_66;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dictionaryCopy = v73;
        v39 = v74;
        v8 = v71;
        v32 = v78;
        if (errorCopy3)
        {
          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v88 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSData", objc_opt_class(), @"parameter"];
          v89 = v59;
          v60 = MEMORY[0x1E695DF20];
          v61 = &v89;
          v62 = &v88;
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      [v26 addObject:v54];
      if (v51 != ++v53)
      {
        continue;
      }

      break;
    }

    v51 = [v21 countByEnumeratingWithState:&v80 objects:v92 count:16];
    if (v51)
    {
      continue;
    }

    break;
  }

LABEL_55:

  v8 = v71;
  v32 = v78;
  v39 = v74;
  v36 = [(BMAppContextualActions *)selfCopy2 initWithIdentifier:v71 appName:v78 actionName:v74 content:v15 parameter:v26];
  selfCopy2 = v36;
  dictionaryCopy = v73;
LABEL_66:

  self = selfCopy2;
LABEL_67:

LABEL_68:
  v9 = v75;
LABEL_69:

  v7 = v77;
LABEL_70:

LABEL_71:
LABEL_72:

  v64 = *MEMORY[0x1E69E9840];
  return v36;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppContextualActions *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_actionName)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_content;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_parameter;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteDataField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMAppContextualActions;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v33 = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v33 & 0x7F) << v9;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) <= 2)
      {
        if (v17 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 24;
LABEL_32:
          v19 = *(&v5->super.super.isa + v22);
          *(&v5->super.super.isa + v22) = v21;
          goto LABEL_33;
        }

        if (v17 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 32;
          goto LABEL_32;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 40;
            goto LABEL_32;
          case 4:
            v23 = PBReaderReadData();
            if (!v23)
            {
              goto LABEL_37;
            }

            v19 = v23;
            v20 = v6;
LABEL_30:
            [v20 addObject:v19];
LABEL_33:

            goto LABEL_34;
          case 5:
            v18 = PBReaderReadData();
            if (!v18)
            {
              goto LABEL_37;
            }

            v19 = v18;
            v20 = v7;
            goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_37:

        goto LABEL_39;
      }

LABEL_34:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v25 = [v6 copy];
  content = v5->_content;
  v5->_content = v25;

  v27 = [v7 copy];
  parameter = v5->_parameter;
  v5->_parameter = v27;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_39:
    v30 = 0;
  }

  else
  {
LABEL_40:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMAppContextualActions *)self identifier];
  appName = [(BMAppContextualActions *)self appName];
  actionName = [(BMAppContextualActions *)self actionName];
  content = [(BMAppContextualActions *)self content];
  parameter = [(BMAppContextualActions *)self parameter];
  v9 = [v3 initWithFormat:@"BMAppContextualActions with identifier: %@, appName: %@, actionName: %@, content: %@, parameter: %@", identifier, appName, actionName, content, parameter];

  return v9;
}

- (BMAppContextualActions)initWithIdentifier:(id)identifier appName:(id)name actionName:(id)actionName content:(id)content parameter:(id)parameter
{
  identifierCopy = identifier;
  nameCopy = name;
  actionNameCopy = actionName;
  contentCopy = content;
  parameterCopy = parameter;
  v20.receiver = self;
  v20.super_class = BMAppContextualActions;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v17->_appName, name);
    objc_storeStrong(&v17->_actionName, actionName);
    objc_storeStrong(&v17->_content, content);
    objc_storeStrong(&v17->_parameter, parameter);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appName" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionName" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"content" number:4 type:14 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parameter" number:5 type:14 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __33__BMAppContextualActions_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _parameterJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __33__BMAppContextualActions_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _contentJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMAppContextualActions alloc] initByReadFrom:v6];
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