@interface VCPPhotosSceneprintAssetProcessingTask
+ (id)taskWithAssets:(id)a3 options:(id)a4 andCompletionHandler:(id)a5;
- (BOOL)run:(id *)a3;
- (VCPPhotosSceneprintAssetProcessingTask)initWithAssets:(id)a3 options:(id)a4 andCompletionHandler:(id)a5;
- (int)run;
- (void)dealloc;
@end

@implementation VCPPhotosSceneprintAssetProcessingTask

- (VCPPhotosSceneprintAssetProcessingTask)initWithAssets:(id)a3 options:(id)a4 andCompletionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count])
  {
    v19.receiver = self;
    v19.super_class = VCPPhotosSceneprintAssetProcessingTask;
    v12 = [(VCPPhotosSceneprintAssetProcessingTask *)&v19 init];
    if (v12)
    {
      v13 = _Block_copy(v11);
      completionHandler = v12->_completionHandler;
      v12->_completionHandler = v13;

      objc_storeStrong(&v12->_assets, a3);
      v15 = [v10 objectForKeyedSubscript:@"SceneprintRevision"];

      if (v15)
      {
        v16 = [v10 objectForKeyedSubscript:@"SceneprintRevision"];
        v12->_revision = [v16 unsignedIntegerValue];
      }

      else
      {
        v12->_revision = 3737841671;
      }
    }

    self = v12;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6984688] globalSession];
  [v3 releaseCachedResources];

  v4 = atomic_load(&self->_started);
  if ((v4 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sceneprint task cancelled"];
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v6 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v8];
    completionHandler[2](completionHandler, 0, v9);
  }

  v10.receiver = self;
  v10.super_class = VCPPhotosSceneprintAssetProcessingTask;
  [(VCPPhotosSceneprintAssetProcessingTask *)&v10 dealloc];
}

+ (id)taskWithAssets:(id)a3 options:(id)a4 andCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(objc_opt_class()) initWithAssets:v7 options:v8 andCompletionHandler:v9];

  return v10;
}

- (BOOL)run:(id *)a3
{
  v102 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v78 = self;
  atomic_store(1u, &self->_started);
  v76 = +[VCPSceneProcessingImageManager imageManager];
  v74 = [MEMORY[0x1E695DF90] dictionary];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v78->_assets;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v84 objects:v101 count:16];
  if (v5)
  {
    v6 = a3;
    v75 = *v85;
    v70 = *MEMORY[0x1E696A768];
    v71 = *MEMORY[0x1E696A578];
LABEL_3:
    v7 = 0;
    v72 = v5;
    while (1)
    {
      if (*v85 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v84 + 1) + 8 * v7);
      v9 = atomic_load(&v78->_cancel);
      if (v9)
      {
        if (v6)
        {
          v56 = MEMORY[0x1E696ABC0];
          v99 = v71;
          v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sceneprint task cancelled"];
          v79 = v100;
          v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          v57 = [v56 errorWithDomain:v70 code:-128 userInfo:?];
          v36 = *v6;
          *v6 = v57;
          goto LABEL_49;
        }

        goto LABEL_52;
      }

      v10 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:*(*(&v84 + 1) + 8 * v7)];
      v79 = [v10 vcp_thumbnailResource];

      if (([v79 vcp_isLocallyAvailable] & 1) == 0)
      {
        if (a3)
        {
          v58 = MEMORY[0x1E696ABC0];
          v97 = v71;
          v59 = MEMORY[0x1E696AEC0];
          v77 = [v8 localIdentifier];
          v36 = [v59 stringWithFormat:@"[%@] Thumbnail is not locally available", v77];
          v98 = v36;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v61 = [v58 errorWithDomain:v70 code:-23802 userInfo:v60];
          v62 = *a3;
          *a3 = v61;

          goto LABEL_49;
        }

        goto LABEL_51;
      }

      v11 = [v8 vcp_abnormalImageDimensionForSceneNet];
      if (v11)
      {
        v12 = [objc_opt_class() _panoVNRequestMethod];
        if (!v12)
        {
          v31 = objc_alloc(MEMORY[0x1E69845B8]);
          v32 = [v79 privateFileURL];
          v77 = [v31 initWithURL:v32 options:MEMORY[0x1E695E0F8]];

          v30 = a3;
          goto LABEL_25;
        }

        v82 = 0;
        v83 = 0;
        v13 = [v79 privateFileURL];
        v14 = [v76 loadFullPixelBuffer:&v83 scaledPixelBuffer299:&v82 scaledPixelBuffer360:0 fromImageURL:v13 abnormalDimension:v11];

        if (v14)
        {
          if (a3)
          {
            v15 = MEMORY[0x1E696ABC0];
            v93 = v71;
            v16 = MEMORY[0x1E696AEC0];
            v17 = [v8 localIdentifier];
            v18 = [v16 stringWithFormat:@"[%@] Failed to load thumbnail image", v17];
            v94 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
            v20 = [v15 errorWithDomain:v70 code:v14 userInfo:v19];
            v21 = *a3;
            *a3 = v20;

LABEL_16:
            v77 = 0;
            v30 = a3;
            goto LABEL_24;
          }

LABEL_18:
          v30 = a3;
          v77 = 0;
          goto LABEL_24;
        }

        v30 = a3;
        v33 = objc_alloc(MEMORY[0x1E69845B8]);
        if (v12 == 1)
        {
          v34 = &v83;
        }

        else
        {
          v34 = &v82;
        }

        v77 = [v33 initWithCVPixelBuffer:*v34 options:MEMORY[0x1E695E0F8]];
      }

      else
      {
        v82 = 0;
        v83 = 0;
        v22 = [v79 privateFileURL];
        v14 = [v76 loadFullPixelBuffer:&v83 scaledPixelBuffer299:&v82 scaledPixelBuffer360:0 fromImageURL:v22 abnormalDimension:0];

        if (v14)
        {
          if (a3)
          {
            v23 = MEMORY[0x1E696ABC0];
            v95 = v71;
            v24 = MEMORY[0x1E696AEC0];
            v25 = [v8 localIdentifier];
            v26 = [v24 stringWithFormat:@"[%@] Failed to load thumbnail image", v25];
            v96 = v26;
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            v28 = [v23 errorWithDomain:v70 code:v14 userInfo:v27];
            v29 = *a3;
            *a3 = v28;

            goto LABEL_16;
          }

          goto LABEL_18;
        }

        v35 = objc_alloc(MEMORY[0x1E69845B8]);
        v30 = a3;
        v77 = [v35 initWithCVPixelBuffer:v82 options:MEMORY[0x1E695E0F8]];
      }

