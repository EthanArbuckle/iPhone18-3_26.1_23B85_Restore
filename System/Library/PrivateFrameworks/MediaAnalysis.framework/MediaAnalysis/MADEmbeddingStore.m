@interface MADEmbeddingStore
+ (id)_thumbnailIdentifiersFromMediaAnalysisResults:(id)a3 assetLocalIdentifier:(id)a4;
+ (id)embeddingStoreDirectoryForPhotoLibrary:(id)a3;
+ (id)fetchEmbeddingsWithAssetUUIDs:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)preferredImageEmbeddingsForAssetUUID:(id)a3 version:(unint64_t *)a4 fromImageEmbeddingResults:(id)a5 error:(id *)a6;
+ (id)preferredVideoEmbeddingsForAssetUUID:(id)a3 version:(unint64_t *)a4 fromVideoEmbeddingResults:(id)a5 audioFusedVideoEmbeddingResults:(id)a6 summarizedVideoEmbeddingResults:(id)a7 error:(id *)a8;
+ (id)searchWithEmbeddings:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6;
+ (void)prewarmSearchWithConcurrencyLimit:(unint64_t)a3 photoLibraryURL:(id)a4 error:(id *)a5;
@end

@implementation MADEmbeddingStore

+ (id)embeddingStoreDirectoryForPhotoLibrary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MADVectorDatabase databaseDirectoryURLForPhotoLibrary:v3];
    v5 = [v4 path];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] nil photo library provided", v7, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)preferredImageEmbeddingsForAssetUUID:(id)a3 version:(unint64_t *)a4 fromImageEmbeddingResults:(id)a5 error:(id *)a6
{
  v45[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v37 = a5;
  v28 = v8;
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore][%@]", v8];
  *a4 = 0;
  v31 = [MEMORY[0x1E695DF70] array];
  v9 = +[VCPVideoTransformerBackbone embeddingVersion];
  v10 = 0;
  v36 = 0;
  v33 = *MEMORY[0x1E696A768];
  v34 = *MEMORY[0x1E696A578];
  v30 = v9;
  v32 = v9;
  while (v10 < [v37 count])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [v37 objectAtIndexedSubscript:v10];
    v13 = [v12 objectForKeyedSubscript:@"attributes"];
    v14 = [v13 objectForKeyedSubscript:@"embeddingVersion"];

    if (v14)
    {
      if (!MADIsVisualEmbeddingVersionCompatibleWithLatest([v14 unsignedIntegerValue]))
      {
        goto LABEL_9;
      }
    }

    else if (v30 != 2)
    {
LABEL_9:
      v18 = MEMORY[0x1E696ABC0];
      v44 = v34;
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Image embedding version incompatible (latest: %u, existing: %@) skip", v35, v32, v14];;
      v45[0] = v16;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v20 = [v18 errorWithDomain:v33 code:-18 userInfo:v19];

      v17 = 2;
      v36 = v20;
      goto LABEL_15;
    }

    v15 = [v12 objectForKeyedSubscript:@"attributes"];
    v16 = [v15 objectForKeyedSubscript:@"embeddings"];

    if (v16)
    {
      [v31 addObject:v16];
      v17 = 0;
      if (!*a4)
      {
        *a4 = [v14 unsignedIntegerValue];
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v21 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v41 = v35;
          v42 = 1024;
          v43 = v10;
          _os_log_impl(&dword_1C9B70000, v21, OS_LOG_TYPE_DEFAULT, "%@ No embedding data from image embedding results (idx %d)", buf, 0x12u);
        }
      }

      v17 = 4;
    }

LABEL_15:

    objc_autoreleasePoolPop(v11);
    if ((v17 | 4) != 4)
    {
      break;
    }

    ++v10;
  }

  if (v36)
  {
    if (a6)
    {
      v22 = 0;
      *a6 = [v36 copy];
      goto LABEL_28;
    }

LABEL_27:
    v22 = 0;
  }

  else
  {
    if (![v31 count])
    {
      if (a6)
      {
        v24 = MEMORY[0x1E696ABC0];
        v38 = v34;
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ No valid image embedding", v35];
        v39 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *a6 = [v24 errorWithDomain:v33 code:-18 userInfo:v26];
      }

      goto LABEL_27;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v23 = [v31 count];
      *buf = 138412546;
      v41 = v35;
      v42 = 1024;
      v43 = v23;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %u preferred image embeddings", buf, 0x12u);
    }

    v22 = v31;
  }

