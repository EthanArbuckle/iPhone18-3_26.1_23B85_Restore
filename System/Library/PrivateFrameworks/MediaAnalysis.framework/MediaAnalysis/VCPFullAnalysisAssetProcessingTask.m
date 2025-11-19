@interface VCPFullAnalysisAssetProcessingTask
+ (id)taskWithAsset:(id)a3 andAnalysisTypes:(unint64_t)a4 andOptions:(id)a5 andProgressHandler:(id)a6 andCompletionHandler:(id)a7;
- (VCPFullAnalysisAssetProcessingTask)initWithAssets:(id)a3 analysisTypes:(unint64_t)a4 options:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7;
- (id)analyzeOndemand:(id)a3 forAnalysisTypes:(unint64_t)a4 withExistingAnalysis:(id)a5 error:(id *)a6;
- (id)requestAnalysis:(unint64_t)a3 forAsset:(id)a4 andDatabase:(id)a5 error:(id *)a6;
- (int)main;
- (int)run;
- (void)dealloc;
@end

@implementation VCPFullAnalysisAssetProcessingTask

- (VCPFullAnalysisAssetProcessingTask)initWithAssets:(id)a3 analysisTypes:(unint64_t)a4 options:(id)a5 progressHandler:(id)a6 andCompletionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v28.receiver = self;
  v28.super_class = VCPFullAnalysisAssetProcessingTask;
  v15 = [(VCPFullAnalysisAssetProcessingTask *)&v28 init];
  if (v15)
  {
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &__block_literal_global_9;
    }

    v17 = _Block_copy(v16);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v17;

    if (![v12 count])
    {
      v26 = 0;
      goto LABEL_9;
    }

    atomic_store(0, &v15->_cancel);
    objc_storeStrong(&v15->_assets, a3);
    v19 = [(NSArray *)v15->_assets objectAtIndexedSubscript:0];
    v20 = [v19 photoLibrary];
    photoLibrary = v15->_photoLibrary;
    v15->_photoLibrary = v20;

    v22 = [VCPDatabaseReader databaseForPhotoLibrary:v15->_photoLibrary];
    database = v15->_database;
    v15->_database = v22;

    v24 = [v13 objectForKeyedSubscript:@"AllowOnDemand"];
    v15->_allowOnDemand = [v24 BOOLValue];

    v25 = [v13 objectForKeyedSubscript:@"AllowStreaming"];
    v15->_allowStreaming = [v25 BOOLValue];

    v15->_analysisTypes = a4;
    objc_storeStrong(&v15->_options, a5);
  }

  v26 = v15;
LABEL_9:

  return v26;
}

+ (id)taskWithAsset:(id)a3 andAnalysisTypes:(unint64_t)a4 andOptions:(id)a5 andProgressHandler:(id)a6 andCompletionHandler:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [objc_alloc(objc_opt_class()) initWithAssets:v11 analysisTypes:a4 options:v12 progressHandler:v13 andCompletionHandler:v14];

  return v15;
}

- (void)dealloc
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      v5 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A578];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Full analysis asset processing task cancelled"];
      v11[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v8 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v7];
      completionHandler[2](completionHandler, 0, v8);
    }
  }

  v9.receiver = self;
  v9.super_class = VCPFullAnalysisAssetProcessingTask;
  [(VCPFullAnalysisAssetProcessingTask *)&v9 dealloc];
}

