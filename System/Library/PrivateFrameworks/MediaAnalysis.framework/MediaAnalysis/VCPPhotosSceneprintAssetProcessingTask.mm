@interface VCPPhotosSceneprintAssetProcessingTask
+ (id)taskWithAssets:(id)assets options:(id)options andCompletionHandler:(id)handler;
- (BOOL)run:(id *)run;
- (VCPPhotosSceneprintAssetProcessingTask)initWithAssets:(id)assets options:(id)options andCompletionHandler:(id)handler;
- (int)run;
- (void)dealloc;
@end

@implementation VCPPhotosSceneprintAssetProcessingTask

- (VCPPhotosSceneprintAssetProcessingTask)initWithAssets:(id)assets options:(id)options andCompletionHandler:(id)handler
{
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  if ([assetsCopy count])
  {
    v19.receiver = self;
    v19.super_class = VCPPhotosSceneprintAssetProcessingTask;
    v12 = [(VCPPhotosSceneprintAssetProcessingTask *)&v19 init];
    if (v12)
    {
      v13 = _Block_copy(handlerCopy);
      completionHandler = v12->_completionHandler;
      v12->_completionHandler = v13;

      objc_storeStrong(&v12->_assets, assets);
      v15 = [optionsCopy objectForKeyedSubscript:@"SceneprintRevision"];

      if (v15)
      {
        v16 = [optionsCopy objectForKeyedSubscript:@"SceneprintRevision"];
        v12->_revision = [v16 unsignedIntegerValue];
      }

      else
      {
        v12->_revision = 3737841671;
      }
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v12[1] = *MEMORY[0x1E69E9840];
  globalSession = [MEMORY[0x1E6984688] globalSession];
  [globalSession releaseCachedResources];

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

+ (id)taskWithAssets:(id)assets options:(id)options andCompletionHandler:(id)handler
{
  assetsCopy = assets;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = [objc_alloc(objc_opt_class()) initWithAssets:assetsCopy options:optionsCopy andCompletionHandler:handlerCopy];

  return v10;
}

- (BOOL)run:(id *)run
{
  v102 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  atomic_store(1u, &self->_started);
  v76 = +[VCPSceneProcessingImageManager imageManager];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = selfCopy->_assets;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v84 objects:v101 count:16];
  if (v5)
  {
    runCopy7 = run;
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
      v9 = atomic_load(&selfCopy->_cancel);
      if (v9)
      {
        if (runCopy7)
        {
          v56 = MEMORY[0x1E696ABC0];
          v99 = v71;
          v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sceneprint task cancelled"];
          vcp_thumbnailResource = v100;
          localIdentifier = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          v57 = [v56 errorWithDomain:v70 code:-128 userInfo:?];
          v36 = *runCopy7;
          *runCopy7 = v57;
          goto LABEL_49;
        }

        goto LABEL_52;
      }

      v10 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:*(*(&v84 + 1) + 8 * v7)];
      vcp_thumbnailResource = [v10 vcp_thumbnailResource];

      if (([vcp_thumbnailResource vcp_isLocallyAvailable] & 1) == 0)
      {
        if (run)
        {
          v58 = MEMORY[0x1E696ABC0];
          v97 = v71;
          v59 = MEMORY[0x1E696AEC0];
          localIdentifier = [v8 localIdentifier];
          v36 = [v59 stringWithFormat:@"[%@] Thumbnail is not locally available", localIdentifier];
          v98 = v36;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v61 = [v58 errorWithDomain:v70 code:-23802 userInfo:v60];
          v62 = *run;
          *run = v61;

          goto LABEL_49;
        }

        goto LABEL_51;
      }

      vcp_abnormalImageDimensionForSceneNet = [v8 vcp_abnormalImageDimensionForSceneNet];
      if (vcp_abnormalImageDimensionForSceneNet)
      {
        _panoVNRequestMethod = [objc_opt_class() _panoVNRequestMethod];
        if (!_panoVNRequestMethod)
        {
          v31 = objc_alloc(MEMORY[0x1E69845B8]);
          privateFileURL = [vcp_thumbnailResource privateFileURL];
          localIdentifier = [v31 initWithURL:privateFileURL options:MEMORY[0x1E695E0F8]];

          runCopy6 = run;
          goto LABEL_25;
        }

        v82 = 0;
        v83 = 0;
        privateFileURL2 = [vcp_thumbnailResource privateFileURL];
        v14 = [v76 loadFullPixelBuffer:&v83 scaledPixelBuffer299:&v82 scaledPixelBuffer360:0 fromImageURL:privateFileURL2 abnormalDimension:vcp_abnormalImageDimensionForSceneNet];

        if (v14)
        {
          if (run)
          {
            v15 = MEMORY[0x1E696ABC0];
            v93 = v71;
            v16 = MEMORY[0x1E696AEC0];
            localIdentifier2 = [v8 localIdentifier];
            v18 = [v16 stringWithFormat:@"[%@] Failed to load thumbnail image", localIdentifier2];
            v94 = v18;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
            v20 = [v15 errorWithDomain:v70 code:v14 userInfo:v19];
            v21 = *run;
            *run = v20;

LABEL_16:
            localIdentifier = 0;
            runCopy6 = run;
            goto LABEL_24;
          }

LABEL_18:
          runCopy6 = run;
          localIdentifier = 0;
          goto LABEL_24;
        }

        runCopy6 = run;
        v33 = objc_alloc(MEMORY[0x1E69845B8]);
        if (_panoVNRequestMethod == 1)
        {
          v34 = &v83;
        }

        else
        {
          v34 = &v82;
        }

        localIdentifier = [v33 initWithCVPixelBuffer:*v34 options:MEMORY[0x1E695E0F8]];
      }

      else
      {
        v82 = 0;
        v83 = 0;
        privateFileURL3 = [vcp_thumbnailResource privateFileURL];
        v14 = [v76 loadFullPixelBuffer:&v83 scaledPixelBuffer299:&v82 scaledPixelBuffer360:0 fromImageURL:privateFileURL3 abnormalDimension:0];

        if (v14)
        {
          if (run)
          {
            v23 = MEMORY[0x1E696ABC0];
            v95 = v71;
            v24 = MEMORY[0x1E696AEC0];
            localIdentifier3 = [v8 localIdentifier];
            v26 = [v24 stringWithFormat:@"[%@] Failed to load thumbnail image", localIdentifier3];
            v96 = v26;
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            v28 = [v23 errorWithDomain:v70 code:v14 userInfo:v27];
            v29 = *run;
            *run = v28;

            goto LABEL_16;
          }

          goto LABEL_18;
        }

        v35 = objc_alloc(MEMORY[0x1E69845B8]);
        runCopy6 = run;
        localIdentifier = [v35 initWithCVPixelBuffer:v82 options:MEMORY[0x1E695E0F8]];
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
      revision = selfCopy->_revision;
      v81 = 0;
      v38 = [v36 setRevision:revision error:&v81];
      v39 = v81;
      if ((v38 & 1) == 0)
      {
        if (runCopy6)
        {
          v63 = MEMORY[0x1E696ABC0];
          v91 = v71;
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@] Failed to set revision %lu - %@", objc_opt_class(), selfCopy->_revision, v39];
          v92 = v64;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
          v66 = [v63 errorWithDomain:v70 code:-50 userInfo:v65];
          v67 = *runCopy6;
          *runCopy6 = v66;

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
        defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
        [v36 setProcessingDevice:defaultANEDevice];
      }

      v90 = v36;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
      v80 = v39;
      v42 = [localIdentifier performRequests:v41 error:&v80];
      v43 = v80;

      if ((v42 & 1) == 0)
      {
        if (run)
        {
          v39 = v43;
          v64 = *run;
          *run = v39;
LABEL_46:
        }

        else
        {
          v39 = v43;
        }

        goto LABEL_48;
      }

      results = [v36 results];
      v45 = [results count];
      if (v45 == 1)
      {
        firstObject = [results firstObject];
        sceneprints = [firstObject sceneprints];
        firstObject2 = [sceneprints firstObject];

        localIdentifier4 = [v8 localIdentifier];
        [dictionary setObject:firstObject2 forKeyedSubscript:localIdentifier4];
LABEL_33:

        goto LABEL_34;
      }

      if (run)
      {
        v50 = MEMORY[0x1E696ABC0];
        v88 = v71;
        v51 = MEMORY[0x1E696AEC0];
        firstObject2 = [v8 localIdentifier];
        localIdentifier4 = [v51 stringWithFormat:@"[%@] Invalid sceneprint result", firstObject2];
        v89 = localIdentifier4;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v53 = [v50 errorWithDomain:v70 code:-18 userInfo:v52];
        v54 = *run;
        *run = v53;

        goto LABEL_33;
      }

LABEL_34:

      if (v45 != 1)
      {
        goto LABEL_52;
      }

      runCopy7 = run;
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

  (*(selfCopy->_completionHandler + 2))();
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
    code = 0;
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
    code = [v6 code];
  }

  return code;
}

@end