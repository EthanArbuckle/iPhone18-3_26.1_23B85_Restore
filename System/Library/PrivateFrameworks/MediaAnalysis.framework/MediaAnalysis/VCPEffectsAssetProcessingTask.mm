@interface VCPEffectsAssetProcessingTask
+ (id)taskWithAssets:(id)assets progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (VCPEffectsAssetProcessingTask)initWithAssets:(id)assets progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)main;
- (int)persistResults:(id)results forAsset:(id)asset;
- (int)processAsset:(id)asset;
- (int)run;
- (void)dealloc;
@end

@implementation VCPEffectsAssetProcessingTask

- (VCPEffectsAssetProcessingTask)initWithAssets:(id)assets progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetsCopy = assets;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if ([assetsCopy count])
  {
    v26.receiver = self;
    v26.super_class = VCPEffectsAssetProcessingTask;
    v12 = [(VCPEffectsAssetProcessingTask *)&v26 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_assets, assets);
      v14 = objc_retainBlock(handlerCopy);
      progressHandler = v13->_progressHandler;
      v13->_progressHandler = v14;

      if (completionHandlerCopy)
      {
        v16 = completionHandlerCopy;
      }

      else
      {
        v16 = &stru_100285EF0;
      }

      v17 = objc_retainBlock(v16);
      completionHandler = v13->_completionHandler;
      v13->_completionHandler = v17;

      v19 = [(NSArray *)v13->_assets objectAtIndexedSubscript:0];
      photoLibrary = [v19 photoLibrary];
      photoLibrary = v13->_photoLibrary;
      v13->_photoLibrary = photoLibrary;

      v22 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v13->_photoLibrary];
      database = v13->_database;
      v13->_database = v22;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)taskWithAssets:(id)assets progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetsCopy = assets;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v10 = [objc_alloc(objc_opt_class()) initWithAssets:assetsCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v10;
}

- (int)persistResults:(id)results forAsset:(id)asset
{
  resultsCopy = results;
  assetCopy = asset;
  vcp_recipe = [resultsCopy vcp_recipe];
  if (vcp_recipe)
  {
    variationCache = [(PHPhotoLibrary *)self->_photoLibrary variationCache];
    vcp_recipe2 = [resultsCopy vcp_recipe];
    localIdentifier = [assetCopy localIdentifier];
    [variationCache saveAnalysisResult:vcp_recipe2 assetIdentifier:localIdentifier];

    vcp_gatingDescriptions = [resultsCopy vcp_gatingDescriptions];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E0EFC;
    v30[3] = &unk_100285F18;
    v13 = variationCache;
    v31 = v13;
    v14 = assetCopy;
    v32 = v14;
    [vcp_gatingDescriptions enumerateKeysAndObjectsUsingBlock:v30];

    if ([resultsCopy vcp_longExposureSugestionState] == 1)
    {
      vcp_matchingScenes = [resultsCopy vcp_matchingScenes];
      v16 = vcp_matchingScenes;
      if (vcp_matchingScenes)
      {
        v35 = @"Matching scenes";
        v36 = vcp_matchingScenes;
        v17 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        localIdentifier2 = [v14 localIdentifier];
        [v13 saveGatingResult:v17 forVariationType:3 assetIdentifier:localIdentifier2];
      }
    }

    photoLibrary = self->_photoLibrary;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000E1018;
    v27[3] = &unk_100282BC8;
    v28 = v14;
    v29 = resultsCopy;
    v26 = 0;
    [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v27 error:&v26];
    v20 = v26;
    v21 = [v13 analysisResultForAssetIdentifier:@"invalid"];
    if (v20)
    {
      code = [v20 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v23 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          v24 = [v20 description];
          *buf = 138412290;
          v34 = v24;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "Failed to persist effects suggestions (%@)", buf, 0xCu);
        }
      }
    }

    else
    {
      code = 0;
    }
  }

  else
  {
    code = -18;
  }

  return code;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v5 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:0];
    completionHandler[2](completionHandler, 0, v5);
  }

  v6.receiver = self;
  v6.super_class = VCPEffectsAssetProcessingTask;
  [(VCPEffectsAssetProcessingTask *)&v6 dealloc];
}

