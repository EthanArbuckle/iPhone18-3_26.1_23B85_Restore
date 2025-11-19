@interface BMAppIntentInvocationActionOutputConfirmationActionName
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppIntentInvocationActionOutputConfirmationActionName)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAppIntentInvocationActionOutputConfirmationActionName)initWithType:(int)a3 destructive:(id)a4 acceptLabel:(id)a5 acceptAlternatives:(id)a6 denyLabel:(id)a7 denyAlternatives:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_acceptAlternativesJSONArray;
- (id)_denyAlternativesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppIntentInvocationActionOutputConfirmationActionName

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"destructive" number:2 type:12 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"acceptLabel" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"acceptAlternatives" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"denyLabel" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"denyAlternatives" number:6 type:14 subMessageClass:objc_opt_class()];
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
    v6 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self type];
    if (v6 != [v5 type])
    {
      goto LABEL_19;
    }

    if (-[BMAppIntentInvocationActionOutputConfirmationActionName hasDestructive](self, "hasDestructive") || [v5 hasDestructive])
    {
      if (![(BMAppIntentInvocationActionOutputConfirmationActionName *)self hasDestructive])
      {
        goto LABEL_19;
      }

      if (![v5 hasDestructive])
      {
        goto LABEL_19;
      }

      v7 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self destructive];
      if (v7 != [v5 destructive])
      {
        goto LABEL_19;
      }
    }

    v8 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptLabel];
    v9 = [v5 acceptLabel];
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptLabel];
      v12 = [v5 acceptLabel];
      v13 = [v11 isEqual:v12];

      if (!v13)
      {
        goto LABEL_19;
      }
    }

    v15 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptAlternatives];
    v16 = [v5 acceptAlternatives];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptAlternatives];
      v19 = [v5 acceptAlternatives];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_19;
      }
    }

    v21 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyLabel];
    v22 = [v5 denyLabel];
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      v24 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyLabel];
      v25 = [v5 denyLabel];
      v26 = [v24 isEqual:v25];

      if (!v26)
      {
LABEL_19:
        v14 = 0;
LABEL_20:

        goto LABEL_21;
      }
    }

    v28 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyAlternatives];
    v29 = [v5 denyAlternatives];
    if (v28 == v29)
    {
      v14 = 1;
    }

    else
    {
      v30 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyAlternatives];
      v31 = [v5 denyAlternatives];
      v14 = [v30 isEqual:v31];
    }

    goto LABEL_20;
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (id)jsonDictionary
{
  v25[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocationActionOutputConfirmationActionName type](self, "type")}];
  if ([(BMAppIntentInvocationActionOutputConfirmationActionName *)self hasDestructive])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntentInvocationActionOutputConfirmationActionName destructive](self, "destructive")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptLabel];
  v6 = [v5 jsonDictionary];

  v7 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self _acceptAlternativesJSONArray];
  v8 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyLabel];
  v9 = [v8 jsonDictionary];

  v10 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self _denyAlternativesJSONArray];
  v24[0] = @"type";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v25[0] = v11;
  v24[1] = @"destructive";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v25[1] = v12;
  v24[2] = @"acceptLabel";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v3;
  v25[2] = v13;
  v24[3] = @"acceptAlternatives";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v14;
  v24[4] = @"denyLabel";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v15;
  v24[5] = @"denyAlternatives";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (v7)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (v7)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  if (v6)
  {
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_29:

    if (v23)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!v4)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (v23)
  {
    goto LABEL_22;
  }

LABEL_30:

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_denyAlternativesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyAlternatives];
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

- (id)_acceptAlternativesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptAlternatives];
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

