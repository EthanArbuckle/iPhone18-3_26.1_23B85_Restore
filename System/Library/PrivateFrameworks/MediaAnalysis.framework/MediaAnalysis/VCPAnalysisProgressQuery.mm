@interface VCPAnalysisProgressQuery
+ (id)_processedPredicateForTaskID:(unint64_t)d;
+ (int)_queryProgressDetailExpress:(id *)express photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block;
+ (int)_scanPhotoLibrary:(id)library taskID:(unint64_t)d statistics:(id *)statistics cancelOrExtendTimeoutBlock:(id)block;
+ (int)queryAnalysisProgress:(float *)progress photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block;
+ (int)queryCachedFaceAnalysisProgress:(id *)progress photoLibrary:(id)library;
+ (int)queryProgressDetail:(id *)detail photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block;
+ (int)queryVideoCountAndDurationBreakdown:(id)breakdown photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block;
+ (unint64_t)_countAnalysisWithAssetBatch:(id)batch taskID:(unint64_t)d;
+ (unint64_t)_countFaceAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countFailuresWithAssetBatch:(id)batch database:(id)database taskID:(unint64_t)d;
+ (unint64_t)_countFailuresWithAssetBatch:(id)batch fetchRequest:(id)request taskID:(unint64_t)d;
+ (unint64_t)_countFullImageAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countOCRAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countPECAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countSceneAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countVisualSearchAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_vipStatusForPhotoLibrary:(id)library type:(unint64_t)type;
+ (unint64_t)countAllAssetsForTaskID:(unint64_t)d photoLibrary:(id)library error:(id *)error;
+ (unint64_t)countProcessedAssetsForTaskID:(unint64_t)d photoLibrary:(id)library error:(id *)error;
+ (void)_countMediaAnalysisWithAssetBatch:(id)batch database:(id)database analyzedCount:(unint64_t *)count completeAnalyzedCount:(unint64_t *)analyzedCount partialAnalyzedCount:(unint64_t *)partialAnalyzedCount;
@end

@implementation VCPAnalysisProgressQuery

+ (unint64_t)countAllAssetsForTaskID:(unint64_t)d photoLibrary:(id)library error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  [MEMORY[0x1E6978628] mad_sceneConfidenceThresholdForTask:d];
  v9 = v8;
  v10 = PHMediaProcessingTaskIDForVCPTaskID(d);
  v16 = 0;
  *&v11 = v9;
  v12 = [libraryCopy countOfAllAssetsForMediaProcessingTaskID:v10 priority:0 sceneConfidenceThreshold:&v16 error:v11];
  v13 = v16;
  if (v13)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = VCPTaskIDDescription(d);
      *buf = 138412802;
      v18 = v14;
      v19 = 2048;
      v20 = v9;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to query total asset count - scene threshold %.2f - %@", buf, 0x20u);
    }

    v12 = 0;
    if (error)
    {
      *error = [v13 copy];
    }
  }

  return v12;
}

+ (unint64_t)countProcessedAssetsForTaskID:(unint64_t)d photoLibrary:(id)library error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v8 = [MEMORY[0x1E69788E8] mad_sharedVersionProviderWithPhotoLibrary:libraryCopy];
  [MEMORY[0x1E6978628] mad_sceneConfidenceThresholdForTask:d];
  v10 = v9;
  v11 = PHMediaProcessingTaskIDForVCPTaskID(d);
  v17 = 0;
  LODWORD(v12) = v10;
  v13 = [libraryCopy countOfProcessedAssetsForMediaProcessingTaskID:v11 priority:0 algorithmVersion:v8 sceneConfidenceThreshold:&v17 error:v12];
  v14 = v17;
  if (d == 16)
  {
    v13 -= [libraryCopy vcp_pecFailureVersionAssetCountWithPriority:0];
  }

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = VCPTaskIDDescription(d);
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to fetch processed assets - %@", buf, 0x16u);
    }

    v13 = 0;
    if (error)
    {
      *error = [v14 copy];
    }
  }

  return v13;
}

+ (void)_countMediaAnalysisWithAssetBatch:(id)batch database:(id)database analyzedCount:(unint64_t *)count completeAnalyzedCount:(unint64_t *)analyzedCount partialAnalyzedCount:(unint64_t *)partialAnalyzedCount
{
  v53 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  databaseCopy = database;
  array = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = batchCopy;
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v10)
  {
    v11 = *v48;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v9);
        }

        localIdentifier = [*(*(&v47 + 1) + 8 * i) localIdentifier];
        [array addObject:localIdentifier];
      }

      v10 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v10);
  }

  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    firstObject = [v9 firstObject];
    photoLibrary = [firstObject photoLibrary];

    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v41 = [mad_fetchRequest fetchAnalysesWithLocalIdentifiers:array predicate:0];
  }

  else
  {
    v41 = [databaseCopy queryAnalysisPropertiesForAssets:array];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v9;
  v17 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v17)
  {
    v37 = 0;
    v38 = 0;
    v18 = 0;
    v40 = *v44;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v44 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v43 + 1) + 8 * j);
        v21 = objc_autoreleasePoolPush();
        localIdentifier2 = [v20 localIdentifier];
        v23 = [v41 objectForKeyedSubscript:localIdentifier2];

        v24 = [v20 vcp_needsFullAnalysisProcessing:0];
        if (v23)
        {
          vcp_dateModified = [v23 vcp_dateModified];
          vcp_modificationDate = [v20 vcp_modificationDate];
          if ([vcp_dateModified isEqualToDate:vcp_modificationDate])
          {
            v27 = [v23 vcp_version] == 75;

            if (v27)
            {
              vcp_fullAnalysisTypes = [v20 vcp_fullAnalysisTypes];
              v29 = [v23 vcp_types] & vcp_fullAnalysisTypes & 0xFFFFFFFFFFEFFFFFLL;
              v30 = v29 == (vcp_fullAnalysisTypes & 0xFFFFFFFFFFEFFFFFLL);
              if (v29 == (vcp_fullAnalysisTypes & 0xFFFFFFFFFFEFFFFFLL))
              {
                v31 = v38;
              }

              else
              {
                v31 = v38 + 1;
              }

              v32 = v37;
              if (v30)
              {
                v32 = v37 + 1;
              }

              v37 = v32;
              v38 = v31;
            }
          }

          else
          {
          }
        }

        objc_autoreleasePoolPop(v21);
        v18 += v24 ^ 1u;
      }

      v17 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v17);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v18 = 0;
  }

  *count = v18;
  *analyzedCount = v37;
  *partialAnalyzedCount = v38;
}

