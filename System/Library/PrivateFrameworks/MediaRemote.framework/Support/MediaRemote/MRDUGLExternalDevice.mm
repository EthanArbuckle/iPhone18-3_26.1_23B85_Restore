@interface MRDUGLExternalDevice
- (BOOL)wantsNowPlayingArtworkNotifications;
- (BOOL)wantsNowPlayingNotifications;
- (BOOL)wantsOutputDeviceNotifications;
- (BOOL)wantsSystemEndpointNotifications;
- (BOOL)wantsVolumeNotifications;
- (MRDUGLExternalDevice)initWithExternalDevice:(id)device endpoint:(id)endpoint;
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
- (void)_fetchEndpointForOutputDeviceUID:(id)d details:(id)details completion:(id)completion;
- (void)_handleEndpointDidChangeOutputDeviceNotification:(id)notification;
- (void)_handleEndpointDidRemoveOutputDeviceNotification:(id)notification;
- (void)_handleEndpointVolumeCapabilitiesDidChangeNotification:(id)notification;
- (void)_handleEndpointVolumeDidChangeNotification:(id)notification;
- (void)_handleEndpointVolumeMuteDidChangeNotification:(id)notification;
- (void)_handleExternalDeviceConnectionStateDidChange:(id)change;
- (void)_handleExternalDeviceDeviceInfoDidChange:(id)change;
- (void)_handleLocalDeviceDeviceInfoDidChange:(id)change;
- (void)_verifyUGL;
- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
- (void)dealloc;
- (void)disconnect:(id)disconnect;
- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion;
- (void)muteOutputDeviceVolume:(BOOL)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)ping:(double)ping callback:(id)callback withQueue:(id)queue;
- (void)registerForNotifications;
- (void)removeFromParentGroup:(id)group queue:(id)queue completion:(id)completion;
- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)requestMicrophoneConnectionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)sendButtonEvent:(_MRHIDButtonEvent)event;
- (void)sendClientUpdatesConfigMessage;
- (void)sendCustomData:(id)data withName:(id)name;
- (void)setCustomDataCallback:(id)callback withQueue:(id)queue;
- (void)setHeadTrackedSpatialAudioMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)setSubscribedPlayerPaths:(id)paths;
@end

@implementation MRDUGLExternalDevice

- (MRDUGLExternalDevice)initWithExternalDevice:(id)device endpoint:(id)endpoint
{
  deviceCopy = device;
  endpointCopy = endpoint;
  v37.receiver = self;
  v37.super_class = MRDUGLExternalDevice;
  _init = [(MRDUGLExternalDevice *)&v37 _init];
  v10 = _init;
  if (_init)
  {
    _init->_accessLock._os_unfair_lock_opaque = 0;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("MRDUGLExternalDevice.notificationQueue", v11);
    notificationQueue = v10->_notificationQueue;
    v10->_notificationQueue = v12;

    v14 = [MRConcreteEndpoint alloc];
    designatedGroupLeader = [endpointCopy designatedGroupLeader];
    outputDevices = [endpointCopy outputDevices];
    v17 = [v14 initWithDesignatedGroupLeader:designatedGroupLeader outputDevices:outputDevices preferredSuffix:0 connectionType:{objc_msgSend(endpointCopy, "connectionType")}];
    uglEndpoint = v10->_uglEndpoint;
    v10->_uglEndpoint = v17;

    objc_storeStrong(&v10->_ugl, device);
    [(MRAVEndpoint *)v10->_uglEndpoint setExternalDevice:deviceCopy];
    v19 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    localEndpoint = v10->_localEndpoint;
    v10->_localEndpoint = v19;

    v21 = [MRExternalOutputContextDataSource alloc];
    v22 = [NSString alloc];
    v23 = [(MRDUGLExternalDevice *)v10 uid];
    name = [(MRDUGLExternalDevice *)v10 name];
    v25 = [v22 initWithFormat:@"MRDUGLExternalDevice-%@-%@", v23, name];
    v26 = [v21 initWithUniqueIdentifier:v25];
    externalOutputContext = v10->_externalOutputContext;
    v10->_externalOutputContext = v26;

    v28 = v10->_externalOutputContext;
    syncedOutputDevices = [(MRAVEndpoint *)v10->_localEndpoint syncedOutputDevices];
    [(MRExternalOutputContextDataSource *)v28 updateOutputDevices:syncedOutputDevices];

    v30 = v10->_externalOutputContext;
    remoteSourcedOutputDevices = [(MRAVEndpoint *)v10->_uglEndpoint remoteSourcedOutputDevices];
    [(MRExternalOutputContextDataSource *)v30 updateOutputDevices:remoteSourcedOutputDevices];

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
      v41 = deviceCopy;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc MRDUGLExternalDevice %{public}@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MRDUGLExternalDevice;
  [(MRDUGLExternalDevice *)&v4 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  uglEndpoint = [(MRDUGLExternalDevice *)self uglEndpoint];
  uniqueIdentifier = [uglEndpoint uniqueIdentifier];
  deviceInfo = [(MRDUGLExternalDevice *)self deviceInfo];
  name = [deviceInfo name];
  v8 = [NSString stringWithFormat:@"<%@:%p-%@(%@)>", v3, self, uniqueIdentifier, name];

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
  name = [v2 name];

  return name;
}

- (id)customOrigin
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  customOrigin = [v2 customOrigin];

  return customOrigin;
}

- (id)deviceInfo
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  deviceInfo = [v2 deviceInfo];

  return deviceInfo;
}

