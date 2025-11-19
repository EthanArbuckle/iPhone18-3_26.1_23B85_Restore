@interface MADSpotlightMovieAssetBatch
+ (id)batchWithCancelBlock:(id)a3;
- (MADSpotlightMovieAssetBatch)initWithCancelBlock:(id)a3;
- (id)createSearchableItemForAssetEntry:(id)a3 andImageAssetEntry:(id)a4;
- (id)mergeVideoScenes:(id)a3 withExistingResult:(id)a4;
- (id)truncateTimeRangeResults:(id)a3 withTimeCap:(double)a4;
- (int)prepare;
- (int)process;
- (int)publish;
- (void)_processActionResults:(id)a3 andTimeRangeResults:(id)a4 withAssetDuration:(double)a5 forAssetEntry:(id)a6;
- (void)_processEmbeddingResults:(id)a3 andSummarizedEmbeddingResults:(id)a4 forAssetEntry:(id)a5;
- (void)_processSafetyResults:(id)a3 forAssetEntry:(id)a4;
- (void)_processSceneResults:(id)a3 andTimeRangeResults:(id)a4 forAssetEntry:(id)a5;
- (void)_processTimeRangeResults:(id)a3 forAssetEntry:(id)a4;
- (void)addAsset:(id)a3;
- (void)processAssetEntry:(id)a3;
@end

@implementation MADSpotlightMovieAssetBatch

- (MADSpotlightMovieAssetBatch)initWithCancelBlock:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = MADSpotlightMovieAssetBatch;
  v5 = [(MADSpotlightMovieAssetBatch *)&v30 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = +[NSMutableArray array];
  assetEntries = v5->_assetEntries;
  v5->_assetEntries = v6;

  v8 = dispatch_group_create();
  computeGroup = v5->_computeGroup;
  v5->_computeGroup = v8;

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.mediaanalysisd.spotlight.video.compute", v10);
  computeQueue = v5->_computeQueue;
  v5->_computeQueue = v11;

  v13 = objc_retainBlock(v4);
  cancelBlock = v5->_cancelBlock;
  v5->_cancelBlock = v13;

  v15 = [SCMLHandler alloc];
  v37[0] = SCMLUseAnyAvailableDevice;
  v37[1] = SCMLUseImageClassificationModel;
  v38[0] = &__kCFBooleanTrue;
  v38[1] = &off_100295478;
  v16 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v29 = 0;
  v17 = [v15 initWithOptions:v16 error:&v29];
  v18 = v29;
  commSafetyHandler = v5->_commSafetyHandler;
  v5->_commSafetyHandler = v17;

  if (v5->_commSafetyHandler && !v18)
  {
    v20 = dispatch_queue_create("com.apple.mediaanalysisd.spotlight.image.request", 0);
    requestQueue = v5->_requestQueue;
    v5->_requestQueue = v20;

    v22 = +[NSMutableArray array];
    imageAssetEntries = v5->_imageAssetEntries;
    v5->_imageAssetEntries = v22;

LABEL_5:
    v24 = v5;
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v26 = [(MADSpotlightMovieAssetBatch *)v5 logPrefix];
    v27 = objc_opt_class();
    v28 = [v18 description];
    *buf = 138412802;
    v32 = v26;
    v33 = 2112;
    v34 = v27;
    v35 = 2112;
    v36 = v28;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[%@] Failed to create %@: %@", buf, 0x20u);
  }

  v24 = 0;
LABEL_9:

  return v24;
}

+ (id)batchWithCancelBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCancelBlock:v4];

  return v5;
}

- (void)addAsset:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_assetEntries;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) asset];
        v10 = [v9 uniqueIdentifier];
        v11 = [v4 uniqueIdentifier];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v16 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v16))
            {
              v17 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
              v18 = [v4 uniqueIdentifier];
              *buf = 138412546;
              v24 = v17;
              v25 = 2112;
              v26 = v18;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[%@][%@] Batch already contains asset; ignoring", buf, 0x16u);
            }
          }

          goto LABEL_14;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (v4)
  {
    assetEntries = self->_assetEntries;
    v14 = [MADSpotlightMovieAssetEntry entryWithAsset:v4];
    [(NSMutableArray *)assetEntries addObject:v14];

    imageAssetEntries = self->_imageAssetEntries;
    v5 = [MADSpotlightImageAssetEntry entryWithAsset:v4];
    [(NSMutableArray *)imageAssetEntries addObject:v5];
LABEL_14:
  }
}

