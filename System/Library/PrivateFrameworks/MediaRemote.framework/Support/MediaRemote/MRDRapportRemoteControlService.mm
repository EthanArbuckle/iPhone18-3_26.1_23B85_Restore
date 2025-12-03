@interface MRDRapportRemoteControlService
+ (NSUserDefaults)userDefaults;
+ (id)_readConnectionRecordsFromDisk;
+ (void)_writeConnectionRecordsToDisk:(id)disk;
- (MRDRapportRemoteControlService)init;
- (MRDRapportRemoteControlServiceDelegate)delegate;
- (id)_connectionForSource:(id)source destination:(id)destination session:(id)session;
- (void)_onWorkerQueue_connectRemoteControlChannelForSource:(id)source destination:(id)destination destinationGroupUID:(id)d session:(id)session name:(id)name;
- (void)_onWorkerQueue_disconnectAllRemoteControlChannels;
- (void)_onWorkerQueue_disconnectRemoteControlChannelForSource:(id)source destination:(id)destination session:(id)session;
- (void)_onWorkerQueue_disconnectRemoteControlChannelsWithError:(id)error predicate:(id)predicate;
- (void)_persistConnectionRecordsToDisk;
- (void)_resetPersistedConnections;
@end

@implementation MRDRapportRemoteControlService

