@interface BMUAFAssetSetStatus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUAFAssetSetStatus)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMUAFAssetSetStatus)initWithUafAssetSets:(id)sets uafAssetSubscriptions:(id)subscriptions allAssets:(id)assets;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_allAssetsJSONArray;
- (id)_uafAssetSetsJSONArray;
- (id)_uafAssetSubscriptionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUAFAssetSetStatus

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uafAssetSets = [(BMUAFAssetSetStatus *)self uafAssetSets];
    uafAssetSets2 = [v5 uafAssetSets];
    v8 = uafAssetSets2;
    if (uafAssetSets == uafAssetSets2)
    {
    }

    else
    {
      uafAssetSets3 = [(BMUAFAssetSetStatus *)self uafAssetSets];
      uafAssetSets4 = [v5 uafAssetSets];
      v11 = [uafAssetSets3 isEqual:uafAssetSets4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    uafAssetSubscriptions = [(BMUAFAssetSetStatus *)self uafAssetSubscriptions];
    uafAssetSubscriptions2 = [v5 uafAssetSubscriptions];
    v15 = uafAssetSubscriptions2;
    if (uafAssetSubscriptions == uafAssetSubscriptions2)
    {
    }

    else
    {
      uafAssetSubscriptions3 = [(BMUAFAssetSetStatus *)self uafAssetSubscriptions];
      uafAssetSubscriptions4 = [v5 uafAssetSubscriptions];
      v18 = [uafAssetSubscriptions3 isEqual:uafAssetSubscriptions4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    allAssets = [(BMUAFAssetSetStatus *)self allAssets];
    allAssets2 = [v5 allAssets];
    if (allAssets == allAssets2)
    {
      v12 = 1;
    }

    else
    {
      allAssets3 = [(BMUAFAssetSetStatus *)self allAssets];
      allAssets4 = [v5 allAssets];
      v12 = [allAssets3 isEqual:allAssets4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  _uafAssetSetsJSONArray = [(BMUAFAssetSetStatus *)self _uafAssetSetsJSONArray];
  _uafAssetSubscriptionsJSONArray = [(BMUAFAssetSetStatus *)self _uafAssetSubscriptionsJSONArray];
  _allAssetsJSONArray = [(BMUAFAssetSetStatus *)self _allAssetsJSONArray];
  v12[0] = @"uafAssetSets";
  null = _uafAssetSetsJSONArray;
  if (!_uafAssetSetsJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"uafAssetSubscriptions";
  null2 = _uafAssetSubscriptionsJSONArray;
  if (!_uafAssetSubscriptionsJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"allAssets";
  null3 = _allAssetsJSONArray;
  if (!_allAssetsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (_allAssetsJSONArray)
  {
    if (_uafAssetSubscriptionsJSONArray)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (_uafAssetSetsJSONArray)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!_uafAssetSubscriptionsJSONArray)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (_uafAssetSetsJSONArray)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_allAssetsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allAssets = [(BMUAFAssetSetStatus *)self allAssets];
  v5 = [allAssets countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allAssets);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [allAssets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_uafAssetSubscriptionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  uafAssetSubscriptions = [(BMUAFAssetSetStatus *)self uafAssetSubscriptions];
  v5 = [uafAssetSubscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(uafAssetSubscriptions);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [uafAssetSubscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_uafAssetSetsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  uafAssetSets = [(BMUAFAssetSetStatus *)self uafAssetSets];
  v5 = [uafAssetSets countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(uafAssetSets);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [uafAssetSets countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMUAFAssetSetStatus)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v116[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"uafAssetSets"];
  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {
    selfCopy2 = self;

    v6 = 0;
  }

  else
  {
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = *MEMORY[0x1E698F240];
          v115 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"uafAssetSets"];
          v116[0] = v80;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:&v115 count:1];
          errorCopy5 = 0;
          *error = [v42 initWithDomain:v43 code:2 userInfo:v18];
          goto LABEL_83;
        }

        errorCopy5 = 0;
        goto LABEL_84;
      }
    }

    selfCopy2 = self;
  }

  v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v6 = v6;
  v9 = [v6 countByEnumeratingWithState:&v92 objects:v114 count:16];
  v77 = dictionaryCopy;
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
        errorCopy2 = error;
        if (error)
        {
          v22 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v112 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"uafAssetSets"];
          v113 = v14;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          v25 = v22;
          v26 = v23;
LABEL_22:
          errorCopy5 = 0;
          *errorCopy2 = [v25 initWithDomain:v26 code:2 userInfo:v24];
          obj = v6;
          goto LABEL_23;
        }

LABEL_43:
        errorCopy5 = 0;
        v18 = v6;
        self = selfCopy2;
        dictionaryCopy = v77;
        goto LABEL_83;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v27 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v110 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"uafAssetSets"];
          v111 = v14;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
          v25 = v27;
          v26 = v28;
          goto LABEL_22;
        }

        goto LABEL_43;
      }

      v14 = v13;
      v15 = [BMUAFAssetSet alloc];
      v91 = 0;
      v16 = [(BMUAFAssetSet *)v15 initWithJSONDictionary:v14 error:&v91];
      v17 = v91;
      if (v17)
      {
        v24 = v17;
        dictionaryCopy = v77;
        if (error)
        {
          v30 = v17;
          *error = v24;
        }

        errorCopy5 = 0;
        obj = v6;
        self = selfCopy2;
        goto LABEL_82;
      }

      [v80 addObject:v16];
    }

    v10 = [v6 countByEnumeratingWithState:&v92 objects:v114 count:16];
    dictionaryCopy = v77;
  }

  while (v10);
LABEL_16:

  v18 = [dictionaryCopy objectForKeyedSubscript:@"uafAssetSubscriptions"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:null2];

  if (v20)
  {

    v18 = 0;
  }

  else if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      self = selfCopy2;
      if (error)
      {
        obj = v18;
        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v61 = *MEMORY[0x1E698F240];
        v108 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"uafAssetSubscriptions"];
        v109 = v14;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
        errorCopy5 = 0;
        *error = [v60 initWithDomain:v61 code:2 userInfo:v24];
        goto LABEL_82;
      }

      errorCopy5 = 0;
      goto LABEL_83;
    }
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v18;
  v31 = [obj countByEnumeratingWithState:&v87 objects:v107 count:16];
  if (!v31)
  {
    goto LABEL_39;
  }

  v32 = v31;
  v33 = *v88;
  do
  {
    for (j = 0; j != v32; ++j)
    {
      if (*v88 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v87 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (error)
        {
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v105 = *MEMORY[0x1E696A578];
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"uafAssetSubscriptions"];
          v106 = v36;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
          *error = [v44 initWithDomain:v45 code:2 userInfo:v46];

LABEL_52:
          errorCopy5 = 0;
          v24 = obj;
          self = selfCopy2;
          dictionaryCopy = v77;
          goto LABEL_81;
        }

LABEL_68:
        errorCopy5 = 0;
        v24 = obj;
LABEL_23:
        self = selfCopy2;
        dictionaryCopy = v77;
        goto LABEL_82;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v103 = *MEMORY[0x1E696A578];
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"uafAssetSubscriptions"];
          v104 = v36;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
          *error = [v47 initWithDomain:v48 code:2 userInfo:v49];

          goto LABEL_52;
        }

        goto LABEL_68;
      }

      v36 = v35;
      v37 = [BMUAFAssetSubscriberSubscriptions alloc];
      v86 = 0;
      v38 = [(BMUAFAssetSubscriberSubscriptions *)v37 initWithJSONDictionary:v36 error:&v86];
      v39 = v86;
      if (v39)
      {
        v50 = v39;
        if (error)
        {
          v51 = v39;
          *error = v50;
        }

        goto LABEL_52;
      }

      [v14 addObject:v38];
    }

    v32 = [obj countByEnumeratingWithState:&v87 objects:v107 count:16];
    dictionaryCopy = v77;
  }

  while (v32);