- (int)prepare
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_assetEntries;
  v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v2)
  {
    v4 = *v30;
    v5 = VCPLogToOSLogType[5];
    *&v3 = 138412546;
    v25 = v3;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v5))
        {
          v8 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
          v9 = [v7 asset];
          v10 = [v9 uniqueIdentifier];
          *buf = v25;
          v34 = v8;
          v35 = 2112;
          v36 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@][Prepare] %@", buf, 0x16u);
        }

        v11 = [v7 asset];
        [v11 setStatus:1];

        v12 = [v7 asset];
        [v12 setAttemptCount:{objc_msgSend(v12, "attemptCount") + 1}];

        v13 = [v7 asset];
        [v13 attemptCount];
        MADRetryBackoffTime();
        v15 = v14;

        v16 = [NSDate dateWithTimeIntervalSinceNow:v15];
        v17 = [v7 asset];
        [v17 setNextAttemptDate:v16];
      }

      v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v2);
  }

  v18 = +[MADSystemDataStore systemDataStore];
  v28 = 0;
  v19 = [v18 commitChangesOrRollback:&v28];
  v20 = v28;

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v22 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        v23 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
        *buf = 138412546;
        v34 = v23;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@][Prepare] Failed during commit changes (%@)", buf, 0x16u);
      }
    }

    v21 = [v20 code];
  }

  return v21;
}

- (int)process
{
  if ([(NSMutableArray *)self->_assetEntries count])
  {
    v3 = 0;
    v28 = VCPLogToOSLogType[4];
    type = VCPLogToOSLogType[5];
    *&v2 = 138412802;
    v27 = v2;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v4 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v3];
      v31 = [(NSMutableArray *)self->_imageAssetEntries objectAtIndexedSubscript:v3];
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
      {
        v5 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
        v6 = [v4 asset];
        v7 = [v6 uniqueIdentifier];
        *buf = 138412546;
        v37 = v5;
        v38 = 2112;
        v39 = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][Process] %@", buf, 0x16u);
      }

      [v4 setStatus:{objc_msgSend(v4, "consumeSandboxExtension", v27)}];
      v8 = [v4 asset];
      v9 = [v8 url];
      v10 = [v9 path];
      if (!v10)
      {
        break;
      }

      v11 = +[NSFileManager defaultManager];
      v12 = [v4 asset];
      v13 = [v12 url];
      v14 = [v13 path];
      v15 = [v11 fileExistsAtPath:v14];

      if (!v15)
      {
        goto LABEL_10;
      }

      computeGroup = self->_computeGroup;
      computeQueue = self->_computeQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001AEE2C;
      block[3] = &unk_1002832A0;
      block[4] = self;
      v34 = v4;
      v35 = v31;
      dispatch_group_async(computeGroup, computeQueue, block);

LABEL_14:
      objc_autoreleasePoolPop(context);
      if (++v3 >= [(NSMutableArray *)self->_assetEntries count])
      {
        goto LABEL_15;
      }
    }

LABEL_10:
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v28))
    {
      v18 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
      v19 = [v4 asset];
      v20 = [v19 uniqueIdentifier];
      v21 = [v4 asset];
      v22 = [v21 url];
      v23 = [v22 path];
      *buf = v27;
      v37 = v18;
      v38 = 2112;
      v39 = v20;
      v40 = 2112;
      v41 = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[%@][Process][%@] File does not exist (%@)", buf, 0x20u);
    }

    [v4 setStatus:4294967278];
    goto LABEL_14;
  }

LABEL_15:
  if (MediaAnalysisLogLevel() > 5)
  {
    v24 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v24))
    {
      v25 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
      *buf = 138412290;
      v37 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[%@][Process] Waiting for compute to complete", buf, 0xCu);
    }
  }

  dispatch_group_wait(self->_computeGroup, 0xFFFFFFFFFFFFFFFFLL);
  return 0;
}

- (void)_processSceneResults:(id)a3 andTimeRangeResults:(id)a4 forAssetEntry:(id)a5
{
  v7 = a3;
  v8 = a4;
  v36 = v8;
  v37 = a5;
  if (v7)
  {
    [v8 setObject:v7 forKey:MediaAnalysisClassificationResultsKey];
  }

  v9 = +[NSMutableDictionary dictionary];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
  type = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (type)
  {
    v40 = *v54;
    v39 = MediaAnalysisResultAttributesKey;
    do
    {
      for (i = 0; i != type; i = i + 1)
      {
        if (*v54 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v53 + 1) + 8 * i) objectForKeyedSubscript:v39];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v12)
        {
          v13 = *v50;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v50 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v49 + 1) + 8 * j);
              v16 = [v11 objectForKeyedSubscript:v15];
              [v16 floatValue];
              v18 = v17;

              v19 = [v9 objectForKeyedSubscript:v15];
              if (v19)
              {
                v21 = [v9 objectForKeyedSubscript:v15];
                [v21 floatValue];
                v23 = v18 > v22;

                if (!v23)
                {
                  continue;
                }
              }

              *&v20 = v18;
              v24 = [NSNumber numberWithFloat:v20];
              [v9 setObject:v24 forKeyedSubscript:v15];
            }

            v12 = [v11 countByEnumeratingWithState:&v49 objects:v60 count:16];
          }

          while (v12);
        }
      }

      type = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (type);
  }

  v44 = +[NSMutableSet set];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v25 = [v9 allKeys];
  v26 = [v25 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v26)
  {
    v27 = *v46;
    typea = VCPLogToOSLogType[3];
    do
    {
      for (k = 0; k != v26; k = k + 1)
      {
        if (*v46 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v45 + 1) + 8 * k);
        v30 = [v9 objectForKeyedSubscript:v29];
        [v30 doubleValue];
        v32 = v31;

        v33 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
        v34 = [v33 nodeForExtendedSceneClassId:{objc_msgSend(v29, "longLongValue")}];

        if (v34)
        {
          v35 = [[PHSceneClassification alloc] initWithExtendedSceneIdentifier:objc_msgSend(v34 confidence:"extendedSceneClassId") boundingBox:0 startTime:v32 duration:CGRectNull.origin.x classificationType:{CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height, 0.0, 0.0}];
          if (v35)
          {
            [v44 addObject:v35];
          }
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, typea))
        {
          *buf = 138412290;
          v58 = v29;
          _os_log_impl(&_mh_execute_header, &_os_log_default, typea, "Failed to create PFSceneTaxonomyNode for scene ID: %@", buf, 0xCu);
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v26);
  }

  [v37 setSceneClassifications:v44];
}

