@interface BMLocalAuthenticationDialogs
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLocalAuthenticationDialogs)initWithDialogID:(id)a3 bundleID:(id)a4 timeSinceUpdate:(id)a5 mechanisms:(id)a6 successfulMechanism:(int)a7 failedMechanisms:(id)a8 actions:(id)a9 failingAction:(int)a10;
- (BMLocalAuthenticationDialogs)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_actionsJSONArray;
- (id)_failedMechanismsJSONArray;
- (id)_mechanismsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLocalAuthenticationDialogs

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMLocalAuthenticationDialogs *)self dialogID];
    v7 = [v5 dialogID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMLocalAuthenticationDialogs *)self dialogID];
      v10 = [v5 dialogID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    v13 = [(BMLocalAuthenticationDialogs *)self bundleID];
    v14 = [v5 bundleID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMLocalAuthenticationDialogs *)self bundleID];
      v17 = [v5 bundleID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    if (-[BMLocalAuthenticationDialogs hasTimeSinceUpdate](self, "hasTimeSinceUpdate") || [v5 hasTimeSinceUpdate])
    {
      if (![(BMLocalAuthenticationDialogs *)self hasTimeSinceUpdate])
      {
        goto LABEL_27;
      }

      if (![v5 hasTimeSinceUpdate])
      {
        goto LABEL_27;
      }

      v19 = [(BMLocalAuthenticationDialogs *)self timeSinceUpdate];
      if (v19 != [v5 timeSinceUpdate])
      {
        goto LABEL_27;
      }
    }

    v20 = [(BMLocalAuthenticationDialogs *)self mechanisms];
    v21 = [v5 mechanisms];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMLocalAuthenticationDialogs *)self mechanisms];
      v24 = [v5 mechanisms];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_27;
      }
    }

    v26 = [(BMLocalAuthenticationDialogs *)self successfulMechanism];
    if (v26 == [v5 successfulMechanism])
    {
      v27 = [(BMLocalAuthenticationDialogs *)self failedMechanisms];
      v28 = [v5 failedMechanisms];
      v29 = v28;
      if (v27 == v28)
      {
      }

      else
      {
        v30 = [(BMLocalAuthenticationDialogs *)self failedMechanisms];
        v31 = [v5 failedMechanisms];
        v32 = [v30 isEqual:v31];

        if (!v32)
        {
          goto LABEL_27;
        }
      }

      v33 = [(BMLocalAuthenticationDialogs *)self actions];
      v34 = [v5 actions];
      v35 = v34;
      if (v33 == v34)
      {
      }

      else
      {
        v36 = [(BMLocalAuthenticationDialogs *)self actions];
        v37 = [v5 actions];
        v38 = [v36 isEqual:v37];

        if (!v38)
        {
          goto LABEL_27;
        }
      }

      v40 = [(BMLocalAuthenticationDialogs *)self failingAction];
      v12 = v40 == [v5 failingAction];
      goto LABEL_28;
    }

LABEL_27:
    v12 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (id)jsonDictionary
{
  v30[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMLocalAuthenticationDialogs *)self dialogID];
  v4 = [(BMLocalAuthenticationDialogs *)self bundleID];
  if ([(BMLocalAuthenticationDialogs *)self hasTimeSinceUpdate])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMLocalAuthenticationDialogs timeSinceUpdate](self, "timeSinceUpdate")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMLocalAuthenticationDialogs *)self _mechanismsJSONArray];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationDialogs successfulMechanism](self, "successfulMechanism")}];
  v8 = [(BMLocalAuthenticationDialogs *)self _failedMechanismsJSONArray];
  v9 = [(BMLocalAuthenticationDialogs *)self _actionsJSONArray];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationDialogs failingAction](self, "failingAction")}];
  v29[0] = @"dialogID";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v11;
  v30[0] = v11;
  v29[1] = @"bundleID";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v12;
  v30[1] = v12;
  v29[2] = @"timeSinceUpdate";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v22 = v13;
  v30[2] = v13;
  v29[3] = @"mechanisms";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v30[3] = v14;
  v29[4] = @"successfulMechanism";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v5;
  v30[4] = v15;
  v29[5] = @"failedMechanisms";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v6;
  v30[5] = v16;
  v29[6] = @"actions";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = v18;
  v29[7] = @"failingAction";
  v19 = v10;
  if (!v10)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v30[7] = v19;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_34:

    if (v8)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  if (!v9)
  {
    goto LABEL_34;
  }

