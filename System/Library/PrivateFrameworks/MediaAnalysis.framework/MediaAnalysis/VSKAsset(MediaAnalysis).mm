@interface VSKAsset(MediaAnalysis)
+ (__CFString)mad_stringIdentifierPostfixForEmbeddingType:()MediaAnalysis;
+ (id)mad_attributesWithEmbeddingVersion:()MediaAnalysis;
+ (id)mad_embeddingTypeFilter:()MediaAnalysis;
+ (id)mad_fetchEmbeddingForPhotosAsset:()MediaAnalysis embeddingType:;
+ (id)mad_imageAssetWithLocalIdentifier:()MediaAnalysis mediaAnalysisResults:error:;
+ (id)mad_localIdentifierFromStringIdentifier:()MediaAnalysis;
+ (id)mad_stringIdentifierFromLocalIdentifier:()MediaAnalysis embeddingType:;
+ (id)mad_stringIdentifiersFromLocalIdentifiers:()MediaAnalysis;
+ (id)mad_videoAssetWithLocalIdentifier:()MediaAnalysis mediaAnalysisResults:error:;
- (id)mad_photosLocalIdentifier;
- (id)mad_updateAssetWithEmbeddingVersion:()MediaAnalysis;
- (uint64_t)mad_embeddingVersion;
- (uint64_t)mad_hasImageEmbedding;
- (uint64_t)mad_hasVideoEmbedding;
@end

@implementation VSKAsset(MediaAnalysis)

+ (__CFString)mad_stringIdentifierPostfixForEmbeddingType:()MediaAnalysis
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    return @"_1";
  }

  v3 = a3;
  if (a3 == 2)
  {
    return @"_2";
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKAsset+MediaAnalysis] Unexpected embedding type %u", v5, 8u);
  }

  return @"_0";
}

+ (id)mad_stringIdentifierFromLocalIdentifier:()MediaAnalysis embeddingType:
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [objc_opt_class() mad_stringIdentifierPostfixForEmbeddingType:a4];
  v8 = [v5 stringWithFormat:@"%@%@", v6, v7];

  return v8;
}

+ (id)mad_localIdentifierFromStringIdentifier:()MediaAnalysis
{
  v3 = a3;
  v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 2}];

  return v4;
}

- (id)mad_photosLocalIdentifier
{
  v2 = objc_opt_class();
  stringIdentifier = [self stringIdentifier];
  v4 = [v2 mad_localIdentifierFromStringIdentifier:stringIdentifier];

  return v4;
}

- (uint64_t)mad_hasImageEmbedding
{
  stringIdentifier = [self stringIdentifier];
  v2 = [objc_opt_class() mad_stringIdentifierPostfixForEmbeddingType:1];
  v3 = [stringIdentifier hasSuffix:v2];

  return v3;
}

- (uint64_t)mad_hasVideoEmbedding
{
  stringIdentifier = [self stringIdentifier];
  v2 = [objc_opt_class() mad_stringIdentifierPostfixForEmbeddingType:2];
  v3 = [stringIdentifier hasSuffix:v2];

  return v3;
}

