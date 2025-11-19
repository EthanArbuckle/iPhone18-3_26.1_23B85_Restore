@interface MRDistantExternalDevice
+ (id)_notificationSerialQueue;
+ (id)clientInterface;
+ (id)serviceInterface;
- (BOOL)isValid;
- (MRAVDistantEndpoint)distantEndpoint;
- (MRDeviceInfo)deviceInfo;
- (MRDistantExternalDevice)initWithExternalDeviceListenerEndpoint:(id)a3 endpoint:(id)a4;
- (MRExternalOutputContextDataSource)externalOutputContext;
- (NSString)debugDescription;
- (NSString)description;
- (NSXPCListenerEndpoint)listenerEndpoint;
- (id)_hostedExternalDeviceConnection;
- (id)_hostedExternalDeviceConnectionWithError:(uint64_t)a1;
- (id)_nullableHostedExternalDeviceConnection;
- (id)_remoteObjectProxyWithErrorHandler:(void *)a1;
- (id)_synchronousObjectProxyWithErrorHandler:(void *)a1;
- (id)customOrigin;
- (id)groupSessionToken;
- (id)lastConnectionError;
- (id)name;
- (id)personalOutputDevices;
- (id)subscribedPlayerPaths;
- (id)supportedMessages;
- (id)uid;
- (uint64_t)deviceNotifications;
- (unint64_t)callbacks;
- (unsigned)connectionState;
- (void)_disconnectWithError:(uint64_t)a1;
- (void)_onSerialQueue_callAllPendingCompletionsWithError:(uint64_t)a1;
- (void)_onSerialQueue_handleConnectionStateDidChange:(void *)a3 withError:;
- (void)_onSerialQueue_prepareToConnectWithOptions:(void *)a3 userInfo:(void *)a4 connectionAttemptDetails:(void *)a5 connectionHandler:;
- (void)_updateHostedDeviceDesiredCallbacks:(uint64_t)a1;
- (void)_updateHostedDeviceDesiredNotifications:(uint64_t)a1;
- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)connectWithOptions:(unsigned int)a3 userInfo:(id)a4 completion:(id)a5;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)disconnect:(id)a3;
- (void)discoveryOutputDevicesChanged:(id)a3 forConfiguration:(id)a4;
- (void)hostedExternalDeviceConnectionStateDidChange:(unsigned int)a3 withError:(id)a4;
- (void)hostedExternalDeviceDeviceInfoDidChange:(id)a3;
- (void)hostedExternalDeviceDidAddOutputDevice:(id)a3;
- (void)hostedExternalDeviceDidChangeOutputDevice:(id)a3;
- (void)hostedExternalDeviceDidReceiveCustomData:(id)a3 withName:(id)a4;
- (void)hostedExternalDeviceDidRemoveOutputDevice:(id)a3;
- (void)hostedExternalDeviceEndpointDidChange:(id)a3;
- (void)hostedExternalDeviceIsMutedDidChange:(BOOL)a3 forOutputDevice:(id)a4;
- (void)hostedExternalDeviceVolumeCapabilitiesDidChange:(unsigned int)a3 forOutputDevice:(id)a4;
- (void)hostedExternalDeviceVolumeDidChange:(float)a3 forOutputDevice:(id)a4;
- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5;
- (void)muteOutputDeviceVolume:(BOOL)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)outputDeviceVolume:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)outputDeviceVolumeControlCapabilities:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5;
- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)sendButtonEvent:(_MRHIDButtonEvent)a3;
- (void)sendCustomData:(id)a3 withName:(id)a4;
- (void)setConnectionState:(uint64_t)a1;
- (void)setConnectionStateCallback:(id)a3 withQueue:(id)a4;
- (void)setConversationDetectionEnabled:(BOOL)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setCustomDataCallback:(id)a3 withQueue:(id)a4;
- (void)setDeviceInfo:(id)a3;
- (void)setDiscoveryMode:(unsigned int)a3 forConfiguration:(id)a4;
- (void)setDistantEndpoint:(id)a3;
- (void)setExternalOutputContext:(id)a3;
- (void)setHostedExternalDeviceConnection:(id)a3;
- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)setSubscribedPlayerPaths:(id)a3;
- (void)setVolumeCallback:(id)a3 withQueue:(id)a4;
- (void)setWantsEndpointChangeNotifications:(BOOL)a3;
- (void)setWantsNowPlayingNotifications:(BOOL)a3;
- (void)setWantsOutputDeviceNotifications:(BOOL)a3;
- (void)setWantsSystemEndpointNotifications:(BOOL)a3;
- (void)setWantsVolumeNotifications:(BOOL)a3;
@end

@implementation MRDistantExternalDevice

- (unsigned)connectionState
{
  os_unfair_lock_lock(&self->_lock);
  onLock_connectionState = self->_onLock_connectionState;
  os_unfair_lock_unlock(&self->_lock);
  return onLock_connectionState;
}

- (NSXPCListenerEndpoint)listenerEndpoint
{
  v2 = [(MRDistantExternalDevice *)self _nullableHostedExternalDeviceConnection];
  v3 = [v2 endpoint];

  return v3;
}

void __48__MRDistantExternalDevice_externalOutputContext__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionState];
  v3 = *(a1 + 32);
  if (v2 == 2 && !v3[16])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MRDistantExternalDevice_externalOutputContext__block_invoke_2;
    v7[3] = &unk_1E769AFC0;
    v7[4] = v3;
    v4 = [(MRDistantExternalDevice *)v3 _synchronousObjectProxyWithErrorHandler:v7];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__MRDistantExternalDevice_externalOutputContext__block_invoke_218;
    v6[3] = &unk_1E769BC08;
    v6[4] = *(a1 + 40);
    [v4 getExternalOutputContextWithCompletion:v6];

    v5 = +[MRDistantExternalDevice _notificationSerialQueue];
    [*(*(*(a1 + 40) + 8) + 40) setNotificationQueue:v5];

    [*(a1 + 32) setExternalOutputContext:*(*(*(a1 + 40) + 8) + 40)];
    v3 = *(a1 + 32);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3[16]);
}

- (id)_nullableHostedExternalDeviceConnection
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = __Block_byref_object_copy__5;
    v8 = __Block_byref_object_dispose__5;
    v9 = 0;
    v1 = *(a1 + 64);
    msv_dispatch_sync_on_queue();
    v2 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)_notificationSerialQueue
{
  objc_opt_self();
  if (_notificationSerialQueue___once != -1)
  {
    +[MRDistantExternalDevice _notificationSerialQueue];
  }

  v0 = _notificationSerialQueue___notificationSerialQueue;

  return v0;
}

- (MRExternalOutputContextDataSource)externalOutputContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRDistantExternalDevice_externalOutputContext__block_invoke;
  v5[3] = &unk_1E769A4C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isValid
{
  v2 = [(MRDistantExternalDevice *)self _hostedExternalDeviceConnection];
  v3 = v2 != 0;

  return v3;
}

- (id)_hostedExternalDeviceConnection
{
  if (a1)
  {
    a1 = [(MRDistantExternalDevice *)a1 _hostedExternalDeviceConnectionWithError:?];
    v1 = vars8;
  }

  return a1;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [(MRDistantExternalDevice *)self distantEndpoint];
  v6 = [v5 debugName];
  v7 = MRExternalDeviceConnectionStateCopyDescription([(MRDistantExternalDevice *)self connectionState]);
  v8 = [v3 stringWithFormat:@"<%@:%p %@ (%@)>", v4, self, v6, v7];

  return v8;
}

- (MRAVDistantEndpoint)distantEndpoint
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_onLock_distantEndpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)customOrigin
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MRDistantExternalDevice_customOrigin__block_invoke;
  v5[3] = &unk_1E769A4C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__MRDistantExternalDevice_customOrigin__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[13];
  if (!v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__MRDistantExternalDevice_customOrigin__block_invoke_2;
    v6[3] = &unk_1E769AFC0;
    v6[4] = v2;
    v4 = [(MRDistantExternalDevice *)v2 _synchronousObjectProxyWithErrorHandler:v6];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__MRDistantExternalDevice_customOrigin__block_invoke_226;
    v5[3] = &unk_1E769BC58;
    v5[4] = *(a1 + 32);
    [v4 getCustomOriginDataWithCompletion:v5];

    v3 = *(*(a1 + 32) + 104);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

+ (id)clientInterface
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15889A8];
  v3 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_hostedExternalDeviceDeviceInfoDidChange_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = [v6 setWithArray:{v7, v12[0]}];
  [v2 setClasses:v8 forSelector:sel_discoveryOutputDevicesChanged_forConfiguration_ argumentIndex:0 ofReply:0];

  v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v9 forSelector:sel_discoveryOutputDevicesChanged_forConfiguration_ argumentIndex:1 ofReply:0];

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

void __37__MRDistantExternalDevice_deviceInfo__block_invoke_2_223(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_ERROR, "[MRDistantExternalDevice] Distant external device %p failed to fetch deviceInfo", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)serviceInterface
{
  v28[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15C3FF0];
  v3 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_getPersonalOutputDevices_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_getExternalOutputContextWithCompletion_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel_getDeviceInfoWithCompletion_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v14 = [v12 setWithArray:v13];
  [v2 setClasses:v14 forSelector:sel_setSubscribedPlayerPaths_ argumentIndex:0 ofReply:0];

  v15 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v15 forSelector:sel_setListeningMode_outputDeviceUID_completion_ argumentIndex:0 ofReply:1];

  v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v16 forSelector:sel_setOutputDeviceVolume_outputDeviceUID_details_completion_ argumentIndex:2 ofReply:0];

  v17 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v17 forSelector:sel_adjustOutputDeviceVolume_outputDeviceUID_details_completion_ argumentIndex:2 ofReply:0];

  v18 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v18 forSelector:sel_muteOutputDeviceVolume_outputDeviceUID_details_completion_ argumentIndex:2 ofReply:0];

  v19 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v19 forSelector:sel_requestGroupSessionWithDetails_completion_ argumentIndex:0 ofReply:0];

  v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v20 forSelector:sel_requestGroupSessionWithDetails_completion_ argumentIndex:0 ofReply:1];

  v21 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v21 forSelector:sel_requestGroupSessionWithDetails_completion_ argumentIndex:1 ofReply:1];

  v22 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v22 forSelector:sel_createHostedEndpointWithOutputDeviceUIDs_details_completion_ argumentIndex:1 ofReply:0];

  v23 = *MEMORY[0x1E69E9840];

  return v2;
}