- (id)requestAnalysis:(unint64_t)a3 forAsset:(id)a4 andDatabase:(id)a5 error:(id *)a6
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v54 = a5;
  v55 = [v10 localIdentifier];
  v11 = a6;
  v12 = MediaAnalysisResultsTypesForAnalysisTypes(a3);
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    v13 = [v10 photoLibrary];
    v14 = [v13 mad_fetchRequest];

    v15 = [v10 localIdentifier];
    v16 = [v14 fetchAnalysisWithLocalIdentifier:v15 predicate:0 resultTypes:v12];

    v64 = 0;
    v63 = 0;
    if ([v10 vcp_isLongMovie])
    {
      v17 = _os_feature_enabled_impl();
    }

    else
    {
      v17 = 0;
    }

    v62 = 0;
    v19 = [v10 localIdentifier];
    if (v17)
    {
      v20 = 254;
    }

    else
    {
      v20 = 1;
    }

    [v14 fetchProcessingStatus:&v64 attempts:&v63 lastAttemptDate:0 nextAttemptDate:&v62 localIdentifier:v19 taskID:v20];
    v21 = v62;

    if (v64)
    {
      v22 = [MEMORY[0x1E695DF00] now];
      v23 = [v21 compare:v22] == 1;

      if (v23)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v66 = v55;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Analysis requested for failed asset", buf, 0xCu);
        }

        v16 = 0;
      }
    }
  }

  else
  {
    v18 = [v10 localIdentifier];
    v16 = [v54 queryAnalysisForAsset:v18 withTypes:v12];

    v61 = 0;
    LODWORD(v18) = [v54 isAssetBlacklisted:v55 blacklistDate:&v61];
    v14 = v61;
    if (v18)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = v55;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Analysis requested for blacklisted asset", buf, 0xCu);
      }

      v16 = 0;
    }
  }

  if (!v16)
  {
LABEL_34:
    v29 = a3;
    if (a3)
    {
      goto LABEL_35;
    }

LABEL_57:
    v16 = v16;
    v51 = v16;
    goto LABEL_64;
  }

  if ([v16 vcp_version] < 7)
  {
LABEL_33:

    v16 = 0;
    goto LABEL_34;
  }

  v24 = [v16 vcp_dateModified];
  v25 = [v10 vcp_modificationDate];
  v26 = [v24 isEqualToDate:v25];

  if ((v26 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v66 = v55;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Existing analysis based on old modification", buf, 0xCu);
    }

    goto LABEL_33;
  }

  if (!a3)
  {
    goto LABEL_57;
  }

  if (self->_allowOnDemand)
  {
    v27 = MediaAnalysisStripOutdatedAnalysis(v10, v16);

    v16 = v27;
  }

  if ((a3 & ~[v16 vcp_types]) == 0)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v28 = MediaAnalysisTypeDescription([v16 vcp_types]);
      *buf = 138412546;
      v66 = v55;
      v67 = 2112;
      v68 = v28;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Existing analysis satisfies request (%@)", buf, 0x16u);
    }

    goto LABEL_57;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v50 = MediaAnalysisTypeDescription([v16 vcp_types]);
    *buf = 138412546;
    v66 = v55;
    v67 = 2112;
    v68 = v50;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Existing analysis doesn't satisfy request (%@)", buf, 0x16u);
  }

  v29 = a3 & ~[v16 vcp_types];
  if (!v29)
  {
    goto LABEL_57;
  }

LABEL_35:
  if (!self->_allowOnDemand)
  {
    goto LABEL_57;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v30 = MediaAnalysisTypeDescription(v29);
    *buf = 138412546;
    v66 = v55;
    v67 = 2112;
    v68 = v30;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Generating analysis on-demand: %@", buf, 0x16u);
  }

  v31 = [(VCPFullAnalysisAssetProcessingTask *)self analyzeOndemand:v10 forAnalysisTypes:v29 withExistingAnalysis:v16 error:v11];
  if (v31)
  {
    v32 = MediaAnalysisMergeAnalysis(v16, v31);
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_class() AllowPersistSettlingEffectScore] ^ 1;
  if ((a3 & 0x40000) == 0)
  {
    LOBYTE(v33) = 1;
  }

  if ((v33 & 1) == 0)
  {
    v34 = [v32 vcp_results];
    v35 = [v34 objectForKeyedSubscript:@"SettlingEffectsGatingResults"];

    if ([v35 count])
    {
      v36 = [v35 objectAtIndexedSubscript:0];
      [v36 vcp_quality];
      v38 = v37;

      v39 = [v35 objectAtIndexedSubscript:0];
      v40 = [v39 objectForKeyedSubscript:@"attributes"];
      v41 = [v40 objectForKeyedSubscript:@"RankingLevel"];
      [v41 floatValue];
      v43 = v42;

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v44 = [v10 localIdentifier];
        *buf = 138412290;
        v66 = v44;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "   [%@] Publishing settling effect score to PHAssetPropertySetMediaAnalysis", buf, 0xCu);
      }

      photoLibrary = self->_photoLibrary;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __81__VCPFullAnalysisAssetProcessingTask_requestAnalysis_forAsset_andDatabase_error___block_invoke;
      v57[3] = &unk_1E834C440;
      v47 = v10;
      v58 = v47;
      v45 = v38;
      v59 = v45;
      v60 = v43;
      v56 = 0;
      LODWORD(photoLibrary) = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v57 error:&v56];
      v48 = v56;
      if (photoLibrary)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v49 = [v47 localIdentifier];
          *buf = 138412290;
          v66 = v49;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "   [%@] Successfully published settling effect score to PHAssetPropertySetMediaAnalysis", buf, 0xCu);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v52 = [v47 localIdentifier];
        *buf = 138412546;
        v66 = v52;
        v67 = 2112;
        v68 = v48;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "   [%@] Error publishing settling effect score to PHAssetPropertySetMediaAnalysis, error: %@", buf, 0x16u);
      }
    }
  }

  v51 = v32;

