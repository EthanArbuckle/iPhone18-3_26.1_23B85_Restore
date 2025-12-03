@interface MRDDeviceInfoDataSource
+ (id)_workerQueue;
- (BOOL)_calculateIsAirPlayVideoActive;
- (BOOL)isAirPlayVideoActive;
- (MRDDeviceInfoDataSource)init;
- (MRDDeviceInfoDataSourceDelegate)delegate;
- (MRDeviceInfo)deviceInfo;
- (NSString)deviceName;
- (NSString)deviceUID;
- (id)_currentDeviceInfo;
- (id)_deviceInfoArchiveClasses;
- (id)_deviceInfoFilePath;
- (id)_readDeviceInfo;
- (id)_readLegacyDeviceInfoIdentifier;
- (id)allClusteredDevices;
- (id)clusteredDevices;
- (id)discoverySession;
- (id)networkIdentifier;
- (void)_deviceInfoDidChange;
- (void)_deviceInfoDidChangeWithDeviceInfo:(id)info;
- (void)_otherDeviceInfoDidChange:(id)change;
- (void)_writeDeviceInfo:(id)info toPath:(id)path;
- (void)dealloc;
- (void)handleGroupSessionDidStartEligibilityMonitoringNotification:(id)notification;
- (void)handleGroupSessionServerDidStartNotification:(id)notification;
- (void)handleNowPlayingInfoDidChangeNotification:(id)notification;
- (void)reloadDeviceInfoImmediately;
@end

@implementation MRDDeviceInfoDataSource