void __37__MRDistantExternalDevice_deviceInfo__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[19];
  if (!v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__MRDistantExternalDevice_deviceInfo__block_invoke_2;
    v6[3] = &unk_1E769AFC0;
    v6[4] = v2;
    v4 = [(MRDistantExternalDevice *)v2 _synchronousObjectProxyWithErrorHandler:v6];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__MRDistantExternalDevice_deviceInfo__block_invoke_222;
    v5[3] = &unk_1E769BC30;
    v5[4] = *(a1 + 32);
    [v4 getDeviceInfoWithCompletion:v5];

    *(*(a1 + 32) + 88) |= 0x20uLL;
    if ([*(*(a1 + 32) + 152) isCompanion])
    {
      *(*(a1 + 32) + 88) |= 0x10uLL;
    }

    [(MRDistantExternalDevice *)*(a1 + 32) _updateHostedDeviceDesiredNotifications:?];
    v3 = *(*(a1 + 32) + 152);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

void __37__MRDistantExternalDevice_deviceInfo__block_invoke_222(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v5 + 152), a2);
  }

  else
  {
    v6 = *(v5 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__MRDistantExternalDevice_deviceInfo__block_invoke_2_223;
    block[3] = &unk_1E769A228;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

- (MRDeviceInfo)deviceInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__MRDistantExternalDevice_deviceInfo__block_invoke;
  v5[3] = &unk_1E769A4C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRDistantExternalDevice)initWithExternalDeviceListenerEndpoint:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = MRDistantExternalDevice;
  v8 = [(MRExternalDevice *)&v26 _init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mediaremote.%@.serialQueue", objc_opt_class()];
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v12;

    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mediaremote.%@.workerQueue", objc_opt_class()];
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    workerQueue = v8->_workerQueue;
    v8->_workerQueue = v17;

    v19 = [MRAVDistantEndpoint alloc];
    v20 = [v7 descriptor];
    v21 = [(MRAVDistantEndpoint *)v19 initWithDescriptor:v20];
    onLock_distantEndpoint = v8->_onLock_distantEndpoint;
    v8->_onLock_distantEndpoint = v21;

    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_deviceNotifications = 15;
    v8->_onLock_connectionState = 3;
    v8->_connectionOptions = 0;
    v23 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v6];
    [(MRDistantExternalDevice *)v8 setHostedExternalDeviceConnection:v23];

    v24 = +[MRMediaRemoteServiceClient sharedServiceClient];
    [v24 addDistantExternalDevice:v8];
  }

  return v8;
}

- (void)setHostedExternalDeviceConnection:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_initWeak(&location, self);
  if (self->_hostedExternalDeviceConnection)
  {
    v6 = _MRLogForCategory(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    hostedExternalDeviceConnection = self->_hostedExternalDeviceConnection;
    *buf = 138544130;
    v28 = self;
    v29 = 2114;
    v30 = @"HostedExternalDeviceConnection";
    v31 = 2112;
    v32 = hostedExternalDeviceConnection;
    v33 = 2112;
    v34 = v5;
    v8 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
    v9 = v6;
    v10 = 42;
  }

  else
  {
    v6 = _MRLogForCategory(0);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138543874;
    v28 = self;
    v29 = 2114;
    v30 = @"HostedExternalDeviceConnection";
    v31 = 2112;
    v32 = v5;
    v8 = "Set: %{public}@ setting %{public}@ to <%@>";
    v9 = v6;
    v10 = 32;
  }

  _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  if (v5)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __61__MRDistantExternalDevice_setHostedExternalDeviceConnection___block_invoke;
    v24[3] = &unk_1E769B178;
    objc_copyWeak(&v25, &location);
    v11 = MEMORY[0x1A58E3570](v24);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__MRDistantExternalDevice_setHostedExternalDeviceConnection___block_invoke_2;
    v22[3] = &unk_1E769B178;
    objc_copyWeak(&v23, &location);
    v12 = MEMORY[0x1A58E3570](v22);
    objc_storeStrong(&self->_hostedExternalDeviceConnection, a3);
    v13 = [objc_opt_class() serviceInterface];
    [(NSXPCConnection *)self->_hostedExternalDeviceConnection setRemoteObjectInterface:v13];

    v14 = [objc_opt_class() clientInterface];
    [(NSXPCConnection *)self->_hostedExternalDeviceConnection setExportedInterface:v14];

    v15 = [(NSXPCConnection *)self->_hostedExternalDeviceConnection exportedInterface];
    v16 = [v15 protocol];
    v17 = [MRWeakProxy weakProxyWithObject:self protocol:v16];
    [(NSXPCConnection *)self->_hostedExternalDeviceConnection setExportedObject:v17];

    [(NSXPCConnection *)self->_hostedExternalDeviceConnection setInvalidationHandler:v11];
    [(NSXPCConnection *)self->_hostedExternalDeviceConnection setInterruptionHandler:v12];
    [(NSXPCConnection *)self->_hostedExternalDeviceConnection resume];
    deviceNotifications = self->_deviceNotifications;
    if (deviceNotifications)
    {
      [(MRDistantExternalDevice *)self _updateHostedDeviceDesiredNotifications:?];
    }

    callbacks = self->_callbacks;
    if (callbacks)
    {
      [(MRDistantExternalDevice *)self _updateHostedDeviceDesiredCallbacks:?];
    }

    if (self->_subscribedPlayerPaths)
    {
      [(MRDistantExternalDevice *)self setSubscribedPlayerPaths:?];
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
  }

  else
  {
    [(NSXPCConnection *)self->_hostedExternalDeviceConnection invalidate];
    v20 = self->_hostedExternalDeviceConnection;
    self->_hostedExternalDeviceConnection = 0;
  }

  objc_destroyWeak(&location);

  v21 = *MEMORY[0x1E69E9840];
}

void __61__MRDistantExternalDevice_setHostedExternalDeviceConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:1 description:@"xpc invalidation"];
    [(MRDistantExternalDevice *)v3 _disconnectWithError:v2];

    WeakRetained = v3;
  }
}

void __61__MRDistantExternalDevice_setHostedExternalDeviceConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    __61__MRDistantExternalDevice_setHostedExternalDeviceConnection___block_invoke_2_cold_1(WeakRetained);
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:123];
  [(MRDistantExternalDevice *)self _onSerialQueue_callAllPendingCompletionsWithError:v3];
  [(NSXPCConnection *)self->_hostedExternalDeviceConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_hostedExternalDeviceConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_hostedExternalDeviceConnection invalidate];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5 = +[MRMediaRemoteServiceClient sharedServiceClient];
  [v5 removeDistantExternalDevice:self];

  v6.receiver = self;
  v6.super_class = MRDistantExternalDevice;
  [(MRDistantExternalDevice *)&v6 dealloc];
}

- (NSString)debugDescription
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v3 = [(MRDistantExternalDevice *)self distantEndpoint];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MRDistantExternalDevice_debugDescription__block_invoke;
  block[3] = &unk_1E769BBB8;
  v9 = v3;
  v10 = &v11;
  block[4] = self;
  v5 = v3;
  dispatch_sync(serialQueue, block);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __43__MRDistantExternalDevice_debugDescription__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AD60]);
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v6 = *(v5 + 256);
  v7 = [*(a1 + 40) debugName];
  v8 = [v2 initWithFormat:@"<%@:%p {\n hostedExternalDeviceConnection = %@\n endpoint = %@\n", v4, v5, v6, v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  os_unfair_lock_lock((*(a1 + 32) + 72));
  v11 = *(*(*(a1 + 48) + 8) + 40);
  v12 = MRExternalDeviceConnectionStateCopyDescription(*(*(a1 + 32) + 176));
  [v11 appendFormat:@" %@", v12];

  v13 = *(a1 + 32);
  v14 = *(v13 + 168);
  if (v14)
  {
    v15 = *(*(*(a1 + 48) + 8) + 40);
    [v14 timeIntervalSinceNow];
    [v15 appendFormat:@"(%@ %f seconds ago)\n", v14, -v16];
    v13 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v13 + 72));
  v17 = *(a1 + 32);
  if (*(v17 + 192) == 1)
  {
    v18 = *(*(*(a1 + 48) + 8) + 40);
    v19 = *(v17 + 96);
    [v19 timeIntervalSinceNow];
    [v18 appendFormat:@" attemptedToConnect=YES (%@ %lf seconds ago)\n", v19, -v20];
    v17 = *(a1 + 32);
  }

  if (*(v17 + 112) == 1)
  {
    [*(*(*(a1 + 48) + 8) + 40) appendString:@" attemptedToConnectWhileInvalid=YES\n"];
    v17 = *(a1 + 32);
  }

  v21 = *(v17 + 104);
  if (v21)
  {
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@" customOrigin=%@\n", v21];
    v17 = *(a1 + 32);
  }

  v22 = *(v17 + 128);
  if (v22)
  {
    v23 = *(*(*(a1 + 48) + 8) + 40);
    v24 = [v22 description];
    v25 = [v24 mr_formattedDebugDescription];
    [v23 appendFormat:@" externalOutputContext=%@\n", v25];

    v17 = *(a1 + 32);
  }

  if ([*(v17 + 144) count])
  {
    v26 = *(*(*(a1 + 48) + 8) + 40);
    v27 = [*(*(a1 + 32) + 144) mr_formattedDebugDescription];
    [v26 appendFormat:@"  pendingCompletions = %@", v27];
  }

  v28 = *(*(a1 + 32) + 128);
  if (v28)
  {
    v29 = *(*(*(a1 + 48) + 8) + 40);
    v30 = [v28 mr_formattedDebugDescription];
    [v29 appendFormat:@" externalOutputContext debug=%@\n", v30];
  }

  v31 = *(*(*(a1 + 48) + 8) + 40);

  return [v31 appendString:@"}>"];
}

- (void)setDistantEndpoint:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  onLock_distantEndpoint = self->_onLock_distantEndpoint;
  self->_onLock_distantEndpoint = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)name
{
  v2 = [(MRDistantExternalDevice *)self distantEndpoint];
  v3 = [v2 localizedName];

  return v3;
}

- (id)uid
{
  v2 = [(MRDistantExternalDevice *)self deviceInfo];
  v3 = [v2 WHAIdentifier];

  return v3;
}

- (void)setWantsNowPlayingNotifications:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__MRDistantExternalDevice_setWantsNowPlayingNotifications___block_invoke;
  v4[3] = &unk_1E769BBE0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(serialQueue, v4);
}

- (void)setWantsVolumeNotifications:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MRDistantExternalDevice_setWantsVolumeNotifications___block_invoke;
  v4[3] = &unk_1E769BBE0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(serialQueue, v4);
}

- (void)setWantsOutputDeviceNotifications:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__MRDistantExternalDevice_setWantsOutputDeviceNotifications___block_invoke;
  v4[3] = &unk_1E769BBE0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(serialQueue, v4);
}

- (void)setWantsEndpointChangeNotifications:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MRDistantExternalDevice_setWantsEndpointChangeNotifications___block_invoke;
  v4[3] = &unk_1E769BBE0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(serialQueue, v4);
}

- (void)setWantsSystemEndpointNotifications:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MRDistantExternalDevice_setWantsSystemEndpointNotifications___block_invoke;
  v4[3] = &unk_1E769BBE0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(serialQueue, v4);
}

- (id)subscribedPlayerPaths
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRDistantExternalDevice_subscribedPlayerPaths__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__MRDistantExternalDevice_subscribedPlayerPaths__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setSubscribedPlayerPaths:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MRDistantExternalDevice_setSubscribedPlayerPaths___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

void __52__MRDistantExternalDevice_setSubscribedPlayerPaths___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__MRDistantExternalDevice_setSubscribedPlayerPaths___block_invoke_2;
  v8[3] = &unk_1E769A4A0;
  v8[4] = v6;
  v9 = v5;
  dispatch_async(v7, v8);
}

void __52__MRDistantExternalDevice_setSubscribedPlayerPaths___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) remoteObjectProxy];
  [v2 setSubscribedPlayerPaths:*(a1 + 40)];
}

