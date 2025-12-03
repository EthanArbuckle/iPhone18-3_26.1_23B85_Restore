@interface VCPFullAnalysisAssetProcessingTask
+ (id)taskWithAsset:(id)asset andAnalysisTypes:(unint64_t)types andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (VCPFullAnalysisAssetProcessingTask)initWithAssets:(id)assets analysisTypes:(unint64_t)types options:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (id)analyzeOndemand:(id)ondemand forAnalysisTypes:(unint64_t)types withExistingAnalysis:(id)analysis error:(id *)error;
- (id)requestAnalysis:(unint64_t)analysis forAsset:(id)asset andDatabase:(id)database error:(id *)error;
- (int)main;
- (int)run;
- (void)dealloc;
@end

@implementation VCPFullAnalysisAssetProcessingTask

- (VCPFullAnalysisAssetProcessingTask)initWithAssets:(id)assets analysisTypes:(unint64_t)types options:(id)options progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetsCopy = assets;
  optionsCopy = options;
  completionHandlerCopy = completionHandler;
  v28.receiver = self;
  v28.super_class = VCPFullAnalysisAssetProcessingTask;
  v15 = [(VCPFullAnalysisAssetProcessingTask *)&v28 init];
  if (v15)
  {
    if (completionHandlerCopy)
    {
      v16 = completionHandlerCopy;
    }

    else
    {
      v16 = &__block_literal_global_9;
    }

    v17 = _Block_copy(v16);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v17;

    if (![assetsCopy count])
    {
      v26 = 0;
      goto LABEL_9;
    }

    atomic_store(0, &v15->_cancel);
    objc_storeStrong(&v15->_assets, assets);
    v19 = [(NSArray *)v15->_assets objectAtIndexedSubscript:0];
    photoLibrary = [v19 photoLibrary];
    photoLibrary = v15->_photoLibrary;
    v15->_photoLibrary = photoLibrary;

    v22 = [VCPDatabaseReader databaseForPhotoLibrary:v15->_photoLibrary];
    database = v15->_database;
    v15->_database = v22;

    v24 = [optionsCopy objectForKeyedSubscript:@"AllowOnDemand"];
    v15->_allowOnDemand = [v24 BOOLValue];

    v25 = [optionsCopy objectForKeyedSubscript:@"AllowStreaming"];
    v15->_allowStreaming = [v25 BOOLValue];

    v15->_analysisTypes = types;
    objc_storeStrong(&v15->_options, options);
  }

  v26 = v15;
LABEL_9:

  return v26;
}