LABEL_22:
  if (v8)
  {
    goto LABEL_23;
  }

LABEL_35:

LABEL_23:
  if (!v7)
  {
  }

  if (!v17)
  {
  }

  if (v26)
  {
    if (v27)
    {
      goto LABEL_29;
    }

LABEL_37:

    if (v28)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!v27)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v28)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:
  v20 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)_actionsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMLocalAuthenticationDialogs *)self actions];
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

- (id)_failedMechanismsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMLocalAuthenticationDialogs *)self failedMechanisms];
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

- (id)_mechanismsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMLocalAuthenticationDialogs *)self mechanisms];
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

- (BMLocalAuthenticationDialogs)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v179[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"dialogID"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v178 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"dialogID"];
        v179[0] = v9;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v179 forKeys:&v178 count:1];
        v35 = v33;
        v8 = v34;
        v7 = 0;
        v36 = 0;
        *a4 = [v32 initWithDomain:v35 code:2 userInfo:v34];
        goto LABEL_133;
      }

      v7 = 0;
      v36 = 0;
      goto LABEL_134;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"bundleID"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = v8;
        v39 = *MEMORY[0x1E698F240];
        v176 = *MEMORY[0x1E696A578];
        v40 = self;
        v41 = objc_alloc(MEMORY[0x1E696AEC0]);
        v117 = objc_opt_class();
        v42 = v41;
        self = v40;
        v12 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v117, @"bundleID"];
        v177 = v12;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v177 forKeys:&v176 count:1];
        v44 = v37;
        v11 = v43;
        v45 = v39;
        v8 = v38;
        v9 = 0;
        v36 = 0;
        *a4 = [v44 initWithDomain:v45 code:2 userInfo:v43];
        goto LABEL_132;
      }

      v9 = 0;
      v36 = 0;
      goto LABEL_133;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 objectForKeyedSubscript:@"timeSinceUpdate"];
  v131 = v7;
  v132 = v10;
  v130 = v6;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = v9;
        v48 = v8;
        v49 = *MEMORY[0x1E698F240];
        v174 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeSinceUpdate"];
        v175 = v13;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
        v50 = v46;
        v11 = v132;
        v51 = v49;
        v8 = v48;
        v9 = v47;
        v12 = 0;
        v36 = 0;
        *a4 = [v50 initWithDomain:v51 code:2 userInfo:v16];
        goto LABEL_130;
      }

      v12 = 0;
      v36 = 0;
      goto LABEL_132;
    }

    v129 = v8;
    v12 = v11;
  }

  else
  {
    v129 = v8;
    v12 = 0;
  }

  v13 = [v5 objectForKeyedSubscript:@"mechanisms"];
  v14 = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    v127 = v12;
    v128 = v9;
    v126 = self;

    v13 = 0;
  }

  else
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v36 = 0;
          v8 = v129;
          v11 = v132;
          goto LABEL_131;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v172 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"mechanisms"];
        v173 = v16;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v173 forKeys:&v172 count:1];
        v57 = [v55 initWithDomain:v56 code:2 userInfo:v54];
        v36 = 0;
        *a4 = v57;
        v8 = v129;
        goto LABEL_50;
      }
    }

    v127 = v12;
    v128 = v9;
    v126 = self;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v13 = v13;
  v17 = [v13 countByEnumeratingWithState:&v145 objects:v171 count:16];
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = v17;
  v19 = *v146;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v146 != v19)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v145 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = a4;
        if (a4)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v169 = *MEMORY[0x1E696A578];
          v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"mechanisms"];
          v170 = v124;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
          v30 = v27;
          v31 = v28;
LABEL_46:
          v133 = v29;
          self = v126;
          v12 = v127;
          v9 = v128;
          v11 = v132;
          v36 = 0;
          *v26 = [v30 initWithDomain:v31 code:2 userInfo:?];
          v54 = v13;
          v8 = v129;

          goto LABEL_128;
        }

LABEL_47:
        v36 = 0;
        v54 = v13;
        v8 = v129;
        self = v126;
        v12 = v127;
        v9 = v128;
