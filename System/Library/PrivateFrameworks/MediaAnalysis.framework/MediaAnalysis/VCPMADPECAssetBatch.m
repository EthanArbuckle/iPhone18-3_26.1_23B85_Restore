@interface VCPMADPECAssetBatch
+ (id)batchWithServicePool:(id)a3 analysisDatabase:(id)a4 cancelBlock:(id)a5;
- (VCPMADPECAssetBatch)initWithServicePool:(id)a3 analysisDatabase:(id)a4 cancelBlock:(id)a5;
- (id)resultFromVISearchResults:(id)a3;
- (int)_propagateAssetProcessingStatus;
- (int)_publishProcessingStatusForPhotoLibrary:(id)a3;
- (int)_publishProcessingStatusToLegacyDatabase;
- (int)prepare;
- (int)process;
- (int)publish;
- (unint64_t)processAssetBatchWithVIService:(id)a3;
- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6;
@end

@implementation VCPMADPECAssetBatch

- (id)resultFromVISearchResults:(id)a3
{
  v28 = a3;
  v36 = objc_alloc_init(NSMutableDictionary);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v28;
  v31 = [obj countByEnumeratingWithState:&v41 objects:v50 count:{16, v28}];
  if (v31)
  {
    v30 = *v42;
    type = VCPLogToOSLogType[7];
    v39 = VCPLogToOSLogType[3];
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v35 = [*(*(&v41 + 1) + 8 * i) regionOfInterestResults];
        if (MediaAnalysisLogLevel() > 6 && os_log_type_enabled(&_os_log_default, type))
        {
          v3 = [v35 count];
          *buf = 67109120;
          *v46 = v3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PEC] %d ROIs", buf, 8u);
        }

        v37 = 0;
        while (2)
        {
          if (v37 < [v35 count])
          {
            context = objc_autoreleasePoolPush();
            v4 = [v35 objectAtIndexedSubscript:v37];
            v5 = [v4 resultItems];

            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              v6 = [v5 count];
              *buf = 67109376;
              *v46 = v6;
              *&v46[4] = 1024;
              *&v46[6] = v37;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PEC] %d items in ROI-%d", buf, 0xEu);
            }

            v7 = 0;
LABEL_15:
            if (v7 >= [v5 count])
            {

              objc_autoreleasePoolPop(context);
              ++v37;
              continue;
            }

            v8 = [v5 objectAtIndexedSubscript:v7];
            v9 = [v8 searchableKnowledgeObject];

            if (v9)
            {
              v10 = +[PHSceneClassification mad_typeFromCSUIdType:](PHSceneClassification, "mad_typeFromCSUIdType:", [v9 idType]);
              if (v10 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v39))
                {
                  v11 = [v9 idType];
                  *buf = 67109120;
                  *v46 = v11;
                  v12 = v39;
                  v13 = "[PEC] Unexpected CSUSearchableKnowledgeObjectIdType %d";
                  v14 = 8;
                  goto LABEL_24;
                }
              }

              else
              {
                entityStore = self->_entityStore;
                v40 = 0;
                [(CSUSearchableKnowledgeObjectStore *)entityStore storeEntity:v9 uniqueIdWriteback:0 error:&v40];
                v16 = v40;
                if (v16)
                {
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v39))
                  {
                    v17 = [v9 qid];
                    v18 = [v9 localizedLabelDictionary];
                    v19 = [v18 allValues];
                    *buf = 134218498;
                    *v46 = v17;
                    *&v46[8] = 2112;
                    v47 = v19;
                    v48 = 2112;
                    v49 = v16;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[PEC] Failed to store entity (%llu, %@) with error (%@)", buf, 0x20u);
                  }
                }

                else
                {
                  v20 = [PHSceneClassification alloc];
                  v21 = [v9 qid];
                  [v9 confidenceValue];
                  v22 = [v20 initWithExtendedSceneIdentifier:v21 confidence:v10 boundingBox:? startTime:? duration:? classificationType:?];
                  if (v22)
                  {
                    v23 = [NSNumber numberWithInteger:v10];
                    v24 = [v36 objectForKeyedSubscript:v23];
                    v25 = [NSMutableArray arrayWithArray:v24];

                    [v25 addObject:v22];
                    v26 = [NSNumber numberWithInteger:v10];
                    [v36 setObject:v25 forKeyedSubscript:v26];
                  }

                  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v39))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "[PEC] failed to create the sceneClassification object", buf, 2u);
                  }
                }
              }
            }

            else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v39))
            {
              *buf = 67109376;
              *v46 = v37;
              *&v46[4] = 1024;
              *&v46[6] = v7;
              v12 = v39;
              v13 = "[PEC] ROI-%d item-%d: Empty CSUSearchableKnowledgeObject";
              v14 = 14;
LABEL_24:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v13, buf, v14);
            }

            ++v7;
            goto LABEL_15;
          }

          break;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v31);
  }

  return v36;
}