- (void)setExternalOutputContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  externalOutputContext = self->_externalOutputContext;
  if (externalOutputContext != v6)
  {
    if (v6 && externalOutputContext)
    {
      [(MRDistantExternalDevice *)a2 setExternalOutputContext:?];
    }

    objc_storeStrong(&self->_externalOutputContext, a3);
    if (self->_externalOutputContext)
    {
      v8 = MRLogCategoryDiscoveryOversize();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = MSVDeviceOSIsInternalInstall();
        v10 = self->_externalOutputContext;
        if (v9)
        {
          [(MROutputContextDataSource *)v10 debugDescription];
        }

        else
        {
          [(MROutputContextDataSource *)v10 description];
        }
        v11 = ;
        v13 = 138543618;
        v14 = self;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRDistantExternalDevice] Distant external device %{public}@ initialized externalOutputContext: %{public}@", &v13, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __48__MRDistantExternalDevice_externalOutputContext__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__MRDistantExternalDevice_externalOutputContext__block_invoke_3;
    v7[3] = &unk_1E769A4A0;
    v7[4] = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __48__MRDistantExternalDevice_externalOutputContext__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_ERROR, "[MRDistantExternalDevice] Distant external device %{public}@ failed to fetch externalOutputContext: %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)groupSessionToken
{
  v2 = [(MRDistantExternalDevice *)self deviceInfo];
  v3 = [v2 groupSessionToken];

  return v3;
}

- (id)lastConnectionError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__MRDistantExternalDevice_lastConnectionError__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)callbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__MRDistantExternalDevice_callbacks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDeviceInfo:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v6 = self->_deviceInfo;
  objc_storeStrong(&self->_deviceInfo, a3);
  if (![(MRDeviceInfo *)v6 isEqual:v5])
  {
    v7 = objc_opt_new();
    [v7 setObject:v6 forKeyedSubscript:@"MRExternalDevicePreviousDeviceInfoUserInfoKey"];
    [v7 setObject:v5 forKeyedSubscript:@"MRExternalDeviceDeviceInfoUserInfoKey"];
    v8 = +[MRDistantExternalDevice _notificationSerialQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MRDistantExternalDevice_setDeviceInfo___block_invoke;
    v10[3] = &unk_1E769A4A0;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    dispatch_async(v8, v10);
  }
}

void __41__MRDistantExternalDevice_setDeviceInfo___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MRExternalDeviceDeviceInfoDidChangeNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

void __37__MRDistantExternalDevice_deviceInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRDistantExternalDevice_deviceInfo__block_invoke_3;
    v7[3] = &unk_1E769A4A0;
    v7[4] = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __37__MRDistantExternalDevice_deviceInfo__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_ERROR, "[MRDistantExternalDevice] Distant external device %{public}@ failed to fetch deviceInfo: %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)supportedMessages
{
  v3 = [MRSupportedProtocolMessages alloc];
  v4 = [(MRDistantExternalDevice *)self deviceInfo];
  v5 = -[MRSupportedProtocolMessages initWithLastSupportedMessageType:](v3, "initWithLastSupportedMessageType:", [v4 lastSupportedProtocolMessageType]);

  return v5;
}

void __39__MRDistantExternalDevice_customOrigin__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__MRDistantExternalDevice_customOrigin__block_invoke_3;
    v7[3] = &unk_1E769A4A0;
    v7[4] = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __39__MRDistantExternalDevice_customOrigin__block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_ERROR, "[MRDistantExternalDevice] Distant external device %{public}@ failed to fetch custom origin data: %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __39__MRDistantExternalDevice_customOrigin__block_invoke_226(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [[MROrigin alloc] initWithData:v5];
    v9 = *(a1 + 32);
    v10 = *(v9 + 104);
    *(v9 + 104) = v8;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 64);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__MRDistantExternalDevice_customOrigin__block_invoke_2_228;
    v13[3] = &unk_1E769A4A0;
    v13[4] = v11;
    v14 = v6;
    dispatch_async(v12, v13);
  }
}

void __39__MRDistantExternalDevice_customOrigin__block_invoke_2_228(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_ERROR, "[MRDistantExternalDevice] Distant external device %p failed to fetch custom origin data: %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)connectWithOptions:(unsigned int)a3 userInfo:(id)a4 completion:(id)a5
{
  v67 = *MEMORY[0x1E69E9840];
  v50 = a5;
  v8 = MEMORY[0x1E695DF00];
  v9 = a4;
  v49 = [v8 now];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = v11;

  v13 = [v12 objectForKeyedSubscript:@"MRExternalDeviceConnectionCorrelationIDUserInfoKey"];
  if (v13)
  {
    [v12 setObject:v13 forKeyedSubscript:@"MRExternalDeviceConnectionCorrelationIDUserInfoKey"];
  }

  else
  {
    v14 = [MEMORY[0x1E696AFB0] UUID];
    v15 = [v14 UUIDString];
    [v12 setObject:v15 forKeyedSubscript:@"MRExternalDeviceConnectionCorrelationIDUserInfoKey"];
  }

  v16 = [v12 objectForKeyedSubscript:@"MRExternalDeviceConnectionReasonUserInfoKey"];
  v17 = [v12 objectForKeyedSubscript:@"MRExternalDeviceConnectionCorrelationIDUserInfoKey"];
  if (v17)
  {
    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [MRDistantExternalDevice connectWithOptions:a2 userInfo:self completion:?];
    if (v16)
    {
      goto LABEL_12;
    }
  }

  v18 = _MRLogForCategory(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    [MRDistantExternalDevice connectWithOptions:userInfo:completion:];
  }

  v16 = @"unspecified";
  [v12 setObject:@"unspecified" forKeyedSubscript:@"MRExternalDeviceConnectionReasonUserInfoKey"];
LABEL_12:
  v19 = [(MRDistantExternalDevice *)self distantEndpoint];
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = objc_opt_class();
  v22 = [v19 uniqueIdentifier];
  v52 = v19;
  v23 = [v19 designatedGroupLeader];
  v24 = [v23 name];
  v25 = [v20 initWithFormat:@"%@:%p<%@(%@)>", v21, self, v22, v24];

  if (a3)
  {
    v26 = MRExternalDeviceConnectOptionsCopyDescription(a3);
    v27 = [v25 stringByAppendingFormat:@"(%@)", v26];

    v25 = v27;
  }

  v28 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"DistantExternalDevice.connectWithOptions", v17];
  v29 = v28;
  if (v25)
  {
    [v28 appendFormat:@" for %@", v25];
  }

  [v29 appendFormat:@" because %@", v16];
  v30 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v66 = v29;
    _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v31 = qos_class_self();
  v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mediaremote.distantExternalDevice.connect.%@", v17];
  v33 = [v32 UTF8String];
  v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v35 = dispatch_queue_attr_make_with_qos_class(v34, v31, 0);
  v36 = dispatch_queue_create(v33, v35);

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke;
  v58[3] = &unk_1E769BC80;
  v64 = v31;
  v59 = v17;
  v60 = v25;
  v62 = v36;
  v63 = v50;
  v61 = v49;
  v48 = v36;
  v51 = v50;
  v37 = v49;
  v38 = v25;
  v39 = v17;
  v40 = MEMORY[0x1A58E3570](v58);
  v41 = objc_alloc_init(MRExternalDeviceConnectionDetails);
  [(MRExternalDeviceConnectionDetails *)v41 setStartDate:v37];
  [(MRExternalDeviceConnectionDetails *)v41 setRequestID:v39];
  [(MRExternalDeviceConnectionDetails *)v41 setReason:v16];
  [(MRExternalDeviceConnectionDetails *)v41 setQos:v31];
  v42 = [v40 copy];
  [(MRExternalDeviceConnectionDetails *)v41 setCompletion:v42];

  serialQueue = self->_serialQueue;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_2;
  v54[3] = &unk_1E769BCA8;
  v54[4] = self;
  v55 = v41;
  v57 = a3;
  v56 = v12;
  v44 = v12;
  v45 = v41;
  v46 = MRCreateDonatedQosBlock(v54);
  dispatch_async(serialQueue, v46);

  v47 = *MEMORY[0x1E69E9840];
}

void __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"qos: %u->%u", *(a1 + 72), qos_class_self()];
  v5 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543874;
    v31 = @"DistantExternalDevice.connectWithOptions";
    v32 = 2114;
    v33 = v6;
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v3)
  {
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v15)
      {
        goto LABEL_16;
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v31 = @"DistantExternalDevice.connectWithOptions";
      v32 = 2114;
      v33 = v16;
      v34 = 2114;
      v35 = v17;
      v36 = 2048;
      v37 = v18;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v20 = v9;
      v21 = 42;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_16;
      }

      v22 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      v31 = @"DistantExternalDevice.connectWithOptions";
      v32 = 2114;
      v33 = v22;
      v34 = 2048;
      v35 = v23;
      v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v20 = v9;
      v21 = 32;
    }

    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    goto LABEL_15;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544386;
    v31 = @"DistantExternalDevice.connectWithOptions";
    v32 = 2114;
    v33 = v11;
    v34 = 2114;
    v35 = v3;
    v36 = 2114;
    v37 = v12;
    v38 = 2048;
    v39 = v14;
    _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_15:

    goto LABEL_16;
  }

  if (v10)
  {
    __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_cold_1();
  }

LABEL_16:

  v24 = *(a1 + 64);
  if (v24)
  {
    v25 = *(a1 + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_261;
    block[3] = &unk_1E769AB28;
    v29 = v24;
    v28 = v3;
    dispatch_async(v25, block);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 144);
    *(v4 + 144) = v3;

    v2 = *(*(a1 + 32) + 144);
  }

  [v2 addObject:*(a1 + 40)];
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_3;
  v10[3] = &unk_1E769AFC0;
  v10[4] = v9;
  [(MRDistantExternalDevice *)v9 _onSerialQueue_prepareToConnectWithOptions:v6 userInfo:v7 connectionAttemptDetails:v8 connectionHandler:v10];
}

void __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_4;
  v8[3] = &unk_1E769A4A0;
  v8[4] = v4;
  v9 = v3;
  v6 = v3;
  v7 = MRCreateDonatedQosBlock(v8);
  dispatch_async(v5, v7);
}

void __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 64);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_5;
  v5[3] = &unk_1E769A4A0;
  v5[4] = v2;
  v6 = v1;
  v4 = MRCreateDonatedQosBlock(v5);
  dispatch_async(v3, v4);
}

void __122__MRDistantExternalDevice__onSerialQueue_prepareToConnectWithOptions_userInfo_connectionAttemptDetails_connectionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __122__MRDistantExternalDevice__onSerialQueue_prepareToConnectWithOptions_userInfo_connectionAttemptDetails_connectionHandler___block_invoke_2_278(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(a1 + 32);
  v4(v3, a2);
}

- (void)disconnect:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Client called disconnect on shared connection with error %@", buf, 0xCu);
  }

  workerQueue = self->_workerQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__MRDistantExternalDevice_disconnect___block_invoke;
  v9[3] = &unk_1E769A4A0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(workerQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setConnectionStateCallback:(id)a3 withQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRDistantExternalDevice_setConnectionStateCallback_withQueue___block_invoke;
  block[3] = &unk_1E769B250;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

uint64_t __64__MRDistantExternalDevice_setConnectionStateCallback_withQueue___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) connectionStateCallback];
  if (v2)
  {
    v3 = *(a1 + 48);

    if (v3)
    {
      v4 = MRLogCategoryConnections();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_ERROR, "[MRDistantExternalDevice] Overwriting distant external device ConnectionStateCallback for %@", &v8, 0xCu);
      }
    }
  }

  [*(a1 + 32) setConnectionStateCallback:*(a1 + 48)];
  result = [*(a1 + 32) setConnectionStateCallbackQueue:*(a1 + 40)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCustomDataCallback:(id)a3 withQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MRDistantExternalDevice_setCustomDataCallback_withQueue___block_invoke;
  block[3] = &unk_1E769B250;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

- (void)setVolumeCallback:(id)a3 withQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MRDistantExternalDevice_setVolumeCallback_withQueue___block_invoke;
  block[3] = &unk_1E769B250;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(serialQueue, block);
}

