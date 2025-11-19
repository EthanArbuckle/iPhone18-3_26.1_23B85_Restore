@interface BMTrustKitTKModelMessages
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMTrustKitTKModelMessages)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMTrustKitTKModelMessages)initWithSignatureId:(id)a3 uafVersion:(id)a4 recordZone:(id)a5 triggeredRules:(id)a6 nemesisErrors:(id)a7 filteringTriggeredRules:(id)a8 filteringNemesisErrors:(id)a9 locale:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_filteringNemesisErrorsJSONArray;
- (id)_filteringTriggeredRulesJSONArray;
- (id)_nemesisErrorsJSONArray;
- (id)_triggeredRulesJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMTrustKitTKModelMessages

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMTrustKitTKModelMessages *)self signatureId];
    v7 = [v5 signatureId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMTrustKitTKModelMessages *)self signatureId];
      v10 = [v5 signatureId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    v13 = [(BMTrustKitTKModelMessages *)self uafVersion];
    v14 = [v5 uafVersion];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMTrustKitTKModelMessages *)self uafVersion];
      v17 = [v5 uafVersion];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v19 = [(BMTrustKitTKModelMessages *)self recordZone];
    v20 = [v5 recordZone];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMTrustKitTKModelMessages *)self recordZone];
      v23 = [v5 recordZone];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    v25 = [(BMTrustKitTKModelMessages *)self triggeredRules];
    v26 = [v5 triggeredRules];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMTrustKitTKModelMessages *)self triggeredRules];
      v29 = [v5 triggeredRules];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    v31 = [(BMTrustKitTKModelMessages *)self nemesisErrors];
    v32 = [v5 nemesisErrors];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMTrustKitTKModelMessages *)self nemesisErrors];
      v35 = [v5 nemesisErrors];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    v37 = [(BMTrustKitTKModelMessages *)self filteringTriggeredRules];
    v38 = [v5 filteringTriggeredRules];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMTrustKitTKModelMessages *)self filteringTriggeredRules];
      v41 = [v5 filteringTriggeredRules];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    v43 = [(BMTrustKitTKModelMessages *)self filteringNemesisErrors];
    v44 = [v5 filteringNemesisErrors];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMTrustKitTKModelMessages *)self filteringNemesisErrors];
      v47 = [v5 filteringNemesisErrors];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
LABEL_29:
        v12 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v50 = [(BMTrustKitTKModelMessages *)self locale];
    v51 = [v5 locale];
    if (v50 == v51)
    {
      v12 = 1;
    }

    else
    {
      v52 = [(BMTrustKitTKModelMessages *)self locale];
      v53 = [v5 locale];
      v12 = [v52 isEqual:v53];
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (id)jsonDictionary
{
  v29[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMTrustKitTKModelMessages *)self signatureId];
  v4 = [(BMTrustKitTKModelMessages *)self uafVersion];
  v5 = [(BMTrustKitTKModelMessages *)self recordZone];
  v6 = [(BMTrustKitTKModelMessages *)self _triggeredRulesJSONArray];
  v7 = [(BMTrustKitTKModelMessages *)self _nemesisErrorsJSONArray];
  v8 = [(BMTrustKitTKModelMessages *)self _filteringTriggeredRulesJSONArray];
  v9 = [(BMTrustKitTKModelMessages *)self _filteringNemesisErrorsJSONArray];
  v10 = [(BMTrustKitTKModelMessages *)self locale];
  v28[0] = @"signatureId";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v11;
  v29[0] = v11;
  v28[1] = @"uafVersion";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v12;
  v29[1] = v12;
  v28[2] = @"recordZone";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v3;
  v21 = v13;
  v29[2] = v13;
  v28[3] = @"triggeredRules";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v4;
  v29[3] = v14;
  v28[4] = @"nemesisErrors";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v5;
  v29[4] = v15;
  v28[5] = @"filteringTriggeredRules";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v16;
  v28[6] = @"filteringNemesisErrors";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v17;
  v28[7] = @"locale";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = v18;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_31:

    if (v8)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (v8)
  {
    goto LABEL_20;
  }

LABEL_32:

LABEL_20:
  if (!v7)
  {
  }

  if (!v6)
  {
  }

  if (v25)
  {
    if (v26)
    {
      goto LABEL_26;
    }

LABEL_34:

    if (v27)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  if (!v26)
  {
    goto LABEL_34;
  }

LABEL_26:
  if (v27)
  {
    goto LABEL_27;
  }

LABEL_35:

LABEL_27:
  v19 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_filteringNemesisErrorsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMTrustKitTKModelMessages *)self filteringNemesisErrors];
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