- (VCPMADPECAssetBatch)initWithServicePool:(id)a3 analysisDatabase:(id)a4 cancelBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = VCPMADPECAssetBatch;
  v12 = [(VCPMADPECAssetBatch *)&v24 init];
  if (v12)
  {
    v13 = +[NSMutableArray array];
    assetEntries = v12->_assetEntries;
    v12->_assetEntries = v13;

    v15 = v12->_assetEntries;
    if (v15)
    {
      objc_storeStrong(&v12->_servicePool, a3);
      objc_storeStrong(&v12->_analysisDatabase, a4);
      v16 = objc_retainBlock(v11);
      cancelBlock = v12->_cancelBlock;
      v12->_cancelBlock = v16;

      v18 = dispatch_semaphore_create(0);
      processSemaphore = v12->_processSemaphore;
      v12->_processSemaphore = v18;

      v15 = v12->_processSemaphore;
      if (v15)
      {
        v20 = dispatch_group_create();
        processGroup = v12->_processGroup;
        v12->_processGroup = v20;

        if (v12->_processGroup)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0;
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v22 = v15;

  return v22;
}

+ (id)batchWithServicePool:(id)a3 analysisDatabase:(id)a4 cancelBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithServicePool:v8 analysisDatabase:v9 cancelBlock:v10];

  return v11;
}

- (void)addPhotosAsset:(id)a3 withPreviousStatus:(unint64_t)a4 attempts:(unint64_t)a5 andAttemptDate:(id)a6
{
  v8 = a3;
  v22 = a6;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_assetEntries;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v23 + 1) + 8 * i) asset];
        v14 = [v13 localIdentifier];
        v15 = [v8 localIdentifier];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v18 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v18))
            {
              v19 = [v8 localIdentifier];
              *buf = 138412290;
              v28 = v19;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[PEC][%@] Batch already contains asset; ignoring", buf, 0xCu);
            }
          }

          goto LABEL_13;
        }
      }

      v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  assetEntries = self->_assetEntries;
  v9 = [VCPMADPECAssetEntry entryWithAsset:v8 previousStatus:a4 previousAttempts:a5 andLastAttemptDate:v22];
  [(NSMutableArray *)assetEntries addObject:v9];
LABEL_13:
}