- (uint64_t)mad_embeddingVersion
{
  v20 = *MEMORY[0x1E69E9840];
  [self attributes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = v18 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        getName = [v6 getName];
        mad_embeddingVersionAttributeName = [MEMORY[0x1E69DF600] mad_embeddingVersionAttributeName];
        v9 = [getName isEqualToString:mad_embeddingVersionAttributeName];

        if (v9)
        {
          v11 = [v1 objectForKeyedSubscript:v6];
          getIntValue = [v11 getIntValue];
          unsignedIntegerValue = [getIntValue unsignedIntegerValue];

          goto LABEL_14;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKAsset+MediaAnalysis] No embedding version attribute found", v14, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_14:

  return unsignedIntegerValue;
}

- (id)mad_updateAssetWithEmbeddingVersion:()MediaAnalysis
{
  v2 = [MEMORY[0x1E69DF5F8] mad_attributesWithEmbeddingVersion:?];
  v3 = objc_alloc(MEMORY[0x1E69DF5F8]);
  stringIdentifier = [self stringIdentifier];
  vectors = [self vectors];
  v6 = [v3 initWithStringIdentifier:stringIdentifier vectors:vectors attributes:v2 payload:0];

  return v6;
}

+ (id)mad_embeddingTypeFilter:()MediaAnalysis
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if ((a3 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = [MEMORY[0x1E69DF5F8] mad_stringIdentifierPostfixForEmbeddingType:a3];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%%@", v5];
    v7 = objc_alloc(MEMORY[0x1E69DF628]);
    v8 = [objc_alloc(MEMORY[0x1E69DF620]) initWithStringValue:v6];
    v9 = [v7 initWithOperator:6 value:v8];
    v14 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];

    v11 = objc_alloc(MEMORY[0x1E69DF630]);
    mad_stringIdentifierAttribute = [MEMORY[0x1E69DF600] mad_stringIdentifierAttribute];
    v4 = [v11 initWithAttribute:mad_stringIdentifierAttribute disjunctiveFilters:v10];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VSKAsset+MediaAnalysis] Failed to create filter for unexpected embedding type %u", buf, 8u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)mad_stringIdentifiersFromLocalIdentifiers:()MediaAnalysis
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [objc_opt_class() mad_stringIdentifierFromLocalIdentifier:v10 embeddingType:{1, v14}];
        [array addObject:v11];

        v12 = [objc_opt_class() mad_stringIdentifierFromLocalIdentifier:v10 embeddingType:2];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)mad_attributesWithEmbeddingVersion:()MediaAnalysis
{
  v11[1] = *MEMORY[0x1E69E9840];
  mad_embeddingVersionAttribute = [MEMORY[0x1E69DF600] mad_embeddingVersionAttribute];
  v10 = mad_embeddingVersionAttribute;
  v5 = objc_alloc(MEMORY[0x1E69DF620]);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 initWithIntegerValue:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

+ (id)mad_imageAssetWithLocalIdentifier:()MediaAnalysis mediaAnalysisResults:error:
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E6978628];
  v9 = a4;
  v10 = [v8 uuidFromLocalIdentifier:v7];
  vcp_results = [v9 vcp_results];

  v12 = [vcp_results objectForKeyedSubscript:@"ImageEmbeddingResults"];

  v13 = VCPSignPostLog();
  v14 = os_signpost_id_generate(v13);

  v15 = VCPSignPostLog();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 138412290;
    v37 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "VSKAsset_preferredImageEmbeddingsForAssetUUID", "_%@", buf, 0xCu);
  }

  v32 = 0;
  v33 = 0;
  v17 = [MADEmbeddingStore preferredImageEmbeddingsForAssetUUID:v10 version:&v33 fromImageEmbeddingResults:v12 error:&v32];
  v18 = v32;
  if ([v17 count])
  {
    v19 = v33 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0;
    if (a5)
    {
      *a5 = [v18 copy];
    }
  }

  else
  {
    v21 = VCPSignPostLog();
    v22 = v21;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 138412290;
      v37 = v7;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_END, v14, "VSKAsset_preferredImageEmbeddingsForAssetUUID", "_%@", buf, 0xCu);
    }

    v23 = [MEMORY[0x1E69DF5F8] mad_stringIdentifierFromLocalIdentifier:v7 embeddingType:1];
    v24 = [MEMORY[0x1E69DF5F8] mad_attributesWithEmbeddingVersion:v33];
    v25 = [objc_alloc(MEMORY[0x1E69DF5F8]) initWithStringIdentifier:v23 vectors:v17 attributes:v24 payload:0];
    v20 = v25;
    if (v25)
    {
      v26 = v25;
    }

    else if (a5)
    {
      v31 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A768];
      v34 = *MEMORY[0x1E696A578];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to create VSKAsset %@ with image embeddings %@", v7, v23, v17];
      v35 = v29;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *a5 = [v31 errorWithDomain:v30 code:-18 userInfo:v27];
    }
  }

  return v20;
}

