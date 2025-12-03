@interface MADComputeServiceProcessingTask
+ (id)_taskWithPhotosAssets:(id)assets photoLibraryURLPath:(id)path requestID:(id)d requests:(id)requests resultDirectoryURL:(id)l cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)self0 completionHandler:(id)self1;
+ (id)_taskWithURLAssets:(id)assets requestID:(id)d requests:(id)requests resultDirectoryURL:(id)l cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)self0;
+ (id)taskWithManagedRequests:(id)requests cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
+ (id)taskWithRequestID:(id)d cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
+ (id)taskWithRequests:(id)requests requestID:(id)d assetURLs:(id)ls resultDirectoryURL:(id)l cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)self0;
+ (id)taskWithRequests:(id)requests requestID:(id)d localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)self0 completionHandler:(id)self1;
+ (int)_saveResult:(id)result fileURL:(id)l;
+ (int)_saveResultData:(id)data fileURL:(id)l;
- (BOOL)isCancelled;
- (MADComputeServiceProcessingTask)initWithRequests:(id)requests requestID:(id)d assetURLs:(id)ls resultDirectoryURL:(id)l cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)self0;
- (MADComputeServiceProcessingTask)initWithRequests:(id)requests requestID:(id)d localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)self0 completionHandler:(id)self1;
- (id)_loadAssetsForTaskID:(unint64_t)d;
- (id)_partialAnalysisURL;
- (id)_prepareFaceAssetProcessingTask;
- (id)_prepareFaceResultWithFaces:(id)faces;
- (id)_prepareSceneAssetProcessingTask;
- (id)_prepareSceneResultWithClassifications:(id)classifications;
- (id)_prepareVideoAnalysisResults:(id)results;
- (id)_processVideoAsset:(id)asset partialAnalysis:(id)analysis analysisTypes:(unint64_t)types error:(id *)error;
- (int)_processVideoAnalysis:(id)analysis analysisError:(id)error assetIdentifierType:(id)type assetIdentifier:(id)identifier;
- (int)_resumePausedVideoAnalysis;
- (int)run;
- (unint64_t)_videoAnalysisTypes;
- (void)_processVideoAssetURLs;
- (void)_processVideoLocalIdentifiers;
- (void)_processVideoRequests;
- (void)_processVisionRequest:(id)request;
- (void)_runVisionRequest:(id)request assetURL:(id)l localIdentifier:(id)identifier;
- (void)_savePartialAnalysis:(id)analysis assetIdentifierType:(id)type assetIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation MADComputeServiceProcessingTask

- (MADComputeServiceProcessingTask)initWithRequests:(id)requests requestID:(id)d localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)self0 completionHandler:(id)self1
{
  requestsCopy = requests;
  dCopy = d;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  blockCopy = block;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v42.receiver = self;
  v42.super_class = MADComputeServiceProcessingTask;
  v21 = [(MADComputeServiceProcessingTask *)&v42 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_requests, requests);
    objc_storeStrong(&v22->_requestID, d);
    objc_storeStrong(&v22->_localIdentifiers, identifiers);
    objc_storeStrong(&v22->_photoLibraryURL, l);
    objc_storeStrong(&v22->_resultDirectoryURL, rL);
    v23 = [requestsCopy count];
    v22->_totalTaskCount = ([identifiersCopy count] * v23);
    v22->_finishedTaskCount = 0.0;
    if (blockCopy)
    {
      v24 = blockCopy;
    }

    else
    {
      v24 = &stru_1002854E8;
    }

    v25 = objc_retainBlock(v24);
    cancelBlock = v22->_cancelBlock;
    v22->_cancelBlock = v25;

    v27 = objc_retainBlock(handlerCopy);
    progressHandler = v22->_progressHandler;
    v22->_progressHandler = v27;

    v29 = objc_retainBlock(resultsHandlerCopy);
    resultsHandler = v22->_resultsHandler;
    v22->_resultsHandler = v29;

    v31 = objc_retainBlock(completionHandlerCopy);
    completionHandler = v22->_completionHandler;
    v22->_completionHandler = v31;

    v33 = +[NSMutableArray array];
    videoProcessingRequests = v22->_videoProcessingRequests;
    v22->_videoProcessingRequests = v33;
  }

  return v22;
}

+ (id)taskWithRequests:(id)requests requestID:(id)d localIdentifiers:(id)identifiers photoLibraryURL:(id)l resultDirectoryURL:(id)rL cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)self0 completionHandler:(id)self1
{
  requestsCopy = requests;
  dCopy = d;
  identifiersCopy = identifiers;
  lCopy = l;
  rLCopy = rL;
  blockCopy = block;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v25 = [objc_alloc(objc_opt_class()) initWithRequests:requestsCopy requestID:dCopy localIdentifiers:identifiersCopy photoLibraryURL:lCopy resultDirectoryURL:rLCopy cancelBlock:blockCopy progressHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];

  return v25;
}

- (MADComputeServiceProcessingTask)initWithRequests:(id)requests requestID:(id)d assetURLs:(id)ls resultDirectoryURL:(id)l cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)self0
{
  requestsCopy = requests;
  dCopy = d;
  lsCopy = ls;
  lCopy = l;
  blockCopy = block;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v40.receiver = self;
  v40.super_class = MADComputeServiceProcessingTask;
  v21 = [(MADComputeServiceProcessingTask *)&v40 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_requests, requests);
    objc_storeStrong(&v22->_requestID, d);
    objc_storeStrong(&v22->_assetURLs, ls);
    objc_storeStrong(&v22->_resultDirectoryURL, l);
    v23 = [requestsCopy count];
    v22->_totalTaskCount = ([(NSArray *)v22->_assetURLs count]* v23);
    v22->_finishedTaskCount = 0.0;
    if (blockCopy)
    {
      v24 = blockCopy;
    }

    else
    {
      v24 = &stru_100285508;
    }

    v25 = objc_retainBlock(v24);
    cancelBlock = v22->_cancelBlock;
    v22->_cancelBlock = v25;

    v27 = objc_retainBlock(handlerCopy);
    progressHandler = v22->_progressHandler;
    v22->_progressHandler = v27;

    v29 = objc_retainBlock(resultsHandlerCopy);
    resultsHandler = v22->_resultsHandler;
    v22->_resultsHandler = v29;

    v31 = objc_retainBlock(completionHandlerCopy);
    completionHandler = v22->_completionHandler;
    v22->_completionHandler = v31;

    v33 = +[NSMutableArray array];
    videoProcessingRequests = v22->_videoProcessingRequests;
    v22->_videoProcessingRequests = v33;
  }

  return v22;
}

+ (id)taskWithRequests:(id)requests requestID:(id)d assetURLs:(id)ls resultDirectoryURL:(id)l cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)self0
{
  requestsCopy = requests;
  dCopy = d;
  lsCopy = ls;
  lCopy = l;
  blockCopy = block;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v23 = [objc_alloc(objc_opt_class()) initWithRequests:requestsCopy requestID:dCopy assetURLs:lsCopy resultDirectoryURL:lCopy cancelBlock:blockCopy progressHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];

  return v23;
}

+ (int)_saveResultData:(id)data fileURL:(id)l
{
  dataCopy = data;
  lCopy = l;
  lCopy = [NSString stringWithFormat:@"[MACS][SaveResultData][%@]", lCopy];
  v14 = 0;
  v8 = [dataCopy writeToURL:lCopy options:1 error:&v14];
  v9 = v14;
  if (v8)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v10 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 138412546;
        v16 = lCopy;
        v17 = 2112;
        v18 = lCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Saved result to %@", buf, 0x16u);
      }
    }

    v11 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v12 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v12))
      {
        *buf = 138412802;
        v16 = lCopy;
        v17 = 2112;
        v18 = dataCopy;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "%@ Failed to save result %@ - %@", buf, 0x20u);
      }
    }

    v11 = -20;
  }

  return v11;
}

+ (int)_saveResult:(id)result fileURL:(id)l
{
  resultCopy = result;
  lCopy = l;
  lCopy = [NSString stringWithFormat:@"[MACS][SaveResult][%@]", lCopy];
  if (MediaAnalysisLogLevel() >= 7)
  {
    v9 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 138412546;
      v17 = lCopy;
      v18 = 2112;
      v19 = resultCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ MACS result %@", buf, 0x16u);
    }
  }

  v15 = 0;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:resultCopy requiringSecureCoding:1 error:&v15];
  v11 = v15;
  if (v10)
  {
    v12 = [self _saveResultData:v10 fileURL:lCopy];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v13 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 138412802;
        v17 = lCopy;
        v18 = 2112;
        v19 = resultCopy;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ Failed to archive result %@ - %@", buf, 0x20u);
      }
    }

    v12 = -18;
  }

  return v12;
}

+ (id)_taskWithPhotosAssets:(id)assets photoLibraryURLPath:(id)path requestID:(id)d requests:(id)requests resultDirectoryURL:(id)l cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)self0 completionHandler:(id)self1
{
  assetsCopy = assets;
  pathCopy = path;
  dCopy = d;
  requestsCopy = requests;
  lCopy = l;
  blockCopy = block;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000A8334;
  v33[3] = &unk_100285530;
  v24 = resultsHandlerCopy;
  v36 = v24;
  v25 = dCopy;
  v34 = v25;
  v26 = lCopy;
  v35 = v26;
  selfCopy = self;
  v27 = objc_retainBlock(v33);
  v28 = [NSURL fileURLWithPath:pathCopy];
  v29 = [MADComputeServiceProcessingTask taskWithRequests:requestsCopy requestID:v25 localIdentifiers:assetsCopy photoLibraryURL:v28 resultDirectoryURL:v26 cancelBlock:blockCopy progressHandler:handlerCopy resultsHandler:v27 completionHandler:completionHandlerCopy];

  return v29;
}

+ (id)_taskWithURLAssets:(id)assets requestID:(id)d requests:(id)requests resultDirectoryURL:(id)l cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)self0
{
  assetsCopy = assets;
  dCopy = d;
  requestsCopy = requests;
  lCopy = l;
  blockCopy = block;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_1000A883C;
  v33 = &unk_100285558;
  v24 = resultsHandlerCopy;
  v36 = v24;
  v25 = dCopy;
  v34 = v25;
  v26 = lCopy;
  v35 = v26;
  selfCopy = self;
  v27 = objc_retainBlock(&v30);
  v28 = [MADComputeServiceProcessingTask taskWithRequests:requestsCopy requestID:v25 assetURLs:assetsCopy resultDirectoryURL:v26 cancelBlock:blockCopy progressHandler:handlerCopy resultsHandler:v27 completionHandler:completionHandlerCopy, v30, v31, v32, v33];

  return v28;
}

