@interface MRDRemoteControlService
- (MRDRemoteControlService)initWithRoutingDataSource:(id)source;
- (MRDRemoteControlServiceDelegate)delegate;
- (NSString)debugDescription;
- (id)_notifyDelegateWithConnection:(id)connection;
- (void)_initializeIDSRemoteControlServiceWithRoutingDataSource:(id)source;
- (void)reevaluateGroupSessionService;
- (void)start;
- (void)stop;
@end

@implementation MRDRemoteControlService

- (MRDRemoteControlService)initWithRoutingDataSource:(id)source
{
  sourceCopy = source;
  v46.receiver = self;
  v46.super_class = MRDRemoteControlService;
  v5 = [(MRDRemoteControlService *)&v46 init];
  if (v5)
  {
    v6 = +[MRUserSettings currentSettings];
    v7 = +[MRDSettings currentSettings];
    shouldInitializeGenericBonjourService = [v7 shouldInitializeGenericBonjourService];

    if (shouldInitializeGenericBonjourService)
    {
      v9 = [MRDBonjourRemoteControlService alloc];
      v10 = [(MRDBonjourRemoteControlService *)v9 initWithNetServiceType:kMRExternalDeviceBonjourTypeGeneric];
      genericNetworkService = v5->_genericNetworkService;
      v5->_genericNetworkService = v10;

      [(MRDBonjourRemoteControlService *)v5->_genericNetworkService setDelegate:v5];
    }

    v12 = +[MRDSettings currentSettings];
    shouldInitializeTelevisionBonjourService = [v12 shouldInitializeTelevisionBonjourService];

    if (shouldInitializeTelevisionBonjourService)
    {
      v14 = [MRDBonjourRemoteControlService alloc];
      v15 = [(MRDBonjourRemoteControlService *)v14 initWithNetServiceType:kMRExternalDeviceBonjourTypeTelevision];
      televisionNetworkService = v5->_televisionNetworkService;
      v5->_televisionNetworkService = v15;

      [(MRDBonjourRemoteControlService *)v5->_televisionNetworkService setDelegate:v5];
    }

    v17 = objc_alloc_init(MRDAirPlayRemoteControlService);
    airPlayService = v5->_airPlayService;
    v5->_airPlayService = v17;

    [(MRDAirPlayRemoteControlService *)v5->_airPlayService setDelegate:v5];
    if ([v6 shouldInitializeRapportService])
    {
      v19 = objc_alloc_init(MRDRapportRemoteControlService);
      rapportService = v5->_rapportService;
      v5->_rapportService = v19;

      [(MRDRapportRemoteControlService *)v5->_rapportService setDelegate:v5];
    }

    v21 = +[MRUserSettings currentSettings];
    supportNanoLinkAgent = [v21 supportNanoLinkAgent];

    if (supportNanoLinkAgent)
    {
      v40 = _NSConcreteStackBlock;
      v41 = 3221225472;
      v42 = sub_1001462D4;
      v43 = &unk_1004B68F0;
      v44 = v5;
      v45 = sourceCopy;
      dispatch_async(&_dispatch_main_q, &v40);
    }

    v23 = [MRUserSettings currentSettings:v40];
    shouldInitializeIDSService = [v23 shouldInitializeIDSService];

    if (shouldInitializeIDSService)
    {
      v25 = [[MRDIDSRemoteControlService alloc] initWithRoutingDataSource:sourceCopy];
      idsService = v5->_idsService;
      v5->_idsService = v25;

      [(MRDIDSRemoteControlService *)v5->_idsService setDelegate:v5];
    }

    v27 = +[MRUserSettings currentSettings];
    shouldInitializeMRRelayService = [v27 shouldInitializeMRRelayService];

    if (shouldInitializeMRRelayService)
    {
      v29 = objc_alloc_init(MRDMRRelayRemoteControlService);
      mrRelayRemoteControlService = v5->_mrRelayRemoteControlService;
      v5->_mrRelayRemoteControlService = v29;

      [(MRDMRRelayRemoteControlService *)v5->_mrRelayRemoteControlService setDelegate:v5];
    }

    v31 = +[MRSharedSettings currentSettings];
    supportGroupSession = [v31 supportGroupSession];

    if (supportGroupSession)
    {
      v33 = +[NSNotificationCenter defaultCenter];
      [v33 addObserver:v5 selector:"handleGroupSessionServerDidStartNotification:" name:@"MRDGroupSessionServerDidStartNotification" object:0];

      v34 = +[NSNotificationCenter defaultCenter];
      [v34 addObserver:v5 selector:"handleGroupSessionServerDidStopNotification:" name:@"MRDGroupSessionServerDidStopNotification" object:0];

      [(MRDRemoteControlService *)v5 reevaluateGroupSessionService];
    }

    v35 = +[MRSharedSettings currentSettings];
    supportSystemGroupSession = [v35 supportSystemGroupSession];

    if (supportSystemGroupSession)
    {
      v37 = [[MRDSystemGroupSessionRemoteControlService alloc] initWithDelegate:v5];
      systemGroupSessionService = v5->_systemGroupSessionService;
      v5->_systemGroupSessionService = v37;
    }
  }

  return v5;
}

