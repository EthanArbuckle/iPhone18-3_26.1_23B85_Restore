@interface MKGETCertificateRouter
- (MKGETCertificateRouter)initWithSRP:(id)p certificate:(id)certificate;
- (MKGETCertificateRouterDelegate)delegate;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKGETCertificateRouter

- (MKGETCertificateRouter)initWithSRP:(id)p certificate:(id)certificate
{
  pCopy = p;
  certificateCopy = certificate;
  v11.receiver = self;
  v11.super_class = MKGETCertificateRouter;
  v8 = [(MKGETCertificateRouter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MKGETCertificateRouter *)v8 setSrp:pCopy];
    [(MKGETCertificateRouter *)v9 setCertificate:certificateCopy];
  }

  return v9;
}

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  responseCopy = response;
  sharedKey = [(MKSRPServer *)self->_srp sharedKey];
  if (sharedKey)
  {
    encodedCertificate = [(MKCertificate *)self->_certificate encodedCertificate];
    v9 = [[MKCrypto alloc] initWithKey:sharedKey];
    v10 = [(MKCrypto *)v9 encryptData:encodedCertificate];
    [responseCopy setBody:v10];
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