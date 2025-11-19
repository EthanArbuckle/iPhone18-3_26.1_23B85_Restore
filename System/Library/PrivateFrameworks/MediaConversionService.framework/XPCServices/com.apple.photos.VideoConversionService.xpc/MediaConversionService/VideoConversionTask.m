@interface VideoConversionTask
+ (id)temporaryFileURLWithNameComponent:(id)a3 pathExtension:(id)a4;
- (BOOL)isMetadataTrackExtractionConversion;
- (BOOL)isPassthroughConversion;
- (BOOL)requiresPhotosAdjustmentRendering;
- (BOOL)wantsResultAsData;
- (NSURL)outputMainResourceURL;
- (NSURL)sourceMainResourceURL;
- (VideoConversionTask)initWithSourceBookmarkDictionary:(id)a3 outputURLCollection:(id)a4 options:(id)a5 requestTracker:(id)a6;
- (VideoConversionTaskProgressUpdateObserver)progressObserver;
- (void)callCompletionHandler;
- (void)didEnqueue;
- (void)loadAsset;
- (void)performConversion;
- (void)resolveSourceBookmarkDictionary:(id)a3;
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
  v2 = [(VideoConversionTask *)self options];
  v3 = [v2 objectForKey:@"PAMediaConversionServiceOptionAdjustmentInformationKey"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isMetadataTrackExtractionConversion
{
  v2 = [(VideoConversionTask *)self options];
  v3 = [v2 objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsVideoMetadataTrackExtractionKey"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isPassthroughConversion
{
  v2 = [(VideoConversionTask *)self options];
  v3 = [v2 objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsPassthroughConversionKey"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)performConversion
{
  v4 = +[NSDate date];
  v3 = [(VideoConversionTask *)self resultInformation];
  [v3 setObject:v4 forKeyedSubscript:@"PAMediaConversionServiceConversionStartDateKey"];
}

- (void)didEnqueue
{
  [(VideoConversionTask *)self setStatus:5];
  v3 = +[NSDate date];
  [(VideoConversionTask *)self setEnqueueTime:v3];
}

- (BOOL)wantsResultAsData
{
  v2 = [(VideoConversionTask *)self options];
  v3 = [v2 objectForKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)updateResultTracker
{
  [(MediaConversionRequestTracker *)self->_requestTracker setOutputInformation:self->_resultInformation];
  v3 = [(VideoConversionTask *)self error];
  [(MediaConversionRequestTracker *)self->_requestTracker setError:v3];

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
      v2 = [(VideoConversionTask *)obj error];

      if (!v2)
      {
        v15 = NSLocalizedDescriptionKey;
        v16 = @"Conversion failed for unknown reason";
        v3 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v4 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v3];
        [(VideoConversionTask *)obj setError:v4];
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v8 = [(VideoConversionTask *)obj identifier];
        v9 = [(VideoConversionTask *)obj error];
        *buf = 138543618;
        v12 = v8;
        v13 = 2114;
        v14 = v9;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Video conversion error for conversion task %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v5 = +[NSDate date];
    v6 = [(VideoConversionTask *)obj resultInformation];
    [v6 setObject:v5 forKeyedSubscript:@"PAMediaConversionServiceConversionEndDateKey"];

    [(VideoConversionTask *)obj updateResultTracker];
    v7 = [(VideoConversionTask *)obj completionHandler];
    v7[2](v7, [(VideoConversionTask *)obj status]);
  }
}

- (void)loadAsset
{
  v3 = [(VideoConversionTask *)self error];

  if (!v3)
  {
    v9 = AVURLAssetPreferPreciseDurationAndTimingKey;
    v10 = &__kCFBooleanTrue;
    v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v5 = [(VideoConversionTask *)self sourceMainResourceURL];
    v6 = [AVURLAsset URLAssetWithURL:v5 options:v4];
    [(VideoConversionTask *)self setAsset:v6];

    v7 = [(VideoConversionTask *)self asset];

    if (!v7)
    {
      v8 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:3 userInfo:0];
      [(VideoConversionTask *)self setError:v8];
    }
  }
}

- (NSURL)outputMainResourceURL
{
  v2 = [(VideoConversionTask *)self outputURLCollection];
  v3 = [v2 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];

  return v3;
}

- (NSURL)sourceMainResourceURL
{
  v2 = [(VideoConversionTask *)self sourceURLCollection];
  v3 = [v2 resourceURLForRole:@"PAMediaConversionResourceRoleMainResource"];

  return v3;
}

- (void)resolveSourceBookmarkDictionary:(id)a3
{
  v4 = a3;
  v5 = [PAMediaConversionServiceResourceURLCollectionAccessProvider alloc];
  v6 = [(VideoConversionTask *)self options];
  v7 = [(PAMediaConversionServiceResourceURLCollectionAccessProvider *)v5 initWithOptions:v6];

  v13 = 0;
  v8 = [PAMediaConversionServiceResourceURLCollection collectionForBookmarkDataDictionaryRepresentation:v4 accessProvider:v7 error:&v13];

  v9 = v13;
  if (!v8)
  {
    [(VideoConversionTask *)self setError:v9];
  }

  [(VideoConversionTask *)self setSourceURLCollection:v8];
  v10 = [(VideoConversionTask *)self requestTracker];
  [v10 setSourceURLCollection:v8];

  if ([v8 allURLsAreReadable])
  {
    v11 = v9;
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v12 = [(VideoConversionTask *)self identifier];
      *buf = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to access source URL for conversion task %{public}@: %{public}@", buf, 0x16u);
    }

    [(VideoConversionTask *)self setError:v11];
  }
}

- (VideoConversionTask)initWithSourceBookmarkDictionary:(id)a3 outputURLCollection:(id)a4 options:(id)a5 requestTracker:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = VideoConversionTask;
  v14 = [(VideoConversionTask *)&v19 init];
  v15 = v14;
  if (v14)
  {
    [(VideoConversionTask *)v14 setRequestTracker:v13];
    v16 = [NSMutableDictionary dictionaryWithDictionary:v12];
    [(VideoConversionTask *)v15 setOptions:v16];

    [(VideoConversionTask *)v15 resolveSourceBookmarkDictionary:v10];
    [(VideoConversionTask *)v15 setOutputURLCollection:v11];
    v17 = +[NSMutableDictionary dictionary];
    [(VideoConversionTask *)v15 setResultInformation:v17];
  }

  return v15;
}

+ (id)temporaryFileURLWithNameComponent:(id)a3 pathExtension:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:v6];

  if (v5)
  {
    v9 = [v8 stringByAppendingPathExtension:v5];

    v8 = v9;
  }

  v10 = [NSURL fileURLWithPath:v8];

  return v10;
}

@end