- (MRDeviceInfo)deviceInfo
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_deviceInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_deviceInfoDidChange
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_deviceInfoReloadScheduled)
  {
    self->_deviceInfoReloadScheduled = 1;
    v3 = dispatch_time(0, 100000000);
    _workerQueue = [objc_opt_class() _workerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100024358;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_after(v3, _workerQueue, block);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_currentDeviceInfo
{
  v93 = +[NSDate date];
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];

  v92 = uUIDString;
  v4 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"CurrentDeviceInfo", uUIDString];
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v103 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v6 = +[MRAVOutputContext sharedAudioPresentationContext];
  v7 = objc_alloc_init(MRDeviceInfo);
  deviceName = [(MRDDeviceInfoDataSource *)self deviceName];
  [v7 setName:deviceName];

  v9 = MSVCopyLocalizedModelName();
  [v7 setLocalizedModelName:v9];

  networkIdentifier = [(MRDDeviceInfoDataSource *)self networkIdentifier];
  [v7 setManagedConfigurationDeviceIdentifier:networkIdentifier];

  v11 = MSVCopySystemBuildVersion();
  [v7 setBuildVersion:v11];

  [v7 setProtocolVersion:{+[MRProtocolMessage currentProtocolVersion](MRProtocolMessage, "currentProtocolVersion")}];
  v12 = +[MCProfileConnection sharedConnection];
  v13 = [v12 effectiveBoolValueForSetting:MCFeatureRemoteAppPairingAllowed];

  [v7 setPairingAllowed:v13 != 2];
  if (qword_1005293B0 != -1)
  {
    sub_1003A8614();
  }

  [v7 setModelID:qword_1005293A0];
  [v7 setComputerName:qword_1005293A8];
  [v7 setDeviceClass:{+[MRDeviceInfo deviceClass](MRDeviceInfo, "deviceClass")}];
  v14 = MRMediaRemoteCopyLocalAirPlayReceiverTightSyncIdentity();
  [v7 setTightSyncUID:v14];

  v15 = +[MRAVClusterController sharedController];
  needsCommandRedirection = [v15 needsCommandRedirection];

  if (!needsCommandRedirection)
  {
    clusterLeaderUID = +[MRDMediaRemoteServer server];
    routingServer = [clusterLeaderUID routingServer];
    [v7 setProxyGroupPlayer:{objc_msgSend(routingServer, "isSilentPrimary")}];
    goto LABEL_9;
  }

  v17 = +[MRAVClusterController sharedController];
  clusterLeaderUID = [v17 clusterLeaderUID];

  if (clusterLeaderUID)
  {
    v19 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v19 nowPlayingServer];
    originClients = [nowPlayingServer originClients];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_1000E7F34;
    v100[3] = &unk_1004B83E8;
    clusterLeaderUID = clusterLeaderUID;
    v101 = clusterLeaderUID;
    v22 = [originClients msv_firstWhere:v100];

    deviceInfo = [v22 deviceInfo];
    [v7 setProxyGroupPlayer:{objc_msgSend(deviceInfo, "isProxyGroupPlayer")}];

    routingServer = v101;
LABEL_9:
  }

  v25 = MRMediaRemoteCopyLocalAirPlaySenderDefaultGroupIdentity();
  [v7 setSenderDefaultGroupUID:v25];

  v26 = MRMediaRemoteCopyLocalAirPlayGroupName();
  [v7 setGroupName:v26];

  [v7 setGroupLeader:MRMediaRemoteAirPlayReceiverGetIsGroupLeader()];
  v27 = +[MRDMediaRemoteServer server];
  routingServer2 = [v27 routingServer];
  [v7 setAirPlayActive:{objc_msgSend(routingServer2, "airplayActive")}];

  deviceUID = [(MRDDeviceInfoDataSource *)self deviceUID];
  [v7 setDeviceUID:deviceUID];

  v30 = MRMediaRemoteCopyLocalClusterID();
  [v7 setClusterID:v30];

  v31 = MRMediaRemoteCopyLocalClusterLeaderIdentity();
  [v7 setPreferredClusterLeaderID:v31];

  [v7 setClusterType:MRMediaRemoteCopyLocalAirPlayReceiverClusterType()];
  v32 = +[MRUserSettings currentSettings];
  [v7 setClusterAware:{objc_msgSend(v32, "useClusterDevices")}];

  [v7 setConfiguredClusterSize:MRMediaRemoteGetLocalClusterSize()];
  [v7 setClusterLeader:MRMediaRemoteIsClusterLeader()];
  contextID = [v6 contextID];
  [v7 setRoutingContextID:contextID];

  v91 = v6;
  outputDevices = [v6 outputDevices];
  v35 = objc_alloc_init(NSMutableArray);
  v36 = objc_alloc_init(NSMutableSet);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v37 = outputDevices;
  v38 = [v37 countByEnumeratingWithState:&v96 objects:v111 count:16];
  if (!v38)
  {
    goto LABEL_30;
  }

  v39 = v38;
  v40 = *v97;
  do
  {
    for (i = 0; i != v39; i = i + 1)
    {
      if (*v97 != v40)
      {
        objc_enumerationMutation(v37);
      }

      v42 = *(*(&v96 + 1) + 8 * i);
      if ([(__CFString *)v42 isLocalDevice])
      {
        tightSyncUID = [v7 tightSyncUID];
        v44 = tightSyncUID;
        if (tightSyncUID)
        {
          v45 = tightSyncUID;
        }

        else
        {
          v45 = @"LOCAL";
        }

        [v36 addObject:v45];
        goto LABEL_28;
      }

      logicalDeviceID = [(__CFString *)v42 logicalDeviceID];

      if (logicalDeviceID)
      {
        logicalDeviceID2 = [(__CFString *)v42 logicalDeviceID];
        goto LABEL_24;
      }

      v48 = [(__CFString *)v42 uid];

      if (v48)
      {
        logicalDeviceID2 = [(__CFString *)v42 uid];
LABEL_24:
        v44 = logicalDeviceID2;
        if (logicalDeviceID2)
        {
          v49 = [[MRDeviceInfo alloc] initWithOutputDevice:v42];
          [v35 addObject:v49];
          [v36 addObject:v44];

          goto LABEL_28;
        }
      }

      v44 = _MRLogForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v103 = v42;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[MRDDeviceInfoDataSource] unable to get an output device identifier, device will not be added to protobuf's grouped devices: %{public}@", buf, 0xCu);
      }

LABEL_28:
    }

    v39 = [v37 countByEnumeratingWithState:&v96 objects:v111 count:16];
  }

  while (v39);
