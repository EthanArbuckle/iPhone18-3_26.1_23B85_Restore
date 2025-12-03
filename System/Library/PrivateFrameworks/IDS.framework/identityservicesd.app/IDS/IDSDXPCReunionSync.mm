@interface IDSDXPCReunionSync
- (BOOL)_isEntitledForPreferInfraWiFiForServices:(id)services error:(id *)error;
- (IDSDXPCReunionSync)initWithConnection:(id)connection clientProcessName:(id)name UTunDeliveryController:(id)controller duetInterface:(id)interface;
- (void)_defaultPeerSetPreferInfraWiFi:(BOOL)fi services:(id)services;
- (void)reunionSyncCompletedForServices:(id)services withCompletion:(id)completion;
- (void)reunionSyncStartedForServices:(id)services withCompletion:(id)completion;
@end

@implementation IDSDXPCReunionSync

- (IDSDXPCReunionSync)initWithConnection:(id)connection clientProcessName:(id)name UTunDeliveryController:(id)controller duetInterface:(id)interface
{
  connectionCopy = connection;
  nameCopy = name;
  controllerCopy = controller;
  interfaceCopy = interface;
  v18.receiver = self;
  v18.super_class = IDSDXPCReunionSync;
  v15 = [(IDSDXPCReunionSync *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientProcessName, name);
    objc_storeStrong(&v16->_connection, connection);
    objc_storeStrong(&v16->_utunDeliveryController, controller);
    objc_storeStrong(&v16->_duetInterface, interface);
  }

  return v16;
}

- (void)reunionSyncStartedForServices:(id)services withCompletion:(id)completion
{
  servicesCopy = services;
  completionCopy = completion;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IDSDXPCReunionSync reunionSyncStartedForServices:withCompletion:]";
    v18 = 2112;
    v19 = servicesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reunion: %s services: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = "[IDSDXPCReunionSync reunionSyncStartedForServices:withCompletion:]";
      v14 = servicesCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = "[IDSDXPCReunionSync reunionSyncStartedForServices:withCompletion:]";
        v14 = servicesCopy;
        _IDSLogV();
      }
    }
  }

  v15 = 0;
  v9 = [(IDSDXPCReunionSync *)self _isEntitledForPreferInfraWiFiForServices:servicesCopy error:&v15, v13, v14];
  v10 = v15;
  if (v9)
  {
    [(IDSDXPCReunionSync *)self _defaultPeerSetPreferInfraWiFi:1 services:servicesCopy];
    duetInterface = [(IDSDXPCReunionSync *)self duetInterface];
    clientProcessName = [(IDSDXPCReunionSync *)self clientProcessName];
    [duetInterface setReunionSyncInProgress:1 forClientID:clientProcessName];
  }

  completionCopy[2](completionCopy, v10);
}

- (void)reunionSyncCompletedForServices:(id)services withCompletion:(id)completion
{
  servicesCopy = services;
  completionCopy = completion;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[IDSDXPCReunionSync reunionSyncCompletedForServices:withCompletion:]";
    v18 = 2112;
    v19 = servicesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reunion: %s services: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v13 = "[IDSDXPCReunionSync reunionSyncCompletedForServices:withCompletion:]";
      v14 = servicesCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v13 = "[IDSDXPCReunionSync reunionSyncCompletedForServices:withCompletion:]";
        v14 = servicesCopy;
        _IDSLogV();
      }
    }
  }

  v15 = 0;
  v9 = [(IDSDXPCReunionSync *)self _isEntitledForPreferInfraWiFiForServices:servicesCopy error:&v15, v13, v14];
  v10 = v15;
  if (v9)
  {
    [(IDSDXPCReunionSync *)self _defaultPeerSetPreferInfraWiFi:0 services:servicesCopy];
    duetInterface = [(IDSDXPCReunionSync *)self duetInterface];
    clientProcessName = [(IDSDXPCReunionSync *)self clientProcessName];
    [duetInterface setReunionSyncInProgress:0 forClientID:clientProcessName];
  }

  completionCopy[2](completionCopy, v10);
}

- (void)_defaultPeerSetPreferInfraWiFi:(BOOL)fi services:(id)services
{
  fiCopy = fi;
  servicesCopy = services;
  if ([servicesCopy count])
  {
    utunDeliveryController = [(IDSDXPCReunionSync *)self utunDeliveryController];
    [utunDeliveryController defaultPeerSetPreferInfraWiFi:fiCopy services:servicesCopy];
  }
}

- (BOOL)_isEntitledForPreferInfraWiFiForServices:(id)services error:(id *)error
{
  servicesCopy = services;
  if ([servicesCopy count])
  {
    connection = [(IDSDXPCReunionSync *)self connection];
    v7 = [connection hasEntitlement:kIDSPreferInfraWiFiEntitlement];

    v8 = +[IMRGLog watchPairing];
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = servicesCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ReunionSync has entitlemnt for non-empty service list {entitlement: com.apple.private.ids.prefer-infrawifi, services: %{public}@}", &v11, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10091F58C(servicesCopy, v9);
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

@end