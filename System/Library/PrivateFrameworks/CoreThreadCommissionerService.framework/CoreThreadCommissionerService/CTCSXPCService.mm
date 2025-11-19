@interface CTCSXPCService
- (BOOL)checkEntitlements:(id)a3 connection:(id)a4;
- (BOOL)checkFF;
- (BOOL)checkPrivateEntitlement;
- (BOOL)isThreadNetworkProfileInstalled;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)takeUserPermission:(id)a3 userDescription:(id)a4;
- (CTCSXPCService)init;
- (CTCSXPCService)initWithListener:(id)a3;
- (id)BackingStoreDS;
- (id)BackingStoreDSInternally;
- (id)getClientKeychainAccessGroup;
- (id)getConnectionTeamId:(id)a3;
- (void)awdPostStabilityMetrics:(unsigned __int8)a3;
- (void)ctcsIsPreferredNetworkForActiveOperationalDataset:(id)a3 completion:(id)a4;
- (void)ctcsServerAddPreferredNetworkWithCompletionInternally:(id)a3 extendedPANId:(id)a4 borderAgentID:(id)a5 ipV4NwSignature:(id)a6 ipv6NwSignature:(id)a7 wifiSSID:(id)a8 wifiPassword:(id)a9 completion:(id)a10;
- (void)ctcsServerCleanKeychainThreadNetworksWithCompletion:(id)a3;
- (void)ctcsServerCleanPreferredAndFrozenThreadNetworksWithCompletion:(id)a3;
- (void)ctcsServerDeleteActiveDataSetRecordForThreadBorderAgent:(id)a3 completion:(id)a4;
- (void)ctcsServerDeleteActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)ctcsServerDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)a3 extendedPANId:(id)a4 ipV4NwSignature:(id)a5 ipv6NwSignature:(id)a6 wifiSSID:(id)a7 completion:(id)a8;
- (void)ctcsServerDeletePreferredNetworkWithCompletion:(id)a3;
- (void)ctcsServerRetrieveActiveDataSetRecordForThreadBorderAgent:(id)a3 completion:(id)a4;
- (void)ctcsServerRetrieveActiveDataSetRecordInternallyWithXPANId:(id)a3 completion:(id)a4;
- (void)ctcsServerRetrieveActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)ctcsServerRetrieveActiveDataSetRecordWithXPANId:(id)a3 completion:(id)a4;
- (void)ctcsServerRetrieveIsPreferredNetworkAvailable:(id)a3;
- (void)ctcsServerRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)a3;
- (void)ctcsServerRetrievePreferredNetworkInternallyOnMdnsAndSigWithCompletion:(id)a3;
- (void)ctcsServerRetrievePreferredNetworkInternallyWithCompletion:(id)a3;
- (void)ctcsServerRetrievePreferredNetworkWithCompletion:(id)a3;
- (void)ctcsServerRetrievePreferredNetworkWithNoScanWithCompletion:(id)a3;
- (void)ctcsServerStoreCachedAODasPreferredNetwork:(id)a3 completion:(id)a4;
- (void)ctcsServerStoreThreadNetworkCredentialActiveDataSet:(id)a3 credentialsDataSet:(id)a4 completion:(id)a5;
- (void)ctcsUpdatePreferredNetworkInternallyWithCompletion:(id)a3;
- (void)ctcsValidateAODInternally:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)isConnectionValid:(id)a3;
- (void)isConnectionValid:(id)a3 completion:(id)a4;
- (void)ping:(id)a3;
- (void)run;
@end

@implementation CTCSXPCService

- (CTCSXPCService)init
{
  v3 = sub_100007454(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CTCSXPCService init]";
    v10 = 1024;
    v11 = 51;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Server: %s:%d", &v8, 0x12u);
  }

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.ThreadNetwork.xpc"];
  v5 = [(CTCSXPCService *)self initWithListener:v4];
  if (v5)
  {
    v6 = sub_100007454(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[CTCSXPCService init]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Server: %s", &v8, 0xCu);
    }
  }

  return v5;
}

- (CTCSXPCService)initWithListener:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CTCSXPCService;
  v6 = [(CTCSXPCService *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, a3);
    [(NSXPCListener *)v7->_listener setDelegate:v7];
    listener = v7->_listener;
    v9 = sub_100008E8C();
    [(NSXPCListener *)listener _setQueue:v9];

    v10 = dispatch_queue_create("CTCSXPCServiceListener Thread Safe Queue", &_dispatch_queue_attr_concurrent);
    threadSafeQueue = v7->_threadSafeQueue;
    v7->_threadSafeQueue = v10;

    v12 = objc_alloc_init(ThreadNetworkManagerSelfHealHandler);
    selfHealHandler = v7->_selfHealHandler;
    v7->_selfHealHandler = v12;

    v14 = sub_100007454(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[CTCSXPCService initWithListener:]";
      v19 = 1024;
      v20 = 67;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Server: %s:%d", buf, 0x12u);
    }
  }

  return v7;
}

