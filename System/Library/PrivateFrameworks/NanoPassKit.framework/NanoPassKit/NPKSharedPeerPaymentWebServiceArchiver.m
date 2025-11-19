@interface NPKSharedPeerPaymentWebServiceArchiver
- (NPKSharedPeerPaymentWebServiceArchiver)initWithCompanionAgentConnection:(id)a3;
- (void)archiveContext:(id)a3;
@end

@implementation NPKSharedPeerPaymentWebServiceArchiver

- (NPKSharedPeerPaymentWebServiceArchiver)initWithCompanionAgentConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NPKSharedPeerPaymentWebServiceArchiver;
  v6 = [(NPKSharedPeerPaymentWebServiceArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (void)archiveContext:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Telling daemon to archive peer payment web service context", v10, 2u);
    }
  }

  v8 = [(NPKSharedPeerPaymentWebServiceArchiver *)self connection];
  v9 = NPKPairedOrPairingDevice();
  [v8 setSharedPeerPaymentWebServiceContext:v4 forDevice:v9];
}

@end