uint64_t __55__MRDistantExternalDevice_setVolumeCallback_withQueue___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) volumeCallback];
  if (v2)
  {
    v3 = *(a1 + 48);

    if (v3)
    {
      v4 = MRLogCategoryConnections();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_ERROR, "[MRDistantExternalDevice] Overwriting distant external device VolumeCallback for %@", &v8, 0xCu);
      }
    }
  }

  [*(a1 + 32) setVolumeCallback:*(a1 + 48)];
  result = [*(a1 + 32) setVolumeCallbackQueue:*(a1 + 40)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setDiscoveryMode:(unsigned int)a3 forConfiguration:(id)a4
{
  v6 = a4;
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRDistantExternalDevice_setDiscoveryMode_forConfiguration___block_invoke;
  block[3] = &unk_1E769BCF8;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(workerQueue, block);
}

- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__MRDistantExternalDevice_requestGroupSessionWithDetails_queue_completion___block_invoke;
  v20[3] = &unk_1E769B768;
  v21 = v9;
  v22 = v10;
  v11 = v10;
  v12 = v9;
  v13 = MEMORY[0x1A58E3570](v20);
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MRDistantExternalDevice_requestGroupSessionWithDetails_queue_completion___block_invoke_3;
  block[3] = &unk_1E769B250;
  v18 = v8;
  v19 = v13;
  block[4] = self;
  v15 = v8;
  v16 = v13;
  dispatch_async(workerQueue, block);
}

void __75__MRDistantExternalDevice_requestGroupSessionWithDetails_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MRDistantExternalDevice_requestGroupSessionWithDetails_queue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__MRDistantExternalDevice_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke;
  v20[3] = &unk_1E769BD48;
  v21 = v9;
  v22 = v10;
  v11 = v10;
  v12 = v9;
  v13 = MEMORY[0x1A58E3570](v20);
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MRDistantExternalDevice_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke_3;
  block[3] = &unk_1E769B250;
  v18 = v8;
  v19 = v13;
  block[4] = self;
  v15 = v8;
  v16 = v13;
  dispatch_async(workerQueue, block);
}

void __83__MRDistantExternalDevice_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MRDistantExternalDevice_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke_2;
  block[3] = &unk_1E769BD20;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)outputDeviceVolumeControlCapabilities:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__MRDistantExternalDevice_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke;
  v19[3] = &unk_1E769BD98;
  v11 = v9;
  v20 = v11;
  v12 = v10;
  v21 = v12;
  v13 = MEMORY[0x1A58E3570](v19);
  v14 = [(MRDistantExternalDevice *)self externalOutputContext];
  v15 = v14;
  if (v14)
  {
    v18 = 0;
    v16 = [v14 volumeControlCapabilitiesForOutputDeviceUID:v8 error:&v18];
    v17 = v18;
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121];
    v16 = 0;
  }

  (v13)[2](v13, v16, v17);
}

void __82__MRDistantExternalDevice_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MRDistantExternalDevice_outputDeviceVolumeControlCapabilities_queue_completion___block_invoke_2;
  block[3] = &unk_1E769BD70;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v38 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x1E695DF00] now];
  v16 = [(MRDistantExternalDevice *)self distantEndpoint];
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = objc_opt_class();
  v19 = [v16 uniqueIdentifier];
  v39 = v16;
  v20 = [v16 designatedGroupLeader];
  v21 = [v20 name];
  v22 = [v17 initWithFormat:@"%@:%p<%@(%@)>", v18, self, v19, v21];

  v23 = objc_alloc(MEMORY[0x1E696AD60]);
  v24 = [v12 requestID];
  v25 = [v23 initWithFormat:@"%@<%@>", @"DistantExternalDevice.setOutputDeviceVolume", v24];

  if (v22)
  {
    [v25 appendFormat:@" for %@", v22];
  }

  v26 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v25;
    _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __90__MRDistantExternalDevice_setOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke;
  v45[3] = &unk_1E769BDC0;
  v52 = a3;
  v46 = v22;
  v47 = @"DistantExternalDevice.setOutputDeviceVolume";
  v27 = v12;
  v48 = v27;
  v49 = v15;
  v50 = v13;
  v51 = v14;
  v28 = v14;
  v29 = v13;
  v30 = v15;
  v31 = v22;
  v32 = MEMORY[0x1A58E3570](v45);
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__MRDistantExternalDevice_setOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_2;
  block[3] = &unk_1E769BDE8;
  v44 = a3;
  block[4] = self;
  v41 = v38;
  v42 = v27;
  v43 = v32;
  v34 = v27;
  v35 = v38;
  v36 = v32;
  dispatch_async(workerQueue, block);

  v37 = *MEMORY[0x1E69E9840];
}

void __90__MRDistantExternalDevice_setOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    LODWORD(v4) = *(a1 + 80);
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v4];

    v14 = *(a1 + 32);
    v6 = _MRLogForCategory(0xAuLL);
    v15 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!v13)
    {
      if (v14)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v24 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        v25 = *(a1 + 32);
        v11 = [MEMORY[0x1E695DF00] date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v43 = v24;
        v44 = 2114;
        v45 = v9;
        v46 = 2114;
        v47 = v25;
        v48 = 2048;
        v49 = v26;
        v27 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v28 = v6;
        v29 = 42;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v9 = [*(a1 + 48) requestID];
        v11 = [MEMORY[0x1E695DF00] date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v43 = v33;
        v44 = 2114;
        v45 = v9;
        v46 = 2048;
        v47 = v34;
        v27 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v28 = v6;
        v29 = 32;
      }

      _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      goto LABEL_20;
    }

    if (v14)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      LODWORD(v17) = *(a1 + 80);
      v11 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      v18 = *(a1 + 32);
      v19 = [MEMORY[0x1E695DF00] date];
      [v19 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v43 = v16;
      v44 = 2114;
      v45 = v9;
      v46 = 2112;
      v47 = v11;
      v48 = 2114;
      v49 = v18;
      v50 = 2048;
      v51 = v20;
      v21 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v22 = v6;
      v23 = 52;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v30 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      LODWORD(v31) = *(a1 + 80);
      v11 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      v19 = [MEMORY[0x1E695DF00] date];
      [v19 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v43 = v30;
      v44 = 2114;
      v45 = v9;
      v46 = 2112;
      v47 = v11;
      v48 = 2048;
      v49 = v32;
      v21 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v22 = v6;
      v23 = 42;
    }

    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);

    goto LABEL_20;
  }

  v5 = *(a1 + 32);
  v6 = _MRLogForCategory(0xAuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) requestID];
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v43 = v8;
      v44 = 2114;
      v45 = v9;
      v46 = 2114;
      v47 = v3;
      v48 = 2114;
      v49 = v10;
      v50 = 2048;
      v51 = v12;
      _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v7)
  {
    __90__MRDistantExternalDevice_setOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_cold_1();
  }

LABEL_21:

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __90__MRDistantExternalDevice_setOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_286;
  v39[3] = &unk_1E769AB28;
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  v40 = v3;
  v41 = v36;
  v37 = v3;
  dispatch_async(v35, v39);

  v38 = *MEMORY[0x1E69E9840];
}

- (void)outputDeviceVolume:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__MRDistantExternalDevice_outputDeviceVolume_queue_completion___block_invoke;
  v20[3] = &unk_1E769BE10;
  v11 = v9;
  v21 = v11;
  v12 = v10;
  v22 = v12;
  v13 = MEMORY[0x1A58E3570](v20);
  v14 = [(MRDistantExternalDevice *)self externalOutputContext];
  v15 = v14;
  if (v14)
  {
    v19 = 0;
    [v14 volumeForOutputDeviceUID:v8 error:&v19];
    v17 = v16;
    v18 = v19;
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121];
    v17 = 0.0;
  }

  (v13)[2](v13, v18, v17);
}

void __63__MRDistantExternalDevice_outputDeviceVolume_queue_completion___block_invoke(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MRDistantExternalDevice_outputDeviceVolume_queue_completion___block_invoke_2;
  block[3] = &unk_1E769BD70;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a3;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v38 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [MEMORY[0x1E695DF00] now];
  v15 = [(MRDistantExternalDevice *)self distantEndpoint];
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = objc_opt_class();
  v18 = [v15 uniqueIdentifier];
  v39 = v15;
  v19 = [v15 designatedGroupLeader];
  v20 = [v19 name];
  v21 = [v16 initWithFormat:@"%@:%p<%@(%@)>", v17, self, v18, v20];

  v22 = objc_alloc(MEMORY[0x1E696AD60]);
  v23 = [v11 requestID];
  v24 = [v22 initWithFormat:@"%@<%@>", @"DistantExternalDevice.adjustOutputDeviceVolume", v23];

  if (v21)
  {
    [v24 appendFormat:@" for %@", v21];
  }

  v25 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v24;
    _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __93__MRDistantExternalDevice_adjustOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke;
  v45[3] = &unk_1E769BE38;
  v52 = a3;
  v46 = v21;
  v47 = @"DistantExternalDevice.adjustOutputDeviceVolume";
  v26 = v11;
  v48 = v26;
  v49 = v14;
  v50 = v12;
  v51 = v13;
  v27 = v13;
  v28 = v12;
  v29 = v14;
  v30 = v21;
  v31 = MEMORY[0x1A58E3570](v45);
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__MRDistantExternalDevice_adjustOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_2;
  block[3] = &unk_1E769BE60;
  v43 = v31;
  v44 = a3;
  block[4] = self;
  v41 = v38;
  v42 = v26;
  v33 = v26;
  v34 = v38;
  v35 = v31;
  dispatch_async(workerQueue, block);

  v36 = *MEMORY[0x1E69E9840];
}

void __93__MRDistantExternalDevice_adjustOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v12 = MRMediaRemoteVolumeControlAdjustmentDescription(*(a1 + 80));

    v13 = *(a1 + 32);
    v5 = _MRLogForCategory(0xAuLL);
    v14 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v12)
    {
      if (v13)
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v24 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v25 = *(a1 + 32);
        v10 = [MEMORY[0x1E695DF00] date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v42 = v24;
        v43 = 2114;
        v44 = v8;
        v45 = 2114;
        v46 = v25;
        v47 = 2048;
        v48 = v26;
        v27 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v28 = v5;
        v29 = 42;
      }

      else
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v32 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v10 = [MEMORY[0x1E695DF00] date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v42 = v32;
        v43 = 2114;
        v44 = v8;
        v45 = 2048;
        v46 = v33;
        v27 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v28 = v5;
        v29 = 32;
      }

      _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      goto LABEL_20;
    }

    if (v13)
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 40);
      v16 = [*(a1 + 48) requestID];
      v17 = MRMediaRemoteVolumeControlAdjustmentDescription(*(a1 + 80));
      v18 = *(a1 + 32);
      v19 = [MEMORY[0x1E695DF00] date];
      [v19 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v42 = v15;
      v43 = 2114;
      v44 = v16;
      v45 = 2112;
      v46 = v17;
      v47 = 2114;
      v48 = v18;
      v49 = 2048;
      v50 = v20;
      v21 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v22 = v5;
      v23 = 52;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v30 = *(a1 + 40);
      v16 = [*(a1 + 48) requestID];
      v17 = MRMediaRemoteVolumeControlAdjustmentDescription(*(a1 + 80));
      v19 = [MEMORY[0x1E695DF00] date];
      [v19 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v42 = v30;
      v43 = 2114;
      v44 = v16;
      v45 = 2112;
      v46 = v17;
      v47 = 2048;
      v48 = v31;
      v21 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v22 = v5;
      v23 = 42;
    }

    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);

    goto LABEL_21;
  }

  v4 = *(a1 + 32);
  v5 = _MRLogForCategory(0xAuLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v42 = v7;
      v43 = 2114;
      v44 = v8;
      v45 = 2114;
      v46 = v3;
      v47 = 2114;
      v48 = v9;
      v49 = 2048;
      v50 = v11;
      _os_log_error_impl(&dword_1A2860000, v5, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v6)
  {
    __90__MRDistantExternalDevice_setOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_cold_1();
  }

LABEL_21:

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __93__MRDistantExternalDevice_adjustOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_291;
  v38[3] = &unk_1E769AB28;
  v34 = *(a1 + 64);
  v35 = *(a1 + 72);
  v39 = v3;
  v40 = v35;
  v36 = v3;
  dispatch_async(v34, v38);

  v37 = *MEMORY[0x1E69E9840];
}