- (unsigned)connectionState
{
  os_unfair_lock_lock(&self->_accessLock);
  isDisconnected = [(MRDUGLExternalDevice *)self isDisconnected];
  os_unfair_lock_unlock(&self->_accessLock);
  if (isDisconnected)
  {
    return 3;
  }

  v5 = [(MRDUGLExternalDevice *)self ugl];
  connectionState = [v5 connectionState];

  return connectionState;
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
  subscribedPlayerPaths = [v2 subscribedPlayerPaths];

  return subscribedPlayerPaths;
}

- (void)setSubscribedPlayerPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [(MRDUGLExternalDevice *)self ugl];
  [v5 setSubscribedPlayerPaths:pathsCopy];
}

- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v16 = +[NSDate now];
  v17 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.setOutputDeviceVolume", requestID];

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
  volumeCopy = volume;
  v35[4] = self;
  v36 = @"MRDUGLExternalDevice.setOutputDeviceVolume";
  v21 = detailsCopy;
  v37 = v21;
  v38 = v16;
  v22 = queueCopy;
  v39 = v22;
  v40 = completionCopy;
  v23 = completionCopy;
  v24 = v16;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100185FEC;
  v29[3] = &unk_1004C03A8;
  volumeCopy2 = volume;
  v30 = dCopy;
  v31 = v21;
  v32 = v22;
  v33 = objc_retainBlock(v35);
  v25 = v33;
  v26 = v22;
  v27 = v21;
  v28 = dCopy;
  [(MRDUGLExternalDevice *)self _fetchEndpointForOutputDeviceUID:v28 details:v27 completion:v29];
}

- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v16 = +[NSDate now];
  v17 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.adjustOutputDeviceVolume", requestID];

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
  volumeCopy = volume;
  v35[4] = self;
  v36 = @"MRDUGLExternalDevice.adjustOutputDeviceVolume";
  v21 = detailsCopy;
  v37 = v21;
  v38 = v16;
  v22 = queueCopy;
  v39 = v22;
  v40 = completionCopy;
  v23 = completionCopy;
  v24 = v16;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10018674C;
  v29[3] = &unk_1004C03D0;
  v33 = objc_retainBlock(v35);
  volumeCopy2 = volume;
  v30 = dCopy;
  v31 = v21;
  v32 = v22;
  v25 = v33;
  v26 = v22;
  v27 = v21;
  v28 = dCopy;
  [(MRDUGLExternalDevice *)self _fetchEndpointForOutputDeviceUID:v28 details:v27 completion:v29];
}

- (void)muteOutputDeviceVolume:(BOOL)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v16 = +[NSDate now];
  v17 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.muteOutputDeviceVolume", requestID];

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
  volumeCopy = volume;
  v35[4] = self;
  v36 = @"MRDUGLExternalDevice.muteOutputDeviceVolume";
  v21 = detailsCopy;
  v37 = v21;
  v38 = v16;
  v22 = queueCopy;
  v39 = v22;
  v40 = completionCopy;
  v23 = completionCopy;
  v24 = v16;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100186EB4;
  v29[3] = &unk_1004BA2C0;
  volumeCopy2 = volume;
  v30 = dCopy;
  v31 = v21;
  v32 = v22;
  v33 = objc_retainBlock(v35);
  v25 = v33;
  v26 = v22;
  v27 = v21;
  v28 = dCopy;
  [(MRDUGLExternalDevice *)self _fetchEndpointForOutputDeviceUID:v28 details:v27 completion:v29];
}