- (void)run
{
  v3 = sub_100007454(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = "[CTCSXPCService run]";
    v7 = 1024;
    v8 = 74;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Server: %s:%d", buf, 0x12u);
  }

  [(ThreadNetworkManagerSelfHealHandler *)self->_selfHealHandler initSelfHealThreadNetworkTimer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008FFC;
  v4[3] = &unk_100078920;
  v4[4] = self;
  sub_1000095CC(v4, 1);
}

- (void)invalidate
{
  v2 = [(CTCSXPCService *)self listener];
  [v2 invalidate];

  v3 = sub_100007454(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[CTCSXPCService invalidate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Server: %s - invalidated", &v4, 0xCu);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTCSXPCService *)self listener];
  if (v8 != v6)
  {
    __assert_rtn("[CTCSXPCService listener:shouldAcceptNewConnection:]", "CTCSXPCService.mm", 95, "listener == self.listener");
  }

  if (!v7)
  {
    __assert_rtn("[CTCSXPCService listener:shouldAcceptNewConnection:]", "CTCSXPCService.mm", 97, "newConnection != nil");
  }

  if (![(CTCSXPCService *)self checkFF])
  {
    v14 = sub_100007454(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 136315394;
      v21 = "[CTCSXPCService listener:shouldAcceptNewConnection:]";
      v22 = 1024;
      v23 = 101;
      v16 = "%s:%d: Feature is not supported...";
      v17 = v14;
      v18 = 18;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, v16, &v20, v18);
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v9 = [NSString stringWithUTF8String:"com.apple.developer.networking.manage-thread-network-credentials"];
  v10 = [(CTCSXPCService *)self checkEntitlements:v9 connection:v7];

  if ((v10 & 1) == 0)
  {
    v14 = sub_100007454(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[CTCSXPCService listener:shouldAcceptNewConnection:]";
      v16 = "Server: %s - Invalid Entitlements";
      v17 = v14;
      v18 = 12;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v11 = sub_100008E8C();
  dispatch_assert_queue_V2(v11);

  v12 = sub_100008E8C();
  [v7 _setQueue:v12];

  v13 = +[XPCInterface CTCSCreateXPCTransportInterface];
  [v7 setExportedInterface:v13];

  [v7 setExportedObject:self];
  [v7 setInterruptionHandler:&stru_100078980];
  [v7 setInvalidationHandler:&stru_1000789A0];
  [v7 resume];
  v14 = sub_100007454(1);
  v15 = 1;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "[CTCSXPCService listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Server: %s - CTCS XPC new Connection started", &v20, 0xCu);
  }

LABEL_13:

  return v15;
}

- (void)awdPostStabilityMetrics:(unsigned __int8)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AWDFlagstoneCTCSStabilityMetrics);
  if (v4)
  {
    v5 = objc_opt_new();
    [(AWDFlagstoneCTCSStabilityMetrics *)v4 setSCntrsStability:v5];

    v6 = [(AWDFlagstoneCTCSStabilityMetrics *)v4 sCntrsStability];

    if (v6)
    {
      if (v3 > 3)
      {
        switch(v3)
        {
          case 4:
            v7 = [(AWDFlagstoneCTCSStabilityMetrics *)v4 sCntrsStability];
            [v7 setCtcsReadWriteFailType:4];
            break;
          case 5:
            v7 = [(AWDFlagstoneCTCSStabilityMetrics *)v4 sCntrsStability];
            [v7 setCtcsReadWriteFailType:5];
            break;
          case 6:
            v7 = [(AWDFlagstoneCTCSStabilityMetrics *)v4 sCntrsStability];
            [v7 setCtcsReadWriteFailType:6];
            break;
          default:
            goto LABEL_19;
        }
      }

      else
      {
        switch(v3)
        {
          case 1:
            v7 = [(AWDFlagstoneCTCSStabilityMetrics *)v4 sCntrsStability];
            [v7 setCtcsReadWriteFailType:1];
            break;
          case 2:
            v7 = [(AWDFlagstoneCTCSStabilityMetrics *)v4 sCntrsStability];
            [v7 setCtcsReadWriteFailType:2];
            break;
          case 3:
            v7 = [(AWDFlagstoneCTCSStabilityMetrics *)v4 sCntrsStability];
            [v7 setCtcsReadWriteFailType:3];
            break;
          default:
            goto LABEL_19;
        }
      }

      AWDPostMetric();
      v8 = sub_100007454(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 136315650;
        v10 = "[CTCSXPCService awdPostStabilityMetrics:]";
        v11 = 1024;
        v12 = 209;
        v13 = 1024;
        v14 = v3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%d : Posted AWD Metric for awdPostStabilityMetrics for enum error : %d ", &v9, 0x18u);
      }
    }
  }

LABEL_19:
}

- (BOOL)takeUserPermission:(id)a3 userDescription:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100007454(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v14 = "[CTCSXPCService takeUserPermission:userDescription:]";
    v15 = 1024;
    v16 = 259;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%d: appString  : %@", buf, 0x1Cu);
  }

  v12 = 0;
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v5, v6, @"Allow", @"Don't Allow", 0, &v12);
  v8 = v12 & 3;
  if ((v12 & 3) != 0)
  {
    v9 = sub_100007454(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[CTCSXPCService takeUserPermission:userDescription:]";
      v15 = 1024;
      v16 = 270;
      v10 = "%s:%d:  User response is No \n";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, buf, 0x12u);
    }
  }

  else
  {
    v9 = sub_100007454(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[CTCSXPCService takeUserPermission:userDescription:]";
      v15 = 1024;
      v16 = 267;
      v10 = "%s:%d:  User response is Yes \n";
      goto LABEL_8;
    }
  }

  return v8 == 0;
}

- (BOOL)checkFF
{
  v2 = objc_alloc_init(CTCSUtils);
  if (!v2)
  {
    sub_100055E20();
  }

  v3 = v2;
  v4 = [(CTCSUtils *)v2 ctcsUtilIsThreadCommissioningEnabled];
  if (v4)
  {
    v5 = sub_100007454(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100055DE0();
    }
  }

  else
  {
    v6 = sub_100007454(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100055DA0();
    }

    v9 = NSLocalizedDescriptionKey;
    v10 = @"ThreadCommissioningService Feature is Disabled";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v5 = [NSError errorWithDomain:@"Feature Flags Error" code:2 userInfo:v7];
  }

  return v4;
}

