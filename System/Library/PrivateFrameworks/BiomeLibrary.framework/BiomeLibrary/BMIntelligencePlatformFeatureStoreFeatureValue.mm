@interface BMIntelligencePlatformFeatureStoreFeatureValue
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligencePlatformFeatureStoreFeatureValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMIntelligencePlatformFeatureStoreFeatureValue)initWithValue_sequence:(id)a3 value_sequence_shape:(id)a4 value_dictionary:(id)a5 value:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_value_dictionaryJSONArray;
- (id)_value_sequenceJSONArray;
- (id)_value_sequence_shapeJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligencePlatformFeatureStoreFeatureValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence];
    v7 = [v5 value_sequence];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence];
      v10 = [v5 value_sequence];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence_shape];
    v14 = [v5 value_sequence_shape];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence_shape];
      v17 = [v5 value_sequence_shape];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_dictionary];
    v20 = [v5 value_dictionary];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_dictionary];
      v23 = [v5 value_dictionary];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v25 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value];
    v26 = [v5 value];
    if (v25 == v26)
    {
      v12 = 1;
    }

    else
    {
      v27 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value];
      v28 = [v5 value];
      v12 = [v27 isEqual:v28];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self _value_sequenceJSONArray];
  v4 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self _value_sequence_shapeJSONArray];
  v5 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self _value_dictionaryJSONArray];
  v6 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value];
  v7 = [v6 jsonDictionary];

  v15[0] = @"value_sequence";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v8;
  v15[1] = @"value_sequence_shape";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v9;
  v15[2] = @"value_dictionary";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[2] = v10;
  v15[3] = @"value";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  if (v7)
  {
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5)
    {
LABEL_11:
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v3)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_value_dictionaryJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_dictionary];
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

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_value_sequence_shapeJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence_shape];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_value_sequenceJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence];
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

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMIntelligencePlatformFeatureStoreFeatureValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v118[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"value_sequence"];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v77 = self;

    v6 = 0;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v117 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"value_sequence"];
          v118[0] = v80;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:&v117 count:1];
          v28 = 0;
          *a4 = [v37 initWithDomain:v38 code:2 userInfo:v18];
          goto LABEL_83;
        }

        v28 = 0;
        goto LABEL_84;
      }
    }

    v77 = self;
  }

  v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v6 = v6;
  v9 = [v6 countByEnumeratingWithState:&v92 objects:v116 count:16];
  v79 = v5;
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v93;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v93 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v92 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = a4;
        if (a4)
        {
          v22 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v114 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"value_sequence"];
          v115 = v14;
          v24 = MEMORY[0x1E695DF20];
          v25 = &v115;
          v26 = &v114;
          goto LABEL_22;
        }

LABEL_42:
        v28 = 0;
        v18 = v6;
        v5 = v79;
        self = v77;
        goto LABEL_83;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = a4;
        if (!a4)
        {
          goto LABEL_42;
        }

        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v112 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value_sequence"];
        v113 = v14;
        v24 = MEMORY[0x1E695DF20];
        v25 = &v113;
        v26 = &v112;
LABEL_22:
        v27 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
        v28 = 0;
        *v21 = [v22 initWithDomain:v23 code:2 userInfo:v27];
LABEL_26:
        v18 = v6;
        goto LABEL_80;
      }

      v14 = v13;
      v15 = [BMIntelligencePlatformFeatureStoreFeatureValueBasicValue alloc];
      v91 = 0;
      v16 = [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)v15 initWithJSONDictionary:v14 error:&v91];
      v17 = v91;
      if (v17)
      {
        v27 = v17;
        if (a4)
        {
          v29 = v17;
          *a4 = v27;
        }

        v28 = 0;
        goto LABEL_26;
      }

      [v80 addObject:v16];
    }

    v10 = [v6 countByEnumeratingWithState:&v92 objects:v116 count:16];
    v5 = v79;
  }

  while (v10);
LABEL_16:

  v18 = [v5 objectForKeyedSubscript:@"value_sequence_shape"];
  v19 = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:v19];

  if (v20)
  {

    v18 = 0;
    goto LABEL_29;
  }

  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