LABEL_30:

  [v7 setGroupLogicalDeviceCount:{objc_msgSend(v36, "count")}];
  [v7 setGroupedDevices:v35];
  clusteredDevices = [(MRDDeviceInfoDataSource *)self clusteredDevices];
  [v7 setClusteredDevices:clusteredDevices];

  allClusteredDevices = [(MRDDeviceInfoDataSource *)self allClusteredDevices];
  [v7 setAllClusteredDevices:allClusteredDevices];

  if (MSVDeviceIsAppleTV())
  {
    [v7 setSupportsExtendedMotion:1];
  }

  v52 = +[MRUserSettings currentSettings];
  [v7 setSupportsSystemPairing:{objc_msgSend(v52, "useExternalDeviceSystemPairing")}];

  v53 = +[NSBundle mainBundle];
  bundleIdentifier = [v53 bundleIdentifier];
  [v7 setBundleIdentifier:bundleIdentifier];

  v95 = v53;
  infoDictionary = [v53 infoDictionary];
  v56 = [infoDictionary objectForKeyedSubscript:kCFBundleVersionKey];
  [v7 setBundleVersion:v56];

  _readDeviceInfo = [(MRDDeviceInfoDataSource *)self _readDeviceInfo];
  v58 = [_readDeviceInfo objectForKeyedSubscript:@"identifier"];
  [v7 setIdentifier:v58];

  v59 = MRMediaRemoteAirPlayReceiverCopyGroupIdentity();
  if (v59)
  {
LABEL_33:
    groupID = v59;
  }

  else
  {
    v61 = [v37 msv_firstWhere:&stru_1004BC2B8];
    groupID = [v61 groupID];

    if (!groupID)
    {
      v59 = [_readDeviceInfo objectForKeyedSubscript:@"defaultGroupUID"];
      goto LABEL_33;
    }
  }

  [v7 setGroupUID:groupID];
  v62 = MRMediaRemoteAirPlayReceiverCopyAirPlayGroupIdentity();
  if (v62)
  {
LABEL_36:
    airPlayGroupID = v62;
  }

  else
  {
    v64 = [v37 msv_firstWhere:&stru_1004BC2D8];
    airPlayGroupID = [v64 airPlayGroupID];

    if (!airPlayGroupID)
    {
      v62 = [_readDeviceInfo objectForKeyedSubscript:@"defaultGroupUID"];
      goto LABEL_36;
    }
  }

  [v7 setAirPlayGroupUID:airPlayGroupID];
  v65 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  [v7 setSystemMediaApplication:v65];

  v66 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
  [v7 setSystemPodcastApplication:v66];

  v67 = MRMediaRemoteCopyLocalDeviceSystemBooksApplicationDisplayID();
  [v7 setSystemBooksApplication:v67];

  v68 = MRMediaRemoteCopyLocalDeviceAirPlayReceiverDisplayID();
  v69 = v68;
  if (v68)
  {
    v110 = v68;
    v70 = [NSArray arrayWithObjects:&v110 count:1];
    [v7 setAirPlayReceivers:v70];
  }

  v90 = _readDeviceInfo;
  [v7 setSupportsSharedQueue:1];
  [v7 setSharedQueueVersion:3];
  [v7 setSupportsACL:1];
  v71 = +[MRUserSettings currentSettings];
  [v7 setSupportsMultiplayer:{objc_msgSend(v71, "supportMultiplayerHost")}];

  v72 = +[MRUserSettings currentSettings];
  v89 = v69;
  if (![v72 disableDUGLDuringAirPlayVideo])
  {

    goto LABEL_44;
  }

  isAirPlayVideoActive = [(MRDDeviceInfoDataSource *)self isAirPlayVideoActive];

  if ((isAirPlayVideoActive & 1) == 0)
  {
LABEL_44:
    [v7 setGroupContainsDiscoverableGroupLeader:MRMediaRemoteGetLocalGroupContainsDiscoverableGroupLeader()];
    [v7 setParentGroupContainsDiscoverableGroupLeader:MRMediaRemoteGetParentGroupContainsDiscoverableGroupLeader()];
  }

  v74 = +[MRUserSettings currentSettings];
  if ([v74 supportGenericAudioGroup])
  {
    v75 = 3;
  }

  else
  {
    v75 = 2;
  }

  [v7 setLastSupportedClusterType:v75];

  v76 = +[MRUserSettings currentSettings];
  [v7 setSupportsOutputContextSync:{objc_msgSend(v76, "supportOutputContextSync")}];

  [v7 setLastSupportedProtocolMessageType:139];
  [v7 setParentGroupSupportsGroupCohesion:MRMediaRemoteParentGroupSupportsGroupCohesion()];
  v77 = +[MRDMediaRemoteServer server];
  routingServer3 = [v77 routingServer];
  systemEndpointController = [routingServer3 systemEndpointController];
  v80 = [systemEndpointController activeOutputDeviceUID:0];
  [v7 setActiveSystemEndpointUID:v80];

  name = [v7 name];

  v82 = _MRLogForCategory();
  v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
  if (name)
  {
    if (v83)
    {
      name2 = [v7 name];
      v85 = +[NSDate date];
      [v85 timeIntervalSinceDate:v93];
      *buf = 138544130;
      v103 = @"CurrentDeviceInfo";
      v104 = 2114;
      v105 = v92;
      v106 = 2112;
      v107 = name2;
      v108 = 2048;
      v109 = v86;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);

      goto LABEL_53;
    }
  }

  else if (v83)
  {
    name2 = +[NSDate date];
    [name2 timeIntervalSinceDate:v93];
    *buf = 138543874;
    v103 = @"CurrentDeviceInfo";
    v104 = 2114;
    v105 = v92;
    v106 = 2048;
    v107 = v87;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
LABEL_53:
  }

  return v7;
}