- (id)_label
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  deviceInfo = [(MRDUGLExternalDevice *)self deviceInfo];
  name = [deviceInfo name];
  v7 = [v3 initWithFormat:@"<%@:%p-%@>", v4, self, name];

  return v7;
}

- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  queue = queue;
  completionCopy = completion;
  v9 = +[NSDate now];
  v10 = [NSMutableString alloc];
  requestDetails = [requestCopy requestDetails];
  requestID = [requestDetails requestID];
  v13 = [v10 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.modifyTopologyWithRequest", requestID];

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
  v54 = requestCopy;
  v75 = v54;
  v48 = v9;
  v76 = v48;
  v47 = completionCopy;
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
        availableOutputDevices = [(MRAVRoutingDiscoverySession *)self->_outputDeviceUIDLookup availableOutputDevices];
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_100187B7C;
        v68[3] = &unk_1004B8A40;
        v68[4] = v18;
        v20 = [availableOutputDevices msv_firstWhere:v68];

        if (![v20 isLocallySourced])
        {
          v21 = _MRLogForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            requestDetails2 = [v54 requestDetails];
            requestID2 = [requestDetails2 requestID];
            *buf = 138543874;
            *&buf[4] = @"MRDUGLExternalDevice.modifyTopologyWithRequest";
            *&buf[12] = 2114;
            *&buf[14] = requestID2;
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
            requestDetails3 = [v54 requestDetails];
            requestID3 = [requestDetails3 requestID];
            *buf = 138543874;
            *&buf[4] = @"MRDUGLExternalDevice.modifyTopologyWithRequest";
            *&buf[12] = 2114;
            *&buf[14] = requestID3;
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
          requestDetails4 = [v54 requestDetails];
          requestID4 = [requestDetails4 requestID];
          *buf = 138543874;
          *&buf[4] = @"MRDUGLExternalDevice.modifyTopologyWithRequest";
          *&buf[12] = 2114;
          *&buf[14] = requestID4;
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
    localEndpoint = [(MRDUGLExternalDevice *)self localEndpoint];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100187B88;
    v65[3] = &unk_1004B69F8;
    v67 = buf;
    v32 = v29;
    v66 = v32;
    [localEndpoint modifyTopologyWithRequest:v30 withReplyQueue:queue completion:v65];

    uglEndpoint = [(MRDUGLExternalDevice *)self uglEndpoint];
    remoteSourcedOutputDevices = [uglEndpoint remoteSourcedOutputDevices];

    if ([remoteSourcedOutputDevices count])
    {
      dispatch_group_enter(v32);
      v35 = [MRRequestDetails alloc];
      requestDetails5 = [v54 requestDetails];
      v37 = [v35 initChildWithParent:requestDetails5 reason:@"Clear UGL when routing locally"];

      v38 = [MRGroupTopologyModificationRequest alloc];
      v39 = +[MRDeviceInfoRequest localDeviceInfo];
      deviceUID = [v39 deviceUID];
      v78 = deviceUID;
      v41 = [NSArray arrayWithObjects:&v78 count:1];
      v42 = [v38 initWithRequestDetails:v37 type:3 outputDeviceUIDs:v41];

      uglEndpoint2 = [(MRDUGLExternalDevice *)self uglEndpoint];
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_100187BF0;
      v62[3] = &unk_1004B69F8;
      v64 = buf;
      v63 = v32;
      [uglEndpoint2 modifyTopologyWithRequest:v42 withReplyQueue:queue completion:v62];
    }
  }

  if ([v53 count])
  {
    dispatch_group_enter(v29);
    v44 = [v54 copyWithOutputDeviceUIDs:v53];
    uglEndpoint3 = [(MRDUGLExternalDevice *)self uglEndpoint];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100187C58;
    v59[3] = &unk_1004B69F8;
    v61 = buf;
    v60 = v29;
    [uglEndpoint3 modifyTopologyWithRequest:v44 withReplyQueue:queue completion:v59];
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

- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  dCopy = d;
  modeCopy = mode;
  localEndpoint = [(MRDUGLExternalDevice *)self localEndpoint];
  [localEndpoint setListeningMode:modeCopy outputDeviceUID:dCopy queue:queueCopy completion:completionCopy];
}

- (void)setHeadTrackedSpatialAudioMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  dCopy = d;
  modeCopy = mode;
  localEndpoint = [(MRDUGLExternalDevice *)self localEndpoint];
  [localEndpoint setHeadTrackedSpatialAudioMode:modeCopy outputDeviceUID:dCopy queue:queueCopy completion:completionCopy];
}