+ (id)taskWithManagedRequests:(id)requests cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  requestsCopy = requests;
  blockCopy = block;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v82 = requestsCopy;
  if ([requestsCopy count])
  {
    v78 = completionHandlerCopy;
    v86 = +[NSMutableArray array];
    v85 = +[NSMutableArray array];
    firstObject = [requestsCopy firstObject];
    requestID = [firstObject requestID];

    firstObject2 = [requestsCopy firstObject];
    resultDirectoryURL = [firstObject2 resultDirectoryURL];
    firstObject3 = [requestsCopy firstObject];
    resultDirectoryURLExtension = [firstObject3 resultDirectoryURLExtension];
    _CFURLAttachSecurityScopeToFileURL();

    firstObject4 = [v82 firstObject];
    resultDirectoryURL2 = [firstObject4 resultDirectoryURL];
    startAccessingSecurityScopedResource = [resultDirectoryURL2 startAccessingSecurityScopedResource];

    if (startAccessingSecurityScopedResource)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v21 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v21))
        {
          firstObject5 = [v82 firstObject];
          resultDirectoryURL3 = [firstObject5 resultDirectoryURL];
          *buf = 138412546;
          v108 = @"[MACS]";
          v109 = 2112;
          v110 = resultDirectoryURL3;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "%@ Consuming secure scoped result URL %@", buf, 0x16u);
        }
      }

      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      obj = v82;
      v24 = [obj countByEnumeratingWithState:&v102 objects:v106 count:16];
      if (v24)
      {
        v89 = *v103;
        v87 = VCPLogToOSLogType[4];
        v25 = VCPLogToOSLogType[3];
        v83 = 1;
        type = VCPLogToOSLogType[7];
        while (1)
        {
          v26 = 0;
          v90 = v24;
          do
          {
            if (*v103 != v89)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v102 + 1) + 8 * v26);
            v28 = objc_autoreleasePoolPush();
            v29 = [NSString stringWithFormat:@"[MACS][%@]", requestID];
            requestID2 = [v27 requestID];
            v31 = [requestID2 isEqualToString:requestID];

            if (v31)
            {
              v32 = objc_opt_class();
              requestData = [v27 requestData];
              v101 = 0;
              v34 = [NSKeyedUnarchiver unarchivedObjectOfClass:v32 fromData:requestData error:&v101];
              v35 = v101;

              if (v34)
              {
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v25))
                {
                  v36 = objc_opt_class();
                  *buf = 138412546;
                  v108 = v29;
                  v109 = 2112;
                  v110 = v36;
                  v37 = v36;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Loaded request %@", buf, 0x16u);
                }

                [v86 addObject:v34];
                assetURL = [v27 assetURL];
                v39 = assetURL == 0;

                if (v39)
                {
                  assetIdentifier = [v27 assetIdentifier];
                  v48 = assetIdentifier == 0;

                  if (v48)
                  {
                    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v25))
                    {
                      *buf = 138412546;
                      v108 = v29;
                      v109 = 2112;
                      v110 = v27;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to prepare asset for request %@; skip", buf, 0x16u);
                    }
                  }

                  else
                  {
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
                    {
                      assetIdentifier2 = [v27 assetIdentifier];
                      *buf = 138412546;
                      v108 = v29;
                      v109 = 2112;
                      v110 = assetIdentifier2;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Loading Photos asset %@", buf, 0x16u);
                    }

                    assetIdentifier3 = [v27 assetIdentifier];
                    [v85 addObject:assetIdentifier3];
                    v83 = 0;
LABEL_33:

                    [v27 setAttempts:{(objc_msgSend(v27, "attempts") + 1)}];
                    v50 = +[NSDate now];
                    [v27 setPreviousAttemptDate:v50];
                  }
                }

                else
                {
                  assetURL2 = [v27 assetURL];
                  assetURLExtension = [v27 assetURLExtension];
                  _CFURLAttachSecurityScopeToFileURL();

                  assetURL3 = [v27 assetURL];
                  LODWORD(assetURLExtension) = [assetURL3 startAccessingSecurityScopedResource];

                  if (assetURLExtension)
                  {
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
                    {
                      assetURL4 = [v27 assetURL];
                      *buf = 138412546;
                      v108 = v29;
                      v109 = 2112;
                      v110 = assetURL4;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Consuming secure scoped URL %@", buf, 0x16u);
                    }

                    assetIdentifier3 = [v27 assetURL];
                    [v85 addObject:assetIdentifier3];
                    goto LABEL_33;
                  }

                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v25))
                  {
                    assetURL5 = [v27 assetURL];
                    *buf = 138412546;
                    v108 = v29;
                    v109 = 2112;
                    v110 = assetURL5;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to open secure scoped URL %@; skip", buf, 0x16u);
                  }
                }
              }

              else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v25))
              {
                requestData2 = [v27 requestData];
                *buf = 138412546;
                v108 = v29;
                v109 = 2112;
                v110 = requestData2;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Failed to unarchive request %@; skip", buf, 0x16u);
              }

              goto LABEL_41;
            }

            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v87))
            {
              requestID3 = [v27 requestID];
              *buf = 138412546;
              v108 = v29;
              v109 = 2112;
              v110 = requestID3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v87, "%@ Mismatched requestID %@; skip", buf, 0x16u);
            }

LABEL_41:

            objc_autoreleasePoolPop(v28);
            v26 = v26 + 1;
          }

          while (v90 != v26);
          v24 = [obj countByEnumeratingWithState:&v102 objects:v106 count:16];
          if (!v24)
          {
            goto LABEL_54;
          }
        }
      }

      v83 = 1;
LABEL_54:

      v58 = +[MADSystemDataStore systemDataStore];
      v100 = 0;
      v59 = [v58 commitChangesOrRollback:&v100];
      v60 = v100;

      if ((v59 & 1) == 0 && MediaAnalysisLogLevel() >= 3)
      {
        v61 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v61))
        {
          *buf = 138412546;
          v108 = @"[MACS]";
          v109 = 2112;
          v110 = v60;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v61, "%@ Failed prepare analysis - %@", buf, 0x16u);
        }
      }

      v96[0] = _NSConcreteStackBlock;
      v96[1] = 3221225472;
      v96[2] = sub_1000A9A54;
      v96[3] = &unk_100285580;
      v62 = obj;
      v97 = v62;
      v98 = @"[MACS]";
      v99 = v78;
      v63 = objc_retainBlock(v96);
      if (v83)
      {
        v92[0] = _NSConcreteStackBlock;
        v92[1] = 3221225472;
        v92[2] = sub_1000A9D78;
        v92[3] = &unk_100285580;
        v64 = v62;
        v93 = v64;
        v94 = @"[MACS]";
        v95 = v63;
        v65 = objc_retainBlock(v92);
        firstObject6 = [v64 firstObject];
        requestID4 = [firstObject6 requestID];
        firstObject7 = [v64 firstObject];
        resultDirectoryURL4 = [firstObject7 resultDirectoryURL];
        v54 = [self _taskWithURLAssets:v85 requestID:requestID4 requests:v86 resultDirectoryURL:resultDirectoryURL4 cancelBlock:blockCopy progressHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:v65];

        firstObject8 = v93;
      }

      else
      {
        firstObject8 = [v62 firstObject];
        sourceIdentifier = [firstObject8 sourceIdentifier];
        firstObject9 = [v62 firstObject];
        requestID5 = [firstObject9 requestID];
        firstObject10 = [v62 firstObject];
        resultDirectoryURL5 = [firstObject10 resultDirectoryURL];
        v54 = [self _taskWithPhotosAssets:v85 photoLibraryURLPath:sourceIdentifier requestID:requestID5 requests:v86 resultDirectoryURL:resultDirectoryURL5 cancelBlock:blockCopy progressHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:v63];
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v55 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v55))
        {
          firstObject11 = [v82 firstObject];
          resultDirectoryURL6 = [firstObject11 resultDirectoryURL];
          *buf = 138412546;
          v108 = @"[MACS]";
          v109 = 2112;
          v110 = resultDirectoryURL6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v55, "%@ Failed to open secure scoped result URL %@; exit", buf, 0x16u);
        }
      }

      v54 = 0;
    }

    completionHandlerCopy = v78;
  }

  else if (MediaAnalysisLogLevel() < 3)
  {
    v54 = 0;
  }

  else
  {
    v52 = completionHandlerCopy;
    v53 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v53))
    {
      *buf = 138412290;
      v108 = @"[MACS]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v53, "%@ ManagedRequests is empty", buf, 0xCu);
    }

    v54 = 0;
    completionHandlerCopy = v52;
  }

  return v54;
}

+ (id)taskWithRequestID:(id)d cancelBlock:(id)block progressHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  dCopy = d;
  blockCopy = block;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  v17 = +[MADManagedRequest requestIDColumnName];
  v18 = +[MADManagedRequest statusColumnName];
  v19 = [NSPredicate predicateWithFormat:@"%K == %@ AND %K == %lu", v17, dCopy, v18, 0];

  v26 = 0;
  v20 = [MADManagedRequest fetchTaskScheduleWithPredicate:v19 error:&v26];
  v21 = v26;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v22 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      v23 = [v20 count];
      *buf = 138412546;
      v28 = dCopy;
      v29 = 2048;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@] Fetched %lu requests", buf, 0x16u);
    }
  }

  v24 = [self taskWithManagedRequests:v20 cancelBlock:blockCopy progressHandler:handlerCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];

  return v24;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_started);
  if ((v3 & 1) == 0)
  {
    completionHandler = self->_completionHandler;
    v9 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"[MADComputeServiceProcessingTask] Request is canceled before started"];
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v6];
    completionHandler[2](completionHandler, v7);
  }

  v8.receiver = self;
  v8.super_class = MADComputeServiceProcessingTask;
  [(MADComputeServiceProcessingTask *)&v8 dealloc];
}

- (BOOL)isCancelled
{
  if ((*(self->_cancelBlock + 2))())
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(&self->_canceled);
  }

  return v3 & 1;
}

- (id)_loadAssetsForTaskID:(unint64_t)d
{
  v5 = +[VCPPhotoLibraryManager sharedManager];
  v6 = [v5 photoLibraryWithURL:self->_photoLibraryURL];

  v7 = [PHAsset vcp_fetchOptionsForLibrary:v6 forTaskID:d];
  v8 = [PHAsset fetchAssetsWithLocalIdentifiers:self->_localIdentifiers options:v7];

  return v8;
}

- (id)_prepareSceneResultWithClassifications:(id)classifications
{
  classificationsCopy = classifications;
  v24 = +[NSMutableSet set];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = classificationsCopy;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v5 = *v26;
    type = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
        v10 = [v9 nodeForExtendedSceneClassId:{objc_msgSend(v7, "extendedSceneIdentifier")}];

        if (v10 && [v10 networkId] == 1)
        {
          name = [v10 name];
          [v7 confidence];
          v13 = v12;
          [v7 boundingBox];
          v18 = [MADSceneClassification entryWithLabel:name confidence:v13 boundingBox:v14, v15, v16, v17];

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v30 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[MADComputeServiceProcessingTask] classification result %@", buf, 0xCu);
          }

          [v24 addObject:v18];
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [v3 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v4);
  }

  if (v24)
  {
    v19 = [MADSceneClassificationResult resultWithClassifications:?];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v20 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[MADComputeServiceProcessingTask] Failed to load scene classification", buf, 2u);
      }
    }

    v19 = 0;
  }

  return v19;
}