+ (unint64_t)_countFaceAnalysisWithAssetBatch:(id)batch
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        faceAdjustmentVersion = [v8 faceAdjustmentVersion];
        adjustmentVersion = [v8 adjustmentVersion];
        v11 = [faceAdjustmentVersion isEqualToDate:adjustmentVersion];

        v4 += v11;
      }

      v5 = [batchCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countSceneAnalysisWithAssetBatch:(id)batch
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) vcp_needSceneProcessing] ^ 1;
      }

      while (v5 != v7);
      v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countOCRAnalysisWithAssetBatch:(id)batch
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) vcp_needsOCRProcessing] ^ 1;
      }

      while (v5 != v7);
      v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countVisualSearchAnalysisWithAssetBatch:(id)batch
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 vcp_needsVisualSearchProcessing] & 1) == 0)
        {
          v4 += [v8 vcp_needsStickerGatingProcessing] ^ 1;
        }
      }

      v5 = [batchCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countPECAnalysisWithAssetBatch:(id)batch
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) vcp_needsPECProcessing] ^ 1;
      }

      while (v5 != v7);
      v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countFullImageAnalysisWithAssetBatch:(id)batch
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) vcp_needsFullAnalysisProcessing:{0, v9}] ^ 1;
      }

      while (v5 != v7);
      v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countAnalysisWithAssetBatch:(id)batch taskID:(unint64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  if (d > 11)
  {
    switch(d)
    {
      case 0xCuLL:
        v7 = [self _countVisualSearchAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
      case 0x10uLL:
        v7 = [self _countPECAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
      case 0xFFuLL:
        v7 = [self _countFullImageAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
    }
  }

  else
  {
    switch(d)
    {
      case 2uLL:
        v7 = [self _countSceneAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
      case 3uLL:
        v7 = [self _countFaceAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
      case 0xAuLL:
        v7 = [self _countOCRAnalysisWithAssetBatch:batchCopy];
LABEL_18:
        v8 = v7;
        goto LABEL_19;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupport taskID %lu", &v10, 0xCu);
  }

  v8 = 0;
LABEL_19:

  return v8;
}

+ (unint64_t)_countFailuresWithAssetBatch:(id)batch database:(id)database taskID:(unint64_t)d
{
  v15 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  databaseCopy = database;
  v9 = databaseCopy;
  if (d <= 0x10 && ((1 << d) & 0x1140E) != 0 || d == 255)
  {
    v10 = [databaseCopy queryFailedProcessingStatusFromAssets:batchCopy forTaskID:d];
    v11 = [v10 count];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      dCopy = d;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupport taskID %lu", &v13, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (unint64_t)_countFailuresWithAssetBatch:(id)batch fetchRequest:(id)request taskID:(unint64_t)d
{
  v24 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  requestCopy = request;
  if (d <= 0x10 && ((1 << d) & 0x1140E) != 0 || d == 255)
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = batchCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          localIdentifier = [*(*(&v17 + 1) + 8 * v13) localIdentifier];
          [array addObject:localIdentifier];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }

    LODWORD(v15) = [requestCopy fetchAssetCountFromLocalIdentifiers:array taskID:d excludingStatuses:&unk_1F49BEA10];
    v15 = v15;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      dCopy = d;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupport taskID %lu", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

+ (unint64_t)_vipStatusForPhotoLibrary:(id)library type:(unint64_t)type
{
  libraryCopy = library;
  v6 = [libraryCopy vcp_vipModelLastGenerationDateForVIPType:type];
  v7 = [MEMORY[0x1E695DF00] now];
  [v7 timeIntervalSinceDate:v6];
  v9 = v8;

  v10 = [libraryCopy vcp_vipModelFilepathForVIPType:type];
  v11 = [VCPFaceIDModel loadVIPModelAtPath:v10 withVIPType:type error:0];

  v12 = 2;
  if (v9 >= 0x15180uLL)
  {
    v12 = 1;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (int)_scanPhotoLibrary:(id)library taskID:(unint64_t)d statistics:(id *)statistics cancelOrExtendTimeoutBlock:(id)block
{
  v79 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  blockCopy = block;
  if (!statistics)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: output parameter statistics must be non-nil", buf, 2u);
    }

    v11 = -50;
    goto LABEL_58;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    statisticsCopy = statistics;
    v10 = VCPTaskIDDescription(d);
    *buf = 134218242;
    *&buf[4] = d;
    v77 = 2112;
    v78 = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Query progress: scan library for %lu - %@", buf, 0x16u);

    statistics = statisticsCopy;
  }

  v63 = [VCPDatabaseReader databaseForPhotoLibrary:libraryCopy];
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
  }

  else
  {
    mad_fetchRequest = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v58 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:libraryCopy forTaskID:d];
  v13 = mach_absolute_time();
  statisticsCopy2 = statistics;
  v14 = VCPSignPostLog();
  v15 = os_signpost_id_generate(v14);

  v16 = VCPSignPostLog();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VCPAnalysisProgressQueryScanPhotoLibraryFetch", "", buf, 2u);
  }

  v18 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:v58];
  v19 = VCPSignPostLog();
  v20 = v19;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v15, "VCPAnalysisProgressQueryScanPhotoLibraryFetch", "", buf, 2u);
  }

  if (v13)
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  v61 = 0;
  v62 = 0;
  v21 = 0;
  v64 = 0;
  v65 = 0;
  v22 = 0;
  while (v21 < [v18 count])
  {
    v23 = objc_autoreleasePoolPush();
    v24 = [v18 objectAtIndexedSubscript:v21];
    [array addObject:v24];

    if ([array count] >= 0x3E8)
    {
      if (blockCopy && blockCopy[2]())
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v25 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, v25, OS_LOG_TYPE_DEFAULT, "Cancelled during _scanPhotoLibrary", buf, 2u);
          }
        }

        v26 = 0;
        goto LABEL_37;
      }

      v27 = [array count];
      if (+[MADManagedProcessingStatus isMACDReadEnabled])
      {
        v28 = [self _countFailuresWithAssetBatch:array fetchRequest:mad_fetchRequest taskID:d];
      }

      else
      {
        v28 = [self _countFailuresWithAssetBatch:array database:v63 taskID:d];
      }

      v29 = v28;
      if (d == 1)
      {
        *buf = 0;
        v68 = 0;
        v69 = 0;
        [self _countMediaAnalysisWithAssetBatch:array database:v63 analyzedCount:buf completeAnalyzedCount:&v69 partialAnalyzedCount:&v68];
        v30 = *buf;
        v61 += v69;
        v62 += v68;
      }

      else
      {
        v30 = [self _countAnalysisWithAssetBatch:array taskID:d];
      }

      [array removeAllObjects];
      v65 += v27;
      v22 += v29;
      v64 += v30;
    }

    v26 = 1;
LABEL_37:
    objc_autoreleasePoolPop(v23);
    ++v21;
    if ((v26 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if ([array count])
  {
    if (blockCopy && blockCopy[2]())
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Cancelled during _scanPhotoLibrary", buf, 2u);
      }

LABEL_38:
      v11 = -128;
      goto LABEL_57;
    }

    v31 = [array count];
    if (mad_fetchRequest)
    {
      v32 = [self _countFailuresWithAssetBatch:array fetchRequest:mad_fetchRequest taskID:d];
    }

    else
    {
      v32 = [self _countFailuresWithAssetBatch:array database:v63 taskID:d];
    }

    v65 += v31;
    v22 += v32;
    if (d == 1)
    {
      *buf = 0;
      v68 = 0;
      v69 = 0;
      [self _countMediaAnalysisWithAssetBatch:array database:v63 analyzedCount:buf completeAnalyzedCount:&v69 partialAnalyzedCount:&v68];
      v64 += *buf;
      v61 += v69;
      v62 += v68;
    }

    else
    {
      v64 += [self _countAnalysisWithAssetBatch:array taskID:d];
    }
  }

  v33 = MEMORY[0x1E695DF90];
  v74[0] = @"failed";
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
  v75[0] = v34;
  v74[1] = @"processed";
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v64];
  v75[1] = v35;
  v74[2] = @"total-allowed";
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v65];
  v75[2] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:3];
  type = [v33 dictionaryWithDictionary:v37];

  if (d == 1)
  {
    v41 = [libraryCopy countOfAllAssetsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) priority:2 sceneConfidenceThreshold:0 error:0.0];
    v42 = PHMediaProcessingTaskIDForVCPTaskID(1);
    v43 = [MEMORY[0x1E69788E8] mad_sharedVersionProviderWithPhotoLibrary:libraryCopy];
    v44 = [libraryCopy countOfProcessedAssetsForMediaProcessingTaskID:v42 priority:2 algorithmVersion:v43 sceneConfidenceThreshold:0 error:0.0];

    v45 = [libraryCopy countOfAllAssetsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) priority:4 sceneConfidenceThreshold:0 error:0.0];
    v46 = PHMediaProcessingTaskIDForVCPTaskID(1);
    v47 = [MEMORY[0x1E69788E8] mad_sharedVersionProviderWithPhotoLibrary:libraryCopy];
    v48 = [libraryCopy countOfProcessedAssetsForMediaProcessingTaskID:v46 priority:4 algorithmVersion:v47 sceneConfidenceThreshold:0 error:0.0];

    v70[0] = @"FullAnalysisCompleteProcessed";
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v61];
    v71[0] = v38;
    v70[1] = @"FullAnalysisPartialProcessed";
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v62];
    v71[1] = v39;
    v70[2] = @"FullAnalysisStillImageProcessed";
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v64 - (v44 + v48)];
    v71[2] = v40;
    v70[3] = @"FullAnalysisStillImageCount";
    v49 = v41;
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v65 - (v41 + v45)];
    v71[3] = v50;
    v70[4] = @"FullAnalysisLivePhotoProcessed";
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v44];
    v71[4] = v51;
    v70[5] = @"FullAnalysisLivePhotoCount";
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v49];
    v71[5] = v52;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:6];
    [type addEntriesFromDictionary:v53];

