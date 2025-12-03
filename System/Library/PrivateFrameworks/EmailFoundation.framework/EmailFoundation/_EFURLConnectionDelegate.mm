@interface _EFURLConnectionDelegate
- (_EFURLConnectionDelegate)init;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation _EFURLConnectionDelegate

- (_EFURLConnectionDelegate)init
{
  v7.receiver = self;
  v7.super_class = _EFURLConnectionDelegate;
  v2 = [(_EFURLConnectionDelegate *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(EFPromise);
    promise = v2->_promise;
    v2->_promise = v3;

    v5 = v2;
  }

  return v2;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  objc_storeStrong(&self->_response, response);
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, 1);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  responseBody = self->_responseBody;
  v10 = dataCopy;
  if (responseBody)
  {
    [(NSMutableData *)responseBody appendData:dataCopy];
  }

  else
  {
    v8 = [dataCopy mutableCopy];
    v9 = self->_responseBody;
    self->_responseBody = v8;
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  promise = self->_promise;
  if (errorCopy)
  {
    [(EFPromise *)self->_promise finishWithError:errorCopy];
  }

  else
  {
    responseBody = self->_responseBody;
    v12 = responseBody;
    if (!responseBody)
    {
      v12 = objc_opt_new();
    }

    [(EFPromise *)promise finishWithResult:v12];
    if (!responseBody)
    {
    }
  }
}

@end