- (id)_prepareSceneAssetProcessingTask
{
  v35 = [NSString stringWithFormat:@"[MADComputeServiceProcessingTask][VCPMADSceneAssetProcessingTask]"];
  if ([(NSArray *)self->_assetURLs count])
  {
    v29 = +[VNSceneClassificationRequest vcp_sceneRequest];
    v34 = 0;
    v27 = VCPLogToOSLogType[3];
    type = VCPLogToOSLogType[6];
    v36 = VCPLogToOSLogType[7];
    while (v34 < [(NSArray *)self->_assetURLs count])
    {
      context = objc_autoreleasePoolPush();
      self->_finishedTaskCount = self->_finishedTaskCount + 1.0;
      v2 = [VNImageRequestHandler alloc];
      v3 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:v34];
      v31 = [v2 initWithURL:v3 orientation:1 options:&__NSDictionary0__struct];

      v52 = v29;
      v4 = [NSArray arrayWithObjects:&v52 count:1];
      v44 = 0;
      LODWORD(v2) = [v31 performRequests:v4 error:&v44];
      v32 = v44;

      if (v2)
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
        {
          results = [v29 results];
          *buf = 138412546;
          v49 = v35;
          v50 = 2112;
          v51 = results;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis finished - %@", buf, 0x16u);
        }

        v6 = +[NSMutableSet set];
        v43 = 0u;
        v41 = 0u;
        v42 = 0u;
        v40 = 0u;
        results2 = [v29 results];
        v8 = [results2 countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v8)
        {
          v9 = *v41;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v41 != v9)
              {
                objc_enumerationMutation(results2);
              }

              v11 = *(*(&v40 + 1) + 8 * i);
              v12 = objc_autoreleasePoolPush();
              identifier = [v11 identifier];
              [v11 confidence];
              v15 = [MADSceneClassification entryWithLabel:identifier confidence:v14 boundingBox:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];

              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v36))
              {
                *buf = 138412546;
                v49 = v35;
                v50 = 2112;
                v51 = v15;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v36, "%@ classification result %@", buf, 0x16u);
              }

              [v6 addObject:v15];

              objc_autoreleasePoolPop(v12);
            }

            v8 = [results2 countByEnumeratingWithState:&v40 objects:v47 count:16];
          }

          while (v8);
        }

        v16 = [MADSceneClassificationResult resultWithClassifications:v6];
        (*(self->_progressHandler + 2))(self->_finishedTaskCount / self->_totalTaskCount);
        resultsHandler = self->_resultsHandler;
        v18 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:v34];
        resultsHandler[2](resultsHandler, v18, v16, 0);
      }

      else
      {
        v45 = NSLocalizedDescriptionKey;
        v19 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:v34];
        v20 = [NSString stringWithFormat:@"%@ Analysis failed with asset %@ - %@", v35, v19, v32];
        v46 = v20;
        v21 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v21];

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v27))
        {
          *buf = 138412290;
          v49 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@", buf, 0xCu);
        }

        (*(self->_progressHandler + 2))(self->_finishedTaskCount / self->_totalTaskCount);
        (*(self->_resultsHandler + 2))();
      }

      objc_autoreleasePoolPop(context);
      ++v34;
    }

    v22 = 0;
  }

  else
  {
    v23 = [VCPMADSceneAssetProcessingTask alloc];
    localIdentifiers = self->_localIdentifiers;
    photoLibraryURL = self->_photoLibraryURL;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000AAFCC;
    v39[3] = &unk_100283000;
    v39[4] = self;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000AAFD4;
    v37[3] = &unk_1002855A8;
    v37[4] = self;
    v38 = v35;
    v22 = [(VCPMADSceneAssetProcessingTask *)v23 initWithLocalIdentifiers:localIdentifiers fromPhotoLibraryWithURL:photoLibraryURL cancelBlock:v39 progressHandler:0 completionHandler:v37];
  }

  return v22;
}

- (id)_prepareFaceResultWithFaces:(id)faces
{
  facesCopy = faces;
  v3 = +[NSMutableSet set];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = facesCopy;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = *v23;
    v6 = VCPLogToOSLogType[7];
    v7 = 1;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        [v9 centerX];
        v12 = v11;
        [v9 centerY];
        v14 = v13;
        [v9 size];
        +[VCPFaceUtils faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:](VCPFaceUtils, "faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:", v12, v14, v15, [v9 sourceWidth], objc_msgSend(v9, "sourceHeight"));
        [v9 quality];
        v16 = [MADDetectedFace entryWithFaceID:"entryWithFaceID:confidence:boundingBox:" confidence:v7 boundingBox:?];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v6))
        {
          *buf = 138412290;
          v27 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MADComputeServiceProcessingTask] face result %@", buf, 0xCu);
        }

        [v3 addObject:v16];

        objc_autoreleasePoolPop(v10);
        v7 = (v7 + 1);
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  if (v3)
  {
    v17 = [MADFaceDetectionResult resultWithDetectedFaces:v3];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[MADComputeServiceProcessingTask] Failed to load face result", buf, 2u);
      }
    }

    v17 = 0;
  }

  return v17;
}

- (id)_prepareFaceAssetProcessingTask
{
  v40 = [NSString stringWithFormat:@"[MADComputeServiceProcessingTask][VCPMADQuickFaceIDAssetProcessingTask]"];
  if ([(NSArray *)self->_assetURLs count])
  {
    v2 = +[PHPhotoLibrary vcp_defaultPhotoLibrary];
    v32 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v2];

    v35 = [[VCPFaceAnalyzer alloc] initWithContext:v32];
    v39 = 0;
    type = VCPLogToOSLogType[3];
    v33 = MediaAnalysisFaceResultsKey;
    v41 = VCPLogToOSLogType[7];
    while (v39 < [(NSArray *)self->_assetURLs count])
    {
      context = objc_autoreleasePoolPush();
      self->_finishedTaskCount = self->_finishedTaskCount + 1.0;
      v3 = +[VCPImageManager sharedImageManager];
      v4 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:v39];
      v50 = [v3 pixelBufferWithFormat:875704438 fromImageURL:v4 flushCache:0];

      v49 = 0;
      v5 = [v35 quickAnalyzeCVPixelBuffer:v50 results:&v49];
      v37 = v49;
      if (v5)
      {
        v51 = NSLocalizedDescriptionKey;
        v6 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:v39];
        v7 = [NSString stringWithFormat:@"%@ Analysis failed (%d) asset at %@", v40, v5, v6];
        v52 = v7;
        v8 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v8];

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v54 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@", buf, 0xCu);
        }

        (*(self->_progressHandler + 2))(self->_finishedTaskCount / self->_totalTaskCount);
        (*(self->_resultsHandler + 2))();
      }

      else
      {
        v9 = +[NSMutableSet set];
        v10 = [v37 objectForKeyedSubscript:v33];
        v48 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v12)
        {
          v13 = *v46;
          v14 = 1;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v46 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v45 + 1) + 8 * i);
              v17 = objc_autoreleasePoolPush();
              [v16 centerX];
              v19 = v18;
              [v16 centerY];
              v21 = v20;
              [v16 size];
              +[VCPFaceUtils faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:](VCPFaceUtils, "faceRectFromNormalizedCenterX:normalizedCenterY:normalizedSize:sourceWidth:sourceHeight:", v19, v21, v22, [v16 sourceWidth], objc_msgSend(v16, "sourceHeight"));
              [v16 quality];
              v23 = [MADDetectedFace entryWithFaceID:"entryWithFaceID:confidence:boundingBox:" confidence:v14 boundingBox:?];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v41))
              {
                *buf = 138412546;
                v54 = v40;
                v55 = 2112;
                v56 = v23;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "%@ face result %@", buf, 0x16u);
              }

              [v9 addObject:v23];

              objc_autoreleasePoolPop(v17);
              v14 = (v14 + 1);
            }

            v12 = [v11 countByEnumeratingWithState:&v45 objects:v57 count:16];
          }

          while (v12);
        }

        v24 = [MADFaceDetectionResult resultWithDetectedFaces:v9];
        (*(self->_progressHandler + 2))(self->_finishedTaskCount / self->_totalTaskCount);
        resultsHandler = self->_resultsHandler;
        v26 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:v39];
        resultsHandler[2](resultsHandler, v26, v24, 0);
      }

      sub_100002CBC(&v50);
      objc_autoreleasePoolPop(context);
      ++v39;
    }

    v27 = 0;
  }

  else
  {
    v28 = [VCPMADQuickFaceIDAssetProcessingTask alloc];
    localIdentifiers = self->_localIdentifiers;
    photoLibraryURL = self->_photoLibraryURL;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000ABECC;
    v44[3] = &unk_100283000;
    v44[4] = self;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000ABED4;
    v42[3] = &unk_1002855A8;
    v42[4] = self;
    v43 = v40;
    v27 = [(VCPMADQuickFaceIDAssetProcessingTask *)v28 initWithLocalIdentifiers:localIdentifiers fromPhotoLibraryWithURL:photoLibraryURL cancelBlock:v44 progressHandler:0 completionHandler:v42];
  }

  return v27;
}

- (void)_runVisionRequest:(id)request assetURL:(id)l localIdentifier:(id)identifier
{
  requestCopy = request;
  lCopy = l;
  identifierCopy = identifier;
  v11 = [NSString stringWithFormat:@"[MADComputeServiceProcessingTask][%@]", objc_opt_class()];
  v12 = [[VNImageRequestHandler alloc] initWithURL:lCopy orientation:1 options:&__NSDictionary0__struct];
  v30 = requestCopy;
  v13 = [NSArray arrayWithObjects:&v30 count:1];
  v23 = 0;
  v14 = [v12 performRequests:v13 error:&v23];
  v15 = v23;

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v16 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        results = [requestCopy results];
        *buf = 138412546;
        v27 = v11;
        v28 = 2112;
        v29 = results;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "%@ Analysis finished - %@", buf, 0x16u);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      results2 = [requestCopy results];
      [MADCoreMLResult resultWithVisionResults:results2];
    }

    else
    {
      results2 = [requestCopy results];
      [MADVisionResult resultWithVisionResults:results2];
    }
    v21 = ;

    (*(self->_progressHandler + 2))(self->_finishedTaskCount / self->_totalTaskCount);
    (*(self->_resultsHandler + 2))();
  }

  else
  {
    v24 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithFormat:@"%@ Analysis failed - %@", v11, v15];
    v25 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v20];

    if (MediaAnalysisLogLevel() >= 3)
    {
      v22 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        *buf = 138412290;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@", buf, 0xCu);
      }
    }

    (*(self->_progressHandler + 2))(self->_finishedTaskCount / self->_totalTaskCount);
    (*(self->_resultsHandler + 2))();
  }
}

