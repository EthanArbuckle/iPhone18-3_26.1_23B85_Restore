@interface VideoTranscodingTask
+ (BOOL)shouldMaximizeVideoConversionPowerEfficiencyForOptions:(id)options inputAssetDuration:(double)duration taskIdentifier:(id)identifier;
+ (id)metadataItemsByApplyingSignatureMetadataFromOptions:(id)options toMetadataItems:(id)items;
+ (id)signatureOptionToIdentifierMapping;
- (BOOL)didDetectHang;
- (BOOL)hasProgress;
- (BOOL)hasSlowMotionAdjustments;
- (double)currentFractionCompleted;
- (id)outputAssetInformationWithError:(id *)error;
- (void)callCompletionHandler;
- (void)cancel;
- (void)cancelProgressUpdateTimerAndMarkEndTime;
- (void)cancelTranscode;
- (void)determineAndNotifyProgress;
- (void)logCancellation;
- (void)performConversion;
- (void)performExport;
- (void)startProgressUpdateTimerAndMarkStartTime;
- (void)transitionToRunningStateAndConditionallyRunBlock:(id)block;
@end

@implementation VideoTranscodingTask

- (id)outputAssetInformationWithError:(id *)error
{
  if (!error)
  {
    v33 = +[NSAssertionHandler currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"outError"}];
  }

  outputMainResourceURL = [(VideoConversionTask *)self outputMainResourceURL];
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

  v7 = [AVURLAsset URLAssetWithURL:outputMainResourceURL options:0];
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
    path = [outputMainResourceURL path];
    v35 = 0;
    v17 = [v15 attributesOfItemAtPath:path error:&v35];
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
        v24 = v23 = outputMainResourceURL;
        v37[2] = v24;
        v36[3] = @"PAMediaConversionServiceOrientedPixelHeightKey";
        v25 = [NSNumber numberWithDouble:fabs(height)];
        v36[4] = @"PAMediaConversionServiceFileSizeKey";
        v37[3] = v25;
        v37[4] = v19;
        v26 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:5];

        v18 = v34;
        outputMainResourceURL = v23;
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
    *error = v28;
    goto LABEL_18;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    path2 = [outputMainResourceURL path];
    *buf = 138412802;
    *&buf[4] = path2;
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

  if (error)
  {
    [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v27];
    *error = v26 = 0;
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

    progressUpdateTimerSource = [(VideoConversionTask *)obj progressUpdateTimerSource];

    if (progressUpdateTimerSource)
    {
      progressUpdateTimerSource2 = [(VideoConversionTask *)obj progressUpdateTimerSource];
      dispatch_source_cancel(progressUpdateTimerSource2);

      [(VideoConversionTask *)obj setProgressUpdateTimerSource:0];
    }
  }

  objc_sync_exit(obj);
}

- (void)startProgressUpdateTimerAndMarkStartTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(VideoConversionTask *)selfCopy timerStatus])
  {
    [(VideoConversionTask *)selfCopy setTimerStatus:1];
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    [(VideoConversionTask *)selfCopy setProgressUpdateTimerSource:v4];

    progressUpdateTimerSource = [(VideoConversionTask *)selfCopy progressUpdateTimerSource];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100015674;
    handler[3] = &unk_10003D438;
    handler[4] = selfCopy;
    dispatch_source_set_event_handler(progressUpdateTimerSource, handler);

    options = [(VideoConversionTask *)selfCopy options];
    v7 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionProgressUpdateTimeIntervalKey"];
    v8 = v7;
    v9 = &off_10003FB68;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    [v10 doubleValue];
    v12 = v11;
    progressUpdateTimerSource2 = [(VideoConversionTask *)selfCopy progressUpdateTimerSource];
    dispatch_source_set_timer(progressUpdateTimerSource2, 0, (v12 * 1000000000.0), 0x5F5E100uLL);

    options2 = [(VideoConversionTask *)selfCopy options];
    v15 = [options2 objectForKeyedSubscript:@"PAMediaConversionServiceOptionUnitTestSupportServiceShouldSimulateConversionHangKey"];
    bOOLValue = [v15 BOOLValue];

    v17 = [VideoConversionHangDetector alloc];
    v18 = 3600.0;
    if (bOOLValue)
    {
      v18 = 5.0;
    }

    v19 = [(VideoConversionHangDetector *)v17 initWithThresholdTimeInterval:v18];
    [(VideoTranscodingTask *)selfCopy setHangDetector:v19];

    [(VideoTranscodingTask *)selfCopy determineAndNotifyProgress];
    progressUpdateTimerSource3 = [(VideoConversionTask *)selfCopy progressUpdateTimerSource];
    dispatch_resume(progressUpdateTimerSource3);

    v21 = +[NSDate date];
    [(VideoConversionTask *)selfCopy setConversionStartTime:v21];
  }

  objc_sync_exit(selfCopy);
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
  options = [(VideoConversionTask *)self options];
  v3 = [options objectForKey:@"PAMediaConversionServiceOptionVideoAdjustmentsPropertyListKey"];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)transitionToRunningStateAndConditionallyRunBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(VideoConversionTask *)selfCopy status]!= 4)
  {
    [(VideoConversionTask *)selfCopy setStatus:6];
    blockCopy[2]();
  }

  objc_sync_exit(selfCopy);
}