- (BMAppIntentInvocationActionOutputConfirmationActionName)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v140[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"type"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v139 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v140[0] = v30;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:&v139 count:1];
          v59 = v56;
          v9 = v58;
          v7 = 0;
          v29 = 0;
          *a4 = [v59 initWithDomain:v57 code:2 userInfo:v58];
          goto LABEL_107;
        }

        v7 = 0;
        v29 = 0;
        goto LABEL_108;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationActionOutputConfirmationActionNameTypeFromString(v6)];
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"destructive"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = a4;
      if (a4)
      {
        v31 = v9;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v137 = *MEMORY[0x1E696A578];
        v34 = v7;
        v35 = objc_alloc(MEMORY[0x1E696AEC0]);
        v91 = objc_opt_class();
        v36 = v35;
        v7 = v34;
        v27 = [v36 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v91, @"destructive"];
        v138 = v27;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
        v38 = v32;
        v9 = v31;
        v104 = v37;
        v30 = 0;
        v29 = 0;
        *a4 = [v38 initWithDomain:v33 code:2 userInfo:?];

        goto LABEL_106;
      }

      v29 = 0;
      goto LABEL_107;
    }

    v102 = v9;
  }

  else
  {
    v102 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:@"acceptLabel"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v99 = self;
    v100 = v9;
    v96 = v6;
    v103 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v29 = 0;
      v30 = v102;
      v27 = v10;
      goto LABEL_106;
    }

    v101 = v9;
    v39 = objc_alloc(MEMORY[0x1E696ABC0]);
    v40 = *MEMORY[0x1E698F240];
    v135 = *MEMORY[0x1E696A578];
    v41 = v7;
    v42 = objc_alloc(MEMORY[0x1E696AEC0]);
    v92 = objc_opt_class();
    v43 = v42;
    v7 = v41;
    v103 = [v43 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v92, @"acceptLabel"];
    v136 = v103;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
    v45 = v39;
    v9 = v101;
    *a4 = [v45 initWithDomain:v40 code:2 userInfo:v44];

    v29 = 0;
    v27 = v10;
LABEL_45:
    v30 = v102;
    goto LABEL_105;
  }

  v27 = v10;
  v118 = 0;
  v103 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initWithJSONDictionary:v27 error:&v118];
  v28 = v118;
  if (v28)
  {
    if (a4)
    {
      v28 = v28;
      *a4 = v28;
    }

    v29 = 0;
    goto LABEL_45;
  }

  v99 = self;
  v100 = v9;
  v96 = v6;

LABEL_15:
  v11 = [v5 objectForKeyedSubscript:@"acceptAlternatives"];
  v12 = [MEMORY[0x1E695DFB0] null];
  v13 = [v11 isEqual:v12];

  v97 = v7;
  v98 = v5;
  v95 = v10;
  if (v13)
  {

    v11 = 0;
  }

  else if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v54 = objc_alloc(MEMORY[0x1E696ABC0]);
        v55 = *MEMORY[0x1E698F240];
        v133 = *MEMORY[0x1E696A578];
        v106 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"acceptAlternatives"];
        v134 = v106;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
        v29 = 0;
        *a4 = [v54 initWithDomain:v55 code:2 userInfo:v23];
        goto LABEL_61;
      }

      v29 = 0;
      v9 = v100;
      v30 = v102;
      goto LABEL_104;
    }
  }

  v106 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v11 = v11;
  v14 = [v11 countByEnumeratingWithState:&v114 objects:v132 count:16];
  if (!v14)
  {
LABEL_29:

    v23 = [v5 objectForKeyedSubscript:@"denyLabel"];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v29 = 0;
          v9 = v100;
          v30 = v102;
          goto LABEL_103;
        }

        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
        v78 = *MEMORY[0x1E698F240];
        v126 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"denyLabel"];
        v127 = v19;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        v29 = 0;
        *a4 = [v77 initWithDomain:v78 code:2 userInfo:v24];