- (id)_filteringTriggeredRulesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMTrustKitTKModelMessages *)self filteringTriggeredRules];
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

- (id)_nemesisErrorsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMTrustKitTKModelMessages *)self nemesisErrors];
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

- (id)_triggeredRulesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMTrustKitTKModelMessages *)self triggeredRules];
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

- (BMTrustKitTKModelMessages)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v187[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"signatureId"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v186 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"signatureId"];
        v187[0] = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v187 forKeys:&v186 count:1];
        v34 = v31;
        v9 = v33;
        v35 = [v30 initWithDomain:v34 code:2 userInfo:v33];
        v8 = 0;
        v36 = p_isa;
        p_isa = 0;
        *v36 = v35;
        goto LABEL_134;
      }

      v8 = 0;
      goto LABEL_135;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"uafVersion"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = v9;
        v41 = *MEMORY[0x1E698F240];
        v184 = *MEMORY[0x1E696A578];
        v42 = self;
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v118 = objc_opt_class();
        v44 = v43;
        self = v42;
        v12 = [v44 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v118, @"uafVersion"];
        v185 = v12;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
        v46 = v39;
        v11 = v45;
        v47 = v41;
        v9 = v40;
        v48 = [v46 initWithDomain:v47 code:2 userInfo:v45];
        v32 = 0;
        v49 = p_isa;
        p_isa = 0;
        *v49 = v48;
        goto LABEL_133;
      }

      v32 = 0;
      goto LABEL_134;
    }

    v132 = v9;
  }

  else
  {
    v132 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"recordZone"];
  v129 = v7;
  v130 = v10;
  v131 = v8;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v134 = p_isa;
        v50 = v11;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = v9;
        v53 = *MEMORY[0x1E698F240];
        v182 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recordZone"];
        v183 = v13;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
        v54 = v51;
        v11 = v50;
        v55 = v53;
        v9 = v52;
        v12 = 0;
        p_isa = 0;
        v32 = v132;
        *v134 = [v54 initWithDomain:v55 code:2 userInfo:v16];
        goto LABEL_131;
      }

      v12 = 0;
      v32 = v132;
      goto LABEL_133;
    }

    v128 = v9;
    v12 = v11;
  }

  else
  {
    v128 = v9;
    v12 = 0;
  }

  v13 = [v6 objectForKeyedSubscript:@"triggeredRules"];
  v14 = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    v125 = self;
    v126 = v12;

    v13 = 0;
  }

  else
  {
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          v9 = v128;
          v32 = v132;
          v11 = v130;
          goto LABEL_132;
        }

        v64 = objc_alloc(MEMORY[0x1E696ABC0]);
        v65 = *MEMORY[0x1E698F240];
        v180 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"triggeredRules"];
        v181 = v16;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
        v66 = [v64 initWithDomain:v65 code:2 userInfo:v22];
        v67 = p_isa;
        p_isa = 0;
        *v67 = v66;
        goto LABEL_60;
      }
    }

    v125 = self;
    v126 = v12;
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v13 = v13;
  v17 = [v13 countByEnumeratingWithState:&v148 objects:v179 count:16];
  v133 = p_isa;
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = v17;
  v19 = *v149;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v149 != v19)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v148 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v133)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v177 = *MEMORY[0x1E696A578];
          v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"triggeredRules"];
          v178 = v135;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          v28 = v25;
          v29 = v26;
LABEL_38:
          obj = v27;
          self = v125;
          v32 = v132;
          v11 = v130;
          p_isa = 0;
          *v133 = [v28 initWithDomain:v29 code:2 userInfo:?];
          v22 = v13;
          v9 = v128;
          goto LABEL_88;
        }

LABEL_41:
        p_isa = 0;
        v22 = v13;
LABEL_42:
        self = v125;
        v12 = v126;