+ (id)mad_videoAssetWithLocalIdentifier:()MediaAnalysis mediaAnalysisResults:error:
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E6978628];
  v8 = a4;
  v9 = [v7 uuidFromLocalIdentifier:v6];
  vcp_results = [v8 vcp_results];
  v11 = [vcp_results objectForKeyedSubscript:@"VideoEmbeddingResults"];

  vcp_results2 = [v8 vcp_results];
  v13 = [vcp_results2 objectForKeyedSubscript:@"AudioFusedVideoEmbeddingResults"];

  vcp_results3 = [v8 vcp_results];

  v15 = [vcp_results3 objectForKeyedSubscript:@"SummarizedEmbeddingResults"];

  v16 = VCPSignPostLog();
  v17 = os_signpost_id_generate(v16);

  v18 = VCPSignPostLog();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 138412290;
    v41 = v6;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VSKAsset_preferredVideoEmbeddingsForAssetUUID", "_%@", buf, 0xCu);
  }

  v36 = 0;
  v37 = 0;
  v20 = [MADEmbeddingStore preferredVideoEmbeddingsForAssetUUID:v9 version:&v37 fromVideoEmbeddingResults:v11 audioFusedVideoEmbeddingResults:v13 summarizedVideoEmbeddingResults:v15 error:&v36];
  v21 = v36;
  if ([v20 count] && v37)
  {
    v34 = v9;
    v22 = VCPSignPostLog();
    v23 = v22;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 138412290;
      v41 = v6;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, v17, "VSKAsset_preferredVideoEmbeddingsForAssetUUID", "_%@", buf, 0xCu);
    }

    v24 = [MEMORY[0x1E69DF5F8] mad_stringIdentifierFromLocalIdentifier:v6 embeddingType:2];
    v25 = [MEMORY[0x1E69DF5F8] mad_attributesWithEmbeddingVersion:v37];
    v26 = [objc_alloc(MEMORY[0x1E69DF5F8]) initWithStringIdentifier:v24 vectors:v20 attributes:v25 payload:0];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else if (a5)
    {
      v33 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A768];
      v38 = *MEMORY[0x1E696A578];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to create VSKAsset %@ with video embeddings %@", v6, v24, v20];
      v39 = v31;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *a5 = [v33 errorWithDomain:v32 code:-18 userInfo:v29];
    }

    v9 = v34;
  }

  else
  {
    v27 = 0;
    if (a5)
    {
      *a5 = [v21 copy];
    }
  }

  return v27;
}

+ (id)mad_fetchEmbeddingForPhotosAsset:()MediaAnalysis embeddingType:
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  photoLibrary = [v5 photoLibrary];
  v7 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:photoLibrary];

  localIdentifier = [v5 localIdentifier];
  v24[0] = localIdentifier;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v17 = 0;
  v10 = [v7 fetchAssetsWithLocalIdentifiers:v9 embeddingType:a4 error:&v17];
  v11 = v17;

  if ([v10 count])
  {
    if ([v10 count] >= 2 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier2 = [v5 localIdentifier];
      v13 = [v10 count];
      *buf = 138412802;
      v19 = localIdentifier2;
      v20 = 1024;
      v21 = v13;
      v22 = 1024;
      LODWORD(v23) = a4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Fetched %d embeddings (type: %d) from vectorDB, using the first one", buf, 0x18u);
    }

    v14 = [v10 objectAtIndexedSubscript:0];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier3 = [v5 localIdentifier];
      *buf = 138412802;
      v19 = localIdentifier3;
      v20 = 1024;
      v21 = a4;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to fetch embedding (type: %d) from vectorDB: %@", buf, 0x1Cu);
    }

    v14 = 0;
  }

  return v14;
}

@end