- (MRDRapportRemoteControlService)init
{
  v27.receiver = self;
  v27.super_class = MRDRapportRemoteControlService;
  v2 = [(MRDRapportRemoteControlService *)&v27 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaremote.MRDRapportRemoteControlService.workerQueue", v3);
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v4;

    v6 = objc_alloc_init(NSMutableArray);
    connections = v2->_connections;
    v2->_connections = v6;

    v8 = +[MRCompanionLinkClient sharedCompanionLinkClient];
    client = v2->_client;
    v2->_client = v8;

    objc_initWeak(&location, v2);
    v10 = v2->_client;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100087998;
    v24[3] = &unk_1004B8F78;
    objc_copyWeak(&v25, &location);
    v11 = [(MRCompanionLinkClient *)v10 registerRequest:@"com.apple.mediaremote.remotecontrol.connect" callback:v24];
    v12 = v2->_client;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100087BB0;
    v22[3] = &unk_1004B8FC8;
    objc_copyWeak(&v23, &location);
    v13 = [(MRCompanionLinkClient *)v12 registerEvent:@"com.apple.mediaremote.remotecontrol.disconnect" callback:v22];
    v14 = v2->_client;
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100087EF0;
    v20 = &unk_1004B8FC8;
    objc_copyWeak(&v21, &location);
    v15 = [(MRCompanionLinkClient *)v14 registerEvent:@"com.apple.mediaremote.remotecontrol.reset" callback:&v17];
    [(MRDRapportRemoteControlService *)v2 _resetPersistedConnections:v17];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (NSUserDefaults)userDefaults
{
  if (qword_100529280 != -1)
  {
    sub_1003A5E10();
  }

  v3 = qword_100529278;

  return v3;
}

- (id)_connectionForSource:(id)source destination:(id)destination session:(id)session
{
  sourceCopy = source;
  destinationCopy = destination;
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_workerQueue);
  connections = self->_connections;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000882E8;
  v17[3] = &unk_1004B9038;
  v18 = sessionCopy;
  v19 = destinationCopy;
  v20 = sourceCopy;
  v12 = sourceCopy;
  v13 = destinationCopy;
  v14 = sessionCopy;
  v15 = [(NSMutableArray *)connections mr_first:v17];

  return v15;
}

- (void)_onWorkerQueue_connectRemoteControlChannelForSource:(id)source destination:(id)destination destinationGroupUID:(id)d session:(id)session name:(id)name
{
  sourceCopy = source;
  destinationCopy = destination;
  dCopy = d;
  sessionCopy = session;
  nameCopy = name;
  dispatch_assert_queue_V2(self->_workerQueue);
  v16 = [(MRDRapportRemoteControlService *)self _connectionForSource:sourceCopy destination:destinationCopy session:sessionCopy];
  v17 = MRLogCategoryConnections();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v44 = sourceCopy;
    v45 = 2112;
    v46 = destinationCopy;
    v47 = 2112;
    v48 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDRapportRemoteControlServiceConnection] Connecting remoteControlChannel to <%@->%@/%@>...", buf, 0x20u);
  }

  v18 = objc_alloc_init(MRDRapportRemoteControlServiceConnection);
  [(MRDRapportRemoteControlServiceConnection *)v18 setSourceUID:sourceCopy];
  [(MRDRapportRemoteControlServiceConnection *)v18 setDestinationOutputDeviceUID:destinationCopy];
  [(MRDRapportRemoteControlServiceConnection *)v18 setDestinationGroupUID:dCopy];
  [(MRDRapportRemoteControlServiceConnection *)v18 setSessionUID:sessionCopy];
  [(MRDRapportRemoteControlServiceConnection *)v18 setName:nameCopy];
  v19 = +[NSDate now];
  [(MRDRapportRemoteControlServiceConnection *)v18 setConnectionAttemptDate:v19];

  v20 = [[MRRapportTransportConnection alloc] initWithDeviceUID:sourceCopy sessionUID:sessionCopy targetDevice:0 error:0];
  v21 = [NSString alloc];
  if (dCopy)
  {
    v22 = dCopy;
  }

  else
  {
    v22 = destinationCopy;
  }

  sessionCopy = [v21 initWithFormat:@"RapportRemoteControlChannel-<%@->%@/%@>", sourceCopy, v22, sessionCopy];
  [v20 setLabel:sessionCopy];

  [v20 setDestinationOutputDeviceUID:destinationCopy];
  [v20 setDestinationGroupUID:dCopy];
  [(MRDRapportRemoteControlServiceConnection *)v18 setConnection:v20];
  objc_initWeak(buf, self);
  v24 = +[NSNotificationCenter defaultCenter];
  connection = [(MRDRapportRemoteControlServiceConnection *)v18 connection];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000887E0;
  v37[3] = &unk_1004B9060;
  objc_copyWeak(&v42, buf);
  v26 = sourceCopy;
  v38 = v26;
  v27 = destinationCopy;
  v39 = v27;
  v28 = sessionCopy;
  v40 = v28;
  v29 = dCopy;
  v41 = v29;
  v30 = [v24 addObserverForName:@"MRDMediaRemoteExternalDeviceServerClientInvalidatedNotification" object:connection queue:0 usingBlock:v37];
  [(MRDRapportRemoteControlServiceConnection *)v18 setNotificationToken:v30];

  connections = self->_connections;
  if (!connections)
  {
    v32 = objc_alloc_init(NSMutableArray);
    v33 = self->_connections;
    self->_connections = v32;

    connections = self->_connections;
  }

  [(NSMutableArray *)connections addObject:v18];
  delegate = [(MRDRapportRemoteControlService *)self delegate];
  connection2 = [(MRDRapportRemoteControlServiceConnection *)v18 connection];
  [delegate rapportRemoteControlService:self didAcceptConnection:connection2];

  [(MRDRapportRemoteControlService *)self _persistConnectionRecordsToDisk];
  objc_destroyWeak(&v42);
  objc_destroyWeak(buf);
}

- (void)_onWorkerQueue_disconnectAllRemoteControlChannels
{
  dispatch_assert_queue_V2(self->_workerQueue);

  [(MRDRapportRemoteControlService *)self _onWorkerQueue_disconnectRemoteControlChannelsWithError:0 predicate:&stru_1004B90A0];
}

- (void)_onWorkerQueue_disconnectRemoteControlChannelForSource:(id)source destination:(id)destination session:(id)session
{
  sourceCopy = source;
  destinationCopy = destination;
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_workerQueue);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100088AFC;
  v14[3] = &unk_1004B9038;
  v15 = sourceCopy;
  v16 = destinationCopy;
  v17 = sessionCopy;
  v11 = sessionCopy;
  v12 = destinationCopy;
  v13 = sourceCopy;
  [(MRDRapportRemoteControlService *)self _onWorkerQueue_disconnectRemoteControlChannelsWithError:0 predicate:v14];
}

