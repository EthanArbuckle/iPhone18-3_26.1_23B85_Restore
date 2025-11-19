@interface VideoTranscodingTask
+ (BOOL)shouldMaximizeVideoConversionPowerEfficiencyForOptions:(id)a3 inputAssetDuration:(double)a4 taskIdentifier:(id)a5;
+ (id)metadataItemsByApplyingSignatureMetadataFromOptions:(id)a3 toMetadataItems:(id)a4;
+ (id)signatureOptionToIdentifierMapping;
- (BOOL)didDetectHang;
- (BOOL)hasProgress;
- (BOOL)hasSlowMotionAdjustments;
- (double)currentFractionCompleted;
- (id)outputAssetInformationWithError:(id *)a3;
- (void)callCompletionHandler;
- (void)cancel;
- (void)cancelProgressUpdateTimerAndMarkEndTime;
- (void)cancelTranscode;
- (void)determineAndNotifyProgress;
- (void)logCancellation;
- (void)performConversion;
- (void)performExport;
- (void)startProgressUpdateTimerAndMarkStartTime;
- (void)transitionToRunningStateAndConditionallyRunBlock:(id)a3;
@end

@implementation VideoTranscodingTask

- (id)outputAssetInformationWithError:(id *)a3
{
  if (!a3)
  {
    v33 = +[NSAssertionHandler currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"outError"}];
  }

  v5 = [(VideoConversionTask *)self outputMainResourceURL];
  if ([(VideoConversionTask *)self isMetadataTrackExtractionConversion])
  {
    v6 = 0.0;
    v7 = 0;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    v10 = height;
    v11 = CGSizeZero.width;
    goto LABEL_8;
  }

  v7 = [AVURLAsset URLAssetWithURL:v5 options:0];
  v12 = [PFMediaUtilities tracksWithMediaType:AVMediaTypeVideo forAsset:v7];
  [v12 lastObject];
  v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

  if (v7 && v6 != 0.0)
  {
    [*&v6 naturalSize];
    v11 = v13;
    v10 = v14;
    [*&v6 preferredTransform];
    width = v10 * *&buf[16] + *buf * v11;
    height = v10 * v43 + *&buf[8] * v11;
LABEL_8:
    v15 = +[NSFileManager defaultManager];
    v16 = [v5 path];
    v35 = 0;
    v17 = [v15 attributesOfItemAtPath:v16 error:&v35];
    v18 = v35;

    if (v17)
    {
      v19 = [v17 objectForKeyedSubscript:NSFileSize];
      if ([v19 integerValue])
      {
        v36[0] = @"PAMediaConversionServicePixelWidthKey";
        v34 = v18;
        v20 = [NSNumber numberWithDouble:v11];
        v37[0] = v20;
        v36[1] = @"PAMediaConversionServicePixelHeightKey";
        v21 = [NSNumber numberWithDouble:v10];
        v37[1] = v21;
        v36[2] = @"PAMediaConversionServiceOrientedPixelWidthKey";
        [NSNumber numberWithDouble:fabs(width)];
        v22 = v7;
        v24 = v23 = v5;
        v37[2] = v24;
        v36[3] = @"PAMediaConversionServiceOrientedPixelHeightKey";
        v25 = [NSNumber numberWithDouble:fabs(height)];
        v36[4] = @"PAMediaConversionServiceFileSizeKey";
        v37[3] = v25;
        v37[4] = v19;
        v26 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:5];

        v18 = v34;
        v5 = v23;
        v7 = v22;

        v27 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v38 = NSLocalizedDescriptionKey;
      v39 = @"Unable to get file information about converted asset";
      v27 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v28 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v27];
    }

    else
    {
      v40[0] = NSLocalizedDescriptionKey;
      v40[1] = NSUnderlyingErrorKey;
      v41[0] = @"Unable to get file system information about converted asset";
      v41[1] = v18;
      v27 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
      v28 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v27];
      v19 = 0;
    }

    v26 = 0;
    *a3 = v28;
    goto LABEL_18;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v31 = [v5 path];
    *buf = 138412802;
    *&buf[4] = v31;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    v43 = v6;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get AV information about converted asset at %@ (%@/%@)", buf, 0x20u);
  }

  v44 = NSLocalizedDescriptionKey;
  v29 = [NSString stringWithFormat:@"Unable to get AV information about converted asset (%@/%@)", v7, *&v6];
  v45 = v29;
  v27 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];

  if (a3)
  {
    [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v27];
    *a3 = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_19:

  return v26;
}

