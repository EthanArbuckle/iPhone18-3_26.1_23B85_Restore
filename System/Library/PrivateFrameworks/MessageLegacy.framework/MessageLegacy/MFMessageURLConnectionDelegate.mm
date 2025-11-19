@interface MFMessageURLConnectionDelegate
- (MFMessageURLConnectionDelegate)init;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
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

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  self->_response = a5;
  v7 = *(a6 + 2);

  v7(a6, 1);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  responseBody = self->_responseBody;
  if (responseBody)
  {

    [(NSMutableData *)responseBody appendData:a5, a4];
  }

  else
  {
    self->_responseBody = [a5 mutableCopy];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  promise = self->_promise;
  if (a5)
  {
    [(EFPromise *)promise finishWithError:a5, a4];
  }

  else
  {
    [(EFPromise *)promise finishWithResult:self->_responseBody, a4];
  }
}

@end