LABEL_60:
        v9 = v128;
        v32 = v132;
        v11 = v130;
        goto LABEL_130;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v133)
        {
          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v175 = *MEMORY[0x1E696A578];
          v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"triggeredRules"];
          v176 = v135;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
          v28 = v37;
          v29 = v38;
          goto LABEL_38;
        }

        goto LABEL_41;
      }

      [v16 addObject:v21];
    }

    v18 = [v13 countByEnumeratingWithState:&v148 objects:v179 count:16];
    p_isa = v133;
  }

  while (v18);
LABEL_26:

  v22 = [v6 objectForKeyedSubscript:@"nemesisErrors"];
  v23 = [MEMORY[0x1E695DFB0] null];
  v24 = [v22 isEqual:v23];

  if (!v24)
  {
    if (!v22)
    {
      goto LABEL_47;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_47;
    }

    if (p_isa)
    {
      v83 = objc_alloc(MEMORY[0x1E696ABC0]);
      v84 = *MEMORY[0x1E698F240];
      v173 = *MEMORY[0x1E696A578];
      v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"nemesisErrors"];
      v174 = v135;
      obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
      v85 = [v83 initWithDomain:v84 code:2 userInfo:?];
      v86 = p_isa;
      p_isa = 0;
      *v86 = v85;
      goto LABEL_87;
    }

    goto LABEL_42;
  }

  v22 = 0;
LABEL_47:
  v135 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v22 = v22;
  v56 = [v22 countByEnumeratingWithState:&v144 objects:v172 count:16];
  if (!v56)
  {
    goto LABEL_56;
  }

  v57 = v56;
  v58 = *v145;
  do
  {
    for (j = 0; j != v57; ++j)
    {
      if (*v145 != v58)
      {
        objc_enumerationMutation(v22);
      }

      v60 = *(*(&v144 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v133)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = *MEMORY[0x1E698F240];
          v170 = *MEMORY[0x1E696A578];
          v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"nemesisErrors"];
          v171 = v124;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
          v71 = v68;
          v72 = v69;
LABEL_66:
          v123 = v70;
          v32 = v132;
          v11 = v130;
          p_isa = 0;
          *v133 = [v71 initWithDomain:v72 code:2 userInfo:?];
          obj = v22;
          self = v125;
          v9 = v128;
          goto LABEL_67;
        }

LABEL_70:
        p_isa = 0;
        obj = v22;
LABEL_87:
        self = v125;
        v9 = v128;
        v32 = v132;
        v11 = v130;
LABEL_88:
        v12 = v126;
        goto LABEL_129;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v133)
        {
          v73 = objc_alloc(MEMORY[0x1E696ABC0]);
          v74 = *MEMORY[0x1E698F240];
          v168 = *MEMORY[0x1E696A578];
          v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"nemesisErrors"];
          v169 = v124;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v169 forKeys:&v168 count:1];
          v71 = v73;
          v72 = v74;
          goto LABEL_66;
        }

        goto LABEL_70;
      }

      [v135 addObject:v60];
    }

    v57 = [v22 countByEnumeratingWithState:&v144 objects:v172 count:16];
  }

  while (v57);
LABEL_56:

  v61 = [v6 objectForKeyedSubscript:@"filteringTriggeredRules"];
  v62 = [MEMORY[0x1E695DFB0] null];
  v63 = [v61 isEqual:v62];

  if (!v63)
  {
    v11 = v130;
    v12 = v126;
    if (!v61)
    {
      goto LABEL_74;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_74;
    }

    obj = v61;
    if (!v133)
    {
      p_isa = 0;
      self = v125;
      v9 = v128;
      v32 = v132;
      goto LABEL_129;
    }

    v101 = objc_alloc(MEMORY[0x1E696ABC0]);
    v102 = *MEMORY[0x1E698F240];
    v166 = *MEMORY[0x1E696A578];
    v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"filteringTriggeredRules"];
    v167 = v124;
    v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v167 forKeys:&v166 count:1];
    p_isa = 0;
    *v133 = [v101 initWithDomain:v102 code:2 userInfo:?];
LABEL_111:
    self = v125;
    v9 = v128;
    v32 = v132;
    goto LABEL_128;
  }

  v61 = 0;
  v11 = v130;