LABEL_50:
        v11 = v132;
        goto LABEL_129;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = a4;
          if (a4)
          {
            v52 = objc_alloc(MEMORY[0x1E696ABC0]);
            v53 = *MEMORY[0x1E698F240];
            v167 = *MEMORY[0x1E696A578];
            v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mechanisms"];
            v168 = v124;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
            v30 = v52;
            v31 = v53;
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        v22 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationDialogsMechanismFromString(v21)];
      }

      v23 = v22;
      [v16 addObject:v22];
    }

    v18 = [v13 countByEnumeratingWithState:&v145 objects:v171 count:16];
  }

  while (v18);
LABEL_29:

  v24 = [v5 objectForKeyedSubscript:@"successfulMechanism"];
  v124 = v24;
  if (v24)
  {
    v25 = v24;
    objc_opt_class();
    v11 = v132;
    if (objc_opt_isKindOfClass())
    {
      v122 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v122 = v25;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v101 = objc_alloc(MEMORY[0x1E696ABC0]);
            v102 = *MEMORY[0x1E698F240];
            v165 = *MEMORY[0x1E696A578];
            v103 = objc_alloc(MEMORY[0x1E696AEC0]);
            v118 = objc_opt_class();
            v104 = v103;
            v11 = v132;
            v134 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v118, @"successfulMechanism"];
            v166 = v134;
            v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
            v105 = [v101 initWithDomain:v102 code:2 userInfo:?];
            v54 = 0;
            v36 = 0;
            *a4 = v105;
            self = v126;
            v9 = v128;
            v8 = v129;
            goto LABEL_126;
          }

          v54 = 0;
          v36 = 0;
          self = v126;
          v12 = v127;
          v9 = v128;
          v8 = v129;
          goto LABEL_128;
        }

        v122 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationDialogsMechanismFromString(v25)];
      }
    }
  }

  else
  {
    v122 = 0;
    v11 = v132;
  }

  v58 = [v5 objectForKeyedSubscript:@"failedMechanisms"];
  v59 = [MEMORY[0x1E695DFB0] null];
  v60 = [v58 isEqual:v59];

  if (v60)
  {

    goto LABEL_65;
  }

  v9 = v128;
  if (v58)
  {
    objc_opt_class();
    v134 = v58;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v36 = 0;
        self = v126;
        v12 = v127;
        v8 = v129;
        v54 = v122;
        goto LABEL_127;
      }

      v93 = objc_alloc(MEMORY[0x1E696ABC0]);
      v94 = *MEMORY[0x1E698F240];
      v163 = *MEMORY[0x1E696A578];
      v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"failedMechanisms"];
      v164 = v136;
      obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
      v36 = 0;
      *a4 = [v93 initWithDomain:v94 code:2 userInfo:?];
      self = v126;
      v8 = v129;
      goto LABEL_106;
    }

    v61 = v58;
  }

  else
  {
LABEL_65:
    v61 = 0;
  }

  v136 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v61, "count")}];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v62 = v61;
  v63 = [v62 countByEnumeratingWithState:&v141 objects:v162 count:16];
  v134 = v62;
  if (!v63)
  {
    goto LABEL_78;
  }

  v64 = v63;
  v65 = *v142;
  while (2)
  {
    v66 = 0;
    while (2)
    {
      if (*v142 != v65)
      {
        objc_enumerationMutation(v62);
      }

      v67 = *(*(&v141 + 1) + 8 * v66);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v76 = a4;
        if (a4)
        {
          v77 = objc_alloc(MEMORY[0x1E696ABC0]);
          v78 = *MEMORY[0x1E698F240];
          v160 = *MEMORY[0x1E696A578];
          v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"failedMechanisms"];
          v161 = v125;
          v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1];
          v80 = v77;
          goto LABEL_84;
        }

LABEL_85:
        v36 = 0;
        obj = v62;
        v8 = v129;
        self = v126;
        v9 = v128;
LABEL_86:
        v11 = v132;
LABEL_106:
        v54 = v122;
        goto LABEL_125;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v68 = v67;
        goto LABEL_76;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v76 = a4;
        if (!a4)
        {
          goto LABEL_85;
        }

        v81 = objc_alloc(MEMORY[0x1E696ABC0]);
        v78 = *MEMORY[0x1E698F240];
        v158 = *MEMORY[0x1E696A578];
        v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"failedMechanisms"];
        v159 = v125;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
        v80 = v81;
