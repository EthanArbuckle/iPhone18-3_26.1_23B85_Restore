@interface MRDAVLocalDeviceCommitManager
- (BOOL)_shouldCommitLocalDeviceWithReason:(id)a3 deviceInfo:(id)a4;
- (BOOL)_shouldRemoveLocalDeviceWithReason:(id)a3 deviceInfo:(id)a4;
- (MRDAVLocalDeviceCommitManager)init;
- (void)_commitLocalDeviceWithReason:(id)a3;
- (void)_electLocalDeviceAsClusterLeaderWithReason:(id)a3;
- (void)_maybeCommitLocalDeviceWithReason:(id)a3;
- (void)_maybeElectLocalDeviceAsClusterLeaderWithReason:(id)a3;
- (void)_maybeRemoveLocalDeviceForReason:(id)a3;
- (void)_removeLocalDeviceWithReason:(id)a3 deviceInfo:(id)a4;
- (void)_shouldElectLocalDeviceAsClusterLeaderWithReason:(id)a3 deviceInfo:(id)a4 completion:(id)a5;
- (void)airplayActiveDidChangeNotification:(id)a3;
- (void)eventuallyMaybeCommitLocalDeviceForReason:(id)a3;
- (void)eventuallyMaybeElectLocalDeviceAsClusterLeaderWithReason:(id)a3;
- (void)eventuallyMaybeRemoveLocalDeviceForReason:(id)a3;
- (void)outputContextModificationDidBeginNotification:(id)a3;
- (void)outputContextModificationDidFinishNotification:(id)a3;
@end

@implementation MRDAVLocalDeviceCommitManager

- (MRDAVLocalDeviceCommitManager)init
{
  v16.receiver = self;
  v16.super_class = MRDAVLocalDeviceCommitManager;
  v2 = [(MRDAVLocalDeviceCommitManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("MRDAVLocalDeviceCommitManager.serial", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = objc_alloc_init(NSMutableSet);
    activeTopologyChangeIdentifiers = v2->_activeTopologyChangeIdentifiers;
    v2->_activeTopologyChangeIdentifiers = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"airplayActiveDidChangeNotification:" name:@"MRDRoutingServerAirplayActiveDidChange" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = MRAVOutputContextDidRemoveLocalDeviceNotification;
    v11 = +[MRAVOutputContext sharedAudioPresentationContext];
    [v9 addObserver:v2 selector:"outputContextDidRemoveLocalDeviceNotification:" name:v10 object:v11];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"outputContextModificationDidBeginNotification:" name:MRAVOutputContextDidBeginModificationNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"outputContextModificationDidFinishNotification:" name:MRAVOutputContextDidFinishModificationNotification object:0];

    v14 = +[MRAVClusterController sharedController];
    [v14 registerObserver:v2];

    [(MRDAVLocalDeviceCommitManager *)v2 eventuallyMaybeCommitLocalDeviceForReason:@"Boot"];
    [(MRDAVLocalDeviceCommitManager *)v2 eventuallyMaybeRemoveLocalDeviceForReason:@"Boot"];
    [(MRDAVLocalDeviceCommitManager *)v2 eventuallyMaybeElectLocalDeviceAsClusterLeaderWithReason:@"Boot"];
  }

  return v2;
}

- (void)airplayActiveDidChangeNotification:(id)a3
{
  [(MRDAVLocalDeviceCommitManager *)self eventuallyMaybeCommitLocalDeviceForReason:@"AirplayActiveDidChange"];

  [(MRDAVLocalDeviceCommitManager *)self eventuallyMaybeRemoveLocalDeviceForReason:@"AirplayActiveDidChange"];
}

- (void)outputContextModificationDidBeginNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:MRAVOutputContextModificationOutputDeviceIdentifiersUserInfoKey];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:MRAVOutputContextExistingOutputDeviceIdentifiersUserInfoKey];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:MRAVOutputContextModificationTypeUserInfoKey];
  v11 = [v10 unsignedIntegerValue];

  v12 = MRMediaRemoteCopyDeviceUID();
  v13 = [v6 containsObject:v12];
  if (v11 == 3)
  {
    v14 = [v8 containsObject:v12];
  }

  else
  {
    v14 = 0;
  }

  if ((v13 | v14))
  {
    v15 = [v4 userInfo];
    v16 = [v15 objectForKeyedSubscript:MRAVOutputContextModificationIdentifierUserInfoKey];

    v17 = [(MRDAVLocalDeviceCommitManager *)self serialQueue];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100092758;
    v19[3] = &unk_1004B68F0;
    v19[4] = self;
    v20 = v16;
    v18 = v16;
    dispatch_async(v17, v19);
  }
}

- (void)outputContextModificationDidFinishNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:MRAVOutputContextModificationIdentifierUserInfoKey];

  v6 = [(MRDAVLocalDeviceCommitManager *)self serialQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100092884;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)eventuallyMaybeRemoveLocalDeviceForReason:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = [[NSString alloc] initWithFormat:@"%@<%@>", v4, v6];
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[LocalDeviceCommitManager] Maybe eventually remove localDevice with reason %@...", buf, 0xCu);
  }

  v9 = dispatch_time(0, 1000000000);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100092B54;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_after(v9, serialQueue, block);
}

- (void)_maybeRemoveLocalDeviceForReason:(id)a3
{
  v6 = a3;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 deviceInfo];

  if ([(MRDAVLocalDeviceCommitManager *)self _shouldRemoveLocalDeviceWithReason:v6 deviceInfo:v5])
  {
    [(MRDAVLocalDeviceCommitManager *)self _removeLocalDeviceWithReason:v6 deviceInfo:v5];
  }
}

- (BOOL)_shouldRemoveLocalDeviceWithReason:(id)a3 deviceInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((([v6 clusterType] - 1) & 0xFFFFFFFD) != 0)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      v8 = "[LocalDeviceCommitManager] Not removing localDevice %@ because not dynamicCluster";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v19, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v9 = +[MRAVClusterController sharedController];
  v10 = [v9 needsCommandRedirection];

  if (v10)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      v8 = "[LocalDeviceCommitManager] Not removing localDevice %@ because needsCommandRedirection";
      goto LABEL_14;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v11 = +[MRDMediaRemoteServer server];
  v12 = [v11 routingServer];
  v13 = [v12 airplayActive];

  if ((v13 & 1) == 0)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      v8 = "[LocalDeviceCommitManager] Not removing localDevice %@ because airplayActive=NO";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v14 = +[MRDAVOutputContextManager sharedManager];
  v15 = [v6 WHAIdentifier];
  v7 = [v14 outputContextForOutputDeviceUID:v15];

  v16 = [v7 containsLocalDevice];
  if ((v16 & 1) == 0)
  {
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[LocalDeviceCommitManager] Not removing localDevice %@ because localDevice is not present", &v19, 0xCu);
    }
  }

LABEL_16:

  return v16;
}

- (void)_removeLocalDeviceWithReason:(id)a3 deviceInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[LocalDeviceCommitManager] Removing localDevice with reason %@", buf, 0xCu);
  }

  v8 = +[MRDAVOutputContextManager sharedManager];
  v9 = [v6 WHAIdentifier];
  v10 = [v8 outputContextForOutputDeviceUID:v9];

  v11 = [v10 outputDevices];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_1000930D8;
  v25 = &unk_1004B8A40;
  v12 = v6;
  v26 = v12;
  v13 = [v11 msv_firstWhere:&v22];

  if (v13)
  {
    v14 = [MRRequestDetails alloc];
    v15 = MRRequestDetailsInitiatorPrewarming;
    v16 = [NSString alloc];
    v17 = [v16 initWithFormat:@"%@-%@", objc_opt_class(), v5, v22, v23, v24, v25];
    v18 = [v14 initWithInitiator:v15 requestID:0 reason:v17];

    v19 = [MRGroupTopologyModificationRequest alloc];
    v27 = v13;
    v20 = [NSArray arrayWithObjects:&v27 count:1];
    v21 = [v19 initWithRequestDetails:v18 type:2 outputDevices:v20];

    [v10 modifyTopologyWithRequest:v21 withReplyQueue:0 completion:0];
  }
}