- (int)prepare
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v6 = VCPMAQoSDescription();
      *buf = 67109378;
      v51 = v5;
      v52 = 2112;
      v53 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[PEC] Preparing %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  v7 = +[NSDate now];
  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v8 = VCPSignPostLog();
    v9 = os_signpost_id_generate(v8);

    v10 = VCPSignPostLog();
    v11 = v10;
    if (&v9[-1].super.super.isa + 7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMADPECAssetEntry_Prepare", "", buf, 2u);
    }

    v12 = [(NSMutableArray *)self->_assetEntries firstObject];
    v13 = [v12 asset];
    v14 = [v13 photoLibrary];

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1001072F8;
    v47[3] = &unk_100282938;
    v47[4] = self;
    v48 = v7;
    v46 = 0;
    v15 = [v14 mad_performAnalysisDataStoreChanges:v47 error:&v46];
    v16 = v46;
    v17 = v16;
    if (v15)
    {
      v18 = VCPSignPostLog();
      v19 = v18;
      if (&v9[-1].super.super.isa + 7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v9, "VCPMADPECAssetEntry_Prepare", "", buf, 2u);
      }
    }

    else
    {
      LODWORD(v9) = [v16 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v34 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          v35 = [(NSMutableArray *)self->_assetEntries count];
          *buf = 67109378;
          v51 = v35;
          v52 = 2112;
          v53 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[PEC][MACD] Failed to prepare %d assets: %@", buf, 0x12u);
        }
      }
    }

    if (v15)
    {
LABEL_41:
      LODWORD(v9) = 0;
    }
  }

  else
  {
    v20 = VCPSignPostLog();
    spid = os_signpost_id_generate(v20);

    v21 = VCPSignPostLog();
    v22 = v21;
    v40 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADPECAssetEntry_LegacyPrepare", "", buf, 2u);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = self->_assetEntries;
    v23 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v23)
    {
      v24 = *v43;
      while (2)
      {
        v25 = 0;
        v26 = v2;
        do
        {
          if (*v43 != v24)
          {
            objc_enumerationMutation(v9);
          }

          v27 = *(*(&v42 + 1) + 8 * v25);
          analysisDatabase = self->_analysisDatabase;
          v29 = [v27 previousAttempts];
          v30 = [v27 asset];
          v31 = [(VCPDatabaseWriter *)analysisDatabase setAttempts:v29 + 1 asset:v30 taskID:16 status:1 lastAttemptDate:v7];

          if (v31 == -108)
          {
            v2 = v31;
          }

          else
          {
            v32 = v31 == -36 || v31 == -23;
            v2 = v31;
            if (!v32)
            {
              v2 = v26;
            }
          }

          if (v31 == -108 || (v31 != -36 ? (v33 = v31 == -23) : (v33 = 1), v33))
          {

            LODWORD(v9) = v2;
            goto LABEL_42;
          }

          v25 = v25 + 1;
          v26 = v2;
        }

        while (v23 != v25);
        v23 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v42 objects:v49 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v37 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
    if (v37 == -108 || v37 == -36)
    {
      LODWORD(v9) = v37;
    }

    else
    {
      LODWORD(v9) = v37;
      if (v37 != -23)
      {
        LODWORD(v9) = v2;
      }
    }

    if (v37 != -108 && v37 != -36 && v37 != -23)
    {
      v38 = VCPSignPostLog();
      v39 = v38;
      if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADPECAssetEntry_LegacyPrepare", "", buf, 2u);
      }

      goto LABEL_41;
    }
  }

LABEL_42:

  return v9;
}