- (id)getClientKeychainAccessGroup
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[NSXPCConnection currentConnection];
  if (v3)
  {
    v4 = [(CTCSXPCService *)v2 getConnectionTeamId:v3];
    if (v4)
    {
      v5 = sub_100007454(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 136315650;
        v10 = "[CTCSXPCService getClientKeychainAccessGroup]";
        v11 = 1024;
        v12 = 307;
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: %d: clientKeychainAccessGroup: %@ .\n", &v9, 0x1Cu);
      }

      v4 = v4;
      v6 = v4;
    }

    else
    {
      v7 = sub_100007454(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100055E4C();
      }

      v6 = 0;
    }
  }

  else
  {
    v4 = sub_100007454(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100055EC8();
    }

    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (id)BackingStoreDSInternally
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[NSXPCConnection currentConnection];
  if (!v3)
  {
    v7 = sub_100007454(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100055FC0();
    }

    goto LABEL_10;
  }

  v4 = [NSString stringWithUTF8String:"com.apple.private.threadnetwork"];
  v5 = [(CTCSXPCService *)v2 checkEntitlements:v4 connection:v3];

  if ((v5 & 1) == 0)
  {
    v7 = sub_100007454(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100055F44();
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v6 = sub_100007454(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[CTCSXPCService BackingStoreDSInternally]";
    v12 = 1024;
    v13 = 330;
    v14 = 2112;
    v15 = @"0000000000";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: %d: Apple internal keychainAccessGroup: %@ .\n", &v10, 0x1Cu);
  }

  v7 = +[THThreadNetworkCredentialsKeychainBackingStore defaultBackingStore];
  v8 = [[THThreadNetworkCredentialsStoreLocalClient alloc] initWithKeychainAccessGroup:@"0000000000" backingStore:v7];
LABEL_11:

  objc_sync_exit(v2);

  return v8;
}

- (id)BackingStoreDS
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(CTCSXPCService *)v2 getClientKeychainAccessGroup];
  if (v3)
  {
    v4 = sub_100007454(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "[CTCSXPCService BackingStoreDS]";
      v10 = 1024;
      v11 = 347;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: %d: keychainAccessGroup: %@ .\n", &v8, 0x1Cu);
    }

    v5 = +[THThreadNetworkCredentialsKeychainBackingStore defaultBackingStore];
    v6 = [[THThreadNetworkCredentialsStoreLocalClient alloc] initWithKeychainAccessGroup:v3 backingStore:v5];
  }

  else
  {
    v5 = sub_100007454(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10005603C();
    }

    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (id)getConnectionTeamId:(id)a3
{
  v4 = a3;
  v5 = v4;
  v20 = 0u;
  v21 = 0u;
  if (v4)
  {
    [v4 auditToken];
  }

  v6 = xpc_copy_code_signing_identity_for_token();
  if (v6)
  {
    v7 = sub_100007454(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v23 = "[CTCSXPCService getConnectionTeamId:]";
      v24 = 1024;
      v25 = 363;
      v26 = 2080;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%d: appId  : %s", buf, 0x1Cu);
    }

    v8 = [LSApplicationRecord alloc];
    v9 = [NSString stringWithUTF8String:v6];
    v19 = 0;
    v10 = [v8 initWithBundleIdentifier:v9 allowPlaceholder:1 error:&v19];
    v11 = v19;

    free(v6);
    if (v10)
    {
      v12 = [v10 teamIdentifier];
      v13 = v12;
      if (v12)
      {
        v13 = v12;
        v14 = v13;
      }

      else
      {
        v17 = sub_100007454(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v23 = "[CTCSXPCService getConnectionTeamId:]";
          v24 = 1024;
          v25 = 383;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s:%d: applicationRecord is nil", buf, 0x12u);
        }

        v14 = 0;
      }
    }

    else if (os_variant_has_internal_diagnostics() && ([NSString stringWithUTF8String:"com.apple.private.threadnetwork"], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(CTCSXPCService *)self checkEntitlements:v15 connection:v5], v15, v16))
    {
      v13 = sub_100007454(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100056134();
      }

      v14 = @"0000000000";
    }

    else
    {
      v13 = sub_100007454(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000560B8();
      }

      v14 = 0;
    }
  }

  else
  {
    v11 = sub_100007454(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000561B0();
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)checkEntitlements:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v7 valueForEntitlement:v6];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v9 BOOLValue])
  {
    v10 = sub_100007454(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10005622C();
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_sync_exit(v8);
  if (v11)
  {
    v12 = sub_100007454(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[CTCSXPCService checkEntitlements:connection:]";
      v16 = 1024;
      v17 = 402;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Server: %s:%d - Entitlement Check Failed", &v14, 0x12u);
    }
  }

  return v11 ^ 1;
}

- (void)isConnectionValid:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[CTCSXPCService isConnectionValid:completion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: %s - Connection is valid", &v6, 0xCu);
  }

  v4[2](v4, 1, 0);
}

- (void)isConnectionValid:(id)a3
{
  v3 = a3;
  v4 = sub_100007454(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[CTCSXPCService isConnectionValid:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Server: %s - Connection is valid", &v5, 0xCu);
  }

  v3[2](v3, 1, 0);
}

- (void)ping:(id)a3
{
  v3 = a3;
  v4 = sub_100007454(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[CTCSXPCService ping:]";
    v7 = 1024;
    v8 = 419;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Server: %s:%d: - Ping", &v5, 0x12u);
  }

  v3[2](v3, 1, 0);
}

- (BOOL)checkPrivateEntitlement
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = +[NSXPCConnection currentConnection];
  if (v3)
  {
    v4 = [NSString stringWithUTF8String:"com.apple.private.threadnetwork"];
    v5 = [(CTCSXPCService *)v2 checkEntitlements:v4 connection:v3];
  }

  else
  {
    v6 = sub_100007454(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000562B4();
    }

    v5 = 0;
  }

  objc_sync_exit(v2);
  return v5;
}

- (BOOL)isThreadNetworkProfileInstalled
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableThreadNetwork", @"com.apple.homed", &keyExistsAndHasValidFormat);
  v3 = sub_100007454(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v8 = "[CTCSXPCService isThreadNetworkProfileInstalled]";
    v9 = 1024;
    v10 = 443;
    v11 = 1024;
    v12 = keyExistsAndHasValidFormat;
    v13 = 1024;
    v14 = AppBooleanValue != 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s:%d: - keyExists : %d, isRunningThreadNetworkProfileMode : %d", buf, 0x1Eu);
  }

  if (AppBooleanValue)
  {
    v4 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

- (void)ctcsServerDeleteActiveDataSetRecordForThreadBorderAgent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[CTCSXPCService ctcsServerDeleteActiveDataSetRecordForThreadBorderAgent:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  v9 = [[THThreadNetworkBorderAgent alloc] initWithBaDiscrId:v6];
  if (v9)
  {
    v10 = [(CTCSXPCService *)self BackingStoreDS];
    if (v10)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000B2E0;
      v13[3] = &unk_100078A30;
      v13[4] = self;
      v14 = v7;
      [v10 deleteActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:v9 completion:v13];
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000B25C;
      v15[3] = &unk_100078A08;
      v16 = v7;
      dispatch_async(v12, v15);
    }
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B1D8;
    block[3] = &unk_100078A08;
    v18 = v7;
    dispatch_async(v11, block);

    v10 = v18;
  }
}