- (void)_processVisionRequest:(id)request
{
  requestCopy = request;
  v23 = [NSString stringWithFormat:@"[MADComputeServiceProcessingTask][%@]", objc_opt_class()];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *buf = 138412290;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Processing Vision request ...", buf, 0xCu);
    }
  }

  if (self->_localIdentifiers)
  {
    v5 = +[VCPPhotoLibraryManager sharedManager];
    v21 = [v5 photoLibraryWithURL:self->_photoLibraryURL];

    librarySpecificFetchOptions = [v21 librarySpecificFetchOptions];
    v6 = [PHAsset fetchAssetsWithLocalIdentifiers:self->_localIdentifiers options:?];
    v7 = 0;
    type = VCPLogToOSLogType[3];
    while (v7 < [v6 count])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v6 objectAtIndexedSubscript:v7];
      v10 = [PHAssetResource vcp_allAcceptableResourcesForAsset:v9];
      vcp_thumbnailResource = [v10 vcp_thumbnailResource];
      v12 = vcp_thumbnailResource;
      self->_finishedTaskCount = self->_finishedTaskCount + 1.0;
      if (vcp_thumbnailResource)
      {
        privateFileURL = [vcp_thumbnailResource privateFileURL];
        localIdentifier = [v9 localIdentifier];
        [(MADComputeServiceProcessingTask *)self _runVisionRequest:requestCopy assetURL:privateFileURL localIdentifier:localIdentifier];
      }

      else
      {
        v25 = NSLocalizedDescriptionKey;
        v15 = [NSString stringWithFormat:@"%@ Missing analysis media", v23];
        v26 = v15;
        v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        privateFileURL = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v16];

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v28 = privateFileURL;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@", buf, 0xCu);
        }

        (*(self->_progressHandler + 2))(self->_finishedTaskCount / self->_totalTaskCount);
        (*(self->_resultsHandler + 2))();
      }

      objc_autoreleasePoolPop(v8);
      ++v7;
    }
  }

  if ([(NSArray *)self->_assetURLs count])
  {
    for (i = 0; i < [(NSArray *)self->_assetURLs count]; ++i)
    {
      v18 = objc_autoreleasePoolPush();
      self->_finishedTaskCount = self->_finishedTaskCount + 1.0;
      v19 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:i];
      [(MADComputeServiceProcessingTask *)self _runVisionRequest:requestCopy assetURL:v19 localIdentifier:0];

      objc_autoreleasePoolPop(v18);
    }
  }
}

- (id)_prepareVideoAnalysisResults:(id)results
{
  resultsCopy = results;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      *buf = 138412290;
      *&buf[4] = @"[PrepareVideoAnalysisResults]";
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ Start parsing video analysis results", buf, 0xCu);
    }
  }

  v148[0] = _NSConcreteStackBlock;
  v148[1] = 3221225472;
  v148[2] = sub_1000AE5CC;
  v148[3] = &unk_1002855D0;
  v148[4] = self;
  v114 = objc_retainBlock(v148);
  v112 = +[NSMutableArray array];
  v5 = objc_opt_class();
  v109 = (v114[2])(v114, v5);
  if (v109)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v6 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *buf = 138412290;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "%@ Parsing image exposureRequest results", buf, 0xCu);
      }
    }

    v7 = [resultsCopy objectForKeyedSubscript:{MediaAnalysisExposureResultsKey, v109}];
    firstObject = [v7 firstObject];

    if (firstObject)
    {
      v9 = [firstObject objectForKeyedSubscript:MediaAnalysisResultQualityKey];
      [v9 doubleValue];
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = [MADExposureResult resultWithExposureScore:v11];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v13 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 138412802;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        *&buf[12] = 2112;
        *&buf[14] = resultsCopy;
        *&buf[22] = 2112;
        *&buf[24] = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "%@ MADExposureResult %@ - %@", buf, 0x20u);
      }
    }

    [v112 addObject:v12];
  }

  v14 = objc_opt_class();
  v110 = (v114[2])(v114, v14);
  if (v110)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v15 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v15))
      {
        *buf = 138412290;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "%@ Parsing image sharpness results", buf, 0xCu);
      }
    }

    v16 = [resultsCopy objectForKeyedSubscript:{MediaAnalysisBlurResultsKey, v109, v110}];
    firstObject2 = [v16 firstObject];

    if (firstObject2)
    {
      v18 = [firstObject2 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];
      v19 = [v18 objectForKeyedSubscript:MediaAnalysisResultSharpnessAttributeKey];
      [v19 doubleValue];
      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = [MADSharpnessResult resultWithSharpnessScore:v21];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v23 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 138412802;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        *&buf[12] = 2112;
        *&buf[14] = resultsCopy;
        *&buf[22] = 2112;
        *&buf[24] = v22;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ MADSharpnessResult %@ - %@", buf, 0x20u);
      }
    }

    [v112 addObject:v22];
  }

  v24 = objc_opt_class();
  v111 = (v114[2])(v114, v24);
  if (v111)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v25 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v25))
      {
        *buf = 138412290;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, "%@ Parsing video scene results", buf, 0xCu);
      }
    }

    v120 = [resultsCopy objectForKeyedSubscript:{MediaAnalysisClassificationResultsKey, v109}];
    v136 = +[PFSceneTaxonomy vcp_sharedTaxonomy];
    v133 = +[NSMutableDictionary dictionary];
    v122 = 0;
    v115 = MediaAnalysisResultAttributesKey;
    type = VCPLogToOSLogType[7];
    v127 = VCPLogToOSLogType[3];
    while (v122 < [v120 count])
    {
      context = objc_autoreleasePoolPush();
      v26 = [v120 objectAtIndexedSubscript:v122];
      v27 = v26;
      v153 = 0u;
      memset(buf, 0, sizeof(buf));
      v118 = v26;
      if (v26)
      {
        [v26 vcp_timerange];
      }

      v28 = [v27 objectForKeyedSubscript:v115];
      v147 = 0u;
      v145 = 0u;
      v146 = 0u;
      v144 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v144 objects:v151 count:16];
      if (v30)
      {
        v31 = *v145;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v145 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v144 + 1) + 8 * i);
            v34 = [v29 objectForKeyedSubscript:v33];
            [v34 floatValue];
            v36 = v35;

            v37 = [v136 nodeForSceneClassId:{objc_msgSend(v33, "intValue")}];
            v38 = v37;
            if (v37 && [v37 networkId] == 1)
            {
              name = [v38 name];
              v40 = [v133 objectForKeyedSubscript:name];
              v41 = v40 == 0;

              if (v41)
              {
                v42 = +[NSMutableArray array];
                name2 = [v38 name];
                [v133 setObject:v42 forKeyedSubscript:name2];
              }

              *v149 = *buf;
              *&v149[16] = *&buf[16];
              v150 = v153;
              v44 = [MADSceneClassificationVideoEntry entryWithTimeRange:v149 confidence:v36 boundingBox:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
              if (v44)
              {
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
                {
                  *v149 = 138412546;
                  *&v149[4] = @"[PrepareVideoAnalysisResults]";
                  *&v149[12] = 2112;
                  *&v149[14] = v44;
                  _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Adding entry %@", v149, 0x16u);
                }

                name3 = [v38 name];
                v46 = [v133 objectForKeyedSubscript:name3];
                [v46 addObject:v44];
              }

              else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v127))
              {
                name4 = [v38 name];
                *v149 = 138412546;
                *&v149[4] = @"[PrepareVideoAnalysisResults]";
                *&v149[12] = 2112;
                *&v149[14] = name4;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v127, "%@ Failed to create entry for label %@; skip", v149, 0x16u);
              }
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v144 objects:v151 count:16];
        }

        while (v30);
      }

      objc_autoreleasePoolPop(context);
      ++v122;
    }

    +[NSMutableSet set];
    v141[0] = _NSConcreteStackBlock;
    v141[1] = 3221225472;
    v141[2] = sub_1000AE718;
    v48 = v141[3] = &unk_1002838A8;
    v142 = v48;
    v143 = @"[PrepareVideoAnalysisResults]";
    [v133 enumerateKeysAndObjectsUsingBlock:v141];
    v49 = [MADSceneClassificationResult resultWithClassifications:v48];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
    {
      *buf = 138412546;
      *&buf[4] = @"[PrepareVideoAnalysisResults]";
      *&buf[12] = 2112;
      *&buf[14] = v49;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ MADSceneClassificationResult %@", buf, 0x16u);
    }

    [v112 addObject:v49];
  }

  v50 = objc_opt_class();
  v116 = (v114[2])(v114, v50);
  if (v116)
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v51 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v51))
      {
        *buf = 138412290;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "%@ Parsing video face results", buf, 0xCu);
      }
    }

    v137 = [resultsCopy objectForKeyedSubscript:{MediaAnalysisFaceResultsKey, v109}];
    v134 = +[NSMutableDictionary dictionary];
    v52 = 0;
    *typea = MediaAnalysisResultAttributesKey;
    *v128 = MediaAnalysisResultFaceBoundsAttributeKey;
    v125 = MediaAnalysisResultFaceIDAttributeKey;
    v123 = MediaAnalysisResultFaceQualityAttributeKey;
    v121 = VCPLogToOSLogType[7];
    v119 = VCPLogToOSLogType[3];
    while (v52 < [v137 count])
    {
      v53 = objc_autoreleasePoolPush();
      v54 = [v137 objectAtIndexedSubscript:v52];
      v55 = v54;
      v153 = 0u;
      memset(buf, 0, sizeof(buf));
      if (v54)
      {
        [v54 vcp_timerange];
      }

      v56 = [v55 objectForKeyedSubscript:*typea];
      v57 = [v56 objectForKeyedSubscript:*v128];
      v58 = [v56 objectForKeyedSubscript:v125];
      v59 = [v56 objectForKeyedSubscript:v123];
      v60 = [v134 objectForKeyedSubscript:v58];
      v61 = v60 == 0;

      if (v61)
      {
        v62 = +[NSMutableArray array];
        [v134 setObject:v62 forKeyedSubscript:v58];
      }

      *v149 = *buf;
      *&v149[16] = *&buf[16];
      v150 = v153;
      [v59 doubleValue];
      v64 = v63;
      v155 = NSRectFromString(v57);
      v65 = [MADDetectedFaceVideoEntry entryWithTimeRange:v149 confidence:v64 boundingBox:v155.origin.x, v155.origin.y, v155.size.width, v155.size.height];
      if (v65)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v121))
        {
          *v149 = 138412546;
          *&v149[4] = @"[PrepareVideoAnalysisResults]";
          *&v149[12] = 2112;
          *&v149[14] = v65;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v121, "%@ Adding video entry %@", v149, 0x16u);
        }

        v66 = [v134 objectForKeyedSubscript:v58];
        [v66 addObject:v65];
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v119))
      {
        *v149 = 138412546;
        *&v149[4] = @"[PrepareVideoAnalysisResults]";
        *&v149[12] = 2112;
        *&v149[14] = v56;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v119, "%@ Failed to create video entry for %@", v149, 0x16u);
      }

      objc_autoreleasePoolPop(v53);
      ++v52;
    }

    +[NSMutableSet set];
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = sub_1000AE884;
    v67 = v139[3] = &unk_1002855F8;
    v140 = v67;
    [v134 enumerateKeysAndObjectsUsingBlock:v139];
    v68 = [MADFaceDetectionResult resultWithDetectedFaces:v67];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v121))
    {
      *buf = 138412290;
      *&buf[4] = v68;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v121, "[MADComputeServiceProcessingTask] MADFaceDetectionResult %@", buf, 0xCu);
    }

    [v112 addObject:v68];
  }

  v69 = objc_opt_class();
  v126 = (v114[2])(v114, v69);
  if (v126)
  {
    v124 = objc_autoreleasePoolPush();
    if (MediaAnalysisLogLevel() >= 6)
    {
      v70 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v70))
      {
        *buf = 138412290;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v70, "%@ Parsing movie summary results", buf, 0xCu);
      }
    }

    v138 = [resultsCopy objectForKeyedSubscript:{MediaAnalysisMovieSummaryResultsKey, v109}];
    typeb = +[NSMutableArray array];
    v71 = 0;
    v72 = MediaAnalysisResultQualityKey;
    v73 = MediaAnalysisResultAttributesKey;
    while (v71 < [v138 count])
    {
      v74 = objc_autoreleasePoolPush();
      v75 = [v138 objectAtIndexedSubscript:v71];
      v76 = v75;
      v153 = 0u;
      memset(buf, 0, sizeof(buf));
      if (v75)
      {
        [v75 vcp_timerange];
      }

      v77 = [v76 objectForKeyedSubscript:v72];
      [v77 doubleValue];
      v79 = v78;

      v80 = [v76 objectForKeyedSubscript:v73];
      *v149 = *buf;
      *&v149[16] = *&buf[16];
      v150 = v153;
      v81 = [MADMovieHighlightEntry entryWithTimeRange:v149 score:v80 attributes:v79];
      [typeb addObject:v81];

      objc_autoreleasePoolPop(v74);
      ++v71;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v82 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v82))
      {
        *buf = 138412290;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v82, "%@ Parsing movie highlight results", buf, 0xCu);
      }
    }

    v135 = [resultsCopy objectForKeyedSubscript:MediaAnalysisMovieHighlightResultsKey];
    v129 = +[NSMutableArray array];
    for (j = 0; j < [v135 count]; ++j)
    {
      v84 = objc_autoreleasePoolPush();
      v85 = [v135 objectAtIndexedSubscript:j];
      v86 = v85;
      v153 = 0u;
      memset(buf, 0, sizeof(buf));
      if (v85)
      {
        [v85 vcp_timerange];
      }

      v87 = [v86 objectForKeyedSubscript:v72];
      [v87 doubleValue];
      v89 = v88;

      v90 = [v86 objectForKeyedSubscript:v73];
      *v149 = *buf;
      *&v149[16] = *&buf[16];
      v150 = v153;
      v91 = [MADMovieHighlightEntry entryWithTimeRange:v149 score:v90 attributes:v89];
      [v129 addObject:v91];

      objc_autoreleasePoolPop(v84);
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v92 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v92))
      {
        *buf = 138412290;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v92, "%@ Parsing movie curation score results", buf, 0xCu);
      }
    }

    v93 = [resultsCopy objectForKeyedSubscript:MediaAnalysisMovieHighlightScoreResultsKey];
    v94 = +[NSMutableArray array];
    for (k = 0; k < [v93 count]; ++k)
    {
      v96 = objc_autoreleasePoolPush();
      v97 = [v93 objectAtIndexedSubscript:k];
      v98 = v97;
      v153 = 0u;
      memset(buf, 0, sizeof(buf));
      if (v97)
      {
        [v97 vcp_timerange];
      }

      v99 = [v98 objectForKeyedSubscript:v72];
      [v99 doubleValue];
      v101 = v100;

      v102 = [v98 objectForKeyedSubscript:v73];
      *v149 = *buf;
      *&v149[16] = *&buf[16];
      v150 = v153;
      v103 = [MADMovieCurationScoreEntry entryWithTimeRange:v149 score:v101];
      [v94 addObject:v103];

      objc_autoreleasePoolPop(v96);
    }

    v104 = [MADMovieCurationResult resultWithSummaryEntries:typeb highlightEntries:v129 curationScoreEntries:v94];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v105 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v105))
      {
        *buf = 138412546;
        *&buf[4] = @"[PrepareVideoAnalysisResults]";
        *&buf[12] = 2112;
        *&buf[14] = v104;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v105, "%@ MADMovieCurationResult %@", buf, 0x16u);
      }
    }

    [v112 addObject:v104];

    objc_autoreleasePoolPop(v124);
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v106 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v106))
    {
      v107 = [v112 count];
      *buf = 138412802;
      *&buf[4] = @"[PrepareVideoAnalysisResults]";
      *&buf[12] = 2048;
      *&buf[14] = v107;
      *&buf[22] = 2112;
      *&buf[24] = v112;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v106, "%@ Prepared %lu requiredAnalysis %@", buf, 0x20u);
    }
  }

  return v112;
}