+ (id)taskWithAsset:(id)asset andAnalysisTypes:(unint64_t)types andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v15 = [objc_alloc(objc_opt_class()) initWithAssets:assetCopy analysisTypes:types options:optionsCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

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

- (id)requestAnalysis:(unint64_t)analysis forAsset:(id)asset andDatabase:(id)database error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  databaseCopy = database;
  localIdentifier = [assetCopy localIdentifier];
  errorCopy = error;
  v12 = MediaAnalysisResultsTypesForAnalysisTypes(analysis);
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    photoLibrary = [assetCopy photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];

    localIdentifier2 = [assetCopy localIdentifier];
    v16 = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier2 predicate:0 resultTypes:v12];

    v64 = 0;
    v63 = 0;
    if ([assetCopy vcp_isLongMovie])
    {
      v17 = _os_feature_enabled_impl();
    }

    else
    {
      v17 = 0;
    }

    v62 = 0;
    localIdentifier3 = [assetCopy localIdentifier];
    if (v17)
    {
      v20 = 254;
    }

    else
    {
      v20 = 1;
    }

    [mad_fetchRequest fetchProcessingStatus:&v64 attempts:&v63 lastAttemptDate:0 nextAttemptDate:&v62 localIdentifier:localIdentifier3 taskID:v20];
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
          v66 = localIdentifier;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Analysis requested for failed asset", buf, 0xCu);
        }

        v16 = 0;
      }
    }
  }

  else
  {
    localIdentifier4 = [assetCopy localIdentifier];
    v16 = [databaseCopy queryAnalysisForAsset:localIdentifier4 withTypes:v12];

    v61 = 0;
    LODWORD(localIdentifier4) = [databaseCopy isAssetBlacklisted:localIdentifier blacklistDate:&v61];
    mad_fetchRequest = v61;
    if (localIdentifier4)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Analysis requested for blacklisted asset", buf, 0xCu);
      }

      v16 = 0;
    }
  }

  if (!v16)
  {
LABEL_34:
    analysisCopy = analysis;
    if (analysis)
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

  vcp_dateModified = [v16 vcp_dateModified];
  vcp_modificationDate = [assetCopy vcp_modificationDate];
  v26 = [vcp_dateModified isEqualToDate:vcp_modificationDate];

  if ((v26 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v66 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Existing analysis based on old modification", buf, 0xCu);
    }

    goto LABEL_33;
  }

  if (!analysis)
  {
    goto LABEL_57;
  }

  if (self->_allowOnDemand)
  {
    v27 = MediaAnalysisStripOutdatedAnalysis(assetCopy, v16);

    v16 = v27;
  }

  if ((analysis & ~[v16 vcp_types]) == 0)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v28 = MediaAnalysisTypeDescription([v16 vcp_types]);
      *buf = 138412546;
      v66 = localIdentifier;
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
    v66 = localIdentifier;
    v67 = 2112;
    v68 = v50;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MediaAnalysis][%@] Existing analysis doesn't satisfy request (%@)", buf, 0x16u);
  }

  analysisCopy = analysis & ~[v16 vcp_types];
  if (!analysisCopy)
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
    v30 = MediaAnalysisTypeDescription(analysisCopy);
    *buf = 138412546;
    v66 = localIdentifier;
    v67 = 2112;
    v68 = v30;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MediaAnalysis][%@] Generating analysis on-demand: %@", buf, 0x16u);
  }

  v31 = [(VCPFullAnalysisAssetProcessingTask *)self analyzeOndemand:assetCopy forAnalysisTypes:analysisCopy withExistingAnalysis:v16 error:errorCopy];
  if (v31)
  {
    v32 = MediaAnalysisMergeAnalysis(v16, v31);
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_class() AllowPersistSettlingEffectScore] ^ 1;
  if ((analysis & 0x40000) == 0)
  {
    LOBYTE(v33) = 1;
  }

  if ((v33 & 1) == 0)
  {
    vcp_results = [v32 vcp_results];
    v35 = [vcp_results objectForKeyedSubscript:@"SettlingEffectsGatingResults"];

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
        localIdentifier5 = [assetCopy localIdentifier];
        *buf = 138412290;
        v66 = localIdentifier5;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "   [%@] Publishing settling effect score to PHAssetPropertySetMediaAnalysis", buf, 0xCu);
      }

      photoLibrary = self->_photoLibrary;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __81__VCPFullAnalysisAssetProcessingTask_requestAnalysis_forAsset_andDatabase_error___block_invoke;
      v57[3] = &unk_1E834C440;
      v47 = assetCopy;
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
          localIdentifier6 = [v47 localIdentifier];
          *buf = 138412290;
          v66 = localIdentifier6;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "   [%@] Successfully published settling effect score to PHAssetPropertySetMediaAnalysis", buf, 0xCu);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier7 = [v47 localIdentifier];
        *buf = 138412546;
        v66 = localIdentifier7;
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