- (void)_processSafetyResults:(id)a3 forAssetEntry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableSet set];
  if ([v5 count])
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = [v8 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
    v10 = [v9 objectForKeyedSubscript:MediaAnalysisResultSensitivitySceneResultsKey];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001AF5A4;
    v11[3] = &unk_100288788;
    v12 = v7;
    [v10 enumerateKeysAndObjectsUsingBlock:v11];
  }

  [v6 setNsfwClassifications:v7];
}

- (void)_processActionResults:(id)a3 andTimeRangeResults:(id)a4 withAssetDuration:(double)a5 forAssetEntry:(id)a6
{
  v47 = self;
  v51 = a3;
  v49 = a4;
  v50 = a6;
  v53 = +[NSMutableArray array];
  v61 = +[NSMutableDictionary dictionary];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v51;
  v55 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v55)
  {
    v54 = *v71;
    v57 = MediaAnalysisResultAttributesKey;
    v56 = MediaAnalysisResultHumanActionsAttributeKey;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v71 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v59 = [*(*(&v70 + 1) + 8 * i) mutableCopy];
        v9 = [v59 objectForKeyedSubscript:v57];
        v60 = [v9 mutableCopy];

        v10 = [v60 objectForKeyedSubscript:v56];
        v11 = [v10 mutableCopy];

        v12 = +[NSMutableArray array];
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v13 = [v11 allKeys];
        v14 = [v13 countByEnumeratingWithState:&v66 objects:v79 count:16];
        if (v14)
        {
          v15 = *v67;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v67 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v66 + 1) + 8 * j);
              v18 = [v11 objectForKeyedSubscript:v17];
              [v18 floatValue];
              v20 = v19;

              v21 = VCPHumanActionOperatingPointFromActionID();
              [v21 floatValue];
              v23 = v22;

              v24 = VCPHumanActionOperatingPointFromActionID();
              v26 = v20 < v23 || v24 == 0;

              if (v26)
              {
                [v12 addObject:v17];
              }

              else
              {
                v27 = [v61 objectForKeyedSubscript:v17];
                if (!v27 || ([v61 objectForKeyedSubscript:v17], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "floatValue"), v31 = v20 > v30, v29, v27, v31))
                {
                  *&v28 = v20;
                  v32 = [NSNumber numberWithFloat:v28];
                  [v61 setObject:v32 forKeyedSubscript:v17];
                }
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v66 objects:v79 count:16];
          }

          while (v14);
        }

        [v11 removeObjectsForKeys:v12];
        if ([v11 count])
        {
          [v60 setObject:v11 forKeyedSubscript:v56];
          [v59 setObject:v60 forKeyedSubscript:v57];
          [v53 addObject:v59];
        }
      }

      v55 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v55);
  }

  if (v53)
  {
    [v49 setObject:v53 forKey:MediaAnalysisHumanActionClassificationResultsKey];
  }

  v33 = +[NSMutableSet set];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v34 = [v61 allKeys];
  v35 = [v34 countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (v35)
  {
    v36 = *v63;
    while (2)
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v63 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v62 + 1) + 8 * k);
        v39 = [v61 objectForKeyedSubscript:v38];
        [v39 floatValue];
        v41 = v40;

        v42 = [[PHDetectionTrait alloc] initWithType:1 value:objc_msgSend(v38 score:"intValue") startTime:v41 duration:{0.0, a5}];
        if (!v42)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v43 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v43))
            {
              v44 = [v48 logPrefix];
              v45 = [v50 asset];
              v46 = [v45 uniqueIdentifier];
              *buf = 138412546;
              v75 = v44;
              v76 = 2112;
              v77 = v46;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "[%@][%@] Failed to generate PHDetectionTrait for human action", buf, 0x16u);
            }
          }

          [v50 setStatus:4294967278];

          goto LABEL_43;
        }

        [v33 addObject:v42];
      }

      v35 = [v34 countByEnumeratingWithState:&v62 objects:v78 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  [v50 setActionClassifications:v33];
LABEL_43:
}

