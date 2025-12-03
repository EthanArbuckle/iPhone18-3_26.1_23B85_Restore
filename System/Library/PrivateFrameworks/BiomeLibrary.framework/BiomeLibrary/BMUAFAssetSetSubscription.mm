@interface BMUAFAssetSetSubscription
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUAFAssetSetSubscription)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMUAFAssetSetSubscription)initWithSubscriptionName:(id)name assetSetIndices:(id)indices assetSetUsages:(id)usages usageAliases:(id)aliases;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_assetSetIndicesJSONArray;
- (id)_assetSetUsagesJSONArray;
- (id)_usageAliasesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUAFAssetSetSubscription

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    subscriptionName = [(BMUAFAssetSetSubscription *)self subscriptionName];
    subscriptionName2 = [v5 subscriptionName];
    v8 = subscriptionName2;
    if (subscriptionName == subscriptionName2)
    {
    }

    else
    {
      subscriptionName3 = [(BMUAFAssetSetSubscription *)self subscriptionName];
      subscriptionName4 = [v5 subscriptionName];
      v11 = [subscriptionName3 isEqual:subscriptionName4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    assetSetIndices = [(BMUAFAssetSetSubscription *)self assetSetIndices];
    assetSetIndices2 = [v5 assetSetIndices];
    v15 = assetSetIndices2;
    if (assetSetIndices == assetSetIndices2)
    {
    }

    else
    {
      assetSetIndices3 = [(BMUAFAssetSetSubscription *)self assetSetIndices];
      assetSetIndices4 = [v5 assetSetIndices];
      v18 = [assetSetIndices3 isEqual:assetSetIndices4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    assetSetUsages = [(BMUAFAssetSetSubscription *)self assetSetUsages];
    assetSetUsages2 = [v5 assetSetUsages];
    v21 = assetSetUsages2;
    if (assetSetUsages == assetSetUsages2)
    {
    }

    else
    {
      assetSetUsages3 = [(BMUAFAssetSetSubscription *)self assetSetUsages];
      assetSetUsages4 = [v5 assetSetUsages];
      v24 = [assetSetUsages3 isEqual:assetSetUsages4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    usageAliases = [(BMUAFAssetSetSubscription *)self usageAliases];
    usageAliases2 = [v5 usageAliases];
    if (usageAliases == usageAliases2)
    {
      v12 = 1;
    }

    else
    {
      usageAliases3 = [(BMUAFAssetSetSubscription *)self usageAliases];
      usageAliases4 = [v5 usageAliases];
      v12 = [usageAliases3 isEqual:usageAliases4];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  subscriptionName = [(BMUAFAssetSetSubscription *)self subscriptionName];
  _assetSetIndicesJSONArray = [(BMUAFAssetSetSubscription *)self _assetSetIndicesJSONArray];
  _assetSetUsagesJSONArray = [(BMUAFAssetSetSubscription *)self _assetSetUsagesJSONArray];
  _usageAliasesJSONArray = [(BMUAFAssetSetSubscription *)self _usageAliasesJSONArray];
  v14[0] = @"subscriptionName";
  null = subscriptionName;
  if (!subscriptionName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"assetSetIndices";
  null2 = _assetSetIndicesJSONArray;
  if (!_assetSetIndicesJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"assetSetUsages";
  null3 = _assetSetUsagesJSONArray;
  if (!_assetSetUsagesJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"usageAliases";
  null4 = _usageAliasesJSONArray;
  if (!_usageAliasesJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (_usageAliasesJSONArray)
  {
    if (_assetSetUsagesJSONArray)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (_assetSetUsagesJSONArray)
    {
LABEL_11:
      if (_assetSetIndicesJSONArray)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (subscriptionName)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!_assetSetIndicesJSONArray)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (subscriptionName)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_usageAliasesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  usageAliases = [(BMUAFAssetSetSubscription *)self usageAliases];
  v5 = [usageAliases countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(usageAliases);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [usageAliases countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_assetSetUsagesJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  assetSetUsages = [(BMUAFAssetSetSubscription *)self assetSetUsages];
  v5 = [assetSetUsages countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(assetSetUsages);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [assetSetUsages countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_assetSetIndicesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assetSetIndices = [(BMUAFAssetSetSubscription *)self assetSetIndices];
  v5 = [assetSetIndices countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(assetSetIndices);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [assetSetIndices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMUAFAssetSetSubscription)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v129[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"subscriptionName"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v128 = *MEMORY[0x1E696A578];
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subscriptionName"];
        v129[0] = v7;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:&v128 count:1];
        v33 = [v31 initWithDomain:v32 code:2 userInfo:v10];
        v30 = 0;
        selfCopy4 = 0;
        *error = v33;
        goto LABEL_93;
      }

      v30 = 0;
      selfCopy4 = 0;
      goto LABEL_95;
    }

    v89 = v6;
  }

  else
  {
    v89 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"assetSetIndices"];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  if (v9)
  {
    v86 = v6;
    selfCopy2 = self;

    v7 = 0;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy4 = 0;
          v30 = v89;
          goto LABEL_94;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v126 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"assetSetIndices"];
        v127 = v10;
        obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        selfCopy4 = 0;
        *error = [v46 initWithDomain:v47 code:2 userInfo:?];
        goto LABEL_48;
      }
    }

    v86 = v6;
    selfCopy2 = self;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v7 = v7;
  v11 = [v7 countByEnumeratingWithState:&v103 objects:v125 count:16];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v13 = *v104;
  do
  {
    v14 = dictionaryCopy;
    for (i = 0; i != v12; ++i)
    {
      if (*v104 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v16 = *(*(&v103 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v21 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v123 = *MEMORY[0x1E696A578];
          v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"assetSetIndices"];
          v124 = v91;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
          v24 = v21;
          v25 = v22;
          v26 = v23;
LABEL_26:
          dictionaryCopy = v14;
          v6 = v86;
          self = selfCopy2;
          selfCopy4 = 0;
          *errorCopy2 = [v24 initWithDomain:v25 code:2 userInfo:v23];
          obj = v7;
          goto LABEL_27;
        }

LABEL_28:
        selfCopy4 = 0;
        obj = v7;
        dictionaryCopy = v14;
LABEL_29:
        v6 = v86;
        self = selfCopy2;
LABEL_48:
        v30 = v89;
        goto LABEL_92;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v121 = *MEMORY[0x1E696A578];
          v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"assetSetIndices"];
          v122 = v91;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
          v24 = v27;
          v26 = v23;
          v25 = v28;
          goto LABEL_26;
        }

        goto LABEL_28;
      }

      [v10 addObject:v16];
    }

    v12 = [v7 countByEnumeratingWithState:&v103 objects:v125 count:16];
    dictionaryCopy = v14;
  }

  while (v12);
LABEL_18:

  v17 = [dictionaryCopy objectForKeyedSubscript:@"assetSetUsages"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v19 = [v17 isEqual:null2];

  v85 = dictionaryCopy;
  if (!v19)
  {
    if (!v17)
    {
      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_34;
    }

    obj = v17;
    if (error)
    {
      v65 = objc_alloc(MEMORY[0x1E696ABC0]);
      v66 = *MEMORY[0x1E698F240];
      v119 = *MEMORY[0x1E696A578];
      v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"assetSetUsages"];
      v120 = v91;
      v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      selfCopy4 = 0;
      *error = [v65 initWithDomain:v66 code:2 userInfo:v67];
      v26 = v67;
      goto LABEL_76;
    }

    selfCopy4 = 0;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_34:
  v91 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v34 = v17;
  v35 = [v34 countByEnumeratingWithState:&v99 objects:v118 count:16];
  obj = v34;
  if (!v35)
  {
    goto LABEL_44;
  }

  v36 = v35;
  v37 = *v100;
  do
  {
    for (j = 0; j != v36; ++j)
    {
      if (*v100 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v99 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (error)
        {
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v116 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"assetSetUsages"];
          v117 = v40;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          *error = [v48 initWithDomain:v49 code:2 userInfo:v50];

          goto LABEL_55;
        }

LABEL_75:
        selfCopy4 = 0;
        v26 = obj;
LABEL_76:
        self = selfCopy2;
LABEL_77:
        v6 = v86;
LABEL_27:
        v30 = v89;
        goto LABEL_91;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          goto LABEL_75;
        }

        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v114 = *MEMORY[0x1E696A578];
        v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assetSetUsages"];
        v115 = v40;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        *error = [v51 initWithDomain:v52 code:2 userInfo:v53];

LABEL_55:
        selfCopy4 = 0;
        v26 = obj;
        self = selfCopy2;
        goto LABEL_56;
      }

      v40 = v39;
      v41 = [BMUAFAssetSetUsage alloc];
      v98 = 0;
      v42 = [(BMUAFAssetSetUsage *)v41 initWithJSONDictionary:v40 error:&v98];
      v43 = v98;
      if (v43)
      {
        v54 = v43;
        v6 = v86;
        if (error)
        {
          v55 = v43;
          *error = v54;
        }

        selfCopy4 = 0;
        v26 = obj;
        self = selfCopy2;
        goto LABEL_89;
      }

      [v91 addObject:v42];
    }

    v34 = obj;
    v36 = [obj countByEnumeratingWithState:&v99 objects:v118 count:16];
  }

  while (v36);
LABEL_44:

  v26 = [dictionaryCopy objectForKeyedSubscript:@"usageAliases"];
  null3 = [MEMORY[0x1E695DFB0] null];
  v45 = [v26 isEqual:null3];

  if (v45)
  {

    v26 = 0;
    self = selfCopy2;
    goto LABEL_62;
  }

  self = selfCopy2;
  if (v26)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        selfCopy4 = 0;
        goto LABEL_77;
      }

      v79 = objc_alloc(MEMORY[0x1E696ABC0]);
      v80 = v26;
      v81 = *MEMORY[0x1E698F240];
      v112 = *MEMORY[0x1E696A578];
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"usageAliases"];
      v113 = v40;
      v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
      v83 = v81;
      v26 = v80;
      *error = [v79 initWithDomain:v83 code:2 userInfo:v82];

      selfCopy4 = 0;
LABEL_56:
      v6 = v86;
LABEL_89:
      v30 = v89;
      goto LABEL_90;
    }
  }

LABEL_62:
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v26, "count")}];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v26 = v26;
  v56 = [v26 countByEnumeratingWithState:&v94 objects:v111 count:16];
  if (!v56)
  {
    goto LABEL_72;
  }

  v57 = v56;
  v58 = *v95;
  v84 = v26;
  selfCopy3 = self;
  while (2)
  {
    v59 = 0;
    while (2)
    {
      if (*v95 != v58)
      {
        objc_enumerationMutation(v26);
      }

      v60 = *(*(&v94 + 1) + 8 * v59);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        dictionaryCopy = v85;
        v6 = v86;
        self = selfCopy3;
        if (error)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = v86;
          v70 = *MEMORY[0x1E698F240];
          v109 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"usageAliases"];
          v110 = v61;
          v71 = MEMORY[0x1E695DF20];
          v72 = &v110;
          v73 = &v109;
LABEL_83:
          v74 = [v71 dictionaryWithObjects:v72 forKeys:v73 count:1];
          v75 = v70;
          v6 = v69;
          *error = [v68 initWithDomain:v75 code:2 userInfo:v74];
LABEL_87:

          v26 = v84;
        }

LABEL_88:

        selfCopy4 = 0;
        goto LABEL_89;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dictionaryCopy = v85;
        v6 = v86;
        self = selfCopy3;
        if (error)
        {
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v69 = v86;
          v70 = *MEMORY[0x1E698F240];
          v107 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"usageAliases"];
          v108 = v61;
          v71 = MEMORY[0x1E695DF20];
          v72 = &v108;
          v73 = &v107;
          goto LABEL_83;
        }

        goto LABEL_88;
      }

      v61 = v60;
      v62 = [BMUAFAssetUsageAlias alloc];
      v93 = 0;
      v63 = [(BMUAFAssetUsageAlias *)v62 initWithJSONDictionary:v61 error:&v93];
      v64 = v93;
      if (v64)
      {
        v74 = v64;
        if (error)
        {
          v76 = v64;
          *error = v74;
        }

        dictionaryCopy = v85;
        v6 = v86;
        self = selfCopy3;
        goto LABEL_87;
      }

      [v40 addObject:v63];

      ++v59;
      v26 = v84;
      if (v57 != v59)
      {
        continue;
      }

      break;
    }

    v57 = [v84 countByEnumeratingWithState:&v94 objects:v111 count:16];
    self = selfCopy3;
    if (v57)
    {
      continue;
    }

    break;
  }

