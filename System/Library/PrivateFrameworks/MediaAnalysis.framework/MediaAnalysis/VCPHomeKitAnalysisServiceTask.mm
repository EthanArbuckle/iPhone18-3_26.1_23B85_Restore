@interface VCPHomeKitAnalysisServiceTask
+ (id)taskForFragmentData:(id)data withProperties:(id)properties andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
+ (id)taskForFragmentSurface:(id)surface withProperties:(id)properties andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler;
- (VCPHomeKitAnalysisServiceTask)initWithFragmentData:(id)data properties:(id)properties progressHandler:(id)handler completionHandler:(id)completionHandler;
- (VCPHomeKitAnalysisServiceTask)initWithFragmentSurface:(id)surface properties:(id)properties progressHandler:(id)handler completionHandler:(id)completionHandler;
- (int)run;
- (void)cancel;
- (void)runFragmentLevelAnalysis;
- (void)runFrameLevelAnalysis;
@end

@implementation VCPHomeKitAnalysisServiceTask

- (VCPHomeKitAnalysisServiceTask)initWithFragmentData:(id)data properties:(id)properties progressHandler:(id)handler completionHandler:(id)completionHandler
{
  dataCopy = data;
  propertiesCopy = properties;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v29.receiver = self;
  v29.super_class = VCPHomeKitAnalysisServiceTask;
  v15 = [(VCPHomeKitAnalysisServiceTask *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fragmentData, data);
    *&v16->_cancel = 0;
    v16->_requestID = -1;
    if (handlerCopy)
    {
      v17 = handlerCopy;
    }

    else
    {
      v17 = &stru_1002834A8;
    }

    v18 = objc_retainBlock(v17);
    progressHandler = v16->_progressHandler;
    v16->_progressHandler = v18;

    if (completionHandlerCopy)
    {
      v20 = completionHandlerCopy;
    }

    else
    {
      v20 = &stru_1002834E8;
    }

    v21 = objc_retainBlock(v20);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v21;

    objc_storeStrong(&v16->_properties, properties);
    v23 = objc_alloc_init(sub_100024A98());
    analysisService = v16->_analysisService;
    v16->_analysisService = v23;

    v25 = dispatch_queue_create("com.apple.mediaanalysisd.homekittaskmanagment", 0);
    managementQueue = v16->_managementQueue;
    v16->_managementQueue = v25;

    v27 = v16;
  }

  return v16;
}

- (VCPHomeKitAnalysisServiceTask)initWithFragmentSurface:(id)surface properties:(id)properties progressHandler:(id)handler completionHandler:(id)completionHandler
{
  surfaceCopy = surface;
  propertiesCopy = properties;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v29.receiver = self;
  v29.super_class = VCPHomeKitAnalysisServiceTask;
  v15 = [(VCPHomeKitAnalysisServiceTask *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fragmentSurface, surface);
    *&v16->_cancel = 0;
    v16->_requestID = -1;
    if (handlerCopy)
    {
      v17 = handlerCopy;
    }

    else
    {
      v17 = &stru_100283508;
    }

    v18 = objc_retainBlock(v17);
    progressHandler = v16->_progressHandler;
    v16->_progressHandler = v18;

    if (completionHandlerCopy)
    {
      v20 = completionHandlerCopy;
    }

    else
    {
      v20 = &stru_100283528;
    }

    v21 = objc_retainBlock(v20);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v21;

    objc_storeStrong(&v16->_properties, properties);
    v23 = objc_alloc_init(sub_100024A98());
    analysisService = v16->_analysisService;
    v16->_analysisService = v23;

    v25 = dispatch_queue_create("com.apple.mediaanalysisd.homekittaskmanagment", 0);
    managementQueue = v16->_managementQueue;
    v16->_managementQueue = v25;

    v27 = v16;
  }

  return v16;
}

