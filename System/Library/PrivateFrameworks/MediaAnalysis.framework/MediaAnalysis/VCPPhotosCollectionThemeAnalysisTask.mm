@interface VCPPhotosCollectionThemeAnalysisTask
+ (id)taskWithAssets:(id)assets photoLibraryURL:(id)l options:(id)options andCompletionHandler:(id)handler;
- (BOOL)run:(id *)run;
- (VCPPhotosCollectionThemeAnalysisTask)initWithAssets:(id)assets photoLibraryURL:(id)l options:(id)options andCompletionHandler:(id)handler;
- (int)run;
- (void)dealloc;
@end

@implementation VCPPhotosCollectionThemeAnalysisTask

- (VCPPhotosCollectionThemeAnalysisTask)initWithAssets:(id)assets photoLibraryURL:(id)l options:(id)options andCompletionHandler:(id)handler
{
  assetsCopy = assets;
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  if ([assetsCopy count])
  {
    v28.receiver = self;
    v28.super_class = VCPPhotosCollectionThemeAnalysisTask;
    v15 = [(VCPPhotosCollectionThemeAnalysisTask *)&v28 init];
    v16 = v15;
    if (v15)
    {
      v17 = objc_retainBlock(handlerCopy);
      completionHandler = v15->_completionHandler;
      v15->_completionHandler = v17;

      objc_storeStrong(&v15->_assets, assets);
      v19 = +[NSMutableArray array];
      bridgeEmbeddings = v15->_bridgeEmbeddings;
      v15->_bridgeEmbeddings = v19;

      v21 = [optionsCopy objectForKeyedSubscript:VCPMediaAnalysisService_AllowOnDemandOption];
      v15->_allowOnDemand = [v21 BOOLValue];

      v22 = [optionsCopy objectForKeyedSubscript:VCPMediaAnalysisService_SetGMSBackgroundTaskPriorityOption];
      v15->_setGMSBackgroundTaskPriority = [v22 BOOLValue];

      objc_storeStrong(&v15->_photoLibrary, l);
      v23 = [optionsCopy objectForKeyedSubscript:VCPPhotosCollectionUnderstanding_MinCollectionPortion];
      if (v23)
      {
        v24 = [optionsCopy objectForKeyedSubscript:VCPPhotosCollectionUnderstanding_MinCollectionPortion];
        [v24 floatValue];
        v16->_minCollectionPortion = v25;
      }

      else
      {
        v16->_minCollectionPortion = 0.8;
      }

      v16->_backboneRevision = +[VCPVideoTransformerBackbone revision];
    }

    self = v16;
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
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v9 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"CollectionThemeAnalysis task cancelled"];
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v6];
    completionHandler[2](completionHandler, 0, v7);
  }

  v8.receiver = self;
  v8.super_class = VCPPhotosCollectionThemeAnalysisTask;
  [(VCPPhotosCollectionThemeAnalysisTask *)&v8 dealloc];
}

+ (id)taskWithAssets:(id)assets photoLibraryURL:(id)l options:(id)options andCompletionHandler:(id)handler
{
  assetsCopy = assets;
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  v13 = [objc_alloc(objc_opt_class()) initWithAssets:assetsCopy photoLibraryURL:lCopy options:optionsCopy andCompletionHandler:handlerCopy];

  return v13;
}

