@interface WFDownloadURLTask
- (WFDownloadURLTask)initWithRequest:(id)request;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)start;
@end

@implementation WFDownloadURLTask

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  sessionCopy = session;
  completionHandler = [(WFDownloadURLTask *)self completionHandler];

  if (errorCopy && completionHandler)
  {
    completionHandler2 = [(WFDownloadURLTask *)self completionHandler];
    response = [taskCopy response];
    (completionHandler2)[2](completionHandler2, 0, response, errorCopy);

    [(WFDownloadURLTask *)self setCompletionHandler:0];
  }

  [(WFDownloadURLTask *)self setWrittenByteCountHandler:0];
  [sessionCopy finishTasksAndInvalidate];
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  taskCopy = task;
  lCopy = l;
  completionHandler = [(WFDownloadURLTask *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFDownloadURLTask *)self completionHandler];
    response = [taskCopy response];
    error = [taskCopy error];
    (completionHandler2)[2](completionHandler2, lCopy, response, error);

    [(WFDownloadURLTask *)self setCompletionHandler:0];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  sessionCopy = session;
  taskCopy = task;
  if (*MEMORY[0x277CCA7A8] != write)
  {
    expectedByteCountHandler = [(WFDownloadURLTask *)self expectedByteCountHandler];

    if (expectedByteCountHandler)
    {
      expectedByteCountHandler2 = [(WFDownloadURLTask *)self expectedByteCountHandler];
      expectedByteCountHandler2[2](expectedByteCountHandler2, write);

      [(WFDownloadURLTask *)self setExpectedByteCountHandler:0];
    }

    writtenByteCountHandler = [(WFDownloadURLTask *)self writtenByteCountHandler];

    if (writtenByteCountHandler)
    {
      writtenByteCountHandler2 = [(WFDownloadURLTask *)self writtenByteCountHandler];
      writtenByteCountHandler2[2](writtenByteCountHandler2, data);
    }
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v12 = [requestCopy mutableCopy];
  [v12 _setNonAppInitiated:1];
  v10 = [requestCopy URL];

  v11 = WFAppTransportSecuredURL(v10);
  [v12 setURL:v11];

  handlerCopy[2](handlerCopy, v12);
}

- (void)start
{
  v3 = MEMORY[0x277CCAD30];
  wf_defaultSessionConfiguration = [MEMORY[0x277CCAD38] wf_defaultSessionConfiguration];
  v6 = [v3 sessionWithConfiguration:wf_defaultSessionConfiguration delegate:self delegateQueue:0];

  v5 = [v6 downloadTaskWithRequest:self->_request];
  [v5 resume];
}

- (WFDownloadURLTask)initWithRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDownloadURLTask.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  v12.receiver = self;
  v12.super_class = WFDownloadURLTask;
  v6 = [(WFDownloadURLTask *)&v12 init];
  if (v6)
  {
    v7 = [requestCopy copy];
    request = v6->_request;
    v6->_request = v7;

    v9 = v6;
  }

  return v6;
}

@end