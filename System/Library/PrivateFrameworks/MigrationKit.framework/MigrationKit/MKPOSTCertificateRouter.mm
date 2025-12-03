@interface MKPOSTCertificateRouter
- (MKPOSTCertificateRouter)initWithSRP:(id)p;
- (MKPOSTCertificateRouterDelegate)delegate;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKPOSTCertificateRouter

- (MKPOSTCertificateRouter)initWithSRP:(id)p
{
  pCopy = p;
  v8.receiver = self;
  v8.super_class = MKPOSTCertificateRouter;
  v5 = [(MKPOSTCertificateRouter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MKPOSTCertificateRouter *)v5 setSrp:pCopy];
  }

  return v6;
}

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  body = [request body];
  if ([body length])
  {
    sharedKey = [(MKSRPServer *)self->_srp sharedKey];
    if (sharedKey)
    {
      v8 = [[MKCrypto alloc] initWithKey:sharedKey];
      v9 = [(MKCrypto *)v8 decryptData:body];
      if (v9)
      {
        v10 = [[MKCertificate alloc] initWithPEM:v9];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained router:self didReceiveCertificate:v10];
      }

      else
      {
        v10 = +[MKLog log];
        if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
        {
          [(MKPOSTCertificateRouter *)self server:v24 didReceiveRequest:v25 response:v26, v27, v28, v29];
        }
      }
    }

    else
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_ERROR))
      {
        [(MKPOSTCertificateRouter *)self server:v18 didReceiveRequest:v19 response:v20, v21, v22, v23];
      }
    }
  }

  else
  {
    sharedKey = +[MKLog log];
    if (os_log_type_enabled(sharedKey, OS_LOG_TYPE_ERROR))
    {
      [(MKPOSTCertificateRouter *)self server:sharedKey didReceiveRequest:v12 response:v13, v14, v15, v16, v17];
    }
  }
}

- (MKPOSTCertificateRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end