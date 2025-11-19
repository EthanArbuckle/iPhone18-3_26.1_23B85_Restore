@interface DESRecipe
+ (BOOL)_hasValidClippingBounds:(id)a3 matchValidNumChunks:(id)a4;
+ (BOOL)transportIsDedisco:(id)a3;
+ (BOOL)useAdaptiveClipping:(id)a3;
+ (BOOL)useAggregatableMetadata:(id)a3;
+ (BOOL)useSparsification:(id)a3;
- (BOOL)isFederatedBufferStaled;
- (BOOL)isFederatedBufferStaled:(id)a3;
- (BOOL)useFederatedBuffer;
- (DESRecipe)initWithCoder:(id)a3;
- (NSNumber)approximateStaleness;
- (NSNumber)federatedBufferDownScalingFactor;
- (NSNumber)maxNorm;
- (NSString)privacyIdentifierExt;
- (id)_initWithAssetURL:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (id)_initWithRecipeResponse:(id)a3 recipeID:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)_initWithRecipeUserInfo:(id)a3 recipeID:(id)a4 bundleIdentifier:(id)a5 predicate:(id)a6 attachments:(id)a7;
- (id)_inithWithContentsOfFile:(id)a3 recipeID:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)description;
- (id)haruspexKeyWithError:(id *)a3;
- (void)approximateStaleness;
- (void)encodeWithCoder:(id)a3;
- (void)federatedBufferDownScalingFactor;
@end

@implementation DESRecipe

- (id)_inithWithContentsOfFile:(id)a3 recipeID:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25 = 0;
  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v10 options:0 error:&v25];
  v14 = v25;
  if (v13)
  {
    v24 = v14;
    v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:&v24];
    v16 = v24;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [(DESRecipe *)self _initWithRecipeUserInfo:v15 recipeID:v11 bundleIdentifier:v12];
    }

    else
    {
      v20 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v27 = v10;
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&dword_248FF7000, v20, OS_LOG_TYPE_INFO, "Unparsable record: %@, %@", buf, 0x16u);
      }

      if (a6)
      {
        v21 = v16;
        v17 = 0;
        *a6 = v16;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v18 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = v10;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_248FF7000, v18, OS_LOG_TYPE_INFO, "Unreadable recipe %@: %@", buf, 0x16u);
    }

    if (a6)
    {
      v19 = v14;
      v17 = 0;
      *a6 = v14;
    }

    else
    {
      v17 = 0;
    }

    v16 = v14;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_initWithRecipeUserInfo:(id)a3 recipeID:(id)a4 bundleIdentifier:(id)a5 predicate:(id)a6 attachments:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32.receiver = self;
  v32.super_class = DESRecipe;
  v17 = [(DESRecipe *)&v32 init];
  if (v17)
  {
    v18 = [v13 copy];
    recipeID = v17->_recipeID;
    v17->_recipeID = v18;

    v20 = [v14 copy];
    bundleIdentifier = v17->_bundleIdentifier;
    v17->_bundleIdentifier = v20;

    v22 = [v12 copy];
    recipeUserInfo = v17->_recipeUserInfo;
    v17->_recipeUserInfo = v22;

    v24 = [v16 copy];
    attachments = v17->_attachments;
    v17->_attachments = v24;

    attachmentSignatures = v17->_attachmentSignatures;
    v17->_attachmentSignatures = MEMORY[0x277CBEBF8];

    certificate = v17->_certificate;
    v17->_certificate = 0;

    v28 = [v15 copy];
    predicate = v17->_predicate;
    v17->_predicate = v28;

    v30 = v17;
  }

  return v17;
}