- (unint64_t)processAssetBatchWithVIService:(id)a3
{
  v111 = a3;
  v4 = MediaAnalysisLogLevel();
  type = VCPLogToOSLogType[6];
  if (v4 >= 6 && os_log_type_enabled(&_os_log_default, type))
  {
    v5 = [(NSMutableArray *)self->_assetEntries count];
    qos_class_self();
    v6 = VCPMAQoSDescription();
    *buf = 67109378;
    *&buf[4] = v5;
    *&buf[8] = 2112;
    *&buf[10] = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PEC] Processing %d assets (QoS: %@)", buf, 0x12u);
  }

  v7 = 0;
  v109 = VCPLogToOSLogType[5];
  v112 = VCPLogToOSLogType[4];
  v105 = VIQueryContextLocationKey;
  v104 = VIQueryContextImageTypeKey;
  v110 = VCPLogToOSLogType[7];
  v102 = VCPPhotosPECProcessingVersion;
  while (v7 < [(NSMutableArray *)self->_assetEntries count])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = +[VCPWatchdog sharedWatchdog];
    [v9 pet];

    cancelBlock = self->_cancelBlock;
    if (!cancelBlock || !cancelBlock[2]())
    {
      v12 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v7];
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
      {
        v13 = [v12 asset];
        v14 = [v13 localIdentifier];
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[PEC][%@] Processing asset", buf, 0xCu);
      }

      v15 = [v12 asset];
      v16 = [v15 adjustmentVersion];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = [v12 asset];
        v19 = [v18 vcp_needsVisualSearchProcessing];

        if (v19)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v110))
          {
            v20 = [v12 asset];
            v21 = [v20 localIdentifier];
            *buf = 138412290;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v110, "[PEC][%@] Asset does not have up-to-date VS Processing", buf, 0xCu);
          }

          v22 = 4294967278;
          goto LABEL_25;
        }

        v25 = [v12 asset];
        v115 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v25];

        v26 = [v115 vcp_thumbnailResource];
        v113 = v26;
        if (v26)
        {
          if ([v26 isLocallyAvailable])
          {
            v27 = VCPSignPostLog();
            v28 = os_signpost_id_generate(v27);

            v29 = VCPSignPostLog();
            v30 = v29;
            if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "VCPMADPECAssetBatch_Decode", "", buf, 2u);
            }

            v31 = +[VCPImageManager sharedImageManager];
            v32 = [v113 privateFileURL];
            v141 = [v31 pixelBufferWithFormat:875704438 fromImageURL:v32 flushCache:0];

            v33 = VCPSignPostLog();
            v34 = v33;
            if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, v28, "VCPMADPECAssetBatch_Decode", "", buf, 2u);
            }

            if (v141)
            {
              v35 = [v12 asset];
              v108 = [VCPMADServiceImageAsset assetWithPhotosAsset:v35 clientBundleID:0 clientTeamID:0];

              if (v108)
              {
                v100 = [v108 vcp_annotationWithTypes:7];
                if (v100)
                {
                  v103 = +[NSMutableDictionary dictionary];
                  v36 = [v108 location];
                  v37 = v36 == 0;

                  if (!v37)
                  {
                    v38 = [v108 location];
                    [v103 setObject:v38 forKeyedSubscript:v105];
                  }

                  if ([v108 isScreenshot])
                  {
                    [v103 setObject:&off_100294A70 forKeyedSubscript:v104];
                  }

                  v140 = 0;
                  v99 = [VIQueryContext contextWithDictionary:v103 error:&v140];
                  v98 = v140;
                  if (v98 || !v99)
                  {
                    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
                    {
                      v62 = [v12 asset];
                      v63 = [v62 localIdentifier];
                      *buf = 138412546;
                      *&buf[4] = v63;
                      *&buf[12] = 2112;
                      *&buf[14] = v98;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Failed to create query context (%@)", buf, 0x16u);
                    }

                    [v12 setStatus:4294967278];
                  }

                  else
                  {
                    v97 = [VIVisualQuery queryWithPixelBuffer:v141 orientation:1 normalizedRegionOfInterest:v100 annotation:v99 queryContext:0.0, 0.0, 1.0, 1.0];
                    if (v97)
                    {
                      v39 = [v12 asset];
                      v96 = [v39 visualSearchProperties];

                      v40 = [v96 visualSearchData];
                      v41 = v40 == 0;

                      if (v41)
                      {
                        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v110))
                        {
                          v66 = [v12 asset];
                          v67 = [v66 localIdentifier];
                          *buf = 138412290;
                          *&buf[4] = v67;
                          _os_log_impl(&_mh_execute_header, &_os_log_default, v110, "[PEC][%@] Asset visual search data is empty", buf, 0xCu);
                        }

                        [v12 setVersion:{v102, v96}];
                      }

                      else
                      {
                        *buf = 0;
                        *&buf[8] = buf;
                        *&buf[16] = 0x3032000000;
                        v151 = sub_100108C24;
                        v152 = sub_100108C34;
                        v153 = 0;
                        v134 = 0;
                        v135 = &v134;
                        v136 = 0x3032000000;
                        v137 = sub_100108C24;
                        v138 = sub_100108C34;
                        v139 = 0;
                        v42 = VCPSignPostLog();
                        v43 = os_signpost_id_generate(v42);

                        v44 = VCPSignPostLog();
                        v45 = v44;
                        if (v43 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
                        {
                          LOWORD(v145) = 0;
                          _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_BEGIN, v43, "VIService_PECParsing", "", &v145, 2u);
                        }

                        dispatch_group_enter(self->_processGroup);
                        v46 = [v111 object];
                        v47 = [v96 visualSearchData];
                        v127[0] = _NSConcreteStackBlock;
                        v127[1] = 3221225472;
                        v127[2] = sub_100108C3C;
                        v127[3] = &unk_100286480;
                        v132 = v43;
                        v133 = 0;
                        v48 = v12;
                        v129 = self;
                        v130 = buf;
                        v131 = &v134;
                        v107 = v48;
                        v128 = v48;
                        v49 = [v46 getEncryptedSearchDomainsWithVisualQuery:v97 cachedResults:v47 completion:v127];

                        dispatch_semaphore_wait(self->_processSemaphore, 0xFFFFFFFFFFFFFFFFLL);
                        if ([v107 status])
                        {
                          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
                          {
                            v50 = [v107 asset];
                            v51 = [v50 localIdentifier];
                            LODWORD(v145) = 138412290;
                            *(&v145 + 4) = v51;
                            _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Failed with parseWithVisualQuery", &v145, 0xCu);
                          }
                        }

                        else
                        {
                          v68 = *(*&buf[8] + 40);
                          if (!v68 || ([v68 visualUnderstanding], v69 = objc_claimAutoreleasedReturnValue(), v70 = v69 == 0, v69, v70))
                          {
                            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
                            {
                              v87 = [v107 asset];
                              v88 = [v87 localIdentifier];
                              LODWORD(v145) = 138412290;
                              *(&v145 + 4) = v88;
                              _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Failed to obtain VI parsing result", &v145, 0xCu);
                            }

                            [v107 setStatus:{4294967278, v96}];
                          }

                          else if ([v135[5] count])
                          {
                            v71 = v141;
                            v72 = [*(*&buf[8] + 40) visualUnderstanding];
                            v73 = [v72 imageRegions];
                            v74 = [*(*&buf[8] + 40) visualUnderstanding];
                            v75 = [v74 payload];
                            v106 = [VIParsedVisualQuery queryWithPixelBuffer:v71 orientation:1 imageRegions:v73 textBlockAnnotation:0 queryContext:v99 payload:v75];

                            if (v106)
                            {
                              *&v145 = 0;
                              *(&v145 + 1) = &v145;
                              v146 = 0x3032000000;
                              v147 = sub_100108C24;
                              v148 = sub_100108C34;
                              v149 = +[NSMutableArray array];
                              v125 = 0u;
                              v126 = 0u;
                              v123 = 0u;
                              v124 = 0u;
                              obj = v135[5];
                              v76 = [obj countByEnumeratingWithState:&v123 objects:v144 count:16];
                              if (v76)
                              {
                                v77 = *v124;
                                do
                                {
                                  for (i = 0; i != v76; i = i + 1)
                                  {
                                    if (*v124 != v77)
                                    {
                                      objc_enumerationMutation(obj);
                                    }

                                    v79 = *(*(&v123 + 1) + 8 * i);
                                    v80 = VCPSignPostLog();
                                    v81 = os_signpost_id_generate(v80);

                                    v82 = VCPSignPostLog();
                                    v83 = v82;
                                    if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
                                    {
                                      *v142 = 0;
                                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_INTERVAL_BEGIN, v81, "VIService_PECVISearch", "", v142, 2u);
                                    }

                                    dispatch_group_enter(self->_processGroup);
                                    v84 = [v111 object];
                                    v116[0] = _NSConcreteStackBlock;
                                    v116[1] = 3221225472;
                                    v116[2] = sub_100108F14;
                                    v116[3] = &unk_100286670;
                                    v121 = v81;
                                    v122 = 0;
                                    v117 = v107;
                                    v118 = v79;
                                    v119 = self;
                                    v120 = &v145;
                                    v85 = [v84 encryptedSearchWithParsedVisualQuery:v106 domain:v79 completion:v116];

                                    dispatch_semaphore_wait(self->_processSemaphore, 0xFFFFFFFFFFFFFFFFLL);
                                  }

                                  v76 = [obj countByEnumeratingWithState:&v123 objects:v144 count:16];
                                }

                                while (v76);
                              }

                              if ([v135[5] count])
                              {
                                v86 = [(VCPMADPECAssetBatch *)self resultFromVISearchResults:*(*(&v145 + 1) + 40)];
                                [v107 setResult:v86];
                              }

                              else
                              {
                                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v110))
                                {
                                  v93 = [v107 asset];
                                  v94 = [v93 localIdentifier];
                                  *v142 = 138412290;
                                  v143 = v94;
                                  _os_log_impl(&_mh_execute_header, &_os_log_default, v110, "[PEC][%@] getEncryptedSearchDomainsWithVisualQuery found no supported encrypted search domain", v142, 0xCu);
                                }

                                [v107 setVersion:{v102, v96}];
                              }

                              _Block_object_dispose(&v145, 8);
                            }

                            else
                            {
                              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
                              {
                                v91 = [v107 asset];
                                v92 = [v91 localIdentifier];
                                LODWORD(v145) = 138412290;
                                *(&v145 + 4) = v92;
                                _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Failed to create the parsed query", &v145, 0xCu);
                              }

                              [v107 setStatus:{4294967278, v96}];
                            }
                          }

                          else
                          {
                            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v110))
                            {
                              v89 = [v107 asset];
                              v90 = [v89 localIdentifier];
                              LODWORD(v145) = 138412290;
                              *(&v145 + 4) = v90;
                              _os_log_impl(&_mh_execute_header, &_os_log_default, v110, "[PEC][%@] getEncryptedSearchDomainsWithVisualQuery found no supported encrypted search domain", &v145, 0xCu);
                            }

                            [v107 setVersion:{v102, v96}];
                          }
                        }

                        _Block_object_dispose(&v134, 8);
                        _Block_object_dispose(buf, 8);
                      }
                    }

                    else
                    {
                      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
                      {
                        v64 = [v12 asset];
                        v65 = [v64 localIdentifier];
                        *buf = 138412290;
                        *&buf[4] = v65;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Failed to create the query", buf, 0xCu);
                      }

                      [v12 setStatus:4294967278];
                    }
                  }
                }

                else
                {
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
                  {
                    v60 = [v12 asset];
                    v61 = [v60 localIdentifier];
                    *buf = 138412290;
                    *&buf[4] = v61;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Failed to create annotation", buf, 0xCu);
                  }

                  [v12 setStatus:4294967278];
                }
              }

              else
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
                {
                  v58 = [v12 asset];
                  v59 = [v58 localIdentifier];
                  *buf = 138412290;
                  *&buf[4] = v59;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Failed to create imageAsset", buf, 0xCu);
                }

                [v12 setStatus:4294967278];
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
              {
                v56 = [v12 asset];
                v57 = [v56 localIdentifier];
                *buf = 138412290;
                *&buf[4] = v57;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Failed to decode thumbnail", buf, 0xCu);
              }

              [v12 setStatus:4294943494];
            }

            sub_100002CBC(&v141);