LABEL_55:
  }

  else if (d == 3)
  {
    v72[0] = @"pet-vip-status";
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_vipStatusForPhotoLibrary:type:", libraryCopy, 1)}];
    v73[0] = v38;
    v72[1] = @"person-vip-status";
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_vipStatusForPhotoLibrary:type:", libraryCopy, 0)}];
    v73[1] = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
    [type addEntriesFromDictionary:v40];
    goto LABEL_55;
  }

  v54 = type;
  *statisticsCopy2 = type;

  v11 = 0;
LABEL_57:

LABEL_58:
  return v11;
}

+ (id)_processedPredicateForTaskID:(unint64_t)d
{
  if (d > 11)
  {
    if (d == 12)
    {
      v4 = MEMORY[0x1E696AE18];
      v10 = VCPPhotosVisualSearchAlgorithmVersion();
      v11 = 1;
      v6 = @"mediaAnalysisAttributes.visualSearchAttributes.algorithmVersion >= %d && mediaAnalysisAttributes.visualSearchAttributes.stickerConfidenceAlgorithmVersion >= %d";
LABEL_13:
      v7 = v4;
      goto LABEL_14;
    }

    if (d == 16)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaAnalysisAttributes.vaAnalysisVersion >= %d", 5, v11, v12];
      goto LABEL_15;
    }

LABEL_8:
    v3 = +[VCPVideoCNNAnalyzer isMUBackboneEnabled];
    v4 = MEMORY[0x1E696AE18];
    v5 = VCPPhotosSceneProcessingVersionInternal();
    if (v3)
    {
      v11 = *MEMORY[0x1E69C0C30];
      v12 = 75;
      v10 = v5;
      v6 = @"additionalAttributes.sceneAnalysisVersion  >= %d &&  additionalAttributes.sceneAnalysisVersion  != %d &&  mediaAnalysisAttributes.imageEmbeddingVersion >= %d ";
    }

    else
    {
      v10 = v5;
      v11 = *MEMORY[0x1E69C0C30];
      v6 = @"additionalAttributes.sceneAnalysisVersion  >= %d &&  additionalAttributes.sceneAnalysisVersion  != %d ";
    }

    goto LABEL_13;
  }

  if (d != 3)
  {
    if (d == 10)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaAnalysisAttributes.characterRecognitionAttributes.algorithmVersion >= %d", 8, v11, v12];
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v7 = MEMORY[0x1E696AE18];
  v6 = @"faceAdjustmentVersion != nil";
LABEL_14:
  [v7 predicateWithFormat:v6, v10, v11, v12];
  v8 = LABEL_15:;

  return v8;
}