LABEL_29:
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v18 = v18;
    v30 = [v18 countByEnumeratingWithState:&v87 objects:v109 count:16];
    if (!v30)
    {
LABEL_38:

      v27 = [v79 objectForKeyedSubscript:@"value_dictionary"];
      v35 = [MEMORY[0x1E695DFB0] null];
      v36 = [v27 isEqual:v35];

      if (v36)
      {

        v27 = 0;
      }

      else if (v27)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v68 = objc_alloc(MEMORY[0x1E696ABC0]);
            v69 = *MEMORY[0x1E698F240];
            v103 = *MEMORY[0x1E696A578];
            v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"value_dictionary"];
            v104 = v76;
            v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
            v28 = 0;
            *a4 = [v68 initWithDomain:v69 code:2 userInfo:v45];
            goto LABEL_79;
          }

          v28 = 0;
          goto LABEL_80;
        }
      }

      v76 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v27, "count")}];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v27 = v27;
      v46 = [v27 countByEnumeratingWithState:&v83 objects:v102 count:16];
      if (!v46)
      {
        goto LABEL_62;
      }

      v47 = v46;
      v74 = *v84;
LABEL_54:
      v48 = 0;
      while (1)
      {
        if (*v84 != v74)
        {
          objc_enumerationMutation(v27);
        }

        v49 = *(*(&v83 + 1) + 8 * v48);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v57 = a4;
          if (a4)
          {
            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = *MEMORY[0x1E698F240];
            v98 = *MEMORY[0x1E696A578];
            v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value_dictionary"];
            v99 = v50;
            v60 = MEMORY[0x1E695DF20];
            v61 = &v99;
            v62 = &v98;
            goto LABEL_73;
          }

          goto LABEL_87;
        }

        v50 = v49;
        v51 = [BMIntelligencePlatformFeatureStoreFeatureValueNamedValue alloc];
        v82 = 0;
        v52 = [(BMIntelligencePlatformFeatureStoreFeatureValueNamedValue *)v51 initWithJSONDictionary:v50 error:&v82];
        v53 = v82;
        if (v53)
        {
          v64 = v53;
          if (a4)
          {
            v65 = v53;
            *a4 = v64;
          }

          goto LABEL_77;
        }

        [v76 addObject:v52];

        if (v47 == ++v48)
        {
          v47 = [v27 countByEnumeratingWithState:&v83 objects:v102 count:16];
          if (v47)
          {
            goto LABEL_54;
          }

LABEL_62:

          v45 = [v79 objectForKeyedSubscript:@"value"];
          if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v50 = 0;
            goto LABEL_65;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v70 = v45;
            v81 = 0;
            v50 = [[BMIntelligencePlatformFeatureStoreFeatureValueBasicValue alloc] initWithJSONDictionary:v70 error:&v81];
            v71 = v81;
            if (v71)
            {
              if (a4)
              {
                v71 = v71;
                *a4 = v71;
              }

              v28 = 0;
              v45 = v70;
            }

            else
            {

LABEL_65:
              v28 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)v77 initWithValue_sequence:v80 value_sequence_shape:v14 value_dictionary:v76 value:v50];
              v77 = v28;
            }

LABEL_78:
          }

          else
          {
            if (a4)
            {
              v75 = objc_alloc(MEMORY[0x1E696ABC0]);
              v72 = *MEMORY[0x1E698F240];
              v96 = *MEMORY[0x1E696A578];
              v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"value"];
              v97 = v50;
              v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
              *a4 = [v75 initWithDomain:v72 code:2 userInfo:v73];

              v28 = 0;
              goto LABEL_78;
            }

            v28 = 0;
          }

LABEL_79:

LABEL_80:
          self = v77;
LABEL_81:

          goto LABEL_82;
        }
      }

      v57 = a4;
      if (a4)
      {
        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v59 = *MEMORY[0x1E698F240];
        v100 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"value_dictionary"];
        v101 = v50;
        v60 = MEMORY[0x1E695DF20];
        v61 = &v101;
        v62 = &v100;
