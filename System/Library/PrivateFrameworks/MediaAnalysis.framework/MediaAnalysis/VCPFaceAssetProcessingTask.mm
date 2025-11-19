@interface VCPFaceAssetProcessingTask
+ (id)taskWithAssets:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5;
- (VCPFaceAssetProcessingTask)initWithAssets:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5;
- (int)main;
- (int)run;
@end

@implementation VCPFaceAssetProcessingTask

- (VCPFaceAssetProcessingTask)initWithAssets:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 count])
  {
    v12 = [(VCPFaceProcessingTask *)self photoLibrary];
    v13 = [VCPPhotosFaceProcessingContext contextWithPhotoLibrary:v12];

    v14 = [v9 firstObject];
    v15 = [v14 photoLibrary];
    v24.receiver = self;
    v24.super_class = VCPFaceAssetProcessingTask;
    v16 = [(VCPFaceProcessingTask *)&v24 initWithPhotoLibrary:v15 andContext:v13 andCancelBlock:&stru_100286600];

    if (v16)
    {
      v17 = objc_retainBlock(v10);
      progressHandler = v16->_progressHandler;
      v16->_progressHandler = v17;

      if (v11)
      {
        v19 = v11;
      }

      else
      {
        v19 = &stru_100286620;
      }

      v20 = objc_retainBlock(v19);
      completionHandler = v16->_completionHandler;
      v16->_completionHandler = v20;

      objc_storeStrong(&v16->_assets, a3);
    }

    self = v16;

    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)taskWithAssets:(id)a3 andProgressHandler:(id)a4 andCompletionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(objc_opt_class()) initWithAssets:v7 andProgressHandler:v8 andCompletionHandler:v9];

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

  v4 = [(NSArray *)self->_assets firstObject];
  v5 = [v4 photoLibrary];
  -[VCPFaceProcessingTask setAllowStreaming:](self, "setAllowStreaming:", [v5 vcp_allowsCloudLibraryResourceDownload]);

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

      v14 = [v13 photoLibrary];
      if ([v14 mad_pauseFCPeopleFurtherProcessing])
      {
        v15 = [v13 faceAnalysisVersion] == 14;

        if (v15)
        {
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v11))
          {
            v16 = [v13 localIdentifier];
            *buf = v18;
            v25 = v16;
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
  v3 = [(VCPFaceAssetProcessingTask *)self main];
  v4 = [(VCPFaceProcessingTask *)self flush]| v3;
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