LABEL_64:

  return v51;
}

void __81__VCPFullAnalysisAssetProcessingTask_requestAnalysis_forAsset_andDatabase_error___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E6978640] changeRequestForAsset:*(a1 + 32)];
  v2 = [*(a1 + 32) vcp_modificationDate];
  [v5 setMediaAnalysisTimeStamp:v2];

  LODWORD(v3) = *(a1 + 40);
  [v5 setSettlingEffectScore:v3];
  LODWORD(v4) = *(a1 + 44);
  [v5 setActivityScore:v4];
}

- (id)analyzeOndemand:(id)a3 forAnalysisTypes:(unint64_t)a4 withExistingAnalysis:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v39 = a5;
  v38 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:v9];
  v10 = [v9 vcp_fullAnalysisTypesForResources:?] & a4;
  if (!self->_allowStreaming || v10 == a4)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v9 photoLibrary];
    if ([v13 vcp_allowsCloudLibraryResourceDownload])
    {
      v12 = [v9 vcp_eligibleForVideoDownload:v38];
    }

    else
    {
      v12 = 0;
    }
  }

  v15 = (a4 >> 49) & 1 | [v9 isPhoto];
  if (v15 == 1)
  {
    v16 = [[VCPPhotoAnalyzer alloc] initWithPHAsset:v9 withExistingAnalysis:v39 forAnalysisTypes:a4 & 0x261D900060000];
    [(VCPPhotoAnalyzer *)v16 setAllowStreaming:v12];
    [(VCPPhotoAnalyzer *)v16 setRequiresOnDemandDownload:1];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __98__VCPFullAnalysisAssetProcessingTask_analyzeOndemand_forAnalysisTypes_withExistingAnalysis_error___block_invoke;
    v41[3] = &unk_1E834C078;
    v41[4] = self;
    v17 = [(VCPPhotoAnalyzer *)v16 analyzeAsset:v41 withOptions:self->_options];
    v18 = [(VCPPhotoAnalyzer *)v16 status];
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = [v9 isVideo];
  if (v19)
  {
    v20 = [[VCPMovieAnalyzer alloc] initWithPHAsset:v9 withExistingAnalysis:v39 forAnalysisTypes:a4];
    [(VCPMovieAnalyzer *)v20 setAllowStreaming:v12];
    [(VCPMovieAnalyzer *)v20 setRequiresOnDemandDownload:1];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __98__VCPFullAnalysisAssetProcessingTask_analyzeOndemand_forAnalysisTypes_withExistingAnalysis_error___block_invoke_2;
    v40[3] = &unk_1E834C078;
    v40[4] = self;
    v21 = [(VCPMovieAnalyzer *)v20 analyzeAsset:v40 streamed:0];
    v22 = [(VCPMovieAnalyzer *)v20 status];
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v23 = MediaAnalysisMergeAnalysis(v21, v17);
  v24 = v23;
  if (v18 == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = v15;
  }

  if (v22 == 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = v19;
  }

  if (v25 & 1) != 0 || (v26)
  {
    if (v18 == 4 || v22 == 4)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v9 localIdentifier];
        *buf = 138412290;
        v45 = v31;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Analysis cancelled", buf, 0xCu);
      }

      v30 = -128;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v9 localIdentifier];
        *buf = 138412290;
        v45 = v29;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Analysis failed to complete", buf, 0xCu);
      }

      v30 = -18;
    }

    if (a6)
    {
      v32 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v33 = MEMORY[0x1E696AEC0];
      v27 = [v9 localIdentifier];
      v34 = [v33 stringWithFormat:@"[%@] Failed to analyze on-demand", v27];
      v43 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *a6 = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:v30 userInfo:v35];

      v28 = 0;
      goto LABEL_39;
    }
  }

  else if (v23)
  {
    v27 = MediaAnalysisStripKeyframeResourceResultsFromAnalysis(v23);

    v28 = MediaAnalysisStripVideoThumbnailResourceResultsFromAnalysis(v27);
LABEL_39:

    goto LABEL_41;
  }

  v28 = 0;