LABEL_84:
        v9 = v128;
        v8 = v129;
        v11 = v132;
        v82 = [v80 initWithDomain:v78 code:2 userInfo:v79];
        v36 = 0;
        *v76 = v82;
        obj = v134;
        self = v126;
LABEL_119:
        v54 = v122;
        goto LABEL_124;
      }

      v69 = MEMORY[0x1E696AD98];
      v70 = BMLocalAuthenticationDialogsMechanismFromString(v67);
      v71 = v69;
      v62 = v134;
      v68 = [v71 numberWithInt:v70];
LABEL_76:
      v72 = v68;
      [v136 addObject:v68];

      if (v64 != ++v66)
      {
        continue;
      }

      break;
    }

    v64 = [v62 countByEnumeratingWithState:&v141 objects:v162 count:16];
    if (v64)
    {
      continue;
    }

    break;
  }

LABEL_78:

  v73 = [v5 objectForKeyedSubscript:@"actions"];
  v74 = [MEMORY[0x1E695DFB0] null];
  v75 = [v73 isEqual:v74];

  if (v75)
  {

    v73 = 0;
    goto LABEL_89;
  }

  if (v73)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v73;
      v9 = v128;
      if (!a4)
      {
        v36 = 0;
        self = v126;
        v8 = v129;
        goto LABEL_86;
      }

      v108 = objc_alloc(MEMORY[0x1E696ABC0]);
      v109 = *MEMORY[0x1E698F240];
      v156 = *MEMORY[0x1E696A578];
      v125 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"actions"];
      v157 = v125;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
      v110 = [v108 initWithDomain:v109 code:2 userInfo:v79];
      v36 = 0;
      *a4 = v110;
      self = v126;
      v8 = v129;
      goto LABEL_118;
    }
  }

LABEL_89:
  v125 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v73, "count")}];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v83 = v73;
  v84 = [v83 countByEnumeratingWithState:&v137 objects:v155 count:16];
  obj = v83;
  if (!v84)
  {
    goto LABEL_101;
  }

  v85 = v84;
  v86 = *v138;
  while (2)
  {
    v87 = 0;
    while (2)
    {
      if (*v138 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v88 = *(*(&v137 + 1) + 8 * v87);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v95 = a4;
        if (a4)
        {
          v96 = objc_alloc(MEMORY[0x1E696ABC0]);
          v97 = *MEMORY[0x1E698F240];
          v153 = *MEMORY[0x1E696A578];
          v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"actions"];
          v154 = v121;
          v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v154 forKeys:&v153 count:1];
          v99 = v96;
          v100 = v97;
LABEL_114:
          v9 = v128;
          v8 = v129;
          v11 = v132;
          *v95 = [v99 initWithDomain:v100 code:2 userInfo:v98];

          v36 = 0;
          v54 = v122;
          v79 = obj;
          self = v126;
          goto LABEL_123;
        }

        goto LABEL_115;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v89 = v88;
        goto LABEL_99;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v95 = a4;
        if (a4)
        {
          v106 = objc_alloc(MEMORY[0x1E696ABC0]);
          v107 = *MEMORY[0x1E698F240];
          v151 = *MEMORY[0x1E696A578];
          v121 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"actions"];
          v152 = v121;
          v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
          v99 = v106;
          v100 = v107;
          goto LABEL_114;
        }

LABEL_115:
        v36 = 0;
        v79 = obj;
        v8 = v129;
        self = v126;
        v9 = v128;
LABEL_118:
        v11 = v132;
        goto LABEL_119;
      }

      v89 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationDialogsActionFromString(v88)];
LABEL_99:
      v90 = v89;
      [v125 addObject:v89];

      if (v85 != ++v87)
      {
        continue;
      }

      break;
    }

    v83 = obj;
    v85 = [obj countByEnumeratingWithState:&v137 objects:v155 count:16];
    if (v85)
    {
      continue;
    }

    break;
  }

