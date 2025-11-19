@interface MRDOutputDeviceRoutingDataSource
- (BOOL)currentRouteSupportsVolumeControl;
- (BOOL)setPickedSystemRoute:(id)a3 withPassword:(id)a4 forSource:(unsigned int)a5;
- (BOOL)unpickAirPlayRoutes;
- (MRDOutputDeviceRoutingDataSource)init;
- (id)pickableRoutesForCategory:(id)a3 source:(unsigned int)a4;
- (id)pickedRouteForCategory:(id)a3 source:(unsigned int)a4;
- (unsigned)discoveryMode;
- (void)setDiscoveryMode:(unsigned int)a3;
@end

@implementation MRDOutputDeviceRoutingDataSource

- (MRDOutputDeviceRoutingDataSource)init
{
  v8.receiver = self;
  v8.super_class = MRDOutputDeviceRoutingDataSource;
  v2 = [(MRDAVRoutingDataSource *)&v8 init];
  if (v2)
  {
    v3 = [[AVOutputDeviceDiscoverySession alloc] initWithDeviceFeatures:1];
    discoverySession = v2->_discoverySession;
    v2->_discoverySession = v3;

    v5 = objc_alloc_init(NSMutableArray);
    activeReconnaissanceSessions = v2->_activeReconnaissanceSessions;
    v2->_activeReconnaissanceSessions = v5;
  }

  return v2;
}

- (unsigned)discoveryMode
{
  v2 = [(AVOutputDeviceDiscoverySession *)self->_discoverySession discoveryMode];
  if ((v2 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_10044E820[(v2 - 1)];
  }
}

- (void)setDiscoveryMode:(unsigned int)a3
{
  if (a3 - 1 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_10044E830[a3 - 1];
  }

  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ODDSRouting] Setting system discovery mode to %{public}@", &v7, 0xCu);
  }

  [(AVOutputDeviceDiscoverySession *)self->_discoverySession setDiscoveryMode:v4];
}

- (BOOL)currentRouteSupportsVolumeControl
{
  v2 = [(MRDOutputDeviceRoutingDataSource *)self _activeSystemContext];
  v3 = [v2 outputDevice];

  LOBYTE(v2) = [v3 canSetVolume];
  return v2;
}

- (id)pickableRoutesForCategory:(id)a3 source:(unsigned int)a4
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(AVOutputDeviceDiscoverySession *)self->_discoverySession availableOutputDevices];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[MRDAVOutputDeviceRoute alloc] initWithAVOutputDevice:*(*(&v13 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)pickedRouteForCategory:(id)a3 source:(unsigned int)a4
{
  v5 = [MRDAVOutputDeviceRoute alloc];
  v6 = [(MRDOutputDeviceRoutingDataSource *)self _activeSystemContext];
  v7 = [v6 outputDevice];
  v8 = [(MRDAVOutputDeviceRoute *)v5 initWithAVOutputDevice:v7];

  return v8;
}

- (BOOL)setPickedSystemRoute:(id)a3 withPassword:(id)a4 forSource:(unsigned int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 uniqueIdentifier];
  v10 = 0;
  if (v8 && AVOutputContextSetOutputDevicePasswordKey)
  {
    v44 = AVOutputContextSetOutputDevicePasswordKey;
    v45 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[ODDSRouting] Setting picked system route to: %{public}@ with password %@", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(MRDOutputDeviceRoutingDataSource *)self _activeSystemContext];
    v13 = [v7 avOutputDevice];
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[ODDSRouting] Route is an output device-based route. Setting the following device on the output context: %{public}@", buf, 0xCu);
    }

    [v12 setOutputDevice:v13 options:v10];
LABEL_22:
    v19 = 1;
    goto LABEL_23;
  }

  if (v9 && ([v7 isSpeakerRoute] & 1) == 0)
  {
    v38 = 0;
    v20 = MRComputeBaseRouteUID();
    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[ODDSRouting] Route is not an output device-based route. Beginning search for device matching UID %{public}@", buf, 0xCu);
    }

    v22 = [MRRequestDetails alloc];
    v29 = [v22 initWithInitiator:MRRequestDetailsInitiatorInfer requestID:0 reason:@"MRDAVRoutingDataSource.setPickedSystemRoute"];
    v23 = [MRAVReconnaissanceSession alloc];
    v43 = v20;
    v24 = [NSArray arrayWithObjects:&v43 count:1];
    v25 = [v23 initWithOutputDeviceUIDs:v24 features:1 details:v29];

    [v25 setUseWeakMatching:1];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v40 = sub_10003501C;
    v41 = sub_1000359C4;
    v26 = self;
    v42 = v26;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = sub_10003501C;
    v36[4] = sub_1000359C4;
    v27 = v25;
    v37 = v27;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10008735C;
    v30[3] = &unk_1004B8F20;
    v33 = v36;
    v35 = v38;
    v31 = v10;
    v32 = v7;
    v34 = buf;
    [v27 beginSearchWithTimeout:v30 completion:5.0];
    [(NSMutableArray *)v26->_activeReconnaissanceSessions addObject:v27];

    _Block_object_dispose(v36, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_22;
  }

  if ([v7 isSpeakerRoute])
  {
    v15 = +[AVOutputContext sharedSystemScreenContext];
    v16 = +[AVOutputContext sharedAudioPresentationOutputContext];
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[ODDSRouting] Requested to pick speaker route. Clearing output devices from system screen and system music contexts: %{public}@ %{public}@", buf, 0x16u);
    }

    [v15 setOutputDevice:0 options:0];
    [v16 setOutputDevices:&__NSArray0__struct];

    goto LABEL_22;
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1003A5D40(v18);
  }

  v19 = 0;
LABEL_23:

  return v19;
}

- (BOOL)unpickAirPlayRoutes
{
  v2 = [(MRDOutputDeviceRoutingDataSource *)self _activeSystemContext];
  [v2 setOutputDevice:0 options:0];

  return 1;
}

@end