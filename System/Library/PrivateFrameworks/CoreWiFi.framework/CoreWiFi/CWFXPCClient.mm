@interface CWFXPCClient
- (BOOL)allowRequestType:(int64_t)type;
- (BOOL)beginActivity:(id)activity requestParameters:(id)parameters error:(id *)error;
- (BOOL)checkinWithRequestParameters:(id)parameters error:(id *)error;
- (BOOL)startMonitoringEvent:(id)event requestParameters:(id)parameters error:(id *)error;
- (CWFXPCClient)init;
- (CWFXPCClient)initWithServiceType:(int64_t)type endpoint:(id)endpoint remoteXPCProxyConnection:(id)connection;
- (CWFXPCProxyConnection)localXPCProxyConnection;
- (id)eventHandlerWithEventID:(id)d;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)__acknowledgeEventWithUUID:(id)d;
- (void)__beginActivity:(id)activity requestParameters:(id)parameters reply:(id)reply;
- (void)__receivedEvent:(id)event;
- (void)__startMonitoringEvent:(id)event requestParameters:(id)parameters reply:(id)reply;
- (void)activate;
- (void)allowBrokenBackhaulPersonalHotspotFallbackForNetwork:(id)network reply:(id)reply;
- (void)checkinWithRequestParameters:(id)parameters reply:(id)reply;
- (void)clearAllEventHandlers;
- (void)dealloc;
- (void)dumpLogs:(id)logs reply:(id)reply;
- (void)endActivity:(id)activity requestParameters:(id)parameters;
- (void)endAllActivities:(id)activities;
- (void)forgetCloudNetworkProfile:(id)profile reply:(id)reply;
- (void)invalidate;
- (void)nearbyConfirmBrokenBackhaulUsingTimeout:(unint64_t)timeout count:(unint64_t)count network:(id)network minimumCacheTimestamp:(unint64_t)timestamp reply:(id)reply;
- (void)performWiFiNetworkSharingAccessoryScanWithReply:(id)reply;
- (void)presentWiFiNetworkSharingAskToShareProxCardForClientID:(id)d accessoryName:(id)name reply:(id)reply;
- (void)presentWiFiNetworkSharingAskToShareUserNotificationForClientID:(id)d network:(id)network accessoryName:(id)name reply:(id)reply;
- (void)presentWiFiNetworkSharingAuthorizationProxCardForClientID:(id)d accessoryName:(id)name reply:(id)reply;
- (void)queryCaptivePortalCredentialsForKnownNetworkProfile:(id)profile reply:(id)reply;
- (void)queryCloudNetworksAndReply:(id)reply;
- (void)queryNearbyRecommendedNetworksAndReply:(id)reply;
- (void)receivedAcknowledgedXPCEvent:(id)event reply:(id)reply;
- (void)receivedXPCEvent:(id)event;
- (void)rememberCloudNetworkProfile:(id)profile reply:(id)reply;
- (void)resume;
- (void)setCaptivePortalCredentials:(id)credentials knownNetworkProfile:(id)profile reply:(id)reply;
- (void)setEventHandler:(id)handler eventID:(id)d;
- (void)stopMonitoringAllEvents:(id)events;
- (void)stopMonitoringEvent:(id)event requestParameters:(id)parameters;
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
      remoteXPCProxyConnection = [(CWFXPCClient *)obj remoteXPCProxyConnection];
      [remoteXPCProxyConnection invalidate];
    }

    targetQueue = [(CWFXPCClient *)obj targetQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0BCB36C;
    v7[3] = &unk_1E86E6010;
    v7[4] = obj;
    dispatch_async(targetQueue, v7);
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

- (CWFXPCClient)initWithServiceType:(int64_t)type endpoint:(id)endpoint remoteXPCProxyConnection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  v53.receiver = self;
  v53.super_class = CWFXPCClient;
  v10 = [(CWFXPCClient *)&v53 init];
  v11 = v10;
  v12 = 0;
  if ((type - 12) < 0xFFFFFFFFFFFFFFF5 || !v10)
  {
    goto LABEL_20;
  }

  v10->_serviceType = type;
  v13 = MEMORY[0x1E696AEC0];
  v14 = sub_1E0BC1A5C(type);
  v15 = [v13 stringWithFormat:@"com.apple.corewifi.client-mutex.%@", v14];
  uTF8String = [v15 UTF8String];
  v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v18 = dispatch_queue_create(uTF8String, v17);
  mutex = v11->_mutex;
  v11->_mutex = v18;

  if (!v11->_mutex)
  {
    goto LABEL_19;
  }

  v20 = MEMORY[0x1E696AEC0];
  v21 = sub_1E0BC1A5C(v11->_serviceType);
  v22 = [v20 stringWithFormat:@"com.apple.corewifi.client-event.%@", v21];
  uTF8String2 = [v22 UTF8String];
  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = dispatch_queue_create(uTF8String2, v24);
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

  if (!connectionCopy)
  {
    if (endpointCopy)
    {
      v38 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
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

  v35 = connectionCopy;
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

- (void)__beginActivity:(id)activity requestParameters:(id)parameters reply:(id)reply
{
  activityCopy = activity;
  parametersCopy = parameters;
  replyCopy = reply;
  if ([(CWFXPCClient *)self allowRequestType:171])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E0D0E06C;
    v20[3] = &unk_1E86E7BB8;
    v11 = replyCopy;
    v21 = v11;
    v12 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:v20];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D0E084;
    v16[3] = &unk_1E86E9468;
    v16[4] = self;
    v17 = activityCopy;
    v18 = parametersCopy;
    v19 = v11;
    [v12 beginActivity:v17 requestParams:v18 reply:v16];
  }

  else if (replyCopy)
  {
    v13 = *MEMORY[0x1E696A798];
    v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v15 = CWFErrorWithDescription(v13, 45, v14);
    (*(replyCopy + 2))(replyCopy, v15);
  }
}

- (BOOL)beginActivity:(id)activity requestParameters:(id)parameters error:(id *)error
{
  activityCopy = activity;
  parametersCopy = parameters;
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
    [v10 beginActivity:activityCopy requestParams:parametersCopy reply:v23];

    mutex = self->_mutex;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D0E438;
    block[3] = &unk_1E86E6060;
    v20 = activityCopy;
    selfCopy = self;
    v22 = parametersCopy;
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
  if (error && v13)
  {
    *error = v13;
    v13 = v26[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)endActivity:(id)activity requestParameters:(id)parameters
{
  activityCopy = activity;
  parametersCopy = parameters;
  if ([(CWFXPCClient *)self allowRequestType:172])
  {
    v8 = [(CWFXPCClient *)self synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B89CD0];
    uUID = [activityCopy UUID];
    [v8 endActivityWithUUID:uUID requestParams:parametersCopy reply:&unk_1F5B8C060];

    mutex = self->_mutex;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0D0E5A0;
    v11[3] = &unk_1E86E6420;
    v12 = activityCopy;
    selfCopy = self;
    dispatch_sync(mutex, v11);
  }
}

- (void)endAllActivities:(id)activities
{
  activitiesCopy = activities;
  if ([(CWFXPCClient *)self allowRequestType:172])
  {
    v5 = [(CWFXPCClient *)self synchronousRemoteObjectProxyWithErrorHandler:&unk_1F5B8C080];
    [v5 endAllActivitiesWithRequestParams:activitiesCopy reply:&unk_1F5B8C0A0];

    mutex = self->_mutex;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D0E6C8;
    block[3] = &unk_1E86E6010;
    block[4] = self;
    dispatch_sync(mutex, block);
  }
}

- (void)__startMonitoringEvent:(id)event requestParameters:(id)parameters reply:(id)reply
{
  eventCopy = event;
  parametersCopy = parameters;
  replyCopy = reply;
  if ([(CWFXPCClient *)self allowRequestType:169])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1E0D0E8EC;
    v20[3] = &unk_1E86E7BB8;
    v11 = replyCopy;
    v21 = v11;
    v12 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:v20];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D0E904;
    v16[3] = &unk_1E86E9468;
    v16[4] = self;
    v17 = eventCopy;
    v18 = parametersCopy;
    v19 = v11;
    [v12 startMonitoringEvent:v17 requestParams:v18 reply:v16];
  }

  else if (replyCopy)
  {
    v13 = *MEMORY[0x1E696A798];
    v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v15 = CWFErrorWithDescription(v13, 45, v14);
    (*(replyCopy + 2))(replyCopy, v15);
  }
}

- (BOOL)startMonitoringEvent:(id)event requestParameters:(id)parameters error:(id *)error
{
  eventCopy = event;
  parametersCopy = parameters;
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
    [v10 startMonitoringEvent:eventCopy requestParams:parametersCopy reply:v23];

    mutex = self->_mutex;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0D0ECB8;
    block[3] = &unk_1E86E6060;
    v20 = eventCopy;
    selfCopy = self;
    v22 = parametersCopy;
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
  if (error && v13)
  {
    *error = v13;
    v13 = v26[5];
  }

  v14 = v13 == 0;
  _Block_object_dispose(&v25, 8);

  return v14;
}

- (void)stopMonitoringEvent:(id)event requestParameters:(id)parameters
{
  eventCopy = event;
  parametersCopy = parameters;
  if ([(CWFXPCClient *)self allowRequestType:170])
  {
    v8 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:&unk_1F5B8C0C0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0D0EDF0;
    v9[3] = &unk_1E86E6690;
    v9[4] = self;
    v10 = eventCopy;
    [v8 stopMonitoringEvent:v10 requestParams:parametersCopy reply:v9];
  }
}

- (void)stopMonitoringAllEvents:(id)events
{
  eventsCopy = events;
  if ([(CWFXPCClient *)self allowRequestType:170])
  {
    v5 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:&unk_1F5B89990];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1E0D0EF9C;
    v6[3] = &unk_1E86E84C0;
    v6[4] = self;
    [v5 stopMonitoringAllEventsWithRequestParams:eventsCopy reply:v6];
  }
}

