@interface BMAppContextualActions
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppContextualActions)initWithIdentifier:(id)a3 appName:(id)a4 actionName:(id)a5 content:(id)a6 parameter:(id)a7;
- (BMAppContextualActions)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_contentJSONArray;
- (id)_parameterJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppContextualActions *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppContextualActions *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMAppContextualActions *)self appName];
    v14 = [v5 appName];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppContextualActions *)self appName];
      v17 = [v5 appName];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMAppContextualActions *)self actionName];
    v20 = [v5 actionName];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMAppContextualActions *)self actionName];
      v23 = [v5 actionName];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMAppContextualActions *)self content];
    v26 = [v5 content];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMAppContextualActions *)self content];
      v29 = [v5 content];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMAppContextualActions *)self parameter];
    v32 = [v5 parameter];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMAppContextualActions *)self parameter];
      v34 = [v5 parameter];
      v12 = [v33 isEqual:v34];
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
  v3 = [(BMAppContextualActions *)self identifier];
  v4 = [(BMAppContextualActions *)self appName];
  v5 = [(BMAppContextualActions *)self actionName];
  v6 = [(BMAppContextualActions *)self _contentJSONArray];
  v7 = [(BMAppContextualActions *)self _parameterJSONArray];
  v18 = @"identifier";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"appName";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"actionName";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"content";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"parameter";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
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
  v4 = [(BMAppContextualActions *)self parameter];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) base64EncodedStringWithOptions:0];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v4 = [(BMAppContextualActions *)self content];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) base64EncodedStringWithOptions:0];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMAppContextualActions)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v107[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = v35;
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

  v9 = [v6 objectForKeyedSubscript:@"appName"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = v46;
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

  v10 = [v6 objectForKeyedSubscript:@"actionName"];
  v77 = v7;
  v75 = v9;
  v79 = v10;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
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
        *a4 = v49;
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

  v12 = [v6 objectForKeyedSubscript:@"content"];
  v13 = [MEMORY[0x1E695DFB0] null];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v76 = a4;
    v72 = self;
    v73 = v6;

    v12 = 0;
  }

  else
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v36 = 0;
          v32 = v78;
          v39 = v74;
          goto LABEL_69;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = a4;
        v57 = *MEMORY[0x1E698F240];
        v100 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"content"];
        v101 = v15;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v58 = [v55 initWithDomain:v57 code:2 userInfo:v21];
        v36 = 0;
        *v56 = v58;
        goto LABEL_58;
      }
    }

    v76 = a4;
    v72 = self;
    v73 = v6;
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
        if (v76)
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
          v6 = v73;
          v39 = v74;
          v8 = v71;
          v32 = v78;
          *v76 = [v28 initWithDomain:v29 code:2 userInfo:v27];

          v36 = 0;
          v21 = v12;
          goto LABEL_66;
        }

LABEL_41:
        v36 = 0;
        v21 = v12;
        self = v72;
        v6 = v73;
        v8 = v71;
LABEL_58:
        v32 = v78;
        v39 = v74;
        goto LABEL_67;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v76)
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

  v6 = v73;
  v21 = [v73 objectForKeyedSubscript:@"parameter"];
  v22 = [MEMORY[0x1E695DFB0] null];
  v23 = [v21 isEqual:v22];

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
      if (v76)
      {
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = *MEMORY[0x1E698F240];
        v93 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"parameter"];
        v94 = v26;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        *v76 = [v66 initWithDomain:v67 code:2 userInfo:v68];

        v36 = 0;
        v32 = v78;
        v39 = v74;
        goto LABEL_66;
      }

      v36 = 0;
      self = v72;
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
        v6 = v73;
        v39 = v74;
        v8 = v71;
        v32 = v78;
        if (v76)
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
          *v76 = [v70 initWithDomain:v69 code:2 userInfo:v63];
        }

LABEL_65:

        v36 = 0;
        goto LABEL_66;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = v73;
        v39 = v74;
        v8 = v71;
        v32 = v78;
        if (v76)
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
  v36 = [(BMAppContextualActions *)v72 initWithIdentifier:v71 appName:v78 actionName:v74 content:v15 parameter:v26];
  v72 = v36;
  v6 = v73;
LABEL_66:

  self = v72;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMAppContextualActions;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v33 = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
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
      v24 = [v4 position];
    }

    while (v24 < [v4 length]);
  }

  v25 = [v6 copy];
  content = v5->_content;
  v5->_content = v25;

  v27 = [v7 copy];
  parameter = v5->_parameter;
  v5->_parameter = v27;

  v29 = [v4 hasError];
  if (v29)
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
  v4 = [(BMAppContextualActions *)self identifier];
  v5 = [(BMAppContextualActions *)self appName];
  v6 = [(BMAppContextualActions *)self actionName];
  v7 = [(BMAppContextualActions *)self content];
  v8 = [(BMAppContextualActions *)self parameter];
  v9 = [v3 initWithFormat:@"BMAppContextualActions with identifier: %@, appName: %@, actionName: %@, content: %@, parameter: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMAppContextualActions)initWithIdentifier:(id)a3 appName:(id)a4 actionName:(id)a5 content:(id)a6 parameter:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMAppContextualActions;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v17->_appName, a4);
    objc_storeStrong(&v17->_actionName, a5);
    objc_storeStrong(&v17->_content, a6);
    objc_storeStrong(&v17->_parameter, a7);
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

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