- (void)eventuallyMaybeCommitLocalDeviceForReason:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = [[NSString alloc] initWithFormat:@"%@<%@>", v4, v6];
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[LocalDeviceCommitManager] Maybe eventually commit with reason %@...", buf, 0xCu);
  }

  v9 = [(MRDAVLocalDeviceCommitManager *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000932B8;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(v9, block);
}

- (void)_maybeCommitLocalDeviceWithReason:(id)a3
{
  v6 = a3;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 deviceInfo];

  if ([(MRDAVLocalDeviceCommitManager *)self _shouldCommitLocalDeviceWithReason:v6 deviceInfo:v5])
  {
    [(MRDAVLocalDeviceCommitManager *)self _commitLocalDeviceWithReason:v6];
  }
}

- (BOOL)_shouldCommitLocalDeviceWithReason:(id)a3 deviceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MRUserSettings currentSettings];
  v9 = [v8 supportOutputContextPrewarming];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 supportMultiplayerHost];

    if ((v11 & 1) == 0)
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v6;
        v15 = "[LocalDeviceCommitManager] Not committing localDevice %@ because Not multiplayer";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v12 = +[MRAVClusterController sharedController];
    v13 = [v12 needsCommandRedirection];

    if (v13)
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v6;
        v15 = "[LocalDeviceCommitManager] Not committing localDevice %@ because Home Theater secondary";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v29, 0xCu);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    v18 = +[MRDAVOutputContextManager sharedManager];
    v19 = [v7 WHAIdentifier];
    v14 = [v18 outputContextForOutputDeviceUID:v19];

    if ([v14 containsLocalDevice])
    {
      v20 = _MRLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v6;
        v21 = "[LocalDeviceCommitManager] Not committing localDevice %@ because containsLocalDevice";
LABEL_19:
        v24 = v20;
        v25 = 12;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v21, &v29, v25);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    v22 = [(MRDAVLocalDeviceCommitManager *)self activeTopologyChangeIdentifiers];
    v23 = [v22 count];

    if (v23)
    {
      v20 = _MRLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138412290;
        v30 = v6;
        v21 = "[LocalDeviceCommitManager] Not committing localDevice %@ because part of another topology modification";
        goto LABEL_19;
      }

LABEL_21:

      goto LABEL_11;
    }

    if ((([v7 clusterType] - 1) & 0xFFFFFFFD) != 0)
    {
LABEL_23:
      v16 = 1;
      goto LABEL_12;
    }

    v26 = +[MRDMediaRemoteServer server];
    v27 = [v26 routingServer];
    v28 = [v27 airplayActive];

    if (v28)
    {
      v20 = _MRLogForCategory();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v29 = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = @"Dynamic";
      v21 = "[LocalDeviceCommitManager] Not committing localDevice %@ because airplayActive on a %@ cluster";
    }

    else
    {
      if ([v7 isClusterLeader])
      {
        goto LABEL_23;
      }

      v20 = _MRLogForCategory();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v29 = 138412546;
      v30 = v6;
      v31 = 2112;
      v32 = @"Dynamic";
      v21 = "[LocalDeviceCommitManager] Not committing localDevice %@ because not leader of a %@ cluster";
    }

    v24 = v20;
    v25 = 22;
    goto LABEL_20;
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = v6;
    v15 = "[LocalDeviceCommitManager] Not committing localDevice %@ because FF disabled";
    goto LABEL_10;
  }

LABEL_11:
  v16 = 0;
LABEL_12:

  return v16;
}

