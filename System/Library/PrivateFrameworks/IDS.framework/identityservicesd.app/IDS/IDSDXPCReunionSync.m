@interface IDSDXPCReunionSync
- (BOOL)_isEntitledForPreferInfraWiFiForServices:(id)a3 error:(id *)a4;
- (IDSDXPCReunionSync)initWithConnection:(id)a3 clientProcessName:(id)a4 UTunDeliveryController:(id)a5 duetInterface:(id)a6;
- (void)_defaultPeerSetPreferInfraWiFi:(BOOL)a3 services:(id)a4;
- (void)reunionSyncCompletedForServices:(id)a3 withCompletion:(id)a4;
- (void)reunionSyncStartedForServices:(id)a3 withCompletion:(id)a4;
@end

@implementation IDSDXPCReunionSync

- (IDSDXPCReunionSync)initWithConnection:(id)a3 clientProcessName:(id)a4 UTunDeliveryController:(id)a5 duetInterface:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSDXPCReunionSync;
  v15 = [(IDSDXPCReunionSync *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientProcessName, a4);
    objc_storeStrong(&v16->_connection, a3);
    objc_storeStrong(&v16->_utunDeliveryController, a5);
    objc_storeStrong(&v16->_duetInterface, a6);
  }

  return v16;
}

- (void)reunionSyncStartedForServices:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IDSDXPCReunionSync reunionSyncStartedForServices:withCompletion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reunion: %s services: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = "[IDSDXPCReunionSync reunionSyncStartedForServices:withCompletion:]";
      v14 = v6;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = "[IDSDXPCReunionSync reunionSyncStartedForServices:withCompletion:]";
        v14 = v6;
        _IDSLogV();
      }
    }
  }

  v15 = 0;
  v9 = [(IDSDXPCReunionSync *)self _isEntitledForPreferInfraWiFiForServices:v6 error:&v15, v13, v14];
  v10 = v15;
  if (v9)
  {
    [(IDSDXPCReunionSync *)self _defaultPeerSetPreferInfraWiFi:1 services:v6];
    v11 = [(IDSDXPCReunionSync *)self duetInterface];
    v12 = [(IDSDXPCReunionSync *)self clientProcessName];
    [v11 setReunionSyncInProgress:1 forClientID:v12];
  }

  v7[2](v7, v10);
}

- (void)reunionSyncCompletedForServices:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IDSDXPCReunionSync reunionSyncCompletedForServices:withCompletion:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reunion: %s services: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = "[IDSDXPCReunionSync reunionSyncCompletedForServices:withCompletion:]";
      v14 = v6;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = "[IDSDXPCReunionSync reunionSyncCompletedForServices:withCompletion:]";
        v14 = v6;
        _IDSLogV();
      }
    }
  }

  v15 = 0;
  v9 = [(IDSDXPCReunionSync *)self _isEntitledForPreferInfraWiFiForServices:v6 error:&v15, v13, v14];
  v10 = v15;
  if (v9)
  {
    [(IDSDXPCReunionSync *)self _defaultPeerSetPreferInfraWiFi:0 services:v6];
    v11 = [(IDSDXPCReunionSync *)self duetInterface];
    v12 = [(IDSDXPCReunionSync *)self clientProcessName];
    [v11 setReunionSyncInProgress:0 forClientID:v12];
  }

  v7[2](v7, v10);
}

- (void)_defaultPeerSetPreferInfraWiFi:(BOOL)a3 services:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v6 = [(IDSDXPCReunionSync *)self utunDeliveryController];
    [v6 defaultPeerSetPreferInfraWiFi:v4 services:v7];
  }
}

- (BOOL)_isEntitledForPreferInfraWiFiForServices:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = [(IDSDXPCReunionSync *)self connection];
    v7 = [v6 hasEntitlement:kIDSPreferInfraWiFiEntitlement];

    v8 = +[IMRGLog watchPairing];
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ReunionSync has entitlemnt for non-empty service list {entitlement: com.apple.private.ids.prefer-infrawifi, services: %{public}@}", &v11, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10091F58C(v5, v9);
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

@end