LABEL_39:

  v24 = [dictionaryCopy objectForKeyedSubscript:@"allAssets"];
  null3 = [MEMORY[0x1E695DFB0] null];
  v41 = [v24 isEqual:null3];

  if (v41)
  {

    v24 = 0;
LABEL_55:
    v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v24 = v24;
    v52 = [v24 countByEnumeratingWithState:&v82 objects:v100 count:16];
    if (!v52)
    {
      goto LABEL_65;
    }

    v53 = v52;
    v74 = *v83;
LABEL_57:
    v54 = 0;
    while (1)
    {
      if (*v83 != v74)
      {
        objc_enumerationMutation(v24);
      }

      v55 = *(*(&v82 + 1) + 8 * v54);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        self = selfCopy2;
        dictionaryCopy = v77;
        errorCopy4 = error;
        if (!error)
        {
          goto LABEL_79;
        }

        v75 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v96 = *MEMORY[0x1E696A578];
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"allAssets"];
        v97 = v56;
        v64 = MEMORY[0x1E695DF20];
        v65 = &v97;
        v66 = &v96;
        goto LABEL_74;
      }

      v56 = v55;
      v57 = [BMUAFAssetMetadata alloc];
      v81 = 0;
      v58 = [(BMUAFAssetMetadata *)v57 initWithJSONDictionary:v56 error:&v81];
      v59 = v81;
      if (v59)
      {
        v67 = v59;
        if (error)
        {
          v68 = v59;
          *error = v67;
        }

        self = selfCopy2;
        dictionaryCopy = v77;
LABEL_78:

LABEL_79:
        goto LABEL_80;
      }

      [v36 addObject:v58];

      if (v53 == ++v54)
      {
        v53 = [v24 countByEnumeratingWithState:&v82 objects:v100 count:16];
        if (v53)
        {
          goto LABEL_57;
        }

LABEL_65:

        self = [(BMUAFAssetSetStatus *)selfCopy2 initWithUafAssetSets:v80 uafAssetSubscriptions:v14 allAssets:v36];
        errorCopy5 = self;
        dictionaryCopy = v77;
LABEL_81:

        goto LABEL_82;
      }
    }

    self = selfCopy2;
    dictionaryCopy = v77;
    errorCopy4 = error;
    if (!error)
    {
      goto LABEL_79;
    }

    v75 = objc_alloc(MEMORY[0x1E696ABC0]);
    v63 = *MEMORY[0x1E698F240];
    v98 = *MEMORY[0x1E696A578];
    v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"allAssets"];
    v99 = v56;
    v64 = MEMORY[0x1E695DF20];
    v65 = &v99;
    v66 = &v98;