- (void)ctcsServerRetrieveActiveDataSetRecordForThreadBorderAgent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[CTCSXPCService ctcsServerRetrieveActiveDataSetRecordForThreadBorderAgent:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  v9 = [(CTCSXPCService *)self BackingStoreDS];
  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000B974;
    v11[3] = &unk_100078A80;
    v11[4] = self;
    v12 = v7;
    [v9 retrieveActiveDataSetRecordForThreadBorderAgentWithKeychainAccessGroup:v6 completion:v11];
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B8EC;
    block[3] = &unk_100078A08;
    v14 = v7;
    dispatch_async(v10, block);
  }
}

- (void)ctcsServerStoreThreadNetworkCredentialActiveDataSet:(id)a3 credentialsDataSet:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100007454(1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v31 = "[CTCSXPCService ctcsServerStoreThreadNetworkCredentialActiveDataSet:credentialsDataSet:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  v12 = [[THThreadNetworkBorderAgent alloc] initWithBaDiscrId:v8];
  v13 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:v9 userInfo:0];
  v14 = v13;
  if (v12 && v13)
  {
    v15 = [(CTCSXPCService *)self BackingStoreDS];
    if (v15)
    {
      v16 = [v14 dataSetArray];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000BE84;
      v20[3] = &unk_100078AF8;
      v21 = v15;
      v22 = v12;
      v23 = v14;
      v24 = self;
      v25 = v10;
      [v21 validateRecordWithMdnsScanWithDataSet:v16 borderAgentID:v8 completion:v20];

      v17 = &v21;
      v18 = v22;
    }

    else
    {
      v18 = dispatch_get_global_queue(0, 0);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000BDFC;
      v26[3] = &unk_100078A08;
      v17 = &v27;
      v27 = v10;
      dispatch_async(v18, v26);
    }
  }

  else
  {
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BD74;
    block[3] = &unk_100078A08;
    v29 = v10;
    dispatch_async(v19, block);

    v15 = v29;
  }
}

- (void)ctcsServerRetrieveActiveDataSetRecordWithXPANId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Retrieving Network with extended panid %@\n", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v73 = 0x3032000000;
  v74 = sub_10000CC3C;
  v75 = sub_10000CC4C;
  v76 = 0;
  v9 = +[NSXPCConnection currentConnection];
  if (v9)
  {
    v10 = [(CTCSXPCService *)self BackingStoreDS];
    if (v10)
    {
      v54 = 0u;
      v55 = 0u;
      [v9 auditToken];
      v11 = xpc_copy_code_signing_identity_for_token();
      if (!v11)
      {
        v30 = dispatch_get_global_queue(0, 0);
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_10000CD64;
        v52[3] = &unk_100078A08;
        v53 = v7;
        dispatch_async(v30, v52);

        v31 = v53;
LABEL_30:

        goto LABEL_31;
      }

      v12 = sub_100007454(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v69 = 136315650;
        *&v69[4] = "[CTCSXPCService ctcsServerRetrieveActiveDataSetRecordWithXPANId:completion:]";
        *&v69[12] = 1024;
        *&v69[14] = 619;
        *&v69[18] = 2080;
        *&v69[20] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s:%d: appId  : %s", v69, 0x1Cu);
      }

      v13 = [LSApplicationRecord alloc];
      v14 = [NSString stringWithUTF8String:v11];
      v51 = 0;
      v15 = [v13 initWithBundleIdentifier:v14 allowPlaceholder:1 error:&v51];
      v39 = v51;

      free(v11);
      if (v15)
      {
        v16 = [v15 localizedName];
        v17 = v16 == 0;

        if (!v17)
        {
          v18 = sub_100007454(1);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v15 localizedName];
            *v69 = 136315650;
            *&v69[4] = "[CTCSXPCService ctcsServerRetrieveActiveDataSetRecordWithXPANId:completion:]";
            *&v69[12] = 1024;
            *&v69[14] = 642;
            *&v69[18] = 2112;
            *&v69[20] = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s:%d: Localized app name  : %@", v69, 0x1Cu);
          }

          v20 = +[NSBundle mainBundle];
          v21 = [v20 localizedStringForKey:@"KEY_CHANGE_TITLE_PLEASE" value:&stru_100079A28 table:0];

          *v69 = 0;
          *&v69[8] = v69;
          *&v69[16] = 0x3032000000;
          *&v69[24] = sub_10000CC3C;
          v70 = sub_10000CC4C;
          v22 = [v15 localizedName];
          v71 = [NSString localizedStringWithFormat:v21, v22];

          if (*(*&v69[8] + 40))
          {
            v23 = sub_100007454(1);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = *(*&v69[8] + 40);
              *v66 = 136315650;
              *&v66[4] = "[CTCSXPCService ctcsServerRetrieveActiveDataSetRecordWithXPANId:completion:]";
              *&v66[12] = 1024;
              *&v66[14] = 655;
              *&v66[18] = 2112;
              *&v66[20] = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s:%d: uiString  : %@", v66, 0x1Cu);
            }

            v25 = +[NSBundle mainBundle];
            v38 = [v25 localizedStringForKey:@"KEY_CHANGE_DESCRIPTION_PLEASE" value:&stru_100079A28 table:0];

            *v66 = 0;
            *&v66[8] = v66;
            *&v66[16] = 0x3032000000;
            *&v66[24] = sub_10000CC3C;
            v67 = sub_10000CC4C;
            v68 = [NSString localizedStringWithFormat:v38, &stru_100079A28];
            if (*(*&v66[8] + 40))
            {
              v26 = sub_100007454(1);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = *(*&v66[8] + 40);
                *v60 = 136315650;
                v61 = "[CTCSXPCService ctcsServerRetrieveActiveDataSetRecordWithXPANId:completion:]";
                v62 = 1024;
                v63 = 670;
                v64 = 2112;
                v65 = v27;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s:%d - Usage Description : %@", v60, 0x1Cu);
              }

              v40[0] = _NSConcreteStackBlock;
              v40[1] = 3221225472;
              v40[2] = sub_10000D01C;
              v40[3] = &unk_100078B20;
              v40[4] = self;
              p_buf = &buf;
              v43 = v69;
              v44 = v66;
              v41 = v7;
              [v10 retrieveActiveDataSetRecordWithExtendedPANId:v6 completion:v40];
            }

            else
            {
              v37 = dispatch_get_global_queue(0, 0);
              v45[0] = _NSConcreteStackBlock;
              v45[1] = 3221225472;
              v45[2] = sub_10000CF94;
              v45[3] = &unk_100078A08;
              v46 = v7;
              dispatch_async(v37, v45);
            }

            _Block_object_dispose(v66, 8);

            v36 = v38;
          }

          else
          {
            v35 = dispatch_get_global_queue(0, 0);
            v47[0] = _NSConcreteStackBlock;
            v47[1] = 3221225472;
            v47[2] = sub_10000CF0C;
            v47[3] = &unk_100078A08;
            v48 = v7;
            dispatch_async(v35, v47);

            v36 = v48;
          }

          _Block_object_dispose(v69, 8);
          goto LABEL_29;
        }

        v34 = dispatch_get_global_queue(0, 0);
        v33 = v49;
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_10000CE84;
        v49[3] = &unk_100078A08;
        v49[4] = v7;
        dispatch_async(v34, v49);
      }

      else
      {
        v32 = dispatch_get_global_queue(0, 0);
        v33 = v50;
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10000CDEC;
        v50[3] = &unk_100078A08;
        v50[4] = v7;
        dispatch_async(v32, v50);
      }

      v21 = v33[4];