- (void)reloadDeviceInfoImmediately
{
  _currentDeviceInfo = [(MRDDeviceInfoDataSource *)self _currentDeviceInfo];
  [(MRDDeviceInfoDataSource *)self _deviceInfoDidChangeWithDeviceInfo:_currentDeviceInfo];
}

- (NSString)deviceName
{
  os_unfair_lock_lock(&self->_lock);
  deviceName = self->_deviceName;
  if (!deviceName)
  {
    v4 = MRCopyDeviceName();
    v5 = self->_deviceName;
    self->_deviceName = v4;

    deviceName = self->_deviceName;
  }

  v6 = deviceName;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)networkIdentifier
{
  if (MSVDeviceIsAppleTV())
  {
    v2 = MGCopyAnswer();
  }

  else
  {
    v2 = 0;
  }

  if (![v2 length])
  {
    v3 = MGCopyAnswer();
    if (v3)
    {
      v4 = [[NSString alloc] initWithData:v3 encoding:4];
    }

    else
    {
      v4 = 0;
    }

    v2 = v4;
  }

  if (![v2 length])
  {
    v5 = MGCopyAnswer();

    v2 = v5;
  }

  if (![v2 length])
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDDeviceInfoDataSource] Warning: Unknown device network ID", v8, 2u);
    }
  }

  return v2;
}

- (id)clusteredDevices
{
  discoverySession = [(MRDDeviceInfoDataSource *)self discoverySession];
  [discoverySession availableOutputDevices];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if ([v7 isLocalDevice])
        {
          v4 = objc_alloc_init(NSMutableArray);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          clusterCompositionMembers = [v7 clusterCompositionMembers];
          v9 = [clusterCompositionMembers countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v16;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v16 != v11)
                {
                  objc_enumerationMutation(clusterCompositionMembers);
                }

                v13 = [[MRDeviceInfo alloc] initWithOutputDevice:*(*(&v15 + 1) + 8 * j)];
                [v4 addObject:v13];
              }

              v10 = [clusterCompositionMembers countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v10);
          }

          goto LABEL_18;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v4;
}

- (id)discoverySession
{
  if (qword_1005293C0 != -1)
  {
    sub_1003A863C();
  }

  v3 = qword_1005293B8;

  return v3;
}