LABEL_55:
        v7 = v97;
        v9 = v100;
        v30 = v102;
        goto LABEL_102;
      }

      v24 = v23;
      v75 = [BMAppIntentInvocationStaticDeferredLocalizedString alloc];
      v112 = 0;
      v19 = [(BMAppIntentInvocationStaticDeferredLocalizedString *)v75 initWithJSONDictionary:v24 error:&v112];
      v76 = v112;
      if (v76)
      {
        v9 = v100;
        if (a4)
        {
          v76 = v76;
          *a4 = v76;
        }

        v29 = 0;
        v23 = v24;
        v30 = v102;
        goto LABEL_102;
      }
    }

    else
    {
      v19 = 0;
    }

    v24 = [v5 objectForKeyedSubscript:@"denyAlternatives"];
    v25 = [MEMORY[0x1E695DFB0] null];
    v26 = [v24 isEqual:v25];

    v93 = v23;
    if (v26)
    {

      v24 = 0;
LABEL_66:
      v7 = v97;
      goto LABEL_67;
    }

    if (!v24)
    {
      goto LABEL_66;
    }

    objc_opt_class();
    v7 = v97;
    if (objc_opt_isKindOfClass())
    {
LABEL_67:
      v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v24 = v24;
      v66 = [v24 countByEnumeratingWithState:&v108 objects:v123 count:16];
      if (!v66)
      {
        goto LABEL_77;
      }

      v67 = v66;
      v68 = *v109;
      v94 = v65;
LABEL_69:
      v69 = 0;
      while (1)
      {
        if (*v109 != v68)
        {
          objc_enumerationMutation(v24);
        }

        v70 = *(*(&v108 + 1) + 8 * v69);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v5 = v98;
          v9 = v100;
          v30 = v102;
          v79 = a4;
          if (!a4)
          {
            goto LABEL_99;
          }

          v80 = v100;
          v81 = objc_alloc(MEMORY[0x1E696ABC0]);
          v82 = *MEMORY[0x1E698F240];
          v119 = *MEMORY[0x1E696A578];
          v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"denyAlternatives"];
          v120 = v71;
          v83 = MEMORY[0x1E695DF20];
          v84 = &v120;
          v85 = &v119;
          goto LABEL_94;
        }

        v71 = v70;
        v72 = [BMAppIntentInvocationStaticDeferredLocalizedString alloc];
        v107 = 0;
        v73 = [(BMAppIntentInvocationStaticDeferredLocalizedString *)v72 initWithJSONDictionary:v71 error:&v107];
        v74 = v107;
        if (v74)
        {
          v86 = v74;
          if (a4)
          {
            v88 = v74;
            *a4 = v86;
          }

          v5 = v98;
          v9 = v100;
          v30 = v102;
LABEL_98:

LABEL_99:
          v29 = 0;
          v7 = v97;
          v65 = v94;
          goto LABEL_100;
        }

        [v94 addObject:v73];

        if (v67 == ++v69)
        {
          v67 = [v24 countByEnumeratingWithState:&v108 objects:v123 count:16];
          v7 = v97;
          v65 = v94;
          if (v67)
          {
            goto LABEL_69;
          }

LABEL_77:

          v30 = v102;
          v29 = -[BMAppIntentInvocationActionOutputConfirmationActionName initWithType:destructive:acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:](v99, "initWithType:destructive:acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:", [v7 intValue], v102, v103, v106, v19, v65);
          v99 = v29;
          v5 = v98;
          v9 = v100;
LABEL_100:

          goto LABEL_101;
        }
      }

      v5 = v98;
      v9 = v100;
      v30 = v102;
      v79 = a4;
      if (!a4)
      {
        goto LABEL_99;
      }

      v80 = v100;
      v81 = objc_alloc(MEMORY[0x1E696ABC0]);
      v82 = *MEMORY[0x1E698F240];
      v121 = *MEMORY[0x1E696A578];
      v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"denyAlternatives"];
      v122 = v71;
      v83 = MEMORY[0x1E695DF20];
      v84 = &v122;
      v85 = &v121;
LABEL_94:
      v86 = [v83 dictionaryWithObjects:v84 forKeys:v85 count:1];
      v87 = v81;
      v9 = v80;
      v30 = v102;
      *v79 = [v87 initWithDomain:v82 code:2 userInfo:v86];
      goto LABEL_98;
    }

    if (a4)
    {
      v60 = objc_alloc(MEMORY[0x1E696ABC0]);
      v61 = *MEMORY[0x1E698F240];
      v124 = *MEMORY[0x1E696A578];
      v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"denyAlternatives"];
      v125 = v62;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
      v64 = v61;
      v7 = v97;
      *a4 = [v60 initWithDomain:v64 code:2 userInfo:v63];
      v65 = v62;

      v29 = 0;
      v9 = v100;
      v30 = v102;
      goto LABEL_100;
    }

    v29 = 0;
    v9 = v100;
    v30 = v102;
