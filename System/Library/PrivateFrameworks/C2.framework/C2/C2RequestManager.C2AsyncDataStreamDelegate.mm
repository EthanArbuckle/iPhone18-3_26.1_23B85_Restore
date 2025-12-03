@interface C2RequestManager.C2AsyncDataStreamDelegate
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task needNewBodyStream:(id)stream;
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task willPerformHTTPRedirection:(NSHTTPURLResponse *)redirection newRequest:(NSURLRequest *)request completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation C2RequestManager.C2AsyncDataStreamDelegate

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_242160010(errorCopy, v11, error);
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task willPerformHTTPRedirection:(NSHTTPURLResponse *)redirection newRequest:(NSURLRequest *)request completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = session;
  v13[3] = task;
  v13[4] = redirection;
  v13[5] = request;
  v13[6] = v12;
  v13[7] = self;
  sessionCopy = session;
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  selfCopy = self;

  sub_24215D0F8(&unk_242196AF0, v13);
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task needNewBodyStream:(id)stream
{
  v8 = _Block_copy(stream);
  v9 = swift_allocObject();
  v9[2] = session;
  v9[3] = task;
  v9[4] = v8;
  v9[5] = self;
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;

  sub_24215D0F8(&unk_242196AE0, v9);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  if (data)
  {
    sessionCopy = session;
    taskCopy = task;
    selfCopy = self;
    dataCopy = data;
    v12 = sub_242191958();
    v14 = v13;
  }

  else
  {
    sessionCopy2 = session;
    taskCopy2 = task;
    selfCopy2 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_24218E5F4(selfCopy2, v16, v12, v14);
  sub_24215DCE4(v12, v14);
}

@end