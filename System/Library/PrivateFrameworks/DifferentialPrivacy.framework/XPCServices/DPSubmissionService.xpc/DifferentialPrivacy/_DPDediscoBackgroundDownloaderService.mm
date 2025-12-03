@interface _DPDediscoBackgroundDownloaderService
- (_DPDediscoBackgroundDownloaderService)initWithURL:(id)l;
- (id)downloadConfigSynchronously;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)startDownload;
@end

@implementation _DPDediscoBackgroundDownloaderService

- (_DPDediscoBackgroundDownloaderService)initWithURL:(id)l
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = _DPDediscoBackgroundDownloaderService;
  v6 = [(_DPDediscoBackgroundDownloaderService *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v8 = [NSString stringWithFormat:@"%@%ld", @"com.apple.DPSubmissionService.BackgroundDownload", ++qword_10007E770];
    v9 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v8];
    v10 = +[NSOperationQueue currentQueue];
    v11 = [NSURLSession sessionWithConfiguration:v9 delegate:v7 delegateQueue:v10];
    backgroundSession = v7->_backgroundSession;
    v7->_backgroundSession = v11;

    data = v7->_data;
    v7->_data = 0;

    v7->_maxRetries = 3;
    v14 = dispatch_semaphore_create(0);
    wait = v7->_wait;
    v7->_wait = v14;
  }

  return v7;
}

- (id)downloadConfigSynchronously
{
  [(_DPDediscoBackgroundDownloaderService *)self startDownload];
  wait = [(_DPDediscoBackgroundDownloaderService *)self wait];
  v4 = dispatch_time(0, 15000000000);
  v5 = dispatch_semaphore_wait(wait, v4);

  if (v5)
  {
    v6 = +[_DPLog service];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004E0C8(v6);
    }
  }

  backgroundSession = [(_DPDediscoBackgroundDownloaderService *)self backgroundSession];
  [backgroundSession invalidateAndCancel];

  data = [(_DPDediscoBackgroundDownloaderService *)self data];

  return data;
}

- (void)startDownload
{
  v3 = +[_DPLog service];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(_DPDediscoBackgroundDownloaderService *)self url];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Downloading config file from url %@ ...", &v8, 0xCu);
  }

  backgroundSession = [(_DPDediscoBackgroundDownloaderService *)self backgroundSession];
  v6 = [(_DPDediscoBackgroundDownloaderService *)self url];
  v7 = [backgroundSession downloadTaskWithURL:v6];

  [v7 resume];
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  taskCopy = task;
  lCopy = l;
  error = [taskCopy error];
  if (error)
  {
    if ([(_DPDediscoBackgroundDownloaderService *)self maxRetries])
    {
      response = [taskCopy response];
      v11 = +[_DPLog service];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        statusCode = [response statusCode];
        v20 = 2112;
        v21 = error;
        v22 = 2048;
        maxRetries = [(_DPDediscoBackgroundDownloaderService *)self maxRetries];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Client failed to download config file with status code %ld and error: %@. %ld retries left.", buf, 0x20u);
      }

      [(_DPDediscoBackgroundDownloaderService *)self setMaxRetries:[(_DPDediscoBackgroundDownloaderService *)self maxRetries]- 1];
      [(_DPDediscoBackgroundDownloaderService *)self startDownload];
    }

    else
    {
      response = +[_DPLog service];
      if (os_log_type_enabled(response, OS_LOG_TYPE_ERROR))
      {
        sub_10004E148(response);
      }
    }
  }

  else
  {
    v12 = +[_DPLog service];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Download finished successfully.", buf, 2u);
    }

    path = [lCopy path];
    v17 = 0;
    v14 = [NSData dataWithContentsOfFile:path options:0 error:&v17];
    response = v17;
    [(_DPDediscoBackgroundDownloaderService *)self setData:v14];

    if (response)
    {
      v15 = +[_DPLog service];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10004E18C(response, v15);
      }
    }

    wait = [(_DPDediscoBackgroundDownloaderService *)self wait];
    dispatch_semaphore_signal(wait);
  }
}

@end