LABEL_28:

  return v22;
}

+ (id)preferredVideoEmbeddingsForAssetUUID:(id)a3 version:(unint64_t *)a4 fromVideoEmbeddingResults:(id)a5 audioFusedVideoEmbeddingResults:(id)a6 summarizedVideoEmbeddingResults:(id)a7 error:(id *)a8
{
  v87[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v63 = a6;
  v62 = a7;
  v60 = v12;
  v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore][%@]", v12];
  *a4 = 0;
  v68 = v13;
  v14 = v68;
  if ([objc_opt_class() includeAudioFusedVideoEmbeddings])
  {
    v15 = !+[VCPMovieAnalyzer enableAudioVideoFusion];
    if (!v63)
    {
      LOBYTE(v15) = 1;
    }

    v14 = v68;
    if ((v15 & 1) == 0)
    {
      v16 = [v63 count];
      if (v16 == [v68 count])
      {
        v14 = v63;

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.start.value) = 138412546;
          *(&buf.start.value + 4) = v70;
          LOWORD(buf.start.flags) = 1024;
          *(&buf.start.flags + 2) = [v14 count];
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Using audio-fused video embeddings (count %d)", &buf, 0x12u);
        }
      }

      else
      {
        v14 = v68;
        if (MediaAnalysisLogLevel() >= 4)
        {
          v14 = v68;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.start.value) = 138412802;
            *(&buf.start.value + 4) = v70;
            LOWORD(buf.start.flags) = 1024;
            *(&buf.start.flags + 2) = [v63 count];
            WORD1(buf.start.epoch) = 1024;
            HIDWORD(buf.start.epoch) = [v68 count];
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Unexpected audio-fused video embeddings count %d (expected %d), falling back to vision-only embeddings", &buf, 0x18u);
            v14 = v68;
          }
        }
      }
    }
  }

  if (![v14 count] || !objc_msgSend(v62, "count"))
  {
    if (a8)
    {
      v34 = MEMORY[0x1E696ABC0];
      v86 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Missing video embedding results (vision-only %d, audio-fused %d, summarized %d)", v70, objc_msgSend(v68, "count"), objc_msgSend(v63, "count"), objc_msgSend(v62, "count")];
      v87[0] = v17;
      v71 = v14;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
      v35 = [v34 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
      goto LABEL_41;
    }

    v36 = 0;
    goto LABEL_69;
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v59 = a4;
  v71 = v14;
  v18 = +[VCPVideoTransformerBackbone embeddingVersion];
  v19 = 0;
  v69 = 0;
  v66 = *MEMORY[0x1E696A768];
  v67 = *MEMORY[0x1E696A578];
  v64 = v18;
  v65 = v18;
  while (v19 < [v71 count])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = [v71 objectAtIndexedSubscript:v19];
    v22 = [v21 objectForKeyedSubscript:@"attributes"];
    v23 = [v22 objectForKeyedSubscript:@"embeddingVersion"];

    if (v23)
    {
      if (!MADIsVisualEmbeddingVersionCompatibleWithLatest([v23 unsignedIntegerValue]))
      {
        goto LABEL_24;
      }
    }

    else if (v64 != 2)
    {
LABEL_24:
      v27 = MEMORY[0x1E696ABC0];
      v84 = v67;
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Video embedding version incompatible (latest: %u, existing: %@) skip", v70, v65, v23];;
      v85 = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v30 = [v27 errorWithDomain:v66 code:-18 userInfo:v29];

      v26 = 6;
      v69 = v30;
      goto LABEL_34;
    }

    memset(&buf, 0, sizeof(buf));
    CMTimeRangeMakeFromDictionary(&buf, v21);
    range1 = buf;
    v24 = *(MEMORY[0x1E6960CA8] + 16);
    *&range2.start.value = *MEMORY[0x1E6960CA8];
    *&range2.start.epoch = v24;
    *&range2.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
    if (CMTimeRangeEqual(&range1, &range2))
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v25 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(range1.start.value) = 138412290;
          *(&range1.start.value + 4) = v70;
          _os_log_impl(&dword_1C9B70000, v25, OS_LOG_TYPE_DEFAULT, "%@ Found image embedding within video embeddings", &range1, 0xCu);
        }
      }

      v26 = 8;
    }

    else
    {
      v31 = [v21 objectForKeyedSubscript:@"attributes"];
      v32 = [v31 objectForKeyedSubscript:@"embeddings"];

      if (v32)
      {
        [v17 addObject:v32];
        v26 = 0;
        if (!*v59)
        {
          *v59 = [v23 unsignedIntegerValue];
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 4)
        {
          v33 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(range1.start.value) = 138412290;
            *(&range1.start.value + 4) = v70;
            _os_log_impl(&dword_1C9B70000, v33, OS_LOG_TYPE_DEFAULT, "%@ No embedding data from video embedding results", &range1, 0xCu);
          }
        }

        v26 = 8;
      }
    }