LABEL_124:

LABEL_125:
            v11 = 0;
            goto LABEL_126;
          }

          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
          {
            v54 = [v12 asset];
            v55 = [v54 localIdentifier];
            *buf = 138412290;
            *&buf[4] = v55;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Thumbnail resource not locally available", buf, 0xCu);
          }
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
        {
          v52 = [v12 asset];
          v53 = [v52 localIdentifier];
          *buf = 138412290;
          *&buf[4] = v53;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] No thumbnail resource", buf, 0xCu);
        }

        [v12 setStatus:4294943494];
        goto LABEL_124;
      }

      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v112))
      {
        v23 = [v12 asset];
        v24 = [v23 localIdentifier];
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v112, "[PEC][%@] Asset has no adjustment version", buf, 0xCu);
      }

      v22 = 4294943493;
LABEL_25:
      [v12 setStatus:v22];
      goto LABEL_125;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v109))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v109, "[PEC] Processing canceled", buf, 2u);
    }

    v11 = 1;
LABEL_126:
    objc_autoreleasePoolPop(v8);
    if (v11)
    {
      break;
    }

    ++v7;
  }

  dispatch_group_wait(self->_processGroup, 0xFFFFFFFFFFFFFFFFLL);

  return v7;
}

- (int)process
{
  v3 = VCPSignPostLog();
  spid = os_signpost_id_generate(v3);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADPECAssetEntry_Process", "", buf, 2u);
  }

  v6 = [(NSMutableArray *)self->_assetEntries firstObject];
  v7 = [v6 asset];
  v25 = [v7 photoLibrary];

  v8 = [CSUSearchableKnowledgeObjectStore mad_sharedStoreForPhotoLibrary:v25];
  entityStore = self->_entityStore;
  self->_entityStore = v8;

  if (self->_entityStore)
  {
    v10 = [(VCPObjectPool *)self->_servicePool getObject];
    v22 = v10;
    if (v10)
    {
      v11 = [(VCPMADPECAssetBatch *)self processAssetBatchWithVIService:v10];
      v23 = 0;
      v12 = 4294967168;
    }

    else
    {
      v11 = 0;
      v12 = 4294967188;
      v23 = -108;
    }

    v14 = VCPLogToOSLogType[7];
    while (v11 < [(NSMutableArray *)self->_assetEntries count])
    {
      v15 = objc_autoreleasePoolPush();
      v16 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v11];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v14))
      {
        v17 = [v16 asset];
        v18 = [v17 localIdentifier];
        *buf = 138412290;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[PEC][%@] Marking asset as canceled", buf, 0xCu);
      }

      [v16 setStatus:v12];

      objc_autoreleasePoolPop(v15);
      ++v11;
    }

    v19 = VCPSignPostLog();
    v20 = v19;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADPECAssetEntry_Process", "", buf, 2u);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[PEC] Failed to initialize CSU store", buf, 2u);
      }
    }

    v23 = -18;
  }

  return v23;
}