- (unint64_t)_videoAnalysisTypes
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AEBC0;
  v16[3] = &unk_1002855D0;
  v16[4] = self;
  v2 = objc_retainBlock(v16);
  v3 = objc_opt_class();
  v4 = (v2[2])(v2, v3);
  v5 = objc_opt_class();
  v6 = (v2[2])(v2, v5);
  v7 = objc_opt_class();
  v8 = (v2[2])(v2, v7);
  v9 = objc_opt_class();
  v10 = (v2[2])(v2, v9);
  v11 = objc_opt_class();
  v12 = (v2[2])(v2, v11);
  if (v6)
  {
    v13 = ((v4 != 0) << 19) | 0x200;
  }

  else
  {
    v13 = (v4 != 0) << 19;
  }

  if (v8)
  {
    v13 |= 0xC0uLL;
  }

  if (v10)
  {
    v13 |= 0xCuLL;
  }

  if (v12)
  {
    v14 = v13 | 0x40000;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

- (id)_partialAnalysisURL
{
  v3 = [NSString stringWithFormat:@"partialResult-%@.data", self->_requestID];
  v4 = [(NSURL *)self->_resultDirectoryURL URLByAppendingPathComponent:v3];

  return v4;
}

- (void)_savePartialAnalysis:(id)analysis assetIdentifierType:(id)type assetIdentifier:(id)identifier
{
  analysisCopy = analysis;
  typeCopy = type;
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"[SavePartialAnalysis][%@]", identifierCopy];
  if (analysisCopy)
  {
    if (!self->_resultDirectoryURL)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v12 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v12))
        {
          *buf = 138412290;
          v37 = identifierCopy;
          v13 = "%@ No result directory URL; skip saving partial analysis";
          goto LABEL_13;
        }
      }

      goto LABEL_36;
    }

    memset(&v31, 0, sizeof(v31));
    [analysisCopy vcp_syncPoint];
    if (!(0 >> 96))
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v12 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v12))
        {
          *buf = 138412290;
          v37 = identifierCopy;
          v13 = "%@ Invalid sync point in paused analysis";
LABEL_13:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v13, buf, 0xCu);
          goto LABEL_36;
        }
      }

      goto LABEL_36;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v14 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        time = v31;
        Seconds = CMTimeGetSeconds(&time);
        *buf = 138413058;
        v37 = identifierCopy;
        v38 = 2048;
        v39 = Seconds;
        v40 = 2048;
        value = v31.value;
        v42 = 1024;
        timescale = v31.timescale;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Saving partial analysis at sync point: %0.3fs (value: %lld, timescale: %d)", buf, 0x26u);
      }
    }

    v34 = NSFileProtectionKey;
    v35 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v28 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v32[0] = @"assetIdentifier";
    v32[1] = @"identifierType";
    v33[0] = identifierCopy;
    v33[1] = typeCopy;
    v32[2] = @"analysis";
    v33[2] = analysisCopy;
    v16 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:3];
    v29 = 0;
    v17 = [NSPropertyListSerialization dataWithPropertyList:v16 format:200 options:0 error:&v29];
    v27 = v29;
    if (!v17)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v23 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v23))
        {
          *buf = 138412546;
          v37 = identifierCopy;
          v38 = 2112;
          v39 = *&v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Failed to serialize partial analysis - %@", buf, 0x16u);
        }
      }

      goto LABEL_35;
    }

    _partialAnalysisURL = [(MADComputeServiceProcessingTask *)self _partialAnalysisURL];
    if (![(NSURL *)self->_resultDirectoryURL startAccessingSecurityScopedResource])
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v24 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v24))
        {
          resultDirectoryURL = self->_resultDirectoryURL;
          *buf = 138412546;
          v37 = identifierCopy;
          v38 = 2112;
          v39 = *&resultDirectoryURL;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Failed to start security scoped resource %@", buf, 0x16u);
        }
      }

      goto LABEL_34;
    }

    v18 = +[NSFileManager defaultManager];
    path = [_partialAnalysisURL path];
    v20 = [v18 createFileAtPath:path contents:v17 attributes:v28];

    if (v20)
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_33;
      }

      v21 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v21))
      {
        goto LABEL_33;
      }

      *buf = 138412546;
      v37 = identifierCopy;
      v38 = 2112;
      v39 = *&_partialAnalysisURL;
      v22 = "%@ Save partial analysis to %@";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_33;
      }

      v21 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v21))
      {
        goto LABEL_33;
      }

      *buf = 138412546;
      v37 = identifierCopy;
      v38 = 2112;
      v39 = *&_partialAnalysisURL;
      v22 = "%@ Failed to save partial analysis to %@";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v21, v22, buf, 0x16u);
LABEL_33:
    [(NSURL *)self->_resultDirectoryURL stopAccessingSecurityScopedResource];
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v12 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v12))
    {
      *buf = 138412290;
      v37 = identifierCopy;
      v13 = "%@ No partial analysis to store";
      goto LABEL_13;
    }
  }

LABEL_36:
}

- (int)_processVideoAnalysis:(id)analysis analysisError:(id)error assetIdentifierType:(id)type assetIdentifier:(id)identifier
{
  analysisCopy = analysis;
  errorCopy = error;
  typeCopy = type;
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"[ProcessVideoAnalysis][%@]", identifierCopy];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v10 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v10))
    {
      *buf = 138412290;
      v43 = identifierCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "%@ Process video analysis results", buf, 0xCu);
    }
  }

  if (errorCopy)
  {
    if ([errorCopy code] == -128)
    {
      [(MADComputeServiceProcessingTask *)self _savePartialAnalysis:analysisCopy assetIdentifierType:typeCopy assetIdentifier:identifierCopy];
    }

    totalTaskCount = self->_totalTaskCount;
    finishedTaskCount = self->_finishedTaskCount;
    self->_finishedTaskCount = finishedTaskCount + 1.0;
    (*(self->_progressHandler + 2))((finishedTaskCount + 1.0) / totalTaskCount);
    v13 = [typeCopy isEqualToString:@"filePath"];
    resultsHandler = self->_resultsHandler;
    if (v13)
    {
      v15 = [NSURL fileURLWithPath:identifierCopy];
      resultsHandler[2](resultsHandler, v15, 0, errorCopy);
    }

    else
    {
      resultsHandler[2](self->_resultsHandler, identifierCopy, 0, errorCopy);
    }

    code = [errorCopy code];
  }

  else
  {
    vcp_results = [analysisCopy vcp_results];
    v31 = [(MADComputeServiceProcessingTask *)self _prepareVideoAnalysisResults:vcp_results];

    v18 = self->_totalTaskCount;
    v17 = self->_finishedTaskCount;
    self->_finishedTaskCount = v17 + 1.0;
    (*(self->_progressHandler + 2))((v17 + 1.0) / v18);
    if (MediaAnalysisLogLevel() >= 6)
    {
      v19 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = [v31 count];
        *buf = 138412546;
        v43 = identifierCopy;
        v44 = 2048;
        v45 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Calling result handler with %lu results", buf, 0x16u);
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = v31;
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v22)
    {
      v23 = *v38;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v38 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v37 + 1) + 8 * i);
          v26 = [typeCopy isEqualToString:@"filePath"];
          v27 = self->_resultsHandler;
          if (v26)
          {
            v28 = [NSURL fileURLWithPath:identifierCopy];
            v27[2](v27, v28, v25, 0);
          }

          else
          {
            v27[2](self->_resultsHandler, identifierCopy, v25, 0);
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v22);
    }

    objc_storeStrong(&self->_resumedAssetIdentifier, identifier);
    code = 0;
  }

  return code;
}

