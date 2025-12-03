@interface VCPCompoundMADTask
+ (id)taskWithPhotoLibrary:(id)library forVCPTaskIDs:(id)ds andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler andCancelBlock:(id)block;
- (BOOL)isCanceled;
- (BOOL)run:(id *)run;
- (VCPCompoundMADTask)initWithVCPMADTasks:(id)tasks andCompletionHandler:(id)handler andCancelBlock:(id)block;
- (int)run;
- (void)cancel;
- (void)dealloc;
@end

@implementation VCPCompoundMADTask

+ (id)taskWithPhotoLibrary:(id)library forVCPTaskIDs:(id)ds andOptions:(id)options andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler andCancelBlock:(id)block
{
  libraryCopy = library;
  dsCopy = ds;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  blockCopy = block;
  v16 = [dsCopy count];
  if (v16)
  {
    v89 = [NSMutableArray arrayWithCapacity:v16];
    v17 = 1.0 / v16;
    if ([dsCopy containsObject:&off_100294038])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v170[0] = _NSConcreteStackBlock;
      v170[1] = 3221225472;
      v170[2] = sub_10000D9F4;
      v170[3] = &unk_100282CE8;
      v172 = buf;
      v174 = 1.0 / v16;
      v171 = handlerCopy;
      v173 = 0;
      v18 = objc_retainBlock(v170);
      v169[0] = _NSConcreteStackBlock;
      v169[1] = 3221225472;
      v169[2] = sub_10000DB14;
      v169[3] = &unk_100282D10;
      v169[4] = buf;
      v19 = objc_retainBlock(v169);
      v203 = libraryCopy;
      v20 = [NSArray arrayWithObjects:&v203 count:1];
      v21 = [VCPMADSceneLibraryProcessingTask taskWithPhotoLibraries:v20 cancelBlock:blockCopy progressHandler:v18 andCompletionHandler:v19];
      [v89 addObject:v21];

      _Block_object_dispose(buf, 8);
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    if ([dsCopy containsObject:&off_100294050])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v164[0] = _NSConcreteStackBlock;
      v164[1] = 3221225472;
      v164[2] = sub_10000DBEC;
      v164[3] = &unk_100282D38;
      v166 = buf;
      v168 = v17;
      v165 = handlerCopy;
      v167 = v22;
      v24 = objc_retainBlock(v164);
      v163[0] = _NSConcreteStackBlock;
      v163[1] = 3221225472;
      v163[2] = sub_10000DD0C;
      v163[3] = &unk_100282D10;
      v163[4] = buf;
      v25 = objc_retainBlock(v163);
      v200 = libraryCopy;
      v201 = @"PhotoLibrary";
      v26 = [NSArray arrayWithObjects:&v200 count:1];
      v202 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v202 forKeys:&v201 count:1];
      v28 = [MADUnifiedProcessingTask taskWithCancelBlock:blockCopy taskID:3 options:v27 progressHandler:v24 andCompletionHandler:v25];
      [v89 addObject:v28];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_100294068])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v158[0] = _NSConcreteStackBlock;
      v158[1] = 3221225472;
      v158[2] = sub_10000DDE4;
      v158[3] = &unk_100282D38;
      v160 = buf;
      v162 = v17;
      v159 = handlerCopy;
      v161 = v22;
      v29 = objc_retainBlock(v158);
      v157[0] = _NSConcreteStackBlock;
      v157[1] = 3221225472;
      v157[2] = sub_10000DF04;
      v157[3] = &unk_100282D10;
      v157[4] = buf;
      v30 = objc_retainBlock(v157);
      v199 = libraryCopy;
      v31 = [NSArray arrayWithObjects:&v199 count:1];
      v32 = [VCPRequestPersonProcessingTask taskWithPhotoLibraries:v31 cancelBlock:blockCopy progressHandler:v29 completionHandler:v30];
      [v89 addObject:v32];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_100294080])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v152[0] = _NSConcreteStackBlock;
      v152[1] = 3221225472;
      v152[2] = sub_10000DFDC;
      v152[3] = &unk_100282D38;
      v154 = buf;
      v156 = v17;
      v153 = handlerCopy;
      v155 = v22;
      v33 = objc_retainBlock(v152);
      v151[0] = _NSConcreteStackBlock;
      v151[1] = 3221225472;
      v151[2] = sub_10000E0FC;
      v151[3] = &unk_100282D10;
      v151[4] = buf;
      v34 = objc_retainBlock(v151);
      v198 = libraryCopy;
      v35 = [NSArray arrayWithObjects:&v198 count:1];
      v36 = [MADPhotosRequestFullClusterProcessingTask taskWithPhotoLibraries:v35 cancelBlock:blockCopy progressHandler:v33 completionHandler:v34];

      [v89 addObject:v36];
      _Block_object_dispose(buf, 8);

      ++v22;
    }

    if ([dsCopy containsObject:&off_100294098])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v146[0] = _NSConcreteStackBlock;
      v146[1] = 3221225472;
      v146[2] = sub_10000E1D4;
      v146[3] = &unk_100282D38;
      v148 = buf;
      v150 = v17;
      v147 = handlerCopy;
      v149 = v22;
      v37 = objc_retainBlock(v146);
      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = sub_10000E2F4;
      v145[3] = &unk_100282D10;
      v145[4] = buf;
      v38 = objc_retainBlock(v145);
      v195 = libraryCopy;
      v196 = @"PhotoLibrary";
      v39 = [NSArray arrayWithObjects:&v195 count:1];
      v197 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v197 forKeys:&v196 count:1];
      v41 = [MADUnifiedProcessingTask taskWithCancelBlock:blockCopy taskID:10 options:v40 progressHandler:v37 andCompletionHandler:v38];
      [v89 addObject:v41];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_1002940B0])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v140[0] = _NSConcreteStackBlock;
      v140[1] = 3221225472;
      v140[2] = sub_10000E3CC;
      v140[3] = &unk_100282D38;
      v142 = buf;
      v144 = v17;
      v141 = handlerCopy;
      v143 = v22;
      v42 = objc_retainBlock(v140);
      v139[0] = _NSConcreteStackBlock;
      v139[1] = 3221225472;
      v139[2] = sub_10000E4EC;
      v139[3] = &unk_100282D10;
      v139[4] = buf;
      v43 = objc_retainBlock(v139);
      v192 = libraryCopy;
      v193 = @"PhotoLibrary";
      v44 = [NSArray arrayWithObjects:&v192 count:1];
      v194 = v44;
      v45 = [NSDictionary dictionaryWithObjects:&v194 forKeys:&v193 count:1];
      v46 = [MADUnifiedProcessingTask taskWithCancelBlock:blockCopy taskID:12 options:v45 progressHandler:v42 andCompletionHandler:v43];
      [v89 addObject:v46];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_1002940C8])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v134[0] = _NSConcreteStackBlock;
      v134[1] = 3221225472;
      v134[2] = sub_10000E5C4;
      v134[3] = &unk_100282CE8;
      v136 = buf;
      v138 = v17;
      v135 = handlerCopy;
      v137 = v22;
      v47 = objc_retainBlock(v134);
      v133[0] = _NSConcreteStackBlock;
      v133[1] = 3221225472;
      v133[2] = sub_10000E6E4;
      v133[3] = &unk_100282D10;
      v133[4] = buf;
      v48 = objc_retainBlock(v133);
      v191 = libraryCopy;
      v49 = [NSArray arrayWithObjects:&v191 count:1];
      v50 = [VCPLibraryProcessingTask taskWithPhotoLibraries:v49 andOptions:optionsCopy andProgressHandler:v47 andCompletionHandler:v48 andCancelBlock:blockCopy];
      [v89 addObject:v50];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_1002940E0])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v128[0] = _NSConcreteStackBlock;
      v128[1] = 3221225472;
      v128[2] = sub_10000E7BC;
      v128[3] = &unk_100282D38;
      v130 = buf;
      v132 = v17;
      v129 = handlerCopy;
      v131 = v22;
      v51 = objc_retainBlock(v128);
      v127[0] = _NSConcreteStackBlock;
      v127[1] = 3221225472;
      v127[2] = sub_10000E8DC;
      v127[3] = &unk_100282D10;
      v127[4] = buf;
      v52 = objc_retainBlock(v127);
      v53 = _os_feature_enabled_impl();
      v189[0] = @"SkipSyncGallery";
      v54 = [NSNumber numberWithBool:v53];
      v189[1] = @"PhotoLibrary";
      v190[0] = v54;
      v188 = libraryCopy;
      v55 = [NSArray arrayWithObjects:&v188 count:1];
      v190[1] = v55;
      v56 = [NSDictionary dictionaryWithObjects:v190 forKeys:v189 count:2];
      v57 = [MADUnifiedProcessingTask taskWithCancelBlock:blockCopy options:v56 progressHandler:v51 andCompletionHandler:v52];
      [v89 addObject:v57];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_1002940F8])
    {
      if (_os_feature_enabled_impl())
      {
        *buf = 0;
        v176 = buf;
        v177 = 0x3032000000;
        v178 = sub_10000D9DC;
        v179 = sub_10000D9EC;
        v180 = objc_alloc_init(VCPTimeMeasurement);
        v122[0] = _NSConcreteStackBlock;
        v122[1] = 3221225472;
        v122[2] = sub_10000E9B4;
        v122[3] = &unk_100282CE8;
        v124 = buf;
        v126 = v17;
        v123 = handlerCopy;
        v125 = v22;
        v58 = objc_retainBlock(v122);
        v121[0] = _NSConcreteStackBlock;
        v121[1] = 3221225472;
        v121[2] = sub_10000EAD4;
        v121[3] = &unk_100282D10;
        v121[4] = buf;
        v59 = objc_retainBlock(v121);
        v187 = libraryCopy;
        v60 = [NSArray arrayWithObjects:&v187 count:1];
        v61 = [VCPMADPECLibraryProcessingTask taskWithPhotoLibraries:v60 cancelBlock:blockCopy progressHandler:v58 andCompletionHandler:v59];

        if (v61)
        {
          [v89 addObject:v61];
          ++v22;
        }

        else if (MediaAnalysisLogLevel() >= 4)
        {
          v63 = VCPLogToOSLogType[4];
          if (os_log_type_enabled(&_os_log_default, v63))
          {
            photoLibraryURL = [libraryCopy photoLibraryURL];
            path = [photoLibraryURL path];
            *v185 = 138412290;
            v186 = path;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v63, "[VCPCompoundMADTask] Failed to create pecLibraryProcessingTask for Photo Library %@; skipping", v185, 0xCu);
          }
        }

        _Block_object_dispose(buf, 8);
      }

      else if (MediaAnalysisLogLevel() >= 3)
      {
        v62 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v62))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v62, "The PEC feature flag must be enabled to schedule the PEC analysis", buf, 2u);
        }
      }
    }

    if ([dsCopy containsObject:&off_100294110])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_10000EBAC;
      v116[3] = &unk_100282CE8;
      v118 = buf;
      v120 = v17;
      v117 = handlerCopy;
      v119 = v22;
      v66 = objc_retainBlock(v116);
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_10000ECCC;
      v115[3] = &unk_100282D10;
      v115[4] = buf;
      v67 = objc_retainBlock(v115);
      v184 = libraryCopy;
      v68 = [NSArray arrayWithObjects:&v184 count:1];
      v69 = [VCPPhotosMaintenanceProcessingTask taskWithPhotoLibraries:v68 andProgressHandler:v66 andCompletionHandler:v67 andCancelBlock:blockCopy];
      [v89 addObject:v69];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_100294128])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v110[0] = _NSConcreteStackBlock;
      v110[1] = 3221225472;
      v110[2] = sub_10000EDA4;
      v110[3] = &unk_100282CE8;
      v112 = buf;
      v114 = v17;
      v111 = handlerCopy;
      v113 = v22;
      v70 = objc_retainBlock(v110);
      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_10000EEC4;
      v109[3] = &unk_100282D10;
      v109[4] = buf;
      v71 = objc_retainBlock(v109);
      v183 = libraryCopy;
      v72 = [NSArray arrayWithObjects:&v183 count:1];
      v73 = [MADPhotosBackupProcessingTask taskWithPhotoLibraries:v72 andProgressHandler:v70 andCompletionHandler:v71 andCancelBlock:blockCopy];
      [v89 addObject:v73];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_100294140])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_10000EF9C;
      v104[3] = &unk_100282CE8;
      v106 = buf;
      v108 = v17;
      v105 = handlerCopy;
      v107 = v22;
      v74 = objc_retainBlock(v104);
      v103[0] = _NSConcreteStackBlock;
      v103[1] = 3221225472;
      v103[2] = sub_10000F0BC;
      v103[3] = &unk_100282D10;
      v103[4] = buf;
      v75 = objc_retainBlock(v103);
      v182 = libraryCopy;
      v76 = [NSArray arrayWithObjects:&v182 count:1];
      v77 = [MADPhotosTelemetryProcessingTask taskWithPhotoLibraries:v76 andProgressHandler:v74 andCompletionHandler:v75 andCancelBlock:blockCopy];

      v78 = [optionsCopy objectForKeyedSubscript:VCPPhotosProcessing_ForceFullScanKey];
      LOBYTE(v76) = v78 == 0;

      if ((v76 & 1) == 0)
      {
        [v77 resetBackoff];
      }

      [v89 addObject:v77];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_100294158])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_10000F194;
      v98[3] = &unk_100282CE8;
      v100 = buf;
      v102 = v17;
      v99 = handlerCopy;
      v101 = v22;
      v79 = objc_retainBlock(v98);
      v97[0] = _NSConcreteStackBlock;
      v97[1] = 3221225472;
      v97[2] = sub_10000F2B4;
      v97[3] = &unk_100282D60;
      v97[4] = buf;
      v80 = objc_retainBlock(v97);
      [*(v176 + 5) start];
      v81 = [MADPreheatingTask taskWithCancelBlock:blockCopy progressHandler:v79 completionHandler:v80];
      [v89 addObject:v81];

      _Block_object_dispose(buf, 8);
      ++v22;
    }

    if ([dsCopy containsObject:&off_100294170])
    {
      *buf = 0;
      v176 = buf;
      v177 = 0x3032000000;
      v178 = sub_10000D9DC;
      v179 = sub_10000D9EC;
      v180 = objc_alloc_init(VCPTimeMeasurement);
      v92[0] = _NSConcreteStackBlock;
      v92[1] = 3221225472;
      v92[2] = sub_10000F38C;
      v92[3] = &unk_100282CE8;
      v94 = buf;
      v96 = v17;
      v93 = handlerCopy;
      v95 = v22;
      v82 = objc_retainBlock(v92);
      v91[0] = _NSConcreteStackBlock;
      v91[1] = 3221225472;
      v91[2] = sub_10000F4AC;
      v91[3] = &unk_100282D10;
      v91[4] = buf;
      v83 = objc_retainBlock(v91);
      v181 = libraryCopy;
      v84 = [NSArray arrayWithObjects:&v181 count:1];
      v85 = [MADPhotosDatabaseMigrationProcessingTask taskWithPhotoLibraries:v84 progressHandler:v82 completionHandler:v83 cancelBlock:blockCopy];

      if (v85)
      {
        [v89 insertObject:v85 atIndex:0];
      }

      _Block_object_dispose(buf, 8);
    }

    v23 = [objc_alloc(objc_opt_class()) initWithVCPMADTasks:v89 andCompletionHandler:completionHandlerCopy andCancelBlock:blockCopy];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (VCPCompoundMADTask)initWithVCPMADTasks:(id)tasks andCompletionHandler:(id)handler andCancelBlock:(id)block
{
  tasksCopy = tasks;
  handlerCopy = handler;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = VCPCompoundMADTask;
  v12 = [(VCPCompoundMADTask *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tasks, tasks);
    v14 = objc_retainBlock(handlerCopy);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v14;

    v16 = objc_retainBlock(blockCopy);
    cancelBlock = v13->_cancelBlock;
    v13->_cancelBlock = v16;
  }

  return v13;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v11 = NSLocalizedDescriptionKey;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [NSString stringWithFormat:@"%@ canceled", v6];
    v12 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v8];
    completionHandler[2](completionHandler, v9);
  }

  v10.receiver = self;
  v10.super_class = VCPCompoundMADTask;
  [(VCPCompoundMADTask *)&v10 dealloc];
}

