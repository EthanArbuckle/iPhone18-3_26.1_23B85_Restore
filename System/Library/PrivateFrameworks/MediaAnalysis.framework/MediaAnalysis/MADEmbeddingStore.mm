@interface MADEmbeddingStore
+ (id)_thumbnailIdentifiersFromMediaAnalysisResults:(id)results assetLocalIdentifier:(id)identifier;
+ (id)embeddingStoreDirectoryForPhotoLibrary:(id)library;
+ (id)fetchEmbeddingsWithAssetUUIDs:(id)ds photoLibraryURL:(id)l options:(id)options error:(id *)error;
+ (id)preferredImageEmbeddingsForAssetUUID:(id)d version:(unint64_t *)version fromImageEmbeddingResults:(id)results error:(id *)error;
+ (id)preferredVideoEmbeddingsForAssetUUID:(id)d version:(unint64_t *)version fromVideoEmbeddingResults:(id)results audioFusedVideoEmbeddingResults:(id)embeddingResults summarizedVideoEmbeddingResults:(id)videoEmbeddingResults error:(id *)error;
+ (id)searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l options:(id)options error:(id *)error;
+ (void)prewarmSearchWithConcurrencyLimit:(unint64_t)limit photoLibraryURL:(id)l error:(id *)error;
@end

@implementation MADEmbeddingStore

+ (id)embeddingStoreDirectoryForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (libraryCopy)
  {
    v4 = [MADVectorDatabase databaseDirectoryURLForPhotoLibrary:libraryCopy];
    path = [v4 path];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] nil photo library provided", v7, 2u);
    }

    path = 0;
  }

  return path;
}

+ (id)preferredImageEmbeddingsForAssetUUID:(id)d version:(unint64_t *)version fromImageEmbeddingResults:(id)results error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  resultsCopy = results;
  v28 = dCopy;
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore][%@]", dCopy];
  *version = 0;
  array = [MEMORY[0x1E695DF70] array];
  v9 = +[VCPVideoTransformerBackbone embeddingVersion];
  v10 = 0;
  v36 = 0;
  v33 = *MEMORY[0x1E696A768];
  v34 = *MEMORY[0x1E696A578];
  v30 = v9;
  v32 = v9;
  while (v10 < [resultsCopy count])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [resultsCopy objectAtIndexedSubscript:v10];
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
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Image embedding version incompatible (latest: %u, existing: %@) skip", dCopy, v32, v14];;
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
      [array addObject:v16];
      v17 = 0;
      if (!*version)
      {
        *version = [v14 unsignedIntegerValue];
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
          v41 = dCopy;
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
    if (error)
    {
      v22 = 0;
      *error = [v36 copy];
      goto LABEL_28;
    }

LABEL_27:
    v22 = 0;
  }

  else
  {
    if (![array count])
    {
      if (error)
      {
        v24 = MEMORY[0x1E696ABC0];
        v38 = v34;
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ No valid image embedding", dCopy];
        v39 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *error = [v24 errorWithDomain:v33 code:-18 userInfo:v26];
      }

      goto LABEL_27;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v23 = [array count];
      *buf = 138412546;
      v41 = dCopy;
      v42 = 1024;
      v43 = v23;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %u preferred image embeddings", buf, 0x12u);
    }

    v22 = array;
  }

LABEL_28:

  return v22;
}

