@interface MADServiceProxy
- (MADServiceProxy)initWithService:(id)a3;
- (void)handleResult:(id)a3 atRequestIdx:(unint64_t)a4 forRequestID:(int)a5;
- (void)reportMADUserSafetyPolicy:(id)a3 error:(id)a4;
- (void)reportProgress:(double)a3 forRequest:(int)a4;
@end

@implementation MADServiceProxy

- (MADServiceProxy)initWithService:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MADServiceProxy;
  v5 = [(MADServiceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, v4);
  }

  return v6;
}

- (void)reportProgress:(double)a3 forRequest:(int)a4
{
  v4 = *&a4;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  if (WeakRetained)
  {
    [WeakRetained reportProgress:v4 forRequest:a3];
  }
}

- (void)handleResult:(id)a3 atRequestIdx:(unint64_t)a4 forRequestID:(int)a5
{
  v5 = *&a5;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleResult:v10 atRequestIdx:a4 forRequestID:v5];
  }
}

- (void)reportMADUserSafetyPolicy:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportMADUserSafetyPolicy:v9 error:v6];
  }
}

@end