- (void)muteOutputDeviceVolume:(BOOL)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v55 = *MEMORY[0x1E69E9840];
  v38 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [MEMORY[0x1E695DF00] now];
  v15 = [(MRDistantExternalDevice *)self distantEndpoint];
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = objc_opt_class();
  v18 = [v15 uniqueIdentifier];
  v39 = v15;
  v19 = [v15 designatedGroupLeader];
  v20 = [v19 name];
  v21 = [v16 initWithFormat:@"%@:%p<%@(%@)>", v17, self, v18, v20];

  v22 = objc_alloc(MEMORY[0x1E696AD60]);
  v23 = [v11 requestID];
  v24 = [v22 initWithFormat:@"%@<%@>", @"DistantExternalDevice.muteOutputDeviceVolume", v23];

  if (v21)
  {
    [v24 appendFormat:@" for %@", v21];
  }

  v25 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v24;
    _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __91__MRDistantExternalDevice_muteOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke;
  v45[3] = &unk_1E769BE88;
  v52 = a3;
  v46 = v21;
  v47 = @"DistantExternalDevice.muteOutputDeviceVolume";
  v26 = v11;
  v48 = v26;
  v49 = v14;
  v50 = v12;
  v51 = v13;
  v27 = v13;
  v28 = v12;
  v29 = v14;
  v30 = v21;
  v31 = MEMORY[0x1A58E3570](v45);
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__MRDistantExternalDevice_muteOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_2;
  block[3] = &unk_1E769BEB0;
  v44 = a3;
  block[4] = self;
  v41 = v38;
  v42 = v26;
  v43 = v31;
  v33 = v26;
  v34 = v38;
  v35 = v31;
  dispatch_async(workerQueue, block);

  v36 = *MEMORY[0x1E69E9840];
}

void __91__MRDistantExternalDevice_muteOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 80)];

    v13 = *(a1 + 32);
    v5 = _MRLogForCategory(0xAuLL);
    v14 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (!v12)
    {
      if (v13)
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v22 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v23 = *(a1 + 32);
        v10 = [MEMORY[0x1E695DF00] date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v40 = v22;
        v41 = 2114;
        v42 = v8;
        v43 = 2114;
        v44 = v23;
        v45 = 2048;
        v46 = v24;
        v25 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v26 = v5;
        v27 = 42;
      }

      else
      {
        if (!v14)
        {
          goto LABEL_21;
        }

        v30 = *(a1 + 40);
        v8 = [*(a1 + 48) requestID];
        v10 = [MEMORY[0x1E695DF00] date];
        [v10 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v40 = v30;
        v41 = 2114;
        v42 = v8;
        v43 = 2048;
        v44 = v31;
        v25 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v26 = v5;
        v27 = 32;
      }

      _os_log_impl(&dword_1A2860000, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
      goto LABEL_20;
    }

    if (v13)
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 80)];
      v16 = *(a1 + 32);
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v40 = v15;
      v41 = 2114;
      v42 = v8;
      v43 = 2112;
      v44 = v10;
      v45 = 2114;
      v46 = v16;
      v47 = 2048;
      v48 = v18;
      v19 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v20 = v5;
      v21 = 52;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_21;
      }

      v28 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 80)];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v40 = v28;
      v41 = 2114;
      v42 = v8;
      v43 = 2112;
      v44 = v10;
      v45 = 2048;
      v46 = v29;
      v19 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v20 = v5;
      v21 = 42;
    }

    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);

    goto LABEL_20;
  }

  v4 = *(a1 + 32);
  v5 = _MRLogForCategory(0xAuLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) requestID];
      v9 = *(a1 + 32);
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v40 = v7;
      v41 = 2114;
      v42 = v8;
      v43 = 2114;
      v44 = v3;
      v45 = 2114;
      v46 = v9;
      v47 = 2048;
      v48 = v11;
      _os_log_error_impl(&dword_1A2860000, v5, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v6)
  {
    __90__MRDistantExternalDevice_setOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_cold_1();
  }

LABEL_21:

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __91__MRDistantExternalDevice_muteOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_295;
  v36[3] = &unk_1E769AB28;
  v32 = *(a1 + 64);
  v33 = *(a1 + 72);
  v37 = v3;
  v38 = v33;
  v34 = v3;
  dispatch_async(v32, v36);

  v35 = *MEMORY[0x1E69E9840];
}

- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__MRDistantExternalDevice_setListeningMode_outputDeviceUID_queue_completion___block_invoke;
  v25[3] = &unk_1E769BCD0;
  v26 = v12;
  v27 = v13;
  v14 = v13;
  v15 = v12;
  v16 = MEMORY[0x1A58E3570](v25);
  workerQueue = self->_workerQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__MRDistantExternalDevice_setListeningMode_outputDeviceUID_queue_completion___block_invoke_3;
  v21[3] = &unk_1E769BED8;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v16;
  v18 = v11;
  v19 = v10;
  v20 = v16;
  dispatch_async(workerQueue, v21);
}

void __77__MRDistantExternalDevice_setListeningMode_outputDeviceUID_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__MRDistantExternalDevice_setListeningMode_outputDeviceUID_queue_completion___block_invoke_2;
  v7[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)setConversationDetectionEnabled:(BOOL)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__MRDistantExternalDevice_setConversationDetectionEnabled_outputDeviceUID_queue_completion___block_invoke;
  v23[3] = &unk_1E769BCD0;
  v24 = v11;
  v25 = v12;
  v13 = v12;
  v14 = v11;
  v15 = MEMORY[0x1A58E3570](v23);
  workerQueue = self->_workerQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__MRDistantExternalDevice_setConversationDetectionEnabled_outputDeviceUID_queue_completion___block_invoke_3;
  v19[3] = &unk_1E769BF00;
  v20 = v10;
  v21 = v15;
  v22 = a3;
  v19[4] = self;
  v17 = v10;
  v18 = v15;
  dispatch_async(workerQueue, v19);
}

void __92__MRDistantExternalDevice_setConversationDetectionEnabled_outputDeviceUID_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__MRDistantExternalDevice_setConversationDetectionEnabled_outputDeviceUID_queue_completion___block_invoke_2;
  v7[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__MRDistantExternalDevice_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke;
  v20[3] = &unk_1E769BCD0;
  v21 = v9;
  v22 = v10;
  v11 = v10;
  v12 = v9;
  v13 = MEMORY[0x1A58E3570](v20);
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MRDistantExternalDevice_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_3;
  block[3] = &unk_1E769B250;
  v18 = v8;
  v19 = v13;
  block[4] = self;
  v15 = v8;
  v16 = v13;
  dispatch_async(workerQueue, block);
}

void __79__MRDistantExternalDevice_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__MRDistantExternalDevice_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_2;
  v7[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93__MRDistantExternalDevice_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke;
  v25[3] = &unk_1E769B768;
  v26 = v12;
  v27 = v13;
  v14 = v13;
  v15 = v12;
  v16 = MEMORY[0x1A58E3570](v25);
  workerQueue = self->_workerQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__MRDistantExternalDevice_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_3;
  v21[3] = &unk_1E769BED8;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v16;
  v18 = v11;
  v19 = v10;
  v20 = v16;
  dispatch_async(workerQueue, v21);
}

void __93__MRDistantExternalDevice_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__MRDistantExternalDevice_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_2;
  block[3] = &unk_1E769AC18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__MRDistantExternalDevice_ping_callback_withQueue___block_invoke;
  v18[3] = &unk_1E769BCD0;
  v19 = v9;
  v20 = v8;
  v10 = v8;
  v11 = v9;
  v12 = MEMORY[0x1A58E3570](v18);
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRDistantExternalDevice_ping_callback_withQueue___block_invoke_3;
  block[3] = &unk_1E769BF28;
  block[4] = self;
  v16 = v12;
  v17 = a3;
  v14 = v12;
  dispatch_async(workerQueue, block);
}

void __51__MRDistantExternalDevice_ping_callback_withQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MRDistantExternalDevice_ping_callback_withQueue___block_invoke_2;
  v7[3] = &unk_1E769AB28;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)sendButtonEvent:(_MRHIDButtonEvent)a3
{
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MRDistantExternalDevice_sendButtonEvent___block_invoke;
  block[3] = &unk_1E769BF50;
  block[4] = self;
  v5 = a3;
  dispatch_async(workerQueue, block);
}

- (id)personalOutputDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__MRDistantExternalDevice_personalOutputDevices__block_invoke;
  v6[3] = &unk_1E769AFC0;
  v6[4] = self;
  v2 = [(MRDistantExternalDevice *)self _synchronousObjectProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRDistantExternalDevice_personalOutputDevices__block_invoke_296;
  v5[3] = &unk_1E769BF78;
  v5[4] = &v7;
  [v2 getPersonalOutputDevices:v5];

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __48__MRDistantExternalDevice_personalOutputDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MRDistantExternalDevice_personalOutputDevices__block_invoke_2;
  v7[3] = &unk_1E769A4A0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __48__MRDistantExternalDevice_personalOutputDevices__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_ERROR, "[MRDistantExternalDevice] Distant external device %{public}@ failed to fetch personalOutputDevices: %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = a5;
  v8 = [[v6 alloc] initWithMRError:3];
  (*(a5 + 2))(v7, v8);
}

- (void)hostedExternalDeviceConnectionStateDidChange:(unsigned int)a3 withError:(id)a4
{
  v6 = a4;
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MRDistantExternalDevice_hostedExternalDeviceConnectionStateDidChange_withError___block_invoke;
  block[3] = &unk_1E769BCF8;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(workerQueue, block);
}

void __82__MRDistantExternalDevice_hostedExternalDeviceConnectionStateDidChange_withError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__MRDistantExternalDevice_hostedExternalDeviceConnectionStateDidChange_withError___block_invoke_2;
  block[3] = &unk_1E769BCF8;
  block[4] = v1;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)hostedExternalDeviceDeviceInfoDidChange:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MRDistantExternalDevice_hostedExternalDeviceDeviceInfoDidChange___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, v7);
}