+ (id)preferredVideoEmbeddingsForAssetUUID:(id)d version:(unint64_t *)version fromVideoEmbeddingResults:(id)results audioFusedVideoEmbeddingResults:(id)embeddingResults summarizedVideoEmbeddingResults:(id)videoEmbeddingResults error:(id *)error
{
  v87[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  resultsCopy = results;
  embeddingResultsCopy = embeddingResults;
  videoEmbeddingResultsCopy = videoEmbeddingResults;
  v60 = dCopy;
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore][%@]", dCopy];
  *version = 0;
  v68 = resultsCopy;
  v14 = v68;
  if ([objc_opt_class() includeAudioFusedVideoEmbeddings])
  {
    v15 = !+[VCPMovieAnalyzer enableAudioVideoFusion];
    if (!embeddingResultsCopy)
    {
      LOBYTE(v15) = 1;
    }

    v14 = v68;
    if ((v15 & 1) == 0)
    {
      v16 = [embeddingResultsCopy count];
      if (v16 == [v68 count])
      {
        v14 = embeddingResultsCopy;

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.start.value) = 138412546;
          *(&buf.start.value + 4) = dCopy;
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
            *(&buf.start.value + 4) = dCopy;
            LOWORD(buf.start.flags) = 1024;
            *(&buf.start.flags + 2) = [embeddingResultsCopy count];
            WORD1(buf.start.epoch) = 1024;
            HIDWORD(buf.start.epoch) = [v68 count];
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Unexpected audio-fused video embeddings count %d (expected %d), falling back to vision-only embeddings", &buf, 0x18u);
            v14 = v68;
          }
        }
      }
    }
  }

  if (![v14 count] || !objc_msgSend(videoEmbeddingResultsCopy, "count"))
  {
    if (error)
    {
      v34 = MEMORY[0x1E696ABC0];
      v86 = *MEMORY[0x1E696A578];
      array = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Missing video embedding results (vision-only %d, audio-fused %d, summarized %d)", dCopy, objc_msgSend(v68, "count"), objc_msgSend(embeddingResultsCopy, "count"), objc_msgSend(videoEmbeddingResultsCopy, "count")];
      v87[0] = array;
      v71 = v14;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
      v35 = [v34 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
      goto LABEL_41;
    }

    v36 = 0;
    goto LABEL_69;
  }

  array = [MEMORY[0x1E695DF70] array];
  versionCopy = version;
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
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Video embedding version incompatible (latest: %u, existing: %@) skip", dCopy, v65, v23];;
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
          *(&range1.start.value + 4) = dCopy;
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
        [array addObject:v32];
        v26 = 0;
        if (!*versionCopy)
        {
          *versionCopy = [v23 unsignedIntegerValue];
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
            *(&range1.start.value + 4) = dCopy;
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
    if ([array count])
    {
      array2 = [MEMORY[0x1E695DF70] array];
      v38 = [videoEmbeddingResultsCopy objectAtIndexedSubscript:0];
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
            unsignedIntValue = [v46 unsignedIntValue];
            if ([array count] <= unsignedIntValue)
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                v50 = [array count];
                LODWORD(buf.start.value) = 138412802;
                *(&buf.start.value + 4) = dCopy;
                LOWORD(buf.start.flags) = 1024;
                *(&buf.start.flags + 2) = unsignedIntValue;
                WORD1(buf.start.epoch) = 1024;
                HIDWORD(buf.start.epoch) = v50;
                _os_log_impl(&dword_1C9B70000, v44, OS_LOG_TYPE_DEFAULT, "%@ Invalid summarized embedding index %d (total %d embeddings)", &buf, 0x18u);
              }
            }

            else
            {
              v49 = [array objectAtIndexedSubscript:?];
              [array2 addObject:v49];
            }

            objc_autoreleasePoolPop(v47);
          }

          v42 = [v41 countByEnumeratingWithState:&v72 objects:v79 count:16];
        }

        while (v42);
      }

      if ([array2 count])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v51 = [array2 count];
          LODWORD(buf.start.value) = 138412546;
          *(&buf.start.value + 4) = dCopy;
          LOWORD(buf.start.flags) = 1024;
          *(&buf.start.flags + 2) = v51;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ %u preferred video embeddings", &buf, 0x12u);
        }

        v36 = array2;
      }

      else
      {
        if (error)
        {
          v55 = MEMORY[0x1E696ABC0];
          v77 = v67;
          v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ No valid summarized video embeddings (total %d, indices %@)", dCopy, objc_msgSend(array, "count"), v41];
          v78 = v56;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          *error = [v55 errorWithDomain:v66 code:-18 userInfo:v57];
        }

        v36 = 0;
      }

      goto LABEL_68;
    }

    if (error)
    {
      v52 = MEMORY[0x1E696ABC0];
      v80 = v67;
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ No valid video embedding from full analysis results (vision-only %d, audio-fused %d)", dCopy, objc_msgSend(v68, "count"), objc_msgSend(embeddingResultsCopy, "count")];
      v81 = v53;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      *error = [v52 errorWithDomain:v66 code:-18 userInfo:v54];
    }

LABEL_63:
    v36 = 0;
    goto LABEL_68;
  }

  if (!error)
  {
    goto LABEL_63;
  }

  v35 = [v69 copy];
LABEL_41:
  v36 = 0;
  *error = v35;
LABEL_68:

  v14 = v71;
LABEL_69:

  return v36;
}