+ (int)_queryProgressDetailExpress:(id *)express photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block
{
  v104[6] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  blockCopy = block;
  if (d <= 0x10)
  {
    if (((1 << d) & 0x1140C) != 0)
    {
      goto LABEL_3;
    }

    if (d == 1)
    {
      v84 = 0;
      v85 = 0;
      goto LABEL_21;
    }
  }

  if (d == 255)
  {
LABEL_3:
    v8 = mach_absolute_time();
    v9 = VCPSignPostLog();
    v10 = os_signpost_id_generate(v9);

    v11 = VCPSignPostLog();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VCPAnalysisProgressQueryExpressPathFetchTotalCount", "", buf, 2u);
    }

    v85 = [libraryCopy vcp_assetCountForTaskID:d];
    v13 = VCPSignPostLog();
    v14 = v13;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_END, v10, "VCPAnalysisProgressQueryExpressPathFetchTotalCount", "", buf, 2u);
    }

    if (v8)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

    v15 = mach_absolute_time();
    v16 = VCPSignPostLog();
    v17 = os_signpost_id_generate(v16);

    v18 = VCPSignPostLog();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VCPAnalysisProgressQueryExpressPathFetchProcessedCount", "", buf, 2u);
    }

    v84 = [libraryCopy vcp_processedAssetCountForTaskID:d];
    v20 = VCPSignPostLog();
    v21 = v20;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v17, "VCPAnalysisProgressQueryExpressPathFetchProcessedCount", "", buf, 2u);
    }

    if (v15)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }

LABEL_21:
    v88 = [VCPDatabaseReader databaseForPhotoLibrary:libraryCopy];
    if (+[MADManagedProcessingStatus isMACDReadEnabled](MADManagedProcessingStatus, "isMACDReadEnabled") || +[MADManagedKeyValueStore isMACDReadEnabled])
    {
      mad_fetchRequest = [libraryCopy mad_fetchRequest];
    }

    else
    {
      mad_fetchRequest = 0;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (d == 1)
    {
      LOWORD(v77) = 0;
      v82 = [objc_alloc(MEMORY[0x1E69788E8]) initWithSceneAnalysisVersion:0 faceAnalysisVersion:0 characterRecognitionAlgorithmVersion:0 visualSearchAlgorithmVersion:0 stickerConfidenceAlgorithmVersion:0 vaAnalysisVersion:0 vaLocationAnalysisVersion:v77 mediaAnalysisVersion:0 mediaAnalysisImageVersion:0 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
      v92 = 0;
      v24 = [libraryCopy countOfAssetsByMediaTypeForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) processed:1 algorithmVersion:v82 exactVersionMatch:0 error:&v92];
      v80 = v92;
      if (v24)
      {
        v25 = [v24 objectForKeyedSubscript:*MEMORY[0x1E6978EC8]];
        unsignedLongLongValue = [v25 unsignedLongLongValue];

        v27 = [v24 objectForKeyedSubscript:*MEMORY[0x1E6978EC0]];
        unsignedLongLongValue2 = [v27 unsignedLongLongValue];

        v29 = [v24 objectForKeyedSubscript:*MEMORY[0x1E6978ED0]];
        unsignedLongLongValue3 = [v29 unsignedLongLongValue];

        v101[0] = @"FullAnalysisStillImageCount";
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue];
        v102[0] = v31;
        v101[1] = @"FullAnalysisLivePhotoCount";
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue2];
        v102[1] = v32;
        v101[2] = @"FullAnalysisVideoCount";
        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue3];
        v102[2] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:3];
        [dictionary addEntriesFromDictionary:v34];

        v85 = unsignedLongLongValue2 + unsignedLongLongValue + unsignedLongLongValue3;
      }

      else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v42 = [v80 description];
        *buf = 138412546;
        dCopy = v41;
        v99 = 2112;
        v100 = v42;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Failed to get total assets breakdown count from Photos (%@)", buf, 0x16u);
      }

      v43 = objc_alloc(MEMORY[0x1E69788E8]);
      v44 = VCPPhotosSceneProcessingVersionInternal();
      LOWORD(v78) = VCPPhotosPECProcessingVersion;
      v45 = [v43 initWithSceneAnalysisVersion:v44 faceAnalysisVersion:objc_msgSend(libraryCopy characterRecognitionAlgorithmVersion:"mad_faceProcessingInternalVersion") visualSearchAlgorithmVersion:8 stickerConfidenceAlgorithmVersion:VCPPhotosVisualSearchAlgorithmVersion() vaAnalysisVersion:1 vaLocationAnalysisVersion:v78 mediaAnalysisVersion:75 mediaAnalysisImageVersion:75 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];

      v91 = v80;
      v46 = [libraryCopy countOfAssetsByMediaTypeForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) processed:1 algorithmVersion:v45 exactVersionMatch:0 error:&v91];
      v79 = v91;

      if (v46)
      {
        v47 = [v46 objectForKeyedSubscript:*MEMORY[0x1E6978EC8]];
        unsignedLongLongValue4 = [v47 unsignedLongLongValue];

        v49 = [v46 objectForKeyedSubscript:*MEMORY[0x1E6978EC0]];
        unsignedLongLongValue5 = [v49 unsignedLongLongValue];

        v51 = [v46 objectForKeyedSubscript:*MEMORY[0x1E6978ED0]];
        unsignedLongLongValue6 = [v51 unsignedLongLongValue];

        v95[0] = @"FullAnalysisStillImageProcessed";
        v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue4];
        v96[0] = v53;
        v95[1] = @"FullAnalysisLivePhotoProcessed";
        v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue5];
        v96[1] = v54;
        v95[2] = @"FullAnalysisVideoProcessed";
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue6];
        v96[2] = v55;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:3];
        [dictionary addEntriesFromDictionary:v56];

        v84 = unsignedLongLongValue5 + unsignedLongLongValue4 + unsignedLongLongValue6;
      }

      else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v57 = objc_opt_class();
        v58 = [v79 description];
        *buf = 138412546;
        dCopy = v57;
        v99 = 2112;
        v100 = v58;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Failed to get processed assets breakdown count from Photos (%@)", buf, 0x16u);
      }
    }

    else
    {
      if (d != 3)
      {
LABEL_59:
        if (+[MADManagedProcessingStatus isMACDReadEnabled])
        {
          v63 = [mad_fetchRequest fetchAssetCountForTaskID:d status:2];
          v64 = [mad_fetchRequest fetchAssetCountForTaskID:d status:7];
          v65 = [mad_fetchRequest fetchAssetCountForTaskID:d status:3];
          v66 = [mad_fetchRequest fetchAssetCountForTaskID:d status:4];
          v67 = [mad_fetchRequest fetchAssetCountForTaskID:d minimumAttempts:2];
        }

        else
        {
          v63 = [v88 countForTaskID:d withProcessingStatus:2];
          v64 = [v88 countForTaskID:d withProcessingStatus:7];
          v65 = [v88 countForTaskID:d withProcessingStatus:3];
          v66 = [v88 countForTaskID:d withProcessingStatus:4];
          v67 = [v88 countForTaskID:d minimumAttempts:2];
        }

        if (v64 + v63 + v65 + v66 >= (v85 - v84))
        {
          v68 = v85 - v84;
        }

        else
        {
          v68 = v64 + v63 + v65 + v66;
        }

        if (v67 >= v68)
        {
          v69 = v68;
        }

        else
        {
          v69 = v67;
        }

        v93[0] = @"sticky-failed";
        v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v69];
        v94[0] = v70;
        v93[1] = @"failed";
        v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v68];
        v94[1] = v71;
        v93[2] = @"processed";
        v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v84];
        v94[2] = v72;
        v93[3] = @"total-allowed";
        v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v85];
        v94[3] = v73;
        v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:4];
        [dictionary addEntriesFromDictionary:v74];

        v75 = dictionary;
        v22 = 0;
        v36 = dictionary;
        *express = dictionary;
        goto LABEL_69;
      }

      if (blockCopy && blockCopy[2]())
      {
        if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 0;
        v23 = MEMORY[0x1E69E9C10];
LABEL_44:
        _os_log_impl(&dword_1C9B70000, v23, OS_LOG_TYPE_DEFAULT, "Cancelled during _queryProgressDetailExpress", buf, 2u);
LABEL_45:
        v22 = -128;
        v36 = dictionary;
LABEL_69:

        goto LABEL_70;
      }

      v35 = [libraryCopy vcp_assetCountForTaskID:3 withPriority:1];
      if (blockCopy && blockCopy[2]())
      {
        if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 0;
        v23 = MEMORY[0x1E69E9C10];
        goto LABEL_44;
      }

      v37 = [libraryCopy vcp_processedAssetCountForTaskID:3 withPriority:1];
      if (+[MADManagedKeyValueStore isMACDReadEnabled])
      {
        mad_fetchRequest2 = [libraryCopy mad_fetchRequest];
        v39 = [mad_fetchRequest2 dataStoreValueForKey:@"NumberOfProcessedAssetsAfterPromoterForPhotosFaceProcessing"];
        v40 = [mad_fetchRequest2 dataStoreValueForKey:@"VCPKeyValueLastPromoterTimestamp"];
      }

      else
      {
        v39 = [v88 valueForKey:@"NumberOfProcessedAssetsAfterPromoterForPhotosFaceProcessing"];
        v40 = [v88 valueForKey:@"VCPKeyValueLastPromoterTimestamp"];
      }

      v103[0] = @"prioritized-processed";
      v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
      v104[0] = v79;
      v103[1] = @"prioritized-total-allowed";
      v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
      v104[1] = v45;
      v103[2] = @"pet-vip-status";
      v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_vipStatusForPhotoLibrary:type:", libraryCopy, 1)}];
      v104[2] = v46;
      v103[3] = @"person-vip-status";
      v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_vipStatusForPhotoLibrary:type:", libraryCopy, 0)}];
      v104[3] = v59;
      v103[4] = @"processed-assets-with-promoter";
      v60 = [MEMORY[0x1E696AD98] numberWithInteger:v39];
      v104[4] = v60;
      v103[5] = @"last-promoter-timestamp";
      v61 = [MEMORY[0x1E696AD98] numberWithLongLong:v40];
      v104[5] = v61;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:6];
      [dictionary addEntriesFromDictionary:v62];
    }

    goto LABEL_59;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupported taskID (%lu)", buf, 0xCu);
  }

  v22 = -50;
