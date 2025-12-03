@interface MADPhotosFaceFastPassProcessingTask
+ (id)taskWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (BOOL)run:(id *)run;
- (MADPhotosFaceFastPassProcessingTask)initWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)_requestAssetResource:(id)resource;
@end

@implementation MADPhotosFaceFastPassProcessingTask

- (MADPhotosFaceFastPassProcessingTask)initWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000FF3A8;
  v19[3] = &unk_100284038;
  completionHandlerCopy = completionHandler;
  v20 = completionHandlerCopy;
  v18.receiver = self;
  v18.super_class = MADPhotosFaceFastPassProcessingTask;
  v11 = [(MADPhotosFaceFastPassProcessingTask *)&v18 initWithCompletionHandler:v19];
  if (v11)
  {
    if (handlerCopy)
    {
      v12 = handlerCopy;
    }

    else
    {
      v12 = &stru_100286568;
    }

    v13 = objc_retainBlock(v12);
    progressHandler = v11->_progressHandler;
    v11->_progressHandler = v13;

    v15 = dispatch_group_create();
    downloadGroup = v11->_downloadGroup;
    v11->_downloadGroup = v15;

    [(MADPhotosFaceFastPassProcessingTask *)v11 setCancelBlock:blockCopy];
  }

  return v11;
}

+ (id)taskWithCancelBlock:(id)block progressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v11 = [[self alloc] initWithCancelBlock:blockCopy progressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v11;
}

- (int)_requestAssetResource:(id)resource
{
  resourceCopy = resource;
  assetLocalIdentifier = [resourceCopy assetLocalIdentifier];
  v6 = [NSString stringWithFormat:@"[Face-FP][Download][%@]", assetLocalIdentifier];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = resourceCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Attempt to download resource: %@", buf, 0x16u);
    }
  }

  v8 = objc_alloc_init(PHAssetResourceRequestOptions);
  [v8 setNetworkAccessAllowed:1];
  [v8 setDownloadPriority:0];
  [v8 setDownloadIntent:2];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000FF868;
  v23[3] = &unk_1002837E8;
  v9 = v6;
  v24 = v9;
  [v8 setProgressHandler:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000FF93C;
  v21[3] = &unk_100283810;
  v10 = v9;
  v22 = v10;
  v11 = objc_retainBlock(v21);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000FF9F8;
  v18[3] = &unk_100285C80;
  v12 = v10;
  v19 = v12;
  selfCopy = self;
  v13 = objc_retainBlock(v18);
  v14 = +[PHAssetResourceManager defaultManager];
  v15 = [v14 requestFileURLForAssetResource:resourceCopy options:v8 urlReceivedHandler:v11 completionHandler:v13];

  if (!v15 && MediaAnalysisLogLevel() >= 3)
  {
    v16 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Failed to issue download request", buf, 0xCu);
    }
  }

  return v15;
}

