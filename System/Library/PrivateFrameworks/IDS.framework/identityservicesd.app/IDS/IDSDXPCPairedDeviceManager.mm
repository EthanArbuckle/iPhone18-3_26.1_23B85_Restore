@interface IDSDXPCPairedDeviceManager
- (IDSDXPCPairedDeviceManager)initWithPairingManager:(id)a3;
- (void)getLocalDeviceInfoWithCompletion:(id)a3;
- (void)getPairedDeviceInfoWithCompletion:(id)a3;
@end

@implementation IDSDXPCPairedDeviceManager

- (IDSDXPCPairedDeviceManager)initWithPairingManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSDXPCPairedDeviceManager;
  v6 = [(IDSDXPCPairedDeviceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairingManager, a3);
  }

  return v7;
}

- (void)getLocalDeviceInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing local device info query...", buf, 2u);
  }

  v6 = [(IDSDXPCPairedDeviceManager *)self pairingManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005CE208;
  v8[3] = &unk_100BE1390;
  v9 = v4;
  v7 = v4;
  [v6 gatherLocalDeviceInfoWithCompletionBlock:v8];
}

- (void)getPairedDeviceInfoWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSDXPCPairedDeviceManager *)self pairingManager];
  v6 = [v5 pairedDevice];

  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Responding to paired device info query: %@", buf, 0xCu);
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Responding to paired device info query: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v4[2](v4, v6, 0);
}

@end