LABEL_70:

  return v22;
}

+ (int)queryProgressDetail:(id *)detail photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  blockCopy = block;
  v12 = blockCopy;
  if (blockCopy && (*(blockCopy + 2))(blockCopy))
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v13 = VCPTaskIDDescription(d);
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Cancelled during queryProgressDetail", buf, 0xCu);
    }

    v14 = -128;
  }

  else
  {
    v15 = mach_absolute_time();
    v16 = VCPSignPostLog();
    v17 = os_signpost_id_generate(v16);

    v18 = VCPSignPostLog();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VCPAnalysisProgressQueryProgressDetail", "", buf, 2u);
    }

    if (d <= 0x10 && ((1 << d) & 0x1140E) != 0 || d == 255)
    {
      if ([self _screenProgress])
      {
        v27 = 0;
        v14 = [VCPAnalysisProgressQuery _scanPhotoLibrary:libraryCopy taskID:d statistics:&v27 cancelOrExtendTimeoutBlock:v12];
        v20 = v27;
        v21 = v20;
        if (!v14)
        {
          v22 = v20;
          *detail = v21;
          v23 = VCPSignPostLog();
          v24 = v23;
          if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v17, "VCPAnalysisProgressQueryProgressDetail", "", buf, 2u);
          }

          if (v15)
          {
            mach_absolute_time();
            VCPPerformance_LogMeasurement();
          }
        }
      }

      else
      {
        v14 = [self _queryProgressDetailExpress:detail photoLibrary:libraryCopy taskID:d cancelOrExtendTimeoutBlock:v12];
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = VCPTaskIDDescription(d);
        *buf = 138412290;
        v29 = v25;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupported taskID (%@)", buf, 0xCu);
      }

      v14 = -50;
    }
  }

  return v14;
}

+ (int)queryAnalysisProgress:(float *)progress photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v27 = mach_absolute_time();
  v12 = VCPSignPostLog();
  v13 = os_signpost_id_generate(v12);

  v14 = VCPSignPostLog();
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPAnalysisProgressQueryProgress", "", buf, 2u);
  }

  v29 = 0;
  v16 = [self queryProgressDetail:&v29 photoLibrary:libraryCopy taskID:d cancelOrExtendTimeoutBlock:blockCopy];
  v17 = v29;
  v18 = v17;
  if (!v16)
  {
    v19 = [v17 objectForKeyedSubscript:@"processed"];
    unsignedIntegerValue = [v19 unsignedIntegerValue];

    v21 = [v18 objectForKeyedSubscript:@"total-allowed"];
    unsignedIntegerValue2 = [v21 unsignedIntegerValue];

    if (unsignedIntegerValue2)
    {
      v23 = unsignedIntegerValue / unsignedIntegerValue2;
    }

    else
    {
      v23 = 1.0;
    }

    *progress = v23;
    v24 = VCPSignPostLog();
    v25 = v24;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v13, "VCPAnalysisProgressQueryProgress", "", v28, 2u);
    }

    if (v27)
    {
      mach_absolute_time();
      VCPPerformance_LogMeasurement();
    }
  }

  return v16;
}