- (NSString)deviceUID
{
  os_unfair_lock_lock(&self->_lock);
  deviceUID = self->_deviceUID;
  if (!deviceUID)
  {
    v4 = MRMediaRemoteAirPlayReceiverCopyPairingIdentity();
    v5 = self->_deviceUID;
    self->_deviceUID = v4;

    deviceUID = self->_deviceUID;
  }

  v6 = deviceUID;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)allClusteredDevices
{
  discoverySession = [(MRDDeviceInfoDataSource *)self discoverySession];
  [discoverySession availableOutputDevices];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = *v20;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if ([v7 isLocalDevice])
        {
          v4 = objc_alloc_init(NSMutableArray);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          allClusterMembersOutputDevices = [v7 allClusterMembersOutputDevices];
          v9 = [allClusterMembersOutputDevices countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v16;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v16 != v11)
                {
                  objc_enumerationMutation(allClusterMembersOutputDevices);
                }

                v13 = [[MRDeviceInfo alloc] initWithOutputDevice:*(*(&v15 + 1) + 8 * j)];
                [v4 addObject:v13];
              }

              v10 = [allClusterMembersOutputDevices countByEnumeratingWithState:&v15 objects:v23 count:16];
            }

            while (v10);
          }

          goto LABEL_18;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v4;
}

+ (id)_workerQueue
{
  if (qword_100529398 != -1)
  {
    sub_1003A8600();
  }

  v3 = qword_100529390;

  return v3;
}

- (id)_readDeviceInfo
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8320;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  if (qword_1005293D0 != -1)
  {
    dispatch_once(&qword_1005293D0, block);
  }

  return qword_1005293C8;
}