- (id)_processVideoAsset:(id)asset partialAnalysis:(id)analysis analysisTypes:(unint64_t)types error:(id *)error
{
  assetCopy = asset;
  analysisCopy = analysis;
  localIdentifier = [assetCopy localIdentifier];
  v44 = [NSString stringWithFormat:@"[ProcessVideoAsset][%@]", localIdentifier];

  photoLibrary = [assetCopy photoLibrary];
  v13 = [VCPDatabaseReader databaseForPhotoLibrary:photoLibrary];

  v14 = MediaAnalysisResultsTypesForAnalysisTypes();
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    photoLibrary2 = [assetCopy photoLibrary];
    mad_fetchRequest = [photoLibrary2 mad_fetchRequest];

    localIdentifier2 = [assetCopy localIdentifier];
    v18 = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier2 predicate:0 resultTypes:v14];
  }

  else
  {
    mad_fetchRequest = [assetCopy localIdentifier];
    v18 = [v13 queryAnalysisForAsset:mad_fetchRequest withTypes:v14];
  }

  if (!v18)
  {
    goto LABEL_17;
  }

  vcp_version = [v18 vcp_version];
  if (vcp_version < MediaAnalysisMinValidVersion)
  {

LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  vcp_dateModified = [v18 vcp_dateModified];
  vcp_modificationDate = [assetCopy vcp_modificationDate];
  v22 = [vcp_dateModified isEqualToDate:vcp_modificationDate];

  if ((v22 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v27 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v27))
      {
        *buf = 138412290;
        v52 = v44;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ Existing analysis based on old modification", buf, 0xCu);
      }
    }

    goto LABEL_17;
  }

  v23 = MediaAnalysisStripOutdatedAnalysis();

  if ((types & ~[v23 vcp_types]) != 0)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v39 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v39))
      {
        [v23 vcp_types];
        v40 = MediaAnalysisTypeDescription();
        *buf = 138412546;
        v52 = v44;
        v53 = 2112;
        v54 = v40;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v39, "%@ Existing analysis doesn't satisfy request (%@)", buf, 0x16u);
      }
    }

    types &= ~[v23 vcp_types];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v41 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v41))
      {
        v42 = MediaAnalysisTypeDescription();
        *buf = 138412546;
        v52 = v44;
        v53 = 2112;
        v54 = v42;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "%@ Request on-demand analysis types %@", buf, 0x16u);
      }
    }

LABEL_18:
    if ([assetCopy isVideo])
    {
      v28 = [[VCPMovieAnalyzer alloc] initWithPHAsset:assetCopy withPausedAnalysis:analysisCopy forAnalysisTypes:types];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000B0190;
      v46[3] = &unk_100283000;
      v46[4] = self;
      v29 = [v28 analyzeAsset:v46 streamed:0];
      status = [v28 status];
    }

    else
    {
      v28 = [[VCPPhotoAnalyzer alloc] initWithPHAsset:assetCopy withExistingAnalysis:v23 forAnalysisTypes:types];
      [v28 setAllowStreaming:1];
      [v28 setRequiresOnDemandDownload:1];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1000B01F0;
      v45[3] = &unk_100283000;
      v45[4] = self;
      v29 = [v28 analyzeAsset:v45 withOptions:0];
      status = [v28 status];
    }

    v31 = status;

    if (v29)
    {
      v32 = MediaAnalysisMergeAnalysis();

      v29 = v32;
    }

    if (v31 == 4)
    {
      if (error)
      {
        v49 = NSLocalizedDescriptionKey;
        v34 = [NSString stringWithFormat:@"%@ Analysis canceled", v44];
        v50 = v34;
        v35 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v35];
      }
    }

    else
    {
      if (v31 != 2)
      {
        if (error)
        {
          v47 = NSLocalizedDescriptionKey;
          v36 = [NSString stringWithFormat:@"%@ Failed to analyze (status:%ld)", v44, v31];
          v48 = v36;
          v37 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v37];
        }

        v26 = 0;
        goto LABEL_34;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v33 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v33))
        {
          *buf = 138412290;
          v52 = v44;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@ Analysis finished", buf, 0xCu);
        }
      }
    }

    v26 = v29;
LABEL_34:

    goto LABEL_35;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v24 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v24))
    {
      [v23 vcp_types];
      v25 = MediaAnalysisTypeDescription();
      *buf = 138412546;
      v52 = v44;
      v53 = 2112;
      v54 = v25;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Existing analysis satisfies request (%@)", buf, 0x16u);
    }
  }

  v23 = v23;
  v26 = v23;
LABEL_35:

  return v26;
}

- (int)_resumePausedVideoAnalysis
{
  _partialAnalysisURL = [(MADComputeServiceProcessingTask *)self _partialAnalysisURL];
  if ([(NSURL *)self->_resultDirectoryURL startAccessingSecurityScopedResource])
  {
    v4 = [NSDictionary dictionaryWithContentsOfURL:_partialAnalysisURL];
    v5 = +[NSFileManager defaultManager];
    [v5 removeItemAtURL:_partialAnalysisURL error:0];

    [(NSURL *)self->_resultDirectoryURL stopAccessingSecurityScopedResource];
    if (!v4)
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        v16 = 0;
        v7 = @"[ResumePausedVideoAnalysis]";
      }

      else
      {
        v17 = VCPLogToOSLogType[6];
        v7 = @"[ResumePausedVideoAnalysis]";
        if (os_log_type_enabled(&_os_log_default, v17))
        {
          *buf = 138412290;
          *&buf[4] = @"[ResumePausedVideoAnalysis]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "%@ No partial analysis to resume", buf, 0xCu);
        }

        v16 = 0;
      }

      goto LABEL_73;
    }

    v6 = [v4 objectForKeyedSubscript:@"analysis"];
    if (!v6)
    {
      if (MediaAnalysisLogLevel() < 7)
      {
        v16 = -19;
        v7 = @"[ResumePausedVideoAnalysis]";
      }

      else
      {
        v18 = VCPLogToOSLogType[7];
        v7 = @"[ResumePausedVideoAnalysis]";
        if (os_log_type_enabled(&_os_log_default, v18))
        {
          *buf = 138412290;
          *&buf[4] = @"[ResumePausedVideoAnalysis]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "%@ Invalid partial analysis", buf, 0xCu);
        }

        v16 = -19;
      }

      goto LABEL_72;
    }

    v53 = [v4 objectForKeyedSubscript:@"identifierType"];
    v52 = [v4 objectForKeyedSubscript:@"assetIdentifier"];
    if ([v53 isEqualToString:@"filePath"] & 1) != 0 || (objc_msgSend(v53, "isEqualToString:", @"localIdentifier"))
    {
      v7 = [NSString stringWithFormat:@"[ResumePausedVideoAnalysis][%@]", v52];
      if (MediaAnalysisLogLevel() >= 5)
      {
        v8 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          requestID = self->_requestID;
          *buf = 138412546;
          *&buf[4] = v7;
          *&buf[12] = 2112;
          *&buf[14] = requestID;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "%@ Loaded partial analysis for request %@ ", buf, 0x16u);
        }
      }

      memset(&v65, 0, sizeof(v65));
      [v6 vcp_syncPoint];
      if (!(0 >> 96))
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_61;
        }

        v10 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v10))
        {
          goto LABEL_61;
        }

        *buf = 138412290;
        *&buf[4] = v7;
        v11 = "%@ Invalid sync point in paused analysis";
        v12 = v10;
        v13 = 12;
        goto LABEL_60;
      }

      if (MediaAnalysisLogLevel() >= 6)
      {
        v19 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v19))
        {
          time = v65;
          Seconds = CMTimeGetSeconds(&time);
          *buf = 138413058;
          *&buf[4] = v7;
          *&buf[12] = 2048;
          *&buf[14] = Seconds;
          *&buf[22] = 2048;
          value = v65.value;
          LOWORD(v72) = 1024;
          *(&v72 + 2) = v65.timescale;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Resume from sync point: %0.3fs (value: %lld, timescale: %d)", buf, 0x26u);
        }
      }

      _videoAnalysisTypes = [(MADComputeServiceProcessingTask *)self _videoAnalysisTypes];
      if ([v53 isEqualToString:@"filePath"])
      {
        context = objc_autoreleasePoolPush();
        if (MediaAnalysisLogLevel() >= 6)
        {
          v22 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            *buf = 138412290;
            *&buf[4] = v7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "%@ Resume processing with URL ...", buf, 0xCu);
          }
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        value = sub_1000B0FF4;
        v72 = sub_1000B1004;
        v73 = 0;
        time.value = 0;
        *&time.timescale = &time;
        time.epoch = 0x3032000000;
        v62 = sub_1000B0FF4;
        v63 = sub_1000B1004;
        v64 = 0;
        v23 = dispatch_semaphore_create(0);
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000B100C;
        v56[3] = &unk_100285620;
        v45 = v7;
        v57 = v45;
        p_time = &time;
        v60 = buf;
        dsema = v23;
        v58 = dsema;
        v50 = objc_retainBlock(v56);
        v24 = _videoAnalysisTypes;
        v25 = [NSURL fileURLWithPath:v52];
        v69 = v25;
        v26 = [NSArray arrayWithObjects:&v69 count:1];
        v27 = [VCPFullAnalysisURLProcessingTask taskForURLAsset:v26 withOptions:0 analysisTypes:v24 progressHandler:0 completionHandler:v50];

        [v27 setPartialAnalysis:v6];
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000B11C0;
        v55[3] = &unk_100283000;
        v55[4] = self;
        [v27 runWithCancelBlock:v55];
        dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
        if ([*(*&time.timescale + 40) code] == -128)
        {
          partialAnalysis = [v27 partialAnalysis];
          v29 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = partialAnalysis;
        }

        v30 = *(*&buf[8] + 40);
        v31 = *(*&time.timescale + 40);
        path = [v25 path];
        LOBYTE(v30) = [(MADComputeServiceProcessingTask *)self _processVideoAnalysis:v30 analysisError:v31 assetIdentifierType:@"filePath" assetIdentifier:path]== 0;

        if (v30)
        {
          v16 = 0;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v33 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v33))
            {
              *v67 = 138412290;
              v68 = v45;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v33, "%@ Failed to analyze with partial analysis", v67, 0xCu);
            }
          }

          v16 = -18;
        }

        _Block_object_dispose(&time, 8);
        _Block_object_dispose(buf, 8);

        objc_autoreleasePoolPop(context);
        goto LABEL_71;
      }

      if ([v53 isEqualToString:@"localIdentifier"])
      {
        contexta = objc_autoreleasePoolPush();
        if (MediaAnalysisLogLevel() >= 6)
        {
          v35 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v35))
          {
            *buf = 138412290;
            *&buf[4] = v7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v35, "%@ Resume processing with localIdentifier ...", buf, 0xCu);
          }
        }

        v36 = +[VCPPhotoLibraryManager sharedManager];
        v51 = [v36 photoLibraryWithURL:self->_photoLibraryURL];

        dsemaa = [PHAsset vcp_fetchOptionsForLibrary:v51 forTaskID:1];
        v66 = v52;
        v37 = [NSArray arrayWithObjects:&v66 count:1];
        v38 = [PHAsset fetchAssetsWithLocalIdentifiers:v37 options:dsemaa];
        firstObject = [v38 firstObject];

        if (firstObject)
        {
          v54 = 0;
          v40 = [(MADComputeServiceProcessingTask *)self _processVideoAsset:firstObject partialAnalysis:v6 analysisTypes:_videoAnalysisTypes error:&v54];
          v41 = v54;
          if ([(MADComputeServiceProcessingTask *)self _processVideoAnalysis:v40 analysisError:v41 assetIdentifierType:@"localIdentifier" assetIdentifier:v52])
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v42 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v42))
              {
                *buf = 138412290;
                *&buf[4] = v7;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "%@ Failed to analyze with partial analysis", buf, 0xCu);
              }
            }

            v16 = -18;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v43 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v43))
            {
              *buf = 138412290;
              *&buf[4] = v7;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@ Failed to fetch asset", buf, 0xCu);
            }
          }

          v16 = -18;
        }

        objc_autoreleasePoolPop(contexta);
        goto LABEL_71;
      }

      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_61;
      }

      v34 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v34))
      {
        goto LABEL_61;
      }

      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v53;
      v11 = "%@ Unsupported asset identifier type %@; skip resuming";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        v16 = -50;
        v7 = @"[ResumePausedVideoAnalysis]";