LABEL_29:

      v31 = v39;
      goto LABEL_30;
    }

    v29 = dispatch_get_global_queue(0, 0);
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_10000CCDC;
    v56[3] = &unk_100078A08;
    v57 = v7;
    dispatch_async(v29, v56);
  }

  else
  {
    v28 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CC54;
    block[3] = &unk_100078A08;
    v59 = v7;
    dispatch_async(v28, block);

    v10 = v59;
  }

LABEL_31:

  _Block_object_dispose(&buf, 8);
}

- (void)ctcsServerRetrievePreferredNetworkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: Retrieving Preferred Network...\n", buf, 2u);
  }

  *buf = 0;
  v57 = buf;
  v58 = 0x3032000000;
  v59 = sub_10000CC3C;
  v60 = sub_10000CC4C;
  v61 = 0;
  v6 = +[NSXPCConnection currentConnection];
  if (v6)
  {
    v7 = [(CTCSXPCService *)self BackingStoreDS];
    if (v7)
    {
      v50 = 0u;
      v51 = 0u;
      [v6 auditToken];
      v8 = xpc_copy_code_signing_identity_for_token();
      if (!v8)
      {
        v28 = dispatch_get_global_queue(0, 0);
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10000DD40;
        v48[3] = &unk_100078A08;
        v49 = v4;
        dispatch_async(v28, v48);

        v29 = v49;
LABEL_30:

        goto LABEL_31;
      }

      v9 = sub_100007454(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v71 = 136315650;
        *&v71[4] = "[CTCSXPCService ctcsServerRetrievePreferredNetworkWithCompletion:]";
        *&v71[12] = 1024;
        *&v71[14] = 735;
        *&v71[18] = 2080;
        *&v71[20] = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s:%d: appId  : %s", v71, 0x1Cu);
      }

      v10 = [LSApplicationRecord alloc];
      v11 = [NSString stringWithUTF8String:v8];
      v47 = 0;
      v12 = [v10 initWithBundleIdentifier:v11 allowPlaceholder:1 error:&v47];
      v35 = v47;

      free(v8);
      if (v12)
      {
        v13 = [v12 localizedName];
        v14 = v13 == 0;

        if (!v14)
        {
          v15 = sub_100007454(1);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v12 localizedName];
            *v71 = 136315650;
            *&v71[4] = "[CTCSXPCService ctcsServerRetrievePreferredNetworkWithCompletion:]";
            *&v71[12] = 1024;
            *&v71[14] = 759;
            *&v71[18] = 2112;
            *&v71[20] = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s:%d: Localized app name  : %@", v71, 0x1Cu);
          }

          v17 = +[NSBundle mainBundle];
          v18 = [v17 localizedStringForKey:@"KEY_CHANGE_TITLE_PLEASE" value:&stru_100079A28 table:0];

          *v71 = 0;
          *&v71[8] = v71;
          *&v71[16] = 0x3032000000;
          *&v71[24] = sub_10000CC3C;
          v72 = sub_10000CC4C;
          v19 = [v12 localizedName];
          v73 = [NSString localizedStringWithFormat:v18, v19];

          if (*(*&v71[8] + 40))
          {
            v20 = sub_100007454(1);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = *(*&v71[8] + 40);
              *v68 = 136315650;
              *&v68[4] = "[CTCSXPCService ctcsServerRetrievePreferredNetworkWithCompletion:]";
              *&v68[12] = 1024;
              *&v68[14] = 773;
              *&v68[18] = 2112;
              *&v68[20] = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s:%d: uiString  : %@", v68, 0x1Cu);
            }

            v22 = +[NSBundle mainBundle];
            v23 = [v22 localizedStringForKey:@"KEY_CHANGE_DESCRIPTION_PLEASE" value:&stru_100079A28 table:0];

            *v68 = 0;
            *&v68[8] = v68;
            *&v68[16] = 0x3032000000;
            *&v68[24] = sub_10000CC3C;
            v69 = sub_10000CC4C;
            v70 = [NSString localizedStringWithFormat:v23, &stru_100079A28];
            if (*(*&v68[8] + 40))
            {
              v24 = sub_100007454(1);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v25 = *(*&v68[8] + 40);
                *v62 = 136315650;
                v63 = "[CTCSXPCService ctcsServerRetrievePreferredNetworkWithCompletion:]";
                v64 = 1024;
                v65 = 788;
                v66 = 2112;
                v67 = v25;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s:%d - Usage Description : %@", v62, 0x1Cu);
              }

              v36[0] = _NSConcreteStackBlock;
              v36[1] = 3221225472;
              v36[2] = sub_10000DFF8;
              v36[3] = &unk_100078B20;
              v36[4] = self;
              v38 = buf;
              v39 = v71;
              v40 = v68;
              v37 = v4;
              [v7 retrievePreferredNetworkWithCompletion:v36];
            }

            else
            {
              v34 = dispatch_get_global_queue(0, 0);
              v41[0] = _NSConcreteStackBlock;
              v41[1] = 3221225472;
              v41[2] = sub_10000DF70;
              v41[3] = &unk_100078A08;
              v42 = v4;
              dispatch_async(v34, v41);
            }

            _Block_object_dispose(v68, 8);
          }

          else
          {
            v33 = dispatch_get_global_queue(0, 0);
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_10000DEE8;
            v43[3] = &unk_100078A08;
            v44 = v4;
            dispatch_async(v33, v43);

            v23 = v44;
          }

          _Block_object_dispose(v71, 8);
          goto LABEL_29;
        }

        v32 = dispatch_get_global_queue(0, 0);
        v31 = v45;
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_10000DE60;
        v45[3] = &unk_100078A08;
        v45[4] = v4;
        dispatch_async(v32, v45);
      }

      else
      {
        v30 = dispatch_get_global_queue(0, 0);
        v31 = v46;
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_10000DDC8;
        v46[3] = &unk_100078A08;
        v46[4] = v4;
        dispatch_async(v30, v46);
      }

      v18 = v31[4];