- (void)setEventHandler:(id)handler eventID:(id)d
{
  handlerCopy = handler;
  dCopy = d;
  mutex = self->_mutex;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D0F120;
  block[3] = &unk_1E86E6CA8;
  v12 = dCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_sync(mutex, block);
}

- (id)eventHandlerWithEventID:(id)d
{
  dCopy = d;
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
  selfCopy = self;
  v12 = &v13;
  v10 = dCopy;
  v6 = dCopy;
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

- (void)checkinWithRequestParameters:(id)parameters reply:(id)reply
{
  parametersCopy = parameters;
  replyCopy = reply;
  if ([(CWFXPCClient *)self allowRequestType:252])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D0F7D4;
    v16[3] = &unk_1E86E7BB8;
    v8 = replyCopy;
    v17 = v8;
    v9 = [(CWFXPCClient *)self remoteObjectProxyWithErrorHandler:v16];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E0D0F7EC;
    v13[3] = &unk_1E86E6640;
    v13[4] = self;
    v14 = parametersCopy;
    v15 = v8;
    [v9 checkinWithRequestParams:v14 reply:v13];
  }

  else if (replyCopy)
  {
    v10 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v12 = CWFErrorWithDescription(v10, 45, v11);
    (*(replyCopy + 2))(replyCopy, v12);
  }
}

