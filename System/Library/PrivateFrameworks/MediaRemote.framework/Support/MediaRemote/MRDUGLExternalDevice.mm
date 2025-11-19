@interface MRDUGLExternalDevice
- (BOOL)wantsNowPlayingArtworkNotifications;
- (BOOL)wantsNowPlayingNotifications;
- (BOOL)wantsOutputDeviceNotifications;
- (BOOL)wantsSystemEndpointNotifications;
- (BOOL)wantsVolumeNotifications;
- (MRDUGLExternalDevice)initWithExternalDevice:(id)a3 endpoint:(id)a4;
- (NSString)debugDescription;
- (NSString)description;
- (id)_label;
- (id)currentClientUpdatesConfigMessage;
- (id)customOrigin;
- (id)deviceInfo;
- (id)errorForCurrentState;
- (id)groupSessionToken;
- (id)lastConnectionError;
- (id)name;
- (id)subscribedPlayerPaths;
- (id)supportedMessages;
- (id)uid;
- (unsigned)connectionState;
- (void)_fetchEndpointForOutputDeviceUID:(id)a3 details:(id)a4 completion:(id)a5;
- (void)_handleEndpointDidChangeOutputDeviceNotification:(id)a3;
- (void)_handleEndpointDidRemoveOutputDeviceNotification:(id)a3;
- (void)_handleEndpointVolumeCapabilitiesDidChangeNotification:(id)a3;
- (void)_handleEndpointVolumeDidChangeNotification:(id)a3;
- (void)_handleEndpointVolumeMuteDidChangeNotification:(id)a3;
- (void)_handleExternalDeviceConnectionStateDidChange:(id)a3;
- (void)_handleExternalDeviceDeviceInfoDidChange:(id)a3;
- (void)_handleLocalDeviceDeviceInfoDidChange:(id)a3;
- (void)_verifyUGL;
- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)connectWithOptions:(unsigned int)a3 userInfo:(id)a4 completion:(id)a5;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)disconnect:(id)a3;
- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5;
- (void)muteOutputDeviceVolume:(BOOL)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5;
- (void)registerForNotifications;
- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)sendButtonEvent:(_MRHIDButtonEvent)a3;
- (void)sendClientUpdatesConfigMessage;
- (void)sendCustomData:(id)a3 withName:(id)a4;
- (void)setCustomDataCallback:(id)a3 withQueue:(id)a4;
- (void)setHeadTrackedSpatialAudioMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)setSubscribedPlayerPaths:(id)a3;
@end

@implementation MRDUGLExternalDevice

