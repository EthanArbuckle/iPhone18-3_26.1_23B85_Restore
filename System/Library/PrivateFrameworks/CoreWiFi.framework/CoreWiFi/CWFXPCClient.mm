@interface CWFXPCClient
- (BOOL)allowRequestType:(int64_t)a3;
- (BOOL)beginActivity:(id)a3 requestParameters:(id)a4 error:(id *)a5;
- (BOOL)checkinWithRequestParameters:(id)a3 error:(id *)a4;
- (BOOL)startMonitoringEvent:(id)a3 requestParameters:(id)a4 error:(id *)a5;
- (CWFXPCClient)init;
- (CWFXPCClient)initWithServiceType:(int64_t)a3 endpoint:(id)a4 remoteXPCProxyConnection:(id)a5;
- (CWFXPCProxyConnection)localXPCProxyConnection;
- (id)eventHandlerWithEventID:(id)a3;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)__acknowledgeEventWithUUID:(id)a3;
- (void)__beginActivity:(id)a3 requestParameters:(id)a4 reply:(id)a5;
- (void)__receivedEvent:(id)a3;
- (void)__startMonitoringEvent:(id)a3 requestParameters:(id)a4 reply:(id)a5;
- (void)activate;
- (void)allowBrokenBackhaulPersonalHotspotFallbackForNetwork:(id)a3 reply:(id)a4;
- (void)checkinWithRequestParameters:(id)a3 reply:(id)a4;
- (void)clearAllEventHandlers;
- (void)dealloc;
- (void)dumpLogs:(id)a3 reply:(id)a4;
- (void)endActivity:(id)a3 requestParameters:(id)a4;
- (void)endAllActivities:(id)a3;
- (void)forgetCloudNetworkProfile:(id)a3 reply:(id)a4;
- (void)invalidate;
- (void)nearbyConfirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 network:(id)a5 minimumCacheTimestamp:(unint64_t)a6 reply:(id)a7;
- (void)performWiFiNetworkSharingAccessoryScanWithReply:(id)a3;
- (void)presentWiFiNetworkSharingAskToShareProxCardForClientID:(id)a3 accessoryName:(id)a4 reply:(id)a5;
- (void)presentWiFiNetworkSharingAskToShareUserNotificationForClientID:(id)a3 network:(id)a4 accessoryName:(id)a5 reply:(id)a6;
- (void)presentWiFiNetworkSharingAuthorizationProxCardForClientID:(id)a3 accessoryName:(id)a4 reply:(id)a5;
- (void)queryCaptivePortalCredentialsForKnownNetworkProfile:(id)a3 reply:(id)a4;
- (void)queryCloudNetworksAndReply:(id)a3;
- (void)queryNearbyRecommendedNetworksAndReply:(id)a3;
- (void)receivedAcknowledgedXPCEvent:(id)a3 reply:(id)a4;
- (void)receivedXPCEvent:(id)a3;
- (void)rememberCloudNetworkProfile:(id)a3 reply:(id)a4;
- (void)resume;
- (void)setCaptivePortalCredentials:(id)a3 knownNetworkProfile:(id)a4 reply:(id)a5;
- (void)setEventHandler:(id)a3 eventID:(id)a4;
- (void)stopMonitoringAllEvents:(id)a3;
- (void)stopMonitoringEvent:(id)a3 requestParameters:(id)a4;
- (void)suspend;
@end

@implementation CWFXPCClient

- (void)activate
{
  [(CWFXPCProxyConnection *)self->_remoteXPCProxyConnection activate];
  XPCConnection = self->_XPCConnection;

  [(NSXPCConnection *)XPCConnection activate];
}