LABEL_101:

  v91 = [v5 objectForKeyedSubscript:@"failingAction"];
  v121 = v91;
  if (v91)
  {
    v92 = v91;
    objc_opt_class();
    v8 = v129;
    v11 = v132;
    if (objc_opt_isKindOfClass())
    {
      v79 = 0;
      v9 = v128;
      goto LABEL_121;
    }

    objc_opt_class();
    v54 = v122;
    if (objc_opt_isKindOfClass())
    {
      v79 = v92;
      v9 = v128;
      goto LABEL_122;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v79 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationDialogsActionFromString(v92)];
      v9 = v128;
      v11 = v132;
      goto LABEL_122;
    }

    if (a4)
    {
      v120 = objc_alloc(MEMORY[0x1E696ABC0]);
      v114 = *MEMORY[0x1E698F240];
      v149 = *MEMORY[0x1E696A578];
      v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"failingAction"];
      v150 = v115;
      v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      *a4 = [v120 initWithDomain:v114 code:2 userInfo:v116];
    }

    v79 = 0;
    v36 = 0;
    self = v126;
    v9 = v128;
    v11 = v132;
  }

  else
  {
    v79 = 0;
    v9 = v128;
    v8 = v129;
    v11 = v132;
LABEL_121:
    v54 = v122;
LABEL_122:
    v111 = [v54 intValue];
    LODWORD(v119) = [v79 intValue];
    self = [(BMLocalAuthenticationDialogs *)v126 initWithDialogID:v131 bundleID:v9 timeSinceUpdate:v127 mechanisms:v16 successfulMechanism:v111 failedMechanisms:v136 actions:v125 failingAction:v119];
    v36 = self;
  }

LABEL_123:

LABEL_124:
LABEL_125:

LABEL_126:
  v12 = v127;

LABEL_127:
LABEL_128:

LABEL_129:
LABEL_130:

  v6 = v130;
LABEL_131:

  v7 = v131;
LABEL_132:

