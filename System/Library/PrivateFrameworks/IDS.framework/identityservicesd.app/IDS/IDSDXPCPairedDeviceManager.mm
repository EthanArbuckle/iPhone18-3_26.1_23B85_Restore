@interface IDSDXPCPairedDeviceManager
- (IDSDXPCPairedDeviceManager)initWithPairingManager:(id)manager;
- (void)getLocalDeviceInfoWithCompletion:(id)completion;
- (void)getPairedDeviceInfoWithCompletion:(id)completion;
@end

@implementation IDSDXPCPairedDeviceManager

- (IDSDXPCPairedDeviceManager)initWithPairingManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = IDSDXPCPairedDeviceManager;
  v6 = [(IDSDXPCPairedDeviceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairingManager, manager);
  }

  return v7;
}

- (void)getLocalDeviceInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing local device info query...", buf, 2u);
  }

  pairingManager = [(IDSDXPCPairedDeviceManager *)self pairingManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005CE208;
  v8[3] = &unk_100BE1390;
  v9 = completionCopy;
  v7 = completionCopy;
  [pairingManager gatherLocalDeviceInfoWithCompletionBlock:v8];
}

- (void)getPairedDeviceInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  pairingManager = [(IDSDXPCPairedDeviceManager *)self pairingManager];
  pairedDevice = [pairingManager pairedDevice];

  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = pairedDevice;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Responding to paired device info query: %@", buf, 0xCu);
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = pairedDevice;
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

  completionCopy[2](completionCopy, pairedDevice, 0);
}

@end