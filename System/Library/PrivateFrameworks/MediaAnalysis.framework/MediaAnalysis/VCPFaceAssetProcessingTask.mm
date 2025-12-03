@interface VCPFaceAssetProcessingTask
+ (id)taskWithAssets:(id)assets andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (VCPFaceAssetProcessingTask)initWithAssets:(id)assets andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (int)main;
- (int)run;
@end

@implementation VCPFaceAssetProcessingTask

- (VCPFaceAssetProcessingTask)initWithAssets:(id)assets andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetsCopy = assets;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if ([assetsCopy count])
  {
    photoLibrary = [(VCPFaceProcessingTask *)self photoLibrary];
    v13 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:photoLibrary];

    firstObject = [assetsCopy firstObject];
    photoLibrary2 = [firstObject photoLibrary];
    v24.receiver = self;
    v24.super_class = VCPFaceAssetProcessingTask;
    v16 = [(VCPFaceProcessingTask *)&v24 initWithPhotoLibrary:photoLibrary2 andContext:v13 andCancelBlock:&stru_100286600];

    if (v16)
    {
      v17 = objc_retainBlock(handlerCopy);
      progressHandler = v16->_progressHandler;
      v16->_progressHandler = v17;

      if (completionHandlerCopy)
      {
        v19 = completionHandlerCopy;
      }

      else
      {
        v19 = &stru_100286620;
      }

      v20 = objc_retainBlock(v19);
      completionHandler = v16->_completionHandler;
      v16->_completionHandler = v20;

      objc_storeStrong(&v16->_assets, assets);
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

+ (id)taskWithAssets:(id)assets andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  assetsCopy = assets;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v10 = [objc_alloc(objc_opt_class()) initWithAssets:assetsCopy andProgressHandler:handlerCopy andCompletionHandler:completionHandlerCopy];

  return v10;
}

- (int)main
{
  if (![(NSArray *)self->_assets count])
  {
    return -50;
  }

  if (self->_progressHandler)
  {
    v19 = [VCPProgressReporter reporterWithIntervalSeconds:1 andTotalJobCount:[(NSArray *)self->_assets count] andBlock:self->_progressHandler];
  }

  else
  {
    v19 = 0;
  }

  firstObject = [(NSArray *)self->_assets firstObject];
  photoLibrary = [firstObject photoLibrary];
  -[VCPFaceProcessingTask setAllowStreaming:](self, "setAllowStreaming:", [photoLibrary vcp_allowsCloudLibraryResourceDownload]);

  v6 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_assets;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (!v8)
  {
    goto LABEL_24;
  }

  v10 = *v21;
  v11 = VCPLogToOSLogType[5];
  *&v9 = 138412290;
  v18 = v9;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v20 + 1) + 8 * i);
      if ([(VCPFaceProcessingTask *)self isCancelled])
      {
        v3 = -128;
LABEL_29:

        goto LABEL_30;
      }

      photoLibrary2 = [v13 photoLibrary];
      if ([photoLibrary2 mad_pauseFCPeopleFurtherProcessing])
      {
        v15 = [v13 faceAnalysisVersion] == 14;

        if (v15)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v11))
          {
            localIdentifier = [v13 localIdentifier];
            *buf = v18;
            v25 = localIdentifier;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[%@] already with FC version; skip", buf, 0xCu);
          }

          continue;
        }
      }

      else
      {
      }

      if ([v13 vcp_needsFaceProcessing])
      {
        [v19 increaseProcessedJobCountByOne];
        [v6 addObject:v13];
        if ([v6 count] >= 0x64)
        {
          v3 = [(VCPFaceProcessingTask *)self processAssets:v6];
          if (v3)
          {
            goto LABEL_29;
          }

          [v6 removeAllObjects];
        }
      }
    }

    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_24:

  if ([v6 count])
  {
    v3 = [(VCPFaceProcessingTask *)self processAssets:v6];
    if (!v3)
    {
      [v6 removeAllObjects];
      goto LABEL_27;
    }
  }

  else
  {
LABEL_27:
    v3 = 0;
  }

LABEL_30:

  return v3;
}

- (int)run
{
  main = [(VCPFaceAssetProcessingTask *)self main];
  v4 = [(VCPFaceProcessingTask *)self flush]| main;
  if (v4)
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v5 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Face asset processing failed", v10, 2u);
      }
    }

    v11 = NSLocalizedDescriptionKey;
    v12 = @"Face asset processing failed";
    v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    completionHandler = self->_completionHandler;
    v8 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v4 userInfo:v6];
    completionHandler[2](completionHandler, 0, v8);
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }

  return v4;
}

@end