- (void)_commitLocalDeviceWithReason:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LocalDeviceCommitManager] Committing localDevice with reason %@...", buf, 0xCu);
  }

  v6 = +[MRDMediaRemoteServer server];
  v7 = [v6 deviceInfo];

  v8 = objc_alloc_init(_MRAVOutputDeviceDescriptorProtobuf);
  v9 = [v7 clusterID];
  [v8 setClusterID:v9];

  v10 = [v7 deviceUID];
  [v8 setUniqueIdentifier:v10];

  v11 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v8];
  v12 = +[MRDAVOutputContextManager sharedManager];
  v13 = [v7 WHAIdentifier];
  v14 = [v12 outputContextForOutputDeviceUID:v13];

  v15 = [MRRequestDetails alloc];
  v16 = MRRequestDetailsInitiatorPrewarming;
  v17 = [[NSString alloc] initWithFormat:@"%@-%@", objc_opt_class(), v4];
  v18 = [v15 initWithInitiator:v16 requestID:0 reason:v17];

  v19 = [MRGroupTopologyModificationRequest alloc];
  v24 = v11;
  v20 = [NSArray arrayWithObjects:&v24 count:1];
  v21 = [v19 initWithRequestDetails:v18 type:1 outputDevices:v20];

  serialQueue = self->_serialQueue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100093B74;
  v23[3] = &unk_1004B6FC0;
  v23[4] = self;
  [v14 modifyTopologyWithRequest:v21 withReplyQueue:serialQueue completion:v23];
}

- (void)eventuallyMaybeElectLocalDeviceAsClusterLeaderWithReason:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = [[NSString alloc] initWithFormat:@"%@<%@>", v4, v6];
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[LocalDeviceCommitManager] Maybe elect local device as cluster leader with reason %@...", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100093E58;
  block[3] = &unk_1004B68F0;
  block[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(serialQueue, block);
}

- (void)_maybeElectLocalDeviceAsClusterLeaderWithReason:(id)a3
{
  v4 = a3;
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 deviceInfo];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100093F34;
  v8[3] = &unk_1004B89C8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(MRDAVLocalDeviceCommitManager *)self _shouldElectLocalDeviceAsClusterLeaderWithReason:v7 deviceInfo:v6 completion:v8];
}

- (void)_shouldElectLocalDeviceAsClusterLeaderWithReason:(id)a3 deviceInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((([v9 clusterType] - 1) & 0xFFFFFFFD) != 0)
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      v12 = "[LocalDeviceCommitManager] Not electing localDevice as clusterLeader %@ because not dynamic cluster";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if ([v9 isClusterLeader])
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      v12 = "[LocalDeviceCommitManager] Not electing localDevice as clusterLeader %@ because already clusterLeader";
      goto LABEL_11;
    }

LABEL_12:

    v10[2](v10, 0);
    goto LABEL_13;
  }

  v13 = [v9 preferredClusterLeaderID];
  v14 = [v9 deviceUID];
  v15 = [v13 isEqual:v14];

  if ((v15 & 1) == 0)
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      v12 = "[LocalDeviceCommitManager] Not electing localDevice as clusterLeader %@ because not preferredClusterLeader";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v16 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10009429C;
  v23[3] = &unk_1004B9698;
  v24 = v9;
  v17 = [[NSString alloc] initWithFormat:@"%@-%@", objc_opt_class(), v8];
  serialQueue = self->_serialQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10009436C;
  v19[3] = &unk_1004B8108;
  v19[4] = self;
  v20 = v24;
  v21 = v8;
  v22 = v10;
  [v16 searchEndpointsWithPredicate:v23 timeout:v17 reason:serialQueue queue:v19 completion:30.0];

LABEL_13:
}

- (void)_electLocalDeviceAsClusterLeaderWithReason:(id)a3
{
  v3 = a3;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[LocalDeviceCommitManager] Electing local device as cluster leader with reason %@", &v5, 0xCu);
  }

  MRMediaRemoteSetClusterLeader();
}

@end