- (int)_propagateAssetProcessingStatus
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_assetEntries;
  v3 = 0;
  v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = objc_autoreleasePoolPush();
      v9 = [v7 status];
      if (v9 == -128)
      {
        v3 = -128;
      }

      else if ([v7 status] == -23808)
      {
        v3 = -23808;
      }

      objc_autoreleasePoolPop(v8);
      if (v9 == -128)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v3;
}

- (int)_publishProcessingStatusForPhotoLibrary:(id)a3
{
  v8 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010988C;
  v9[3] = &unk_100283AD0;
  v9[4] = self;
  v3 = [a3 mad_performAnalysisDataStoreChanges:v9 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 code];
  }

  return v6;
}

- (int)_publishProcessingStatusToLegacyDatabase
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = self->_assetEntries;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (!v3)
  {
    goto LABEL_51;
  }

  v36 = *v39;
  type = VCPLogToOSLogType[7];
  do
  {
    v4 = 0;
    v5 = v2;
    v35 = v3;
    do
    {
      if (*v39 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v38 + 1) + 8 * v4);
      v7 = objc_autoreleasePoolPush();
      v8 = [v6 asset];
      v9 = [v8 localIdentifier];
      v10 = [NSString stringWithFormat:@"[PEC][%@][Legacy]", v9];

      if (![v6 status])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
        }

        analysisDatabase = self->_analysisDatabase;
        v18 = [v6 asset];
        v19 = [v18 localIdentifier];
        v20 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:v19 andTaskID:16];