- (BOOL)run:(id *)run
{
  v5 = VCPSignPostLog();
  spid = os_signpost_id_generate(v5);

  v6 = VCPSignPostLog();
  v7 = v6;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "VCPPhotosCollectionThemeAnalysisTask_Run", "", buf, 2u);
  }

  context = objc_autoreleasePoolPush();
  atomic_store(1u, &self->_started);
  *buf = 0;
  v197 = buf;
  v198 = 0x3032000000;
  v199 = sub_100180590;
  v200 = sub_1001805A0;
  v201 = +[NSMutableDictionary dictionary];
  v190 = 0;
  v191 = &v190;
  v192 = 0x3032000000;
  v193 = sub_100180590;
  v194 = sub_1001805A0;
  v195 = 0;
  v8 = atomic_load(&self->_cancel);
  if (v8)
  {
    if (run)
    {
      v222 = NSLocalizedDescriptionKey;
      v165 = [NSString stringWithFormat:@"[VCPPhotosCollectionThemeAnalysisTask] Task cancelled"];
      v223 = v165;
      v166 = [NSDictionary dictionaryWithObjects:&v223 forKeys:&v222 count:1];
      v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:?];
      v10 = 0;
      v11 = *run;
      *run = v9;
      goto LABEL_198;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_200;
  }

  if (([objc_opt_class() isLibraryUnderstandingAdapterAvailable] & 1) == 0)
  {
    if (run)
    {
      v220 = NSLocalizedDescriptionKey;
      v165 = [NSString stringWithFormat:@"[VCPPhotosCollectionThemeAnalysisTask] Library understanding adaptor not available through ModelCatalog"];
      v221 = v165;
      v166 = [NSDictionary dictionaryWithObjects:&v221 forKeys:&v220 count:1];
      v14 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:?];
      v10 = 0;
      v11 = *run;
      *run = v14;
      goto LABEL_198;
    }

    goto LABEL_13;
  }

  v165 = objc_alloc_init(_MADObjCModelCatalogModel);
  v163 = [VCPVideoTransformerBackbone embeddingVersionForRevision:[(_MADObjCModelCatalogModel *)v165 getBridgeEmbeddingVersion]];
  if (([VCPImageBackboneAnalyzer isBridgeVersion:v163 compatibleWithEmbeddingVersion:[VCPVideoTransformerBackbone embeddingVersionForRevision:self->_backboneRevision]]& 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v15 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        getBridgeEmbeddingVersion = [(_MADObjCModelCatalogModel *)v165 getBridgeEmbeddingVersion];
        backboneRevision = self->_backboneRevision;
        *v211 = 134218240;
        *&v211[4] = getBridgeEmbeddingVersion;
        *&v211[12] = 2048;
        *&v211[14] = backboneRevision;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[VCPPhotosCollectionThemeAnalysisTask] Bridge embedding revision %lu not compatible with VCPMUBackboneRevision %lu", v211, 0x16u);
      }
    }

    if (run)
    {
      v218 = NSLocalizedDescriptionKey;
      v219 = [NSString stringWithFormat:@"[VCPPhotosCollectionThemeAnalysisTask] Bridge embedding version not compatible"];
      v166 = v219;
      v155 = [NSDictionary dictionaryWithObjects:&v219 forKeys:&v218 count:1];
      v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:?];
      v10 = 0;
      v19 = *run;
      *run = v18;
      goto LABEL_196;
    }

    v10 = 0;
    goto LABEL_199;
  }

  v12 = self->_backboneRevision - 5;
  if (v12 >= 3)
  {
    v13 = 0;
  }

  else
  {
    v13 = [VCPMADImageEmbeddingResource sharedResourceForRevision:qword_10024CD08[v12]];
  }

  v20 = +[VCPMADResourceManager sharedManager];
  v166 = v13;
  v155 = [v20 activateResource:v13];

  imageBackbone = [v13 imageBackbone];
  LODWORD(v20) = imageBackbone == 0;

  if (v20)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v87 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v87))
      {
        *v211 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v87, "[VCPPhotosCollectionThemeAnalysisTask] Failed to create image backbone", v211, 2u);
      }
    }

    if (run)
    {
      v216 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithFormat:@"[VCPPhotosCollectionThemeAnalysisTask] Failed to create image backbone"];
      v217 = v19;
      v162 = [NSDictionary dictionaryWithObjects:&v217 forKeys:&v216 count:1];
      v88 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:?];
      v10 = 0;
      v152 = *run;
      *run = v88;

      goto LABEL_195;
    }

    v10 = 0;
    goto LABEL_197;
  }

  imageBackbone2 = [v13 imageBackbone];
  [imageBackbone2 setBypassNormalizaton:0];

  imageBackbone3 = [v13 imageBackbone];
  [imageBackbone3 setBridgeEmbeddingType:1];

  v24 = VCPSignPostLog();
  v25 = os_signpost_id_generate(v24);

  v26 = VCPSignPostLog();
  v27 = v26;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *v211 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VCPPhotosCollectionThemeAnalysisTask_CLIPEmbeddingRetrieve", "", v211, 2u);
  }

  v19 = +[NSMutableArray array];
  v162 = +[NSMutableSet set];
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v28 = self->_assets;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v186 objects:v215 count:16];
  if (v29)
  {
    v30 = *v187;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v187 != v30)
        {
          objc_enumerationMutation(v28);
        }

        uuid = [*(*(&v186 + 1) + 8 * i) uuid];
        [v19 addObject:uuid];
      }

      v29 = [(NSArray *)v28 countByEnumeratingWithState:&v186 objects:v215 count:16];
    }

    while (v29);
  }

  v32 = [NSSet setWithArray:v19];
  v33 = (v191 + 5);
  obj = v191[5];
  v151 = v32;
  v161 = [MADEmbeddingStore fetchEmbeddingsWithAssetUUIDs:"fetchEmbeddingsWithAssetUUIDs:photoLibraryURL:options:error:" photoLibraryURL:? options:? error:?];
  objc_storeStrong(v33, obj);
  v34 = VCPSignPostLog();
  v35 = v34;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *v211 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, v25, "VCPPhotosCollectionThemeAnalysisTask_CLIPEmbeddingRetrieve", "", v211, 2u);
  }

  if (v191[5])
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v36 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v36))
      {
        v37 = [v19 count];
        v38 = [v191[5] description];
        *v211 = 67109378;
        *&v211[4] = v37;
        *&v211[8] = 2112;
        *&v211[10] = v38;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "[VCPPhotosCollectionThemeAnalysisTask] Embedding fetch for %u assets failed with error: %@\n", v211, 0x12u);
      }
    }

    v39 = v191[5];
    v191[5] = 0;
    goto LABEL_39;
  }

  v89 = VCPSignPostLog();
  v148 = os_signpost_id_generate(v89);

  v90 = VCPSignPostLog();
  v91 = v90;
  if (v148 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
  {
    *v211 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v91, OS_SIGNPOST_INTERVAL_BEGIN, v148, "VCPPhotosCollectionThemeAnalysisTask_BridgeEmbeddingCompute", "", v211, 2u);
  }

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v156 = v19;
  v92 = [v156 countByEnumeratingWithState:&v181 objects:v214 count:16];
  if (v92)
  {
    v160 = *v182;
    v154 = VCPLogToOSLogType[7];
    v150 = VCPLogToOSLogType[3];
    do
    {
      *typea = v92;
      v93 = 0;
      do
      {
        if (*v182 != v160)
        {
          objc_enumerationMutation(v156);
        }

        v94 = *(*(&v181 + 1) + 8 * v93);
        v95 = atomic_load(&self->_cancel);
        if (v95)
        {
          if (run)
          {
            v212 = NSLocalizedDescriptionKey;
            v213 = [NSString stringWithFormat:@"[VCPPhotosCollectionThemeAnalysisTask] Task cancelled"];
            v159 = v213;
            v116 = [NSDictionary dictionaryWithObjects:&v213 forKeys:&v212 count:1];
            v120 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v116];
            v121 = *run;
            *run = v120;

            goto LABEL_164;
          }

          v10 = 0;
          goto LABEL_193;
        }

        uuid = [v161 objectForKeyedSubscript:*(*(&v181 + 1) + 8 * v93)];
        if ((+[VCPImageBackboneAnalyzer isBridgeVersion:compatibleWithEmbeddingVersion:](VCPImageBackboneAnalyzer, "isBridgeVersion:compatibleWithEmbeddingVersion:", v163, [uuid version]) & 1) == 0)
        {
          if (MediaAnalysisLogLevel() < 7)
          {
            goto LABEL_148;
          }

          v99 = &_os_log_default;
          v104 = &_os_log_default;
          if (!os_log_type_enabled(&_os_log_default, v154))
          {
            goto LABEL_147;
          }

          version = [uuid version];
          *v211 = 138412802;
          *&v211[4] = v94;
          *&v211[12] = 2048;
          *&v211[14] = version;
          *&v211[22] = 2048;
          *&v211[24] = v163;
          v106 = v154;
          v107 = "[VCPPhotosCollectionThemeAnalysisTask] [%@] Retrieved embedding version %lu not compatible with bridge embedding version %lu. Discard retrieved embedding\n";
          v108 = 32;
          goto LABEL_141;
        }

        if (uuid)
        {
          vectors = [uuid vectors];
          v97 = [vectors count] == 0;

          if (!v97)
          {
            vectors2 = [uuid vectors];
            v99 = [vectors2 objectAtIndexedSubscript:0];

            if (v99)
            {
              v100 = MediaAnalysisConvertFloat16ToFloat32();
              imageBackbone4 = [v166 imageBackbone];
              [imageBackbone4 computeBridgeEmbedding:v100 forType:1];

              imageBackbone5 = [v166 imageBackbone];
              bridgeEmbedding = [imageBackbone5 bridgeEmbedding];

              if (bridgeEmbedding)
              {
                [v162 addObject:v94];
                [(NSMutableArray *)self->_bridgeEmbeddings addObject:bridgeEmbedding];
              }

              else if (MediaAnalysisLogLevel() >= 3)
              {
                v110 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, v150))
                {
                  *v211 = 138412290;
                  *&v211[4] = v94;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v150, "[VCPPhotosCollectionThemeAnalysisTask] [%@] Error generating bridge embedding\n", v211, 0xCu);
                }
              }
            }

            goto LABEL_147;
          }
        }

        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_148;
        }

        v99 = &_os_log_default;
        v109 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, v150))
        {
          *v211 = 138412290;
          *&v211[4] = v94;
          v106 = v150;
          v107 = "[VCPPhotosCollectionThemeAnalysisTask] [%@] Asset has no embedding or fetching failed\n";
          v108 = 12;
LABEL_141:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v106, v107, v211, v108);
        }