LABEL_34:

    objc_autoreleasePoolPop(v20);
    if ((v26 | 8) != 8)
    {
      break;
    }

    ++v19;
  }

  if (!v69)
  {
    if ([v17 count])
    {
      v37 = [MEMORY[0x1E695DF70] array];
      v38 = [v62 objectAtIndexedSubscript:0];
      v39 = [v38 objectForKeyedSubscript:@"attributes"];
      v40 = [v39 objectForKeyedSubscript:@"embeddingIds"];

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v41 = v40;
      v42 = [v41 countByEnumeratingWithState:&v72 objects:v79 count:16];
      if (v42)
      {
        v43 = *v73;
        v44 = MEMORY[0x1E69E9C10];
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v73 != v43)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v72 + 1) + 8 * i);
            v47 = objc_autoreleasePoolPush();
            v48 = [v46 unsignedIntValue];
            if ([v17 count] <= v48)
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                v50 = [v17 count];
                LODWORD(buf.start.value) = 138412802;
                *(&buf.start.value + 4) = v70;
                LOWORD(buf.start.flags) = 1024;
                *(&buf.start.flags + 2) = v48;
                WORD1(buf.start.epoch) = 1024;
                HIDWORD(buf.start.epoch) = v50;
                _os_log_impl(&dword_1C9B70000, v44, OS_LOG_TYPE_DEFAULT, "%@ Invalid summarized embedding index %d (total %d embeddings)", &buf, 0x18u);
              }
            }

            else
            {
              v49 = [v17 objectAtIndexedSubscript:?];
              [v37 addObject:v49];
            }

            objc_autoreleasePoolPop(v47);
          }

          v42 = [v41 countByEnumeratingWithState:&v72 objects:v79 count:16];
        }

        while (v42);
      }

      if ([v37 count])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v51 = [v37 count];
          LODWORD(buf.start.value) = 138412546;
          *(&buf.start.value + 4) = v70;
          LOWORD(buf.start.flags) = 1024;
          *(&buf.start.flags + 2) = v51;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %u preferred video embeddings", &buf, 0x12u);
        }

        v36 = v37;
      }

      else
      {
        if (a8)
        {
          v55 = MEMORY[0x1E696ABC0];
          v77 = v67;
          v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ No valid summarized video embeddings (total %d, indices %@)", v70, objc_msgSend(v17, "count"), v41];
          v78 = v56;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          *a8 = [v55 errorWithDomain:v66 code:-18 userInfo:v57];
        }

        v36 = 0;
      }

      goto LABEL_68;
    }

    if (a8)
    {
      v52 = MEMORY[0x1E696ABC0];
      v80 = v67;
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ No valid video embedding from full analysis results (vision-only %d, audio-fused %d)", v70, objc_msgSend(v68, "count"), objc_msgSend(v63, "count")];
      v81 = v53;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      *a8 = [v52 errorWithDomain:v66 code:-18 userInfo:v54];
    }