- (MRDUGLExternalDevice)initWithExternalDevice:(id)a3 endpoint:(id)a4
{
  v7 = a3;
  v8 = a4;
  v37.receiver = self;
  v37.super_class = MRDUGLExternalDevice;
  v9 = [(MRDUGLExternalDevice *)&v37 _init];
  v10 = v9;
  if (v9)
  {
    v9->_accessLock._os_unfair_lock_opaque = 0;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MRDUGLExternalDevice.notificationQueue", v11);
    notificationQueue = v10->_notificationQueue;
    v10->_notificationQueue = v12;

    v14 = [MRConcreteEndpoint alloc];
    v15 = [v8 designatedGroupLeader];
    v16 = [v8 outputDevices];
    v17 = [v14 initWithDesignatedGroupLeader:v15 outputDevices:v16 preferredSuffix:0 connectionType:{objc_msgSend(v8, "connectionType")}];
    uglEndpoint = v10->_uglEndpoint;
    v10->_uglEndpoint = v17;

    objc_storeStrong(&v10->_ugl, a3);
    [(MRAVEndpoint *)v10->_uglEndpoint setExternalDevice:v7];
    v19 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    localEndpoint = v10->_localEndpoint;
    v10->_localEndpoint = v19;

    v21 = [MRExternalOutputContextDataSource alloc];
    v22 = [NSString alloc];
    v23 = [(MRDUGLExternalDevice *)v10 uid];
    v24 = [(MRDUGLExternalDevice *)v10 name];
    v25 = [v22 initWithFormat:@"MRDUGLExternalDevice-%@-%@", v23, v24];
    v26 = [v21 initWithUniqueIdentifier:v25];
    externalOutputContext = v10->_externalOutputContext;
    v10->_externalOutputContext = v26;

    v28 = v10->_externalOutputContext;
    v29 = [(MRAVEndpoint *)v10->_localEndpoint syncedOutputDevices];
    [(MRExternalOutputContextDataSource *)v28 updateOutputDevices:v29];

    v30 = v10->_externalOutputContext;
    v31 = [(MRAVEndpoint *)v10->_uglEndpoint remoteSourcedOutputDevices];
    [(MRExternalOutputContextDataSource *)v30 updateOutputDevices:v31];

    v32 = [MRAVRoutingDiscoverySessionConfiguration configurationWithEndpointFeatures:1];
    [v32 setAlwaysAllowUpdates:1];
    v33 = [MRAVRoutingDiscoverySession discoverySessionWithConfiguration:v32];
    outputDeviceUIDLookup = v10->_outputDeviceUIDLookup;
    v10->_outputDeviceUIDLookup = v33;

    [(MRDUGLExternalDevice *)v10 registerForNotifications];
    v35 = MRLogCategoryConnections();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v39 = v10;
      v40 = 2114;
      v41 = v7;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Creating MRDUGLExternalDevice %{public}@ for externalDevice %{public}@", buf, 0x16u);
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = MRLogCategoryConnections();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc MRDUGLExternalDevice %{public}@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MRDUGLExternalDevice;
  [(MRDUGLExternalDevice *)&v4 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(MRDUGLExternalDevice *)self uglEndpoint];
  v5 = [v4 uniqueIdentifier];
  v6 = [(MRDUGLExternalDevice *)self deviceInfo];
  v7 = [v6 name];
  v8 = [NSString stringWithFormat:@"<%@:%p-%@(%@)>", v3, self, v5, v7];

  return v8;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  ugl = self->_ugl;
  v5 = MRCreateIndentedDebugDescriptionFromObject();
  v6 = v5;
  if (self->_disconnected)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [NSString stringWithFormat:@"<%@: %p {\n    uglEndpoint = %@\n    disconnected = %@\n}>", v3, self, v5, v7];

  return v8;
}

- (id)name
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 name];

  return v3;
}

- (id)customOrigin
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 customOrigin];

  return v3;
}

- (id)deviceInfo
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 deviceInfo];

  return v3;
}

- (unsigned)connectionState
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = [(MRDUGLExternalDevice *)self isDisconnected];
  os_unfair_lock_unlock(&self->_accessLock);
  if (v3)
  {
    return 3;
  }

  v5 = [(MRDUGLExternalDevice *)self ugl];
  v6 = [v5 connectionState];

  return v6;
}

- (id)uid
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 uid];

  return v3;
}

- (id)subscribedPlayerPaths
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 subscribedPlayerPaths];

  return v3;
}

- (void)setSubscribedPlayerPaths:(id)a3
{
  v4 = a3;
  v5 = [(MRDUGLExternalDevice *)self ugl];
  [v5 setSubscribedPlayerPaths:v4];
}

- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSDate now];
  v17 = [NSMutableString alloc];
  v18 = [v13 requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.setOutputDeviceVolume", v18];

  if (self)
  {
    [v19 appendFormat:@" for %@", self];
  }

  v20 = _MRLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100185B7C;
  v35[3] = &unk_1004BF1C8;
  v41 = a3;
  v35[4] = self;
  v36 = @"MRDUGLExternalDevice.setOutputDeviceVolume";
  v21 = v13;
  v37 = v21;
  v38 = v16;
  v22 = v14;
  v39 = v22;
  v40 = v15;
  v23 = v15;
  v24 = v16;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100185FEC;
  v29[3] = &unk_1004C03A8;
  v34 = a3;
  v30 = v12;
  v31 = v21;
  v32 = v22;
  v33 = objc_retainBlock(v35);
  v25 = v33;
  v26 = v22;
  v27 = v21;
  v28 = v12;
  [(MRDUGLExternalDevice *)self _fetchEndpointForOutputDeviceUID:v28 details:v27 completion:v29];
}

- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSDate now];
  v17 = [NSMutableString alloc];
  v18 = [v13 requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.adjustOutputDeviceVolume", v18];

  if (self)
  {
    [v19 appendFormat:@" for %@", self];
  }

  v20 = _MRLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1001862E4;
  v35[3] = &unk_1004BF1F0;
  v41 = a3;
  v35[4] = self;
  v36 = @"MRDUGLExternalDevice.adjustOutputDeviceVolume";
  v21 = v13;
  v37 = v21;
  v38 = v16;
  v22 = v14;
  v39 = v22;
  v40 = v15;
  v23 = v15;
  v24 = v16;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10018674C;
  v29[3] = &unk_1004C03D0;
  v33 = objc_retainBlock(v35);
  v34 = a3;
  v30 = v12;
  v31 = v21;
  v32 = v22;
  v25 = v33;
  v26 = v22;
  v27 = v21;
  v28 = v12;
  [(MRDUGLExternalDevice *)self _fetchEndpointForOutputDeviceUID:v28 details:v27 completion:v29];
}

- (void)muteOutputDeviceVolume:(BOOL)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSDate now];
  v17 = [NSMutableString alloc];
  v18 = [v13 requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.muteOutputDeviceVolume", v18];

  if (self)
  {
    [v19 appendFormat:@" for %@", self];
  }

  v20 = _MRLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v43 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100186A44;
  v35[3] = &unk_1004BF240;
  v41 = a3;
  v35[4] = self;
  v36 = @"MRDUGLExternalDevice.muteOutputDeviceVolume";
  v21 = v13;
  v37 = v21;
  v38 = v16;
  v22 = v14;
  v39 = v22;
  v40 = v15;
  v23 = v15;
  v24 = v16;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100186EB4;
  v29[3] = &unk_1004BA2C0;
  v34 = a3;
  v30 = v12;
  v31 = v21;
  v32 = v22;
  v33 = objc_retainBlock(v35);
  v25 = v33;
  v26 = v22;
  v27 = v21;
  v28 = v12;
  [(MRDUGLExternalDevice *)self _fetchEndpointForOutputDeviceUID:v28 details:v27 completion:v29];
}

- (id)_label
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(MRDUGLExternalDevice *)self deviceInfo];
  v6 = [v5 name];
  v7 = [v3 initWithFormat:@"<%@:%p-%@>", v4, self, v6];

  return v7;
}

- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5
{
  v7 = a3;
  queue = a4;
  v8 = a5;
  v9 = +[NSDate now];
  v10 = [NSMutableString alloc];
  v11 = [v7 requestDetails];
  v12 = [v11 requestID];
  v13 = [v10 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.modifyTopologyWithRequest", v12];

  if (self)
  {
    [v13 appendFormat:@" for %@", self];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1001878DC;
  v73[3] = &unk_1004B9780;
  v73[4] = self;
  v74 = @"MRDUGLExternalDevice.modifyTopologyWithRequest";
  v54 = v7;
  v75 = v54;
  v48 = v9;
  v76 = v48;
  v47 = v8;
  v77 = v47;
  v49 = objc_retainBlock(v73);
  v51 = objc_alloc_init(NSMutableArray);
  v53 = objc_alloc_init(NSMutableArray);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = [v54 outputDeviceUIDs];
  v15 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
  if (v15)
  {
    v16 = *v70;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v70 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v69 + 1) + 8 * i);
        v19 = [(MRAVRoutingDiscoverySession *)self->_outputDeviceUIDLookup availableOutputDevices];
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_100187B7C;
        v68[3] = &unk_1004B8A40;
        v68[4] = v18;
        v20 = [v19 msv_firstWhere:v68];

        if (![v20 isLocallySourced])
        {
          v21 = _MRLogForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v54 requestDetails];
            v25 = [v24 requestID];
            *buf = 138543874;
            *&buf[4] = @"MRDUGLExternalDevice.modifyTopologyWithRequest";
            *&buf[12] = 2114;
            *&buf[14] = v25;
            *&buf[22] = 2112;
            v80 = @"AirPlay -> UGLEndpoint";
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
          }

          goto LABEL_17;
        }

        if ([v20 deviceType] == 4 && objc_msgSend(v54, "type") == 2)
        {
          v21 = _MRLogForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v54 requestDetails];
            v23 = [v22 requestID];
            *buf = 138543874;
            *&buf[4] = @"MRDUGLExternalDevice.modifyTopologyWithRequest";
            *&buf[12] = 2114;
            *&buf[14] = v23;
            *&buf[22] = 2112;
            v80 = @"Builtin + Remove -> UGLEndpoint";
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
          }

