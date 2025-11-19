@interface VCPVideoStabilizationAssetProcessingTask
+ (BOOL)deserializeStabilizationRecipeInAttributes:(id)a3;
+ (id)taskWithAssets:(id)a3 andOptions:(id)a4 andCompletionHandler:(id)a5;
- (VCPVideoStabilizationAssetProcessingTask)initWithAssets:(id)a3 andOptions:(id)a4 andCompletionHandler:(id)a5;
- (int)main;
- (int)run;
- (void)dealloc;
@end

@implementation VCPVideoStabilizationAssetProcessingTask

- (VCPVideoStabilizationAssetProcessingTask)initWithAssets:(id)a3 andOptions:(id)a4 andCompletionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = VCPVideoStabilizationAssetProcessingTask;
  v12 = [(VCPVideoStabilizationAssetProcessingTask *)&v31 init];
  v13 = v12;
  if (!v12)
  {
LABEL_15:
    v29 = v13;
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = &__block_literal_global_59;
  }

  v15 = _Block_copy(v14);
  completionHandler = v12->_completionHandler;
  v12->_completionHandler = v15;

  if ([v9 count])
  {
    objc_storeStrong(&v12->_assets, a3);
    v17 = [(NSArray *)v12->_assets objectAtIndexedSubscript:0];
    v18 = [v17 photoLibrary];
    photoLibrary = v13->_photoLibrary;
    v13->_photoLibrary = v18;

    v20 = [VCPDatabaseReader databaseForPhotoLibrary:v13->_photoLibrary];
    database = v13->_database;
    v13->_database = v20;

    v22 = [v10 objectForKeyedSubscript:@"AllowOnDemandPixel"];
    v13->_onDemandPixel = [v22 BOOLValue];

    v23 = [v10 objectForKeyedSubscript:@"AllowOnDemandGyro"];
    v13->_onDemandGyro = [v23 BOOLValue];

    v24 = [v10 objectForKeyedSubscript:VCPVideoStabilizationProcessing_GyroKey];
    if (v24 && ([v10 objectForKeyedSubscript:VCPVideoStabilizationProcessing_PixelKey], v25 = objc_claimAutoreleasedReturnValue(), v25, v24, !v25))
    {
      v28 = 0x10000000;
    }

    else
    {
      v26 = [v10 objectForKeyedSubscript:VCPVideoStabilizationProcessing_PixelKey];
      if (v26 && ([v10 objectForKeyedSubscript:VCPVideoStabilizationProcessing_GyroKey], v27 = objc_claimAutoreleasedReturnValue(), v27, v26, !v27))
      {
        v28 = 0x4000000;
      }

      else
      {
        v28 = 335544320;
      }
    }

    v13->_stabilizationType = v28;
    goto LABEL_15;
  }

  v29 = 0;
LABEL_16:

  return v29;
}

+ (id)taskWithAssets:(id)a3 andOptions:(id)a4 andCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(objc_opt_class()) initWithAssets:v7 andOptions:v8 andCompletionHandler:v9];

  return v10;
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
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video stabilization task cancelled"];
      v11[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v8 = [v5 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v7];
      completionHandler[2](completionHandler, 0, v8);
    }
  }

  v9.receiver = self;
  v9.super_class = VCPVideoStabilizationAssetProcessingTask;
  [(VCPVideoStabilizationAssetProcessingTask *)&v9 dealloc];
}