LABEL_74:
  v124 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v61, "count")}];
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  obj = v61;
  v75 = [obj countByEnumeratingWithState:&v140 objects:v165 count:16];
  if (!v75)
  {
    goto LABEL_83;
  }

  v76 = v75;
  v77 = *v141;
  do
  {
    for (k = 0; k != v76; ++k)
    {
      if (*v141 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v79 = *(*(&v140 + 1) + 8 * k);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v133)
        {
          v87 = objc_alloc(MEMORY[0x1E696ABC0]);
          v88 = *MEMORY[0x1E698F240];
          v163 = *MEMORY[0x1E696A578];
          v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"filteringTriggeredRules"];
          v164 = v122;
          v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
          v90 = v87;
          v91 = v88;
LABEL_93:
          v120 = v89;
          v32 = v132;
          v11 = v130;
          p_isa = 0;
          *v133 = [v90 initWithDomain:v91 code:2 userInfo:?];
          v9 = v128;
          v123 = obj;
          self = v125;
          v12 = v126;
          goto LABEL_126;
        }

LABEL_94:
        p_isa = 0;
        v9 = v128;
        v123 = obj;
        self = v125;
        v32 = v132;
        v11 = v130;
LABEL_67:
        v12 = v126;
        goto LABEL_128;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v133)
        {
          v92 = objc_alloc(MEMORY[0x1E696ABC0]);
          v93 = *MEMORY[0x1E698F240];
          v161 = *MEMORY[0x1E696A578];
          v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"filteringTriggeredRules"];
          v162 = v122;
          v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
          v90 = v92;
          v91 = v93;
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      [v124 addObject:v79];
    }

    v76 = [obj countByEnumeratingWithState:&v140 objects:v165 count:16];
    v11 = v130;
  }

  while (v76);
LABEL_83:

  v80 = [v6 objectForKeyedSubscript:@"filteringNemesisErrors"];
  v81 = [MEMORY[0x1E695DFB0] null];
  v82 = [v80 isEqual:v81];

  if (v82)
  {

    v80 = 0;
    goto LABEL_97;
  }

  p_isa = v133;
  if (v80)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v123 = v80;
      v12 = v126;
      if (v133)
      {
        v109 = objc_alloc(MEMORY[0x1E696ABC0]);
        v110 = *MEMORY[0x1E698F240];
        v159 = *MEMORY[0x1E696A578];
        v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"filteringNemesisErrors"];
        v160 = v122;
        v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        p_isa = 0;
        *v133 = [v109 initWithDomain:v110 code:2 userInfo:v111];
        v108 = v111;
        self = v125;
        v9 = v128;
        v32 = v132;
        goto LABEL_127;
      }

      goto LABEL_111;
    }
  }

LABEL_97:
  v122 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v80, "count")}];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v123 = v80;
  v94 = [v123 countByEnumeratingWithState:&v136 objects:v158 count:16];
  if (!v94)
  {
    goto LABEL_106;
  }

  v95 = v94;
  v96 = *v137;
  while (2)
  {
    v97 = 0;
    while (2)
    {
      if (*v137 != v96)
      {
        objc_enumerationMutation(v123);
      }

      v98 = *(*(&v136 + 1) + 8 * v97);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v133)
        {
          v103 = objc_alloc(MEMORY[0x1E696ABC0]);
          v104 = *MEMORY[0x1E698F240];
          v156 = *MEMORY[0x1E696A578];
          v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"filteringNemesisErrors"];
          v157 = v119;
          v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
          v106 = v103;
LABEL_116:
          v32 = v132;
          v11 = v130;
          *v133 = [v106 initWithDomain:v104 code:2 userInfo:v105];

          p_isa = 0;
          v120 = v123;
          self = v125;
          v9 = v128;
          goto LABEL_117;
        }

LABEL_118:
        p_isa = 0;
        v108 = v123;
        self = v125;
        v12 = v126;
        v9 = v128;
        v32 = v132;
        v11 = v130;
        goto LABEL_127;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v133)
        {
          v107 = objc_alloc(MEMORY[0x1E696ABC0]);
          v104 = *MEMORY[0x1E698F240];
          v154 = *MEMORY[0x1E696A578];
          v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"filteringNemesisErrors"];
          v155 = v119;
          v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
          v106 = v107;
          goto LABEL_116;
        }

        goto LABEL_118;
      }

      [v122 addObject:v98];
      if (v95 != ++v97)
      {
        continue;
      }

      break;
    }

    v95 = [v123 countByEnumeratingWithState:&v136 objects:v158 count:16];
    v11 = v130;
    if (v95)
    {
      continue;
    }

    break;
  }