LABEL_41:

  return v28;
}

- (int)main
{
  v32 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)self->_assets count])
  {
    return -50;
  }

  v22 = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_assets;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v24 = *v26;
LABEL_4:
    v5 = 0;
    while (1)
    {
      if (*v26 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v25 + 1) + 8 * v5);
      v7 = objc_autoreleasePoolPush();
      v8 = atomic_load(&self->_cancel);
      if (v8)
      {
        v9 = 0;
        v2 = -128;
      }

      else
      {
        if ([v6 isPhoto] && (self->_analysisTypes & 0xFFFD9E26FFF9FFFFLL) != 0)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v10 = MediaAnalysisTypeDescription(self->_analysisTypes & 0xFFFD9E26FFF9FFFFLL);
            *buf = 138412290;
            v30 = v10;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported photo analysis type %@", buf, 0xCu);
          }
        }

        else
        {
          v11 = [v6 isVideo];
          if ((self->_analysisTypes & 0xFFFDDFFEFFFFFFFFLL) != 0)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          if (v12 != 1)
          {
            v14 = [VCPFullAnalysisAssetProcessingTask requestAnalysis:"requestAnalysis:forAsset:andDatabase:error:" forAsset:? andDatabase:? error:?];
            v15 = 0;
            v16 = v15;
            v9 = v15 == 0;
            if (v15)
            {
              v2 = [v15 code];
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v17 = [v16 description];
                *buf = 138412290;
                v30 = v17;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
              }
            }

            else if (v14)
            {
              v21 = [v14 vcp_results];
              v18 = [v6 localIdentifier];
              [v22 setObject:v21 forKeyedSubscript:v18];
            }

            goto LABEL_29;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v13 = MediaAnalysisTypeDescription(self->_analysisTypes & 0xFFFDDFFEFFFFFFFFLL);
            *buf = 138412290;
            v30 = v13;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported movie analysis type %@", buf, 0xCu);
          }
        }

        v9 = 0;
        v2 = -18;
      }

LABEL_29:
      objc_autoreleasePoolPop(v7);
      if (!v9)
      {

        goto LABEL_38;
      }

      if (v4 == ++v5)
      {
        v4 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v4)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  if ([v22 count])
  {
    v19 = v22;
  }

  else
  {

    v19 = 0;
  }

  v22 = v19;
  (*(self->_completionHandler + 2))();
  v2 = 0;
LABEL_38:

  return v2;
}

- (int)run
{
  v18[1] = *MEMORY[0x1E69E9840];
  atomic_store(1u, &self->_started);
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPFullAnalysisAssetProcessingTask", "", v16, 2u);
  }

  v7 = [(VCPFullAnalysisAssetProcessingTask *)self main];
  v8 = VCPSignPostLog();
  v9 = v8;
  if (v4 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_END, v4, "VCPFullAnalysisAssetProcessingTask", "", v16, 2u);
  }

  if (v7)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCPFullAnalysisAssetProcessingTask processing failed", v16, 2u);
    }

    completionHandler = self->_completionHandler;
    v11 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VCPFullAnalysisAssetProcessingTask processing failed"];
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:v13];
    completionHandler[2](completionHandler, 0, v14);
  }

  return v7;
}

@end