LABEL_33:
        if (v20 == -108 || v20 == -36)
        {
          v2 = v20;
        }

        else
        {
          v2 = v20;
          if (v20 != -23)
          {
            v2 = v5;
          }
        }

LABEL_38:
        v31 = 0;
        if (v20 != -108 && v20 != -36 && v20 != -23)
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      if ([v6 status] != -128)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
        }

        [v6 status];
        v21 = MADProcessingStatusForOSStatus();
        v22 = [v6 asset];
        v23 = [v6 currentAttemptDate];
        v24 = [v22 mad_nextAttemptDateForStatus:v21 currentAttemptDate:v23 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

        v25 = self->_analysisDatabase;
        v26 = [v6 asset];
        v27 = [v26 localIdentifier];
        v20 = [(VCPDatabaseWriter *)v25 updateProcessingStatus:v21 andNextAttemptDate:v24 forLocalIdentifier:v27 andTaskID:16];

        if (v20 == -108 || v20 == -36)
        {
          v2 = v20;
        }

        else
        {
          v2 = v20;
          if (v20 != -23)
          {
            v2 = v5;
          }
        }

        goto LABEL_38;
      }

      if (![v6 previousAttempts])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
        }

        v28 = self->_analysisDatabase;
        v29 = [v6 asset];
        v30 = [v29 localIdentifier];
        v20 = [(VCPDatabaseWriter *)v28 removeProcessingStatusForLocalIdentifier:v30 andTaskID:16];

        goto LABEL_33;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v43 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
      }

      v11 = self->_analysisDatabase;
      v12 = [v6 previousAttempts];
      v13 = [v6 asset];
      v14 = [v6 previousStatus];
      v15 = [v6 lastAttemptDate];
      v16 = [(VCPDatabaseWriter *)v11 setAttempts:v12 asset:v13 taskID:16 status:v14 lastAttemptDate:v15];

      if (v16 == -108 || v16 == -36)
      {
        v2 = v16;
      }

      else
      {
        v2 = v16;
        if (v16 != -23)
        {
          v2 = v5;
        }
      }

      v31 = 0;
      if (v16 != -108 && v16 != -36 && v16 != -23)
      {
LABEL_41:
        v31 = 1;
      }

