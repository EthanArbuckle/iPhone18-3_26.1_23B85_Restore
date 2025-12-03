@interface MADPreheatingTask
+ (id)taskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
+ (int)clearPixelBuffer:(__CVBuffer *)buffer;
- (BOOL)run:(id *)run;
- (MADPreheatingTask)initWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)dealloc;
@end

@implementation MADPreheatingTask

- (MADPreheatingTask)initWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v16.receiver = self;
  v16.super_class = MADPreheatingTask;
  v11 = [(MADPreheatingTask *)&v16 initWithCompletionHandler:completionHandlerCopy];
  if (v11)
  {
    if (handlerCopy)
    {
      v12 = handlerCopy;
    }

    else
    {
      v12 = &stru_100285C30;
    }

    v13 = objc_retainBlock(v12);
    progressHandler = v11->_progressHandler;
    v11->_progressHandler = v13;

    [(MADPreheatingTask *)v11 setCancelBlock:blockCopy];
  }

  return v11;
}

+ (id)taskWithCancelBlock:(id)block progressHandler:(id)handler completionHandler:(id)completionHandler
{
  blockCopy = block;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v11 = [[self alloc] initWithCancelBlock:blockCopy progressHandler:handlerCopy completionHandler:completionHandlerCopy];

  return v11;
}

+ (int)clearPixelBuffer:(__CVBuffer *)buffer
{
  pixelBuffer = buffer;
  unlockFlags = 0;
  if (buffer)
  {
    v4 = CVPixelBufferLockBaseAddress(buffer, 0);
    LODWORD(v10) = v4;
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000D0338();
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
      Height = CVPixelBufferGetHeight(buffer);
      memset(BaseAddress, 255, Height * BytesPerRow);
      v5 = sub_1000337A8(&v10);
      if (pixelBuffer && !v10 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000D03C0();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10003B104();
    }

    return -50;
  }

  return v5;
}

- (BOOL)run:(id *)run
{
  v4 = +[NSMutableArray array];
  v5 = objc_alloc_init(MADRemoveBackgroundMaskRequest);
  [v4 addObject:v5];

  v6 = objc_alloc_init(MADVIVisualSearchGatingRequest);
  [v4 addObject:v6];

  if (+[VCPVideoCaptionAnalyzer mode]== 1)
  {
    v7 = [[MADImageCaptionRequest alloc] initWithModelType:3 safetyType:0];
    [v4 addObject:v7];
  }

  if (VCPPhotosMRCCachingSupported())
  {
    v8 = objc_alloc_init(MADVIMachineReadableCodeDetectionRequest);
    [v4 addObject:v8];
  }

  pixelBufferOut = 0;
  v55 = kCVPixelBufferIOSurfacePropertiesKey;
  v56 = &__NSDictionary0__struct;
  v9 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  CVPixelBufferCreate(0, 0x140uLL, 0x140uLL, 0x42475241u, v9, &pixelBufferOut);
  [objc_opt_class() clearPixelBuffer:pixelBufferOut];
  v10 = objc_alloc_init(VCPClientHandler);
  v11 = +[VCPClientManager sharedManager];
  [v11 addClientHandler:v10];

  v37 = [VCPMADServiceImageAsset assetWithPixelBuffer:pixelBufferOut orientation:1 identifier:0 clientBundleID:0 clientTeamID:0];
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.mediaanalysisd.preheat", v12);
  preheat_queue = self->_preheat_queue;
  self->_preheat_queue = v13;

  v15 = dispatch_semaphore_create(0);
  preheat_completion_semaphore = self->_preheat_completion_semaphore;
  self->_preheat_completion_semaphore = v15;

  context = objc_autoreleasePoolPush();
  v35 = objc_alloc_init(MADScopedWatchdog);
  objc_initWeak(&location, v35);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000D0090;
  v45[3] = &unk_100285C58;
  v45[4] = self;
  objc_copyWeak(&v46, &location);
  v17 = objc_retainBlock(v45);
  v39 = (v17[2])();
  if (v39)
  {
    v18 = +[VCPClientManager sharedManager];
    [v18 removeClientHandler:v10];

    completionHandler = [(MADPreheatingTask *)self completionHandler];
    completionHandler[2](completionHandler, 0, 0);
  }

  else
  {
    v32 = v10;
    v33 = v9;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000D014C;
    v42[3] = &unk_100285C80;
    v43 = v10;
    selfCopy = self;
    v20 = [VCPMADServiceImageProcessingTask taskWithRequests:v4 forAsset:v37 cancelBlock:v17 andCompletionHandler:v42];
    v21 = self->_preheat_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D01BC;
    block[3] = &unk_100283210;
    v34 = v20;
    v41 = v34;
    dispatch_async(v21, block);
    type = VCPLogToOSLogType[5];
    v22 = 5;
    while (1)
    {
      v23 = self->_preheat_completion_semaphore;
      v24 = dispatch_time(0, 5000000000);
      self->_preheat_timed_out = dispatch_semaphore_wait(v23, v24) != 0;
      v25 = (v17[2])(v17);
      v26 = (v22 - 5) > 0x37E ? 1 : v25;
      if (v26 == 1)
      {
        break;
      }

      HIDWORD(v27) = -286331153 * v22;
      LODWORD(v27) = HIDWORD(v27);
      if ((v27 >> 2) <= 0x4444444 && MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412802;
        v50 = @"[MADPreheatingTask]";
        v51 = 1024;
        v52 = v22;
        v53 = 1024;
        v54 = 900;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Preheating for %d/%d seconds", buf, 0x18u);
      }

      v22 += 5;
      if (!self->_preheat_timed_out)
      {
        goto LABEL_22;
      }
    }

    if (MediaAnalysisLogLevel() >= 3)
    {
      v28 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v28))
      {
        *buf = 138412802;
        v50 = @"[MADPreheatingTask]";
        v51 = 1024;
        v52 = v22;
        v53 = 1024;
        v54 = 900;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Preheating canceled or timed out after %d/%d seconds", buf, 0x18u);
      }
    }

    [v34 cancel];
LABEL_22:

    v9 = v33;
    v10 = v32;

    completionHandler = v43;
  }

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);

  objc_autoreleasePoolPop(context);
  if (v39)
  {
    v29 = 0;
  }

  else
  {
    completionHandler2 = [(MADPreheatingTask *)self completionHandler];
    completionHandler2[2](completionHandler2, 0, 0);

    v29 = !self->_preheat_timed_out;
  }

  sub_100002CBC(&pixelBufferOut);
  return v29;
}

- (void)dealloc
{
  if (self->_preheat_timed_out)
  {
    dispatch_semaphore_wait(self->_preheat_completion_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  }

  v3.receiver = self;
  v3.super_class = MADPreheatingTask;
  [(MADPreheatingTask *)&v3 dealloc];
}

@end