LABEL_147:

LABEL_148:
        ++v93;
      }

      while (*typea != v93);
      v92 = [v156 countByEnumeratingWithState:&v181 objects:v214 count:16];
    }

    while (v92);
  }

  v111 = VCPSignPostLog();
  v39 = v111;
  if (v148 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v111))
  {
    *v211 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v148, "VCPPhotosCollectionThemeAnalysisTask_BridgeEmbeddingCompute", "", v211, 2u);
  }

LABEL_39:

  v40 = VCPSignPostLog();
  v149 = os_signpost_id_generate(v40);

  v41 = VCPSignPostLog();
  v42 = v41;
  if (v149 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *v211 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_INTERVAL_BEGIN, v149, "VCPPhotosCollectionThemeAnalysisTask_OnDemandEmbeddingCompute", "", v211, 2u);
  }

  if (!self->_allowOnDemand)
  {
LABEL_98:
    v73 = VCPSignPostLog();
    v74 = v73;
    if (v149 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
    {
      *v211 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, OS_SIGNPOST_INTERVAL_END, v149, "VCPPhotosCollectionThemeAnalysisTask_OnDemandEmbeddingCompute", "", v211, 2u);
    }

    [v155 reset];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v75 = &_os_log_default;
      v76 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v76))
      {
        v77 = [v19 count];
        v78 = [v162 count];
        v79 = [(NSMutableArray *)self->_bridgeEmbeddings count];
        *v211 = 134218496;
        *&v211[4] = v77;
        *&v211[12] = 2048;
        *&v211[14] = v78;
        *&v211[22] = 2048;
        *&v211[24] = v79;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v76, "[VCPPhotosCollectionThemeAnalysisTask] Total number of assets: %lu, number of assets with valid pre-computed embeddings: %lu, and total computed bridge embeddings: %lu", v211, 0x20u);
      }
    }

    v80 = [(NSArray *)self->_assets count];
    minCollectionPortion = self->_minCollectionPortion;
    if (MediaAnalysisLogLevel() >= 7)
    {
      v82 = &_os_log_default;
      v83 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v83))
      {
        v84 = self->_minCollectionPortion;
        *v211 = 134218240;
        *&v211[4] = v84;
        *&v211[12] = 2048;
        *&v211[14] = fmaxf(fminf(v84, 1.0), 0.0);
        _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "[VCPPhotosCollectionThemeAnalysisTask] MinCollectionPortion value: %f, clippedValue: %f", v211, 0x16u);
      }
    }

    LODWORD(uuid) = vcvtms_s32_f32(fmaxf(fminf(minCollectionPortion, 1.0), 0.0) * v80);
    if ([(NSMutableArray *)self->_bridgeEmbeddings count]>= uuid && [(NSMutableArray *)self->_bridgeEmbeddings count])
    {
      v85 = atomic_load(&self->_cancel);
      if ((v85 & 1) == 0)
      {
        v156 = +[VCPMADCollectionUnderstandingResource sharedResource];
        v122 = +[VCPMADResourceManager sharedManager];
        v159 = [v122 activateResource:v156];

        themeGenerator = [v156 themeGenerator];
        LODWORD(v122) = themeGenerator == 0;

        if (v122)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v133 = &_os_log_default;
            v134 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v134))
            {
              *v211 = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v134, "[VCPPhotosCollectionThemeAnalysisTask] Failed to create theme generator", v211, 2u);
            }
          }

          if (!run)
          {
LABEL_181:
            v10 = 0;
            goto LABEL_192;
          }

          v202 = NSLocalizedDescriptionKey;
          v116 = [NSString stringWithFormat:@"[VCPPhotosCollectionThemeAnalysisTask] Failed to create theme generator"];
          v203 = v116;
          v135 = [NSDictionary dictionaryWithObjects:&v203 forKeys:&v202 count:1];
          v136 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v135];
          v137 = *run;
          *run = v136;

          v10 = 0;
        }

        else
        {
          v124 = VCPSignPostLog();
          v125 = os_signpost_id_generate(v124);

          v126 = VCPSignPostLog();
          v127 = v126;
          if (v125 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v126))
          {
            *v211 = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v127, OS_SIGNPOST_INTERVAL_BEGIN, v125, "VCPPhotosCollectionThemeAnalysisTask_LLMInference", "", v211, 2u);
          }

          v128 = dispatch_semaphore_create(0);
          themeGenerator2 = [v156 themeGenerator];
          bridgeEmbeddings = self->_bridgeEmbeddings;
          setGMSBackgroundTaskPriority = self->_setGMSBackgroundTaskPriority;
          v170[0] = _NSConcreteStackBlock;
          v170[1] = 3221225472;
          v170[2] = sub_1001805B0;
          v170[3] = &unk_100287E78;
          v172 = &v190;
          v173 = buf;
          v116 = v128;
          v171 = v116;
          [themeGenerator2 generateThemesMM:bridgeEmbeddings setGMSBackgroundTaskPriority:setGMSBackgroundTaskPriority completion:v170];

          dispatch_semaphore_wait(v116, 0xFFFFFFFFFFFFFFFFLL);
          v132 = v191[5];
          v10 = v132 == 0;
          if (v132)
          {
            if (run)
            {
              objc_storeStrong(run, v132);
            }
          }

          else
          {
            v138 = VCPSignPostLog();
            v139 = v138;
            if (v125 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v138))
            {
              *v211 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v139, OS_SIGNPOST_INTERVAL_END, v125, "VCPPhotosCollectionThemeAnalysisTask_LLMInference", "", v211, 2u);
            }

            v140 = VCPSignPostLog();
            v141 = v140;
            if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v140))
            {
              *v211 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v141, OS_SIGNPOST_INTERVAL_END, spid, "VCPPhotosCollectionThemeAnalysisTask_Run", "", v211, 2u);
            }

            (*(self->_completionHandler + 2))();
            [(NSArray *)v159 reset];
          }

          v135 = v171;
        }

        goto LABEL_191;
      }

      if (run)
      {
        v204 = NSLocalizedDescriptionKey;
        v205 = [NSString stringWithFormat:@"[VCPPhotosCollectionThemeAnalysisTask] Task canceled"];
        v156 = v205;
        v159 = [NSDictionary dictionaryWithObjects:&v205 forKeys:&v204 count:1];
        v86 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:?];