void __67__MRDistantExternalDevice_hostedExternalDeviceDeviceInfoDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %{public}@ deviceInfo did change to %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 64);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__MRDistantExternalDevice_hostedExternalDeviceDeviceInfoDidChange___block_invoke_298;
  v9[3] = &unk_1E769A4A0;
  v9[4] = v6;
  v10 = v5;
  dispatch_async(v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)hostedExternalDeviceDidReceiveCustomData:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MRDistantExternalDevice_hostedExternalDeviceDidReceiveCustomData_withName___block_invoke;
  block[3] = &unk_1E769BA00;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workerQueue, block);
}

void __77__MRDistantExternalDevice_hostedExternalDeviceDidReceiveCustomData_withName___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) length];
    v5 = *(a1 + 48);
    *buf = 138543874;
    v13 = v3;
    v14 = 2048;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %{public}@ did receive %llu bytes of custom data for name %{public}@", buf, 0x20u);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MRDistantExternalDevice_hostedExternalDeviceDidReceiveCustomData_withName___block_invoke_299;
  block[3] = &unk_1E769BA00;
  block[4] = v6;
  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  dispatch_async(v7, block);

  v8 = *MEMORY[0x1E69E9840];
}

void __77__MRDistantExternalDevice_hostedExternalDeviceDidReceiveCustomData_withName___block_invoke_299(id *a1)
{
  v2 = [a1[4] customDataCallbackQueue];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6 = [a1[4] customDataCallback];
  v7 = [v6 copy];

  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__MRDistantExternalDevice_hostedExternalDeviceDidReceiveCustomData_withName___block_invoke_2;
    block[3] = &unk_1E769AC18;
    v11 = v7;
    v9 = a1[5];
    v10 = a1[6];
    dispatch_async(v4, block);
  }
}

- (void)hostedExternalDeviceEndpointDidChange:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MRDistantExternalDevice_hostedExternalDeviceEndpointDidChange___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, v7);
}

void __65__MRDistantExternalDevice_hostedExternalDeviceEndpointDidChange___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %p endpoint did change to %{public}@", buf, 0x16u);
  }

  [*(a1 + 40) setDistantExternalDevice:*(a1 + 32)];
  v5 = [MRAVDistantEndpoint alloc];
  v6 = [*(a1 + 40) descriptor];
  v7 = [(MRAVDistantEndpoint *)v5 initWithDescriptor:v6];
  [*(a1 + 32) setDistantEndpoint:v7];

  v8 = +[MRDistantExternalDevice _notificationSerialQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__MRDistantExternalDevice_hostedExternalDeviceEndpointDidChange___block_invoke_300;
  v11[3] = &unk_1E769A4A0;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v9;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __65__MRDistantExternalDevice_hostedExternalDeviceEndpointDidChange___block_invoke_300(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = @"kMRExternalDeviceEndpointUserInfoKeyEndpoint";
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:@"kMRExternalDeviceEndpointDidChangeNotification" object:v4 userInfo:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)hostedExternalDeviceVolumeCapabilitiesDidChange:(unsigned int)a3 forOutputDevice:(id)a4
{
  v6 = a4;
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__MRDistantExternalDevice_hostedExternalDeviceVolumeCapabilitiesDidChange_forOutputDevice___block_invoke;
  block[3] = &unk_1E769BCF8;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(workerQueue, block);
}

void __91__MRDistantExternalDevice_hostedExternalDeviceVolumeCapabilitiesDidChange_forOutputDevice___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(a1 + 48));
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 distantEndpoint];
    v8 = *(a1 + 40);

    *buf = 134218754;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    v19 = 2114;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %p volume capabilities did change to %{public}@ for endpoint %{public}@ for output device %{public}@", buf, 0x2Au);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__MRDistantExternalDevice_hostedExternalDeviceVolumeCapabilitiesDidChange_forOutputDevice___block_invoke_302;
  block[3] = &unk_1E769BCF8;
  block[4] = v9;
  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  dispatch_async(v10, block);

  v11 = *MEMORY[0x1E69E9840];
}

void __91__MRDistantExternalDevice_hostedExternalDeviceVolumeCapabilitiesDidChange_forOutputDevice___block_invoke_302(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) uid];
  [v1 updateVolumeControlCapabilities:v2 outputDeviceUID:v3];
}

- (void)hostedExternalDeviceVolumeDidChange:(float)a3 forOutputDevice:(id)a4
{
  v6 = a4;
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MRDistantExternalDevice_hostedExternalDeviceVolumeDidChange_forOutputDevice___block_invoke;
  block[3] = &unk_1E769BCF8;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(workerQueue, block);
}

void __79__MRDistantExternalDevice_hostedExternalDeviceVolumeDidChange_forOutputDevice___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = [v3 distantEndpoint];
    v6 = *(a1 + 40);
    *buf = 134218754;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %p volume did change to %f for endpoint %{public}@ for output device  %{public}@", buf, 0x2Au);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MRDistantExternalDevice_hostedExternalDeviceVolumeDidChange_forOutputDevice___block_invoke_303;
  block[3] = &unk_1E769BCF8;
  block[4] = v8;
  v13 = *(a1 + 48);
  v12 = v7;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __79__MRDistantExternalDevice_hostedExternalDeviceVolumeDidChange_forOutputDevice___block_invoke_303(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) uid];
  LODWORD(v5) = v3;
  [v2 updateVolume:v4 outputDeviceUID:v5];

  v6 = [*(a1 + 32) volumeCallbackQueue];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  v10 = [*(a1 + 32) volumeCallback];
  v11 = [v10 copy];

  if (v11)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__MRDistantExternalDevice_hostedExternalDeviceVolumeDidChange_forOutputDevice___block_invoke_2;
    v15[3] = &unk_1E769BFA0;
    v12 = v11;
    v18 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v17 = v12;
    v15[4] = v13;
    v16 = v14;
    dispatch_async(v8, v15);
  }
}

void __79__MRDistantExternalDevice_hostedExternalDeviceVolumeDidChange_forOutputDevice___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v6 = [*(a1 + 32) distantEndpoint];
  v4 = [v6 uniqueIdentifier];
  v5 = [*(a1 + 40) uid];
  (*(v2 + 16))(v2, v4, v5, v3);
}

- (void)hostedExternalDeviceIsMutedDidChange:(BOOL)a3 forOutputDevice:(id)a4
{
  v6 = a4;
  workerQueue = self->_workerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MRDistantExternalDevice_hostedExternalDeviceIsMutedDidChange_forOutputDevice___block_invoke;
  block[3] = &unk_1E769BFC8;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(workerQueue, block);
}

void __80__MRDistantExternalDevice_hostedExternalDeviceIsMutedDidChange_forOutputDevice___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = [v3 distantEndpoint];
    v6 = *(a1 + 40);
    *buf = 134218754;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %p volume isMuted did change to %{BOOL}u for endpoint %{public}@ for output device %{public}@", buf, 0x26u);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__MRDistantExternalDevice_hostedExternalDeviceIsMutedDidChange_forOutputDevice___block_invoke_304;
  block[3] = &unk_1E769BFC8;
  block[4] = v7;
  v12 = *(a1 + 48);
  v11 = *(a1 + 40);
  dispatch_async(v8, block);

  v9 = *MEMORY[0x1E69E9840];
}

void __80__MRDistantExternalDevice_hostedExternalDeviceIsMutedDidChange_forOutputDevice___block_invoke_304(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) uid];
  [v1 updateVolumeMuted:v2 outputDeviceUID:v3];
}

- (void)hostedExternalDeviceDidAddOutputDevice:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MRDistantExternalDevice_hostedExternalDeviceDidAddOutputDevice___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, v7);
}

void __66__MRDistantExternalDevice_hostedExternalDeviceDidAddOutputDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v3 distantEndpoint];
    *buf = 134218498;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %p did add outputDevice %{public}@ for endpoint %{public}@", buf, 0x20u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__MRDistantExternalDevice_hostedExternalDeviceDidAddOutputDevice___block_invoke_305;
  v10[3] = &unk_1E769A4A0;
  v10[4] = v7;
  v11 = v6;
  dispatch_async(v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __66__MRDistantExternalDevice_hostedExternalDeviceDidAddOutputDevice___block_invoke_305(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 128);
  v4[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 updateOutputDevices:v2];

  v3 = *MEMORY[0x1E69E9840];
}

- (void)hostedExternalDeviceDidChangeOutputDevice:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MRDistantExternalDevice_hostedExternalDeviceDidChangeOutputDevice___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, v7);
}

void __69__MRDistantExternalDevice_hostedExternalDeviceDidChangeOutputDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v3 distantEndpoint];
    *buf = 134218498;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %p did change outputDevice %{public}@ for endpoint %{public}@", buf, 0x20u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__MRDistantExternalDevice_hostedExternalDeviceDidChangeOutputDevice___block_invoke_306;
  v10[3] = &unk_1E769A4A0;
  v10[4] = v7;
  v11 = v6;
  dispatch_async(v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __69__MRDistantExternalDevice_hostedExternalDeviceDidChangeOutputDevice___block_invoke_306(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 128);
  v4[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 updateOutputDevices:v2];

  v3 = *MEMORY[0x1E69E9840];
}

- (void)hostedExternalDeviceDidRemoveOutputDevice:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__MRDistantExternalDevice_hostedExternalDeviceDidRemoveOutputDevice___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, v7);
}

void __69__MRDistantExternalDevice_hostedExternalDeviceDidRemoveOutputDevice___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MRLogCategoryConnections();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) uid];
    v5 = [*(a1 + 32) distantEndpoint];
    *buf = 134218498;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %p did remove outputDevice %{public}@ for endpoint %{public}@", buf, 0x20u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__MRDistantExternalDevice_hostedExternalDeviceDidRemoveOutputDevice___block_invoke_307;
  v10[3] = &unk_1E769A4A0;
  v10[4] = v7;
  v11 = v6;
  dispatch_async(v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __69__MRDistantExternalDevice_hostedExternalDeviceDidRemoveOutputDevice___block_invoke_307(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 128);
  v2 = [*(a1 + 40) uid];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v1 removeOutputDevices:v3];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)discoveryOutputDevicesChanged:(id)a3 forConfiguration:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = MRLogCategoryConnections();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(MRDistantExternalDevice *)self distantEndpoint];
    v11 = 134218498;
    v12 = self;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEBUG, "[MRDistantExternalDevice] Hosted external device connection for distant device %p discoveryOutputDevicesChanged for configuration %{public}@ for endpoint %{public}@", &v11, 0x20u);
  }

  [(MRExternalDevice *)self notifyDiscoveryOutputDevicesChanged:v7 forConfiguration:v6];
  v10 = *MEMORY[0x1E69E9840];
}

void __51__MRDistantExternalDevice__notificationSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRDistantExternalDevice.NotificationQueue", v2);
  v1 = _notificationSerialQueue___notificationSerialQueue;
  _notificationSerialQueue___notificationSerialQueue = v0;
}

- (id)_hostedExternalDeviceConnectionWithError:(uint64_t)a1
{
  if (a1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__5;
    v16 = __Block_byref_object_dispose__5;
    v17 = 0;
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__5;
    v3 = *(a1 + 64);
    v10 = __Block_byref_object_dispose__5;
    v11 = 0;
    msv_dispatch_sync_on_queue();
    if (a2)
    {
      *a2 = v13[5];
    }

    v4 = v7[5];
    _Block_object_dispose(&v6, 8);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __68__MRDistantExternalDevice__hostedExternalDeviceConnectionWithError___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 256);
  if (!v2)
  {
    v3 = MRGetSharedService();
    v4 = [*(a1 + 32) distantEndpoint];
    v5 = [v4 uniqueIdentifier];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = MRMediaRemoteServiceGetExternalDevice(v3, v5, &obj);
    objc_storeStrong((v6 + 40), obj);

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v7];
      [*(a1 + 32) setHostedExternalDeviceConnection:v8];
    }

    v2 = *(*(a1 + 32) + 256);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v2);
}