- (id)analyzeOndemand:(id)ondemand forAnalysisTypes:(unint64_t)types withExistingAnalysis:(id)analysis error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  ondemandCopy = ondemand;
  analysisCopy = analysis;
  v38 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:ondemandCopy];
  v10 = [ondemandCopy vcp_fullAnalysisTypesForResources:?] & types;
  if (!self->_allowStreaming || v10 == types)
  {
    v12 = 0;
  }

  else
  {
    photoLibrary = [ondemandCopy photoLibrary];
    if ([photoLibrary vcp_allowsCloudLibraryResourceDownload])
    {
      v12 = [ondemandCopy vcp_eligibleForVideoDownload:v38];
    }

    else
    {
      v12 = 0;
    }
  }

  v15 = (types >> 49) & 1 | [ondemandCopy isPhoto];
  if (v15 == 1)
  {
    0x261D900060000 = [[VCPPhotoAnalyzer alloc] initWithPHAsset:ondemandCopy withExistingAnalysis:analysisCopy forAnalysisTypes:types & 0x261D900060000];
    [(VCPPhotoAnalyzer *)0x261D900060000 setAllowStreaming:v12];
    [(VCPPhotoAnalyzer *)0x261D900060000 setRequiresOnDemandDownload:1];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __98__VCPFullAnalysisAssetProcessingTask_analyzeOndemand_forAnalysisTypes_withExistingAnalysis_error___block_invoke;
    v41[3] = &unk_1E834C078;
    v41[4] = self;
    v17 = [(VCPPhotoAnalyzer *)0x261D900060000 analyzeAsset:v41 withOptions:self->_options];
    status = [(VCPPhotoAnalyzer *)0x261D900060000 status];
  }

  else
  {
    status = 0;
    v17 = 0;
  }

  isVideo = [ondemandCopy isVideo];
  if (isVideo)
  {
    v20 = [[VCPMovieAnalyzer alloc] initWithPHAsset:ondemandCopy withExistingAnalysis:analysisCopy forAnalysisTypes:types];
    [(VCPMovieAnalyzer *)v20 setAllowStreaming:v12];
    [(VCPMovieAnalyzer *)v20 setRequiresOnDemandDownload:1];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __98__VCPFullAnalysisAssetProcessingTask_analyzeOndemand_forAnalysisTypes_withExistingAnalysis_error___block_invoke_2;
    v40[3] = &unk_1E834C078;
    v40[4] = self;
    v21 = [(VCPMovieAnalyzer *)v20 analyzeAsset:v40 streamed:0];
    status2 = [(VCPMovieAnalyzer *)v20 status];
  }

  else
  {
    status2 = 0;
    v21 = 0;
  }

  v23 = MediaAnalysisMergeAnalysis(v21, v17);
  v24 = v23;
  if (status == 2)
  {
    v25 = 0;
  }

  else
  {
    v25 = v15;
  }

  if (status2 == 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = isVideo;
  }

  if (v25 & 1) != 0 || (v26)
  {
    if (status == 4 || status2 == 4)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier = [ondemandCopy localIdentifier];
        *buf = 138412290;
        v45 = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Analysis cancelled", buf, 0xCu);
      }

      v30 = -128;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier2 = [ondemandCopy localIdentifier];
        *buf = 138412290;
        v45 = localIdentifier2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Analysis failed to complete", buf, 0xCu);
      }

      v30 = -18;
    }

    if (error)
    {
      v32 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v33 = MEMORY[0x1E696AEC0];
      localIdentifier3 = [ondemandCopy localIdentifier];
      v34 = [v33 stringWithFormat:@"[%@] Failed to analyze on-demand", localIdentifier3];
      v43 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *error = [v32 errorWithDomain:*MEMORY[0x1E696A768] code:v30 userInfo:v35];

      v28 = 0;
      goto LABEL_39;
    }
  }

  else if (v23)
  {
    localIdentifier3 = MediaAnalysisStripKeyframeResourceResultsFromAnalysis(v23);

    v28 = MediaAnalysisStripVideoThumbnailResourceResultsFromAnalysis(localIdentifier3);
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

  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
        code = -128;
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
          isVideo = [v6 isVideo];
          if ((self->_analysisTypes & 0xFFFDDFFEFFFFFFFFLL) != 0)
          {
            v12 = isVideo;
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
              code = [v15 code];
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
              vcp_results = [v14 vcp_results];
              localIdentifier = [v6 localIdentifier];
              [dictionary setObject:vcp_results forKeyedSubscript:localIdentifier];
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
        code = -18;
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

  if ([dictionary count])
  {
    v19 = dictionary;
  }

  else
  {

    v19 = 0;
  }

  dictionary = v19;
  (*(self->_completionHandler + 2))();
  code = 0;
LABEL_38:

  return code;
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

  main = [(VCPFullAnalysisAssetProcessingTask *)self main];
  v8 = VCPSignPostLog();
  v9 = v8;
  if (v4 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_END, v4, "VCPFullAnalysisAssetProcessingTask", "", v16, 2u);
  }

  if (main)
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
    v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:main userInfo:v13];
    completionHandler[2](completionHandler, 0, v14);
  }

  return main;
}

@end