LABEL_71:

LABEL_72:
LABEL_73:

        goto LABEL_74;
      }

      v34 = VCPLogToOSLogType[3];
      v7 = @"[ResumePausedVideoAnalysis]";
      if (!os_log_type_enabled(&_os_log_default, v34))
      {
LABEL_61:
        v16 = -50;
        goto LABEL_71;
      }

      *buf = 138412546;
      *&buf[4] = @"[ResumePausedVideoAnalysis]";
      *&buf[12] = 2112;
      *&buf[14] = v53;
      v11 = "%@ Unsupported asset identifier type %@";
    }

    v12 = v34;
    v13 = 22;
LABEL_60:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v11, buf, v13);
    goto LABEL_61;
  }

  if (MediaAnalysisLogLevel() < 3)
  {
    v16 = 0;
    v7 = @"[ResumePausedVideoAnalysis]";
  }

  else
  {
    v14 = VCPLogToOSLogType[3];
    v7 = @"[ResumePausedVideoAnalysis]";
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      resultDirectoryURL = self->_resultDirectoryURL;
      *buf = 138412546;
      *&buf[4] = @"[ResumePausedVideoAnalysis]";
      *&buf[12] = 2112;
      *&buf[14] = resultDirectoryURL;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "%@ Failed to start security scoped resource %@", buf, 0x16u);
    }

    v16 = 0;
  }

LABEL_74:

  return v16;
}

- (void)_processVideoAssetURLs
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v3 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(NSArray *)self->_assetURLs count];
      *buf = 138412546;
      *&buf[4] = @"[ProcessVideoAssetURL]";
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Processing %lu assetURLs ... ", buf, 0x16u);
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = self->_assetURLs;
  v28 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v28)
  {
    v27 = *v43;
    type = VCPLogToOSLogType[6];
    v24 = VCPLogToOSLogType[3];
    *&v5 = 138412290;
    v23 = v5;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        path = [v7 path];
        v10 = [path isEqualToString:self->_resumedAssetIdentifier];

        if (!v10)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v52 = sub_1000B0FF4;
          v53 = sub_1000B1004;
          v54 = 0;
          v36 = 0;
          v37 = &v36;
          v38 = 0x3032000000;
          v39 = sub_1000B0FF4;
          v40 = sub_1000B1004;
          v41 = 0;
          v11 = dispatch_semaphore_create(0);
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1000B1898;
          v31[3] = &unk_100285620;
          v32 = @"[ProcessVideoAssetURL]";
          v34 = &v36;
          v35 = buf;
          v12 = v11;
          v33 = v12;
          v29 = objc_retainBlock(v31);
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
          {
            *v47 = 138412546;
            v48 = @"[ProcessVideoAssetURL]";
            v49 = 2112;
            v50 = v7;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] Start processing ...", v47, 0x16u);
          }

          v46 = v7;
          v13 = [NSArray arrayWithObjects:&v46 count:1, v23];
          v14 = [VCPFullAnalysisURLProcessingTask taskForURLAsset:v13 withOptions:0 analysisTypes:[(MADComputeServiceProcessingTask *)self _videoAnalysisTypes] progressHandler:0 completionHandler:v29];

          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_1000B1A4C;
          v30[3] = &unk_100283000;
          v30[4] = self;
          v15 = objc_retainBlock(v30);
          [v14 runWithCancelBlock:v15];
          dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
          if ([v37[5] code] == -128)
          {
            partialAnalysis = [v14 partialAnalysis];
            v17 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = partialAnalysis;
          }

          v18 = *(*&buf[8] + 40);
          v19 = v37[5];
          path2 = [v7 path];
          LODWORD(v19) = [(MADComputeServiceProcessingTask *)self _processVideoAnalysis:v18 analysisError:v19 assetIdentifierType:@"filePath" assetIdentifier:path2]== 0;

          if (v19)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
            {
              *v47 = 138412546;
              v48 = @"[ProcessVideoAssetURL]";
              v49 = 2112;
              v50 = v7;
              v21 = type;
              v22 = "%@[%@] Processed analysis";
LABEL_25:
              _os_log_impl(&_mh_execute_header, &_os_log_default, v21, v22, v47, 0x16u);
            }
          }

          else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v24))
          {
            *v47 = 138412546;
            v48 = @"[ProcessVideoAssetURL]";
            v49 = 2112;
            v50 = v7;
            v21 = v24;
            v22 = "%@[%@] Failed to process analysis";
            goto LABEL_25;
          }

          _Block_object_dispose(&v36, 8);
          _Block_object_dispose(buf, 8);

          goto LABEL_27;
        }

        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = v23;
          *&buf[4] = @"[ProcessVideoAssetURL]";
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Resume processed; skip re-process", buf, 0xCu);
        }

LABEL_27:
        objc_autoreleasePoolPop(v8);
      }

      v28 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v28);
  }
}

- (void)_processVideoLocalIdentifiers
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v3 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(NSArray *)self->_localIdentifiers count];
      *buf = 138412546;
      v26 = @"[ProcessVideoAsset]";
      v27 = 2048;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Processing %lu localIdentifiers ... ", buf, 0x16u);
    }
  }

  v22 = [NSMutableArray arrayWithArray:self->_localIdentifiers];
  if ([v22 containsObject:self->_resumedAssetIdentifier])
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v5 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *buf = 138412290;
        v26 = @"[ProcessVideoAsset]";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Resume processed; skip re-process", buf, 0xCu);
      }
    }

    [v22 removeObject:self->_resumedAssetIdentifier];
  }

  v6 = +[VCPPhotoLibraryManager sharedManager];
  v21 = [v6 photoLibraryWithURL:self->_photoLibraryURL];

  v20 = [PHAsset vcp_fetchOptionsForLibrary:v21 forTaskID:1];
  v7 = [PHAsset fetchAssetsWithLocalIdentifiers:v22 options:?];
  v8 = 0;
  v9 = VCPLogToOSLogType[6];
  type = VCPLogToOSLogType[3];
  while (v8 < [v7 count])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v7 objectAtIndexedSubscript:v8];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v9))
    {
      localIdentifier = [v11 localIdentifier];
      *buf = 138412546;
      v26 = @"[ProcessVideoAsset]";
      v27 = 2112;
      v28 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@[%@] Start processing ...", buf, 0x16u);
    }

    _videoAnalysisTypes = [(MADComputeServiceProcessingTask *)self _videoAnalysisTypes];
    v24 = 0;
    v14 = [(MADComputeServiceProcessingTask *)self _processVideoAsset:v11 partialAnalysis:0 analysisTypes:_videoAnalysisTypes error:&v24];
    v15 = v24;
    localIdentifier2 = [v11 localIdentifier];
    v17 = [(MADComputeServiceProcessingTask *)self _processVideoAnalysis:v14 analysisError:v15 assetIdentifierType:@"localIdentifier" assetIdentifier:localIdentifier2]== 0;

    if (v17)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v9))
      {
        localIdentifier3 = [v11 localIdentifier];
        *buf = 138412546;
        v26 = @"[ProcessVideoAsset]";
        v27 = 2112;
        v28 = localIdentifier3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@[%@] Processed analysis", buf, 0x16u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
    {
      localIdentifier4 = [v11 localIdentifier];
      *buf = 138412546;
      v26 = @"[ProcessVideoAsset]";
      v27 = 2112;
      v28 = localIdentifier4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@[%@] Failed to process analysis", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    ++v8;
  }
}

- (void)_processVideoRequests
{
  v3 = objc_autoreleasePoolPush();
  [(MADComputeServiceProcessingTask *)self _resumePausedVideoAnalysis];
  objc_autoreleasePoolPop(v3);
  v4 = [(NSArray *)self->_localIdentifiers count];
  v5 = objc_autoreleasePoolPush();
  if (v4)
  {
    [(MADComputeServiceProcessingTask *)self _processVideoLocalIdentifiers];
  }

  else
  {
    [(MADComputeServiceProcessingTask *)self _processVideoAssetURLs];
  }

  objc_autoreleasePoolPop(v5);
  if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Finished processing video requests", v7, 2u);
    }
  }
}