- (id)_initWithAssetURL:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v39[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v29 = 0;
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:8 error:&v29];
    v11 = v29;
    if (!v10)
    {
      if (!a5)
      {
        v18 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v20 = MEMORY[0x277CCA9B8];
      v36[0] = *MEMORY[0x277CCA450];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to read URL=(%@)", v8];
      v36[1] = *MEMORY[0x277CCA7E8];
      v37[0] = v12;
      v37[1] = v11;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
      [v20 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5006 userInfo:v15];
      *a5 = v18 = 0;
      v13 = v11;
      goto LABEL_21;
    }

    v28 = v11;
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v28];
    v13 = v28;

    if (!v12)
    {
      if (!a5)
      {
        v18 = 0;
        goto LABEL_22;
      }

      v27 = MEMORY[0x277CCA9B8];
      v34[0] = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to decode JSONObject from URL=(%@)", v8];
      v34[1] = *MEMORY[0x277CCA7E8];
      v35[0] = v15;
      v35[1] = v13;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
      [v27 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5006 userInfo:v16];
      *a5 = v18 = 0;
      goto LABEL_20;
    }

    v14 = [v12 objectForKeyedSubscript:@"recipe_blob"];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 objectForKeyedSubscript:@"id"];
      if (v16)
      {
        v26 = v13;
        v17 = [v12 objectForKeyedSubscript:@"recipe_predicate_client"];
        self = [(DESRecipe *)self _initWithRecipeUserInfo:v15 recipeID:v16 bundleIdentifier:v9 predicate:v17];
        v18 = self;
      }

      else
      {
        if (!a5)
        {
          v18 = 0;
          goto LABEL_20;
        }

        v25 = MEMORY[0x277CCA9B8];
        v26 = v13;
        v30 = *MEMORY[0x277CCA450];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing recipe ID for URL=(%@)", v8];
        v31 = v17;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *a5 = [v25 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1524 userInfo:v21];

        v18 = 0;
      }
    }

    else
    {
      if (!a5)
      {
        v18 = 0;
        goto LABEL_21;
      }

      v24 = MEMORY[0x277CCA9B8];
      v26 = v13;
      v32 = *MEMORY[0x277CCA450];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing user info dictionary for URL=(%@)", v8];
      v33 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      [v24 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1524 userInfo:v17];
      *a5 = v18 = 0;
    }

    v13 = v26;
LABEL_20:

LABEL_21:
LABEL_22:

    v11 = v13;
    goto LABEL_23;
  }

  if (a5)
  {
    v19 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"Nil recipe asset URL";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v19 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:5003 userInfo:v11];
    *a5 = v18 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v18 = 0;
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_initWithRecipeResponse:(id)a3 recipeID:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  v152[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v118.receiver = self;
  v118.super_class = DESRecipe;
  v13 = [(DESRecipe *)&v118 init];
  if (!v13)
  {
    v25 = 0;
    goto LABEL_136;
  }

  v14 = [v10 objectForKey:@"recipe_signing"];
  if (!v14)
  {
    v26 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (a6)
    {
      v27 = MEMORY[0x277CCA9B8];
      v151 = *MEMORY[0x277CCA470];
      v152[0] = @"Missing recipe_signing";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:&v151 count:1];
      v28 = [v27 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v15];
LABEL_25:
      v25 = 0;
      *a6 = v28;
      goto LABEL_134;
    }

LABEL_26:
    v25 = 0;
    goto LABEL_135;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (a6)
    {
      v30 = MEMORY[0x277CCA9B8];
      v149 = *MEMORY[0x277CCA470];
      v150 = @"Malformed recipe_signing";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      v28 = [v30 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v15];
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v15 = [v14 objectForKey:@"recipe_signature"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (a6)
    {
      v32 = MEMORY[0x277CCA9B8];
      v147 = *MEMORY[0x277CCA470];
      v148 = @"Malformed recipe_signature";
      v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      [v32 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v111];
      *a6 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_134;
  }

  v110 = [v14 objectForKey:@"recipe_content"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (a6)
    {
      v34 = MEMORY[0x277CCA9B8];
      v145 = *MEMORY[0x277CCA470];
      v146 = @"Malformed recipe_content";
      v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
      [v34 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v109];
      *a6 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_133;
  }

  v108 = [v14 objectForKey:@"asset_signing_certificate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v108 length])
  {
    v35 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (a6)
    {
      v36 = MEMORY[0x277CCA9B8];
      v143 = *MEMORY[0x277CCA470];
      v144 = @"Malformed asset_signing_certificate";
      v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
      [v36 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1521 userInfo:v107];
      *a6 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_132;
  }

  v106 = [v108 dataUsingEncoding:4];
  v16 = [v106 copy];
  certificate = v13->_certificate;
  v13->_certificate = v16;

  v105 = [v110 dataUsingEncoding:4];
  v104 = [DESSignatureKey keyFromData:v106];
  if (([v104 validateBase64Signature:v15 data:v105] & 1) == 0)
  {
    v37 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (a6)
    {
      v38 = MEMORY[0x277CCA9B8];
      v141 = *MEMORY[0x277CCA470];
      v142 = @"Failed to validate recipe signature";
      v103 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
      [v38 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1504 userInfo:v103];
      *a6 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_131;
  }

  v102 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v110 options:0];
  if (!v102)
  {
    v39 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (a6)
    {
      v40 = MEMORY[0x277CCA9B8];
      v139 = *MEMORY[0x277CCA470];
      v140 = @"Failed to base64 decode recipe content";
      v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      [v40 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1530 userInfo:v101];
      *a6 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_130;
  }

  v100 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v102 options:0 error:a6];
  v18 = +[DESLogging coreChannel];
  v19 = v18;
  if (!v100)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (a6)
    {
      v41 = MEMORY[0x277CCA9B8];
      v137 = *MEMORY[0x277CCA470];
      v138 = @"Failed to deserialize recipe content";
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      *a6 = [v41 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1522 userInfo:v42];
    }

    v25 = 0;
    goto LABEL_129;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
  }

  v115 = 0;
  v116[0] = &v115;
  v116[1] = 0x3032000000;
  v116[2] = __Block_byref_object_copy__0;
  v116[3] = __Block_byref_object_dispose__0;
  v117 = [v100 objectForKeyedSubscript:@"recipe"];
  v20 = *(v116[0] + 40);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [(DESRecipe *)v116 _initWithRecipeResponse:v43 recipeID:v44 bundleIdentifier:v45 error:v46, v47, v48, v49];
    }

    if (a6)
    {
      v50 = MEMORY[0x277CCA9B8];
      v135 = *MEMORY[0x277CCA470];
      v136 = @"Malformed recipe";
      v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      [v50 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1524 userInfo:v51];
      *a6 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_128;
  }

  v21 = [v100 objectForKeyedSubscript:@"parameters"];
  objc_opt_class();
  v95 = v21;
  if (objc_opt_isKindOfClass())
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke;
    v112[3] = &unk_278F83E78;
    v23 = v22;
    v113 = v23;
    v114 = &v115;
    [v21 enumerateKeysAndObjectsUsingBlock:v112];

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v93 = v24;
  v52 = [v24 copy];
  parametersUsed = v13->_parametersUsed;
  v13->_parametersUsed = v52;

  v54 = [*(v116[0] + 40) copy];
  recipeUserInfo = v13->_recipeUserInfo;
  v13->_recipeUserInfo = v54;

  v98 = [v100 objectForKeyedSubscript:@"attached_files"];
  if (v98)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v62 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (a6)
      {
        v63 = MEMORY[0x277CCA9B8];
        v133 = *MEMORY[0x277CCA470];
        v134 = @"Malformed attached_files";
        v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
        [v63 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v64];
        *a6 = v25 = 0;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_127;
    }
  }

  v97 = [v100 objectForKeyedSubscript:@"attached_files_signatures"];
  if (v97)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v69 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (a6)
      {
        v70 = MEMORY[0x277CCA9B8];
        v131 = *MEMORY[0x277CCA470];
        v132 = @"Malformed attached_files_signatures";
        v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
        [v70 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v71];
        v68 = v94 = v71;
        goto LABEL_99;
      }

LABEL_100:
      v25 = 0;
      goto LABEL_126;
    }
  }

  v56 = [v97 count];
  if (v56 != [v98 count])
  {
    v65 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
    }

    if (a6)
    {
      v66 = MEMORY[0x277CCA9B8];
      v129 = *MEMORY[0x277CCA470];
      v130 = @"Length mismatch between attached_files and attached_files_signatures";
      v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
      [v66 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v67];
      v68 = v94 = v67;
LABEL_99:
      v25 = 0;
      *a6 = v68;
      goto LABEL_125;
    }

    goto LABEL_100;
  }

  v94 = [v100 objectForKeyedSubscript:@"attached_files_paths"];
  if (v94)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [v94 count];
      if (v57 == [v98 count])
      {
        goto LABEL_70;
      }

      v79 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (a6)
      {
        v80 = MEMORY[0x277CCA9B8];
        v125 = *MEMORY[0x277CCA470];
        v126 = @"Length mismatch between paths and attachments";
        obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
        v78 = [v80 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:obj];
        goto LABEL_111;
      }
    }

    else
    {
      v76 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (a6)
      {
        v77 = MEMORY[0x277CCA9B8];
        v127 = *MEMORY[0x277CCA470];
        v128 = @"Malformed paths";
        obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
        v78 = [v77 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:obj];
LABEL_111:
        v25 = 0;
        *a6 = v78;
        goto LABEL_124;
      }
    }

    v25 = 0;
    goto LABEL_125;
  }