- (BOOL)run:(id *)run
{
  v4 = DeviceWithGreymatterSupport();
  v5 = MediaAnalysisLogLevel();
  if ((v4 & 1) == 0)
  {
    if (v5 >= 5)
    {
      v26 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *buf = 138412290;
        v218 = @"[Face-FP]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Skip MADPhotosFaceFastPassTask on this hardware", buf, 0xCu);
      }
    }

    completionHandler = [(MADPhotosFaceFastPassProcessingTask *)self completionHandler];
    completionHandler[2](completionHandler, 0, 0);

    return 1;
  }

  runCopy = run;
  if (v5 >= 5)
  {
    v6 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *buf = 138412290;
      v218 = @"[Face-FP]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Running MADPhotosFaceFastPassTask ... ", buf, 0xCu);
    }
  }

  v7 = VCPSignPostLog();
  spid = os_signpost_id_generate(v7);

  v8 = VCPSignPostLog();
  v9 = v8;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, spid, "MADPhotosFaceFastPassProcessingTask", "", buf, 2u);
  }

  v213 = 0;
  v214 = &v213;
  v215 = 0x2020000000;
  v216 = 0;
  v209 = 0;
  v210 = &v209;
  v211 = 0x2020000000;
  v212 = 0;
  v10 = +[VCPPhotoLibraryManager sharedManager];
  v11 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v184 = [v10 photoLibraryWithURL:v11];

  if (!v184)
  {
    v248 = NSLocalizedDescriptionKey;
    photoLibraryURL = [0 photoLibraryURL];
    path = [photoLibraryURL path];
    v30 = [NSString stringWithFormat:@"%@ Failed to open Photo Library (%@)", @"[Face-FP]", path];
    v249 = v30;
    v31 = [NSDictionary dictionaryWithObjects:&v249 forKeys:&v248 count:1];
    librarySpecificFetchOptions = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v31];

    v32 = runCopy;
    if (MediaAnalysisLogLevel() >= 3)
    {
      v33 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v33))
      {
        v34 = [librarySpecificFetchOptions description];
        *buf = 138412290;
        v218 = v34;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@", buf, 0xCu);

        v32 = runCopy;
      }
    }

    if (!v32)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (([v184 isReadyForAnalysisCPLInitialDownloadCompleted] & 1) == 0)
  {
    v246 = NSLocalizedDescriptionKey;
    photoLibraryURL2 = [v184 photoLibraryURL];
    path2 = [photoLibraryURL2 path];
    v39 = [NSString stringWithFormat:@"%@ Photo Library not ready (initial download) for analysis (%@)", @"[Face-FP]", path2];
    v247 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v247 forKeys:&v246 count:1];
    librarySpecificFetchOptions = [NSError errorWithDomain:NSOSStatusErrorDomain code:-23812 userInfo:v40];

    v32 = runCopy;
    if (MediaAnalysisLogLevel() >= 3)
    {
      v41 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v41))
      {
        v42 = [librarySpecificFetchOptions description];
        *buf = 138412290;
        v218 = v42;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "%@", buf, 0xCu);

        v32 = runCopy;
      }
    }

    if (!v32)
    {
LABEL_34:
      v185 = 0;
      goto LABEL_206;
    }