- (void)resume
{
  [(CWFXPCProxyConnection *)self->_remoteXPCProxyConnection resume];
  XPCConnection = self->_XPCConnection;

  [(NSXPCConnection *)XPCConnection resume];
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  if ([(CWFXPCClient *)obj invalidated])
  {
    objc_sync_exit(obj);
  }

  else
  {
    [(CWFXPCClient *)obj setInvalidated:1];
    objc_sync_exit(obj);

    mutex = obj->_mutex;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0BCB6D4;
    block[3] = &unk_1E86E6010;
    block[4] = obj;
    dispatch_sync(mutex, block);
    [(CWFXPCClient *)obj setQueryNearbyRecommendedNetworksHandler:0];
    [(CWFXPCClient *)obj setRememberCloudNetworkHandler:0];
    [(CWFXPCClient *)obj setForgetCloudNetworkHandler:0];
    [(CWFXPCClient *)obj setQueryCloudNetworksHandler:0];
    [(CWFXPCClient *)obj setDumpLogsHandler:0];
    [(CWFXPCClient *)obj setQueryCaptivePortalCredentialsHandler:0];
    [(CWFXPCClient *)obj setSetCaptivePortalCredentialsHandler:0];
    [(CWFXPCClient *)obj setNearbyConfirmBrokenBackhaulHandler:0];
    [(CWFXPCClient *)obj setAllowBrokenBackhaulPersonalHotspotFallbackHandler:0];
    [(CWFXPCClient *)obj setPresentWiFiNetworkSharingAskToShareProxCardHandler:0];
    [(CWFXPCClient *)obj setPresentWiFiNetworkSharingAuthorizationProxCardHandler:0];
    [(CWFXPCClient *)obj setInterruptionHandler:0];
    [(CWFXPCClient *)obj setPerformWiFiNetworkSharingAccessoryScanHandler:0];
    XPCConnection = obj->_XPCConnection;
    if (XPCConnection)
    {
      [(NSXPCConnection *)XPCConnection invalidate];
    }

    else
    {
      v4 = [(CWFXPCClient *)obj remoteXPCProxyConnection];
      [v4 invalidate];
    }

    v5 = [(CWFXPCClient *)obj targetQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BCB36C;
    v7[3] = &unk_1E86E6010;
    v7[4] = obj;
    dispatch_async(v5, v7);
  }
}

- (void)dealloc
{
  if (![(CWFXPCClient *)self invalidated])
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"'invalidate' must be called before dealloc" userInfo:0];
    objc_exception_throw(v3);
  }

  v4.receiver = self;
  v4.super_class = CWFXPCClient;
  [(CWFXPCClient *)&v4 dealloc];
}

- (CWFXPCClient)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFXPCClient init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (CWFXPCClient)initWithServiceType:(int64_t)a3 endpoint:(id)a4 remoteXPCProxyConnection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v53.receiver = self;
  v53.super_class = CWFXPCClient;
  v10 = [(CWFXPCClient *)&v53 init];
  v11 = v10;
  v12 = 0;
  if ((a3 - 12) < 0xFFFFFFFFFFFFFFF5 || !v10)
  {
    goto LABEL_20;
  }

  v10->_serviceType = a3;
  v13 = MEMORY[0x1E696AEC0];
  v14 = sub_1E0BC1A5C(a3);
  v15 = [v13 stringWithFormat:@"com.apple.corewifi.client-mutex.%@", v14];
  v16 = [v15 UTF8String];
  v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v18 = dispatch_queue_create(v16, v17);
  mutex = v11->_mutex;
  v11->_mutex = v18;

  if (!v11->_mutex)
  {
    goto LABEL_19;
  }

  v20 = MEMORY[0x1E696AEC0];
  v21 = sub_1E0BC1A5C(v11->_serviceType);
  v22 = [v20 stringWithFormat:@"com.apple.corewifi.client-event.%@", v21];
  v23 = [v22 UTF8String];
  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = dispatch_queue_create(v23, v24);
  targetQueue = v11->_targetQueue;
  v11->_targetQueue = v25;

  if (!v11->_targetQueue)
  {
    goto LABEL_19;
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableEventIDMap = v11->_mutableEventIDMap;
  v11->_mutableEventIDMap = v27;

  if (!v11->_mutableEventIDMap)
  {
    goto LABEL_19;
  }

  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableEventCallbackMap = v11->_mutableEventCallbackMap;
  v11->_mutableEventCallbackMap = v29;

  if (!v11->_mutableEventCallbackMap)
  {
    goto LABEL_19;
  }

  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  mutableEventAckMap = v11->_mutableEventAckMap;
  v11->_mutableEventAckMap = v31;

  if (!v11->_mutableEventAckMap || (v33 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableActivityMap = v11->_mutableActivityMap, v11->_mutableActivityMap = v33, mutableActivityMap, !v11->_mutableActivityMap))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (!v9)
  {
    if (v8)
    {
      v38 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v8];
      XPCConnection = v11->_XPCConnection;
      v11->_XPCConnection = v38;

      v12 = 0;
    }

    else
    {
      v12 = sub_1E0BC1A5C(v11->_serviceType);
      if (!v12)
      {
        goto LABEL_20;
      }

      v40 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v12 options:4096];
      v41 = v11->_XPCConnection;
      v11->_XPCConnection = v40;
    }

    if (v11->_XPCConnection)
    {
      v42 = sub_1E0BC16BC(v11->_serviceType, 0);
      if (v42)
      {
        v36 = v42;
        [(NSXPCConnection *)v11->_XPCConnection setRemoteObjectInterface:v42];
        v43 = sub_1E0BC1840(v11->_serviceType);
        [(NSXPCConnection *)v11->_XPCConnection setExportedInterface:v43];

        [(NSXPCConnection *)v11->_XPCConnection setExportedObject:v11];
        v44 = v11;
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = sub_1E0D0D3A0;
        v51[3] = &unk_1E86E6010;
        v45 = v44;
        v52 = v45;
        [(NSXPCConnection *)v11->_XPCConnection setInterruptionHandler:v51];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = sub_1E0D0DAC4;
        v48[3] = &unk_1E86E6420;
        v49 = v45;
        v50 = v49;
        v46 = v11->_XPCConnection;
        remoteXPCProxyConnection = v49;
        [(NSXPCConnection *)v46 setInvalidationHandler:v48];

        v11 = remoteXPCProxyConnection;
        goto LABEL_18;
      }
    }