LABEL_74:
    v67 = [v64 dictionaryWithObjects:v65 forKeys:v66 count:1];
    *errorCopy4 = [v75 initWithDomain:v63 code:2 userInfo:v67];
    goto LABEL_78;
  }

  if (!v24)
  {
    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_55;
  }

  self = selfCopy2;
  errorCopy5 = error;
  if (error)
  {
    v71 = objc_alloc(MEMORY[0x1E696ABC0]);
    v72 = *MEMORY[0x1E698F240];
    v101 = *MEMORY[0x1E696A578];
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"allAssets"];
    v102 = v36;
    v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    *error = [v71 initWithDomain:v72 code:2 userInfo:v73];

LABEL_80:
    errorCopy5 = 0;
    goto LABEL_81;
  }

LABEL_82:

  v18 = obj;
LABEL_83:

LABEL_84:
  v69 = *MEMORY[0x1E69E9840];
  return errorCopy5;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUAFAssetSetStatus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v40 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_uafAssetSets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v32 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_uafAssetSubscriptions;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        v32 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_allAssets;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v37 count:16];
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

        v22 = *(*(&v24 + 1) + 8 * v21);
        v32 = 0;
        PBDataWriterPlaceMark();
        [v22 writeTo:{toCopy, v24}];
        PBDataWriterRecallMark();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMUAFAssetSetStatus;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_33;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v13 = [fromCopy position] + 1;
        if (v13 >= [fromCopy position] && (v14 = objc_msgSend(fromCopy, "position") + 1, v14 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v12 |= (v35 & 0x7F) << v10;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      v17 = [fromCopy hasError] ? 0 : v12;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        goto LABEL_33;
      }

      v18 = v17 >> 3;
      if ((v17 >> 3) == 3)
      {
        v35 = 0;
        v36 = 0;
        if (!PBReaderPlaceMark() || (v23 = [[BMUAFAssetMetadata alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_35:

          goto LABEL_36;
        }

        v20 = v23;
        v21 = v8;
        goto LABEL_30;
      }

      if (v18 == 2)
      {
        break;
      }

      if (v18 == 1)
      {
        v35 = 0;
        v36 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_35;
        }

        v19 = [[BMUAFAssetSet alloc] initByReadFrom:fromCopy];
        if (!v19)
        {
          goto LABEL_35;
        }

        v20 = v19;
        v21 = v6;
LABEL_30:
        [v21 addObject:v20];
        PBReaderRecallMark();

        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_32:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_33;
      }
    }

    v35 = 0;
    v36 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_35;
    }

    v22 = [[BMUAFAssetSubscriberSubscriptions alloc] initByReadFrom:fromCopy];
    if (!v22)
    {
      goto LABEL_35;
    }

    v20 = v22;
    v21 = v7;
    goto LABEL_30;
  }