- (void)_processTimeRangeResults:(id)a3 forAssetEntry:(id)a4
{
  v5 = a3;
  v46 = a4;
  v6 = v5;
  v45 = v6;
  v48 = +[VCPDataCompressor compressor];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = MediaAnalysisResultsKey;
  type = VCPLogToOSLogType[4];
  while (1)
  {
    v60 = v10;
    v61 = v6;
    v11 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v12 = [VCPProtoAssetAnalysis filesystemMovieAnalysisFromLegacyDictionary:v11];

    if (!v12)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v24 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          v25 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
          v26 = [v46 asset];
          v27 = [v26 uniqueIdentifier];
          *buf = 138412546;
          v51 = v25;
          v52 = 2112;
          v53 = v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[%@][Process][%@] Failed to convert asset analysis; skipping", buf, 0x16u);
        }
      }

      [v46 setStatus:4294967278];
      goto LABEL_21;
    }

    v13 = [v12 data];

    if (!v13)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v28 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v28))
        {
          v29 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
          v30 = [v46 asset];
          v31 = [v30 uniqueIdentifier];
          *buf = 138412546;
          v51 = v29;
          v52 = 2112;
          v53 = v31;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "[%@][Process][%@] Failed to serialize asset analysis; skipping", buf, 0x16u);
        }
      }

      v7 = 0;
      [v46 setStatus:4294967278];
LABEL_21:
      v13 = v7;
      goto LABEL_35;
    }

    v14 = [v48 compressData:v13];
    v15 = v14;
    if (!v14)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v32 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          v33 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
          v34 = [v46 asset];
          v35 = [v34 uniqueIdentifier];
          *buf = 138412546;
          v51 = v33;
          v52 = 2112;
          v53 = v35;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[%@][Process][%@] Failed to compress serialized asset analysis", buf, 0x16u);
        }
      }

      [v46 setStatus:4294967278];
      goto LABEL_34;
    }

    v16 = [v14 length];
    if (v16 <= [v13 length])
    {
      v17 = v15;

      v13 = v17;
    }

    if ([v13 length] <= 0x1000)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
      {
        v36 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
        v37 = [v46 asset];
        v38 = [v37 uniqueIdentifier];
        v39 = [v13 length];
        *buf = 138413058;
        v51 = v36;
        v52 = 2112;
        v53 = v38;
        v54 = 2048;
        v55 = v39;
        v56 = 1024;
        v57 = 4096;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][Process][%@] Serialized analysis %lu bytes within %d bytes cap", buf, 0x26u);
      }

      v15 = [v13 copy];
      [v46 setTimeRangeResults:v15];
      goto LABEL_34;
    }

    v18 = pow(0.7, v8) * 900.0;
    v19 = [(MADSpotlightMovieAssetBatch *)self truncateTimeRangeResults:v6 withTimeCap:v18];

    if (v8 >= 0xE)
    {
      break;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, type))
    {
      v20 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
      v21 = [v46 asset];
      v22 = [v21 uniqueIdentifier];
      v23 = [v13 length];
      *buf = 138413314;
      v51 = v20;
      v52 = 2112;
      v53 = v22;
      v54 = 2048;
      v55 = v23;
      v56 = 1024;
      v57 = 4096;
      v58 = 2048;
      v59 = v18;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][Process][%@] Serialized analysis %lu bytes; exceeds per-entry limit %d bytes;retry truncating data with timeRange cap:%fs", buf, 0x30u);
    }

    ++v8;
    v7 = v13;
    v6 = v19;
    v9 = v12;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v40 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v40))
    {
      v41 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
      v42 = [v46 asset];
      v43 = [v42 uniqueIdentifier];
      v44 = [v13 length];
      *buf = 138412802;
      v51 = v41;
      v52 = 2112;
      v53 = v43;
      v54 = 2048;
      v55 = v44;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[%@][Process][%@] Serialized analysis size %lu bytes;exceeds size limit and hit truncation retry limit, skipping the asset", buf, 0x20u);
    }
  }

  [v46 setStatus:4294967278];
  v6 = v19;
LABEL_34:

LABEL_35:
}

- (id)truncateTimeRangeResults:(id)a3 withTimeCap:(double)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:v11];
        for (j = 0; ; ++j)
        {
          if ([v12 count] <= j)
          {
            v15 = v12;
            goto LABEL_12;
          }

          v14 = [v12 objectAtIndexedSubscript:j];
          memset(&v18, 0, sizeof(v18));
          CMTimeRangeMakeFromDictionary(&v18, v14);
          start = v18.start;
          if (CMTimeGetSeconds(&start) > a4)
          {
            break;
          }
        }

        v15 = [v12 subarrayWithRange:{0, j}];