LABEL_20:
    [(NSXPCConnection *)v11->_XPCConnection invalidate];
    [(CWFXPCClient *)v11 setInvalidated:1];
    v36 = 0;
    remoteXPCProxyConnection = v11;
    v11 = 0;
    goto LABEL_18;
  }

  v35 = v9;
  v36 = 0;
  v12 = 0;
  remoteXPCProxyConnection = v11->_remoteXPCProxyConnection;
  v11->_remoteXPCProxyConnection = v35;
LABEL_18:

  return v11;
}

- (void)suspend
{
  [(CWFXPCProxyConnection *)self->_remoteXPCProxyConnection suspend];
  XPCConnection = self->_XPCConnection;

  [(NSXPCConnection *)XPCConnection suspend];
}

- (void)__beginActivity:(id)a3 requestParameters:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CWFXPCClient *)self allowRequestType:171])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E0D0E06C;
    v20[3] = &unk_1E86E7BB8;
    v11 = v10;
    v21 = v11;
    v12 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:v20];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D0E084;
    v16[3] = &unk_1E86E9468;
    v16[4] = self;
    v17 = v8;
    v18 = v9;
    v19 = v11;
    [v12 beginActivity:v17 requestParams:v18 reply:v16];
  }

  else if (v10)
  {
    v13 = *MEMORY[0x1E696A798];
    v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v15 = CWFErrorWithDescription(v13, 45, v14);
    (*(v10 + 2))(v10, v15);
  }
}

- (BOOL)beginActivity:(id)a3 requestParameters:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1E0BC2DD0;
  v29 = sub_1E0BC6224;
  v30 = 0;
  if ([(CWFXPCClient *)self allowRequestType:171])
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E0D0E418;
    v24[3] = &unk_1E86E8E30;
    v24[4] = &v25;
    v10 = [(CWFXPCClient *)self synchronousRemoteObjectProxyWithErrorHandler:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1E0D0E428;
    v23[3] = &unk_1E86E8E30;
    v23[4] = &v25;
    [v10 beginActivity:v8 requestParams:v9 reply:v23];

    mutex = self->_mutex;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D0E438;
    block[3] = &unk_1E86E6060;
    v20 = v8;
    v21 = self;
    v22 = v9;
    dispatch_sync(mutex, block);

    v12 = v20;
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v12 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v17 = CWFErrorWithDescription(v16, 45, v12);
    v18 = v26[5];
    v26[5] = v17;
  }

  v13 = v26[5];
  if (a5 && v13)
  {
    *a5 = v13;
    v13 = v26[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)endActivity:(id)a3 requestParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CWFXPCClient *)self allowRequestType:172])
  {
    v8 = [(CWFXPCClient *)self synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89CD0];
    v9 = [v6 UUID];
    [v8 endActivityWithUUID:v9 requestParams:v7 reply:&unk_1F5B8C060];

    mutex = self->_mutex;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0D0E5A0;
    v11[3] = &unk_1E86E6420;
    v12 = v6;
    v13 = self;
    dispatch_sync(mutex, v11);
  }
}