LABEL_29:

      v29 = v35;
      goto LABEL_30;
    }

    v27 = dispatch_get_global_queue(0, 0);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10000DCB8;
    v52[3] = &unk_100078A08;
    v53 = v4;
    dispatch_async(v27, v52);
  }

  else
  {
    v26 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000DC30;
    block[3] = &unk_100078A08;
    v55 = v4;
    dispatch_async(v26, block);

    v7 = v55;
  }

LABEL_31:

  _Block_object_dispose(buf, 8);
}

- (void)ctcsIsPreferredNetworkForActiveOperationalDataset:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100007454(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 136315906;
    v22 = "[CTCSXPCService ctcsIsPreferredNetworkForActiveOperationalDataset:completion:]";
    v23 = 2112;
    v24 = v10;
    v25 = 2080;
    v26 = "[CTCSXPCService ctcsIsPreferredNetworkForActiveOperationalDataset:completion:]";
    v27 = 2080;
    v28 = "[CTCSXPCService ctcsIsPreferredNetworkForActiveOperationalDataset:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Server: %s Checking whether dataset matches to preferred network... %@, %s, %s \n", buf, 0x2Au);
  }

  if (v7)
  {
    v11 = [(CTCSXPCService *)self BackingStoreDS];
    if (v11)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000E514;
      v15[3] = &unk_100078B48;
      v16 = v8;
      [v11 checkIsPreferredNetworkForActiveOperationalDataset:v7 completion:v15];
      v12 = &v16;
    }

    else
    {
      v14 = dispatch_get_global_queue(0, 0);
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10000E500;
      v17[3] = &unk_100078A08;
      v18 = v8;
      dispatch_async(v14, v17);

      v12 = &v18;
    }
  }

  else
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E4A0;
    block[3] = &unk_100078A08;
    v20 = v8;
    dispatch_async(v13, block);

    v11 = v20;
  }
}

- (void)ctcsServerRetrieveIsPreferredNetworkAvailable:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: checking if preferred network is available ...\n", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = sub_10000CC3C;
  v17 = sub_10000CC4C;
  v18 = 0;
  v6 = [(CTCSXPCService *)self BackingStoreDS];
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000E820;
    v9[3] = &unk_100078B70;
    v10[1] = buf;
    v10[0] = v4;
    [v6 retrievePreferredNetworkWithCompletion:v9];
    v7 = v10;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000E80C;
    block[3] = &unk_100078A08;
    v7 = &v12;
    v12 = v4;
    dispatch_async(v8, block);
  }

  _Block_object_dispose(buf, 8);
}

- (void)ctcsServerRetrievePreferredNetworkWithNoScanWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: Retrieving Preferred Network for Internal Clients with _no_scan_ ...\n", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = sub_10000CC3C;
  v17 = sub_10000CC4C;
  v18 = 0;
  v6 = [(CTCSXPCService *)self BackingStoreDSInternally];
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000EBDC;
    v9[3] = &unk_100078B70;
    v10[1] = buf;
    v10[0] = v4;
    [v6 retrievePreferredNetworkWithNoScanWithCompletion:v9];
    v7 = v10;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EB54;
    block[3] = &unk_100078A08;
    v7 = &v12;
    v12 = v4;
    dispatch_async(v8, block);
  }

  _Block_object_dispose(buf, 8);
}

- (void)ctcsServerRetrievePreferredNetworkInternallyOnMdnsAndSigWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: Retrieving Preferred Network for Internal Clients ...\n", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = sub_10000CC3C;
  v17 = sub_10000CC4C;
  v18 = 0;
  v6 = [(CTCSXPCService *)self BackingStoreDSInternally];
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000EF64;
    v9[3] = &unk_100078B70;
    v10[1] = buf;
    v10[0] = v4;
    [v6 retrievePreferredNetworkWithCompletion:v9];
    v7 = v10;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000EEDC;
    block[3] = &unk_100078A08;
    v7 = &v12;
    v12 = v4;
    dispatch_async(v8, block);
  }

  _Block_object_dispose(buf, 8);
}

