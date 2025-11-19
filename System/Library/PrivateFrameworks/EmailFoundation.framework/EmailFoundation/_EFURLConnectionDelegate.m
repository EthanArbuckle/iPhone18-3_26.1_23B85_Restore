@interface _EFURLConnectionDelegate
- (_EFURLConnectionDelegate)init;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
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

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  objc_storeStrong(&self->_response, a5);
  v7 = a6;
  v7[2](v7, 1);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v6 = a5;
  responseBody = self->_responseBody;
  v10 = v6;
  if (responseBody)
  {
    [(NSMutableData *)responseBody appendData:v6];
  }

  else
  {
    v8 = [v6 mutableCopy];
    v9 = self->_responseBody;
    self->_responseBody = v8;
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  promise = self->_promise;
  if (v9)
  {
    [(EFPromise *)self->_promise finishWithError:v9];
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