LABEL_106:

  v99 = [v6 objectForKeyedSubscript:@"locale"];
  v119 = v99;
  if (v99)
  {
    v100 = v99;
    objc_opt_class();
    self = v125;
    v9 = v128;
    if (objc_opt_isKindOfClass())
    {
      v99 = 0;
      goto LABEL_123;
    }

    objc_opt_class();
    v32 = v132;
    if (objc_opt_isKindOfClass())
    {
      v99 = v100;
      goto LABEL_124;
    }

    if (v133)
    {
      v121 = objc_alloc(MEMORY[0x1E696ABC0]);
      v114 = *MEMORY[0x1E698F240];
      v152 = *MEMORY[0x1E696A578];
      v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"locale"];
      v153 = v115;
      v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v153 forKeys:&v152 count:1];
      v117 = v114;
      self = v125;
      v11 = v130;
      *v133 = [v121 initWithDomain:v117 code:2 userInfo:v116];

      v9 = v128;
    }

    v120 = 0;
    p_isa = 0;
LABEL_117:
    v12 = v126;
  }

  else
  {
    self = v125;
    v9 = v128;
LABEL_123:
    v32 = v132;
LABEL_124:
    v12 = v126;
    v120 = v99;
    self = [(BMTrustKitTKModelMessages *)self initWithSignatureId:v131 uafVersion:v32 recordZone:v126 triggeredRules:v16 nemesisErrors:v135 filteringTriggeredRules:v124 filteringNemesisErrors:v122 locale:v99];
    p_isa = &self->super.super.isa;
  }

LABEL_126:
  v108 = v120;
LABEL_127:

LABEL_128:
LABEL_129:

LABEL_130:
LABEL_131:

  v7 = v129;
LABEL_132:

  v8 = v131;
LABEL_133:

LABEL_134:
LABEL_135:

  v112 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTrustKitTKModelMessages *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_signatureId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_uafVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recordZone)
  {
    PBDataWriterWriteStringField();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = self->_triggeredRules;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      v9 = 0;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = self->_nemesisErrors;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      v15 = 0;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = self->_filteringTriggeredRules;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      v21 = 0;
      do
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->_filteringNemesisErrors;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      v27 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * v27);
        PBDataWriterWriteStringField();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v25);
  }

  if (self->_locale)
  {
    PBDataWriterWriteStringField();
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMTrustKitTKModelMessages;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
LABEL_49:
    v37 = v5;
    goto LABEL_50;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    v10 = [v4 position];
    if (v10 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v40 = 0;
      v14 = [v4 position] + 1;
      if (v14 >= [v4 position] && (v15 = objc_msgSend(v4, "position") + 1, v15 <= objc_msgSend(v4, "length")))
      {
        v16 = [v4 data];
        [v16 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v13 |= (v40 & 0x7F) << v11;
      if ((v40 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      if (v12++ >= 9)
      {
        v18 = 0;
        goto LABEL_17;
      }
    }

    v18 = [v4 hasError] ? 0 : v13;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v18 & 7) == 4)
    {
      break;
    }

    v19 = v18 >> 3;
    if ((v18 >> 3) > 4)
    {
      if (v19 <= 6)
      {
        if (v19 == 5)
        {
          v26 = PBReaderReadString();
          if (!v26)
          {
            goto LABEL_46;
          }

          v23 = v26;
          v24 = v7;
        }

        else
        {
          if (v19 != 6)
          {
            goto LABEL_45;
          }

          v22 = PBReaderReadString();
          if (!v22)
          {
            goto LABEL_46;
          }

          v23 = v22;
          v24 = v8;
        }

        goto LABEL_43;
      }

      if (v19 == 7)
      {
        v27 = PBReaderReadString();
        if (!v27)
        {
          goto LABEL_46;
        }

        v23 = v27;
        v24 = v9;
        goto LABEL_43;
      }

      if (v19 == 8)
      {
        v20 = PBReaderReadString();
        v21 = 80;
        goto LABEL_40;
      }

LABEL_45:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
LABEL_46:

        goto LABEL_48;
      }
    }

    else
    {
      if (v19 <= 2)
      {
        if (v19 == 1)
        {
          v20 = PBReaderReadString();
          v21 = 24;
          goto LABEL_40;
        }

        if (v19 == 2)
        {
          v20 = PBReaderReadString();
          v21 = 32;
LABEL_40:
          v23 = *(&v5->super.super.isa + v21);
          *(&v5->super.super.isa + v21) = v20;
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (v19 == 3)
      {
        v20 = PBReaderReadString();
        v21 = 40;
        goto LABEL_40;
      }

      if (v19 != 4)
      {
        goto LABEL_45;
      }

      v25 = PBReaderReadString();
      if (!v25)
      {
        goto LABEL_46;
      }

      v23 = v25;
      v24 = v6;
LABEL_43:
      [v24 addObject:v23];
LABEL_44:
    }
  }

  v28 = [v6 copy];
  triggeredRules = v5->_triggeredRules;
  v5->_triggeredRules = v28;

  v30 = [v7 copy];
  nemesisErrors = v5->_nemesisErrors;
  v5->_nemesisErrors = v30;

  v32 = [v8 copy];
  filteringTriggeredRules = v5->_filteringTriggeredRules;
  v5->_filteringTriggeredRules = v32;

  v34 = [v9 copy];
  filteringNemesisErrors = v5->_filteringNemesisErrors;
  v5->_filteringNemesisErrors = v34;

  v36 = [v4 hasError];
  if ((v36 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_48:
  v37 = 0;
LABEL_50:

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMTrustKitTKModelMessages *)self signatureId];
  v5 = [(BMTrustKitTKModelMessages *)self uafVersion];
  v6 = [(BMTrustKitTKModelMessages *)self recordZone];
  v7 = [(BMTrustKitTKModelMessages *)self triggeredRules];
  v8 = [(BMTrustKitTKModelMessages *)self nemesisErrors];
  v9 = [(BMTrustKitTKModelMessages *)self filteringTriggeredRules];
  v10 = [(BMTrustKitTKModelMessages *)self filteringNemesisErrors];
  v11 = [(BMTrustKitTKModelMessages *)self locale];
  v12 = [v3 initWithFormat:@"BMTrustKitTKModelMessages with signatureId: %@, uafVersion: %@, recordZone: %@, triggeredRules: %@, nemesisErrors: %@, filteringTriggeredRules: %@, filteringNemesisErrors: %@, locale: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMTrustKitTKModelMessages)initWithSignatureId:(id)a3 uafVersion:(id)a4 recordZone:(id)a5 triggeredRules:(id)a6 nemesisErrors:(id)a7 filteringTriggeredRules:(id)a8 filteringNemesisErrors:(id)a9 locale:(id)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a8;
  v20 = a9;
  v17 = a10;
  v27.receiver = self;
  v27.super_class = BMTrustKitTKModelMessages;
  v18 = [(BMEventBase *)&v27 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_signatureId, a3);
    objc_storeStrong(&v18->_uafVersion, a4);
    objc_storeStrong(&v18->_recordZone, a5);
    objc_storeStrong(&v18->_triggeredRules, a6);
    objc_storeStrong(&v18->_nemesisErrors, a7);
    objc_storeStrong(&v18->_filteringTriggeredRules, a8);
    objc_storeStrong(&v18->_filteringNemesisErrors, a9);
    objc_storeStrong(&v18->_locale, a10);
  }

  return v18;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"signatureId" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uafVersion" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recordZone" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"triggeredRules" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nemesisErrors" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"filteringTriggeredRules" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"filteringNemesisErrors" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locale" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"signatureId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uafVersion" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recordZone" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"triggeredRules_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_112305];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"nemesisErrors_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_58_112306];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"filteringTriggeredRules_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_60_112307];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"filteringNemesisErrors_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_62_112308];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locale" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
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

id __36__BMTrustKitTKModelMessages_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _filteringNemesisErrorsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __36__BMTrustKitTKModelMessages_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _filteringTriggeredRulesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __36__BMTrustKitTKModelMessages_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _nemesisErrorsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __36__BMTrustKitTKModelMessages_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _triggeredRulesJSONArray];
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

    v8 = [[BMTrustKitTKModelMessages alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end