LABEL_29:
    v35 = librarySpecificFetchOptions;
    v185 = 0;
    v36 = *v32;
    librarySpecificFetchOptions = v35;
    *v32 = v35;
    goto LABEL_205;
  }

  v12 = +[VCPWatchdog sharedWatchdog];
  [v12 pet];

  librarySpecificFetchOptions = [v184 librarySpecificFetchOptions];
  v13 = [NSPredicate predicateWithFormat:@"(verifiedType = %d) OR (verifiedType = %d)", 1, 2];
  [librarySpecificFetchOptions setPredicate:v13];

  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:1];
  v14 = +[MADStateHandler sharedStateHandler];
  [v14 addBreadcrumb:{@"%@ Fetching verified persons with fetchOptions: %@", @"[Face-FP]", librarySpecificFetchOptions}];

  v187 = [PHPerson fetchPersonsWithOptions:librarySpecificFetchOptions];
  v15 = +[MADStateHandler sharedStateHandler];
  [v15 addBreadcrumb:{@"%@ Fetched %lu verified persons", @"[Face-FP]", objc_msgSend(v187, "count")}];

  if (![v187 count])
  {
    if (MediaAnalysisLogLevel() >= 5)
    {
      v140 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v140))
      {
        *buf = 138412290;
        v218 = @"[Face-FP]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v140, "%@ No verified person (with visible face); exit", buf, 0xCu);
      }
    }

    completionHandler2 = [(MADPhotosFaceFastPassProcessingTask *)self completionHandler];
    completionHandler2[2](completionHandler2, 0, 0);

    v185 = 1;
    goto LABEL_204;
  }

  v170 = fmaxf(2400.0 / [v187 count], 5.0);
  v16 = fmaxf(3600.0 / [v187 count], 10.0);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v17 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v17))
    {
      *buf = 138412802;
      v218 = @"[Face-FP]";
      v219 = 1024;
      *v220 = v170;
      *&v220[4] = 1024;
      *&v220[6] = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ Budget: %d facecrop and %d assets per verified person", buf, 0x18u);
    }
  }

  v186 = [PHAsset vcp_fetchOptionsForLibrary:v184 forTaskID:3];
  [v186 setFetchLimit:v16];
  v18 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
  v245 = v18;
  v19 = [NSArray arrayWithObjects:&v245 count:1];
  [v186 setSortDescriptors:v19];

  v20 = [VUWGallery alloc];
  vcp_visionCacheStorageDirectoryURL = [v184 vcp_visionCacheStorageDirectoryURL];
  v208 = 0;
  v171 = [v20 initWithClient:0 path:vcp_visionCacheStorageDirectoryURL error:&v208];
  v167 = v208;

  if (!v171)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v142 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v142))
      {
        *buf = 138412546;
        v218 = @"[Face-FP]";
        v219 = 2112;
        *v220 = v167;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v142, "%@ Failed to load Gallery - %@", buf, 0x16u);
      }
    }

    if (runCopy)
    {
      v143 = [v167 copy];
      v185 = 0;
      v181 = *runCopy;
      *runCopy = v143;
    }

    else
    {
      v185 = 0;
    }

    goto LABEL_203;
  }

  v180 = +[NSMutableArray array];
  v179 = +[NSMutableArray array];
  for (i = 0; i < [v187 count]; ++i)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = [v187 objectAtIndexedSubscript:i];
    if ([v24 verifiedType] == 1)
    {
      v25 = v180;
    }

    else
    {
      v25 = v179;
    }

    [v25 addObject:v24];

    objc_autoreleasePoolPop(v23);
  }

  v244[0] = v180;
  v244[1] = v179;
  v43 = [NSArray arrayWithObjects:v244 count:2];
  v44 = 0;
  v162 = 0;
  v163 = 0;
  v165 = VCPLogToOSLogType[3];
  v161 = VCPLogToOSLogType[7];
  v164 = VCPLogToOSLogType[6];
  type = VCPLogToOSLogType[5];
  while (1)
  {
    v45 = [&off_1002962A8 count];
    v185 = v44 >= v45;
    if (v44 >= v45)
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    if (![(MADPhotosFaceFastPassProcessingTask *)self isCanceled])
    {
      v49 = [&off_1002962A8 count];
      v50 = [&off_1002962A8 objectAtIndexedSubscript:v44];
      integerValue = [v50 integerValue];

      v52 = VCPSignPostLog();
      v53 = os_signpost_id_generate(v52);

      v54 = VCPSignPostLog();
      v55 = v54;
      if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
      {
        *buf = 134217984;
        v218 = integerValue;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_BEGIN, v53, "MADPhotosFaceFastPassProcessingTask_FaceCrop", "VerifiedType_%ld", buf, 0xCu);
      }

      v56 = [MADPhotosFaceCropProcessingTask taskWithPhotoLibrary:v184 gallery:v171 verifiedType:integerValue limitPerPerson:v170 ignoreRejections:1];
      v207[0] = _NSConcreteStackBlock;
      v207[1] = 3221225472;
      v207[2] = sub_1001028BC;
      v207[3] = &unk_100283000;
      v207[4] = self;
      v177 = v56;
      [v56 setCancelBlock:v207];
      [v56 process];
      v57 = v44 * 100.0 / v49;
      (*(self->_progressHandler + 2))(self->_progressHandler, v57 + 25.0 / [&off_1002962A8 count]);
      v58 = VCPSignPostLog();
      v59 = v58;
      if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
      {
        *buf = 134217984;
        v218 = integerValue;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_END, v53, "MADPhotosFaceFastPassProcessingTask_FaceCrop", "VerifiedType_%ld", buf, 0xCu);
      }

      if ([(MADPhotosFaceFastPassProcessingTask *)self isCanceled])
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v218 = @"[Face-FP]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ cancelled", buf, 0xCu);
        }

        if (runCopy)
        {
          v240 = NSLocalizedDescriptionKey;
          v241 = [NSString stringWithFormat:@"%@ cancelled", @"[Face-FP]"];
          mad_allFacesFetchOptions = v241;
          v175 = [NSDictionary dictionaryWithObjects:&v241 forKeys:&v240 count:1];
          v60 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:?];
          v61 = 0;
          v62 = *runCopy;
          *runCopy = v60;
          goto LABEL_168;
        }