LABEL_159:
        v10 = 0;
        v116 = *run;
        *run = v86;
        goto LABEL_191;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v112 = &_os_log_default;
        v113 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v113))
        {
          v114 = [(NSMutableArray *)self->_bridgeEmbeddings count];
          v115 = [(NSArray *)self->_assets count];
          *v211 = 134218496;
          *&v211[4] = v114;
          *&v211[12] = 1024;
          *&v211[14] = uuid;
          *&v211[18] = 2048;
          *&v211[20] = v115;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v113, "[VCPPhotosCollectionThemeAnalysisTask] %lu valid asset embeddings less than minimum number of embeddings: %d with total number of assets: %lu", v211, 0x1Cu);
        }
      }

      if (run)
      {
        v206 = NSLocalizedDescriptionKey;
        v207 = [NSString stringWithFormat:@"[VCPPhotosCollectionThemeAnalysisTask] %lu valid asset embeddings less than minimum number of embeddings: %d with total number of assets: %lu", [(NSMutableArray *)self->_bridgeEmbeddings count], uuid, [(NSArray *)self->_assets count]];
        v156 = v207;
        v159 = [NSDictionary dictionaryWithObjects:&v207 forKeys:&v206 count:1];
        v86 = [NSError errorWithDomain:NSOSStatusErrorDomain code:VCPPhotosCollectionUnderstanding_InsufficientEmbeddingsErrorCode userInfo:?];
        goto LABEL_159;
      }
    }

    v10 = 0;
    goto LABEL_194;
  }

  v156 = +[VCPImageManager sharedImageManager];
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v159 = self->_assets;
  uuid = [(NSArray *)v159 countByEnumeratingWithState:&v177 objects:v210 count:16];
  if (!uuid)
  {
LABEL_97:

    goto LABEL_98;
  }

  v164 = *v178;
  type = VCPLogToOSLogType[6];
  v143 = VCPLogToOSLogType[5];
  v153 = VCPLogToOSLogType[3];
  v146 = MediaAnalysisImageEmbeddingResultsKey;
  v147 = MediaAnalysisResultAttributesKey;
  v145 = MediaAnalysisResultBridgeEmbeddingAttributeKey;
  v144 = MediaAnalysisResultEmbeddingVersionAttributeKey;