LABEL_72:

  v30 = v89;
  self = [(BMUAFAssetSetSubscription *)self initWithSubscriptionName:v89 assetSetIndices:v10 assetSetUsages:v91 usageAliases:v40];
  selfCopy4 = self;
  dictionaryCopy = v85;
  v6 = v86;
LABEL_90:

LABEL_91:
LABEL_92:

LABEL_93:
LABEL_94:

LABEL_95:
  v77 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUAFAssetSetSubscription *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_subscriptionName)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_assetSetIndices;
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

        [*(*(&v32 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_assetSetUsages;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        v27 = 0;
        PBDataWriterPlaceMark();
        [v15 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v12);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_usageAliases;
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
        v27 = 0;
        PBDataWriterPlaceMark();
        [v21 writeTo:{toCopy, v23}];
        PBDataWriterRecallMark();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v36 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v44.receiver = self;
  v44.super_class = BMUAFAssetSetSubscription;
  v5 = [(BMEventBase *)&v44 init];
  if (!v5)
  {
LABEL_49:
    v42 = v5;
    goto LABEL_52;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v45) = 0;
      v13 = [fromCopy position] + 1;
      if (v13 >= [fromCopy position] && (v14 = objc_msgSend(fromCopy, "position") + 1, v14 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v12 |= (v45 & 0x7F) << v10;
      if ((v45 & 0x80) == 0)
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

    v17 = [fromCopy hasError] ? 0 : v12;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v17 & 7) == 4)
    {
      break;
    }

    v18 = v17 >> 3;
    if ((v17 >> 3) > 2)
    {
      if (v18 == 3)
      {
        v45 = 0;
        v46 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_50;
        }

        v32 = [[BMUAFAssetSetUsage alloc] initByReadFrom:fromCopy];
        if (!v32)
        {
          goto LABEL_50;
        }

        v28 = v32;
        v29 = v7;
      }

      else
      {
        if (v18 != 4)
        {
          goto LABEL_36;
        }

        v45 = 0;
        v46 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_50;
        }

        v27 = [[BMUAFAssetUsageAlias alloc] initByReadFrom:fromCopy];
        if (!v27)
        {
          goto LABEL_50;
        }

        v28 = v27;
        v29 = v8;
      }

      [v29 addObject:v28];
      PBReaderRecallMark();
    }

    else if (v18 == 1)
    {
      v30 = PBReaderReadString();
      subscriptionName = v5->_subscriptionName;
      v5->_subscriptionName = v30;
    }

    else if (v18 == 2)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = MEMORY[0x1E696AD98];
      while (1)
      {
        LOBYTE(v45) = 0;
        v23 = [fromCopy position] + 1;
        if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v21 |= (v45 & 0x7F) << v19;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v16 = v20++ >= 9;
        if (v16)
        {
          v26 = 0;
          goto LABEL_46;
        }
      }

      if ([fromCopy hasError])
      {
        v26 = 0;
      }

      else
      {
        v26 = v21;
      }

LABEL_46:
      v33 = [v22 numberWithUnsignedInt:v26];
      if (!v33)
      {
LABEL_50:

        goto LABEL_51;
      }

      v34 = v33;
      [v6 addObject:v33];
    }

    else
    {
LABEL_36:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  v35 = [v6 copy];
  assetSetIndices = v5->_assetSetIndices;
  v5->_assetSetIndices = v35;

  v37 = [v7 copy];
  assetSetUsages = v5->_assetSetUsages;
  v5->_assetSetUsages = v37;

  v39 = [v8 copy];
  usageAliases = v5->_usageAliases;
  v5->_usageAliases = v39;

  hasError = [fromCopy hasError];
  if ((hasError & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_51:
  v42 = 0;
LABEL_52:

  return v42;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  subscriptionName = [(BMUAFAssetSetSubscription *)self subscriptionName];
  assetSetIndices = [(BMUAFAssetSetSubscription *)self assetSetIndices];
  assetSetUsages = [(BMUAFAssetSetSubscription *)self assetSetUsages];
  usageAliases = [(BMUAFAssetSetSubscription *)self usageAliases];
  v8 = [v3 initWithFormat:@"BMUAFAssetSetSubscription with subscriptionName: %@, assetSetIndices: %@, assetSetUsages: %@, usageAliases: %@", subscriptionName, assetSetIndices, assetSetUsages, usageAliases];

  return v8;
}

- (BMUAFAssetSetSubscription)initWithSubscriptionName:(id)name assetSetIndices:(id)indices assetSetUsages:(id)usages usageAliases:(id)aliases
{
  nameCopy = name;
  indicesCopy = indices;
  usagesCopy = usages;
  aliasesCopy = aliases;
  v17.receiver = self;
  v17.super_class = BMUAFAssetSetSubscription;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_subscriptionName, name);
    objc_storeStrong(&v15->_assetSetIndices, indices);
    objc_storeStrong(&v15->_assetSetUsages, usages);
    objc_storeStrong(&v15->_usageAliases, aliases);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subscriptionName" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSetIndices" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetSetUsages" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageAliases" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subscriptionName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assetSetIndices_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_697];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assetSetUsages_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_699];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"usageAliases_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_701];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __36__BMUAFAssetSetSubscription_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _usageAliasesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __36__BMUAFAssetSetSubscription_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _assetSetUsagesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __36__BMUAFAssetSetSubscription_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _assetSetIndicesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMUAFAssetSetSubscription alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end