LABEL_63:
    v36 = 0;
    goto LABEL_68;
  }

  if (!a8)
  {
    goto LABEL_63;
  }

  v35 = [v69 copy];
LABEL_41:
  v36 = 0;
  *a8 = v35;
LABEL_68:

  v14 = v71;
LABEL_69:

  return v36;
}

+ (id)_thumbnailIdentifiersFromMediaAnalysisResults:(id)a3 assetLocalIdentifier:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore][%@]", a4];
  if (v5)
  {
    v7 = [v5 vcp_results];
    v8 = [v7 objectForKeyedSubscript:@"SummarizedEmbeddingResults"];

    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 objectForKeyedSubscript:@"attributes"];
      v11 = [v10 objectForKeyedSubscript:@"thumbnailID"];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v14 = v6;
        v15 = 1024;
        v16 = [v11 count];
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Fetched %u thumbnail identifiers for summarized embeddings from MediaAnalysis database", buf, 0x12u);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ No summarized embeddings fetched from MediaAnalysis database", buf, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ No media analysis results containing thumbnail identifiers", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)fetchEmbeddingsWithAssetUUIDs:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v140[1] = *MEMORY[0x1E69E9840];
  v100 = a3;
  v9 = a4;
  v93 = v9;
  v94 = a5;
  if (v9)
  {
    v98 = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:v9];
  }

  else
  {
    v98 = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
  }

  v10 = [MEMORY[0x1E6978628] localIdentifiersWithUUIDs:v100];
  v95 = v10;
  v11 = [v10 count];
  if (v11 != [v100 count] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v131 = @"[MADEmbeddingStore|Fetch]";
    v132 = 1024;
    *v133 = [v100 count];
    *&v133[4] = 1024;
    *&v133[6] = [v10 count];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to convert all UUIDs to local identifiers, converted %u but expected %u", buf, 0x18u);
  }

  v97 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v98];
  v12 = [v10 allObjects];
  v129 = 0;
  v99 = [v97 fetchAssetsWithLocalIdentifiers:v12 error:&v129];
  v96 = v129;

  if ([v99 count])
  {
    v104 = +[VCPVideoTransformerBackbone embeddingVersion];
    v111 = [MEMORY[0x1E695DF90] dictionary];
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v13 = v99;
    v14 = [v13 countByEnumeratingWithState:&v125 objects:v138 count:16];
    if (v14)
    {
      v15 = *v126;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v126 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v125 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = MEMORY[0x1E6978628];
          v20 = [v17 mad_photosLocalIdentifier];
          v21 = [v19 uuidFromLocalIdentifier:v20];

          v22 = [v111 objectForKeyedSubscript:v21];
          v23 = v22 == 0;

          if (v23)
          {
            v24 = [MEMORY[0x1E695DF70] array];
            [v111 setObject:v24 forKeyedSubscript:v21];
          }

          v25 = [v17 vectors];
          v26 = [v25 count] == 0;

          if (v26)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v131 = @"[MADEmbeddingStore|Fetch]";
              v132 = 2112;
              *v133 = v21;
              v28 = MEMORY[0x1E69E9C10];
              v29 = "%@[%@] Invalid embedding count";
LABEL_27:
              _os_log_impl(&dword_1C9B70000, v28, OS_LOG_TYPE_ERROR, v29, buf, 0x16u);
            }
          }

          else
          {
            if ([v17 mad_hasImageEmbedding])
            {
              v27 = [v111 objectForKeyedSubscript:v21];
              [v27 insertObject:v17 atIndex:0];

              goto LABEL_28;
            }

            if ([v17 mad_hasVideoEmbedding])
            {
              v30 = [v111 objectForKeyedSubscript:v21];
              [v30 addObject:v17];

              goto LABEL_28;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v131 = @"[MADEmbeddingStore|Fetch]";
              v132 = 2112;
              *v133 = v21;
              v28 = MEMORY[0x1E69E9C10];
              v29 = "%@[%@] Invalid embedding type";
              goto LABEL_27;
            }
          }