- (int)run
{
  atomic_store(1u, &self->_started);
  v86 = [NSString stringWithFormat:@"[MADComputeServiceProcessingTask]"];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      *buf = 138412290;
      v103 = v86;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "%@ Consuming secure scoped resource ... ", buf, 0xCu);
    }
  }

  v4 = 0;
  v5 = VCPLogToOSLogType[7];
  while (v4 < [(NSArray *)self->_assetURLs count])
  {
    v6 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:v4];
    startAccessingSecurityScopedResource = [v6 startAccessingSecurityScopedResource];

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v5))
    {
      v8 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:v4];
      v9 = v8;
      *buf = 138412802;
      v10 = @"failed";
      if (startAccessingSecurityScopedResource)
      {
        v10 = @"success";
      }

      v103 = v86;
      v104 = 2112;
      v105 = v8;
      v106 = 2112;
      v107 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Consuming secure scoped URL %@ : %@", buf, 0x20u);
    }

    ++v4;
  }

  v87 = +[NSMutableArray array];
  v11 = 0;
  v84 = VCPLogToOSLogType[6];
  v83 = VCPLogToOSLogType[3];
  type = VCPLogToOSLogType[5];
  while (v11 < [(NSArray *)self->_requests count])
  {
    v12 = objc_autoreleasePoolPush();
    isCancelled = [(MADComputeServiceProcessingTask *)self isCancelled];
    v14 = isCancelled;
    if (isCancelled)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v103 = v86;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Request is canceled during preparing; quitting ...", buf, 0xCu);
      }

      goto LABEL_30;
    }

    v15 = [(NSArray *)self->_requests objectAtIndexedSubscript:v11];
    v16 = [NSString stringWithFormat:@"[MADComputeServiceProcessingTask][%@]", objc_opt_class()];
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v84))
    {
      *buf = 138412546;
      v103 = v16;
      v104 = 2112;
      v105 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "%@ Adding request ... %@ ", buf, 0x16u);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    _prepareSceneAssetProcessingTask = [(MADComputeServiceProcessingTask *)self _prepareSceneAssetProcessingTask];
                    if (_prepareSceneAssetProcessingTask)
                    {
                      goto LABEL_34;
                    }

                    if ([(NSArray *)self->_localIdentifiers count])
                    {
                      v78 = 0;
                      v100 = NSLocalizedDescriptionKey;
                      v72 = [NSString stringWithFormat:@"%@ Failed to issue request", v16];
                      v101 = v72;
                      v18 = [NSDictionary dictionaryWithObjects:&v101 forKeys:&v100 count:1];
                      v80 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v18];

                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v83))
                      {
                        *buf = 138412290;
                        v103 = v80;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "%@", buf, 0xCu);
                      }

                      goto LABEL_44;
                    }

LABEL_86:

                    goto LABEL_29;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    _prepareSceneAssetProcessingTask = [(MADComputeServiceProcessingTask *)self _prepareFaceAssetProcessingTask];
                    if (_prepareSceneAssetProcessingTask)
                    {
LABEL_34:
                      [v87 addObject:_prepareSceneAssetProcessingTask];
                      goto LABEL_86;
                    }

                    if (![(NSArray *)self->_localIdentifiers count])
                    {
                      goto LABEL_86;
                    }

                    v78 = 0;
                    v98 = NSLocalizedDescriptionKey;
                    v75 = [NSString stringWithFormat:@"%@ Failed to issue request", v16];
                    v99 = v75;
                    v31 = [NSDictionary dictionaryWithObjects:&v99 forKeys:&v98 count:1];
                    v80 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v31];

                    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v83))
                    {
                      *buf = 138412290;
                      v103 = v80;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "%@", buf, 0xCu);
                    }

LABEL_44:
                    v19 = [(NSArray *)self->_localIdentifiers count];
                    totalTaskCount = self->_totalTaskCount;
                    v21 = self->_finishedTaskCount + v19;
                    self->_finishedTaskCount = v21;
                    (*(self->_progressHandler + 2))(v21 / totalTaskCount);
                    (*(self->_resultsHandler + 2))();
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      _prepareSceneAssetProcessingTask = [v15 visionRequest];
                      [(MADComputeServiceProcessingTask *)self _processVisionRequest:_prepareSceneAssetProcessingTask];
                      goto LABEL_86;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v94 = NSLocalizedDescriptionKey;
                      v76 = [NSString stringWithFormat:@"%@ Unsupported request %@", v16, v15];
                      v95 = v76;
                      v32 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
                      v79 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 userInfo:v32];

                      _prepareSceneAssetProcessingTask = v79;
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v83))
                      {
                        *buf = 138412290;
                        v103 = v79;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "%@", buf, 0xCu);
                      }

                      v33 = [(NSArray *)self->_localIdentifiers count];
                      v34 = self->_totalTaskCount;
                      v35 = self->_finishedTaskCount + v33;
                      self->_finishedTaskCount = v35;
                      (*(self->_progressHandler + 2))(v35 / v34);
                      (*(self->_resultsHandler + 2))();
                      goto LABEL_86;
                    }

                    v78 = v15;
                    [v78 consumeSandboxExtension];
                    modelURL = [v78 modelURL];
                    startAccessingSecurityScopedResource2 = [modelURL startAccessingSecurityScopedResource];

                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v5))
                    {
                      modelURL2 = [v78 modelURL];
                      v24 = modelURL2;
                      *buf = 138412802;
                      v25 = @"failed";
                      if (startAccessingSecurityScopedResource2)
                      {
                        v25 = @"success";
                      }

                      v103 = v16;
                      v104 = 2112;
                      v105 = modelURL2;
                      v106 = 2112;
                      v107 = v25;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Consuming secure scoped model URL %@ : %@", buf, 0x20u);
                    }

                    modelURL3 = [v78 modelURL];
                    lastPathComponent = [modelURL3 lastPathComponent];
                    v73 = [lastPathComponent isEqualToString:@".mlmodel"];

                    if (v73)
                    {
                      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v5))
                      {
                        modelURL4 = [v78 modelURL];
                        *buf = 138412546;
                        v103 = v16;
                        v104 = 2112;
                        v105 = modelURL4;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Compiling compiledModelURL at %@", buf, 0x16u);
                      }

                      modelURL5 = [v78 modelURL];
                      v91 = 0;
                      v29 = modelURL5;
                      v74 = [MLModel compileModelAtURL:modelURL5 error:&v91];
                      v70 = v91;

                      v90 = v70;
                      v80 = [MLModel modelWithContentsOfURL:v74 error:&v90];
                      v30 = v90;
                    }

                    else
                    {
                      modelURL6 = [v78 modelURL];
                      v89 = 0;
                      v74 = modelURL6;
                      v80 = [MLModel modelWithContentsOfURL:modelURL6 error:&v89];
                      v30 = v89;
                    }

                    if (v30)
                    {
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v83))
                      {
                        *buf = 138412802;
                        v103 = v16;
                        v104 = 2112;
                        v105 = v80;
                        v106 = 2112;
                        v107 = v30;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "%@ Failed to read CoreML model file: %@ - %@", buf, 0x20u);
                      }

                      v37 = [(NSArray *)self->_localIdentifiers count];
                      v38 = self->_totalTaskCount;
                      v39 = self->_finishedTaskCount + v37;
                      self->_finishedTaskCount = v39;
                      (*(self->_progressHandler + 2))(v39 / v38);
                      (*(self->_resultsHandler + 2))();
                    }

                    v88 = v30;
                    v71 = [VNCoreMLModel modelForMLModel:v80 error:&v88];
                    v77 = v88;

                    if (v77)
                    {
                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v83))
                      {
                        *buf = 138412802;
                        v103 = v16;
                        v104 = 2112;
                        v105 = v80;
                        v106 = 2112;
                        v107 = v77;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "%@ Failed to load CoreML model: %@ - %@", buf, 0x20u);
                      }

                      v40 = [(NSArray *)self->_localIdentifiers count];
                      v41 = self->_totalTaskCount;
                      v42 = self->_finishedTaskCount + v40;
                      self->_finishedTaskCount = v42;
                      (*(self->_progressHandler + 2))(v42 / v41);
                      (*(self->_resultsHandler + 2))();
                    }

                    v43 = [[VNCoreMLRequest alloc] initWithModel:v71];
                    v69 = v43;
                    if (!v43)
                    {
                      v96 = NSLocalizedDescriptionKey;
                      modelURL7 = [v78 modelURL];
                      v66 = [NSString stringWithFormat:@"%@ Failed to create VNRequest with CoreML model %@ - %@", v16, v71, modelURL7];
                      v97 = v66;
                      v44 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
                      v68 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v44];

                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v83))
                      {
                        *buf = 138412290;
                        v103 = v68;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "%@", buf, 0xCu);
                      }

                      v45 = [(NSArray *)self->_localIdentifiers count];
                      v46 = self->_totalTaskCount;
                      v47 = self->_finishedTaskCount + v45;
                      self->_finishedTaskCount = v47;
                      (*(self->_progressHandler + 2))(v47 / v46);
                      (*(self->_resultsHandler + 2))();

                      v43 = 0;
                    }

                    [(MADComputeServiceProcessingTask *)self _processVisionRequest:v43];
                    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v5))
                    {
                      modelURL8 = [v78 modelURL];
                      *buf = 138412546;
                      v103 = v16;
                      v104 = 2112;
                      v105 = modelURL8;
                      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Releasing secure scoped model URL %@", buf, 0x16u);
                    }

                    modelURL9 = [v78 modelURL];
                    [modelURL9 stopAccessingSecurityScopedResource];
                  }

                  _prepareSceneAssetProcessingTask = v78;
                  goto LABEL_86;
                }
              }
            }
          }
        }
      }
    }

    [(NSMutableArray *)self->_videoProcessingRequests addObject:v15];
LABEL_29:

LABEL_30:
    objc_autoreleasePoolPop(v12);
    ++v11;
    if (v14)
    {
      break;
    }
  }

  v50 = 0;
  do
  {
    if (v50 >= [v87 count])
    {
      break;
    }

    v51 = objc_autoreleasePoolPush();
    isCancelled2 = [(MADComputeServiceProcessingTask *)self isCancelled];
    v53 = isCancelled2;
    if (isCancelled2)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v103 = v86;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Request is canceled during executing; quitting ...", buf, 0xCu);
      }
    }

    else
    {
      v54 = [v87 objectAtIndexedSubscript:v50];
      v55 = [NSString stringWithFormat:@"[MADComputeServiceProcessingTask][%@][Run]", objc_opt_class()];
      v56 = [v54 run];
      if (v56 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v83))
      {
        *buf = 138412546;
        v103 = v55;
        v104 = 1024;
        LODWORD(v105) = v56;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v83, "%@ Failed to process assets (%d)", buf, 0x12u);
      }
    }

    objc_autoreleasePoolPop(v51);
    ++v50;
  }

  while ((v53 & 1) == 0);
  if ([(NSMutableArray *)self->_videoProcessingRequests count])
  {
    if ([(MADComputeServiceProcessingTask *)self isCancelled])
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v103 = v86;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Request is canceled before video processing; quitting ...", buf, 0xCu);
      }
    }

    else
    {
      [(MADComputeServiceProcessingTask *)self _processVideoRequests];
    }
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v84))
  {
    *buf = 138412290;
    v103 = v86;
    _os_log_impl(&_mh_execute_header, &_os_log_default, v84, "%@ Closing secure scoped resource ... ", buf, 0xCu);
  }

  for (i = 0; i < [(NSArray *)self->_assetURLs count]; ++i)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v5))
    {
      v58 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:i];
      *buf = 138412546;
      v103 = v86;
      v104 = 2112;
      v105 = v58;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "%@ Closing secure scoped URL %@", buf, 0x16u);
    }

    v59 = [(NSArray *)self->_assetURLs objectAtIndexedSubscript:i];
    [v59 stopAccessingSecurityScopedResource];
  }

  isCancelled3 = [(MADComputeServiceProcessingTask *)self isCancelled];
  completionHandler = self->_completionHandler;
  if (isCancelled3)
  {
    v92 = NSLocalizedDescriptionKey;
    v62 = [NSString stringWithFormat:@"%@ Request is canceled", v86];
    v93 = v62;
    v63 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
    v64 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-128 userInfo:v63];
    completionHandler[2](completionHandler, v64);
  }

  else
  {
    completionHandler[2](self->_completionHandler, 0);
  }

  return 0;
}

@end