LABEL_12:
        [v6 setObject:v15 forKey:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v6;
}

- (void)_processEmbeddingResults:(id)a3 andSummarizedEmbeddingResults:(id)a4 forAssetEntry:(id)a5
{
  v7 = a3;
  v36 = a4;
  v39 = a5;
  v40 = +[NSMutableArray array];
  if ([v7 count])
  {
    if ([v36 count])
    {
      v8 = [v36 objectAtIndexedSubscript:0];
      v42 = MediaAnalysisResultAttributesKey;
      v9 = [v8 objectForKeyedSubscript:?];
      v10 = [v9 objectForKeyedSubscript:MediaAnalysisResultEmbeddingIdsAttributeKey];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v10;
      v11 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      if (v11)
      {
        v12 = *v46;
        type = VCPLogToOSLogType[3];
        v13 = MediaAnalysisResultEmbeddingAttributeKey;
        v37 = VCPLogToOSLogType[4];
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v46 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v45 + 1) + 8 * i);
            v16 = [v15 integerValue];
            if (v16 >= [v7 count])
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
              {
                v20 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
                v21 = [v39 asset];
                v22 = [v21 uniqueIdentifier];
                *buf = 138412546;
                v50 = v20;
                v51 = 2112;
                v52 = v22;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][Process][%@] Summarized video embedding ID out of bound", buf, 0x16u);
              }
            }

            else
            {
              v17 = [v7 objectAtIndexedSubscript:{objc_msgSend(v15, "integerValue")}];
              v18 = [v17 objectForKeyedSubscript:v42];
              v19 = [v18 objectForKeyedSubscript:v13];

              if (v19)
              {
                [v40 addObject:v19];
              }

              else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v37))
              {
                v23 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
                v24 = [v39 asset];
                v25 = [v24 uniqueIdentifier];
                *buf = 138412546;
                v50 = v23;
                v51 = 2112;
                v52 = v25;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[%@][Process][%@] No video summarized embedding in results", buf, 0x16u);
              }
            }
          }

          v11 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
        }

        while (v11);
      }
    }

    else if (MediaAnalysisLogLevel() >= 4)
    {
      v26 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        v27 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
        v28 = [v39 asset];
        v29 = [v28 uniqueIdentifier];
        *buf = 138412546;
        v50 = v27;
        v51 = 2112;
        v52 = v29;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[%@][Process][%@] No video summarized embedding results", buf, 0x16u);
      }
    }

    v44 = 0;
    v30 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:&v44, v36];
    v31 = v44;
    if (v31)
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v32 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          v33 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
          v34 = [v39 asset];
          v35 = [v34 uniqueIdentifier];
          *buf = 138412802;
          v50 = v33;
          v51 = 2112;
          v52 = v35;
          v53 = 2112;
          v54 = v31;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "[%@][Process][%@] Failed to convert timeRangeEmbeddings (%@)", buf, 0x20u);
        }
      }

      [v39 setStatus:4294967278];
    }

    else
    {
      [v39 setTimerangeEmbeddings:v30];
      [v39 setSummarizedEmbeddings:v40];
      [v39 setEmbeddingVersion:{+[VCPMediaAnalyzer getUnifiedEmbeddingVersion](VCPMediaAnalyzer, "getUnifiedEmbeddingVersion")}];
    }
  }
}