- (void)cancelProgressUpdateTimerAndMarkEndTime
{
  obj = self;
  objc_sync_enter(obj);
  if ([(VideoConversionTask *)obj timerStatus]!= 2)
  {
    [(VideoConversionTask *)obj setTimerStatus:2];
    v2 = +[NSDate date];
    [(VideoConversionTask *)obj setConversionEndTime:v2];

    v3 = [(VideoConversionTask *)obj progressUpdateTimerSource];

    if (v3)
    {
      v4 = [(VideoConversionTask *)obj progressUpdateTimerSource];
      dispatch_source_cancel(v4);

      [(VideoConversionTask *)obj setProgressUpdateTimerSource:0];
    }
  }

  objc_sync_exit(obj);
}

- (void)startProgressUpdateTimerAndMarkStartTime
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(VideoConversionTask *)v2 timerStatus])
  {
    [(VideoConversionTask *)v2 setTimerStatus:1];
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    [(VideoConversionTask *)v2 setProgressUpdateTimerSource:v4];

    v5 = [(VideoConversionTask *)v2 progressUpdateTimerSource];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100015674;
    handler[3] = &unk_10003D438;
    handler[4] = v2;
    dispatch_source_set_event_handler(v5, handler);

    v6 = [(VideoConversionTask *)v2 options];
    v7 = [v6 objectForKeyedSubscript:@"PAMediaConversionServiceOptionProgressUpdateTimeIntervalKey"];
    v8 = v7;
    v9 = &off_10003FB68;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    [v10 doubleValue];
    v12 = v11;
    v13 = [(VideoConversionTask *)v2 progressUpdateTimerSource];
    dispatch_source_set_timer(v13, 0, (v12 * 1000000000.0), 0x5F5E100uLL);

    v14 = [(VideoConversionTask *)v2 options];
    v15 = [v14 objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldSimulateConversionHangKey"];
    v16 = [v15 BOOLValue];

    v17 = [VideoConversionHangDetector alloc];
    v18 = 3600.0;
    if (v16)
    {
      v18 = 5.0;
    }

    v19 = [(VideoConversionHangDetector *)v17 initWithThresholdTimeInterval:v18];
    [(VideoTranscodingTask *)v2 setHangDetector:v19];

    [(VideoTranscodingTask *)v2 determineAndNotifyProgress];
    v20 = [(VideoConversionTask *)v2 progressUpdateTimerSource];
    dispatch_resume(v20);

    v21 = +[NSDate date];
    [(VideoConversionTask *)v2 setConversionStartTime:v21];
  }

  objc_sync_exit(v2);
}

- (void)callCompletionHandler
{
  v3.receiver = self;
  v3.super_class = VideoTranscodingTask;
  [(VideoConversionTask *)&v3 callCompletionHandler];
  [(VideoTranscodingTask *)self cancelProgressUpdateTimerAndMarkEndTime];
}

- (BOOL)hasSlowMotionAdjustments
{
  v2 = [(VideoConversionTask *)self options];
  v3 = [v2 objectForKey:@"PAMediaConversionServiceOptionVideoAdjustmentsPropertyListKey"];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)transitionToRunningStateAndConditionallyRunBlock:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([(VideoConversionTask *)v4 status]!= 4)
  {
    [(VideoConversionTask *)v4 setStatus:6];
    v5[2]();
  }

  objc_sync_exit(v4);
}

- (void)logCancellation
{
  v3 = [(VideoConversionTask *)self asset];
  if (v3)
  {
    v4 = [(VideoConversionTask *)self asset];
    v5 = v4;
    if (v4)
    {
      [v4 duration];
    }

    else
    {
      memset(&v15, 0, sizeof(v15));
    }

    Seconds = CMTimeGetSeconds(&v15);
  }

  else
  {
    Seconds = NAN;
  }

  v7 = +[NSDate date];
  v8 = [(VideoConversionTask *)self conversionStartTime];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [(VideoConversionTask *)self identifier];
    [(VideoTranscodingTask *)self currentFractionCompleted];
    LODWORD(v15.value) = 138544386;
    *(&v15.value + 4) = v12;
    LOWORD(v15.flags) = 2114;
    *(&v15.flags + 2) = v13;
    HIWORD(v15.epoch) = 2048;
    v16 = v10;
    v17 = 2048;
    v18 = v14;
    v19 = 2048;
    v20 = Seconds;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Cancelling conversion task (%{public}@) %{public}@ after %fs with progress %f, input duration %fs", &v15, 0x34u);
  }
}

- (void)cancelTranscode
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v2];
}

- (double)currentFractionCompleted
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v2];

  return NAN;
}