+ (id)_thumbnailIdentifiersFromMediaAnalysisResults:(id)results assetLocalIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore][%@]", identifier];
  if (resultsCopy)
  {
    vcp_results = [resultsCopy vcp_results];
    v8 = [vcp_results objectForKeyedSubscript:@"SummarizedEmbeddingResults"];

    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 objectForKeyedSubscript:@"attributes"];
      v11 = [v10 objectForKeyedSubscript:@"thumbnailID"];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v14 = identifier;
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
        v14 = identifier;
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
      v14 = identifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ No media analysis results containing thumbnail identifiers", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)fetchEmbeddingsWithAssetUUIDs:(id)ds photoLibraryURL:(id)l options:(id)options error:(id *)error
{
  v140[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  lCopy = l;
  v93 = lCopy;
  optionsCopy = options;
  if (lCopy)
  {
    vcp_defaultPhotoLibrary = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:lCopy];
  }

  else
  {
    vcp_defaultPhotoLibrary = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
  }

  v10 = [MEMORY[0x1E6978628] localIdentifiersWithUUIDs:dsCopy];
  v95 = v10;
  v11 = [v10 count];
  if (v11 != [dsCopy count] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v131 = @"[MADEmbeddingStore|Fetch]";
    v132 = 1024;
    *v133 = [dsCopy count];
    *&v133[4] = 1024;
    *&v133[6] = [v10 count];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to convert all UUIDs to local identifiers, converted %u but expected %u", buf, 0x18u);
  }

  v97 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:vcp_defaultPhotoLibrary];
  allObjects = [v10 allObjects];
  v129 = 0;
  v99 = [v97 fetchAssetsWithLocalIdentifiers:allObjects error:&v129];
  v96 = v129;

  if ([v99 count])
  {
    v104 = +[VCPVideoTransformerBackbone embeddingVersion];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
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
          mad_photosLocalIdentifier = [v17 mad_photosLocalIdentifier];
          v21 = [v19 uuidFromLocalIdentifier:mad_photosLocalIdentifier];

          v22 = [dictionary objectForKeyedSubscript:v21];
          v23 = v22 == 0;

          if (v23)
          {
            array = [MEMORY[0x1E695DF70] array];
            [dictionary setObject:array forKeyedSubscript:v21];
          }

          vectors = [v17 vectors];
          v26 = [vectors count] == 0;

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
              v27 = [dictionary objectForKeyedSubscript:v21];
              [v27 insertObject:v17 atIndex:0];

              goto LABEL_28;
            }

            if ([v17 mad_hasVideoEmbedding])
            {
              v30 = [dictionary objectForKeyedSubscript:v21];
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

    v31 = [dictionary count];
    if (v31 != [dsCopy count] && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = [dictionary count];
      v33 = [v13 count];
      v34 = [dsCopy count];
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
        mad_fetchRequest = [vcp_defaultPhotoLibrary mad_fetchRequest];
        allObjects2 = [v95 allObjects];
        [mad_fetchRequest fetchAnalysesWithLocalIdentifiers:allObjects2 predicate:0 resultTypes:v36];
      }

      else
      {
        photoLibraryURL = [vcp_defaultPhotoLibrary photoLibraryURL];
        mad_fetchRequest = [VCPClientDatabaseManager sharedDatabaseForPhotoLibraryURL:photoLibraryURL];

        allObjects2 = [v95 allObjects];
        [mad_fetchRequest queryAnalysesForAssets:allObjects2 withTypes:v36];
      }
      v39 = ;
      v43 = [v39 mutableCopy];

      array2 = [MEMORY[0x1E695DF70] array];
      v123[0] = MEMORY[0x1E69E9820];
      v123[1] = 3221225472;
      v123[2] = __81__MADEmbeddingStore_fetchEmbeddingsWithAssetUUIDs_photoLibraryURL_options_error___block_invoke;
      v123[3] = &unk_1E834CDC0;
      v45 = array2;
      v124 = v45;
      [v43 enumerateKeysAndObjectsUsingBlock:v123];
      [v43 removeObjectsForKeys:v45];
      v46 = v43;
      v47 = MEMORY[0x1E695DFD8];
      v101 = v46;
      allKeys = [v46 allKeys];
      v41 = [v47 setWithArray:allKeys];

      objc_autoreleasePoolPop(v35);
    }

    else
    {
      v101 = 0;
      v41 = 0;
    }

    v102 = v41;
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = dictionary;
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
              array3 = [MEMORY[0x1E695DF70] array];
              v106 = [MEMORY[0x1E6978628] localIdentifierWithUUID:v114];
              v107 = [v102 containsObject:?];
              vectors2 = [v56 vectors];
              v62 = [vectors2 count] == 0;

              if (v62 || ([v56 vectors], v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(array3, "addObjectsFromArray:", v63), v63, (+[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled](VCPVideoThumbnailAnalyzer, "isContextualThumbnailEnabled") & v107) != 1))
              {
                array4 = 0;
              }

              else
              {
                array4 = [MEMORY[0x1E695DF70] array];
                [array4 addObject:@"NULL"];
              }

              vectors3 = [v55 vectors];
              v66 = [vectors3 count] == 0;

              if (!v66)
              {
                vectors4 = [v55 vectors];
                [array3 addObjectsFromArray:vectors4];

                if ((+[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled]& v107) == 1)
                {
                  if (!array4)
                  {
                    array4 = [MEMORY[0x1E695DF70] array];
                  }

                  v68 = objc_opt_class();
                  v69 = [v101 objectForKeyedSubscript:v106];
                  v70 = [v68 _thumbnailIdentifiersFromMediaAnalysisResults:v69 assetLocalIdentifier:v106];

                  if ([v70 count])
                  {
                    v71 = [v70 count];
                    vectors5 = [v55 vectors];
                    v73 = v71 == [vectors5 count];

                    if (v73)
                    {
                      [array4 addObjectsFromArray:v70];
                      goto LABEL_93;
                    }

                    if (MediaAnalysisLogLevel() >= 3)
                    {
                      v77 = v50;
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                      {
                        v78 = [v70 count];
                        vectors6 = [v55 vectors];
                        v80 = [vectors6 count];
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
                      vectors7 = [v55 vectors];
                      v76 = [vectors7 count];
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

              v81 = [[MADEmbedding alloc] initWithFormat:1 dimension:1 version:v104 vectors:array3];
              if ((+[VCPVideoThumbnailAnalyzer isContextualThumbnailEnabled]& v107) == 1)
              {
                if ([array4 count])
                {
                  v82 = [array4 count];
                  vectors8 = [(MADEmbedding *)v81 vectors];
                  v84 = v81;
                  v85 = v82 == [vectors8 count];

                  if (v85)
                  {
                    v81 = v84;
                    [(MADEmbedding *)v84 setThumbnailIdentifiers:array4];
                  }

                  else
                  {
                    v81 = v84;
                    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                    {
                      v88 = [array4 count];
                      vectors9 = [(MADEmbedding *)v84 vectors];
                      v90 = [vectors9 count];
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
                  vectors10 = [(MADEmbedding *)v81 vectors];
                  v87 = [vectors10 count];
                  *buf = 138412802;
                  v131 = @"[MADEmbeddingStore|Fetch]";
                  v132 = 2112;
                  *v133 = v114;
                  *&v133[8] = 1024;
                  *v134 = v87;
                  _os_log_impl(&dword_1C9B70000, v50, OS_LOG_TYPE_DEFAULT, "%@[%@] Movie asset has no thumbnail identifiers for %u embeddings", buf, 0x1Cu);
                }
              }

              [dictionary2 setObject:v81 forKeyedSubscript:v114];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                v91 = [array3 count];
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

  if (error)
  {
    v40 = MEMORY[0x1E696ABC0];
    v139 = *MEMORY[0x1E696A578];
    v140[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Failed to fetch embeddings from vector database: %@", @"[MADEmbeddingStore|Fetch]", v96, lCopy, optionsCopy];
    obj = v140[0];
    v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:&v139 count:1];
    [v40 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
    *error = dictionary2 = 0;
LABEL_112:

    goto LABEL_113;
  }

  dictionary2 = 0;
LABEL_113:

  return dictionary2;
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

+ (id)searchWithEmbeddings:(id)embeddings photoLibraryURL:(id)l options:(id)options error:(id *)error
{
  v75[1] = *MEMORY[0x1E69E9840];
  embeddingsCopy = embeddings;
  lCopy = l;
  optionsCopy = options;
  v49 = lCopy;
  if (lCopy)
  {
    systemPhotoLibraryURL = lCopy;
  }

  else
  {
    systemPhotoLibraryURL = [MEMORY[0x1E69789B0] systemPhotoLibraryURL];
  }

  v10 = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:systemPhotoLibraryURL];
  v50 = v10;
  if (v10)
  {
    v52 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v10];
    if (optionsCopy)
    {
      v11 = optionsCopy;
    }

    else
    {
      v11 = +[MADEmbeddingSearchOptions defaultOptions];
    }

    v54 = v11;
    assetUUIDs = [v11 assetUUIDs];
    v14 = [assetUUIDs count];

    if (v14)
    {
      v15 = MEMORY[0x1E695DFD8];
      assetUUIDs2 = [v54 assetUUIDs];
      v17 = [v15 setWithArray:assetUUIDs2];

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
    allObjects = [v20 allObjects];
    resultLimit = [v54 resultLimit];
    fullScan = [v54 fullScan];
    includePayload = [v54 includePayload];
    numberOfProbes = [v54 numberOfProbes];
    batchSize = [v54 batchSize];
    numConcurrentReaders = [v54 numConcurrentReaders];
    v68 = 0;
    v60 = [v52 searchWithEmbeddings:embeddingsCopy localIdentifiers:allObjects attributeFilters:0 limit:resultLimit fullScan:fullScan includePayload:includePayload numberOfProbes:numberOfProbes batchSize:batchSize numConcurrentReaders:numConcurrentReaders error:&v68];
    v51 = v68;

    if (v51)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v73 = v51;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] Failed to search with embeddings %@", buf, 0xCu);
      }

      if (error)
      {
        array = 0;
        *error = [v51 copy];
LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
      v28 = [v60 count];
      if (v28 == [embeddingsCopy count])
      {
        array = [MEMORY[0x1E695DF70] array];
        for (i = 0; i < [v60 count]; ++i)
        {
          context = objc_autoreleasePoolPush();
          v55 = [v60 objectAtIndexedSubscript:i];
          array2 = [MEMORY[0x1E695DF70] array];
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
                stringIdentifier = [v33 stringIdentifier];
                v37 = [v35 mad_localIdentifierFromStringIdentifier:stringIdentifier];

                v38 = [MEMORY[0x1E6978628] uuidFromLocalIdentifier:v37];
                if (([v29 containsObject:v38] & 1) == 0)
                {
                  v39 = [MADEmbeddingSearchResult alloc];
                  value = [v33 value];
                  v41 = -[MADEmbeddingSearchResult initWithAssetUUID:distance:metric:](v39, "initWithAssetUUID:distance:metric:", v38, value, [v33 metric]);

                  [array2 addObject:v41];
                  [v29 addObject:v38];
                }

                objc_autoreleasePoolPop(v34);
              }

              v30 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
            }

            while (v30);
          }

          [array addObject:array2];
          objc_autoreleasePoolPop(context);
        }

        goto LABEL_46;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v42 = [embeddingsCopy count];
        v43 = [v60 count];
        *buf = 67109376;
        *v73 = v42;
        *&v73[4] = 1024;
        *&v73[6] = v43;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] Invalid search results count: expected %u but received %u", buf, 0xEu);
      }

      if (error)
      {
        v44 = MEMORY[0x1E696ABC0];
        v70 = *MEMORY[0x1E696A578];
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore] Invalid search results count: expected %u but received %u", objc_msgSend(embeddingsCopy, "count"), objc_msgSend(v60, "count")];
        v71 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        *error = [v44 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v46];
      }
    }

    array = 0;
    goto LABEL_46;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *v73 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] Failed to initialize Photo Library %@", buf, 0xCu);
  }

  if (!error)
  {
    array = 0;
    goto LABEL_48;
  }

  v12 = MEMORY[0x1E696ABC0];
  v74 = *MEMORY[0x1E696A578];
  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore] Failed to initialize Photo Library %@", 0];
  v75[0] = v52;
  v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
  [v12 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:?];
  *error = array = 0;
LABEL_47:

LABEL_48:

  return array;
}

+ (void)prewarmSearchWithConcurrencyLimit:(unint64_t)limit photoLibraryURL:(id)l error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v8 = lCopy;
  if (lCopy)
  {
    systemPhotoLibraryURL = lCopy;
  }

  else
  {
    systemPhotoLibraryURL = [MEMORY[0x1E69789B0] systemPhotoLibraryURL];
  }

  v10 = systemPhotoLibraryURL;
  v11 = [objc_alloc(MEMORY[0x1E69789B0]) initWithPhotoLibraryURL:systemPhotoLibraryURL];
  if (v11)
  {
    +[MADVectorDatabaseManager releaseAllSharedDatabase];
    v12 = [MADVectorDatabaseManager sharedDatabaseWithPhotoLibrary:v11];
    [v12 prewarmSearchWithConcurrencyLimit:limit];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADEmbeddingStore] Failed to initialize Photo Library %@", buf, 0xCu);
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADEmbeddingStore] Failed to initialize Photo Library %@", 0];
      v17 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      *error = [v13 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v15];
    }
  }
}

@end