LABEL_24:
      CF<__CVBuffer *>::~CF(&v82);
      CF<__CVBuffer *>::~CF(&v83);
      if (v14)
      {
        goto LABEL_50;
      }

LABEL_25:
      v36 = objc_alloc_init(MEMORY[0x1E6984490]);
      revision = v78->_revision;
      v81 = 0;
      v38 = [v36 setRevision:revision error:&v81];
      v39 = v81;
      if ((v38 & 1) == 0)
      {
        if (v30)
        {
          v63 = MEMORY[0x1E696ABC0];
          v91 = v71;
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to set revision %lu - %@", objc_opt_class(), v78->_revision, v39];
          v92 = v64;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
          v66 = [v63 errorWithDomain:v70 code:-50 userInfo:v65];
          v67 = *v30;
          *v30 = v66;

          goto LABEL_46;
        }

LABEL_48:

LABEL_49:
LABEL_50:

LABEL_51:
LABEL_52:

        v55 = 0;
        goto LABEL_53;
      }

      [v36 setMetalContextPriority:1];
      [v36 setPreferBackgroundProcessing:1];
      if (DeviceHasANE())
      {
        v40 = [MEMORY[0x1E6984608] defaultANEDevice];
        [v36 setProcessingDevice:v40];
      }

      v90 = v36;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
      v80 = v39;
      v42 = [v77 performRequests:v41 error:&v80];
      v43 = v80;

      if ((v42 & 1) == 0)
      {
        if (a3)
        {
          v39 = v43;
          v64 = *a3;
          *a3 = v39;
LABEL_46:
        }

        else
        {
          v39 = v43;
        }

        goto LABEL_48;
      }

      v44 = [v36 results];
      v45 = [v44 count];
      if (v45 == 1)
      {
        v46 = [v44 firstObject];
        v47 = [v46 sceneprints];
        v48 = [v47 firstObject];

        v49 = [v8 localIdentifier];
        [v74 setObject:v48 forKeyedSubscript:v49];
LABEL_33:

        goto LABEL_34;
      }

      if (a3)
      {
        v50 = MEMORY[0x1E696ABC0];
        v88 = v71;
        v51 = MEMORY[0x1E696AEC0];
        v48 = [v8 localIdentifier];
        v49 = [v51 stringWithFormat:@"[%@] Invalid sceneprint result", v48];
        v89 = v49;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v53 = [v50 errorWithDomain:v70 code:-18 userInfo:v52];
        v54 = *a3;
        *a3 = v53;

        goto LABEL_33;
      }

LABEL_34:

      if (v45 != 1)
      {
        goto LABEL_52;
      }

      v6 = a3;
      if (v72 == ++v7)
      {
        v5 = [(NSArray *)obj countByEnumeratingWithState:&v84 objects:v101 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  (*(v78->_completionHandler + 2))();
  v55 = 1;
LABEL_53:

  objc_autoreleasePoolPop(context);
  return v55;
}

- (int)run
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if ([(VCPPhotosSceneprintAssetProcessingTask *)self run:&v6])
  {
    v3 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [v6 description];
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Sceneprint task failed (%@)", buf, 0xCu);
    }

    (*(self->_completionHandler + 2))();
    v3 = [v6 code];
  }

  return v3;
}

@end