LABEL_73:
        v63 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:1];
        *v57 = [v58 initWithDomain:v59 code:2 userInfo:v63];

LABEL_77:
        v28 = 0;
        v45 = v27;
        goto LABEL_78;
      }

LABEL_87:
      v28 = 0;
      v45 = v27;
      goto LABEL_79;
    }

    v31 = v30;
    v32 = *v88;
LABEL_31:
    v33 = 0;
    while (1)
    {
      if (*v88 != v32)
      {
        objc_enumerationMutation(v18);
      }

      v34 = *(*(&v87 + 1) + 8 * v33);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v39 = a4;
        if (a4)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v41 = *MEMORY[0x1E698F240];
          v105 = *MEMORY[0x1E696A578];
          v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"value_sequence_shape"];
          v106 = v76;
          v42 = MEMORY[0x1E695DF20];
          v43 = &v106;
          v44 = &v105;
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      [v14 addObject:v34];
      if (v31 == ++v33)
      {
        v31 = [v18 countByEnumeratingWithState:&v87 objects:v109 count:16];
        if (!v31)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }
    }

    v39 = a4;
    if (a4)
    {
      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E698F240];
      v107 = *MEMORY[0x1E696A578];
      v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"value_sequence_shape"];
      v108 = v76;
      v42 = MEMORY[0x1E695DF20];
      v43 = &v108;
      v44 = &v107;
LABEL_47:
      v45 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
      v28 = 0;
      *v39 = [v40 initWithDomain:v41 code:2 userInfo:v45];
      v27 = v18;
      goto LABEL_79;
    }

LABEL_48:
    v28 = 0;
    v27 = v18;
    goto LABEL_80;
  }

  self = v77;
  if (a4)
  {
    v54 = objc_alloc(MEMORY[0x1E696ABC0]);
    v55 = *MEMORY[0x1E698F240];
    v110 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"value_sequence_shape"];
    v111 = v14;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v56 = [v54 initWithDomain:v55 code:2 userInfo:v27];
    v28 = 0;
    *a4 = v56;
    goto LABEL_81;
  }

  v28 = 0;
LABEL_82:
  v5 = v79;
LABEL_83:

LABEL_84:
  v66 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformFeatureStoreFeatureValue *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_value_sequence;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v31 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_value_sequence_shape;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v27 + 1) + 8 * v15) intValue];
        PBDataWriterWriteInt32Field();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v13);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_value_dictionary;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * v20);
        v31 = 0;
        PBDataWriterPlaceMark();
        [v21 writeTo:{v4, v23}];
        PBDataWriterRecallMark();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v36 count:16];
    }

    while (v18);
  }

  if (self->_value)
  {
    v31 = 0;
    PBDataWriterPlaceMark();
    [(BMIntelligencePlatformFeatureStoreFeatureValueBasicValue *)self->_value writeTo:v4];
    PBDataWriterRecallMark();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = BMIntelligencePlatformFeatureStoreFeatureValue;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_53;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [v4 position];
  if (v9 < [v4 length])
  {
    v10 = off_1E6E85000;
    v48 = v8;
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_52;
      }

      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        LOBYTE(v50) = 0;
        v14 = [v4 position] + 1;
        if (v14 >= [v4 position] && (v15 = objc_msgSend(v4, "position") + 1, v15 <= objc_msgSend(v4, "length")))
        {
          v16 = [v4 data];
          [v16 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v13 |= (v50 & 0x7F) << v11;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v11 += 7;
        v17 = v12++ >= 9;
        if (v17)
        {
          v18 = 0;
          goto LABEL_17;
        }
      }

      v18 = [v4 hasError] ? 0 : v13;
LABEL_17:
      if (([v4 hasError] & 1) != 0 || (v18 & 7) == 4)
      {
        goto LABEL_52;
      }

      v19 = v18 >> 3;
      if ((v18 >> 3) <= 2)
      {
        break;
      }

      if (v19 == 3)
      {
        v50 = 0;
        v51 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_54;
        }

        v36 = [[BMIntelligencePlatformFeatureStoreFeatureValueNamedValue alloc] initByReadFrom:v4];
        if (!v36)
        {
          goto LABEL_54;
        }

        v34 = v36;
        v35 = v8;
LABEL_44:
        [v35 addObject:v34];
        PBReaderRecallMark();
LABEL_50:

        goto LABEL_51;
      }

      if (v19 != 4)
      {
        goto LABEL_36;
      }

      v50 = 0;
      v51 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_54;
      }

      v31 = [objc_alloc(v10[116]) initByReadFrom:v4];
      if (!v31)
      {
        goto LABEL_54;
      }

      value = v5->_value;
      v5->_value = v31;

      PBReaderRecallMark();