void __62__MRDistantExternalDevice__remoteObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if (![v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = [v3 code];

  if (v5 == 4099)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __62__MRDistantExternalDevice__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(a1);
    }

    goto LABEL_5;
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

void __67__MRDistantExternalDevice__synchronousObjectProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if (![v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = [v3 code];

  if (v5 == 4099)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __62__MRDistantExternalDevice__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(a1);
    }

    goto LABEL_5;
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

void __48__MRDistantExternalDevice__disconnectWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__MRDistantExternalDevice__disconnectWithError___block_invoke_2;
  v4[3] = &unk_1E769A4A0;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __83__MRDistantExternalDevice__onSerialQueue_handleConnectionStateDidChange_withError___block_invoke_2(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  [v2 setObject:v3 forKey:@"kMRExternalDeviceConnectionStateUserInfoKey"];

  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:*MEMORY[0x1E696AA08]];
  }

  [v5 postNotificationName:@"kMRExternalDeviceConnectionStateDidChangeNotification" object:*(a1 + 40) userInfo:v2];
}

void __63__MRDistantExternalDevice__updateHostedDeviceDesiredCallbacks___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  [v2 setRegisteredCallbacks:*(a1 + 40)];
}

void __67__MRDistantExternalDevice__updateHostedDeviceDesiredNotifications___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  [v2 setNotifications:*(a1 + 40)];
}

- (void)_disconnectWithError:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 56);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_13();
    v5[2] = __48__MRDistantExternalDevice__disconnectWithError___block_invoke;
    v5[3] = &unk_1E769A4A0;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (void)_updateHostedDeviceDesiredNotifications:(uint64_t)a1
{
  if (a1)
  {
    v4 = [(MRDistantExternalDevice *)a1 _nullableHostedExternalDeviceConnection];
    if (v4)
    {
      v5 = *(a1 + 56);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_13();
      v6[2] = __67__MRDistantExternalDevice__updateHostedDeviceDesiredNotifications___block_invoke;
      v6[3] = &unk_1E769C018;
      v7 = v4;
      v8 = a2;
      dispatch_async(v5, v6);
    }
  }
}

- (void)_updateHostedDeviceDesiredCallbacks:(uint64_t)a1
{
  if (a1)
  {
    v4 = [(MRDistantExternalDevice *)a1 _nullableHostedExternalDeviceConnection];
    if (v4)
    {
      v5 = *(a1 + 56);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_13();
      v6[2] = __63__MRDistantExternalDevice__updateHostedDeviceDesiredCallbacks___block_invoke;
      v6[3] = &unk_1E769C018;
      v7 = v4;
      v8 = a2;
      dispatch_async(v5, v6);
    }
  }
}

- (void)_onSerialQueue_callAllPendingCompletionsWithError:(uint64_t)a1
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 144) copy];
    [*(a1 + 144) removeAllObjects];
    if ([v4 count] >= 2)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Calling batched completions %@", v4];
      v6 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v4 firstObject];
        v8 = [v7 requestID];
        *buf = 138543874;
        v36 = @"DistantExternalDevice.connectWithOptions";
        v37 = 2114;
        v38 = v8;
        v39 = 2112;
        v40 = v5;
        OUTLINED_FUNCTION_15_0(&dword_1A2860000, v6, v9, "Update: %{public}@<%{public}@> %@", buf);
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v4;
    v10 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = qos_class_self();
          v16 = [v14 qos];
          if (v3 || v16 == v15)
          {
            if (v3)
            {
              v20 = _MRLogForCategory(0xAuLL);
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_22;
              }

              v21 = [v14 requestID];
              v22 = [MEMORY[0x1E695DF00] date];
              v23 = [v14 startDate];
              [v22 timeIntervalSinceDate:v23];
              *buf = 138544130;
              v36 = @"DistantExternalDevice.connectWithOptions";
              v37 = 2114;
              v38 = v21;
              v39 = 2114;
              v40 = v3;
              v41 = 2048;
              v42 = v24;
              _os_log_error_impl(&dword_1A2860000, v20, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);

              goto LABEL_21;
            }
          }

          else
          {
            v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"priority degraded from %u -> %u", objc_msgSend(v14, "qos"), v15];
            v18 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v14 requestID];
              *buf = 138543874;
              v36 = @"DistantExternalDevice.connectWithOptions";
              v37 = 2114;
              v38 = v19;
              v39 = 2112;
              v40 = v17;
              _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }
          }

          v20 = _MRLogForCategory(0xAuLL);
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

          v21 = [v14 requestID];
          v25 = [MEMORY[0x1E695DF00] date];
          v26 = [v14 startDate];
          [v25 timeIntervalSinceDate:v26];
          *buf = 138543874;
          v36 = @"DistantExternalDevice.connectWithOptions";
          v37 = 2114;
          v38 = v21;
          v39 = 2048;
          v40 = v27;
          _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);

LABEL_21:
LABEL_22:

          v28 = [v14 completion];
          (v28)[2](v28, v3);
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v11);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (uint64_t)deviceNotifications
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 64);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MRDistantExternalDevice_deviceNotifications__block_invoke;
  v4[3] = &unk_1E769A2A0;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __59__MRDistantExternalDevice_setWantsNowPlayingNotifications___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFELL;
  v3 = *(a1 + 40);
  OUTLINED_FUNCTION_1_3(a1, v1);
}

void __55__MRDistantExternalDevice_setWantsVolumeNotifications___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFDLL;
  v3 = -*(a1 + 40) & 2;
  OUTLINED_FUNCTION_1_3(a1, v1);
}

void __61__MRDistantExternalDevice_setWantsOutputDeviceNotifications___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88) & 0xFFFFFFFFFFFFFFFBLL;
  v3 = -*(a1 + 40) & 4;
  OUTLINED_FUNCTION_1_3(a1, v1);
}

void __63__MRDistantExternalDevice_setWantsEndpointChangeNotifications___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88) & 0xFFFFFFFFFFFFFFF7;
  v3 = -*(a1 + 40) & 8;
  OUTLINED_FUNCTION_1_3(a1, v1);
}

void __63__MRDistantExternalDevice_setWantsSystemEndpointNotifications___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 88) & 0xFFFFFFFFFFFFFFEFLL;
  v3 = -*(a1 + 40) & 0x10;
  OUTLINED_FUNCTION_1_3(a1, v1);
}

- (void)setConnectionState:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 72));
    *(a1 + 176) = a2;
    v4 = [MEMORY[0x1E695DF00] now];
    v5 = *(a1 + 168);
    *(a1 + 168) = v4;

    os_unfair_lock_unlock((a1 + 72));
  }
}

- (id)_synchronousObjectProxyWithErrorHandler:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v17 = 0;
    v4 = [(MRDistantExternalDevice *)a1 _hostedExternalDeviceConnectionWithError:?];
    v5 = v17;
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_8_0();
      v7(v6, v5);
    }

    else
    {
      if (v4)
      {
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_3_2();
        v13 = __67__MRDistantExternalDevice__synchronousObjectProxyWithErrorHandler___block_invoke;
        v14 = &unk_1E769BCD0;
        v15 = a1;
        v16 = v3;
        a1 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v12];

        goto LABEL_7;
      }

      v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:24 format:@"Attempting to query nil distantEndpointConnection"];
      v10 = OUTLINED_FUNCTION_8_0();
      v11(v10, v9);
    }

    a1 = 0;
LABEL_7:
  }

  return a1;
}

void __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_5(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  [(MRDistantExternalDevice *)v2 _onSerialQueue_callAllPendingCompletionsWithError:?];
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [(MRDistantExternalDevice *)v3 _onSerialQueue_handleConnectionStateDidChange:v5 withError:v4];
}

- (void)_onSerialQueue_handleConnectionStateDidChange:(void *)a3 withError:
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a1)
  {
    if (a2 == 3)
    {
      objc_storeStrong((a1 + 160), a3);
      if (*(a1 + 256))
      {
        [a1 setHostedExternalDeviceConnection:0];
      }
    }

    else
    {
      v7 = *(a1 + 160);
      *(a1 + 160) = 0;
    }

    if (!*(a1 + 256))
    {
      [a1 setDeviceInfo:0];
    }

    if ([a1 connectionState] != a2)
    {
      v9 = MRLogCategoryConnections();
      v10 = v9;
      if (v6)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = MRExternalDeviceConnectionStateCopyDescription(a2);
          OUTLINED_FUNCTION_12();
          v35 = v16;
          v36 = v6;
          v12 = "[MRDistantExternalDevice] Hosted external device connection for distant device %{public}@ state did change to %{public}@ with error %{public}@";
          v13 = v10;
          v14 = OS_LOG_TYPE_ERROR;
          v15 = 32;
          goto LABEL_15;
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = MRExternalDeviceConnectionStateCopyDescription(a2);
        OUTLINED_FUNCTION_12();
        v12 = "[MRDistantExternalDevice] Hosted external device connection for distant device %{public}@ state did change to %{public}@";
        v13 = v10;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 22;
LABEL_15:
        _os_log_impl(&dword_1A2860000, v13, v14, v12, buf, v15);
      }

      if ((a2 & 0xFFFFFFFE) == 2)
      {
        *(a1 + 136) = 0;
        [(MRDistantExternalDevice *)a1 _onSerialQueue_callAllPendingCompletionsWithError:v6];
      }

      v17 = *(a1 + 128);
      *(a1 + 128) = 0;

      v18 = *(a1 + 104);
      *(a1 + 104) = 0;

      [(MRDistantExternalDevice *)a1 setConnectionState:a2];
      v19 = [a1 connectionStateCallback];
      v20 = [v19 copy];

      v21 = [a1 connectionStateCallbackQueue];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = MEMORY[0x1E69E96A0];
        v24 = MEMORY[0x1E69E96A0];
      }

      if (v20)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __83__MRDistantExternalDevice__onSerialQueue_handleConnectionStateDidChange_withError___block_invoke;
        block[3] = &unk_1E769BD70;
        v32 = v20;
        v33 = a2;
        v31 = v6;
        dispatch_async(v23, block);
      }

      v25 = +[MRDistantExternalDevice _notificationSerialQueue];
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_13();
      v26[2] = __83__MRDistantExternalDevice__onSerialQueue_handleConnectionStateDidChange_withError___block_invoke_2;
      v26[3] = &unk_1E769BCF8;
      v29 = a2;
      v27 = v6;
      v28 = a1;
      dispatch_async(v25, v26);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_onSerialQueue_prepareToConnectWithOptions:(void *)a3 userInfo:(void *)a4 connectionAttemptDetails:(void *)a5 connectionHandler:
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    v11 = [MRBlockGuard alloc];
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [v9 requestID];
    v14 = [v9 reason];
    v15 = [v12 initWithFormat:@"%@<%@:%@>", @"DistantExternalDevice.connectWithOptions", v13, v14];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __122__MRDistantExternalDevice__onSerialQueue_prepareToConnectWithOptions_userInfo_connectionAttemptDetails_connectionHandler___block_invoke;
    v45[3] = &unk_1E769AD80;
    v16 = v10;
    v46 = v16;
    v17 = [(MRBlockGuard *)v11 initWithTimeout:v15 reason:v45 handler:30.0];

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __122__MRDistantExternalDevice__onSerialQueue_prepareToConnectWithOptions_userInfo_connectionAttemptDetails_connectionHandler___block_invoke_2;
    v42[3] = &unk_1E769BCD0;
    v18 = v17;
    v43 = v18;
    v44 = v16;
    v19 = MEMORY[0x1A58E3570](v42);
    if ([a1 connectionState] == 2)
    {
      v20 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v9 requestID];
        OUTLINED_FUNCTION_4_2(v21, 5.8383e-34);
        v48 = @"Already Connected";
        OUTLINED_FUNCTION_15_0(&dword_1A2860000, v20, v22, "Update: %{public}@<%{public}@> %@", v47);
      }

      v19[2](v19, 0);
    }

    else
    {
      if ([a1 connectionState] == 1)
      {
        if (a2 & 1) == 0 || (*(a1 + 136))
        {
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Connection already in progress, batching connection attempt %@", *(a1 + 144)];
          v24 = _MRLogForCategory(0xAuLL);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v9 requestID];
            OUTLINED_FUNCTION_4_2(v25, 5.8383e-34);
            v48 = v23;
            OUTLINED_FUNCTION_15_0(&dword_1A2860000, v24, v26, "Update: %{public}@<%{public}@> %@", v47);
          }

          [(MSVBlockGuard *)v18 disarm];
          goto LABEL_12;
        }

        v28 = _MRLogForCategory(0xAuLL);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v9 requestID];
          OUTLINED_FUNCTION_4_2(v29, 5.8383e-34);
          v48 = @"AuthUpgrade required";
          OUTLINED_FUNCTION_15_0(&dword_1A2860000, v28, v30, "Update: %{public}@<%{public}@> %@", v47);
        }
      }

      *(a1 + 192) = 1;
      v31 = [v9 startDate];
      v32 = *(a1 + 96);
      *(a1 + 96) = v31;

      *(a1 + 136) = a2;
      [(MRDistantExternalDevice *)a1 _onSerialQueue_handleConnectionStateDidChange:0 withError:?];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __122__MRDistantExternalDevice__onSerialQueue_prepareToConnectWithOptions_userInfo_connectionAttemptDetails_connectionHandler___block_invoke_277;
      v40[3] = &unk_1E769BCD0;
      v40[4] = a1;
      v33 = v19;
      v41 = v33;
      v34 = [(MRDistantExternalDevice *)a1 _remoteObjectProxyWithErrorHandler:v40];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __122__MRDistantExternalDevice__onSerialQueue_prepareToConnectWithOptions_userInfo_connectionAttemptDetails_connectionHandler___block_invoke_2_278;
      v37[3] = &unk_1E769BCD0;
      v38 = v34;
      v39 = v33;
      v35 = v34;
      [v35 connectWithOptions:a2 userInfo:v8 completion:v37];
    }

