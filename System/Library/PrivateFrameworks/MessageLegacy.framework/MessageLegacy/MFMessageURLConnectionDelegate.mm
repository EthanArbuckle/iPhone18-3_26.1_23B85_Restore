@interface MFMessageURLConnectionDelegate
- (MFMessageURLConnectionDelegate)init;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)dealloc;
@end

@implementation MFMessageURLConnectionDelegate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMessageURLConnectionDelegate;
  [(MFMessageURLConnectionDelegate *)&v3 dealloc];
}

- (MFMessageURLConnectionDelegate)init
{
  v4.receiver = self;
  v4.super_class = MFMessageURLConnectionDelegate;
  v2 = [(MFMessageURLConnectionDelegate *)&v4 init];
  if (v2)
  {
    v2->_promise = objc_alloc_init(MEMORY[0x277D071A8]);
  }

  return v2;
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  self->_response = response;
  v7 = *(handler + 2);

  v7(handler, 1);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  responseBody = self->_responseBody;
  if (responseBody)
  {

    [(NSMutableData *)responseBody appendData:data, task];
  }

  else
  {
    self->_responseBody = [data mutableCopy];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  promise = self->_promise;
  if (error)
  {
    [(EFPromise *)promise finishWithError:error, task];
  }

  else
  {
    [(EFPromise *)promise finishWithResult:self->_responseBody, task];
  }
}

@end