LABEL_45:
  v43 = 0;
  while (1)
  {
    if (*v178 != v164)
    {
      objc_enumerationMutation(v159);
    }

    v44 = *(*(&v177 + 1) + 8 * v43);
    v45 = atomic_load(&self->_cancel);
    if (v45)
    {
      break;
    }

    uuid2 = [*(*(&v177 + 1) + 8 * v43) uuid];
    v47 = [v162 containsObject:uuid2];

    if ((v47 & 1) == 0)
    {
      cf = 0;
      if ([v44 mediaType] == 1)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v48 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, type))
          {
            localIdentifier = [v44 localIdentifier];
            *v211 = 138412290;
            *&v211[4] = localIdentifier;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[VCPPhotosCollectionThemeAnalysisTask][%@] Compute image embedding on-demand", v211, 0xCu);
          }
        }

        vcp_thumbnailResource = [VCPMADServiceImageAsset assetWithPhotosAsset:v44 clientBundleID:0 clientTeamID:0];
        if (vcp_thumbnailResource)
        {
          v175 = 0;
          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if ([vcp_thumbnailResource loadPixelBuffer:&cf orientation:&v175])
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v51 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v153))
              {
                localIdentifier2 = [v44 localIdentifier];
                *v211 = 138412290;
                *&v211[4] = localIdentifier2;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v153, "[VCPPhotosCollectionThemeAnalysisTask][%@] Image loading failed", v211, 0xCu);
              }

              goto LABEL_87;
            }

            goto LABEL_88;
          }