LABEL_42:

      objc_autoreleasePoolPop(v7);
      if (!v31)
      {
        goto LABEL_52;
      }

      v4 = v4 + 1;
      v5 = v2;
    }

    while (v35 != v4);
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  }

  while (v3);
LABEL_51:
  LODWORD(v2) = 0;
LABEL_52:

  return v2;
}

- (int)publish
{
  v3 = VCPSignPostLog();
  spid = os_signpost_id_generate(v3);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPMADPECAssetEntry_Publish", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v8 = VCPMAQoSDescription();
      *buf = 67109378;
      *v51 = v7;
      *&v51[4] = 2112;
      *&v51[6] = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[PEC] Persisting %d assets (QoS: %@)", buf, 0x12u);
    }
  }

  if (![(NSMutableArray *)self->_assetEntries count])
  {
    return 0;
  }

  v9 = [(VCPMADPECAssetBatch *)self _propagateAssetProcessingStatus];
  v10 = +[MADStateHandler sharedStateHandler];
  [v10 addBreadcrumb:{@"[PEC] Persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

  v11 = +[VCPWatchdog sharedWatchdog];
  [v11 pet];

  v12 = +[MADStateHandler sharedStateHandler];
  [v12 enterKnownTimeoutRisk:1];

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10010A9E4;
  v48[3] = &unk_100283210;
  v48[4] = self;
  v40 = objc_retainBlock(v48);
  v13 = [(NSMutableArray *)self->_assetEntries firstObject];
  v14 = [v13 asset];
  v41 = [v14 photoLibrary];

  cancelBlock = self->_cancelBlock;
  v47 = 0;
  v16 = [v41 mad_performChangesAndWait:v40 activity:16 cancelBlock:cancelBlock extendTimeoutBlock:&stru_100286690 error:&v47];
  v17 = v47;
  v18 = +[MADStateHandler sharedStateHandler];
  [v18 exitKnownTimeoutRisk];

  v19 = +[MADStateHandler sharedStateHandler];
  [v19 addBreadcrumb:{@"[PEC] Finished persisting %d assets to Photos", -[NSMutableArray count](self->_assetEntries, "count")}];

  if ((v16 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 138412290;
        *v51 = v17;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[PEC] Failed to persist results to Photos (%@)", buf, 0xCu);
      }
    }

    if ([v17 code] == -128)
    {
      v21 = 4294967168;
    }

    else
    {
      v21 = 4294967278;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v22 = self->_assetEntries;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v23)
    {
      v24 = *v44;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v44 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v43 + 1) + 8 * i);
          v27 = objc_autoreleasePoolPush();
          if (![v26 status])
          {
            [v26 setStatus:v21];
          }

          objc_autoreleasePoolPop(v27);
        }

        v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v23);
    }

    v28 = [v17 code];
    if (v28)
    {
      v29 = v9 == 0;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      v9 = v28;
    }
  }

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v30 = [(VCPMADPECAssetBatch *)self _publishProcessingStatusForPhotoLibrary:v41];
    if (v30 && v9 == 0)
    {
      v9 = v30;
    }
  }

  if (+[VCPDatabaseWriter isLegacyPersistEnabled])
  {
    v32 = [(VCPMADPECAssetBatch *)self _publishProcessingStatusToLegacyDatabase];
    v33 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
    if (v9)
    {
      v34 = 1;
    }

    else
    {
      v34 = v32 == 0;
    }

    if (v34)
    {
      v35 = v9;
    }

    else
    {
      v35 = v32;
    }

    if (v35)
    {
      v36 = 1;
    }

    else
    {
      v36 = v33 == 0;
    }

    if (v36)
    {
      v9 = v35;
    }

    else
    {
      v9 = v33;
    }
  }

  v37 = VCPSignPostLog();
  v38 = v37;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_END, spid, "VCPMADPECAssetEntry_Publish", "", buf, 2u);
  }

  return v9;
}

@end