- (MRDDeviceInfoDataSource)init
{
  v48.receiver = self;
  v48.super_class = MRDDeviceInfoDataSource;
  v2 = [(MRDDeviceInfoDataSource *)&v48 init];
  if (v2)
  {
    v3 = objc_alloc_init(MSVWeakLinkClass());
    pairingManager = v2->_pairingManager;
    v2->_pairingManager = v3;

    _workerQueue = [objc_opt_class() _workerQueue];
    [(CUPairingManager *)v2->_pairingManager setDispatchQueue:_workerQueue];

    v2->_lock._os_unfair_lock_opaque = 0;
    _currentDeviceInfo = [(MRDDeviceInfoDataSource *)v2 _currentDeviceInfo];
    deviceInfo = v2->_deviceInfo;
    v2->_deviceInfo = _currentDeviceInfo;

    objc_initWeak(&location, v2);
    v49 = @"UserAssignedDeviceName";
    v28 = [NSArray arrayWithObjects:&v49 count:1];
    v8 = &_dispatch_main_q;
    v45[1] = _NSConcreteStackBlock;
    v45[2] = 3221225472;
    v45[3] = sub_1000E7760;
    v45[4] = &unk_1004BC1E0;
    objc_copyWeak(&v46, &location);
    v2->_gestaltNotificationToken = MGRegisterForUpdates();

    v9 = +[MCProfileConnection sharedConnection];
    [v9 addObserver:v2];

    v10 = +[NSNotificationCenter defaultCenter];
    v11 = +[MRAVOutputContext sharedAudioPresentationContext];
    [v10 addObserver:v2 selector:"_outputContextDidChange" name:MRAVOutputContextOutputDevicesDidChangeNotification object:v11];
    [v10 addObserver:v2 selector:"_outputContextDidChange" name:MRAVOutputContextOutputDeviceDidChangeNotification object:v11];
    [v10 addObserver:v2 selector:"_outputContextDidChange" name:MRAVOutputContextDidChangeNotification object:0];
    [v10 addObserver:v2 selector:"_outputContextDidChange" name:MRAVOutputContextDidAddOutputDeviceNotification object:0];
    [v10 addObserver:v2 selector:"_outputContextDidChange" name:MRAVOutputContextDidRemoveOutputDeviceNotification object:0];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000E77C8;
    handler[3] = &unk_1004BC208;
    objc_copyWeak(v45, &location);
    notify_register_dispatch("com.apple.airplay.prefsChanged", &v2->_airplayPerfsNotifyToken, &_dispatch_main_q, handler);

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000E7808;
    v42[3] = &unk_1004BC208;
    objc_copyWeak(&v43, &location);
    notify_register_dispatch("com.apple.airplay.advertisingDidChange", &v2->_airplayAdvertisingNotifyToken, &_dispatch_main_q, v42);

    if (+[MRAVClusterController canBeClusterMember])
    {
      v12 = +[MRAVClusterController sharedController];
      [v12 registerObserver:v2];

      [v10 addObserver:v2 selector:"_otherDeviceInfoDidChange:" name:_MRDeviceInfoDidChangeNotification object:0];
    }

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000E7848;
    v40[3] = &unk_1004BC230;
    objc_copyWeak(&v41, &location);
    [(CUPairingManager *)v2->_pairingManager setIdentityCreatedHandler:v40];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000E78B0;
    v38[3] = &unk_1004BC258;
    objc_copyWeak(&v39, &location);
    [(CUPairingManager *)v2->_pairingManager setIdentityDeletedHandler:v38];
    v13 = +[MRUserSettings currentSettings];
    groupSessionDelayedInitializationEnabled = [v13 groupSessionDelayedInitializationEnabled];

    if (groupSessionDelayedInitializationEnabled)
    {
      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:v2 selector:"handleGroupSessionServerDidStartNotification:" name:@"MRDGroupSessionServerDidStartNotification" object:0];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:v2 selector:"handleGroupSessionDidStartEligibilityMonitoringNotification:" name:@"MRDGroupSessionServerDidStartEligibilityMonitoringNotification" object:0];

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 addObserver:v2 selector:"handleGroupSessionServerDidStopNotification:" name:@"MRDGroupSessionServerDidStopNotification" object:0];
    }

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"handleSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v2 selector:"handleNowPlayingInfoDidChangeNotification:" name:kMRMediaRemoteNowPlayingInfoDidChangeNotification object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000E7918;
    v36[3] = &unk_1004B9A58;
    objc_copyWeak(&v37, &location);
    v21 = [v20 addObserverForName:@"MRDRoutingServerAirplayActiveDidChange" object:0 queue:0 usingBlock:v36];

    v22 = +[NSNotificationCenter defaultCenter];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000E7958;
    v34[3] = &unk_1004B9A58;
    objc_copyWeak(&v35, &location);
    v23 = [v22 addObserverForName:@"MRDRoutingServerAirplayActiveDidChange" object:0 queue:0 usingBlock:v34];

    v24 = +[NSNotificationCenter defaultCenter];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000E7A0C;
    v32[3] = &unk_1004B9A58;
    objc_copyWeak(&v33, &location);
    v25 = [v24 addObserverForName:@"MRDNowPlayingAirplaySessionStarted" object:0 queue:0 usingBlock:v32];

    _workerQueue2 = [objc_opt_class() _workerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E7AC0;
    block[3] = &unk_1004B8280;
    objc_copyWeak(&v31, &location);
    dispatch_async(_workerQueue2, block);

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);
    objc_destroyWeak(v45);

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  gestaltNotificationToken = self->_gestaltNotificationToken;
  MGCancelNotifications();
  v4 = +[MCProfileConnection sharedConnection];
  [v4 removeObserver:self];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];
  notify_cancel(self->_airplayPerfsNotifyToken);
  notify_cancel(self->_airplayAdvertisingNotifyToken);
  notify_cancel(self->_airplayLeaderInfoNotifyToken);

  v6.receiver = self;
  v6.super_class = MRDDeviceInfoDataSource;
  [(MRDDeviceInfoDataSource *)&v6 dealloc];
}

