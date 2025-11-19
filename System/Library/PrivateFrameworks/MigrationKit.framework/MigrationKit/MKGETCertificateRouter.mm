@interface MKGETCertificateRouter
- (MKGETCertificateRouter)initWithSRP:(id)a3 certificate:(id)a4;
- (MKGETCertificateRouterDelegate)delegate;
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKGETCertificateRouter

- (MKGETCertificateRouter)initWithSRP:(id)a3 certificate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MKGETCertificateRouter;
  v8 = [(MKGETCertificateRouter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MKGETCertificateRouter *)v8 setSrp:v6];
    [(MKGETCertificateRouter *)v9 setCertificate:v7];
  }

  return v9;
}

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v6 = a5;
  v7 = [(MKSRPServer *)self->_srp sharedKey];
  if (v7)
  {
    v8 = [(MKCertificate *)self->_certificate encodedCertificate];
    v9 = [[MKCrypto alloc] initWithKey:v7];
    v10 = [(MKCrypto *)v9 encryptData:v8];
    [v6 setBody:v10];
  }

  else
  {
    v11 = +[MKLog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MKGETCertificateRouter server:v11 didReceiveRequest:? response:?];
    }
  }
}

- (MKGETCertificateRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end