- (void)cancel
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_tasks;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6) cancel];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  atomic_store(1u, &self->_canceled);
}

- (BOOL)isCanceled
{
  v2 = atomic_load(&self->_canceled);
  if (v2)
  {
    LOBYTE(cancelBlock) = 1;
  }

  else
  {
    cancelBlock = self->_cancelBlock;
    if (cancelBlock)
    {
      LOBYTE(cancelBlock) = cancelBlock[2]();
    }
  }

  return cancelBlock;
}

- (BOOL)run:(id *)run
{
  if ([(NSArray *)self->_tasks count])
  {
    v5 = 0;
    while (1)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [(NSArray *)self->_tasks objectAtIndexedSubscript:v5];
      if ([(VCPCompoundMADTask *)self isCanceled])
      {
        break;
      }

      v8 = [v7 run];
      if (v8)
      {
        if (run)
        {
          nSLocalizedDescriptionKey = [NSString stringWithFormat:@"VCPTask %@ failed", v7, NSLocalizedDescriptionKey];
          v19 = nSLocalizedDescriptionKey;
          v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
          v16 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v8 userInfo:v15];
          v17 = *run;
          *run = v16;
        }

        objc_autoreleasePoolPop(v6);
        return 0;
      }

      objc_autoreleasePoolPop(v6);
      if (++v5 >= [(NSArray *)self->_tasks count])
      {
        goto LABEL_6;
      }
    }

    if (run)
    {
      v20 = NSLocalizedDescriptionKey;
      v10 = [NSString stringWithFormat:@"VCPTask %@ cancelled", v7];
      v21 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v11];
      v13 = *run;
      *run = v12;
    }

    objc_autoreleasePoolPop(v6);
    return 0;
  }

  else
  {
LABEL_6:
    (*(self->_completionHandler + 2))();
    return 1;
  }
}

- (int)run
{
  v3 = objc_autoreleasePoolPush();
  atomic_store(1u, &self->_started);
  v10 = 0;
  if ([(VCPCompoundMADTask *)self run:&v10])
  {
    code = 0;
  }

  else
  {
    if ([v10 code] != -128 && MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = [v10 description];
        *buf = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ failed (%@)", buf, 0x16u);
      }
    }

    (*(self->_completionHandler + 2))();
    code = [v10 code];
  }

  objc_autoreleasePoolPop(v3);
  return code;
}

@end