LABEL_70:
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = 0;
  *&v59 = 138412290;
  v89 = v59;
  while (1)
  {
    if (v58 >= [v98 count])
    {
      objc_storeStrong(&v13->_attachments, obj);
      objc_storeStrong(&v13->_attachmentSignatures, v91);
      objc_storeStrong(&v13->_attachmentPaths, v90);
      v72 = [v11 copy];
      recipeID = v13->_recipeID;
      v13->_recipeID = v72;

      v74 = [v12 copy];
      bundleIdentifier = v13->_bundleIdentifier;
      v13->_bundleIdentifier = v74;

      v25 = v13;
      goto LABEL_123;
    }

    v99 = [v98 objectAtIndexedSubscript:v58];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v61 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = v89;
      v124 = v99;
      _os_log_error_impl(&dword_248FF7000, v61, OS_LOG_TYPE_ERROR, "Invalid attachmentURLString = %@", buf, 0xCu);
    }

LABEL_85:

    ++v58;
  }

  v60 = [MEMORY[0x277CBEBC0] URLWithString:v99];
  v61 = v60;
  if (!v60)
  {
    log = +[DESLogging coreChannel];
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = v89;
      v124 = v99;
      _os_log_error_impl(&dword_248FF7000, log, OS_LOG_TYPE_ERROR, "Fail to create URL from attachmentURLString = %@", buf, 0xCu);
    }

LABEL_84:

    goto LABEL_85;
  }

  [obj addObject:v60];
  if (v58 >= [v97 count])
  {
LABEL_77:
    if (v58 >= [v94 count])
    {
      goto LABEL_85;
    }

    log = [v94 objectAtIndexedSubscript:v58];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v85 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
      }

      if (a6)
      {
        v86 = MEMORY[0x277CCA9B8];
        v119 = *MEMORY[0x277CCA470];
        v120 = @"Nonstring type used as attachment path";
        v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v84 = [v86 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v83];
        goto LABEL_121;
      }

      goto LABEL_122;
    }

    [v90 addObject:log];
    goto LABEL_84;
  }

  log = [v97 objectAtIndexedSubscript:v58];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v91 addObject:log];

    goto LABEL_77;
  }

  v81 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
  {
    [DESRecipe _initWithRecipeResponse:recipeID:bundleIdentifier:error:];
  }

  if (a6)
  {
    v82 = MEMORY[0x277CCA9B8];
    v121 = *MEMORY[0x277CCA470];
    v122 = @"Nonstring type used as signature in attached_files_signatures";
    v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
    v84 = [v82 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1523 userInfo:v83];
LABEL_121:
    *a6 = v84;
  }

LABEL_122:

  v25 = 0;
LABEL_123:

LABEL_124:
LABEL_125:

LABEL_126:
LABEL_127:

LABEL_128:
  _Block_object_dispose(&v115, 8);

LABEL_129:
LABEL_130:

LABEL_131:
LABEL_132:

LABEL_133:
LABEL_134:

LABEL_135:
LABEL_136:

  v87 = *MEMORY[0x277D85DE8];
  return v25;
}