- (void)processAssetEntry:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
      v7 = [v4 asset];
      v8 = [v7 uniqueIdentifier];
      v9 = [v4 asset];
      v10 = [v9 url];
      v11 = [v10 path];
      LODWORD(buf[0].value) = 138412802;
      *(&buf[0].value + 4) = v6;
      LOWORD(buf[0].flags) = 2112;
      *(&buf[0].flags + 2) = v8;
      HIWORD(buf[0].epoch) = 2112;
      buf[1].value = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@][Process][%@] Processing asset: %@", buf, 0x20u);
    }
  }

  cancelBlock = self->_cancelBlock;
  if (cancelBlock && cancelBlock[2]())
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v13 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        v14 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
        v15 = [v4 asset];
        v16 = [v15 uniqueIdentifier];
        LODWORD(buf[0].value) = 138412546;
        *(&buf[0].value + 4) = v14;
        LOWORD(buf[0].flags) = 2112;
        *(&buf[0].flags + 2) = v16;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[%@][Process][%@] Processing canceled; skipping asset", buf, 0x16u);
      }
    }

    [v4 setStatus:4294967168];
  }

  else
  {
    v17 = 0x40040004000;
    if (DeviceHasANE() && +[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v17 = 0xC0040004000;
    }

    v18 = [MADMovieBlastDoorAnalyzer alloc];
    v19 = [v4 asset];
    v20 = [v19 url];
    v21 = [v18 initWithMovieURL:v20 analysisTypes:v17 cancelBlock:self->_cancelBlock];

    v42 = 0;
    v22 = [v21 analyzeAsset:&v42];
    v23 = v42;
    if (!v22 && MediaAnalysisLogLevel() >= 4)
    {
      v24 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        v25 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
        v26 = [v4 asset];
        v27 = [v26 uniqueIdentifier];
        v28 = [v23 description];
        LODWORD(buf[0].value) = 138412802;
        *(&buf[0].value + 4) = v25;
        LOWORD(buf[0].flags) = 2112;
        *(&buf[0].flags + 2) = v27;
        HIWORD(buf[0].epoch) = 2112;
        buf[1].value = v28;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[%@][Process][%@] Movie blastdoor analysis failed to complete: %@", buf, 0x20u);
      }
    }

    v29 = +[NSMutableDictionary dictionary];
    v30 = [v22 objectForKeyedSubscript:MediaAnalysisClassificationResultsKey];
    [(MADSpotlightMovieAssetBatch *)self _processSceneResults:v30 andTimeRangeResults:v29 forAssetEntry:v4];

    v31 = [v22 objectForKeyedSubscript:MediaAnalysisSafetyResultsKey];
    [(MADSpotlightMovieAssetBatch *)self _processSafetyResults:v31 forAssetEntry:v4];

    if (v21)
    {
      [v21 timeRange];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v41 = buf[1];
    Seconds = CMTimeGetSeconds(&v41);
    v33 = [v22 objectForKeyedSubscript:MediaAnalysisHumanActionClassificationResultsKey];
    [(MADSpotlightMovieAssetBatch *)self _processActionResults:v33 andTimeRangeResults:v29 withAssetDuration:v4 forAssetEntry:Seconds];

    v34 = [v4 actionClassifications];
    LODWORD(v33) = v34 == 0;

    if (v33)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v37 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v37))
        {
          v38 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
          v39 = [v4 asset];
          v40 = [v39 uniqueIdentifier];
          LODWORD(buf[0].value) = 138412546;
          *(&buf[0].value + 4) = v38;
          LOWORD(buf[0].flags) = 2112;
          *(&buf[0].flags + 2) = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "[%@][Process][%@] Failed to generate PHDetectionTrait for human action", buf, 0x16u);
        }
      }

      [v4 setStatus:4294967278];
    }

    else
    {
      v35 = [v22 objectForKeyedSubscript:MediaAnalysisVideoEmbeddingResultsKey];
      v36 = [v22 objectForKeyedSubscript:MediaAnalysisSummarizedEmbeddingResultsKey];
      [(MADSpotlightMovieAssetBatch *)self _processEmbeddingResults:v35 andSummarizedEmbeddingResults:v36 forAssetEntry:v4];

      [(MADSpotlightMovieAssetBatch *)self _processTimeRangeResults:v29 forAssetEntry:v4];
      [v4 setMediaAnalysisVersion:MediaAnalysisVersion];
    }
  }
}

- (id)mergeVideoScenes:(id)a3 withExistingResult:(id)a4
{
  v28 = a3;
  v32 = a4;
  v29 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [v32 photosSceneClassifications];
  v6 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v6)
  {
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        if ([v9 mediaType] == 1 && objc_msgSend(v9, "sceneType") == 1)
        {
          [v29 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v6);
  }

  v10 = +[NSMutableDictionary dictionary];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v29;
  v11 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v11)
  {
    v12 = *v38;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * j);
        v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v14 sceneIdentifier]);
        [v10 setObject:v14 forKey:v15];
      }

      v11 = [obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v11);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = v28;
  v16 = [v30 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v16)
  {
    v17 = *v34;
    v18 = VCPPhotosSceneProcessingVersion;
    do
    {
      for (k = 0; k != v16; k = k + 1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v30);
        }

        v20 = *(*(&v33 + 1) + 8 * k);
        v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v20 sceneIdentifier]);
        v22 = [v10 objectForKey:v21];

        if (!v22 || ([v32 photosSceneAnalysisVersion], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "intValue") == v18, v23, !v24))
        {
          v25 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v20 sceneIdentifier]);
          [v10 setObject:v20 forKey:v25];
        }
      }

      v16 = [v30 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v16);
  }

  v26 = [v10 allValues];

  return v26;
}