+ (id)taskForFragmentData:(id)data withProperties:(id)properties andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  dataCopy = data;
  propertiesCopy = properties;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (dataCopy)
  {
    v13 = [objc_alloc(objc_opt_class()) initWithFragmentData:dataCopy properties:propertiesCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)taskForFragmentSurface:(id)surface withProperties:(id)properties andProgressHandler:(id)handler andCompletionHandler:(id)completionHandler
{
  surfaceCopy = surface;
  propertiesCopy = properties;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (surfaceCopy)
  {
    v13 = [objc_alloc(objc_opt_class()) initWithFragmentSurface:surfaceCopy properties:propertiesCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)cancel
{
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024F04;
  block[3] = &unk_100283210;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

- (void)runFragmentLevelAnalysis
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000250C0;
  v9 = sub_1000250D0;
  v10 = dispatch_semaphore_create(0);
  managementQueue = self->_managementQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000250D8;
  v4[3] = &unk_100283150;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(managementQueue, v4);
  dispatch_semaphore_wait(v6[5], 0xFFFFFFFFFFFFFFFFLL);
  _Block_object_dispose(&v5, 8);
}

- (void)runFrameLevelAnalysis
{
  context = objc_autoreleasePoolPush();
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](0.0);
  }

  v37 = kCVPixelBufferPixelFormatTypeKey;
  v38 = &off_100294320;
  context = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1, context];
  v18 = [VCPInMemoryAVAsset assetWithData:self->_fragmentData];
  v19 = [v18 vcp_firstEnabledTrackWithMediaType:AVMediaTypeVideo];
  v4 = [AVAssetReader assetReaderWithAsset:v18 error:0];
  v5 = [AVAssetReaderTrackOutput assetReaderTrackOutputWithTrack:v19 outputSettings:context];
  if (([v4 canAddOutput:v5] & 1) != 0 && (objc_msgSend(v4, "addOutput:", v5), objc_msgSend(v4, "startReading")))
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_1000250C0;
    v35 = sub_1000250D0;
    v36 = objc_alloc_init(NSMutableArray);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = dispatch_semaphore_create(0);
    while (1)
    {
      sbuf = [v5 copyNextSampleBuffer];
      if (!sbuf)
      {
        break;
      }

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100025860;
      v22[3] = &unk_100283578;
      v24 = &v27;
      v25 = &v31;
      v6 = v21;
      v23 = v6;
      v7 = objc_retainBlock(v22);
      self->_requestID = [(HMIAnalysisService *)self->_analysisService requestAnalysisForPixelBuffer:CMSampleBufferGetImageBuffer(sbuf) withProperties:self->_properties andCompletionHandler:v7];
      dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
      v8 = *(v28 + 24);

      if (v8)
      {
        break;
      }

      sub_100002CBC(&sbuf);
    }

    sub_100002CBC(&sbuf);
    v10 = [NSDictionary dictionaryWithObject:v32[5] forKey:@"frameResults"];
    if ([v4 status] == 2)
    {
      v11 = self->_progressHandler;
      if (v11)
      {
        v11[2](100.0);
      }

      completionHandler = self->_completionHandler;
      if (v28[3])
      {
        v13 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:0];
        completionHandler[2](completionHandler, 0, v13);
      }

      else
      {
        (completionHandler)[2](self->_completionHandler, v10, 0);
      }

      v9 = 0;
    }

    else
    {
      v9 = -18;
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v9 = -19;
  }

  objc_autoreleasePoolPop(contexta);
  if (v9)
  {
    v14 = self->_completionHandler;
    v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v9 userInfo:0];
    v14[2](v14, 0, v15);
  }
}

- (int)run
{
  if ([objc_opt_class() isPerFrameAnalysisEnabled])
  {
    [(VCPHomeKitAnalysisServiceTask *)self runFrameLevelAnalysis];
  }

  else
  {
    [(VCPHomeKitAnalysisServiceTask *)self runFragmentLevelAnalysis];
  }

  return 0;
}

@end