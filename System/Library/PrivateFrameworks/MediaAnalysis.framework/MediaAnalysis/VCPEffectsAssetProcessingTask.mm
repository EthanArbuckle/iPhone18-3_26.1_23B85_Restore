@interface VCPEffectsAssetProcessingTask
+ (id)taskWithAssets:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5;
- (VCPEffectsAssetProcessingTask)initWithAssets:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5;
- (int)main;
- (int)persistResults:(id)a3 forAsset:(id)a4;
- (int)processAsset:(id)a3;
- (int)run;
- (void)dealloc;
@end

@implementation VCPEffectsAssetProcessingTask

- (VCPEffectsAssetProcessingTask)initWithAssets:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count])
  {
    v26.receiver = self;
    v26.super_class = VCPEffectsAssetProcessingTask;
    v12 = [(VCPEffectsAssetProcessingTask *)&v26 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_assets, a3);
      v14 = objc_retainBlock(v10);
      progressHandler = v13->_progressHandler;
      v13->_progressHandler = v14;

      if (v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = &stru_100285EF0;
      }

      v17 = objc_retainBlock(v16);
      completionHandler = v13->_completionHandler;
      v13->_completionHandler = v17;

      v19 = [(NSArray *)v13->_assets objectAtIndexedSubscript:0];
      v20 = [v19 photoLibrary];
      photoLibrary = v13->_photoLibrary;
      v13->_photoLibrary = v20;

      v22 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:v13->_photoLibrary];
      database = v13->_database;
      v13->_database = v22;
    }

    self = v13;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

+ (id)taskWithAssets:(id)a3 progressHandler:(id)a4 andCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(objc_opt_class()) initWithAssets:v7 progressHandler:v8 andCompletionHandler:v9];

  return v10;
}

- (int)persistResults:(id)a3 forAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 vcp_recipe];
  if (v8)
  {
    v9 = [(PHPhotoLibrary *)self->_photoLibrary variationCache];
    v10 = [v6 vcp_recipe];
    v11 = [v7 localIdentifier];
    [v9 saveAnalysisResult:v10 assetIdentifier:v11];

    v12 = [v6 vcp_gatingDescriptions];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E0EFC;
    v30[3] = &unk_100285F18;
    v13 = v9;
    v31 = v13;
    v14 = v7;
    v32 = v14;
    [v12 enumerateKeysAndObjectsUsingBlock:v30];

    if ([v6 vcp_longExposureSugestionState] == 1)
    {
      v15 = [v6 vcp_matchingScenes];
      v16 = v15;
      if (v15)
      {
        v35 = @"Matching scenes";
        v36 = v15;
        v17 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v18 = [v14 localIdentifier];
        [v13 saveGatingResult:v17 forVariationType:3 assetIdentifier:v18];
      }
    }

    photoLibrary = self->_photoLibrary;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000E1018;
    v27[3] = &unk_100282BC8;
    v28 = v14;
    v29 = v6;
    v26 = 0;
    [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v27 error:&v26];
    v20 = v26;
    v21 = [v13 analysisResultForAssetIdentifier:@"invalid"];
    if (v20)
    {
      v22 = [v20 code];
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
      v22 = 0;
    }
  }

  else
  {
    v22 = -18;
  }

  return v22;
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

- (int)processAsset:(id)a3
{
  v4 = a3;
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    v5 = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
    v6 = [v4 localIdentifier];
    v7 = [v5 fetchAnalysisWithLocalIdentifier:v6 predicate:0];
  }

  else
  {
    database = self->_database;
    v5 = [v4 localIdentifier];
    v29 = 0;
    [(VCPDatabaseWriter *)database analysisForAsset:v5 analysis:&v29];
    v7 = v29;
  }

  v9 = [v7 vcp_effectsResult];
  v10 = [v7 vcp_version];
  if (v10 == MediaAnalysisVersion && ([v9 vcp_isValidEffectsResult] & 1) != 0)
  {
    goto LABEL_20;
  }

  v25 = v4;
  v11 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [v11 setIncludedDetectionTypes:&off_1002961E8];
  v12 = [PHFace fetchFacesInAsset:v4 options:v11];
  if ([v12 count])
  {
    v13 = 1;
  }

  else if (([v7 vcp_types] & 0xC) != 0)
  {
    v14 = [v7 vcp_results];
    v15 = [v14 objectForKeyedSubscript:MediaAnalysisFaceResultsKey];
    v13 = v15 != 0;
  }

  else
  {
    v13 = 0;
  }

  v28 = 0;
  v16 = [[VCPEffectsAnalyzer alloc] initWithFlagHasFaceOrPet:v13];
  v17 = [VCPPhotosAsset assetWithPHAsset:v4];
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

    v9 = v22;
    v12 = v24;
  }

  v4 = v25;
  if (!v18)
  {
LABEL_20:
    if ([v9 vcp_isValidEffectsResult])
    {
      v18 = [(VCPEffectsAssetProcessingTask *)self persistResults:v9 forAsset:v4];
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
          v13 = [v11 localIdentifier];
          *buf = v15;
          v21 = v13;
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
  v3 = [(VCPEffectsAssetProcessingTask *)self main];
  if (v3)
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
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v3 userInfo:v5];
    completionHandler[2](completionHandler, 0, v7);
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }

  return v3;
}

@end