+ (BOOL)deserializeStabilizationRecipeInAttributes:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"stabilizationRecipe"];

  if (v4)
  {
    v5 = [VCPProtoMovieStabilizationRecipe alloc];
    v6 = [v3 objectForKeyedSubscript:@"stabilizationRecipe"];
    v7 = [(VCPProtoMovieStabilizationRecipe *)v5 initWithData:v6];

    v8 = [(VCPProtoMovieStabilizationRecipe *)v7 exportToLegacyDictionary];
    v9 = v8 != 0;
    if (v8)
    {
      [v3 removeObjectForKey:@"stabilizationRecipe"];
      [v3 addEntriesFromDictionary:v8];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (int)main
{
  v46 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)self->_assets count])
  {
    return -50;
  }

  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    v3 = [(NSArray *)self->_assets firstObject];
    v4 = [v3 photoLibrary];
    v35 = [v4 mad_fetchRequest];
  }

  else
  {
    v35 = 0;
  }

  v37 = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_assets;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v6)
  {
    v39 = *v42;
LABEL_8:
    v38 = v6;
    v7 = 0;
    while (1)
    {
      if (*v42 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v41 + 1) + 8 * v7);
      v9 = atomic_load(&self->_cancel);
      if (v9)
      {
        v5 = -128;
        goto LABEL_42;
      }

      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        v10 = [v8 localIdentifier];
        [v35 fetchAnalysisWithLocalIdentifier:v10 predicate:0];
      }

      else
      {
        database = self->_database;
        v10 = [v8 localIdentifier];
        [(VCPDatabaseReader *)database queryAnalysisForAsset:v10];
      }
      v12 = ;

      v13 = [v12 vcp_results];
      v14 = [v13 objectForKeyedSubscript:@"VideoStabilizationResults"];

      if (v14)
      {
        v15 = [v14 objectAtIndexedSubscript:0];
        v16 = [v15 objectForKeyedSubscript:@"attributes"];
        v17 = [v16 objectForKeyedSubscript:@"gyroStabilization"];
        v18 = [v17 BOOLValue];

        stabilizationType = self->_stabilizationType;
        if (v18)
        {
          if ((stabilizationType & 0x10000000) == 0)
          {
            goto LABEL_22;
          }
        }

        else if ((stabilizationType & 0x4000000) == 0)
        {
          goto LABEL_22;
        }

        if ([v12 vcp_version] < 35 || (objc_msgSend(v12, "vcp_dateModified"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "vcp_modificationDate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToDate:", v21), v21, v20, (v22 & 1) == 0))
        {
LABEL_22:

          v14 = 0;
        }
      }

      v23 = self->_stabilizationType;
      if (!self->_onDemandPixel)
      {
        v23 &= ~0x4000000uLL;
      }

      if (self->_onDemandGyro)
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFFEFFFFFFFLL;
      }

      if ((v24 & 0x14000000) != 0 && !v14)
      {
        v25 = [[VCPMovieAnalyzer alloc] initWithPHAsset:v8 withExistingAnalysis:0 forAnalysisTypes:v24];
        v26 = v25;
        if (!v25)
        {
          goto LABEL_41;
        }

        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __48__VCPVideoStabilizationAssetProcessingTask_main__block_invoke;
        v40[3] = &unk_1E834C078;
        v40[4] = self;
        v27 = [(VCPMovieAnalyzer *)v25 analyzeAsset:v40 streamed:0];
        v28 = [v27 vcp_results];
        v14 = [v28 objectForKeyedSubscript:@"VideoStabilizationResults"];
      }

      if (v14)
      {
        v29 = [v14 objectAtIndexedSubscript:0];
        v30 = [v29 objectForKeyedSubscript:@"attributes"];
        v31 = [v30 mutableCopy];

        if (([objc_opt_class() deserializeStabilizationRecipeInAttributes:v31] & 1) == 0)
        {

LABEL_41:
          v5 = -18;
LABEL_42:

          goto LABEL_45;
        }

        v32 = [v8 localIdentifier];
        [v37 setObject:v31 forKeyedSubscript:v32];
      }

      if (v38 == ++v7)
      {
        v6 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v6)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  if ([v37 count])
  {
    v33 = v37;
  }

  else
  {

    v33 = 0;
  }

  v37 = v33;
  (*(self->_completionHandler + 2))();
  v5 = 0;
LABEL_45:

  return v5;
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
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPVideoStabilizationAssetProcessingTask", "", v16, 2u);
  }

  v7 = [(VCPVideoStabilizationAssetProcessingTask *)self main];
  v8 = VCPSignPostLog();
  v9 = v8;
  if (v4 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v8))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_END, v4, "VCPVideoStabilizationAssetProcessingTask", "", v16, 2u);
  }

  if (v7)
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Video Stabilization processing failed", v16, 2u);
    }

    completionHandler = self->_completionHandler;
    v11 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video stabilization processing failed"];
    v18[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:v13];
    completionHandler[2](completionHandler, 0, v14);
  }

  return v7;
}

@end