void __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 count])
  {
    v7 = [v6 objectAtIndex:{arc4random_uniform(objc_msgSend(v6, "count"))}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x277CCAAA0];
      v9 = [v7 dataUsingEncoding:4];
      v20 = 0;
      v10 = [v8 JSONObjectWithData:v9 options:4 error:&v20];
      v11 = v20;

      if (v10)
      {
        [*(a1 + 32) setValue:v7 forKey:v5];
        v12 = *(*(*(a1 + 40) + 8) + 40);
        v13 = [@"$" stringByAppendingString:v5];
        v14 = [v12 _fides_objectByReplacingValue:v13 withValue:v10];

        v15 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(*(*(a1 + 40) + 8) + 40);
          *buf = 138412802;
          v22 = v5;
          v23 = 2112;
          v24 = v19;
          v25 = 2112;
          v26 = v14;
          _os_log_debug_impl(&dword_248FF7000, v15, OS_LOG_TYPE_DEBUG, "Recipe after replacement of %@: %@ -> %@", buf, 0x20u);
        }

        v16 = *(*(a1 + 40) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v14;
      }

      else
      {
        v17 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke_cold_2();
        }
      }
    }

    else
    {
      v11 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v7 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke_cold_3();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (BOOL)transportIsDedisco:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"des_settings"];
  v4 = [v3 objectForKeyedSubscript:@"data_transport"];
  v5 = [v4 isEqualToString:@"dedisco"];

  return v5;
}

- (NSString)privacyIdentifierExt
{
  v3 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"privacyIdentifierExt"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"privacyIdentifierExt"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)haruspexKeyWithError:(id *)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"iCloudAggServiceKey"];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0];
    v6 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v6;
    }

    else
    {
      if (a3)
      {
        v9 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CCA450];
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
        *a3 = [v9 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1501 userInfo:v10];
      }

      v7 = 0;
    }

    goto LABEL_9;
  }

  if (a3)
  {
    v8 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v8 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1501 userInfo:v6];
    *a3 = v7 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (BOOL)useSparsification:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"sparsification"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKeyedSubscript:@"sparsification"];
      v7 = [v6 objectForKeyedSubscript:@"chunkClippingBounds"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v4 objectForKeyedSubscript:@"sparsification"];
        v9 = [v8 objectForKeyedSubscript:@"numChunks"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v4 objectForKeyedSubscript:@"sparsification"];
          v11 = [v10 objectForKeyedSubscript:@"chunkClippingBounds"];
          v18 = [v4 objectForKeyedSubscript:@"sparsification"];
          v12 = [v18 objectForKeyedSubscript:@"numChunks"];
          v19 = v11;
          if ([DESRecipe _hasValidClippingBounds:v11 matchValidNumChunks:v12])
          {
            v13 = [v4 objectForKeyedSubscript:@"sparsification"];
            [v13 objectForKeyedSubscript:@"sparsificationMapFile"];
            v14 = v17 = v10;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v10 = v17;
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)_hasValidClippingBounds:(id)a3 matchValidNumChunks:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v9 = [v6 intValue];
  LOBYTE(v9) = [v5 count] == v9;

  return isKindOfClass & v9;
}

+ (BOOL)useAggregatableMetadata:(id)a3
{
  if (a3)
  {
    v3 = [a3 objectForKeyedSubscript:@"MetadataEncoding"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)useAdaptiveClipping:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"ClippingIndicatorScale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKeyedSubscript:@"ClippingIndicatorScale"];
      [v6 doubleValue];
      v8 = v7 > 0.0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)useFederatedBuffer
{
  v3 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"federatedBufferContext"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"ramsayRecipeID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (NSNumber)approximateStaleness
{
  if (![(DESRecipe *)self useFederatedBuffer])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    goto LABEL_15;
  }

  v3 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"federatedBufferContext"];
  v4 = [v3 objectForKeyedSubscript:@"iterationStartTime"];

  if (!v4)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    goto LABEL_14;
  }

  v5 = [v3 objectForKeyedSubscript:@"iterationStartTime"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = [v3 objectForKeyedSubscript:@"stalenessScale"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_10:
    goto LABEL_11;
  }

  v7 = [v3 objectForKeyedSubscript:@"stalenessBias"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_11:
    v15 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(DESRecipe *)v3 approximateStaleness];
    }

    v14 = 0;
    goto LABEL_14;
  }

  v9 = [v3 objectForKeyedSubscript:@"iterationStartTime"];
  [v9 doubleValue];
  v11 = v10;
  v12 = [v3 objectForKeyedSubscript:@"stalenessScale"];
  v13 = [v3 objectForKeyedSubscript:@"stalenessBias"];
  v14 = [DESFederatedBuffer computeApproximateStaleness:v12 stalenessScale:v13 stalenessBias:v11];