- (void)_initializeIDSRemoteControlServiceWithRoutingDataSource:(id)source
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000351AC;
  v28 = sub_100035A8C;
  v29 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001465F0;
  v21[3] = &unk_1004B78D8;
  v21[4] = self;
  sourceCopy = source;
  v22 = sourceCopy;
  v23 = &v24;
  v4 = objc_retainBlock(v21);
  v5 = [MRBlockGuard alloc];
  v6 = NRPairedDeviceRegistryDeviceDidPairNotification;
  v7 = &_dispatch_main_q;
  v8 = [v5 initWithTimeout:v6 reason:&_dispatch_main_q queue:0 handler:0.0];

  v9 = +[NSNotificationCenter defaultCenter];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100146698;
  v18[3] = &unk_1004BEBE8;
  v10 = v8;
  v19 = v10;
  v11 = v4;
  v20 = v11;
  v12 = [v9 addObserverForName:v6 object:0 queue:0 usingBlock:v18];
  v13 = v25[5];
  v25[5] = v12;

  v14 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDevice = [v14 getActivePairedDevice];

  if (getActivePairedDevice && [v10 disarm])
  {
    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      name = [getActivePairedDevice name];
      *buf = 138412290;
      v31 = name;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlService] Found activePairedDevice <%@>, creating IDSRemoteControlService...", buf, 0xCu);
    }

    v11[2](v11);
  }

  _Block_object_dispose(&v24, 8);
}

- (NSString)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  airPlayService = self->_airPlayService;
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  companionService = self->_companionService;
  v8 = MRCreateIndentedDebugDescriptionFromObject();
  rapportService = self->_rapportService;
  v10 = MRCreateIndentedDebugDescriptionFromObject();
  idsService = self->_idsService;
  v12 = MRCreateIndentedDebugDescriptionFromObject();
  mrRelayRemoteControlService = self->_mrRelayRemoteControlService;
  v14 = MRCreateIndentedDebugDescriptionFromObject();
  v15 = [v3 initWithFormat:@"<%@ %p {\n  AirPlayService = %@\n  CompanionService = %@\n  RapportService = %@\n  IDSService = %@\n  MRRelayService = %@\n}>", v4, self, v6, v8, v10, v12, v14];

  return v15;
}

- (void)start
{
  self->_started = 1;
  [(MRDBonjourRemoteControlService *)self->_genericNetworkService start];
  [(MRDBonjourRemoteControlService *)self->_televisionNetworkService start];
  [(MRDAirPlayRemoteControlService *)self->_airPlayService start];
  [(MRDRapportRemoteControlService *)self->_rapportService start];
  [(MRDIDSCompanionRemoteControlService *)self->_companionService start];
  [(MRDIDSRemoteControlService *)self->_idsService start];
  [(MRDMRRelayRemoteControlService *)self->_mrRelayRemoteControlService start];
  systemGroupSessionService = self->_systemGroupSessionService;

  [(MRDSystemGroupSessionRemoteControlService *)systemGroupSessionService start];
}

- (void)stop
{
  [(MRDBonjourRemoteControlService *)self->_genericNetworkService stop];
  [(MRDBonjourRemoteControlService *)self->_televisionNetworkService stop];
  [(MRDAirPlayRemoteControlService *)self->_airPlayService stop];
  [(MRDRapportRemoteControlService *)self->_rapportService stop];
  [(MRDIDSCompanionRemoteControlService *)self->_companionService stop];
  [(MRDIDSRemoteControlService *)self->_idsService stop];
  [(MRDMRRelayRemoteControlService *)self->_mrRelayRemoteControlService stop];
  [(MRDSystemGroupSessionRemoteControlService *)self->_systemGroupSessionService stop];
  self->_started = 0;
}

- (id)_notifyDelegateWithConnection:(id)connection
{
  v4 = qword_100529550;
  connectionCopy = connection;
  if (v4 != -1)
  {
    sub_1003AA760();
  }

  v6 = [MRDExternalDeviceServerClientConnection alloc];
  v7 = [(MRDExternalDeviceServerClientConnection *)v6 initWithConnection:connectionCopy replyQueue:qword_100529548];
  label = [connectionCopy label];
  [(MRDExternalDeviceServerClientConnection *)v7 setLabel:label];

  destinationOutputDeviceUID = [connectionCopy destinationOutputDeviceUID];
  [(MRDExternalDeviceServerClientConnection *)v7 setDestinationOutputDeviceUID:destinationOutputDeviceUID];

  destinationGroupUID = [connectionCopy destinationGroupUID];
  [(MRDExternalDeviceServerClientConnection *)v7 setDestinationGroupUID:destinationGroupUID];

  connectUserInfo = [connectionCopy connectUserInfo];

  [(MRDExternalDeviceServerClientConnection *)v7 setConnectUserInfo:connectUserInfo];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteControlService:self didAcceptClientConnection:v7];

  return v7;
}

- (void)reevaluateGroupSessionService
{
  v3 = +[MRDMediaRemoteServer server];
  groupSessionServer = [v3 groupSessionServer];
  sessionManager = [groupSessionServer sessionManager];

  v5 = sessionManager;
  groupSessionService = self->_groupSessionService;
  if (!groupSessionService && sessionManager)
  {
    v5 = [[MRDGroupSessionRemoteControlService alloc] initWithGroupSessionManager:sessionManager delegate:self];
    groupSessionService = self->_groupSessionService;
LABEL_6:
    self->_groupSessionService = v5;

    v5 = sessionManager;
    goto LABEL_7;
  }

  if (groupSessionService && !sessionManager)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (MRDRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end