LABEL_17:
          v26 = v53;
          goto LABEL_21;
        }

        v21 = _MRLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v54 requestDetails];
          v28 = [v27 requestID];
          *buf = 138543874;
          *&buf[4] = @"MRDUGLExternalDevice.modifyTopologyWithRequest";
          *&buf[12] = 2114;
          *&buf[14] = v28;
          *&buf[22] = 2112;
          v80 = @"Not AirPlay -> LocalEndpoint";
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        }

        v26 = v51;
LABEL_21:

        [v26 addObject:v18];
      }

      v15 = [obj countByEnumeratingWithState:&v69 objects:v83 count:16];
    }

    while (v15);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v80 = sub_10003524C;
  v81 = sub_100035ADC;
  v82 = 0;
  v29 = dispatch_group_create();
  if ([v51 count])
  {
    dispatch_group_enter(v29);
    v30 = [v54 copyWithOutputDeviceUIDs:v51];
    v31 = [(MRDUGLExternalDevice *)self localEndpoint];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100187B88;
    v65[3] = &unk_1004B69F8;
    v67 = buf;
    v32 = v29;
    v66 = v32;
    [v31 modifyTopologyWithRequest:v30 withReplyQueue:queue completion:v65];

    v33 = [(MRDUGLExternalDevice *)self uglEndpoint];
    v34 = [v33 remoteSourcedOutputDevices];

    if ([v34 count])
    {
      dispatch_group_enter(v32);
      v35 = [MRRequestDetails alloc];
      v36 = [v54 requestDetails];
      v37 = [v35 initChildWithParent:v36 reason:@"Clear UGL when routing locally"];

      v38 = [MRGroupTopologyModificationRequest alloc];
      v39 = +[MRDeviceInfoRequest localDeviceInfo];
      v40 = [v39 deviceUID];
      v78 = v40;
      v41 = [NSArray arrayWithObjects:&v78 count:1];
      v42 = [v38 initWithRequestDetails:v37 type:3 outputDeviceUIDs:v41];

      v43 = [(MRDUGLExternalDevice *)self uglEndpoint];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_100187BF0;
      v62[3] = &unk_1004B69F8;
      v64 = buf;
      v63 = v32;
      [v43 modifyTopologyWithRequest:v42 withReplyQueue:queue completion:v62];
    }
  }

  if ([v53 count])
  {
    dispatch_group_enter(v29);
    v44 = [v54 copyWithOutputDeviceUIDs:v53];
    v45 = [(MRDUGLExternalDevice *)self uglEndpoint];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100187C58;
    v59[3] = &unk_1004B69F8;
    v61 = buf;
    v60 = v29;
    [v45 modifyTopologyWithRequest:v44 withReplyQueue:queue completion:v59];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100187CC0;
  block[3] = &unk_1004C03F8;
  v57 = v49;
  v58 = buf;
  v46 = v49;
  dispatch_group_notify(v29, queue, block);

  _Block_object_dispose(buf, 8);
}

- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MRDUGLExternalDevice *)self localEndpoint];
  [v14 setListeningMode:v13 outputDeviceUID:v12 queue:v11 completion:v10];
}

- (void)setHeadTrackedSpatialAudioMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MRDUGLExternalDevice *)self localEndpoint];
  [v14 setHeadTrackedSpatialAudioMode:v13 outputDeviceUID:v12 queue:v11 completion:v10];
}

- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(MRDUGLExternalDevice *)self ugl];
  [v10 ping:v9 callback:v8 withQueue:a3];
}

- (void)connectWithOptions:(unsigned int)a3 userInfo:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[NSDate now];
  v10 = [v7 objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v11 = [v7 objectForKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];
  v12 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.connectWithOptions", v10];
  v13 = v12;
  if (self)
  {
    [v12 appendFormat:@" for %@", self];
  }

  if (v11)
  {
    [v13 appendFormat:@" because %@", v11];
  }

  v28 = v11;
  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v15 = qos_class_self();
  v16 = [[NSString alloc] initWithFormat:@"com.apple.mediaremote.outputContextExternalDevice.connect.%@", v10];
  v17 = [v16 UTF8String];
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_attr_make_with_qos_class(v18, v15, 0);
  v20 = dispatch_queue_create_with_target_V2(v17, v19, self->_notificationQueue);

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100188304;
  v29[3] = &unk_1004BF2B8;
  v36 = v15;
  v30 = @"MRDUGLExternalDevice.connectWithOptions";
  v31 = v10;
  v32 = self;
  v33 = v9;
  v34 = v20;
  v35 = v8;
  v21 = v20;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = objc_retainBlock(v29);
  v26 = [(MRDUGLExternalDevice *)self ugl];
  [v26 connectWithOptions:a3 userInfo:v7 completion:v25];
}

- (void)disconnect:(id)a3
{
  os_unfair_lock_lock(&self->_accessLock);
  [(MRDUGLExternalDevice *)self setDisconnected:1];
  os_unfair_lock_unlock(&self->_accessLock);
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = kMRExternalDeviceConnectionStateDidChangeNotification;
  v7 = kMRExternalDeviceConnectionStateUserInfoKey;
  v8 = &off_1004E0B78;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 postNotificationName:v5 object:self userInfo:v6];
}

- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MRDUGLExternalDevice *)self localEndpoint];
  [v11 removeOutputDeviceFromParentGroup:v10 queue:v9 completion:v8];
}

- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(MRDUGLExternalDevice *)self localEndpoint];
  [v9 requestMicrophoneConnection:v8 completion:v7];
}

- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MRDUGLExternalDevice *)self ugl];
  [v11 requestGroupSessionWithDetails:v10 queue:v9 completion:v8];
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(MRDUGLExternalDevice *)self ugl];
  [v14 createHostedEndpointWithOutputDeviceUIDs:v13 details:v12 queue:v11 completion:v10];
}

- (id)supportedMessages
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 supportedMessages];

  return v3;
}

- (void)setCustomDataCallback:(id)a3 withQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRDUGLExternalDevice *)self ugl];
  [v8 setCustomDataCallback:v7 withQueue:v6];
}

- (void)sendCustomData:(id)a3 withName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRDUGLExternalDevice *)self ugl];
  [v8 sendCustomData:v7 withName:v6];
}

- (BOOL)wantsNowPlayingNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 wantsNowPlayingNotifications];

  return v3;
}

- (BOOL)wantsNowPlayingArtworkNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 wantsNowPlayingArtworkNotifications];

  return v3;
}

- (BOOL)wantsVolumeNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 wantsVolumeNotifications];

  return v3;
}

- (BOOL)wantsOutputDeviceNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 wantsOutputDeviceNotifications];

  return v3;
}

- (BOOL)wantsSystemEndpointNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 wantsSystemEndpointNotifications];

  return v3;
}

- (void)sendButtonEvent:(_MRHIDButtonEvent)a3
{
  v3 = *&a3.down;
  v4 = *&a3.usagePage;
  v5 = [(MRDUGLExternalDevice *)self ugl];
  [v5 sendButtonEvent:{v4, v3}];
}

