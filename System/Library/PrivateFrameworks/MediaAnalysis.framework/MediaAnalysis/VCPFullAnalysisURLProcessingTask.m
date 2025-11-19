@interface VCPFullAnalysisURLProcessingTask
+ (id)taskForURLAsset:(id)a3 withOptions:(id)a4 analysisTypes:(unint64_t)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (VCPFullAnalysisURLProcessingTask)initWithURLAsset:(id)a3 withOptions:(id)a4 analysisTypes:(unint64_t)a5 progressHandler:(id)a6 completionHandler:(id)a7;
- (int)run;
- (int)runWithCancelBlock:(id)a3;
@end

@implementation VCPFullAnalysisURLProcessingTask

- (VCPFullAnalysisURLProcessingTask)initWithURLAsset:(id)a3 withOptions:(id)a4 analysisTypes:(unint64_t)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v31.receiver = self;
  v31.super_class = VCPFullAnalysisURLProcessingTask;
  v16 = [(VCPFullAnalysisURLProcessingTask *)&v31 init];
  v17 = v16;
  v18 = v16;
  if (v16)
  {
    atomic_store(0, &v16->_cancel);
    v19 = [v12 count];
    if (v19)
    {
      v19 = [v12 objectAtIndexedSubscript:0];
    }

    assetURL = v18->_assetURL;
    v18->_assetURL = v19;

    if ([v12 count] < 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = [v12 objectAtIndexedSubscript:1];
    }

    pairedAssetURL = v18->_pairedAssetURL;
    v18->_pairedAssetURL = v21;

    v23 = 0xFFFFFFFFFFFFFLL;
    if (a5)
    {
      v23 = a5;
    }

    v18->_analysisTypes = v23;
    v24 = _Block_copy(v14);
    progressHandler = v18->_progressHandler;
    v18->_progressHandler = v24;

    if (v15)
    {
      v26 = v15;
    }

    else
    {
      v26 = &__block_literal_global_62;
    }

    v27 = _Block_copy(v26);
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v27;

    v18->_noResultStrip = 0;
    objc_storeStrong(&v17->_options, a4);
    v29 = v18;
  }

  return v18;
}

+ (id)taskForURLAsset:(id)a3 withOptions:(id)a4 analysisTypes:(unint64_t)a5 progressHandler:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [objc_alloc(objc_opt_class()) initWithURLAsset:v11 withOptions:v12 analysisTypes:a5 progressHandler:v13 completionHandler:v14];

  return v15;
}

- (int)run
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__VCPFullAnalysisURLProcessingTask_run__block_invoke;
  v3[3] = &unk_1E834C078;
  v3[4] = self;
  return [(VCPFullAnalysisURLProcessingTask *)self runWithCancelBlock:v3];
}