LABEL_55:
        v61 = 0;
LABEL_169:

        goto LABEL_170;
      }

      v63 = VCPSignPostLog();
      v64 = os_signpost_id_generate(v63);

      v65 = VCPSignPostLog();
      v66 = v65;
      if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
      {
        *buf = 134217984;
        v218 = integerValue;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_INTERVAL_BEGIN, v64, "MADPhotosFaceFastPassProcessingTask_KeyFace", "VerifiedType_%ld", buf, 0xCu);
      }

      mad_allFacesFetchOptions = [v184 mad_allFacesFetchOptions];
      v67 = +[MADStateHandler sharedStateHandler];
      [v67 addBreadcrumb:{@"%@ Fetching verified person faces with fetchOptions: %@", @"[Face-FP]", mad_allFacesFetchOptions}];

      v68 = [v43 objectAtIndexedSubscript:v44];
      v175 = [PHFace fetchKeyFaceByPersonLocalIdentifierForPersons:v68 options:mad_allFacesFetchOptions];

      v69 = +[MADStateHandler sharedStateHandler];
      [v69 addBreadcrumb:{@"%@ Fetched %lu verified person faces", @"[Face-FP]", objc_msgSend(v175, "count")}];

      v70 = +[MADStateHandler sharedStateHandler];
      [v70 addBreadcrumb:{@"%@ Fetching assets by verified faces", @"[Face-FP]"}];

      allValues = [v175 allValues];
      v173 = [PHAsset fetchAssetsGroupedByFaceUUIDForFaces:allValues];

      v72 = +[MADStateHandler sharedStateHandler];
      [v72 addBreadcrumb:{@"%@ Fetched %lu assets by verified faces", @"[Face-FP]", objc_msgSend(v173, "count")}];

      v73 = +[NSMutableSet set];
      v204[0] = _NSConcreteStackBlock;
      v204[1] = 3221225472;
      v204[2] = sub_1001028C4;
      v204[3] = &unk_100286590;
      v74 = v73;
      v205 = v74;
      v206 = &v213;
      [v173 enumerateKeysAndObjectsUsingBlock:v204];
      if (([(MADPhotosFaceFastPassProcessingTask *)self isCanceled]& 1) != 0)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v218 = @"[Face-FP]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ cancelled", buf, 0xCu);
        }

        if (runCopy)
        {
          v238 = NSLocalizedDescriptionKey;
          v75 = [NSString stringWithFormat:@"%@ cancelled", @"[Face-FP]"];
          v239 = v75;
          v76 = [NSDictionary dictionaryWithObjects:&v239 forKeys:&v238 count:1];
          v77 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v76];
          v78 = *runCopy;
          *runCopy = v77;
        }

        goto LABEL_75;
      }

      for (j = 0; ; ++j)
      {
        v80 = [v43 objectAtIndexedSubscript:v44];
        v81 = j < [v80 count];

        if (!v81)
        {
          break;
        }

        v82 = objc_autoreleasePoolPush();
        v83 = [v43 objectAtIndexedSubscript:v44];
        v84 = [v83 objectAtIndexedSubscript:j];
        v85 = [PHAsset fetchAssetsForPerson:v84 options:v186];

        v201[0] = _NSConcreteStackBlock;
        v201[1] = 3221225472;
        v201[2] = sub_100102970;
        v201[3] = &unk_1002865B8;
        v202 = v74;
        v203 = &v209;
        [v85 enumerateObjectsUsingBlock:v201];

        objc_autoreleasePoolPop(v82);
      }

      if ([(MADPhotosFaceFastPassProcessingTask *)self isCanceled])
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v218 = @"[Face-FP]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ cancelled", buf, 0xCu);
        }

        if (runCopy)
        {
          v236 = NSLocalizedDescriptionKey;
          v86 = [NSString stringWithFormat:@"%@ cancelled", @"[Face-FP]"];
          v237 = v86;
          v87 = [NSDictionary dictionaryWithObjects:&v237 forKeys:&v236 count:1];
          v88 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v87];
          v89 = *runCopy;
          *runCopy = v88;
        }