- (id)createSearchableItemForAssetEntry:(id)a3 andImageAssetEntry:(id)a4
{
  v5 = a3;
  v6 = a4;
  v63 = v6;
  v7 = [v5 asset];
  v8 = [v7 typeIdentifier];
  v9 = [UTType typeWithIdentifier:v8];

  v64 = v9;
  if (v9)
  {
    v10 = [[CSSearchableItemAttributeSet alloc] initWithContentType:v9];
    v11 = [v5 asset];
    v12 = [v11 url];
    [v10 setContentURL:v12];

    v13 = [v5 asset];
    v14 = [v13 bundleIdentifier];
    [v10 setBundleID:v14];

    if (v6)
    {
      v15 = [v6 attributeSet];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 photosSceneAnalysisVersion];
        [v10 setPhotosSceneAnalysisVersion:v17];

        v18 = [v16 photosSceneClassifications];
        [v10 setPhotosSceneClassifications:v18];

        v19 = [v16 aestheticScore];
        [v10 setAestheticScore:v19];

        v20 = [v16 contentRating];
        [v10 setContentRating:v20];

        v21 = [v16 textContentPieces];
        [v10 setTextContentPieces:v21];

        v22 = [v16 photosCharacterRecognitionAnalysisVersion];
        [v10 setPhotosCharacterRecognitionAnalysisVersion:v22];
      }
    }

    v65 = +[NSMutableArray array];
    v23 = [v5 sceneClassifications];
    v24 = VCPPhotosSceneProcessingVersion;
    v25 = [PHSearch spotlightSceneClassificationsFromPhotosSceneClassifications:v23 algorithmVersion:VCPPhotosSceneProcessingVersion];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v27)
    {
      v28 = *v71;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v71 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v70 + 1) + 8 * i);
          [v30 setSceneType:1];
          [v30 setMediaType:2];
        }

        v27 = [v26 countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v27);
    }

    v31 = [v10 photosSceneAnalysisVersion];
    v32 = v31 == 0;

    if (v32)
    {
      v33 = v26;
    }

    else
    {
      v33 = [(MADSpotlightMovieAssetBatch *)self mergeVideoScenes:v26 withExistingResult:v10];
    }

    v35 = v33;
    if (v33)
    {
      [v65 addObjectsFromArray:v33];
    }

    v61 = v35;
    v36 = [v5 actionClassifications];
    v37 = [PHSearch spotlightSceneClassificationsFromDetectionTraits:v36];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v38 = v37;
    v39 = [v38 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v39)
    {
      v40 = *v67;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v67 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v66 + 1) + 8 * j);
          [v42 setSceneType:2];
          [v42 setMediaType:2];
        }

        v39 = [v38 countByEnumeratingWithState:&v66 objects:v78 count:16];
      }

      while (v39);
    }

    if (v38)
    {
      [v65 addObjectsFromArray:v38];
    }

    v43 = [v65 copy];
    [v10 setPhotosSceneClassifications:v43];

    v44 = [v5 nsfwClassifications];
    v45 = [PHSearch spotlightContentRatingFromPhotosSceneClassifications:v44 algorithmVersion:v24];
    [v10 setContentRating:v45];

    v46 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 mediaAnalysisVersion]);
    [v10 setPhotosMediaAnalysisVersion:v46];

    v47 = [v5 timeRangeResults];
    [v10 setMediaAnalysisTimeRangeData:v47];

    if ([v5 embeddingVersion] == 9 || objc_msgSend(v5, "embeddingVersion") == 8 || objc_msgSend(v5, "embeddingVersion") == 7 || objc_msgSend(v5, "embeddingVersion") == 5)
    {
      v48 = [_CSEmbedding alloc];
      v49 = [v5 embeddingVersion];
      v50 = [v5 summarizedEmbeddings];
      v51 = [v48 initWithFormat:1 dimension:1 version:v49 vectors:v50];
      [v10 setPhotoEmbedding:v51];

      v52 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 embeddingVersion]);
      [v10 setMediaEmbeddingVersion:v52];

      v53 = [v5 timerangeEmbeddings];
      [v10 setMediaAnalysisTimeRangeEmbeddings:v53];
    }

    else if (MediaAnalysisLogLevel() >= 3)
    {
      v58 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v58))
      {
        v59 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
        v60 = [v5 embeddingVersion];
        *buf = 138412546;
        v75 = v59;
        v76 = 2048;
        v77 = v60;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v58, "[%@][Publish] Embedding version: %ld not supported, skip embedding publishing", buf, 0x16u);
      }
    }

    v54 = [CSSearchableItem alloc];
    v55 = [v5 asset];
    v56 = [v55 uniqueIdentifier];
    v34 = [v54 initWithUniqueIdentifier:v56 domainIdentifier:0 attributeSet:v10];

    [v34 setIsUpdate:1];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (int)publish
{
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v66 = +[NSMutableDictionary dictionary];
  v2 = 0;
  v3 = VCPLogToOSLogType[5];
  while (v2 < [(NSMutableArray *)self->_assetEntries count])
  {
    v4 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v2];
    v5 = [v4 asset];
    v6 = [v5 uniqueIdentifier];
    v7 = [(NSMutableArray *)self->_imageAssetEntries objectAtIndexedSubscript:v2];
    v8 = [v7 uniqueIdentifier];
    if ([v6 isEqualToString:v8])
    {
      v9 = [(NSMutableArray *)self->_imageAssetEntries objectAtIndexedSubscript:v2];
    }

    else
    {
      v9 = 0;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v3))
    {
      v10 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
      v11 = [v4 asset];
      v12 = [v11 uniqueIdentifier];
      *buf = 138412546;
      v95 = v10;
      v96 = 2112;
      v97 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[%@][Publish] %@", buf, 0x16u);
    }

    if ([v4 status])
    {
      if ([v4 status] != -128)
      {
        v16 = [v4 asset];
        [v16 setStatus:3];
        goto LABEL_19;
      }

      v13 = [v4 previousStatus];
      v14 = [v4 asset];
      [v14 setStatus:v13];

      v15 = [v4 asset];
      [v15 setAttemptCount:{objc_msgSend(v15, "attemptCount") - 1}];

      v16 = +[NSDate date];
      v17 = [v4 asset];
      [v17 setNextAttemptDate:v16];
    }

    else
    {
      v18 = [(MADSpotlightMovieAssetBatch *)self createSearchableItemForAssetEntry:v4 andImageAssetEntry:v9];
      v16 = v18;
      if (v18)
      {
        v19 = [v18 bundleID];
        v20 = [v66 objectForKeyedSubscript:v19];
        v21 = v20 == 0;

        if (v21)
        {
          v22 = +[NSMutableArray array];
          v23 = [v16 bundleID];
          [v66 setObject:v22 forKeyedSubscript:v23];
        }

        v17 = [v16 bundleID];
        v24 = [v66 objectForKeyedSubscript:v17];
        [v24 addObject:v16];
      }

      else
      {
        v17 = [v4 asset];
        [v17 setStatus:3];
      }
    }

