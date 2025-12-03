@interface MADServiceProxy
- (MADServiceProxy)initWithService:(id)service;
- (void)handleResult:(id)result atRequestIdx:(unint64_t)idx forRequestID:(int)d;
- (void)reportMADUserSafetyPolicy:(id)policy error:(id)error;
- (void)reportProgress:(double)progress forRequest:(int)request;
@end

@implementation MADServiceProxy

- (MADServiceProxy)initWithService:(id)service
{
  serviceCopy = service;
  v8.receiver = self;
  v8.super_class = MADServiceProxy;
  v5 = [(MADServiceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
  }

  return v6;
}

- (void)reportProgress:(double)progress forRequest:(int)request
{
  v4 = *&request;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  if (WeakRetained)
  {
    [WeakRetained reportProgress:v4 forRequest:progress];
  }
}

- (void)handleResult:(id)result atRequestIdx:(unint64_t)idx forRequestID:(int)d
{
  v5 = *&d;
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleResult:resultCopy atRequestIdx:idx forRequestID:v5];
  }
}

- (void)reportMADUserSafetyPolicy:(id)policy error:(id)error
{
  policyCopy = policy;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportMADUserSafetyPolicy:policyCopy error:errorCopy];
  }
}

@end