LABEL_75:
        v61 = 0;
LABEL_167:

        v62 = v173;
LABEL_168:

        goto LABEL_169;
      }

      v90 = [VCPMADQuickFaceIDAssetProcessingTask alloc];
      allObjects = [v74 allObjects];
      photoLibraryURL3 = [v184 photoLibraryURL];
      v200[0] = _NSConcreteStackBlock;
      v200[1] = 3221225472;
      v200[2] = sub_100102A1C;
      v200[3] = &unk_100283000;
      v200[4] = self;
      v198[0] = _NSConcreteStackBlock;
      v198[1] = 3221225472;
      v198[2] = sub_100102A24;
      v198[3] = &unk_1002865E0;
      v199 = @"[Face-FP]";
      v166 = [(VCPMADQuickFaceIDAssetProcessingTask *)v90 initWithLocalIdentifiers:allObjects fromPhotoLibraryWithURL:photoLibraryURL3 cancelBlock:v200 progressHandler:0 completionHandler:v198];

      v93 = [(VCPMADQuickFaceIDAssetProcessingTask *)v166 run];
      if (v93)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v165))
        {
          *buf = 138412546;
          v218 = @"[Face-FP]";
          v219 = 1024;
          *v220 = v93;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v165, "%@ Failed to analyze key faces from assets (err:%d)", buf, 0x12u);
        }

        if (runCopy)
        {
          v234 = NSLocalizedDescriptionKey;
          mad_unclusteredFacesFetchOptions = [NSString stringWithFormat:@"%@ Failed to analyze key faces from assets (err:%d)", @"[Face-FP]", v93];
          v235 = mad_unclusteredFacesFetchOptions;
          v169 = [NSDictionary dictionaryWithObjects:&v235 forKeys:&v234 count:1];
          v95 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:?];
          goto LABEL_91;
        }

LABEL_92:
        v61 = 0;
LABEL_166:

        goto LABEL_167;
      }

      v96 = VCPSignPostLog();
      v97 = v96;
      if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v96))
      {
        *buf = 134217984;
        v218 = integerValue;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v97, OS_SIGNPOST_INTERVAL_END, v64, "MADPhotosFaceFastPassProcessingTask_KeyFace", "VerifiedType_%ld", buf, 0xCu);
      }

      (*(self->_progressHandler + 2))(self->_progressHandler, v57 + 50.0 / [&off_1002962A8 count]);
      if ([(MADPhotosFaceFastPassProcessingTask *)self isCanceled])
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v218 = @"[Face-FP]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ cancelled", buf, 0xCu);
        }

        if (!runCopy)
        {
          goto LABEL_92;
        }

        v232 = NSLocalizedDescriptionKey;
        mad_unclusteredFacesFetchOptions = [NSString stringWithFormat:@"%@ cancelled", @"[Face-FP]"];
        v233 = mad_unclusteredFacesFetchOptions;
        v169 = [NSDictionary dictionaryWithObjects:&v233 forKeys:&v232 count:1];
        v95 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:?];
