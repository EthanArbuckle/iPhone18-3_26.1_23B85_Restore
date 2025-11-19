@interface WFDownloadURLTask
- (WFDownloadURLTask)initWithRequest:(id)a3;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)start;
@end

@implementation WFDownloadURLTask

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v13 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(WFDownloadURLTask *)self completionHandler];

  if (v8 && v10)
  {
    v11 = [(WFDownloadURLTask *)self completionHandler];
    v12 = [v13 response];
    (v11)[2](v11, 0, v12, v8);

    [(WFDownloadURLTask *)self setCompletionHandler:0];
  }

  [(WFDownloadURLTask *)self setWrittenByteCountHandler:0];
  [v9 finishTasksAndInvalidate];
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(WFDownloadURLTask *)self completionHandler];

  if (v8)
  {
    v9 = [(WFDownloadURLTask *)self completionHandler];
    v10 = [v12 response];
    v11 = [v12 error];
    (v9)[2](v9, v7, v10, v11);

    [(WFDownloadURLTask *)self setCompletionHandler:0];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v16 = a3;
  v11 = a4;
  if (*MEMORY[0x277CCA7A8] != a7)
  {
    v12 = [(WFDownloadURLTask *)self expectedByteCountHandler];

    if (v12)
    {
      v13 = [(WFDownloadURLTask *)self expectedByteCountHandler];
      v13[2](v13, a7);

      [(WFDownloadURLTask *)self setExpectedByteCountHandler:0];
    }

    v14 = [(WFDownloadURLTask *)self writtenByteCountHandler];

    if (v14)
    {
      v15 = [(WFDownloadURLTask *)self writtenByteCountHandler];
      v15[2](v15, a5);
    }
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v8 = a7;
  v9 = a6;
  v12 = [v9 mutableCopy];
  [v12 _setNonAppInitiated:1];
  v10 = [v9 URL];

  v11 = WFAppTransportSecuredURL(v10);
  [v12 setURL:v11];

  v8[2](v8, v12);
}

- (void)start
{
  v3 = MEMORY[0x277CCAD30];
  v4 = [MEMORY[0x277CCAD38] wf_defaultSessionConfiguration];
  v6 = [v3 sessionWithConfiguration:v4 delegate:self delegateQueue:0];

  v5 = [v6 downloadTaskWithRequest:self->_request];
  [v5 resume];
}

- (WFDownloadURLTask)initWithRequest:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFDownloadURLTask.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  v12.receiver = self;
  v12.super_class = WFDownloadURLTask;
  v6 = [(WFDownloadURLTask *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    request = v6->_request;
    v6->_request = v7;

    v9 = v6;
  }

  return v6;
}

@end