+ (int)queryCachedFaceAnalysisProgress:(id *)progress photoLibrary:(id)library
{
  v40 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (progress)
  {
    v30 = mach_absolute_time();
    v6 = VCPSignPostLog();
    v7 = os_signpost_id_generate(v6);

    v8 = VCPSignPostLog();
    v9 = v8;
    spid = v7;
    v10 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPAnalysisProgressQueryCachedFaceAnalysisProgress", "", buf, 2u);
    }

    v11 = [VCPDatabaseReader databaseForPhotoLibrary:libraryCopy];
    if (v11)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __73__VCPAnalysisProgressQuery_queryCachedFaceAnalysisProgress_photoLibrary___block_invoke;
      aBlock[3] = &unk_1E834D780;
      v32 = libraryCopy;
      v33 = v11;
      v12 = _Block_copy(aBlock);
      v13 = v12[2](v12, @"NumberOfAssetsAllowedForPhotosFaceProcessing");
      if (v13)
      {
        v14 = v12[2](v12, @"NumberOfAssetsAnalyzedForPhotosFaceProcessing");
        v15 = v12[2](v12, @"NumberOfPrioritizedAssetsAnalyzedForPhotosFaceProcessing");
        v16 = v12[2](v12, @"NumberOfPrioritizedAssetsAllowedForPhotosFaceProcessing");
        v28 = v12[2](v12, @"NumberOfProcessedAssetsAfterPromoterForPhotosFaceProcessing");
        v27 = v12[2](v12, @"VCPKeyValueLastPromoterTimestamp");
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v37 = v14;
          v38 = 2048;
          v39 = v13;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[CachedProgress] Query cached face progress: %ld out of %ld", buf, 0x16u);
        }

        v34[0] = @"prioritized-processed";
        v26 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        v35[0] = v26;
        v34[1] = @"prioritized-total-allowed";
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
        v35[1] = v17;
        v34[2] = @"processed";
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        v35[2] = v18;
        v34[3] = @"total-allowed";
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
        v35[3] = v19;
        v34[4] = @"processed-assets-with-promoter";
        v20 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
        v35[4] = v20;
        v34[5] = @"last-promoter-timestamp";
        v21 = [MEMORY[0x1E696AD98] numberWithLongLong:v27];
        v35[5] = v21;
        *progress = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:6];

        v22 = VCPSignPostLog();
        v23 = v22;
        if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, spid, "VCPAnalysisProgressQueryCachedFaceAnalysisProgress", "", buf, 2u);
        }

        if (v30)
        {
          mach_absolute_time();
          VCPPerformance_LogMeasurement();
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[CachedProgress] No cached values", buf, 2u);
      }

      v24 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[CachedProgress] Failed to open MediaAnalysis database", buf, 2u);
      }

      v24 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[CachedProgress] Nil input parameter 'progress'", buf, 2u);
    }

    v24 = -50;
  }

  return v24;
}

uint64_t __73__VCPAnalysisProgressQuery_queryCachedFaceAnalysisProgress_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v4 = [*(a1 + 32) mad_fetchRequest];
    v5 = [v4 dataStoreValueForKey:v3];
  }

  else
  {
    v5 = [*(a1 + 40) valueForKey:v3];
  }

  return v5;
}