LABEL_91:
        v61 = 0;
        v98 = *runCopy;
        *runCopy = v95;
        goto LABEL_165;
      }

      v99 = VCPSignPostLog();
      v100 = os_signpost_id_generate(v99);

      v101 = VCPSignPostLog();
      v102 = v101;
      if (v100 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v101))
      {
        *buf = 134217984;
        v218 = integerValue;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v102, OS_SIGNPOST_INTERVAL_BEGIN, v100, "MADPhotosFaceFastPassProcessingTask_UVCluster", "VerifiedType_%ld", buf, 0xCu);
      }

      mad_unclusteredFacesFetchOptions = [v184 mad_unclusteredFacesFetchOptions];
      v103 = +[MADStateHandler sharedStateHandler];
      [v103 addBreadcrumb:{@"%@ Fetching unclustered face assets with fetchOptions: %@", @"[Face-FP]", mad_unclusteredFacesFetchOptions}];

      v169 = [PHAsset vcp_fetchOptionsForLibrary:v184 forTaskID:3];
      allObjects2 = [v74 allObjects];
      v159 = [PHAsset fetchAssetsWithLocalIdentifiers:allObjects2 options:v169];

      v160 = [PHFace fetchFacesInAssets:v159 options:mad_unclusteredFacesFetchOptions];
      v105 = +[MADStateHandler sharedStateHandler];
      [v105 addBreadcrumb:{@"%@ Fetched %d unclustered face assets", @"[Face-FP]", objc_msgSend(v160, "count")}];

      if ([(MADPhotosFaceFastPassProcessingTask *)self isCanceled])
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v218 = @"[Face-FP]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ cancelled", buf, 0xCu);
        }

        if (runCopy)
        {
          v230 = NSLocalizedDescriptionKey;
          v106 = [NSString stringWithFormat:@"%@ cancelled", @"[Face-FP]"];
          v231 = v106;
          v107 = [NSDictionary dictionaryWithObjects:&v231 forKeys:&v230 count:1];
          v108 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v107];
          v109 = *runCopy;
          *runCopy = v108;
        }

        goto LABEL_117;
      }

      if ([v160 count])
      {
        v197[0] = _NSConcreteStackBlock;
        v197[1] = 3221225472;
        v197[2] = sub_100102B60;
        v197[3] = &unk_100283000;
        v197[4] = self;
        v156 = objc_retainBlock(v197);
        v110 = +[MADVUUtilities sharedInstance];
        v196 = v167;
        v111 = [v110 prepareClusteringWithFaces:v160 gallery:v171 cancelOrExtendTimeoutBlock:v156 error:&v196];
        v112 = v196;

        if (v111)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v161))
          {
            *buf = 138412290;
            v218 = @"[Face-FP]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, v161, "%@ Faces added to Gallery!", buf, 0xCu);
          }

          v167 = v112;
          goto LABEL_111;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v165))
        {
          *buf = 138412546;
          v218 = @"[Face-FP]";
          v219 = 2112;
          *v220 = v112;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v165, "%@ Failed to add faces to Gallery - %@", buf, 0x16u);
        }

        if (runCopy)
        {
          v125 = [v112 copy];
          v126 = *runCopy;
          *runCopy = v125;
        }

        v61 = 0;
        v167 = v112;
LABEL_164:

        v98 = v159;
LABEL_165:

        goto LABEL_166;
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v164))
      {
        *buf = 138412290;
        v218 = @"[Face-FP]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v164, "%@ No face to add to Gallery; continuing to VU update ...", buf, 0xCu);
      }