- (void)endAllActivities:(id)a3
{
  v4 = a3;
  if ([(CWFXPCClient *)self allowRequestType:172])
  {
    v5 = [(CWFXPCClient *)self synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8C080];
    [v5 endAllActivitiesWithRequestParams:v4 reply:&unk_1F5B8C0A0];

    mutex = self->_mutex;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D0E6C8;
    block[3] = &unk_1E86E6010;
    block[4] = self;
    dispatch_sync(mutex, block);
  }
}

- (void)__startMonitoringEvent:(id)a3 requestParameters:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CWFXPCClient *)self allowRequestType:169])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E0D0E8EC;
    v20[3] = &unk_1E86E7BB8;
    v11 = v10;
    v21 = v11;
    v12 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:v20];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D0E904;
    v16[3] = &unk_1E86E9468;
    v16[4] = self;
    v17 = v8;
    v18 = v9;
    v19 = v11;
    [v12 startMonitoringEvent:v17 requestParams:v18 reply:v16];
  }

  else if (v10)
  {
    v13 = *MEMORY[0x1E696A798];
    v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v15 = CWFErrorWithDescription(v13, 45, v14);
    (*(v10 + 2))(v10, v15);
  }
}

- (BOOL)startMonitoringEvent:(id)a3 requestParameters:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1E0BC2DD0;
  v29 = sub_1E0BC6224;
  v30 = 0;
  if ([(CWFXPCClient *)self allowRequestType:169])
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E0D0EC98;
    v24[3] = &unk_1E86E8E30;
    v24[4] = &v25;
    v10 = [(CWFXPCClient *)self synchronousRemoteObjectProxyWithErrorHandler:v24];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1E0D0ECA8;
    v23[3] = &unk_1E86E8E30;
    v23[4] = &v25;
    [v10 startMonitoringEvent:v8 requestParams:v9 reply:v23];

    mutex = self->_mutex;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D0ECB8;
    block[3] = &unk_1E86E6060;
    v20 = v8;
    v21 = self;
    v22 = v9;
    dispatch_sync(mutex, block);

    v12 = v20;
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v12 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v17 = CWFErrorWithDescription(v16, 45, v12);
    v18 = v26[5];
    v26[5] = v17;
  }

  v13 = v26[5];
  if (a5 && v13)
  {
    *a5 = v13;
    v13 = v26[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)stopMonitoringEvent:(id)a3 requestParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CWFXPCClient *)self allowRequestType:170])
  {
    v8 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:&unk_1F5B8C0C0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0D0EDF0;
    v9[3] = &unk_1E86E6690;
    v9[4] = self;
    v10 = v6;
    [v8 stopMonitoringEvent:v10 requestParams:v7 reply:v9];
  }
}

- (void)stopMonitoringAllEvents:(id)a3
{
  v4 = a3;
  if ([(CWFXPCClient *)self allowRequestType:170])
  {
    v5 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:&unk_1F5B89990];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1E0D0EF9C;
    v6[3] = &unk_1E86E84C0;
    v6[4] = self;
    [v5 stopMonitoringAllEventsWithRequestParams:v4 reply:v6];
  }
}

- (void)setEventHandler:(id)a3 eventID:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutex = self->_mutex;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D0F120;
  block[3] = &unk_1E86E6CA8;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(mutex, block);
}

- (id)eventHandlerWithEventID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0D0F29C;
  v17 = sub_1E0D0F2C8;
  v18 = 0;
  mutex = self->_mutex;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D0F2D0;
  block[3] = &unk_1E86E7BE0;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_sync(mutex, block);
  v7 = MEMORY[0x1E12EA400](v14[5]);

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)clearAllEventHandlers
{
  mutex = self->_mutex;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D0F3AC;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutex, block);
}

- (CWFXPCProxyConnection)localXPCProxyConnection
{
  v3 = [[CWFXPCProxyConnection alloc] initWithForwardingTarget:self];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0D0F498;
  v5[3] = &unk_1E86E6010;
  v5[4] = self;
  [(CWFXPCProxyConnection *)v3 setInvalidationHandler:v5];

  return v3;
}