LABEL_28:

          objc_autoreleasePoolPop(v18);
        }

        v14 = [v13 countByEnumeratingWithState:&v125 objects:v138 count:16];
      }

      while (v14);
    }

    v31 = [v111 count];
    if (v31 != [v100 count] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = [v111 count];
      v33 = [v13 count];
      v34 = [v100 count];
      *buf = 138413058;
      v131 = @"[MADEmbeddingStore|Fetch]";
      v132 = 1024;
      *v133 = v32;
      *&v133[4] = 1024;
      *&v133[6] = v33;
      *v134 = 1024;
      *&v134[2] = v34;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Fetched %u assets (%u image+video entries) from vector database, but expecting %u", buf, 0x1Eu);
    }

    if (+[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled])
    {
      v35 = objc_autoreleasePoolPush();
      v36 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F49BE878];
      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        v37 = [v98 mad_fetchRequest];
        v38 = [v95 allObjects];
        [v37 fetchAnalysesWithLocalIdentifiers:v38 predicate:0 resultTypes:v36];
      }

      else
      {
        v42 = [v98 photoLibraryURL];
        v37 = [VCPClientDatabaseManager sharedDatabaseForPhotoLibraryURL:v42];

        v38 = [v95 allObjects];
        [v37 queryAnalysesForAssets:v38 withTypes:v36];
      }
      v39 = ;
      v43 = [v39 mutableCopy];

      v44 = [MEMORY[0x1E695DF70] array];
      v123[0] = MEMORY[0x1E69E9820];
      v123[1] = 3221225472;
      v123[2] = __81__MADEmbeddingStore_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_options_error___block_invoke;
      v123[3] = &unk_1E834CDC0;
      v45 = v44;
      v124 = v45;
      [v43 enumerateKeysAndObjectsUsingBlock:v123];
      [v43 removeObjectsForKeys:v45];
      v46 = v43;
      v47 = MEMORY[0x1E695DFD8];
      v101 = v46;
      v48 = [v46 allKeys];
      v41 = [v47 setWithArray:v48];

      objc_autoreleasePoolPop(v35);
    }

    else
    {
      v101 = 0;
      v41 = 0;
    }

    v102 = v41;
    v103 = [MEMORY[0x1E695DF90] dictionary];
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v111;
    v49 = [obj countByEnumeratingWithState:&v119 objects:v137 count:16];
    if (v49)
    {
      v50 = MEMORY[0x1E69E9C10];
      v108 = *v120;
      do
      {
        v112 = 0;
        v105 = v49;
        do
        {
          if (*v120 != v108)
          {
            objc_enumerationMutation(obj);
          }

          v114 = *(*(&v119 + 1) + 8 * v112);
          context = objc_autoreleasePoolPush();
          v113 = [obj objectForKeyedSubscript:v114];
          if ([v113 count] && objc_msgSend(v113, "count") < 3)
          {
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v52 = v113;
            v53 = [v52 countByEnumeratingWithState:&v115 objects:v136 count:16];
            v54 = v50;
            v55 = 0;
            v56 = 0;
            if (v53)
            {
              v57 = *v116;
              do
              {
                for (j = 0; j != v53; ++j)
                {
                  if (*v116 != v57)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v59 = *(*(&v115 + 1) + 8 * j);
                  if (v56 || ![*(*(&v115 + 1) + 8 * j) mad_hasImageEmbedding])
                  {
                    if (v55 || ![v59 mad_hasVideoEmbedding])
                    {
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v131 = @"[MADEmbeddingStore|Fetch]";
                        v132 = 2112;
                        *v133 = v114;
                        _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_ERROR, "%@[%@] Invalid embedding type", buf, 0x16u);
                      }
                    }

                    else
                    {
                      v55 = v59;
                    }
                  }

                  else
                  {
                    v56 = v59;
                  }
                }

                v53 = [v52 countByEnumeratingWithState:&v115 objects:v136 count:16];
              }

              while (v53);
            }

            v49 = v105;
            v50 = v54;
            if (v56 | v55)
            {
              v60 = [MEMORY[0x1E695DF70] array];
              v106 = [MEMORY[0x1E6978628] localIdentifierWithUUID:v114];
              v107 = [v102 containsObject:?];
              v61 = [v56 vectors];
              v62 = [v61 count] == 0;

              if (v62 || ([v56 vectors], v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v60, "addObjectsFromArray:", v63), v63, (+[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled](VCPVideoThumbnailAnalyzer, "isContextualThumbnailEnabled") & v107) != 1))
              {
                v64 = 0;
              }

              else
              {
                v64 = [MEMORY[0x1E695DF70] array];
                [v64 addObject:@"NULL"];
              }

              v65 = [v55 vectors];
              v66 = [v65 count] == 0;

              if (!v66)
              {
                v67 = [v55 vectors];
                [v60 addObjectsFromArray:v67];

                if ((+[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled]& v107) == 1)
                {
                  if (!v64)
                  {
                    v64 = [MEMORY[0x1E695DF70] array];
                  }

                  v68 = objc_opt_class();
                  v69 = [v101 objectForKeyedSubscript:v106];
                  v70 = [v68 _thumbnailIdentifiersFromMediaAnalysisResults:v69 assetLocalIdentifier:v106];

                  if ([v70 count])
                  {
                    v71 = [v70 count];
                    v72 = [v55 vectors];
                    v73 = v71 == [v72 count];

                    if (v73)
                    {
                      [v64 addObjectsFromArray:v70];
                      goto LABEL_93;
                    }

                    if (MediaAnalysisLogLevel() >= 3)
                    {
                      v77 = v50;
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                      {
                        v78 = [v70 count];
                        v79 = [v55 vectors];
                        v80 = [v79 count];
                        *buf = 138413058;
                        v131 = @"[MADEmbeddingStore|Fetch]";
                        v132 = 2112;
                        *v133 = v114;
                        *&v133[8] = 1024;
                        *v134 = v78;
                        *&v134[4] = 1024;
                        v135 = v80;
                        _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_ERROR, "%@[%@] Movie asset has mismatching video thumbnail identifiers count %u with video embedding count %u, setting thumbnail identifiers to nil", buf, 0x22u);
                      }

                      goto LABEL_92;
                    }
                  }

                  else if (MediaAnalysisLogLevel() >= 4)
                  {
                    v74 = v50;
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      v75 = [v55 vectors];
                      v76 = [v75 count];
                      *buf = 138412802;
                      v131 = @"[MADEmbeddingStore|Fetch]";
                      v132 = 2112;
                      *v133 = v114;
                      *&v133[8] = 1024;
                      *v134 = v76;
                      _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_DEFAULT, "%@[%@] Movie asset has no thumbnail identifiers for %u video embeddings", buf, 0x1Cu);
                    }

LABEL_92:
                  }

LABEL_93:
                }
              }

              v81 = [[MADEmbedding alloc] initWithFormat:1 dimension:1 version:v104 vectors:v60];
              if ((+[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled]& v107) == 1)
              {
                if ([v64 count])
                {
                  v82 = [v64 count];
                  v83 = [(MADEmbedding *)v81 vectors];
                  v84 = v81;
                  v85 = v82 == [v83 count];

                  if (v85)
                  {
                    v81 = v84;
                    [(MADEmbedding *)v84 setThumbnailIdentifiers:v64];
                  }

                  else
                  {
                    v81 = v84;
                    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                    {
                      v88 = [v64 count];
                      v89 = [(MADEmbedding *)v84 vectors];
                      v90 = [v89 count];
                      *buf = 138413058;
                      v131 = @"[MADEmbeddingStore|Fetch]";
                      v132 = 2112;
                      *v133 = v114;
                      *&v133[8] = 1024;
                      *v134 = v88;
                      *&v134[4] = 1024;
                      v135 = v90;
                      _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_ERROR, "%@[%@] Movie asset has mismatching thumbnail identifiers count %u with embedding count %u, keeping thumbnail identifiers as nil", buf, 0x22u);

                      v81 = v84;
                    }
                  }
                }

                else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  v86 = [(MADEmbedding *)v81 vectors];
                  v87 = [v86 count];
                  *buf = 138412802;
                  v131 = @"[MADEmbeddingStore|Fetch]";
                  v132 = 2112;
                  *v133 = v114;
                  *&v133[8] = 1024;
                  *v134 = v87;
                  _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_DEFAULT, "%@[%@] Movie asset has no thumbnail identifiers for %u embeddings", buf, 0x1Cu);
                }
              }

              [v103 setObject:v81 forKeyedSubscript:v114];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                v91 = [v60 count];
                *buf = 138413058;
                v131 = @"[MADEmbeddingStore|Fetch]";
                v132 = 2112;
                *v133 = v114;
                *&v133[8] = 1024;
                *v134 = v91;
                *&v134[4] = 1024;
                v135 = v104;
                _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_DEBUG, "%@[%@] Fetched %u embeddings (version %u) from vector database", buf, 0x22u);
              }
            }

            else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v131 = @"[MADEmbeddingStore|Fetch]";
              v132 = 2112;
              *v133 = v114;
              _os_log_impl(&dword_1C9B70000, v54, OS_LOG_TYPE_ERROR, "%@[%@] No valid VSKAsset", buf, 0x16u);
            }

            goto LABEL_109;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = [v113 count];
            *buf = 138412802;
            v131 = @"[MADEmbeddingStore|Fetch]";
            v132 = 2112;
            *v133 = v114;
            *&v133[8] = 1024;
            *v134 = v51;
            _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_ERROR, "%@[%@] Invalid number of VSKAssets %d", buf, 0x1Cu);
          }

