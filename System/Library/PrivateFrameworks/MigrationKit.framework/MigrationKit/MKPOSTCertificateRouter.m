@interface MKPOSTCertificateRouter
- (MKPOSTCertificateRouter)initWithSRP:(id)a3;
- (MKPOSTCertificateRouterDelegate)delegate;
- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5;
@end

@implementation MKPOSTCertificateRouter

- (MKPOSTCertificateRouter)initWithSRP:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MKPOSTCertificateRouter;
  v5 = [(MKPOSTCertificateRouter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MKPOSTCertificateRouter *)v5 setSrp:v4];
  }

  return v6;
}

- (void)server:(id)a3 didReceiveRequest:(id)a4 response:(id)a5
{
  v6 = [a4 body];
  if ([v6 length])
  {
    v7 = [(MKSRPServer *)self->_srp sharedKey];
    if (v7)
    {
      v8 = [[MKCrypto alloc] initWithKey:v7];
      v9 = [(MKCrypto *)v8 decryptData:v6];
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
    v7 = +[MKLog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MKPOSTCertificateRouter *)self server:v7 didReceiveRequest:v12 response:v13, v14, v15, v16, v17];
    }
  }
}

- (MKPOSTCertificateRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end