- (void)ctcsServerRetrievePreferredNetworkInternallyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: Retrieving Preferred Network for Internal Clients ...\n", buf, 2u);
  }

  *buf = 0;
  v14 = buf;
  v15 = 0x3032000000;
  v16 = sub_10000CC3C;
  v17 = sub_10000CC4C;
  v18 = 0;
  v6 = [(CTCSXPCService *)self BackingStoreDSInternally];
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000F2EC;
    v9[3] = &unk_100078B70;
    v10[1] = buf;
    v10[0] = v4;
    [v6 retrievePreferredNetworkInternallyWithCompletion:v9];
    v7 = v10;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F264;
    block[3] = &unk_100078A08;
    v7 = &v12;
    v12 = v4;
    dispatch_async(v8, block);
  }

  _Block_object_dispose(buf, 8);
}

- (void)ctcsServerRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: Retrieving or generate Preferred Network for Internal Clients ...\n", buf, 2u);
  }

  *buf = 0;
  v16 = buf;
  v17 = 0x3032000000;
  v18 = sub_10000CC3C;
  v19 = sub_10000CC4C;
  v20 = 0;
  if (MGGetBoolAnswer())
  {
    v6 = sub_100007454(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v21 = 136315394;
      v22 = "[CTCSXPCService ctcsServerRetrieveOrGeneratePreferredNetworkInternallyWithCompletion:]";
      v23 = 1024;
      v24 = 980;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, " %s:%d Thread is supported on this device !", v21, 0x12u);
    }

    v7 = [(CTCSXPCService *)self BackingStoreDSInternally];
    if (v7)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000F7A8;
      v11[3] = &unk_100078B70;
      v12[1] = buf;
      v12[0] = v4;
      [v7 retrieveOrGeneratePreferredNetworkInternallyWithCompletion:v11];
      v8 = v12;
    }

    else
    {
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000F720;
      block[3] = &unk_100078A08;
      v14 = v4;
      dispatch_async(v10, block);

      v8 = &v14;
    }
  }

  else
  {
    v7 = [NSError storeError:3 description:@"Feature not supported"];
    v9 = sub_100007454(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000564E4();
    }

    (*(v4 + 2))(v4, 0, v7);
  }

  _Block_object_dispose(buf, 8);
}

- (void)ctcsServerDeletePreferredNetworkWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[CTCSXPCService ctcsServerDeletePreferredNetworkWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  v6 = [(CTCSXPCService *)self BackingStoreDSInternally];
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000FB04;
    v9[3] = &unk_100078B98;
    v10 = v4;
    [v6 deletePreferredNetworkWithCompletion:v9];
    v7 = &v10;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FA80;
    block[3] = &unk_100078A08;
    v12 = v4;
    dispatch_async(v8, block);

    v7 = &v12;
  }
}

- (void)ctcsUpdatePreferredNetworkInternallyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[CTCSXPCService ctcsUpdatePreferredNetworkInternallyWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  v6 = [(CTCSXPCService *)self BackingStoreDSInternally];
  if (v6)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000FCA0;
    v7[3] = &unk_100078B48;
    v8 = v4;
    [v6 updatePreferredNetworkInternallyWithCompletion:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)ctcsServerRetrieveActiveDataSetRecordInternallyWithXPANId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Retrieving Network with extended panid Internally %@\n", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v17 = 0x3032000000;
  v18 = sub_10000CC3C;
  v19 = sub_10000CC4C;
  v20 = 0;
  v9 = [(CTCSXPCService *)self BackingStoreDSInternally];
  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000FFAC;
    v11[3] = &unk_100078BC0;
    v11[4] = self;
    p_buf = &buf;
    v12 = v7;
    [v9 retrieveActiveDataSetRecordOnMdnsWithExtendedPANId:v6 completion:v11];
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000FF24;
    block[3] = &unk_100078A08;
    v15 = v7;
    dispatch_async(v10, block);
  }

  _Block_object_dispose(&buf, 8);
}

- (void)ctcsServerStoreCachedAODasPreferredNetwork:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[CTCSXPCService ctcsServerStoreCachedAODasPreferredNetwork:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  v9 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:v6 userInfo:0];
  if (v9)
  {
    v10 = [(CTCSXPCService *)self BackingStoreDSInternally];
    if (v10)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10001046C;
      v14[3] = &unk_100078BE8;
      v15 = v7;
      [v10 storeCachedAODasPreferredNetwork:v9 completion:v14];
      v11 = &v15;
    }

    else
    {
      v13 = dispatch_get_global_queue(0, 0);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000103E4;
      v16[3] = &unk_100078A08;
      v17 = v7;
      dispatch_async(v13, v16);

      v11 = &v17;
    }
  }

  else
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001035C;
    block[3] = &unk_100078A08;
    v19 = v7;
    dispatch_async(v12, block);

    v10 = v19;
  }
}

- (void)ctcsValidateAODInternally:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[THThreadNetworkCredentialsDataSet alloc] initWithDataSetArray:v6 userInfo:0];
  if (v8)
  {
    v9 = [(CTCSXPCService *)self BackingStoreDSInternally];
    if (v9)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000107A8;
      v13[3] = &unk_100078C10;
      v14 = v7;
      [v9 validateAODInternally:v8 completion:v13];
      v10 = &v14;
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100010720;
      v15[3] = &unk_100078A08;
      v10 = &v16;
      v16 = v7;
      dispatch_async(v12, v15);
    }
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010698;
    block[3] = &unk_100078A08;
    v18 = v7;
    dispatch_async(v11, block);

    v9 = v18;
  }
}

- (void)ctcsServerRetrieveActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: Retrieving DS credentials for UUID %@...\n", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = sub_10000CC3C;
  v22 = sub_10000CC4C;
  v23 = 0;
  if (os_variant_has_internal_diagnostics())
  {
    v9 = [(CTCSXPCService *)self BackingStoreDSInternally];
    if (v9)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100010FAC;
      v13[3] = &unk_100078B70;
      v14[1] = &buf;
      v14[0] = v7;
      [v9 retrieveActiveDataSetRecordWithUniqueIdentifier:v6 completion:v13];
      v10 = v14;
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100010F24;
      v15[3] = &unk_100078A08;
      v16 = v7;
      dispatch_async(v12, v15);

      v10 = &v16;
    }
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010E9C;
    block[3] = &unk_100078A08;
    v18 = v7;
    dispatch_async(v11, block);

    v9 = v18;
  }

  _Block_object_dispose(&buf, 8);
}