- (int)runWithCancelBlock:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](0.0);
  }

  if (v4 && (v4[2](v4) & 1) != 0)
  {
    v6 = -128;
    goto LABEL_46;
  }

  v7 = objc_autoreleasePoolPush();
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    assetURL = self->_assetURL;
    *buf = 138412290;
    v51 = assetURL;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "  [%@] Processing", buf, 0xCu);
  }

  v9 = self->_assetURL;
  v39 = 0;
  v10 = *MEMORY[0x1E695DAA0];
  [(NSURL *)v9 getResourceValue:&v39 forKey:*MEMORY[0x1E695DAA0] error:0];
  v11 = v39;
  v12 = *MEMORY[0x1E6982EE8];
  if (([v11 conformsToType:*MEMORY[0x1E6982EE8]] & 1) != 0 || (v13 = *MEMORY[0x1E6983080], objc_msgSend(v11, "conformsToType:", *MEMORY[0x1E6983080])))
  {
    v14 = [VCPURLAsset movieAssetWithURL:self->_assetURL];
    if (v14)
    {
      v15 = [VCPMovieAnalyzer analyzerWithVCPAsset:v14 withExistingAnalysis:self->_partialAnalysis forAnalysisTypes:self->_analysisTypes withOptions:0];
      v16 = [v15 analyzeAsset:v4 streamed:0];
      v17 = [v15 status];
      goto LABEL_13;
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = self->_assetURL;
      *buf = 138412290;
      v51 = v22;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis][%@]Unable to open movie, skip", buf, 0xCu);
    }

    v23 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis][%@]Unable to open movie, skip", self->_assetURL];
    v49 = v19;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v25 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v24];
    goto LABEL_21;
  }

  if (![v11 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v16 = 0;
LABEL_34:
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->_assetURL;
      *buf = 138412290;
      v51 = v29;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Analysis failed to complete", buf, 0xCu);
    }

    v30 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Analysis failed to complete", self->_assetURL];
    v41 = v19;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v20 = [v30 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v24];
    v6 = -18;
    goto LABEL_38;
  }

  pairedAssetURL = self->_pairedAssetURL;
  if (!pairedAssetURL)
  {
    v14 = [VCPURLAsset imageAssetWithURL:self->_assetURL];
    if (v14)
    {
      goto LABEL_28;
    }

LABEL_49:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = self->_assetURL;
      *buf = 138412290;
      v51 = v33;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis][%@]Failed to create asset", buf, 0xCu);
    }

    v34 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis][%@]Failed to create asset", self->_assetURL];
    v45 = v19;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v25 = [v34 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v24];
LABEL_21:
    v20 = v25;
LABEL_22:
    v16 = 0;
    v6 = -50;
LABEL_38:

    v21 = 10;
    goto LABEL_39;
  }

  v38 = 0;
  [(NSURL *)pairedAssetURL getResourceValue:&v38 forKey:v10 error:0];
  v19 = v38;
  if (([v19 conformsToType:v12] & 1) == 0 && !objc_msgSend(v19, "conformsToType:", v13))
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = self->_assetURL;
      *buf = 138412290;
      v51 = v35;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MediaAnalysis][%@]Unable to open movie, skip", buf, 0xCu);
    }

    v36 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MediaAnalysis][%@]Unable to open movie, skip", self->_assetURL];
    v47 = v24;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v20 = [v36 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v37];

    goto LABEL_22;
  }

  v14 = [VCPURLAsset livePhotoAssetWithImageURL:self->_assetURL andMovieURL:self->_pairedAssetURL];

  if (!v14)
  {
    goto LABEL_49;
  }

LABEL_28:
  v15 = [VCPPhotoAnalyzer analyzerWithVCPAsset:v14 forAnalysisTypes:self->_analysisTypes];
  v16 = [v15 analyzeAsset:v4 withOptions:self->_options];
  v17 = [v15 status];
LABEL_13:
  v18 = v17;

  if (v18 == 4)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_assetURL;
      *buf = 138412290;
      v51 = v27;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Analysis cancelled", buf, 0xCu);
    }

    v28 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Analysis cancelled", self->_assetURL];
    v43 = v19;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v20 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v24];
    v6 = -128;
    goto LABEL_38;
  }

  if (v18 != 2)
  {
    goto LABEL_34;
  }

  if (v16)
  {
    v19 = MediaAnalysisStripKeyframeResourceResultsFromAnalysis(v16);

    MediaAnalysisStripVideoThumbnailResourceResultsFromAnalysis(v19);
    v20 = 0;
    v6 = 0;
    v16 = v21 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v20 = 0;
  v6 = 0;
  v21 = 0;
LABEL_40:

  objc_autoreleasePoolPop(v7);
  if (v21 != 10)
  {
    v31 = self->_progressHandler;
    if (v31)
    {
      v31[2](100.0);
    }
  }

  if (v16)
  {
    objc_storeStrong(&self->_partialAnalysis, v16);
  }

  (*(self->_completionHandler + 2))();

LABEL_46:
  return v6;
}

@end