- (id)errorForCurrentState
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 errorForCurrentState];

  return v3;
}

- (id)currentClientUpdatesConfigMessage
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 currentClientUpdatesConfigMessage];

  return v3;
}

- (id)groupSessionToken
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 groupSessionToken];

  return v3;
}

- (void)sendClientUpdatesConfigMessage
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  [v2 sendClientUpdatesConfigMessage];
}

- (id)lastConnectionError
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  v3 = [v2 lastConnectionError];

  return v3;
}

- (void)registerForNotifications
{
  v3 = +[MRAVClusterController sharedController];
  [v3 registerObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = MRAVEndpointDidAddOutputDeviceNotification;
  [v4 addObserver:self selector:"_handleEndpointDidChangeOutputDeviceNotification:" name:MRAVEndpointDidAddOutputDeviceNotification object:self->_uglEndpoint];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleEndpointDidChangeOutputDeviceNotification:" name:v5 object:self->_localEndpoint];

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = MRAVEndpointDidChangeOutputDeviceNotification;
  [v7 addObserver:self selector:"_handleEndpointDidChangeOutputDeviceNotification:" name:MRAVEndpointDidChangeOutputDeviceNotification object:self->_uglEndpoint];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_handleEndpointDidChangeOutputDeviceNotification:" name:v8 object:self->_localEndpoint];

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = MRAVEndpointDidRemoveOutputDeviceNotification;
  [v10 addObserver:self selector:"_handleEndpointDidRemoveOutputDeviceNotification:" name:MRAVEndpointDidRemoveOutputDeviceNotification object:self->_uglEndpoint];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_handleEndpointDidRemoveOutputDeviceNotification:" name:v11 object:self->_localEndpoint];

  v13 = +[NSNotificationCenter defaultCenter];
  v14 = MRAVEndpointVolumeDidChangeNotification;
  [v13 addObserver:self selector:"_handleEndpointVolumeDidChangeNotification:" name:MRAVEndpointVolumeDidChangeNotification object:self->_uglEndpoint];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"_handleEndpointVolumeDidChangeNotification:" name:v14 object:self->_localEndpoint];

  v16 = +[NSNotificationCenter defaultCenter];
  v17 = MRAVEndpointVolumeControlCapabilitiesDidChangeNotification;
  [v16 addObserver:self selector:"_handleEndpointVolumeCapabilitiesDidChangeNotification:" name:MRAVEndpointVolumeControlCapabilitiesDidChangeNotification object:self->_uglEndpoint];

  v18 = +[NSNotificationCenter defaultCenter];
  [v18 addObserver:self selector:"_handleEndpointVolumeCapabilitiesDidChangeNotification:" name:v17 object:self->_localEndpoint];

  v19 = +[NSNotificationCenter defaultCenter];
  v20 = MRAVEndpointVolumeMutedDidChangeNotification;
  [v19 addObserver:self selector:"_handleEndpointVolumeMuteDidChangeNotification:" name:MRAVEndpointVolumeMutedDidChangeNotification object:self->_uglEndpoint];

  v21 = +[NSNotificationCenter defaultCenter];
  [v21 addObserver:self selector:"_handleEndpointVolumeMuteDidChangeNotification:" name:v20 object:self->_localEndpoint];

  v22 = +[NSNotificationCenter defaultCenter];
  v23 = MRExternalDeviceDeviceInfoDidChangeNotification;
  v24 = [(MRDUGLExternalDevice *)self ugl];
  [v22 addObserver:self selector:"_handleExternalDeviceDeviceInfoDidChange:" name:v23 object:v24];

  v25 = +[NSNotificationCenter defaultCenter];
  v26 = kMRExternalDeviceConnectionStateDidChangeNotification;
  v27 = [(MRDUGLExternalDevice *)self ugl];
  [v25 addObserver:self selector:"_handleExternalDeviceConnectionStateDidChange:" name:v26 object:v27];

  v28 = +[NSNotificationCenter defaultCenter];
  [v28 addObserver:self selector:"_handleLocalDeviceDeviceInfoDidChange:" name:kMRActiveDeviceInfoDidChangeNotification object:0];
}