- (void)checkinWithRequestParameters:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CWFXPCClient *)self allowRequestType:252])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D0F7D4;
    v16[3] = &unk_1E86E7BB8;
    v8 = v7;
    v17 = v8;
    v9 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:v16];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0D0F7EC;
    v13[3] = &unk_1E86E6640;
    v13[4] = self;
    v14 = v6;
    v15 = v8;
    [v9 checkinWithRequestParams:v14 reply:v13];
  }

  else if (v7)
  {
    v10 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v12 = CWFErrorWithDescription(v10, 45, v11);
    (*(v7 + 2))(v7, v12);
  }
}

- (BOOL)checkinWithRequestParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2DD0;
  v24 = sub_1E0BC6224;
  v25 = 0;
  if ([(CWFXPCClient *)self allowRequestType:252])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0D0FB50;
    v19[3] = &unk_1E86E8E30;
    v19[4] = &v20;
    v7 = [(CWFXPCClient *)self synchronousRemoteObjectProxyWithErrorHandler:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0D0FB60;
    v18[3] = &unk_1E86E8E30;
    v18[4] = &v20;
    [v7 checkinWithRequestParams:v6 reply:v18];

    mutex = self->_mutex;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D0FB70;
    v16[3] = &unk_1E86E6420;
    v16[4] = self;
    v17 = v6;
    dispatch_sync(mutex, v16);
  }

  else
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v14 = CWFErrorWithDescription(v12, 45, v13);
    v15 = v21[5];
    v21[5] = v14;
  }

  v9 = v21[5];
  if (a4 && v9)
  {
    *a4 = v9;
    v9 = v21[5];
  }

  v10 = v9 == 0;
  _Block_object_dispose(&v20, 8);

  return v10;
}

- (BOOL)allowRequestType:(int64_t)a3
{
  v5 = sub_1E0BC1AB4([(CWFXPCClient *)self serviceType]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(NSXPCConnection *)v8->_XPCConnection remoteObjectInterface];
    sub_1E0BC1D40(a3, v9);

    objc_sync_exit(v8);
  }

  return v7;
}

- (id)remoteObjectProxy
{
  v3 = [(CWFXPCClient *)self remoteXPCProxyConnection];
  if (v3)
  {
    v4 = [(CWFXPCClient *)self remoteXPCProxyConnection];
    v5 = [v4 remoteObjectProxy];
  }

  else
  {
    v5 = [(NSXPCConnection *)self->_XPCConnection remoteObjectProxy];
  }

  return v5;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCClient *)self remoteXPCProxyConnection];
  if (v5)
  {
    v6 = [(CWFXPCClient *)self remoteXPCProxyConnection];
    v7 = [v6 remoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v7 = [(NSXPCConnection *)self->_XPCConnection remoteObjectProxyWithErrorHandler:v4];
  }

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCClient *)self remoteXPCProxyConnection];
  if (v5)
  {
    v6 = [(CWFXPCClient *)self remoteXPCProxyConnection];
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  else
  {
    v7 = [(NSXPCConnection *)self->_XPCConnection synchronousRemoteObjectProxyWithErrorHandler:v4];
  }

  return v7;
}

- (void)__receivedEvent:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1E0D0F29C;
  v26 = sub_1E0D0F2C8;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  mutex = self->_mutex;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1E0D0FFF4;
  v13 = &unk_1E86E9490;
  v6 = v4;
  v14 = v6;
  v15 = self;
  v16 = &v18;
  v17 = &v22;
  dispatch_sync(mutex, &v10);
  if (*(v19 + 24) == 1)
  {
    v7 = v23[5];
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }

    else
    {
      v8 = [v6 acknowledge];

      if (v8)
      {
        v9 = [v6 acknowledge];
        v9[2]();
      }
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)__acknowledgeEventWithUUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1E0D0F29C;
  v15 = sub_1E0D0F2C8;
  v16 = 0;
  mutex = self->_mutex;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D10330;
  block[3] = &unk_1E86E6960;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  v9 = v6;
  dispatch_sync(mutex, block);
  v7 = v12[5];
  if (v7)
  {
    (*(v7 + 16))();
  }

  _Block_object_dispose(&v11, 8);
}