LABEL_51:
      v38 = [v4 position];
      if (v38 >= [v4 length])
      {
        goto LABEL_52;
      }
    }

    if (v19 == 1)
    {
      v50 = 0;
      v51 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_54;
      }

      v33 = [objc_alloc(v10[116]) initByReadFrom:v4];
      if (!v33)
      {
        goto LABEL_54;
      }

      v34 = v33;
      v35 = v6;
      goto LABEL_44;
    }

    if (v19 == 2)
    {
      v20 = v7;
      v21 = v6;
      v22 = v10;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = MEMORY[0x1E696AD98];
      while (1)
      {
        LOBYTE(v50) = 0;
        v27 = [v4 position] + 1;
        if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
        {
          v29 = [v4 data];
          [v29 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v25 |= (v50 & 0x7F) << v23;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v17 = v24++ >= 9;
        if (v17)
        {
          v30 = 0;
          goto LABEL_48;
        }
      }

      if ([v4 hasError])
      {
        v30 = 0;
      }

      else
      {
        v30 = v25;
      }

LABEL_48:
      v37 = [v26 numberWithInt:v30];
      v10 = v22;
      v6 = v21;
      v7 = v20;
      v8 = v48;
      if (!v37)
      {
LABEL_54:

        goto LABEL_55;
      }

      v34 = v37;
      [v7 addObject:v37];
      goto LABEL_50;
    }

LABEL_36:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_52:
  v39 = [v6 copy];
  value_sequence = v5->_value_sequence;
  v5->_value_sequence = v39;

  v41 = [v7 copy];
  value_sequence_shape = v5->_value_sequence_shape;
  v5->_value_sequence_shape = v41;

  v43 = [v8 copy];
  value_dictionary = v5->_value_dictionary;
  v5->_value_dictionary = v43;

  v45 = [v4 hasError];
  if (v45)
  {
LABEL_55:
    v46 = 0;
  }

  else
  {
LABEL_53:
    v46 = v5;
  }

  return v46;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence];
  v5 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_sequence_shape];
  v6 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value_dictionary];
  v7 = [(BMIntelligencePlatformFeatureStoreFeatureValue *)self value];
  v8 = [v3 initWithFormat:@"BMIntelligencePlatformFeatureStoreFeatureValue with value_sequence: %@, value_sequence_shape: %@, value_dictionary: %@, value: %@", v4, v5, v6, v7];

  return v8;
}

- (BMIntelligencePlatformFeatureStoreFeatureValue)initWithValue_sequence:(id)a3 value_sequence_shape:(id)a4 value_dictionary:(id)a5 value:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = BMIntelligencePlatformFeatureStoreFeatureValue;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_value_sequence, a3);
    objc_storeStrong(&v15->_value_sequence_shape, a4);
    objc_storeStrong(&v15->_value_dictionary, a5);
    objc_storeStrong(&v15->_value, a6);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value_sequence" number:1 type:14 subMessageClass:objc_opt_class()];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value_sequence_shape" number:2 type:2 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value_dictionary" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_sequence_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_226];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_sequence_shape_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_228];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_dictionary_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_230];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"value_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_232];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __57__BMIntelligencePlatformFeatureStoreFeatureValue_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 value];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __57__BMIntelligencePlatformFeatureStoreFeatureValue_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _value_dictionaryJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __57__BMIntelligencePlatformFeatureStoreFeatureValue_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _value_sequence_shapeJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __57__BMIntelligencePlatformFeatureStoreFeatureValue_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _value_sequenceJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMIntelligencePlatformFeatureStoreFeatureValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end