LABEL_133:
LABEL_134:

  v112 = *MEMORY[0x1E69E9840];
  return v36;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocalAuthenticationDialogs *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_dialogID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTimeSinceUpdate)
  {
    timeSinceUpdate = self->_timeSinceUpdate;
    PBDataWriterWriteUint32Field();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = self->_mechanisms;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v32 + 1) + 8 * v10) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  successfulMechanism = self->_successfulMechanism;
  PBDataWriterWriteUint32Field();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = self->_failedMechanisms;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v28 + 1) + 8 * v16) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v14);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_actions;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v24 + 1) + 8 * v21) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  failingAction = self->_failingAction;
  PBDataWriterWriteUint32Field();

  v23 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v77.receiver = self;
  v77.super_class = BMLocalAuthenticationDialogs;
  v5 = [(BMEventBase *)&v77 init];
  if (!v5)
  {
LABEL_119:
    v75 = v5;
    goto LABEL_120;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  while (1)
  {
    v9 = [v4 position];
    if (v9 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v78 = 0;
      v13 = [v4 position] + 1;
      if (v13 >= [v4 position] && (v14 = objc_msgSend(v4, "position") + 1, v14 <= objc_msgSend(v4, "length")))
      {
        v15 = [v4 data];
        [v15 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v12 |= (v78 & 0x7F) << v10;
      if ((v78 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v16 = v11++ >= 9;
      if (v16)
      {
        v17 = 0;
        goto LABEL_17;
      }
    }

    v17 = [v4 hasError] ? 0 : v12;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v17 & 7) == 4)
    {
      break;
    }

    v18 = v17 >> 3;
    if ((v17 >> 3) > 4)
    {
      if (v18 > 6)
      {
        if (v18 == 7)
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = MEMORY[0x1E696AD98];
          while (1)
          {
            v78 = 0;
            v60 = [v4 position] + 1;
            if (v60 >= [v4 position] && (v61 = objc_msgSend(v4, "position") + 1, v61 <= objc_msgSend(v4, "length")))
            {
              v62 = [v4 data];
              [v62 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v58 |= (v78 & 0x7F) << v56;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v28 = v57++ > 8;
            if (v28)
            {
              goto LABEL_99;
            }
          }

          if (([v4 hasError] & 1) != 0 || v58 > 7)
          {
LABEL_99:
            v58 = 0;
          }

          v63 = [v59 numberWithUnsignedInt:v58];
          if (!v63)
          {
LABEL_121:

            goto LABEL_118;
          }

          v64 = v63;
          v65 = v8;
          goto LABEL_112;
        }

        if (v18 != 8)
        {
          goto LABEL_87;
        }

        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          v78 = 0;
          v39 = [v4 position] + 1;
          if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 1, v40 <= objc_msgSend(v4, "length")))
          {
            v41 = [v4 data];
            [v41 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v38 |= (v78 & 0x7F) << v36;
          if ((v78 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v28 = v37++ > 8;
          if (v28)
          {
            goto LABEL_115;
          }
        }

        if (([v4 hasError] & 1) != 0 || v38 > 7)
        {
LABEL_115:
          LODWORD(v38) = 0;
        }

        v5->_failingAction = v38;
      }

      else if (v18 == 5)
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          v78 = 0;
          v46 = [v4 position] + 1;
          if (v46 >= [v4 position] && (v47 = objc_msgSend(v4, "position") + 1, v47 <= objc_msgSend(v4, "length")))
          {
            v48 = [v4 data];
            [v48 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v45 |= (v78 & 0x7F) << v43;
          if ((v78 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v28 = v44++ > 8;
          if (v28)
          {
            goto LABEL_91;
          }
        }

        if (([v4 hasError] & 1) != 0 || v45 > 5)
        {
LABEL_91:
          LODWORD(v45) = 0;
        }

        v5->_successfulMechanism = v45;
      }

      else
      {
        if (v18 != 6)
        {
          goto LABEL_87;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = MEMORY[0x1E696AD98];
        while (1)
        {
          v78 = 0;
          v25 = [v4 position] + 1;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
          {
            v27 = [v4 data];
            [v27 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v23 |= (v78 & 0x7F) << v21;
          if ((v78 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v28 = v22++ > 8;
          if (v28)
          {
            goto LABEL_104;
          }
        }

        if (([v4 hasError] & 1) != 0 || v23 > 5)
        {
LABEL_104:
          v23 = 0;
        }

        v66 = [v24 numberWithUnsignedInt:v23];
        if (!v66)
        {
          goto LABEL_121;
        }

        v64 = v66;
        v65 = v7;
LABEL_112:
        [v65 addObject:v64];
      }
    }

    else if (v18 > 2)
    {
      if (v18 != 3)
      {
        if (v18 != 4)
        {
          goto LABEL_87;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = MEMORY[0x1E696AD98];
        while (1)
        {
          v78 = 0;
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v31 |= (v78 & 0x7F) << v29;
          if ((v78 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v28 = v30++ > 8;
          if (v28)
          {
            goto LABEL_109;
          }
        }

        if (([v4 hasError] & 1) != 0 || v31 > 5)
        {
LABEL_109:
          v31 = 0;
        }

        v67 = [v32 numberWithUnsignedInt:v31];
        if (!v67)
        {
          goto LABEL_121;
        }

        v64 = v67;
        v65 = v6;
        goto LABEL_112;
      }

      v49 = 0;
      v50 = 0;
      v51 = 0;
      v5->_hasTimeSinceUpdate = 1;
      while (1)
      {
        v78 = 0;
        v52 = [v4 position] + 1;
        if (v52 >= [v4 position] && (v53 = objc_msgSend(v4, "position") + 1, v53 <= objc_msgSend(v4, "length")))
        {
          v54 = [v4 data];
          [v54 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v51 |= (v78 & 0x7F) << v49;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        v16 = v50++ >= 9;
        if (v16)
        {
          v55 = 0;
          goto LABEL_96;
        }
      }

      if ([v4 hasError])
      {
        v55 = 0;
      }

      else
      {
        v55 = v51;
      }

LABEL_96:
      v5->_timeSinceUpdate = v55;
    }

    else if (v18 == 1)
    {
      v19 = PBReaderReadString();
      v20 = 40;
LABEL_59:
      v42 = *(&v5->super.super.isa + v20);
      *(&v5->super.super.isa + v20) = v19;
    }

    else
    {
      if (v18 == 2)
      {
        v19 = PBReaderReadString();
        v20 = 48;
        goto LABEL_59;
      }

LABEL_87:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_121;
      }
    }
  }

  v68 = [v6 copy];
  mechanisms = v5->_mechanisms;
  v5->_mechanisms = v68;

  v70 = [v7 copy];
  failedMechanisms = v5->_failedMechanisms;
  v5->_failedMechanisms = v70;

  v72 = [v8 copy];
  actions = v5->_actions;
  v5->_actions = v72;

  v74 = [v4 hasError];
  if ((v74 & 1) == 0)
  {
    goto LABEL_119;
  }

LABEL_118:
  v75 = 0;
LABEL_120:

  return v75;
}

- (NSString)description
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = [(BMLocalAuthenticationDialogs *)self mechanisms];
  v5 = [v4 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMLocalAuthenticationDialogsMechanismAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v11 = objc_opt_new();
  [v11 appendString:@"["];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v12 = [(BMLocalAuthenticationDialogs *)self failedMechanisms];
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v40 + 1) + 8 * j);
        if ([v11 length] != 1)
        {
          [v11 appendString:{@", "}];
        }

        v18 = BMLocalAuthenticationDialogsMechanismAsString([v17 unsignedIntValue]);
        [v11 appendString:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v14);
  }

  [v11 appendString:@"]"];
  v19 = objc_opt_new();
  [v19 appendString:@"["];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = [(BMLocalAuthenticationDialogs *)self actions];
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * k);
        if ([v19 length] != 1)
        {
          [v19 appendString:{@", "}];
        }

        v26 = BMLocalAuthenticationDialogsActionAsString([v25 unsignedIntValue]);
        [v19 appendString:v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v22);
  }

  [v19 appendString:@"]"];
  v27 = objc_alloc(MEMORY[0x1E696AEC0]);
  v28 = [(BMLocalAuthenticationDialogs *)self dialogID];
  v29 = [(BMLocalAuthenticationDialogs *)self bundleID];
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMLocalAuthenticationDialogs timeSinceUpdate](self, "timeSinceUpdate")}];
  v31 = BMLocalAuthenticationDialogsMechanismAsString([(BMLocalAuthenticationDialogs *)self successfulMechanism]);
  v32 = BMLocalAuthenticationDialogsActionAsString([(BMLocalAuthenticationDialogs *)self failingAction]);
  v33 = [v27 initWithFormat:@"BMLocalAuthenticationDialogs with dialogID: %@, bundleID: %@, timeSinceUpdate: %@, mechanisms: %@, successfulMechanism: %@, failedMechanisms: %@, actions: %@, failingAction: %@", v28, v29, v30, v3, v31, v11, v19, v32];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (BMLocalAuthenticationDialogs)initWithDialogID:(id)a3 bundleID:(id)a4 timeSinceUpdate:(id)a5 mechanisms:(id)a6 successfulMechanism:(int)a7 failedMechanisms:(id)a8 actions:(id)a9 failingAction:(int)a10
{
  v25 = a3;
  v24 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v26.receiver = self;
  v26.super_class = BMLocalAuthenticationDialogs;
  v20 = [(BMEventBase *)&v26 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_dialogID, a3);
    objc_storeStrong(&v20->_bundleID, a4);
    if (v16)
    {
      v20->_hasTimeSinceUpdate = 1;
      v21 = [v16 unsignedIntValue];
    }

    else
    {
      v21 = 0;
      v20->_hasTimeSinceUpdate = 0;
    }

    v20->_timeSinceUpdate = v21;
    objc_storeStrong(&v20->_mechanisms, a6);
    v20->_successfulMechanism = a7;
    objc_storeStrong(&v20->_failedMechanisms, a8);
    objc_storeStrong(&v20->_actions, a9);
    v20->_failingAction = a10;
  }

  return v20;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dialogID" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceUpdate" number:3 type:4 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mechanisms" number:4 type:4 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"successfulMechanism" number:5 type:4 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failedMechanisms" number:6 type:4 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actions" number:7 type:4 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"failingAction" number:8 type:4 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dialogID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeSinceUpdate" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"mechanisms_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_117];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"successfulMechanism" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"failedMechanisms_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_119_102036];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"actions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_121];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"failingAction" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
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

id __39__BMLocalAuthenticationDialogs_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _actionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __39__BMLocalAuthenticationDialogs_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _failedMechanismsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __39__BMLocalAuthenticationDialogs_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _mechanismsJSONArray];
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

    v8 = [[BMLocalAuthenticationDialogs alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end