LABEL_14:
LABEL_15:

  return v14;
}

- (BOOL)isFederatedBufferStaled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(DESRecipe *)self useFederatedBuffer])
    {
      v5 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"federatedBufferContext"];
      v6 = [v5 objectForKeyedSubscript:@"maximumStaleness"];

      if (v6)
      {
        v7 = [v5 objectForKeyedSubscript:@"maximumStaleness"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          [v4 doubleValue];
          v10 = v9;
          v11 = [v5 objectForKeyedSubscript:@"maximumStaleness"];
          [v11 doubleValue];
          v13 = v12;

          if (v10 < v13)
          {
            LOBYTE(v6) = 0;
            goto LABEL_14;
          }

          v6 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            [(DESRecipe *)v4 isFederatedBufferStaled:v5, v6];
          }
        }

        else
        {
          v6 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            [DESRecipe isFederatedBufferStaled:v5];
          }
        }

        LOBYTE(v6) = 1;
      }

LABEL_14:

      goto LABEL_15;
    }

    LOBYTE(v6) = 0;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

LABEL_15:

  return v6;
}

- (BOOL)isFederatedBufferStaled
{
  v2 = self;
  v3 = [(DESRecipe *)self approximateStaleness];
  LOBYTE(v2) = [(DESRecipe *)v2 isFederatedBufferStaled:v3];

  return v2;
}

- (NSNumber)federatedBufferDownScalingFactor
{
  if (![(DESRecipe *)self useFederatedBuffer])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
    goto LABEL_18;
  }

  v3 = [(DESRecipe *)self approximateStaleness];
  if (!v3)
  {
    v4 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(DESRecipe *)v4 federatedBufferDownScalingFactor];
    }

    goto LABEL_16;
  }

  if ([(DESRecipe *)self isFederatedBufferStaled:v3])
  {
    v4 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(DESRecipe *)v4 federatedBufferDownScalingFactor];
    }

LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  v4 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"federatedBufferContext"];
  v6 = [v4 objectForKeyedSubscript:@"downScalingOrder"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"downScalingOrder"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v10 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(DESRecipe *)v4 federatedBufferDownScalingFactor];
      }

      goto LABEL_16;
    }

    v9 = [v4 objectForKeyedSubscript:@"downScalingOrder"];
    v5 = [DESFederatedBuffer computeDownScalingFactor:v9 approximateStaleness:v3];
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  }

LABEL_17:

LABEL_18:

  return v5;
}

- (NSNumber)maxNorm
{
  v3 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"maxNorm"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(NSDictionary *)self->_recipeUserInfo objectForKeyedSubscript:@"L2NormBound"];
  }

  v6 = v5;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  recipeID = self->_recipeID;
  v11 = v4;
  if (recipeID)
  {
    [v4 encodeObject:recipeID forKey:@"recipeId"];
    v4 = v11;
  }

  [v4 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  recipeUserInfo = self->_recipeUserInfo;
  if (recipeUserInfo)
  {
    [v11 encodeObject:recipeUserInfo forKey:@"recipeUserInfo"];
  }

  attachments = self->_attachments;
  if (attachments)
  {
    [v11 encodeObject:attachments forKey:@"attachments"];
  }

  attachmentSignatures = self->_attachmentSignatures;
  v9 = v11;
  if (attachmentSignatures)
  {
    [v11 encodeObject:attachmentSignatures forKey:@"attachmentSignatures"];
    v9 = v11;
  }

  attachmentPaths = self->_attachmentPaths;
  if (attachmentPaths)
  {
    [v11 encodeObject:attachmentPaths forKey:@"attachmentPaths"];
    v9 = v11;
  }
}