LABEL_72:

LABEL_73:
          imageBackbone6 = [v166 imageBackbone];
          v174 = 0;
          v59 = [imageBackbone6 analyzePixelBuffer:cf flags:0 results:&v174 cancel:&stru_100287E50];
          v60 = v174;

          if (v59)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              vcp_thumbnailResource = &_os_log_default;
              v61 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v153))
              {
                localIdentifier3 = [v44 localIdentifier];
                *v211 = 138412290;
                *&v211[4] = localIdentifier3;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v153, "[VCPPhotosCollectionThemeAnalysisTask][%@] Failed to generate embedding", v211, 0xCu);
              }

              goto LABEL_93;
            }

LABEL_94:

            sub_100002CBC(&cf);
            goto LABEL_95;
          }

          vcp_thumbnailResource = [v60 objectForKeyedSubscript:v146];
          if ([vcp_thumbnailResource count])
          {
            v65 = [vcp_thumbnailResource objectAtIndexedSubscript:0];
            v66 = [v65 objectForKeyedSubscript:v147];
            v67 = [v66 objectForKeyedSubscript:v145];

            v68 = [vcp_thumbnailResource objectAtIndexedSubscript:0];
            v69 = [v68 objectForKeyedSubscript:v147];
            v70 = [v69 objectForKeyedSubscript:v144];

            if (v67)
            {
              [(NSMutableArray *)self->_bridgeEmbeddings addObject:v67];
            }
          }

          else
          {
            v67 = 0;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            v60 = 0;
            goto LABEL_94;
          }

          v63 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, v153))
          {
            localIdentifier4 = [v44 localIdentifier];
            *v211 = 138412290;
            *&v211[4] = localIdentifier4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v153, "[VCPPhotosCollectionThemeAnalysisTask][%@] Failed to create imageAsset", v211, 0xCu);
          }

          v60 = 0;
          vcp_thumbnailResource = &_os_log_default;
        }
      }

      else
      {
        if ([v44 mediaType] != 2)
        {
          goto LABEL_73;
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v53 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, type))
          {
            localIdentifier5 = [v44 localIdentifier];
            *v211 = 138412290;
            *&v211[4] = localIdentifier5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[VCPPhotosCollectionThemeAnalysisTask][%@] Compute video thumbnail embedding on-demand", v211, 0xCu);
          }
        }

        v55 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v44];
        vcp_thumbnailResource = [v55 vcp_thumbnailResource];

        if ([vcp_thumbnailResource vcp_isLocallyAvailable])
        {
          privateFileURL = [vcp_thumbnailResource privateFileURL];
          v57 = [v156 pixelBufferWithFormat:875704438 fromImageURL:privateFileURL flushCache:0];
          *v211 = v57;
          if (cf)
          {
            CFRelease(cf);
            v57 = *v211;
          }

          cf = v57;
          *v211 = 0;
          sub_100002CBC(v211);

          goto LABEL_72;
        }

        if (MediaAnalysisLogLevel() >= 5)
        {
          v71 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, v143))
          {
            localIdentifier6 = [v44 localIdentifier];
            *v211 = 138412290;
            *&v211[4] = localIdentifier6;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v143, "[VCPPhotosCollectionThemeAnalysisTask][%@] Movie thumbnail resource not locally available; skipping resource", v211, 0xCu);
          }