- (void)_handleEndpointDidChangeOutputDeviceNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v8 = [(MRDUGLExternalDevice *)self uglEndpoint];
  v9 = v8;
  if (v5 != v8)
  {

LABEL_4:
    externalOutputContext = self->_externalOutputContext;
    v13 = v7;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [(MRExternalOutputContextDataSource *)externalOutputContext updateOutputDevices:v12];

    goto LABEL_5;
  }

  v10 = [v7 isLocallySourced];

  if ((v10 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_handleEndpointDidRemoveOutputDeviceNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v8 = [(MRDUGLExternalDevice *)self uglEndpoint];
  v9 = v8;
  if (v5 != v8)
  {

LABEL_4:
    externalOutputContext = self->_externalOutputContext;
    v12 = [v7 uid];
    v14 = v12;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [(MRExternalOutputContextDataSource *)externalOutputContext removeOutputDevices:v13];

    goto LABEL_5;
  }

  v10 = [v7 isLocallySourced];

  if ((v10 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_handleEndpointVolumeDidChangeNotification:(id)a3
{
  v4 = a3;
  v16 = [v4 object];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:MRAVEndpointVolumeUserInfoKey];
  [v8 floatValue];
  v10 = v9;

  v11 = [(MRDUGLExternalDevice *)self uglEndpoint];
  if (v16 == v11)
  {
    v12 = [v6 isLocallySourced];

    if (v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  externalOutputContext = self->_externalOutputContext;
  v14 = [v6 uid];
  LODWORD(v15) = v10;
  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolume:v14 outputDeviceUID:v15];

LABEL_5:
}

- (void)_handleEndpointVolumeCapabilitiesDidChangeNotification:(id)a3
{
  v4 = a3;
  v14 = [v4 object];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:MRAVEndpointVolumeControlCapabilitiesUserInfoKey];
  v9 = [v8 intValue];

  v10 = [(MRDUGLExternalDevice *)self uglEndpoint];
  if (v14 == v10)
  {
    v11 = [v6 isLocallySourced];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  externalOutputContext = self->_externalOutputContext;
  v13 = [v6 uid];
  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolumeControlCapabilities:v9 outputDeviceUID:v13];

LABEL_5:
}

- (void)_handleEndpointVolumeMuteDidChangeNotification:(id)a3
{
  v4 = a3;
  v14 = [v4 object];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:MRAVEndpointVolumeMutedUserInfoKey];
  v9 = [v8 BOOLValue];

  v10 = [(MRDUGLExternalDevice *)self uglEndpoint];
  if (v14 == v10)
  {
    v11 = [v6 isLocallySourced];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  externalOutputContext = self->_externalOutputContext;
  v13 = [v6 uid];
  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolumeMuted:v9 outputDeviceUID:v13];

LABEL_5:
}

- (void)_handleExternalDeviceConnectionStateDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:kMRExternalDeviceConnectionStateUserInfoKey];
  v7 = [v6 intValue];

  externalOutputContext = self->_externalOutputContext;
  if (v7 == 2)
  {
    v9 = [(MRAVEndpoint *)self->_uglEndpoint remoteSourcedOutputDevices];
    [(MRExternalOutputContextDataSource *)externalOutputContext updateOutputDevices:v9];
  }

  else
  {
    v10 = [(MRExternalOutputContextDataSource *)self->_externalOutputContext outputDevices];
    v11 = [v10 msv_filter:&stru_1004C0418];
    v9 = [v11 msv_map:&stru_1004C0438];

    [(MRExternalOutputContextDataSource *)self->_externalOutputContext removeOutputDevices:v9];
  }

  v14 = +[NSNotificationCenter defaultCenter];
  v12 = [v4 name];
  v13 = [v4 userInfo];

  [v14 postNotificationName:v12 object:self userInfo:v13];
}