- (int)processAsset:(id)asset
{
  assetCopy = asset;
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    mad_fetchRequest = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
    localIdentifier = [assetCopy localIdentifier];
    v7 = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0];
  }

  else
  {
    database = self->_database;
    mad_fetchRequest = [assetCopy localIdentifier];
    v29 = 0;
    [(VCPDatabaseWriter *)database analysisForAsset:mad_fetchRequest analysis:&v29];
    v7 = v29;
  }

  vcp_effectsResult = [v7 vcp_effectsResult];
  vcp_version = [v7 vcp_version];
  if (vcp_version == MediaAnalysisVersion && ([vcp_effectsResult vcp_isValidEffectsResult] & 1) != 0)
  {
    goto LABEL_20;
  }

  v25 = assetCopy;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&off_1002961E8];
  v12 = [PHFace fetchFacesInAsset:assetCopy options:librarySpecificFetchOptions];
  if ([v12 count])
  {
    v13 = 1;
  }

  else if (([v7 vcp_types] & 0xC) != 0)
  {
    vcp_results = [v7 vcp_results];
    v15 = [vcp_results objectForKeyedSubscript:MediaAnalysisFaceResultsKey];
    v13 = v15 != 0;
  }

  else
  {
    v13 = 0;
  }

  v28 = 0;
  v16 = [[VCPEffectsAnalyzer alloc] initWithFlagHasFaceOrPet:v13];
  v17 = [VCPPhotosAsset assetWithPHAsset:assetCopy];
  v26 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000E1578;
  v27[3] = &unk_100283000;
  v27[4] = self;
  v18 = [v16 analyzeAsset:v17 onDemand:1 cancel:v27 statsFlags:&v28 results:&v26];
  v19 = v26;

  if (!v18)
  {
    v24 = v12;
    v20 = [v19 objectForKeyedSubscript:MediaAnalysisLivePhotoEffectsResultsKey];
    v21 = [v20 objectAtIndexedSubscript:0];
    v22 = [v21 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

    vcp_effectsResult = v22;
    v12 = v24;
  }

  assetCopy = v25;
  if (!v18)
  {
LABEL_20:
    if ([vcp_effectsResult vcp_isValidEffectsResult])
    {
      v18 = [(VCPEffectsAssetProcessingTask *)self persistResults:vcp_effectsResult forAsset:assetCopy];
    }

    else
    {
      v18 = -18;
    }
  }

  return v18;
}

- (int)main
{
  if (![(NSArray *)self->_assets count])
  {
    return -50;
  }

  if (self->_progressHandler)
  {
    v3 = [VCPProgressReporter reporterWithIntervalSeconds:1 andTotalJobCount:[(NSArray *)self->_assets count] andBlock:self->_progressHandler];
  }

  else
  {
    v3 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_assets;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v8 = *v17;
    v9 = VCPLogToOSLogType[4];
    *&v7 = 138412290;
    v15 = v7;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = atomic_load(&self->_cancel);
        if (v12)
        {
          v4 = -128;
          goto LABEL_20;
        }

        if ([(VCPEffectsAssetProcessingTask *)self processAsset:*(*(&v16 + 1) + 8 * i)]&& MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v9))
        {
          localIdentifier = [v11 localIdentifier];
          *buf = v15;
          v21 = localIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[%@] Live Photo Effects processing failed for asset", buf, 0xCu);
        }

        [v3 increaseProcessedJobCountByOne];
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v4 = 0;
LABEL_20:

  return v4;
}

- (int)run
{
  atomic_store(1u, &self->_started);
  main = [(VCPEffectsAssetProcessingTask *)self main];
  if (main)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v4 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Effects asset processing failed", v9, 2u);
      }
    }

    v10 = NSLocalizedDescriptionKey;
    v11 = @"Effects asset processing failed";
    v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    completionHandler = self->_completionHandler;
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:main userInfo:v5];
    completionHandler[2](completionHandler, 0, v7);
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }

  return main;
}

@end