LABEL_87:
        }

LABEL_88:
        v60 = 0;
      }

LABEL_93:

      goto LABEL_94;
    }

LABEL_95:
    if (uuid == ++v43)
    {
      uuid = [(NSArray *)v159 countByEnumeratingWithState:&v177 objects:v210 count:16];
      if (uuid)
      {
        goto LABEL_45;
      }

      goto LABEL_97;
    }
  }

  if (!run)
  {
    goto LABEL_181;
  }

  v208 = NSLocalizedDescriptionKey;
  v116 = [NSString stringWithFormat:@"[VCPPhotosCollectionThemeAnalysisTask] Task cancelled"];
  v209 = v116;
  v117 = [NSDictionary dictionaryWithObjects:&v209 forKeys:&v208 count:1];
  v118 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v117];
  v119 = *run;
  *run = v118;

LABEL_164:
  v10 = 0;
LABEL_191:

LABEL_192:
LABEL_193:

LABEL_194:
LABEL_195:

LABEL_196:
LABEL_197:
  v11 = v155;
LABEL_198:

LABEL_199:
LABEL_200:
  _Block_object_dispose(&v190, 8);

  _Block_object_dispose(buf, 8);
  objc_autoreleasePoolPop(context);
  return v10;
}

- (int)run
{
  v7 = 0;
  if ([(VCPPhotosCollectionThemeAnalysisTask *)self run:&v7])
  {
    code = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = [v7 description];
        *buf = 138412290;
        v9 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[VCPPhotosCollectionThemeAnalysisTask] CollectionTheme task failed (%@)", buf, 0xCu);
      }
    }

    (*(self->_completionHandler + 2))();
    code = [v7 code];
  }

  return code;
}

@end