LABEL_111:
      if ([(MADPhotosFaceFastPassProcessingTask *)self isCanceled])
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v218 = @"[Face-FP]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ cancelled", buf, 0xCu);
        }

        if (runCopy)
        {
          v228 = NSLocalizedDescriptionKey;
          v113 = [NSString stringWithFormat:@"%@ cancelled", @"[Face-FP]"];
          v229 = v113;
          v114 = [NSDictionary dictionaryWithObjects:&v229 forKeys:&v228 count:1];
          v115 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v114];
          v116 = *runCopy;
          *runCopy = v115;
        }

LABEL_117:
        v61 = 0;
        goto LABEL_164;
      }

      v194[0] = _NSConcreteStackBlock;
      v194[1] = 3221225472;
      v194[2] = sub_100102BBC;
      v194[3] = &unk_100286268;
      v194[4] = self;
      v195 = @"[Face-FP]";
      v157 = objc_retainBlock(v194);
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v164))
      {
        *buf = 138412290;
        v218 = @"[Face-FP]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v164, "%@ Start Gallery update (mode: fast)", buf, 0xCu);
      }

      v193 = v167;
      v117 = [v171 updateForType:1 mode:1 progressHandler:v157 error:&v193];
      v118 = v193;

      if (v117)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v161))
        {
          *buf = 138412290;
          v218 = @"[Face-FP]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v161, "%@ Gallery updated!", buf, 0xCu);
        }

        v119 = VCPSignPostLog();
        v120 = v119;
        if (v100 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v119))
        {
          *buf = 134217984;
          v218 = integerValue;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v120, OS_SIGNPOST_INTERVAL_END, v100, "MADPhotosFaceFastPassProcessingTask_UVCluster", "VerifiedType_%ld", buf, 0xCu);
        }

        v163 = [v160 count];
        (*(self->_progressHandler + 2))(self->_progressHandler, v57 + 75.0 / [&off_1002962A8 count]);
        if ([(MADPhotosFaceFastPassProcessingTask *)self isCanceled])
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v218 = @"[Face-FP]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ cancelled", buf, 0xCu);
          }

          if (runCopy)
          {
            v226 = NSLocalizedDescriptionKey;
            v121 = [NSString stringWithFormat:@"%@ cancelled", @"[Face-FP]"];
            v227 = v121;
            v122 = [NSDictionary dictionaryWithObjects:&v227 forKeys:&v226 count:1];
            v123 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v122];
            v124 = *runCopy;
            *runCopy = v123;
          }

          goto LABEL_145;
        }

        v129 = VCPSignPostLog();
        v158 = os_signpost_id_generate(v129);

        v130 = VCPSignPostLog();
        v131 = v130;
        if (v158 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v130))
        {
          *buf = 134217984;
          v218 = integerValue;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v131, OS_SIGNPOST_INTERVAL_BEGIN, v158, "MADPhotosFaceFastPassProcessingTask_UVPersonalization", "VerifiedType_%ld", buf, 0xCu);
        }

        v191[0] = _NSConcreteStackBlock;
        v191[1] = 3221225472;
        v191[2] = sub_100102D14;
        v191[3] = &unk_100286268;
        v191[4] = self;
        v192 = @"[Face-FP]";
        v132 = objc_retainBlock(v191);
        v133 = [MADVUWGalleryManager sharedGalleryForPhotoLibrary:v184];
        v190 = 0;
        v155 = v133;
        v61 = [v133 updatePlugin:1 progressHandler:v132 error:&v190];
        v168 = v190;
        if (v61)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v164))
          {
            *buf = 138412290;
            v218 = @"[Face-FP]";
            _os_log_impl(&_mh_execute_header, &_os_log_default, v164, "%@ VUWGallery Personalization plugin updated!", buf, 0xCu);
          }

          v134 = VCPSignPostLog();
          v135 = v134;
          if (v158 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v134))
          {
            *buf = 134217984;
            v218 = integerValue;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v135, OS_SIGNPOST_INTERVAL_END, v158, "MADPhotosFaceFastPassProcessingTask_UVPersonalization", "VerifiedType_%ld", buf, 0xCu);
          }

          v136 = [v43 objectAtIndexedSubscript:v44];
          v137 = [v136 count];

          (*(self->_progressHandler + 2))(self->_progressHandler, v57 + 100.0 / [&off_1002962A8 count]);
          v162 += v137;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v165))
          {
            *buf = 138412546;
            v218 = @"[Face-FP]";
            v219 = 2112;
            *v220 = v168;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v165, "%@ Failed to update VUWGallery for Personalization plugin - %@", buf, 0x16u);
          }

          if (runCopy)
          {
            v138 = [v168 copy];
            v139 = *runCopy;
            *runCopy = v138;
          }
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v165))
        {
          *buf = 138412546;
          v218 = @"[Face-FP]";
          v219 = 2112;
          *v220 = v118;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v165, "%@ Failed to update Gallery - %@", buf, 0x16u);
        }

        if (runCopy)
        {
          v127 = [v118 copy];
          v128 = *runCopy;
          *runCopy = v127;
        }