- (BOOL)checkinWithRequestParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
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
    [v7 checkinWithRequestParams:parametersCopy reply:v18];

    mutex = self->_mutex;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0D0FB70;
    v16[3] = &unk_1E86E6420;
    v16[4] = self;
    v17 = parametersCopy;
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
  if (error && v9)
  {
    *error = v9;
    v9 = v21[5];
  }

  v10 = v9 == 0;
  _Block_object_dispose(&v20, 8);

  return v10;
}

- (BOOL)allowRequestType:(int64_t)type
{
  v5 = sub_1E0BC1AB4([(CWFXPCClient *)self serviceType]);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    remoteObjectInterface = [(NSXPCConnection *)selfCopy->_XPCConnection remoteObjectInterface];
    sub_1E0BC1D40(type, remoteObjectInterface);

    objc_sync_exit(selfCopy);
  }

  return v7;
}

- (id)remoteObjectProxy
{
  remoteXPCProxyConnection = [(CWFXPCClient *)self remoteXPCProxyConnection];
  if (remoteXPCProxyConnection)
  {
    remoteXPCProxyConnection2 = [(CWFXPCClient *)self remoteXPCProxyConnection];
    remoteObjectProxy = [remoteXPCProxyConnection2 remoteObjectProxy];
  }

  else
  {
    remoteObjectProxy = [(NSXPCConnection *)self->_XPCConnection remoteObjectProxy];
  }

  return remoteObjectProxy;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  remoteXPCProxyConnection = [(CWFXPCClient *)self remoteXPCProxyConnection];
  if (remoteXPCProxyConnection)
  {
    remoteXPCProxyConnection2 = [(CWFXPCClient *)self remoteXPCProxyConnection];
    v7 = [remoteXPCProxyConnection2 remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v7 = [(NSXPCConnection *)self->_XPCConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  remoteXPCProxyConnection = [(CWFXPCClient *)self remoteXPCProxyConnection];
  if (remoteXPCProxyConnection)
  {
    remoteXPCProxyConnection2 = [(CWFXPCClient *)self remoteXPCProxyConnection];
    v7 = [remoteXPCProxyConnection2 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  else
  {
    v7 = [(NSXPCConnection *)self->_XPCConnection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
  }

  return v7;
}

- (void)__receivedEvent:(id)event
{
  eventCopy = event;
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
  v6 = eventCopy;
  v14 = v6;
  selfCopy = self;
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
      acknowledge = [v6 acknowledge];

      if (acknowledge)
      {
        acknowledge2 = [v6 acknowledge];
        acknowledge2[2]();
      }
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)__acknowledgeEventWithUUID:(id)d
{
  dCopy = d;
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
  v6 = dCopy;
  v9 = v6;
  dispatch_sync(mutex, block);
  v7 = v12[5];
  if (v7)
  {
    (*(v7 + 16))();
  }

  _Block_object_dispose(&v11, 8);
}

- (void)receivedXPCEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = objc_alloc_init(CWFEvent);
  eventID = [eventCopy eventID];
  [(CWFEvent *)v5 setEventID:eventID];

  timestamp = [eventCopy timestamp];
  [(CWFEvent *)v5 setTimestamp:timestamp];

  info = [eventCopy info];

  [(CWFEvent *)v5 setInfo:info];
  v9 = CWFGetOSLog();
  if (os_signpost_enabled(v9))
  {
    v10 = sub_1E0BC9038([(CWFEvent *)v5 type]);
    *buf = 138412290;
    v17 = v10;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "receivedXPCEvent", "%@", buf, 0xCu);
  }

  targetQueue = [(CWFXPCClient *)self targetQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0D10570;
  v14[3] = &unk_1E86E6420;
  v14[4] = self;
  v15 = v5;
  v12 = v5;
  dispatch_async(targetQueue, v14);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)receivedAcknowledgedXPCEvent:(id)event reply:(id)reply
{
  v36 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  eventCopy = event;
  v8 = objc_alloc_init(CWFEvent);
  eventID = [eventCopy eventID];
  [(CWFEvent *)v8 setEventID:eventID];

  timestamp = [eventCopy timestamp];
  [(CWFEvent *)v8 setTimestamp:timestamp];

  -[CWFEvent setAcknowledgementTimeout:](v8, "setAcknowledgementTimeout:", [eventCopy acknowledgementTimeout]);
  info = [eventCopy info];

  [(CWFEvent *)v8 setInfo:info];
  v12 = CWFGetOSLog();
  if (os_signpost_enabled(v12))
  {
    v13 = sub_1E0BC9038([(CWFEvent *)v8 type]);
    *buf = 138412290;
    v35 = v13;
    _os_signpost_emit_with_name_impl(&dword_1E0BBF000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "receivedAcknowledgedXPCEvent", "%@", buf, 0xCu);
  }

  uUID = [(CWFEvent *)v8 UUID];
  mutex = self->_mutex;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D10910;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v16 = uUID;
  v32 = v16;
  v33 = replyCopy;
  v17 = replyCopy;
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
  targetQueue = [(CWFXPCClient *)self targetQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1E0D109CC;
  v25[3] = &unk_1E86E6420;
  v25[4] = self;
  v26 = v8;
  v23 = v8;
  dispatch_async(targetQueue, v25);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)rememberCloudNetworkProfile:(id)profile reply:(id)reply
{
  profileCopy = profile;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D10AE8;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = profileCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = profileCopy;
  dispatch_async(targetQueue, block);
}

- (void)forgetCloudNetworkProfile:(id)profile reply:(id)reply
{
  profileCopy = profile;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D10CB4;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = profileCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = profileCopy;
  dispatch_async(targetQueue, block);
}

- (void)queryCloudNetworksAndReply:(id)reply
{
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D10E5C;
  v7[3] = &unk_1E86E64C0;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(targetQueue, v7);
}

- (void)dumpLogs:(id)logs reply:(id)reply
{
  logsCopy = logs;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D1102C;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = logsCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = logsCopy;
  dispatch_async(targetQueue, block);
}

- (void)queryNearbyRecommendedNetworksAndReply:(id)reply
{
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D111D4;
  v7[3] = &unk_1E86E64C0;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(targetQueue, v7);
}

- (void)queryCaptivePortalCredentialsForKnownNetworkProfile:(id)profile reply:(id)reply
{
  profileCopy = profile;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D113BC;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = profileCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = profileCopy;
  dispatch_async(targetQueue, block);
}

- (void)setCaptivePortalCredentials:(id)credentials knownNetworkProfile:(id)profile reply:(id)reply
{
  credentialsCopy = credentials;
  profileCopy = profile;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0D115CC;
  v15[3] = &unk_1E86E6C30;
  v15[4] = self;
  v16 = profileCopy;
  v17 = credentialsCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = credentialsCopy;
  v14 = profileCopy;
  dispatch_async(targetQueue, v15);
}

- (void)nearbyConfirmBrokenBackhaulUsingTimeout:(unint64_t)timeout count:(unint64_t)count network:(id)network minimumCacheTimestamp:(unint64_t)timestamp reply:(id)reply
{
  networkCopy = network;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0D117D4;
  v17[3] = &unk_1E86E6E88;
  v17[4] = self;
  v18 = networkCopy;
  countCopy = count;
  timestampCopy = timestamp;
  v19 = replyCopy;
  timeoutCopy = timeout;
  v15 = replyCopy;
  v16 = networkCopy;
  dispatch_async(targetQueue, v17);
}

- (void)allowBrokenBackhaulPersonalHotspotFallbackForNetwork:(id)network reply:(id)reply
{
  networkCopy = network;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D119AC;
  block[3] = &unk_1E86E6CA8;
  block[4] = self;
  v12 = networkCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = networkCopy;
  dispatch_async(targetQueue, block);
}

- (void)presentWiFiNetworkSharingAskToShareProxCardForClientID:(id)d accessoryName:(id)name reply:(id)reply
{
  dCopy = d;
  nameCopy = name;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0D11BA4;
  v15[3] = &unk_1E86E6C30;
  v15[4] = self;
  v16 = dCopy;
  v17 = nameCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = nameCopy;
  v14 = dCopy;
  dispatch_async(targetQueue, v15);
}

- (void)presentWiFiNetworkSharingAuthorizationProxCardForClientID:(id)d accessoryName:(id)name reply:(id)reply
{
  dCopy = d;
  nameCopy = name;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0D11D28;
  v15[3] = &unk_1E86E6C30;
  v15[4] = self;
  v16 = dCopy;
  v17 = nameCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = nameCopy;
  v14 = dCopy;
  dispatch_async(targetQueue, v15);
}

- (void)presentWiFiNetworkSharingAskToShareUserNotificationForClientID:(id)d network:(id)network accessoryName:(id)name reply:(id)reply
{
  dCopy = d;
  networkCopy = network;
  nameCopy = name;
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D11ED0;
  block[3] = &unk_1E86E6EB0;
  block[4] = self;
  v20 = dCopy;
  v21 = networkCopy;
  v22 = nameCopy;
  v23 = replyCopy;
  v15 = replyCopy;
  v16 = nameCopy;
  v17 = networkCopy;
  v18 = dCopy;
  dispatch_async(targetQueue, block);
}

- (void)performWiFiNetworkSharingAccessoryScanWithReply:(id)reply
{
  replyCopy = reply;
  targetQueue = [(CWFXPCClient *)self targetQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D12008;
  v7[3] = &unk_1E86E64C0;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(targetQueue, v7);
}

@end