- (void)_onWorkerQueue_disconnectRemoteControlChannelsWithError:(id)error predicate:(id)predicate
{
  errorCopy = error;
  predicateCopy = predicate;
  dispatch_assert_queue_V2(self->_workerQueue);
  v8 = [(NSMutableArray *)self->_connections mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    v24 = predicateCopy;
    do
    {
      v13 = 0;
      v25 = v11;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        if (predicateCopy[2](predicateCopy, v14))
        {
          v15 = MRLogCategoryConnections();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            sourceUID = [v14 sourceUID];
            destinationOutputDeviceUID = [v14 destinationOutputDeviceUID];
            [v14 sessionUID];
            v18 = v12;
            v19 = v9;
            selfCopy = self;
            v22 = v21 = errorCopy;
            *buf = 138412802;
            v31 = sourceUID;
            v32 = 2112;
            v33 = destinationOutputDeviceUID;
            v34 = 2112;
            v35 = v22;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDRapportRemoteControlServiceConnection] Disconnecting remoteControlChannel from <%@->%@/%@>...", buf, 0x20u);

            errorCopy = v21;
            self = selfCopy;
            v9 = v19;
            v12 = v18;
            predicateCopy = v24;
          }

          connection = [v14 connection];
          [connection closeWithError:errorCopy];

          [(NSMutableArray *)self->_connections removeObject:v14];
          [(MRDRapportRemoteControlService *)self _persistConnectionRecordsToDisk];
          v11 = v25;
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v11);
  }
}

- (void)_persistConnectionRecordsToDisk
{
  obj = [objc_opt_class() userDefaults];
  objc_sync_enter(obj);
  [objc_opt_class() _writeConnectionRecordsToDisk:self->_connections];
  objc_sync_exit(obj);
}

- (void)_resetPersistedConnections
{
  userDefaults = [objc_opt_class() userDefaults];
  objc_sync_enter(userDefaults);
  _readConnectionRecordsFromDisk = [objc_opt_class() _readConnectionRecordsFromDisk];
  v5 = objc_alloc_init(NSMutableSet);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = _readConnectionRecordsFromDisk;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        sourceUID = [*(*(&v19 + 1) + 8 * v9) sourceUID];
        [v5 addObject:sourceUID];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(MRCompanionLinkClient *)self->_client sendEvent:@"com.apple.mediaremote.remotecontrol.reset" destination:*(*(&v15 + 1) + 8 * v14) userInfo:0, v15];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  [objc_opt_class() _writeConnectionRecordsToDisk:0];
  objc_sync_exit(userDefaults);
}

+ (id)_readConnectionRecordsFromDisk
{
  userDefaults = [objc_opt_class() userDefaults];
  v3 = [userDefaults objectForKey:@"incomingRapportConnections"];
  v4 = [NSSet alloc];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v5 = [NSArray arrayWithObjects:v9 count:2];
  v6 = [v4 initWithArray:v5];
  v7 = MRCreateFromData();

  return v7;
}

+ (void)_writeConnectionRecordsToDisk:(id)disk
{
  diskCopy = disk;
  v3 = [diskCopy count];
  userDefaults = [objc_opt_class() userDefaults];
  v5 = userDefaults;
  if (v3)
  {
    v6 = MRCreateDataFromObject();
    [v5 setObject:v6 forKey:@"incomingRapportConnections"];

    if (!MSVDeviceOSIsInternalInstall())
    {
      goto LABEL_7;
    }

    userDefaults2 = [objc_opt_class() userDefaults];
    v8 = [diskCopy description];
    [userDefaults2 setObject:v8 forKey:@"incomingRapportConnectionsDescription"];
  }

  else
  {
    [userDefaults removeObjectForKey:@"incomingRapportConnections"];

    if (!MSVDeviceOSIsInternalInstall())
    {
      goto LABEL_7;
    }

    userDefaults2 = [objc_opt_class() userDefaults];
    [userDefaults2 removeObjectForKey:@"incomingRapportConnectionsDescription"];
  }

LABEL_7:
  userDefaults3 = [objc_opt_class() userDefaults];
  [userDefaults3 synchronize];
}

- (MRDRapportRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end