LABEL_12:
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __122__MRDistantExternalDevice__onSerialQueue_prepareToConnectWithOptions_userInfo_connectionAttemptDetails_connectionHandler___block_invoke_277(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 112) = 1;
  v3 = *(a1 + 32);
  v4 = a2;
  [(MRDistantExternalDevice *)v3 _disconnectWithError:v4];
  (*(*(a1 + 40) + 16))();
}

- (id)_remoteObjectProxyWithErrorHandler:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v17 = 0;
    v4 = [(MRDistantExternalDevice *)a1 _hostedExternalDeviceConnectionWithError:?];
    v5 = v17;
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_8_0();
      v7(v6, v5);
    }

    else
    {
      if (v4)
      {
        OUTLINED_FUNCTION_0_3();
        OUTLINED_FUNCTION_3_2();
        v13 = __62__MRDistantExternalDevice__remoteObjectProxyWithErrorHandler___block_invoke;
        v14 = &unk_1E769BCD0;
        v15 = a1;
        v16 = v3;
        a1 = [v4 remoteObjectProxyWithErrorHandler:v12];

        goto LABEL_7;
      }

      v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:24 format:@"Attempting to query nil distantEndpointConnection"];
      v10 = OUTLINED_FUNCTION_8_0();
      v11(v10, v9);
    }

    a1 = 0;
LABEL_7:
  }

  return a1;
}

void __38__MRDistantExternalDevice_disconnect___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2(a1);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  v5 = __38__MRDistantExternalDevice_disconnect___block_invoke_2;
  v6 = &unk_1E769AFC0;
  v7 = v2;
  v3 = [(MRDistantExternalDevice *)v2 _remoteObjectProxyWithErrorHandler:v4];
  [v3 disconnect:*(v1 + 40)];
}

void __59__MRDistantExternalDevice_setCustomDataCallback_withQueue___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) customDataCallback];
  if (v2)
  {
    v3 = *(a1 + 48);

    if (v3)
    {
      v4 = MRLogCategoryConnections();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v9 = 138412290;
        v10 = v5;
        _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_ERROR, "[MRDistantExternalDevice] Overwriting distant external device CustomDataCallback for %@", &v9, 0xCu);
      }
    }
  }

  [*(a1 + 32) setCustomDataCallback:*(a1 + 48)];
  [*(a1 + 32) setCustomDataCallbackQueue:*(a1 + 40)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 80) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 48))
  {
    ++v7;
  }

  *(v6 + 80) = v7;
  [(MRDistantExternalDevice *)*(a1 + 32) _updateHostedDeviceDesiredCallbacks:?];
  v8 = *MEMORY[0x1E69E9840];
}

void __61__MRDistantExternalDevice_setDiscoveryMode_forConfiguration___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v4 = [(MRDistantExternalDevice *)v2 _hostedExternalDeviceConnection];
  v3 = [v4 remoteObjectProxy];
  [v3 setDiscoveryMode:*(v1 + 48) forConfiguration:*(v1 + 40)];
}

void __75__MRDistantExternalDevice_requestGroupSessionWithDetails_queue_completion___block_invoke_3(void *a1)
{
  v2 = a1[4];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  v4 = *(v3 + 48);
  v5 = OUTLINED_FUNCTION_10_0();
  v7 = [(MRDistantExternalDevice *)v5 _remoteObjectProxyWithErrorHandler:v6];
  [v7 requestGroupSessionWithDetails:a1[5] completion:a1[6]];
}

void __83__MRDistantExternalDevice_requestMicrophoneConnectionWithDetails_queue_completion___block_invoke_3(void *a1)
{
  v2 = a1[4];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  v4 = *(v3 + 48);
  v5 = OUTLINED_FUNCTION_10_0();
  v7 = [(MRDistantExternalDevice *)v5 _remoteObjectProxyWithErrorHandler:v6];
  [v7 requestMicrophoneConnectionWithDetails:a1[5] completion:a1[6]];
}

void __90__MRDistantExternalDevice_setOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v4 = [(MRDistantExternalDevice *)v2 _remoteObjectProxyWithErrorHandler:?];
  LODWORD(v3) = *(v1 + 64);
  [v4 setOutputDeviceVolume:*(v1 + 40) outputDeviceUID:*(v1 + 48) details:*(v1 + 56) completion:v3];
}

void __93__MRDistantExternalDevice_adjustOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v3 = [(MRDistantExternalDevice *)v2 _remoteObjectProxyWithErrorHandler:?];
  [v3 adjustOutputDeviceVolume:*(v1 + 64) outputDeviceUID:*(v1 + 40) details:*(v1 + 48) completion:*(v1 + 56)];
}

void __91__MRDistantExternalDevice_muteOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v3 = [(MRDistantExternalDevice *)v2 _remoteObjectProxyWithErrorHandler:?];
  [v3 muteOutputDeviceVolume:*(v1 + 64) outputDeviceUID:*(v1 + 40) details:*(v1 + 48) completion:*(v1 + 56)];
}

void __77__MRDistantExternalDevice_setListeningMode_outputDeviceUID_queue_completion___block_invoke_3(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v3 = [(MRDistantExternalDevice *)v2 _remoteObjectProxyWithErrorHandler:?];
  [v3 setListeningMode:*(v1 + 40) outputDeviceUID:*(v1 + 48) completion:*(v1 + 56)];
}

void __92__MRDistantExternalDevice_setConversationDetectionEnabled_outputDeviceUID_queue_completion___block_invoke_3(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v3 = [(MRDistantExternalDevice *)v2 _remoteObjectProxyWithErrorHandler:?];
  [v3 setConversationDetectionEnabled:*(v1 + 56) outputDeviceUID:*(v1 + 40) completion:*(v1 + 48)];
}

void __79__MRDistantExternalDevice_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_3(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v3 = [(MRDistantExternalDevice *)v2 _remoteObjectProxyWithErrorHandler:?];
  [v3 modifyTopologyWithRequest:*(v1 + 40) completion:*(v1 + 48)];
}

void __93__MRDistantExternalDevice_createHostedEndpointWithOutputDeviceUIDs_details_queue_completion___block_invoke_3(void *a1)
{
  v2 = a1[4];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2();
  v4 = *(v3 + 56);
  v5 = OUTLINED_FUNCTION_10_0();
  v7 = [(MRDistantExternalDevice *)v5 _remoteObjectProxyWithErrorHandler:v6];
  [v7 createHostedEndpointWithOutputDeviceUIDs:a1[5] details:a1[6] completion:a1[7]];
}

- (void)sendCustomData:(id)a3 withName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(MRDistantExternalDevice *)self _hostedExternalDeviceConnection];
  v8 = [v9 remoteObjectProxy];
  [v8 sendCustomData:v7 withName:v6];
}

void __51__MRDistantExternalDevice_ping_callback_withQueue___block_invoke_3(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v3 = [(MRDistantExternalDevice *)v2 _remoteObjectProxyWithErrorHandler:?];
  [v3 pingWithTimeout:*(v1 + 40) callback:*(v1 + 48)];
}

void __43__MRDistantExternalDevice_sendButtonEvent___block_invoke(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_5_2(a1);
  v4 = [(MRDistantExternalDevice *)v2 _hostedExternalDeviceConnection];
  v3 = [v4 remoteObjectProxy];
  [v3 sendButtonEventWithUsagePage:*(v1 + 40) usage:*(v1 + 44) down:*(v1 + 48)];
}

void __61__MRDistantExternalDevice_setHostedExternalDeviceConnection___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:1 description:@"xpc interruption"];
  [(MRDistantExternalDevice *)a1 _disconnectWithError:v2];
}

- (void)setExternalOutputContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRDistantExternalDevice.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"!(externalOutputContext && _externalOutputContext)"}];
}

- (void)connectWithOptions:(uint64_t)a1 userInfo:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRDistantExternalDevice.m" lineNumber:676 description:{@"Invalid parameter not satisfying: %@", @"uid"}];
}

- (void)connectWithOptions:userInfo:completion:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 138412546;
  OUTLINED_FUNCTION_11();
  v4 = v0;
  _os_log_fault_impl(&dword_1A2860000, v1, OS_LOG_TYPE_FAULT, "No reason provided for %@<%@>", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __66__MRDistantExternalDevice_connectWithOptions_userInfo_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 32);
  v3 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  OUTLINED_FUNCTION_1(&dword_1A2860000, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void __90__MRDistantExternalDevice_setOutputDeviceVolume_outputDeviceUID_details_queue_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 40);
  v3 = [*(v1 + 48) requestID];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __62__MRDistantExternalDevice__remoteObjectProxyWithErrorHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = 138412546;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_14(&dword_1A2860000, v2, v3, "%@ %@ in distantExternalDevice", v5);
  v4 = *MEMORY[0x1E69E9840];
}

@end