- (BOOL)hasProgress
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v2];

  return 0;
}

- (void)performExport
{
  v2 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"Subclasses must override %@", v2];
}

- (void)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VideoConversionTask *)v2 status];
  [(VideoConversionTask *)v2 setStatus:4];
  if (v3 == 5)
  {
    v8 = NSDebugDescriptionErrorKey;
    v9 = @"Export was cancelled while conversion task was still enqueued";
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v5 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:5 userInfo:v4];
    [(VideoConversionTask *)v2 setError:v5];

    [(VideoTranscodingTask *)v2 callCompletionHandler];
  }

  else if (v3 == 6)
  {
    [(VideoTranscodingTask *)v2 cancelTranscode];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Ignoring cancellation request for transcode task in state %ld", &v6, 0xCu);
  }

  objc_sync_exit(v2);
}

- (BOOL)didDetectHang
{
  v2 = [(VideoTranscodingTask *)self hangDetector];
  v3 = [v2 didDetectHang];

  return v3;
}

- (void)determineAndNotifyProgress
{
  if ([(VideoConversionTask *)self status]== 6 && [(VideoTranscodingTask *)self hasProgress])
  {
    [(VideoTranscodingTask *)self currentFractionCompleted];
    v4 = v3;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [(VideoConversionTask *)self identifier];
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2048;
      v16 = v4 * 100.0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Export progress for conversion task (%{public}@) %{public}@: %.1f", &v11, 0x20u);
    }

    v8 = [(VideoTranscodingTask *)self hangDetector];
    [v8 updateCurrentProgress:v4];
  }

  else
  {
    v4 = NAN;
  }

  v9 = [(VideoConversionTask *)self progressObserver];
  v10 = v9;
  if (v9)
  {
    [v9 videoConversionTask:self didUpdateFractionCompleted:v4];
  }
}

- (void)performConversion
{
  if ([(VideoConversionTask *)self status]!= 4 && [(VideoConversionTask *)self status]!= 5)
  {
    v4 = +[NSAssertionHandler currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:291 description:{@"Job in unexpected status %ld", -[VideoConversionTask status](self, "status")}];
  }

  if ([(VideoConversionTask *)self status]!= 4)
  {
    v5.receiver = self;
    v5.super_class = VideoTranscodingTask;
    [(VideoConversionTask *)&v5 performConversion];
    [(VideoConversionTask *)self loadAsset];
    [(VideoTranscodingTask *)self performExport];
  }
}

+ (BOOL)shouldMaximizeVideoConversionPowerEfficiencyForOptions:(id)a3 inputAssetDuration:(double)a4 taskIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (!v9)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"VideoConversionService.m" lineNumber:421 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  if (a4 == 0.0)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"VideoConversionService.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"inputAssetDuration"}];
  }

  v11 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceOptionPowerEfficiencyKey"];
  v12 = [v11 integerValue];

  if (v12 == 1)
  {
    v16 = 1;
  }

  else if (v12 == 2)
  {
    v13 = [v9 objectForKeyedSubscript:@"PAMediaConversionServiceOptionPowerEfficiencyMinimumDurationKey"];
    [v13 doubleValue];
    v15 = v14;

    if (v15 <= 0.0)
    {
      v20 = +[NSAssertionHandler currentHandler];
      [v20 handleFailureInMethod:a2 object:a1 file:@"VideoConversionService.m" lineNumber:430 description:@"PAMediaConversionServiceOptionPowerEfficiencyMinimumDurationKey option is required for PAMediaConversionServicePowerEfficiencyMaximizeWithMinimumDuration"];
    }

    v16 = v15 < a4;
  }

  else
  {
    v16 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    v22 = v16;
    v23 = 2048;
    v24 = v12;
    v25 = 2048;
    v26 = a4;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Maximize video conversion power efficiency: %d (mode = %ld, duration = %f, conversion task = %{public}@)", buf, 0x26u);
  }

  return v16;
}

+ (id)metadataItemsByApplyingSignatureMetadataFromOptions:(id)a3 toMetadataItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000162F0;
  v19 = sub_100016300;
  v20 = [NSMutableArray arrayWithArray:v7];
  v8 = [a1 signatureOptionToIdentifierMapping];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100016308;
  v12[3] = &unk_10003D410;
  v9 = v6;
  v13 = v9;
  v14 = &v15;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

+ (id)signatureOptionToIdentifierMapping
{
  if (qword_100044F08 != -1)
  {
    dispatch_once(&qword_100044F08, &stru_10003D3E8);
  }

  v3 = qword_100044F00;

  return v3;
}

@end