- (void)_deviceInfoDidChangeWithDeviceInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock(&self->_lock);
  if (([infoCopy isEqual:self->_deviceInfo] & 1) == 0)
  {
    objc_storeStrong(&self->_deviceInfo, info);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E7D98;
      block[3] = &unk_1004B69D0;
      v8 = WeakRetained;
      selfCopy = self;
      v10 = infoCopy;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_otherDeviceInfoDidChange:(id)change
{
  changeCopy = change;
  v4 = +[MRAVClusterController sharedController];
  clusterLeaderUID = [v4 clusterLeaderUID];

  if (clusterLeaderUID)
  {
    v6 = +[MRAVClusterController sharedController];
    clusterStatus = [v6 clusterStatus];

    if (clusterStatus == 2)
    {
      userInfo = [changeCopy userInfo];
      v9 = [userInfo objectForKeyedSubscript:kMRPairedDeviceUserInfoKey];

      deviceUID = [v9 deviceUID];
      v11 = [deviceUID isEqualToString:clusterLeaderUID];

      if (v11)
      {
        os_unfair_lock_lock(&self->_lock);
        isProxyGroupPlayer = [(MRDeviceInfo *)self->_deviceInfo isProxyGroupPlayer];
        os_unfair_lock_unlock(&self->_lock);
        if (isProxyGroupPlayer != [v9 isProxyGroupPlayer])
        {
          [(MRDDeviceInfoDataSource *)self _deviceInfoDidChange];
        }
      }
    }
  }
}

- (BOOL)isAirPlayVideoActive
{
  os_unfair_lock_lock(&self->_lock);
  isAirPlayVideoActive = self->_isAirPlayVideoActive;
  os_unfair_lock_unlock(&self->_lock);
  return isAirPlayVideoActive;
}

- (id)_deviceInfoFilePath
{
  v2 = MRCopyMediaRemoteLibraryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"DeviceInfo.plist"];

  return v3;
}

- (id)_deviceInfoArchiveClasses
{
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (id)_readLegacyDeviceInfoIdentifier
{
  v2 = MRCopyDeviceInfoPath();
  v3 = [NSData dataWithContentsOfFile:v2];
  if (v3)
  {
    v6 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_writeDeviceInfo:(id)info toPath:(id)path
{
  pathCopy = path;
  v12 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:info requiringSecureCoding:1 error:&v12];
  v7 = v12;
  if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDDeviceInfoDataSource] Failed to archive device info", buf, 2u);
    }
  }

  v10 = 0;
  [v6 writeToFile:pathCopy options:268435457 error:&v10];
  if (v10)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDDeviceInfoDataSource] Failed to write device info file", buf, 2u);
    }
  }
}

- (BOOL)_calculateIsAirPlayVideoActive
{
  v2 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v2 nowPlayingServer];
  localOriginClient = [nowPlayingServer localOriginClient];
  activeNowPlayingClient = [localOriginClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];

  playerPath = [activePlayerClient playerPath];
  client = [playerPath client];
  if ([client isAirPlay])
  {
    nowPlayingContentItem = [activePlayerClient nowPlayingContentItem];
    metadata = [nowPlayingContentItem metadata];
    v11 = [metadata mediaType] == 2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)handleGroupSessionServerDidStartNotification:(id)notification
{
  v4 = +[MRDMediaRemoteServer server];
  groupSessionServer = [v4 groupSessionServer];

  sessionManager = [groupSessionServer sessionManager];
  [sessionManager addObserver:self];
  [(MRDDeviceInfoDataSource *)self _deviceInfoDidChange];
}

- (void)handleGroupSessionDidStartEligibilityMonitoringNotification:(id)notification
{
  v4 = +[MRDMediaRemoteServer server];
  groupSessionServer = [v4 groupSessionServer];

  eligibilityMonitor = [groupSessionServer eligibilityMonitor];
  [eligibilityMonitor addObserver:self];

  [(MRDDeviceInfoDataSource *)self _deviceInfoDidChange];
}

- (void)handleNowPlayingInfoDidChangeNotification:(id)notification
{
  _calculateIsAirPlayVideoActive = [(MRDDeviceInfoDataSource *)self _calculateIsAirPlayVideoActive];
  os_unfair_lock_lock(&self->_lock);
  isAirPlayVideoActive = self->_isAirPlayVideoActive;
  self->_isAirPlayVideoActive = _calculateIsAirPlayVideoActive;
  os_unfair_lock_unlock(&self->_lock);
  if (isAirPlayVideoActive != _calculateIsAirPlayVideoActive)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = _calculateIsAirPlayVideoActive;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDDeviceInfoDataSource] AirPlayVideoActive -> %{BOOL}u", v7, 8u);
    }

    [(MRDDeviceInfoDataSource *)self _deviceInfoDidChange];
  }
}

- (MRDDeviceInfoDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end