- (void)_handleExternalDeviceDeviceInfoDidChange:(id)a3
{
  v4 = a3;
  v7 = +[NSNotificationCenter defaultCenter];
  v5 = [v4 name];
  v6 = [v4 userInfo];

  [v7 postNotificationName:v5 object:self userInfo:v6];
}

- (void)_handleLocalDeviceDeviceInfoDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 mr_deviceInfo];
  v6 = [v5 groupUID];
  v7 = [v4 mr_previousDeviceInfo];

  v8 = [v7 groupUID];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {

    [(MRDUGLExternalDevice *)self _verifyUGL];
  }
}

- (void)_fetchEndpointForOutputDeviceUID:(id)a3 details:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSDate now];
  v12 = [NSMutableString alloc];
  v13 = [v9 requestID];
  v14 = [v12 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.fetchEndpointForOutputDeviceUID", v13];

  if (v8)
  {
    [(__CFString *)v14 appendFormat:@" for %@", v8];
  }

  if (self)
  {
    [(__CFString *)v14 appendFormat:@" because %@", self];
  }

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10018A144;
  v35[3] = &unk_1004BAE50;
  v35[4] = self;
  v36 = @"MRDUGLExternalDevice.fetchEndpointForOutputDeviceUID";
  v16 = v9;
  v37 = v16;
  v17 = v11;
  v38 = v17;
  v18 = v10;
  v39 = v18;
  v19 = objc_retainBlock(v35);
  if (v8)
  {
    p_localEndpoint = &self->_localEndpoint;
    if ([(MRAVEndpoint *)self->_localEndpoint containsOutputDeviceWithUID:v8])
    {
      v21 = _MRLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v16 requestID];
        *buf = 138543874;
        v41 = @"MRDUGLExternalDevice.fetchEndpointForOutputDeviceUID";
        v42 = 2114;
        v43 = v22;
        v44 = 2112;
        v45 = @"LocalEndpoint contains outputDeviceUID";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v23 = *p_localEndpoint;
LABEL_17:
      (v19[2])(v19, v23, 0);
      goto LABEL_18;
    }

    p_uglEndpoint = &self->_uglEndpoint;
    if ([(MRAVEndpoint *)self->_uglEndpoint containsOutputDeviceWithUID:v8])
    {
      v25 = _MRLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v16 requestID];
        *buf = 138543874;
        v41 = @"MRDUGLExternalDevice.fetchEndpointForOutputDeviceUID";
        v42 = 2114;
        v43 = v26;
        v44 = 2112;
        v45 = @"uglEndpoint contains outputDeviceUID";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v23 = *p_uglEndpoint;
      goto LABEL_17;
    }

    v27 = [(MRAVRoutingDiscoverySession *)self->_outputDeviceUIDLookup availableOutputDevices];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10018A54C;
    v33[3] = &unk_1004B8A40;
    v34 = v8;
    v28 = [v27 msv_firstWhere:v33];

    if ([v28 isLocallySourced])
    {
      v29 = p_localEndpoint;
    }

    else
    {
      v29 = p_uglEndpoint;
    }

    v30 = *v29;
    v31 = _MRLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v16 requestID];
      *buf = 138543874;
      v41 = @"MRDUGLExternalDevice.fetchEndpointForOutputDeviceUID";
      v42 = 2114;
      v43 = v32;
      v44 = 2112;
      v45 = @"Using isLocallySourced predicate...";
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    (v19[2])(v19, v30, 0);
  }

  else
  {
    (*(v18 + 2))(v18, self->_uglEndpoint, 0);
  }

LABEL_18:
}

- (void)_verifyUGL
{
  v3 = +[MRDMediaRemoteServer server];
  v8 = [v3 deviceInfo];

  v4 = [v8 groupUID];
  v5 = [(MRAVEndpoint *)self->_uglEndpoint deviceInfo];
  v6 = [v5 groupUID];
  if (v4 != v6 && ([v4 isEqual:v6] & 1) == 0)
  {
    v7 = [[NSError alloc] initWithMRError:139];
    [(MRDUGLExternalDevice *)self disconnect:v7];
  }
}

@end