- (void)ping:(double)ping callback:(id)callback withQueue:(id)queue
{
  queueCopy = queue;
  callbackCopy = callback;
  v10 = [(MRDUGLExternalDevice *)self ugl];
  [v10 ping:callbackCopy callback:queueCopy withQueue:ping];
}

- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v9 = +[NSDate now];
  v10 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v11 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];
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
  uTF8String = [v16 UTF8String];
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_attr_make_with_qos_class(v18, v15, 0);
  v20 = dispatch_queue_create_with_target_V2(uTF8String, v19, self->_notificationQueue);

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100188304;
  v29[3] = &unk_1004BF2B8;
  v36 = v15;
  v30 = @"MRDUGLExternalDevice.connectWithOptions";
  v31 = v10;
  selfCopy = self;
  v33 = v9;
  v34 = v20;
  v35 = completionCopy;
  v21 = v20;
  v22 = completionCopy;
  v23 = v9;
  v24 = v10;
  v25 = objc_retainBlock(v29);
  v26 = [(MRDUGLExternalDevice *)self ugl];
  [v26 connectWithOptions:options userInfo:infoCopy completion:v25];
}

- (void)disconnect:(id)disconnect
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

- (void)removeFromParentGroup:(id)group queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  groupCopy = group;
  localEndpoint = [(MRDUGLExternalDevice *)self localEndpoint];
  [localEndpoint removeOutputDeviceFromParentGroup:groupCopy queue:queueCopy completion:completionCopy];
}

- (void)requestMicrophoneConnectionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  localEndpoint = [(MRDUGLExternalDevice *)self localEndpoint];
  [localEndpoint requestMicrophoneConnection:queueCopy completion:completionCopy];
}

- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  detailsCopy = details;
  v11 = [(MRDUGLExternalDevice *)self ugl];
  [v11 requestGroupSessionWithDetails:detailsCopy queue:queueCopy completion:completionCopy];
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  detailsCopy = details;
  dsCopy = ds;
  v14 = [(MRDUGLExternalDevice *)self ugl];
  [v14 createHostedEndpointWithOutputDeviceUIDs:dsCopy details:detailsCopy queue:queueCopy completion:completionCopy];
}

- (id)supportedMessages
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  supportedMessages = [v2 supportedMessages];

  return supportedMessages;
}

- (void)setCustomDataCallback:(id)callback withQueue:(id)queue
{
  queueCopy = queue;
  callbackCopy = callback;
  v8 = [(MRDUGLExternalDevice *)self ugl];
  [v8 setCustomDataCallback:callbackCopy withQueue:queueCopy];
}

- (void)sendCustomData:(id)data withName:(id)name
{
  nameCopy = name;
  dataCopy = data;
  v8 = [(MRDUGLExternalDevice *)self ugl];
  [v8 sendCustomData:dataCopy withName:nameCopy];
}

- (BOOL)wantsNowPlayingNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  wantsNowPlayingNotifications = [v2 wantsNowPlayingNotifications];

  return wantsNowPlayingNotifications;
}

- (BOOL)wantsNowPlayingArtworkNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  wantsNowPlayingArtworkNotifications = [v2 wantsNowPlayingArtworkNotifications];

  return wantsNowPlayingArtworkNotifications;
}

- (BOOL)wantsVolumeNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  wantsVolumeNotifications = [v2 wantsVolumeNotifications];

  return wantsVolumeNotifications;
}

- (BOOL)wantsOutputDeviceNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  wantsOutputDeviceNotifications = [v2 wantsOutputDeviceNotifications];

  return wantsOutputDeviceNotifications;
}