LABEL_101:
    v23 = v93;
LABEL_102:

    goto LABEL_103;
  }

  v15 = v14;
  v16 = *v115;
LABEL_21:
  v17 = 0;
  while (1)
  {
    if (*v115 != v16)
    {
      objc_enumerationMutation(v11);
    }

    v18 = *(*(&v114 + 1) + 8 * v17);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v47 = a4;
      if (!a4)
      {
        goto LABEL_60;
      }

      v51 = objc_alloc(MEMORY[0x1E696ABC0]);
      v52 = *MEMORY[0x1E698F240];
      v128 = *MEMORY[0x1E696A578];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"acceptAlternatives"];
      v129 = v19;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
      v49 = v51;
      v50 = v52;
LABEL_50:
      v29 = 0;
      *v47 = [v49 initWithDomain:v50 code:2 userInfo:v24];
LABEL_54:
      v23 = v11;
      goto LABEL_55;
    }

    v19 = v18;
    v20 = [BMAppIntentInvocationStaticDeferredLocalizedString alloc];
    v113 = 0;
    v21 = [(BMAppIntentInvocationStaticDeferredLocalizedString *)v20 initWithJSONDictionary:v19 error:&v113];
    v22 = v113;
    if (v22)
    {
      v24 = v22;
      if (a4)
      {
        v53 = v22;
        *a4 = v24;
      }

      v29 = 0;
      goto LABEL_54;
    }

    [v106 addObject:v21];

    if (v15 == ++v17)
    {
      v15 = [v11 countByEnumeratingWithState:&v114 objects:v132 count:16];
      if (!v15)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  if (a4)
  {
    v46 = objc_alloc(MEMORY[0x1E696ABC0]);
    v47 = a4;
    v48 = *MEMORY[0x1E698F240];
    v130 = *MEMORY[0x1E696A578];
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"acceptAlternatives"];
    v131 = v19;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    v49 = v46;
    v50 = v48;
    goto LABEL_50;
  }

LABEL_60:
  v29 = 0;
  v23 = v11;
LABEL_61:
  v9 = v100;
  v30 = v102;
LABEL_103:

LABEL_104:
  v27 = v95;
  v6 = v96;
  self = v99;
LABEL_105:

LABEL_106:
LABEL_107:

LABEL_108:
  v89 = *MEMORY[0x1E69E9840];
  return v29;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationActionOutputConfirmationActionName *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_hasDestructive)
  {
    destructive = self->_destructive;
    PBDataWriterWriteBOOLField();
  }

  if (self->_acceptLabel)
  {
    v28 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationStaticDeferredLocalizedString *)self->_acceptLabel writeTo:v4];
    PBDataWriterRecallMark();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_acceptAlternatives;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v28 = 0;
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }

  if (self->_denyLabel)
  {
    v28 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationStaticDeferredLocalizedString *)self->_denyLabel writeTo:v4];
    PBDataWriterRecallMark();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_denyAlternatives;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        v28 = 0;
        PBDataWriterPlaceMark();
        [v18 writeTo:{v4, v20}];
        PBDataWriterRecallMark();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = BMAppIntentInvocationActionOutputConfirmationActionName;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_67;
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
        LOBYTE(v48) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v11 |= (v48 & 0x7F) << v9;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
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
      if ((v16 >> 3) > 3)
      {
        switch(v17)
        {
          case 4:
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark() || (v30 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:v4]) == 0)
            {
LABEL_68:

              goto LABEL_69;
            }

            v21 = v30;
            v22 = v6;
            goto LABEL_43;
          case 5:
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_68;
            }

            v18 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:v4];
            if (!v18)
            {
              goto LABEL_68;
            }

            v19 = 48;
            goto LABEL_58;
          case 6:
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_68;
            }

            v20 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:v4];
            if (!v20)
            {
              goto LABEL_68;
            }

            v21 = v20;
            v22 = v7;