- (DESRecipe)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = DESRecipe;
  v5 = [(DESRecipe *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipeId"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    if (v7)
    {
      objc_storeStrong(&v5->_recipeID, v6);
      objc_storeStrong(&v5->_bundleIdentifier, v7);
      v8 = MEMORY[0x277CBEB98];
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"recipeUserInfo"];
      recipeUserInfo = v5->_recipeUserInfo;
      v5->_recipeUserInfo = v14;

      v16 = MEMORY[0x277CBEB98];
      v17 = objc_opt_class();
      v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
      v19 = [v4 decodeObjectOfClasses:v18 forKey:@"attachments"];
      attachments = v5->_attachments;
      v5->_attachments = v19;

      v21 = MEMORY[0x277CBEB98];
      v22 = objc_opt_class();
      v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
      v24 = [v4 decodeObjectOfClasses:v23 forKey:@"attachmentSignatures"];
      attachmentSignatures = v5->_attachmentSignatures;
      v5->_attachmentSignatures = v24;

      v26 = MEMORY[0x277CBEB98];
      v27 = objc_opt_class();
      v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
      v29 = [v4 decodeObjectOfClasses:v28 forKey:@"attachmentPaths"];
      attachmentPaths = v5->_attachmentPaths;
      v5->_attachmentPaths = v29;

      v31 = v5;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  recipeID = self->_recipeID;
  v7 = [v3 stringWithFormat:@"%@(%@, %@, %@)", v5, self->_bundleIdentifier, recipeID, self->_recipeUserInfo];

  return v7;
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "recipe_signing is of wrong type, recipeSigning=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "recipe_signature is of wrong type, recipeSignature=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "recipe_content is of wrong type, recipeContent=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "Failed to validate recipe signature: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_248FF7000, v0, OS_LOG_TYPE_DEBUG, "Successfully validated recipe signature: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:(uint64_t)a3 recipeID:(uint64_t)a4 bundleIdentifier:(uint64_t)a5 error:(uint64_t)a6 .cold.6(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0(&dword_248FF7000, a2, a3, "recipe is of wrong type or zero length, recipe=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "attachmentURLStrings is of wrong type, attachmentURLStrings=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "attachmentSignatures is of wrong type, attachmentSignatures=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.9()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_248FF7000, v0, v1, "Length mismatch between attached_files and attached_files_signatures, attachmentURLStrings=%@, attachmentSignatures=%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "attachmentPaths is of wrong type, attachmentPaths=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.11()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_248FF7000, v0, v1, "Length mismatch between paths and attachments, attachmentURLStrings=%@, attachmentPaths=%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.12()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "signature is of wrong type, signature=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.13()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "path  is of wrong type, path=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.14()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "Failed to deserialize recipe content for recipeId=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.15()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "Failed to base64 decode recipe content for recipeId=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.16()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "asset_signing_certificate is of wrong type or zero length, certStr=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_initWithRecipeResponse:recipeID:bundleIdentifier:error:.cold.17()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_248FF7000, v0, v1, "Missing recipe_signing for recipeId=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_248FF7000, v0, v1, "Skipping invalid parameter value %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_248FF7000, v0, v1, "Skipping unparsable parameter value %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __69__DESRecipe__initWithRecipeResponse_recipeID_bundleIdentifier_error___block_invoke_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_248FF7000, v0, v1, "Skipping invalid parameter set %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)approximateStaleness
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 objectForKeyedSubscript:@"iterationStartTime"];
  v3 = [a1 objectForKeyedSubscript:@"stalenessScale"];
  v10 = [a1 objectForKeyedSubscript:@"stalenessBias"];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)isFederatedBufferStaled:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"maximumStaleness"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isFederatedBufferStaled:(NSObject *)a3 .cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 objectForKeyedSubscript:@"maximumStaleness"];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_248FF7000, a3, OS_LOG_TYPE_DEBUG, "Rejecting recipe since the staleness %@ is larger or equal than the limit %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)federatedBufferDownScalingFactor
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"downScalingOrder"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end