+ (int)queryVideoCountAndDurationBreakdown:(id)breakdown photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block
{
  v106 = *MEMORY[0x1E69E9840];
  breakdownCopy = breakdown;
  libraryCopy = library;
  blockCopy = block;
  v87 = breakdownCopy;
  if (d != 1)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = VCPTaskIDDescription(d);
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ProgressQuery] Unable to query video duration progress for task %@", buf, 0xCu);
    }

    v13 = -4;
    goto LABEL_74;
  }

  if (!breakdownCopy)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ProgressQuery](Video duration) output progress dictionary must be non-nil", buf, 2u);
    }

    v13 = -50;
    goto LABEL_74;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = VCPTaskIDDescription(1);
    *buf = 134218242;
    *&buf[4] = 1;
    v104 = 2112;
    v105 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ProgressQuery](Video duration) scan library duration for %lu - %@", buf, 0x16u);
  }

  v82 = [VCPDatabaseReader databaseForPhotoLibrary:libraryCopy];
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
  }

  else
  {
    mad_fetchRequest = 0;
  }

  v70 = [libraryCopy fetchOptionsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) priority:4 algorithmVersion:0 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:0 error:0.0];
  v14 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:?];
  v15 = 0;
  v88 = 0;
  v90 = 0;
  v83 = 0;
  v85 = 0;
  v93 = 0;
  v66 = 0;
  v68 = 0;
  v72 = 0;
  v75 = 0;
  v77 = 0;
  v80 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v71 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v74 = 0.0;
  while (1)
  {
    if (v17 >= [v14 count])
    {
      v100[0] = @"FullAnalysisVideoCount";
      v95 = [MEMORY[0x1E696AD98] numberWithLongLong:v90];
      v101[0] = v95;
      v100[1] = @"FullAnalysisSlowmoVideoCount";
      v91 = [MEMORY[0x1E696AD98] numberWithLongLong:v16];
      v101[1] = v91;
      v100[2] = @"FullAnalysisLongVideoCount";
      v89 = [MEMORY[0x1E696AD98] numberWithLongLong:v88];
      v101[2] = v89;
      v100[3] = @"FullAnalysisVideoProcessed";
      v86 = [MEMORY[0x1E696AD98] numberWithLongLong:v85];
      v101[3] = v86;
      v100[4] = @"FullAnalysisSlowmoVideoProcessed";
      v94 = [MEMORY[0x1E696AD98] numberWithLongLong:v93];
      v101[4] = v94;
      v100[5] = @"FullAnalysisLongVideoProcessed";
      v84 = [MEMORY[0x1E696AD98] numberWithLongLong:v83];
      v101[5] = v84;
      v100[6] = @"FullAnalysisVideoFailed";
      type = [MEMORY[0x1E696AD98] numberWithLongLong:v68];
      v101[6] = type;
      v100[7] = @"FullAnalysisSlowmoVideoFailed";
      v73 = [MEMORY[0x1E696AD98] numberWithLongLong:v72];
      v101[7] = v73;
      v100[8] = @"FullAnalysisLongVideoFailed";
      v69 = [MEMORY[0x1E696AD98] numberWithLongLong:v66];
      v101[8] = v69;
      v100[9] = @"FullAnalysisVideoGated";
      v78 = [MEMORY[0x1E696AD98] numberWithLongLong:v77];
      v101[9] = v78;
      v100[10] = @"FullAnalysisSlowmoVideoGated";
      v81 = [MEMORY[0x1E696AD98] numberWithLongLong:v80];
      v101[10] = v81;
      v100[11] = @"FullAnalysisLongVideoGated";
      v76 = [MEMORY[0x1E696AD98] numberWithLongLong:v75];
      v101[11] = v76;
      v100[12] = @"VideoDuration";
      v67 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      v101[12] = v67;
      v100[13] = @"SlowmoVideoDuration";
      v63 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
      v101[13] = v63;
      v100[14] = @"LongVideoDuration";
      v62 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
      v101[14] = v62;
      v100[15] = @"ProcessedVideoDuration";
      v61 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
      v101[15] = v61;
      v100[16] = @"ProcessedSlowmoVideoDuration";
      v60 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
      v101[16] = v60;
      v100[17] = @"ProcessedLongVideoDuration";
      v51 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
      v101[17] = v51;
      v100[18] = @"FailedVideoDuration";
      v52 = [MEMORY[0x1E696AD98] numberWithDouble:v65];
      v101[18] = v52;
      v100[19] = @"FailedSlowmoVideoDuration";
      v53 = [MEMORY[0x1E696AD98] numberWithDouble:v71];
      v101[19] = v53;
      v100[20] = @"FailedLongVideoDuration";
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:v64];
      v101[20] = v54;
      v100[21] = @"GatedVideoDuration";
      v55 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
      v101[21] = v55;
      v100[22] = @"GatedSlowmoVideoDuration";
      v56 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      v101[22] = v56;
      v100[23] = @"GatedLongVideoDuration";
      v57 = [MEMORY[0x1E696AD98] numberWithDouble:v74];
      v101[23] = v57;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:24];
      [v87 addEntriesFromDictionary:v58];

      v13 = 0;
      goto LABEL_73;
    }

    v26 = objc_autoreleasePoolPush();
    v27 = blockCopy == 0;
    if (v15 + 1000 * (v17 / 0x3E8))
    {
      v27 = 1;
    }

    if (v27 || !blockCopy[2](blockCopy))
    {
      v30 = [v14 objectAtIndexedSubscript:v17];
      if (([v30 vcp_needsFullAnalysisProcessing:0] & 1) == 0)
      {
        if ([v30 vcp_isVideoSlowmo])
        {
          [v30 duration];
          v22 = v22 + v34;
          ++v93;
        }

        else if ([v30 vcp_isLongMovie])
        {
          [v30 duration];
          v23 = v23 + v35;
          ++v83;
        }

        else
        {
          [v30 duration];
          v21 = v21 + v40;
          ++v85;
        }

        goto LABEL_55;
      }

      if (mad_fetchRequest)
      {
        *buf = 0;
        v99 = 0;
        v97 = 0;
        v98 = 0;
        localIdentifier = [v30 localIdentifier];
        v32 = [mad_fetchRequest fetchProcessingStatus:buf attempts:&v99 lastAttemptDate:&v98 nextAttemptDate:&v97 localIdentifier:localIdentifier taskID:1];
        v33 = v98;

        if (v32)
        {

          v29 = 12;
LABEL_60:

          goto LABEL_61;
        }

        if (*buf > 6)
        {
          if (*buf == 7)
          {
LABEL_47:

LABEL_48:
            if ([v30 vcp_isVideoSlowmo])
            {
              [v30 duration];
              v25 = v25 + v41;
              ++v80;
            }

            else if ([v30 vcp_isLongMovie])
            {
              [v30 duration];
              v74 = v74 + v42;
              ++v75;
            }

            else
            {
              [v30 duration];
              v24 = v24 + v43;
              ++v77;
            }

            goto LABEL_55;
          }

          if (*buf != 0x7FFFLL)
          {
LABEL_64:

            goto LABEL_66;
          }
        }

        else if (*buf >= 2uLL)
        {
          if (*buf != 2)
          {
            goto LABEL_64;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v102 = v30;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
        v37 = [v82 queryFailedProcessingStatusFromAssets:v36 forTaskID:1];

        localIdentifier2 = [v30 localIdentifier];
        v39 = [v37 objectForKeyedSubscript:localIdentifier2];

        if (!v39)
        {
          goto LABEL_54;
        }

        if ([v39 status] == 2 || objc_msgSend(v39, "status") == 7)
        {

          goto LABEL_48;
        }

        if ([v39 status] != 1)
        {
          v47 = [v39 status] == 0x7FFF;

          if (!v47)
          {
LABEL_66:
            if ([v30 vcp_isVideoSlowmo])
            {
              [v30 duration];
              v71 = v71 + v48;
              ++v72;
            }

            else if ([v30 vcp_isLongMovie])
            {
              [v30 duration];
              v64 = v64 + v49;
              ++v66;
            }

            else
            {
              [v30 duration];
              v65 = v65 + v50;
              ++v68;
            }
          }
        }

        else
        {
LABEL_54:
        }
      }

LABEL_55:
      if ([v30 vcp_isVideoSlowmo])
      {
        [v30 duration];
        v29 = 0;
        v19 = v19 + v44;
        ++v16;
      }

      else if ([v30 vcp_isLongMovie])
      {
        [v30 duration];
        v29 = 0;
        v20 = v20 + v45;
        ++v88;
      }

      else
      {
        [v30 duration];
        v29 = 0;
        v18 = v18 + v46;
        ++v90;
      }

      goto LABEL_60;
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v28 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, v28, OS_LOG_TYPE_DEFAULT, "Cancelled during queryVideoDurationProgress", buf, 2u);
      }
    }

    v29 = 1;
LABEL_61:
    objc_autoreleasePoolPop(v26);
    if (v29 != 12)
    {
      if (v29)
      {
        break;
      }
    }

    ++v17;
    --v15;
  }

  v13 = -128;
LABEL_73:

LABEL_74:
  return v13;
}

@end