LABEL_43:
            [v22 addObject:v21];
            PBReaderRecallMark();

            goto LABEL_65;
        }
      }

      else
      {
        switch(v17)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            while (1)
            {
              LOBYTE(v48) = 0;
              v26 = [v4 position] + 1;
              if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
              {
                v28 = [v4 data];
                [v28 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v25 |= (v48 & 0x7F) << v23;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              if (v24++ > 8)
              {
                goto LABEL_61;
              }
            }

            if (([v4 hasError] & 1) != 0 || v25 > 0x22)
            {
LABEL_61:
              LODWORD(v25) = 0;
            }

            v5->_type = v25;
            goto LABEL_65;
          case 2:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v5->_hasDestructive = 1;
            while (1)
            {
              LOBYTE(v48) = 0;
              v34 = [v4 position] + 1;
              if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
              {
                v36 = [v4 data];
                [v36 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v33 |= (v48 & 0x7F) << v31;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v15 = v32++ >= 9;
              if (v15)
              {
                LOBYTE(v37) = 0;
                goto LABEL_64;
              }
            }

            v37 = (v33 != 0) & ~[v4 hasError];
LABEL_64:
            v5->_destructive = v37;
            goto LABEL_65;
          case 3:
            v48 = 0;
            v49 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_68;
            }

            v18 = [[BMAppIntentInvocationStaticDeferredLocalizedString alloc] initByReadFrom:v4];
            if (!v18)
            {
              goto LABEL_68;
            }

            v19 = 32;
LABEL_58:
            v38 = *(&v5->super.super.isa + v19);
            *(&v5->super.super.isa + v19) = v18;

            PBReaderRecallMark();
            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_68;
      }

LABEL_65:
      v39 = [v4 position];
    }

    while (v39 < [v4 length]);
  }

  v40 = [v6 copy];
  acceptAlternatives = v5->_acceptAlternatives;
  v5->_acceptAlternatives = v40;

  v42 = [v7 copy];
  denyAlternatives = v5->_denyAlternatives;
  v5->_denyAlternatives = v42;

  v44 = [v4 hasError];
  if (v44)
  {
LABEL_69:
    v45 = 0;
  }

  else
  {
LABEL_67:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAppIntentInvocationActionOutputConfirmationActionNameTypeAsString([(BMAppIntentInvocationActionOutputConfirmationActionName *)self type]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntentInvocationActionOutputConfirmationActionName destructive](self, "destructive")}];
  v6 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptLabel];
  v7 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self acceptAlternatives];
  v8 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyLabel];
  v9 = [(BMAppIntentInvocationActionOutputConfirmationActionName *)self denyAlternatives];
  v10 = [v3 initWithFormat:@"BMAppIntentInvocationActionOutputConfirmationActionName with type: %@, destructive: %@, acceptLabel: %@, acceptAlternatives: %@, denyLabel: %@, denyAlternatives: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMAppIntentInvocationActionOutputConfirmationActionName)initWithType:(int)a3 destructive:(id)a4 acceptLabel:(id)a5 acceptAlternatives:(id)a6 denyLabel:(id)a7 denyAlternatives:(id)a8
{
  v14 = a4;
  v20 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = BMAppIntentInvocationActionOutputConfirmationActionName;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_type = a3;
    if (v14)
    {
      v18->_hasDestructive = 1;
      v18->_destructive = [v14 BOOLValue];
    }

    else
    {
      v18->_hasDestructive = 0;
      v18->_destructive = 0;
    }

    objc_storeStrong(&v18->_acceptLabel, a5);
    objc_storeStrong(&v18->_acceptAlternatives, a6);
    objc_storeStrong(&v18->_denyLabel, a7);
    objc_storeStrong(&v18->_denyAlternatives, a8);
  }

  return v18;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"destructive" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"acceptLabel_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_891];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"acceptAlternatives_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_893];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"denyLabel_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_895_42229];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"denyAlternatives_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_897];
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

id __66__BMAppIntentInvocationActionOutputConfirmationActionName_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _denyAlternativesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __66__BMAppIntentInvocationActionOutputConfirmationActionName_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 denyLabel];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __66__BMAppIntentInvocationActionOutputConfirmationActionName_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _acceptAlternativesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __66__BMAppIntentInvocationActionOutputConfirmationActionName_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 acceptLabel];
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

    v8 = [[BMAppIntentInvocationActionOutputConfirmationActionName alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end