LABEL_109:

          objc_autoreleasePoolPop(context);
          ++v112;
        }

        while (v112 != v49);
        v49 = [obj countByEnumeratingWithState:&v119 objects:v137 count:16];
      }

      while (v49);
    }

    goto LABEL_112;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v131 = @"[MADEmbeddingStore|Fetch]";
    v132 = 2112;
    *v133 = v96;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to fetch embeddings from vector database: %@", buf, 0x16u);
  }

  if (a6)
  {
    v40 = MEMORY[0x1E696ABC0];
    v139 = *MEMORY[0x1E696A578];
    v140[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to fetch embeddings from vector database: %@", @"[MADEmbeddingStore|Fetch]", v96, v9, v94];
    obj = v140[0];
    v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:&v139 count:1];
    [v40 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
    *a6 = v103 = 0;
LABEL_112:

    goto LABEL_113;
  }

  v103 = 0;
LABEL_113:

  return v103;
}

void __81__MADEmbeddingStore_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKeyedSubscript:@"statsFlags"];
  if (([v5 unsignedIntValue] & 4) == 0)
  {
    [*(a1 + 32) addObject:v6];
  }
}

+ (id)searchWithEmbeddings:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v75[1] = *MEMORY[0x1E69E9840];
  v56 = a3;
  v9 = a4;
  v53 = a5;
  v49 = v9;
  if (v9)
  {
    v57 = v9;
  }

  else
  {
    v57 = [MEMORY[0x1E69789B0] systemPhotoLibraryURL];
  }

  v10 = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:v57];
  v50 = v10;
  if (v10)
  {
    v52 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v10];
    if (v53)
    {
      v11 = v53;
    }

    else
    {
      v11 = +[MADEmbeddingSearchOptions defaultOptions];
    }

    v54 = v11;
    v13 = [v11 assetUUIDs];
    v14 = [v13 count];

    if (v14)
    {
      v15 = MEMORY[0x1E695DFD8];
      v16 = [v54 assetUUIDs];
      v17 = [v15 setWithArray:v16];

      v18 = [MEMORY[0x1E6978628] localIdentifiersWithUUIDs:v17];
      v19 = [v18 count];
      if (v19 != [v17 count] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v73 = [v18 count];
        *&v73[4] = 1024;
        *&v73[6] = [v17 count];
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] Failed to convert all UUIDs to local identifiers, converted %u but expected %u", buf, 0xEu);
      }

      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v48 = v20;
    v21 = [v20 allObjects];
    v22 = [v54 resultLimit];
    v23 = [v54 fullScan];
    v24 = [v54 includePayload];
    v25 = [v54 numberOfProbes];
    v26 = [v54 batchSize];
    v27 = [v54 numConcurrentReaders];
    v68 = 0;
    v60 = [v52 searchWithEmbeddings:v56 localIdentifiers:v21 attributeFilters:0 limit:v22 fullScan:v23 includePayload:v24 numberOfProbes:v25 batchSize:v26 numConcurrentReaders:v27 error:&v68];
    v51 = v68;

    if (v51)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v73 = v51;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] Failed to search with embeddings %@", buf, 0xCu);
      }

      if (a6)
      {
        v58 = 0;
        *a6 = [v51 copy];
LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
      v28 = [v60 count];
      if (v28 == [v56 count])
      {
        v58 = [MEMORY[0x1E695DF70] array];
        for (i = 0; i < [v60 count]; ++i)
        {
          context = objc_autoreleasePoolPush();
          v55 = [v60 objectAtIndexedSubscript:i];
          v62 = [MEMORY[0x1E695DF70] array];
          v29 = [MEMORY[0x1E695DFA8] set];
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          obj = v55;
          v30 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
          if (v30)
          {
            v31 = *v65;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v65 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v64 + 1) + 8 * j);
                v34 = objc_autoreleasePoolPush();
                v35 = MEMORY[0x1E69DF5F8];
                v36 = [v33 stringIdentifier];
                v37 = [v35 mad_localIdentifierFromStringIdentifier:v36];

                v38 = [MEMORY[0x1E6978628] uuidFromLocalIdentifier:v37];
                if (([v29 containsObject:v38] & 1) == 0)
                {
                  v39 = [MADEmbeddingSearchResult alloc];
                  v40 = [v33 value];
                  v41 = -[MADEmbeddingSearchResult initWithAssetUUID:distance:metric:](v39, "initWithAssetUUID:distance:metric:", v38, v40, [v33 metric]);

                  [v62 addObject:v41];
                  [v29 addObject:v38];
                }

                objc_autoreleasePoolPop(v34);
              }

              v30 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
            }

            while (v30);
          }

          [v58 addObject:v62];
          objc_autoreleasePoolPop(context);
        }

        goto LABEL_46;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = [v56 count];
        v43 = [v60 count];
        *buf = 67109376;
        *v73 = v42;
        *&v73[4] = 1024;
        *&v73[6] = v43;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] Invalid search results count: expected %u but received %u", buf, 0xEu);
      }

      if (a6)
      {
        v44 = MEMORY[0x1E696ABC0];
        v70 = *MEMORY[0x1E696A578];
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore] Invalid search results count: expected %u but received %u", objc_msgSend(v56, "count"), objc_msgSend(v60, "count")];
        v71 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        *a6 = [v44 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v46];
      }
    }

    v58 = 0;
    goto LABEL_46;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v73 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] Failed to initialize Photo Library %@", buf, 0xCu);
  }

  if (!a6)
  {
    v58 = 0;
    goto LABEL_48;
  }

  v12 = MEMORY[0x1E696ABC0];
  v74 = *MEMORY[0x1E696A578];
  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore] Failed to initialize Photo Library %@", 0];
  v75[0] = v52;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:?];
  *a6 = v58 = 0;
LABEL_47:

LABEL_48:

  return v58;
}

+ (void)prewarmSearchWithConcurrencyLimit:(unint64_t)a3 photoLibraryURL:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E69789B0] systemPhotoLibraryURL];
  }

  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:v9];
  if (v11)
  {
    +[MADVectorDatabaseManager releaseAllSharedDatabase];
    v12 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v11];
    [v12 prewarmSearchWithConcurrencyLimit:a3];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] Failed to initialize Photo Library %@", buf, 0xCu);
    }

    if (a5)
    {
      v13 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore] Failed to initialize Photo Library %@", 0];
      v17 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      *a5 = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v15];
    }
  }
}

@end