- (void)logCancellation
{
  asset = [(VideoConversionTask *)self asset];
  if (asset)
  {
    asset2 = [(VideoConversionTask *)self asset];
    v5 = asset2;
    if (asset2)
    {
      [asset2 duration];
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
  conversionStartTime = [(VideoConversionTask *)self conversionStartTime];
  [v7 timeIntervalSinceDate:conversionStartTime];
  v10 = v9;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    identifier = [(VideoConversionTask *)self identifier];
    [(VideoTranscodingTask *)self currentFractionCompleted];
    LODWORD(v15.value) = 138544386;
    *(&v15.value + 4) = v12;
    LOWORD(v15.flags) = 2114;
    *(&v15.flags + 2) = identifier;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  status = [(VideoConversionTask *)selfCopy status];
  [(VideoConversionTask *)selfCopy setStatus:4];
  if (status == 5)
  {
    v8 = NSDebugDescriptionErrorKey;
    v9 = @"Export was cancelled while conversion task was still enqueued";
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v5 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:5 userInfo:v4];
    [(VideoConversionTask *)selfCopy setError:v5];

    [(VideoTranscodingTask *)selfCopy callCompletionHandler];
  }

  else if (status == 6)
  {
    [(VideoTranscodingTask *)selfCopy cancelTranscode];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = status;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Ignoring cancellation request for transcode task in state %ld", &v6, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)didDetectHang
{
  hangDetector = [(VideoTranscodingTask *)self hangDetector];
  didDetectHang = [hangDetector didDetectHang];

  return didDetectHang;
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
      identifier = [(VideoConversionTask *)self identifier];
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = identifier;
      v15 = 2048;
      v16 = v4 * 100.0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Export progress for conversion task (%{public}@) %{public}@: %.1f", &v11, 0x20u);
    }

    hangDetector = [(VideoTranscodingTask *)self hangDetector];
    [hangDetector updateCurrentProgress:v4];
  }

  else
  {
    v4 = NAN;
  }

  progressObserver = [(VideoConversionTask *)self progressObserver];
  v10 = progressObserver;
  if (progressObserver)
  {
    [progressObserver videoConversionTask:self didUpdateFractionCompleted:v4];
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

+ (BOOL)shouldMaximizeVideoConversionPowerEfficiencyForOptions:(id)options inputAssetDuration:(double)duration taskIdentifier:(id)identifier
{
  optionsCopy = options;
  identifierCopy = identifier;
  if (!optionsCopy)
  {
    v18 = +[NSAssertionHandler currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:421 description:{@"Invalid parameter not satisfying: %@", @"options"}];
  }

  if (duration == 0.0)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"inputAssetDuration"}];
  }

  v11 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionPowerEfficiencyKey"];
  integerValue = [v11 integerValue];

  if (integerValue == 1)
  {
    v16 = 1;
  }

  else if (integerValue == 2)
  {
    v13 = [optionsCopy objectForKeyedSubscript:@"PAMediaConversionServiceOptionPowerEfficiencyMinimumDurationKey"];
    [v13 doubleValue];
    v15 = v14;

    if (v15 <= 0.0)
    {
      v20 = +[NSAssertionHandler currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"VideoConversionService.m" lineNumber:430 description:@"PAMediaConversionServiceOptionPowerEfficiencyMinimumDurationKey option is required for PAMediaConversionServicePowerEfficiencyMaximizeWithMinimumDuration"];
    }

    v16 = v15 < duration;
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
    v24 = integerValue;
    v25 = 2048;
    durationCopy = duration;
    v27 = 2114;
    v28 = identifierCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Maximize video conversion power efficiency: %d (mode = %ld, duration = %f, conversion task = %{public}@)", buf, 0x26u);
  }

  return v16;
}

+ (id)metadataItemsByApplyingSignatureMetadataFromOptions:(id)options toMetadataItems:(id)items
{
  optionsCopy = options;
  itemsCopy = items;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000162F0;
  v19 = sub_100016300;
  v20 = [NSMutableArray arrayWithArray:itemsCopy];
  signatureOptionToIdentifierMapping = [self signatureOptionToIdentifierMapping];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100016308;
  v12[3] = &unk_10003D410;
  v9 = optionsCopy;
  v13 = v9;
  v14 = &v15;
  [signatureOptionToIdentifierMapping enumerateKeysAndObjectsUsingBlock:v12];

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