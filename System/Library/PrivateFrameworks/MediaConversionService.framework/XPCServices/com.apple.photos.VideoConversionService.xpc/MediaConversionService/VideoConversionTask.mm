@interface VideoConversionTask
+ (id)temporaryFileURLWithNameComponent:(id)component pathExtension:(id)extension;
- (BOOL)isMetadataTrackExtractionConversion;
- (BOOL)isPassthroughConversion;
- (BOOL)requiresPhotosAdjustmentRendering;
- (BOOL)wantsResultAsData;
- (NSURL)outputMainResourceURL;
- (NSURL)sourceMainResourceURL;
- (VideoConversionTask)initWithSourceBookmarkDictionary:(id)dictionary outputURLCollection:(id)collection options:(id)options requestTracker:(id)tracker;
- (VideoConversionTaskProgressUpdateObserver)progressObserver;
- (void)callCompletionHandler;
- (void)didEnqueue;
- (void)loadAsset;
- (void)performConversion;
- (void)resolveSourceBookmarkDictionary:(id)dictionary;
- (void)updateResultTracker;
@end

@implementation VideoConversionTask

- (VideoConversionTaskProgressUpdateObserver)progressObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_progressObserver);

  return WeakRetained;
}

- (BOOL)requiresPhotosAdjustmentRendering
{
  options = [(VideoConversionTask *)self options];
  v3 = [options objectForKey:@"PAMediaConversionServiceOptionAdjustmentInformationKey"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isMetadataTrackExtractionConversion
{
  options = [(VideoConversionTask *)self options];
  v3 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsVideoMetadataTrackExtractionKey"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isPassthroughConversion
{
  options = [(VideoConversionTask *)self options];
  v3 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPassthroughConversionKey"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)performConversion
{
  v4 = +[NSDate date];
  resultInformation = [(VideoConversionTask *)self resultInformation];
  [resultInformation setObject:v4 forKeyedSubscript:@"PAMediaConversionServiceConversionStartDateKey"];
}

- (void)didEnqueue
{
  [(VideoConversionTask *)self setStatus:5];
  v3 = +[NSDate date];
  [(VideoConversionTask *)self setEnqueueTime:v3];
}

- (BOOL)wantsResultAsData
{
  options = [(VideoConversionTask *)self options];
  v3 = [options objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)updateResultTracker
{
  [(MediaConversionRequestTracker *)self->_requestTracker setOutputInformation:self->_resultInformation];
  error = [(VideoConversionTask *)self error];
  [(MediaConversionRequestTracker *)self->_requestTracker setError:error];

  v8[0] = @"videoConversionStatus";
  v4 = [NSNumber numberWithInteger:self->_status];
  v8[1] = @"videoConversionOperationType";
  v9[0] = v4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  [(MediaConversionRequestTracker *)self->_requestTracker setServiceInformation:v7];
}

- (void)callCompletionHandler
{
  obj = self;
  objc_sync_enter(obj);
  if ([(VideoConversionTask *)obj didCallCompletionHandler])
  {
    objc_sync_exit(obj);
  }

  else
  {
    [(VideoConversionTask *)obj setDidCallCompletionHandler:1];
    objc_sync_exit(obj);

    if ([(VideoConversionTask *)obj status]!= 1)
    {
      error = [(VideoConversionTask *)obj error];

      if (!error)
      {
        v15 = NSLocalizedDescriptionKey;
        v16 = @"Conversion failed for unknown reason";
        v3 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v4 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v3];
        [(VideoConversionTask *)obj setError:v4];
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        identifier = [(VideoConversionTask *)obj identifier];
        error2 = [(VideoConversionTask *)obj error];
        *buf = 138543618;
        v12 = identifier;
        v13 = 2114;
        v14 = error2;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Video conversion error for conversion task %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v5 = +[NSDate date];
    resultInformation = [(VideoConversionTask *)obj resultInformation];
    [resultInformation setObject:v5 forKeyedSubscript:@"PAMediaConversionServiceConversionEndDateKey"];

    [(VideoConversionTask *)obj updateResultTracker];
    completionHandler = [(VideoConversionTask *)obj completionHandler];
    completionHandler[2](completionHandler, [(VideoConversionTask *)obj status]);
  }
}

- (void)loadAsset
{
  error = [(VideoConversionTask *)self error];

  if (!error)
  {
    v9 = AVURLAssetPreferPreciseDurationAndTimingKey;
    v10 = &__kCFBooleanTrue;
    v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    sourceMainResourceURL = [(VideoConversionTask *)self sourceMainResourceURL];
    v6 = [AVURLAsset URLAssetWithURL:sourceMainResourceURL options:v4];
    [(VideoConversionTask *)self setAsset:v6];

    asset = [(VideoConversionTask *)self asset];

    if (!asset)
    {
      v8 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:0];
      [(VideoConversionTask *)self setError:v8];
    }
  }
}

- (NSURL)outputMainResourceURL
{
  outputURLCollection = [(VideoConversionTask *)self outputURLCollection];
  v3 = [outputURLCollection resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];

  return v3;
}

- (NSURL)sourceMainResourceURL
{
  sourceURLCollection = [(VideoConversionTask *)self sourceURLCollection];
  v3 = [sourceURLCollection resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];

  return v3;
}

- (void)resolveSourceBookmarkDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [PAMediaConversionServiceResourceURLCollectionAccessProvider alloc];
  options = [(VideoConversionTask *)self options];
  v7 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)v5 initWithOptions:options];

  v13 = 0;
  v8 = [PAMediaConversionServiceResourceURLCollection collectionForBookmarkDataDictionaryRepresentation:dictionaryCopy accessProvider:v7 error:&v13];

  v9 = v13;
  if (!v8)
  {
    [(VideoConversionTask *)self setError:v9];
  }

  [(VideoConversionTask *)self setSourceURLCollection:v8];
  requestTracker = [(VideoConversionTask *)self requestTracker];
  [requestTracker setSourceURLCollection:v8];

  if ([v8 allURLsAreReadable])
  {
    v11 = v9;
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      identifier = [(VideoConversionTask *)self identifier];
      *buf = 138543618;
      v15 = identifier;
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to access source URL for conversion task %{public}@: %{public}@", buf, 0x16u);
    }

    [(VideoConversionTask *)self setError:v11];
  }
}

- (VideoConversionTask)initWithSourceBookmarkDictionary:(id)dictionary outputURLCollection:(id)collection options:(id)options requestTracker:(id)tracker
{
  dictionaryCopy = dictionary;
  collectionCopy = collection;
  optionsCopy = options;
  trackerCopy = tracker;
  v19.receiver = self;
  v19.super_class = VideoConversionTask;
  v14 = [(VideoConversionTask *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(VideoConversionTask *)v14 setRequestTracker:trackerCopy];
    v16 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy];
    [(VideoConversionTask *)v15 setOptions:v16];

    [(VideoConversionTask *)v15 resolveSourceBookmarkDictionary:dictionaryCopy];
    [(VideoConversionTask *)v15 setOutputURLCollection:collectionCopy];
    v17 = +[NSMutableDictionary dictionary];
    [(VideoConversionTask *)v15 setResultInformation:v17];
  }

  return v15;
}

+ (id)temporaryFileURLWithNameComponent:(id)component pathExtension:(id)extension
{
  extensionCopy = extension;
  componentCopy = component;
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:componentCopy];

  if (extensionCopy)
  {
    v9 = [v8 stringByAppendingPathExtension:extensionCopy];

    v8 = v9;
  }

  v10 = [NSURL fileURLWithPath:v8];

  return v10;
}

@end