- (void)receivedXPCEvent:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(CWFEvent);
  v6 = [v4 eventID];
  [(CWFEvent *)v5 setEventID:v6];

  v7 = [v4 timestamp];
  [(CWFEvent *)v5 setTimestamp:v7];

  v8 = [v4 info];

  [(CWFEvent *)v5 setInfo:v8];
  v9 = CWFGetOSLog();
  if (os_signpost_enabled(v9))
  {
    v10 = sub_1E0BC9038([(CWFEvent *)v5 type]);
    *buf = 138412290;
    v17 = v10;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "receivedXPCEvent", "%@", buf, 0xCu);
  }

  v11 = [(CWFXPCClient *)self targetQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0D10570;
  v14[3] = &unk_1E86E6420;
  v14[4] = self;
  v15 = v5;
  v12 = v5;
  dispatch_async(v11, v14);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)receivedAcknowledgedXPCEvent:(id)a3 reply:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CWFEvent);
  v9 = [v7 eventID];
  [(CWFEvent *)v8 setEventID:v9];

  v10 = [v7 timestamp];
  [(CWFEvent *)v8 setTimestamp:v10];

  -[CWFEvent setAcknowledgementTimeout:](v8, "setAcknowledgementTimeout:", [v7 acknowledgementTimeout]);
  v11 = [v7 info];

  [(CWFEvent *)v8 setInfo:v11];
  v12 = CWFGetOSLog();
  if (os_signpost_enabled(v12))
  {
    v13 = sub_1E0BC9038([(CWFEvent *)v8 type]);
    *buf = 138412290;
    v35 = v13;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "receivedAcknowledgedXPCEvent", "%@", buf, 0xCu);
  }

  v14 = [(CWFEvent *)v8 UUID];
  mutex = self->_mutex;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D10910;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v16 = v14;
  v32 = v16;
  v33 = v6;
  v17 = v6;
  dispatch_async(mutex, block);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1E0D10974;
  v29[3] = &unk_1E86E6420;
  v29[4] = self;
  v18 = v16;
  v30 = v18;
  [(CWFEvent *)v8 setAcknowledge:v29];
  v19 = dispatch_time(0, [(CWFEvent *)v8 acknowledgementTimeout]);
  v20 = self->_mutex;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1E0D10980;
  v27[3] = &unk_1E86E6420;
  v27[4] = self;
  v28 = v18;
  v21 = v18;
  dispatch_after(v19, v20, v27);
  v22 = [(CWFXPCClient *)self targetQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1E0D109CC;
  v25[3] = &unk_1E86E6420;
  v25[4] = self;
  v26 = v8;
  v23 = v8;
  dispatch_async(v22, v25);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)rememberCloudNetworkProfile:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D10AE8;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)forgetCloudNetworkProfile:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D10CB4;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)queryCloudNetworksAndReply:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCClient *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D10E5C;
  v7[3] = &unk_1E86E64C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)dumpLogs:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D1102C;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)queryNearbyRecommendedNetworksAndReply:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCClient *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D111D4;
  v7[3] = &unk_1E86E64C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)queryCaptivePortalCredentialsForKnownNetworkProfile:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D113BC;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)setCaptivePortalCredentials:(id)a3 knownNetworkProfile:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CWFXPCClient *)self targetQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0D115CC;
  v15[3] = &unk_1E86E6C30;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)nearbyConfirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 network:(id)a5 minimumCacheTimestamp:(unint64_t)a6 reply:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = [(CWFXPCClient *)self targetQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0D117D4;
  v17[3] = &unk_1E86E6E88;
  v17[4] = self;
  v18 = v12;
  v21 = a4;
  v22 = a6;
  v19 = v13;
  v20 = a3;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, v17);
}

- (void)allowBrokenBackhaulPersonalHotspotFallbackForNetwork:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D119AC;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)presentWiFiNetworkSharingAskToShareProxCardForClientID:(id)a3 accessoryName:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CWFXPCClient *)self targetQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0D11BA4;
  v15[3] = &unk_1E86E6C30;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)presentWiFiNetworkSharingAuthorizationProxCardForClientID:(id)a3 accessoryName:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CWFXPCClient *)self targetQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0D11D28;
  v15[3] = &unk_1E86E6C30;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)presentWiFiNetworkSharingAskToShareUserNotificationForClientID:(id)a3 network:(id)a4 accessoryName:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D11ED0;
  block[3] = &unk_1E86E6EB0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)performWiFiNetworkSharingAccessoryScanWithReply:(id)a3
{
  v4 = a3;
  v5 = [(CWFXPCClient *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D12008;
  v7[3] = &unk_1E86E64C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

@end