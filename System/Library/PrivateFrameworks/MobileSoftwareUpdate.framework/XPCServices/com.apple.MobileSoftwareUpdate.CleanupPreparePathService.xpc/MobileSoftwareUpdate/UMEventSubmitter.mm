@interface UMEventSubmitter
- (UMEventSubmitter)init;
- (id)_defaultSession;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)dealloc;
- (void)submitEventData:(id)data toURL:(id)l withOptions:(id)options completionHandler:(id)handler;
@end

@implementation UMEventSubmitter

- (UMEventSubmitter)init
{
  v4.receiver = self;
  v4.super_class = UMEventSubmitter;
  v2 = [(UMEventSubmitter *)&v4 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("com.apple.UpdateMetrics.UMEventSubmitter", 0);
    v2->_completionHandlers = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = UMEventSubmitter;
  [(UMEventSubmitter *)&v3 dealloc];
}

- (id)_defaultSession
{
  v3 = [(NSDictionary *)self->_options objectForKey:@"ProxySettings"];
  v4 = [(NSDictionary *)self->_options objectForKey:@"IsBackgroundSubmission"];
  v10 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  if (v3)
  {
    logfunction(", 1, @"UMEventSubmitter: %s: Using proxySettings for NSURLSessionConfiguration..\n\n", v5, v6, v7, v8, v9, "[UMEventSubmitter _defaultSession]"");
    [(NSURLSessionConfiguration *)v10 setConnectionProxyDictionary:v3];
  }

  else if (v4 && [v4 BOOLValue])
  {
    logfunction(", 1, @"UMEventSubmitter: %s: Setting waitsForConnectivity to true for splunk eventSubmission..\n\n", v12, v13, v14, v15, v16, "[UMEventSubmitter _defaultSession]"");
    [(NSURLSessionConfiguration *)v10 setWaitsForConnectivity:1];
  }

  return [NSURLSession sessionWithConfiguration:v10 delegate:self delegateQueue:0];
}

- (void)submitEventData:(id)data toURL:(id)l withOptions:(id)options completionHandler:(id)handler
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __72__UMEventSubmitter_submitEventData_toURL_withOptions_completionHandler___block_invoke;
  block[3] = &__block_descriptor_72_e8_32o40o48o56o64b_e5_v8__0l;
  block[4] = self;
  block[5] = options;
  block[6] = l;
  block[7] = data;
  block[8] = handler;
  dispatch_sync(queue, block);
}

id __72__UMEventSubmitter_submitEventData_toURL_withOptions_completionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = *(a1 + 40);
  v2 = [NSMutableURLRequest requestWithURL:*(a1 + 48)];
  [(NSMutableURLRequest *)v2 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [(NSMutableURLRequest *)v2 setHTTPMethod:@"POST"];
  [(NSMutableURLRequest *)v2 setHTTPBody:*(a1 + 56)];
  v3 = *(a1 + 48);
  [*(a1 + 56) length];
  logfunction(", 1, @"posting to %@ length = %lu\n"", v4, v5, v6, v7, v8, v3);
  LOBYTE(v3) = [*(a1 + 56) length];
  [*(a1 + 56) bytes];
  logfunction(", 1, @"data = %.*s\n"", v9, v10, v11, v12, v13, v3);
  v14 = [*(a1 + 32) _defaultSession];
  if (v14)
  {
    v20 = v14;
    v21 = [v14 dataTaskWithRequest:v2];
    if (v21)
    {
      v27 = v21;
      [*(*(a1 + 32) + 16) setObject:objc_msgSend(*(a1 + 64) forKey:{"copy"), v21}];
      [v27 resume];
    }

    else
    {
      logfunction(", 1, @"unable to create upload task for %@\n"", v22, v23, v24, v25, v26, *(a1 + 48));
      v31 = *(a1 + 64);
      v32 = *(a1 + 48);
      v34 = NSURLErrorFailingURLErrorKey;
      v35 = v32;
      (*(v31 + 16))(v31, 0, [NSError errorWithDomain:NSURLErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1]]);
    }

    return [v20 finishTasksAndInvalidate];
  }

  else
  {
    logfunction(", 1, @"unable to create upload session\n"", v15, v16, v17, v18, v19, v33);
    v28 = *(a1 + 64);
    v29 = *(a1 + 48);
    v36 = NSURLErrorFailingURLErrorKey;
    v37 = v29;
    return (*(v28 + 16))(v28, 0, [NSError errorWithDomain:NSURLErrorDomain code:-1 userInfo:[NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1]]);
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v9 = [objc_msgSend(session "configuration")];
  logfunction(", 1, @"session %@ didReceiveChallenge\n"", v10, v11, v12, v13, v14, v9);
  v15 = [(NSDictionary *)self->_options objectForKey:@"URLSessionDelegate"];
  if (v15)
  {

    [v15 URLSession:session didReceiveChallenge:challenge completionHandler:handler];
  }

  else
  {
    v16 = *(handler + 2);

    v16(handler, 1, 0);
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = __57__UMEventSubmitter_URLSession_task_didCompleteWithError___block_invoke;
  block[3] = &__block_descriptor_56_e8_32o40o48o_e5_v8__0l;
  block[4] = self;
  block[5] = task;
  block[6] = error;
  dispatch_sync(queue, block);
}

int *__57__UMEventSubmitter_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (!v2)
  {
    return logfunction(", 1, @"task %@ completed with no handler\n"", v3, v4, v5, v6, v7, *(a1 + 40));
  }

  v2[2](v2, [*(a1 + 40) response], *(a1 + 48));
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 16);

  return [v9 removeObjectForKey:v8];
}

@end