LABEL_19:
    ++v2;
  }

  group = dispatch_group_create();
  v70 = +[NSMutableSet set];
  v69 = +[NSMutableSet set];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v25 = v66;
  v26 = [v25 countByEnumeratingWithState:&v86 objects:v101 count:16];
  v71 = v25;
  if (v26)
  {
    v27 = *v87;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v87 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v86 + 1) + 8 * i);
        dispatch_group_enter(group);
        v30 = [[CSSearchableIndex alloc] initWithName:v29 bundleIdentifier:v29];
        v31 = [v71 objectForKeyedSubscript:v29];
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_1001B3024;
        v79[3] = &unk_100288668;
        v79[4] = self;
        v32 = v71;
        v80 = v32;
        v81 = v29;
        v85 = &v90;
        v82 = v70;
        v83 = v69;
        v84 = group;
        [v30 indexSearchableItems:v31 completionHandler:v79];

        v25 = v71;
      }

      v26 = [v32 countByEnumeratingWithState:&v86 objects:v101 count:16];
    }

    while (v26);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v33 = self->_assetEntries;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v75 objects:v100 count:16];
  if (v34)
  {
    v35 = *v76;
    v36 = VCPLogToOSLogType[6];
    type = VCPLogToOSLogType[3];
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v76 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v75 + 1) + 8 * j);
        v39 = [v38 asset];
        v40 = [v39 uniqueIdentifier];
        v41 = [v70 containsObject:v40];

        if (v41)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v36))
          {
            v42 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
            v43 = [v38 asset];
            v44 = [v43 uniqueIdentifier];
            *buf = 138412546;
            v95 = v42;
            v96 = 2112;
            v97 = v44;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@][Publish] Mark %@ as soft failure", buf, 0x16u);
          }

          v45 = [v38 asset];
          [v45 setStatus:3];
        }

        v46 = [v38 asset];
        v47 = [v46 uniqueIdentifier];
        v48 = [v69 containsObject:v47];

        if (v48)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v36))
          {
            v49 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
            v50 = [v38 asset];
            v51 = [v50 uniqueIdentifier];
            *buf = 138412546;
            v95 = v49;
            v96 = 2112;
            v97 = v51;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[%@][Publish] Delete entry %@.", buf, 0x16u);
          }

          v52 = [v38 asset];
          v53 = [v52 uniqueIdentifier];
          v74 = 0;
          v54 = [MADManagedSpotlightEntry deleteEntryWithUniqueIdentifier:v53 error:&v74];
          v55 = v74;

          if ((v54 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            v56 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
            v57 = [v38 asset];
            v58 = [v57 uniqueIdentifier];
            *buf = 138412802;
            v95 = v56;
            v96 = 2112;
            v97 = v58;
            v98 = 2112;
            v99 = v55;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][Publish] %@ Failed to delete entry (%@)", buf, 0x20u);
          }
        }
      }

      v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v75 objects:v100 count:16];
    }

    while (v34);
  }

  v59 = +[MADSystemDataStore systemDataStore];
  v73 = 0;
  v60 = [v59 commitChangesOrRollback:&v73];
  v61 = v73;

  if (v60)
  {
    v62 = *(v91 + 6);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v63 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v63))
      {
        v64 = [(MADSpotlightMovieAssetBatch *)self logPrefix];
        *buf = 138412546;
        v95 = v64;
        v96 = 2112;
        v97 = v61;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v63, "[%@] Publish failed during commit changes (%@)", buf, 0x16u);
      }
    }

    v62 = [v61 code];
    *(v91 + 6) = v62;
  }

  _Block_object_dispose(&v90, 8);
  return v62;
}

@end