LABEL_145:
        v61 = 0;
      }

      v167 = v118;
      goto LABEL_164;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 138412290;
      v218 = @"[Face-FP]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ cancelled", buf, 0xCu);
    }

    if (runCopy)
    {
      v242 = NSLocalizedDescriptionKey;
      v177 = [NSString stringWithFormat:@"%@ cancelled", @"[Face-FP]"];
      v243 = v177;
      v46 = [NSDictionary dictionaryWithObjects:&v243 forKeys:&v242 count:1];
      v47 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v46];
      v48 = *runCopy;
      *runCopy = v47;

      goto LABEL_55;
    }

    v61 = 0;
LABEL_170:
    objc_autoreleasePoolPop(context);
    ++v44;
    if ((v61 & 1) == 0)
    {
      goto LABEL_202;
    }
  }

  if (DeviceWithGreymatterSupport())
  {
    v189 = 0;
    v144 = [BGSystemTaskCheckpoints reportFeatureCheckpoint:30 forFeature:802 error:&v189];
    v145 = v189;
    if (v144)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412802;
        v218 = @"[Face-FP]";
        v219 = 2048;
        *v220 = 30;
        *&v220[8] = 2048;
        v221 = 802;
        v146 = "%@ Reported checkpoint %lu for %lu";
        v147 = type;
        v148 = 32;
        goto LABEL_190;
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v165))
    {
      *buf = 138413058;
      v218 = @"[Face-FP]";
      v219 = 2048;
      *v220 = 30;
      *&v220[8] = 2048;
      v221 = 802;
      v222 = 2112;
      v223 = v145;
      v146 = "%@ Failed to report checkpoint %lu for %lu - %@";
      v147 = v165;
      v148 = 42;
LABEL_190:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v147, v146, buf, v148);
    }
  }

  v149 = VCPSignPostLog();
  v150 = v149;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v149))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v150, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosFaceFastPassProcessingTask", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
  {
    *buf = 138412290;
    v218 = @"[Face-FP]";
    _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Processed finished", buf, 0xCu);
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v164))
  {
    v151 = v214[3];
    v152 = v210[3];
    *buf = 138413314;
    v218 = @"[Face-FP]";
    v219 = 2048;
    *v220 = v162;
    *&v220[8] = 2048;
    v221 = v151;
    v222 = 2048;
    v223 = v152;
    v224 = 2048;
    v225 = v163;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v164, "%@ Screened %lu verified identities, processed %lu key-face assets, %lu additional assets, and clustered %lu faces", buf, 0x34u);
  }

  completionHandler3 = [(MADPhotosFaceFastPassProcessingTask *)self completionHandler];
  completionHandler3[2](completionHandler3, 0, 0);

LABEL_202:
LABEL_203:

LABEL_204:
  v36 = v187;
LABEL_205:

LABEL_206:
  _Block_object_dispose(&v209, 8);
  _Block_object_dispose(&v213, 8);
  return v185;
}

@end