- (void)ctcsServerDeleteActiveDataSetRecordWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100007454(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[CTCSXPCService ctcsServerDeleteActiveDataSetRecordWithUniqueIdentifier:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  if (os_variant_has_internal_diagnostics())
  {
    v9 = [(CTCSXPCService *)self BackingStoreDSInternally];
    if (v9)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000113E8;
      v13[3] = &unk_100078B98;
      v14 = v7;
      [v9 deleteActiveDataSetRecordWithUniqueIdentifierWithKeychainAccessGroup:v6 completion:v13];
      v10 = &v14;
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100011364;
      v15[3] = &unk_100078A08;
      v16 = v7;
      dispatch_async(v12, v15);

      v10 = &v16;
    }
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000112E0;
    block[3] = &unk_100078A08;
    v18 = v7;
    dispatch_async(v11, block);

    v9 = v18;
  }
}

- (void)ctcsServerCleanPreferredAndFrozenThreadNetworksWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[CTCSXPCService ctcsServerCleanPreferredAndFrozenThreadNetworksWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  if (os_variant_has_internal_diagnostics())
  {
    v6 = [(CTCSXPCService *)self BackingStoreDSInternally];
    if (v6)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100011770;
      v10[3] = &unk_100078B98;
      v11 = v4;
      [v6 deletePreferredAndFrozenThreadNetworksWithCompletion:v10];
      v7 = &v11;
    }

    else
    {
      v9 = dispatch_get_global_queue(0, 0);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000116EC;
      v12[3] = &unk_100078A08;
      v13 = v4;
      dispatch_async(v9, v12);

      v7 = &v13;
    }
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011668;
    block[3] = &unk_100078A08;
    v15 = v4;
    dispatch_async(v8, block);

    v6 = v15;
  }
}

- (void)ctcsServerCleanKeychainThreadNetworksWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100007454(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[CTCSXPCService ctcsServerCleanKeychainThreadNetworksWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  if (os_variant_has_internal_diagnostics())
  {
    v6 = [(CTCSXPCService *)self BackingStoreDSInternally];
    if (v6)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100011AF8;
      v10[3] = &unk_100078B98;
      v11 = v4;
      [v6 cleanThreadKeychainDatabase:v10];
      v7 = &v11;
    }

    else
    {
      v9 = dispatch_get_global_queue(0, 0);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100011A74;
      v12[3] = &unk_100078A08;
      v13 = v4;
      dispatch_async(v9, v12);

      v7 = &v13;
    }
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000119F0;
    block[3] = &unk_100078A08;
    v15 = v4;
    dispatch_async(v8, block);

    v6 = v15;
  }
}

- (void)ctcsServerAddPreferredNetworkWithCompletionInternally:(id)a3 extendedPANId:(id)a4 borderAgentID:(id)a5 ipV4NwSignature:(id)a6 ipv6NwSignature:(id)a7 wifiSSID:(id)a8 wifiPassword:(id)a9 completion:(id)a10
{
  v29 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = sub_100007454(1);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v37 = "[CTCSXPCService ctcsServerAddPreferredNetworkWithCompletionInternally:extendedPANId:borderAgentID:ipV4NwSignature:ipv6NwSignature:wifiSSID:wifiPassword:completion:]";
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  if (os_variant_has_internal_diagnostics())
  {
    v24 = [(CTCSXPCService *)self BackingStoreDSInternally];
    if (v24)
    {
      v25 = [[THThreadNetwork alloc] initWithName:v29 extendedPANID:v16];
      v26 = [[THThreadNetworkBorderAgent alloc] initWithBaDiscrId:v17];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100011FA0;
      v30[3] = &unk_100078B98;
      v31 = v22;
      [v24 addPreferredNetworkWithCompletionInternally:v25 borderAgentID:v26 ipV4NwSignature:v18 ipv6NwSignature:v19 wifiSSID:v20 wifiPassword:v21 completion:v30];
    }

    else
    {
      v28 = dispatch_get_global_queue(0, 0);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100011F1C;
      v32[3] = &unk_100078A08;
      v33 = v22;
      dispatch_async(v28, v32);

      v25 = v33;
    }
  }

  else
  {
    v27 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011E98;
    block[3] = &unk_100078A08;
    v35 = v22;
    dispatch_async(v27, block);

    v24 = v35;
  }
}

- (void)ctcsServerDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:(id)a3 extendedPANId:(id)a4 ipV4NwSignature:(id)a5 ipv6NwSignature:(id)a6 wifiSSID:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = sub_100007454(1);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[CTCSXPCService ctcsServerDeletePreferredNetworkForNetworkSignatureInternallyWithCompletion:extendedPANId:ipV4NwSignature:ipv6NwSignature:wifiSSID:completion:]";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Server: %s", buf, 0xCu);
  }

  if (os_variant_has_internal_diagnostics())
  {
    v21 = [(CTCSXPCService *)self BackingStoreDSInternally];
    if (v21)
    {
      v22 = [[THThreadNetwork alloc] initWithName:v14 extendedPANID:v15];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000123DC;
      v25[3] = &unk_100078B98;
      v26 = v19;
      [v21 deletePreferredNetworkForNetworkSignatureInternallyWithCompletion:v22 ipv4NwSignature:v16 ipv6NwSignature:v17 wifiSSID:v18 completion:v25];
    }

    else
    {
      v24 = dispatch_get_global_queue(0, 0);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100012358;
      v27[3] = &unk_100078A08;
      v28 = v19;
      dispatch_async(v24, v27);

      v22 = v28;
    }
  }

  else
  {
    v23 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000122D4;
    block[3] = &unk_100078A08;
    v30 = v19;
    dispatch_async(v23, block);

    v21 = v30;
  }
}

@end