LABEL_33:
  v25 = [v6 copy];
  uafAssetSets = v5->_uafAssetSets;
  v5->_uafAssetSets = v25;

  v27 = [v7 copy];
  uafAssetSubscriptions = v5->_uafAssetSubscriptions;
  v5->_uafAssetSubscriptions = v27;

  v29 = [v8 copy];
  allAssets = v5->_allAssets;
  v5->_allAssets = v29;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_36:
    v32 = 0;
  }

  else
  {
LABEL_34:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uafAssetSets = [(BMUAFAssetSetStatus *)self uafAssetSets];
  uafAssetSubscriptions = [(BMUAFAssetSetStatus *)self uafAssetSubscriptions];
  allAssets = [(BMUAFAssetSetStatus *)self allAssets];
  v7 = [v3 initWithFormat:@"BMUAFAssetSetStatus with uafAssetSets: %@, uafAssetSubscriptions: %@, allAssets: %@", uafAssetSets, uafAssetSubscriptions, allAssets];

  return v7;
}

- (BMUAFAssetSetStatus)initWithUafAssetSets:(id)sets uafAssetSubscriptions:(id)subscriptions allAssets:(id)assets
{
  setsCopy = sets;
  subscriptionsCopy = subscriptions;
  assetsCopy = assets;
  v14.receiver = self;
  v14.super_class = BMUAFAssetSetStatus;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_uafAssetSets, sets);
    objc_storeStrong(&v12->_uafAssetSubscriptions, subscriptions);
    objc_storeStrong(&v12->_allAssets, assets);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uafAssetSets" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uafAssetSubscriptions" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"allAssets" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"uafAssetSets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_353_103324];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"uafAssetSubscriptions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_355];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"allAssets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_357];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __30__BMUAFAssetSetStatus_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _allAssetsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __30__BMUAFAssetSetStatus_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _uafAssetSubscriptionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __30__BMUAFAssetSetStatus_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _uafAssetSetsJSONArray];
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

    v8 = [[BMUAFAssetSetStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end