- (BOOL)wantsSystemEndpointNotifications
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  wantsSystemEndpointNotifications = [v2 wantsSystemEndpointNotifications];

  return wantsSystemEndpointNotifications;
}

- (void)sendButtonEvent:(_MRHIDButtonEvent)event
{
  v3 = *&event.down;
  v4 = *&event.usagePage;
  v5 = [(MRDUGLExternalDevice *)self ugl];
  [v5 sendButtonEvent:{v4, v3}];
}

- (id)errorForCurrentState
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  errorForCurrentState = [v2 errorForCurrentState];

  return errorForCurrentState;
}

- (id)currentClientUpdatesConfigMessage
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  currentClientUpdatesConfigMessage = [v2 currentClientUpdatesConfigMessage];

  return currentClientUpdatesConfigMessage;
}

- (id)groupSessionToken
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  groupSessionToken = [v2 groupSessionToken];

  return groupSessionToken;
}

- (void)sendClientUpdatesConfigMessage
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  [v2 sendClientUpdatesConfigMessage];
}

- (id)lastConnectionError
{
  v2 = [(MRDUGLExternalDevice *)self ugl];
  lastConnectionError = [v2 lastConnectionError];

  return lastConnectionError;
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

- (void)_handleEndpointDidChangeOutputDeviceNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  uglEndpoint = [(MRDUGLExternalDevice *)self uglEndpoint];
  v9 = uglEndpoint;
  if (object != uglEndpoint)
  {

LABEL_4:
    externalOutputContext = self->_externalOutputContext;
    v13 = v7;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [(MRExternalOutputContextDataSource *)externalOutputContext updateOutputDevices:v12];

    goto LABEL_5;
  }

  isLocallySourced = [v7 isLocallySourced];

  if ((isLocallySourced & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_handleEndpointDidRemoveOutputDeviceNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  uglEndpoint = [(MRDUGLExternalDevice *)self uglEndpoint];
  v9 = uglEndpoint;
  if (object != uglEndpoint)
  {

LABEL_4:
    externalOutputContext = self->_externalOutputContext;
    v12 = [v7 uid];
    v14 = v12;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [(MRExternalOutputContextDataSource *)externalOutputContext removeOutputDevices:v13];

    goto LABEL_5;
  }

  isLocallySourced = [v7 isLocallySourced];

  if ((isLocallySourced & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_handleEndpointVolumeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  userInfo2 = [notificationCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:MRAVEndpointVolumeUserInfoKey];
  [v8 floatValue];
  v10 = v9;

  uglEndpoint = [(MRDUGLExternalDevice *)self uglEndpoint];
  if (object == uglEndpoint)
  {
    isLocallySourced = [v6 isLocallySourced];

    if (isLocallySourced)
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

- (void)_handleEndpointVolumeCapabilitiesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  userInfo2 = [notificationCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:MRAVEndpointVolumeControlCapabilitiesUserInfoKey];
  intValue = [v8 intValue];

  uglEndpoint = [(MRDUGLExternalDevice *)self uglEndpoint];
  if (object == uglEndpoint)
  {
    isLocallySourced = [v6 isLocallySourced];

    if (isLocallySourced)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  externalOutputContext = self->_externalOutputContext;
  v13 = [v6 uid];
  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolumeControlCapabilities:intValue outputDeviceUID:v13];

LABEL_5:
}

- (void)_handleEndpointVolumeMuteDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  userInfo2 = [notificationCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:MRAVEndpointVolumeMutedUserInfoKey];
  bOOLValue = [v8 BOOLValue];

  uglEndpoint = [(MRDUGLExternalDevice *)self uglEndpoint];
  if (object == uglEndpoint)
  {
    isLocallySourced = [v6 isLocallySourced];

    if (isLocallySourced)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  externalOutputContext = self->_externalOutputContext;
  v13 = [v6 uid];
  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolumeMuted:bOOLValue outputDeviceUID:v13];

LABEL_5:
}

- (void)_handleExternalDeviceConnectionStateDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:kMRExternalDeviceConnectionStateUserInfoKey];
  intValue = [v6 intValue];

  externalOutputContext = self->_externalOutputContext;
  if (intValue == 2)
  {
    remoteSourcedOutputDevices = [(MRAVEndpoint *)self->_uglEndpoint remoteSourcedOutputDevices];
    [(MRExternalOutputContextDataSource *)externalOutputContext updateOutputDevices:remoteSourcedOutputDevices];
  }

  else
  {
    outputDevices = [(MRExternalOutputContextDataSource *)self->_externalOutputContext outputDevices];
    v11 = [outputDevices msv_filter:&stru_1004C0418];
    remoteSourcedOutputDevices = [v11 msv_map:&stru_1004C0438];

    [(MRExternalOutputContextDataSource *)self->_externalOutputContext removeOutputDevices:remoteSourcedOutputDevices];
  }

  v14 = +[NSNotificationCenter defaultCenter];
  name = [changeCopy name];
  userInfo2 = [changeCopy userInfo];

  [v14 postNotificationName:name object:self userInfo:userInfo2];
}

- (void)_handleExternalDeviceDeviceInfoDidChange:(id)change
{
  changeCopy = change;
  v7 = +[NSNotificationCenter defaultCenter];
  name = [changeCopy name];
  userInfo = [changeCopy userInfo];

  [v7 postNotificationName:name object:self userInfo:userInfo];
}

- (void)_handleLocalDeviceDeviceInfoDidChange:(id)change
{
  changeCopy = change;
  mr_deviceInfo = [changeCopy mr_deviceInfo];
  groupUID = [mr_deviceInfo groupUID];
  mr_previousDeviceInfo = [changeCopy mr_previousDeviceInfo];

  groupUID2 = [mr_previousDeviceInfo groupUID];
  v9 = [groupUID isEqualToString:groupUID2];

  if ((v9 & 1) == 0)
  {

    [(MRDUGLExternalDevice *)self _verifyUGL];
  }
}

- (void)_fetchEndpointForOutputDeviceUID:(id)d details:(id)details completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  completionCopy = completion;
  v11 = +[NSDate now];
  v12 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v14 = [v12 initWithFormat:@"%@<%@>", @"MRDUGLExternalDevice.fetchEndpointForOutputDeviceUID", requestID];

  if (dCopy)
  {
    [(__CFString *)v14 appendFormat:@" for %@", dCopy];
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
  v16 = detailsCopy;
  v37 = v16;
  v17 = v11;
  v38 = v17;
  v18 = completionCopy;
  v39 = v18;
  v19 = objc_retainBlock(v35);
  if (dCopy)
  {
    p_localEndpoint = &self->_localEndpoint;
    if ([(MRAVEndpoint *)self->_localEndpoint containsOutputDeviceWithUID:dCopy])
    {
      v21 = _MRLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        requestID2 = [v16 requestID];
        *buf = 138543874;
        v41 = @"MRDUGLExternalDevice.fetchEndpointForOutputDeviceUID";
        v42 = 2114;
        v43 = requestID2;
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
    if ([(MRAVEndpoint *)self->_uglEndpoint containsOutputDeviceWithUID:dCopy])
    {
      v25 = _MRLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        requestID3 = [v16 requestID];
        *buf = 138543874;
        v41 = @"MRDUGLExternalDevice.fetchEndpointForOutputDeviceUID";
        v42 = 2114;
        v43 = requestID3;
        v44 = 2112;
        v45 = @"uglEndpoint contains outputDeviceUID";
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v23 = *p_uglEndpoint;
      goto LABEL_17;
    }

    availableOutputDevices = [(MRAVRoutingDiscoverySession *)self->_outputDeviceUIDLookup availableOutputDevices];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10018A54C;
    v33[3] = &unk_1004B8A40;
    v34 = dCopy;
    v28 = [availableOutputDevices msv_firstWhere:v33];

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
      requestID4 = [v16 requestID];
      *buf = 138543874;
      v41 = @"MRDUGLExternalDevice.fetchEndpointForOutputDeviceUID";
      v42 = 2114;
      v43 = requestID4;
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
  deviceInfo = [v3 deviceInfo];

  groupUID = [deviceInfo groupUID];
  deviceInfo2 = [(MRAVEndpoint *)self->_uglEndpoint deviceInfo];
  groupUID2 = [deviceInfo2 groupUID];
  if (groupUID != groupUID2 && ([groupUID isEqual:groupUID2] & 1) == 0)
  {
    v7 = [[NSError alloc] initWithMRError:139];
    [(MRDUGLExternalDevice *)self disconnect:v7];
  }
}

@end