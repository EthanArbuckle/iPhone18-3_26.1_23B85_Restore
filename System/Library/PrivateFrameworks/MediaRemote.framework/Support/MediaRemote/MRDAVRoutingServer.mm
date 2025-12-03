@interface MRDAVRoutingServer
- (BOOL)_setPickedRoute:(id)route withPassword:(id)password options:(unsigned int)options;
- (BOOL)_shouldIgnorePortStatusFailureForRouteWithUID:(id)d previouslyCachedRouteUID:(id *)iD;
- (BOOL)isSilentPrimary;
- (BOOL)routeIsActiveWithUID:(id)d;
- (MRDAVRoutingServer)initWithRoutingDataSource:(id)source;
- (MRDAVRoutingServer)initWithRoutingDataSource:(id)source hostedRoutingService:(id)service systemEndpointController:(id)controller autoConnectionController:(id)connectionController homeServer:(id)server avOutputDeviceAuthorizationSession:(id)session;
- (MSVSystemDialog)activeDialog;
- (id)_createAirPlaySecuritySettings;
- (id)_descriptionForDiscoveryMode:(unsigned int)mode;
- (id)_existingKeychainAccountForOutputDevice:(id)device password:(id *)password;
- (id)_passwordDialogForRouteWithName:(id)name usingInputType:(int64_t)type;
- (id)_predictGroupLeaderForOutputDeviceIDs:(id)ds options:(unint64_t)options details:(id)details;
- (id)_preferredIdentifierForMACAddress:(id)address identifier:(id)identifier name:(id)name;
- (id)_presentDialogWithTitle:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle completion:(id)completion;
- (id)_savedPasswordForOutputDevice:(id)device;
- (id)applicationPickedRoutes;
- (id)clientsForApplicationPickedRoute:(id)route;
- (id)clientsWithApplicationPickedRoutes;
- (id)createTransientEndpointForOutputDeviceUID:(id)d details:(id)details;
- (id)mediaActivityManager;
- (id)pickableRoutesForCategory:(id)category;
- (void)_clearPasswordForOutputDevice:(id)device;
- (void)_clientInvalidatedNotification:(id)notification;
- (void)_failedToConnectToOutputDeviceNotification:(id)notification;
- (void)_handleAddVirtualOutputDeviceMessage:(id)message fromClient:(id)client;
- (void)_handleAuthorizationRequest:(id)request;
- (void)_handleClearAllAVRoutePasswordsMessage:(id)message fromClient:(id)client;
- (void)_handleClusterErrorStatus:(int)status forRoute:(id)route;
- (void)_handleCreateDirectEndpointForDevices:(id)devices fromClient:(id)client;
- (void)_handleCreateGroupWithDevices:(id)devices fromClient:(id)client;
- (void)_handleCreateHostedEndpointForDevices:(id)devices fromClient:(id)client;
- (void)_handleDismissAllBannersMessage:(id)message fromClient:(id)client;
- (void)_handleErrorStatus:(int)status forRoute:(id)route;
- (void)_handleGetActiveSystemEndpointUIDsMessage:(id)message fromClient:(id)client;
- (void)_handleGetAirPlaySecuritySettingsMessage:(id)message fromClient:(id)client;
- (void)_handleGetAirplayStatus:(id)status fromClient:(id)client;
- (void)_handleGetExternalDeviceMessage:(id)message fromClient:(id)client;
- (void)_handleGetExternalScreenTypeMessage:(id)message fromClient:(id)client;
- (void)_handleGetHostedEndpointForDeviceUIDMessage:(id)message fromClient:(id)client;
- (void)_handleGetHostedRoutingXPCEndpointMessage:(id)message fromClient:(id)client;
- (void)_handleGetOutputContextUIDMessage:(id)message fromClient:(id)client;
- (void)_handleGetPickableRoutesMessage:(id)message fromClient:(id)client;
- (void)_handleGetPickedRouteHasVolumeControlMessage:(id)message fromClient:(id)client;
- (void)_handleGetRecentAVOutputDeviceUIDsMessage:(id)message fromClient:(id)client;
- (void)_handleGetRecommendRouteCandidatesMessage:(id)message fromClient:(id)client;
- (void)_handleGetSavedAVRoutePasswordMessage:(id)message fromClient:(id)client;
- (void)_handleGetVirtualOutputDevicesMessage:(id)message fromClient:(id)client;
- (void)_handleGroupDevicesAndSendCommand:(id)command fromClient:(id)client;
- (void)_handleMigrateFromEndpointToEndpointMessage:(id)message fromClient:(id)client;
- (void)_handleMigrateFromEndpointToOutputDevicesMessage:(id)message fromClient:(id)client;
- (void)_handleModifyOutputContextMessage:(id)message fromClient:(id)client;
- (void)_handlePauseOutputDeviceUIDsMessage:(id)message fromClient:(id)client;
- (void)_handlePredictGroupLeader:(id)leader fromClient:(id)client;
- (void)_handlePrepareGroupForPlaybackMessage:(id)message fromClient:(id)client;
- (void)_handlePresentRouteAuthorizationStatusMessage:(id)message fromClient:(id)client;
- (void)_handlePromptForRouteAuthorizationMessage:(id)message fromClient:(id)client;
- (void)_handleRecommendRouteCandidateMessage:(id)message fromClient:(id)client;
- (void)_handleRemoveFromParentGroup:(id)group fromClient:(id)client;
- (void)_handleResetOutputContextMessage:(id)message fromClient:(id)client;
- (void)_handleResumeNowPlayingSession:(id)session fromClient:(id)client;
- (void)_handleSearchEndpointsForOutputDeviceUIDsMessage:(id)message fromClient:(id)client;
- (void)_handleSearchEndpointsForRoutingContextUIDMessage:(id)message fromClient:(id)client;
- (void)_handleSendCommandToEachEndpointContainingOutputDeviceUIDsMessage:(id)message fromClient:(id)client;
- (void)_handleSendCommandToNewGroupContainingOutputDeviceUIDsMessage:(id)message fromClient:(id)client;
- (void)_handleSetApplicationPickedRoutes:(id)routes fromClient:(id)client;
- (void)_handleSetNearbyDevice:(id)device fromClient:(id)client;
- (void)_handleSetPickedRouteHasVolumeControlMessage:(id)message fromClient:(id)client;
- (void)_handleSetPickedRouteMessage:(id)message fromClient:(id)client;
- (void)_handleSetRecentAVOutputDeviceUIDMessage:(id)message fromClient:(id)client;
- (void)_handleSetRouteDiscoveryModeMessage:(id)message fromClient:(id)client;
- (void)_handleSetSavedAVRoutePasswordMessage:(id)message fromClient:(id)client;
- (void)_handleStartNowPlayingSession:(id)session fromClient:(id)client;
- (void)_handleStopNowPlayingSession:(id)session fromClient:(id)client;
- (void)_handleUnpickAirPlayRoutesMessage:(id)message fromClient:(id)client;
- (void)_handleUpdateActiveSystemEndpointUIDMessage:(id)message fromClient:(id)client;
- (void)_handleWillStartPlayingInterruptMessage:(id)message fromClient:(id)client;
- (void)_launchTVClusterSettings;
- (void)_loadMostRecentlyPicked;
- (void)_postExternalScreenDidChange;
- (void)_presentPasswordDialogForRoute:(id)route withOptions:(unsigned int)options;
- (void)_reevaluateAirplayActive;
- (void)_registerNotifications;
- (void)_routingDataSourcePickableRoutesDidChangeNotification:(id)notification;
- (void)_routingDataSourceRouteStatusDidChangeNotification:(id)notification;
- (void)_saveMostRecentlyPicked;
- (void)_storePassword:(id)password forOutputDevice:(id)device;
- (void)_storePassword:(id)password forRoute:(id)route;
- (void)_unregisterNotifications;
- (void)_updateSystemRouteDiscoveryMode;
- (void)collectDiagnostic:(id)diagnostic;
- (void)createEndpointForOutputDeviceIDs:(id)ds details:(id)details completion:(id)completion;
- (void)dealloc;
- (void)handleXPCMessage:(id)message fromClient:(id)client;
- (void)outputDeviceAuthorizationSession:(id)session didProvideAuthorizationRequest:(id)request;
- (void)pickCachedRouteWithUID:(id)d;
- (void)postSystemEndpointDeviceChange:(id)change type:(int64_t)type originClient:(id)client handler:(id)handler;
- (void)removeOutputDeviceUIDsFromParentGroup:(id)group details:(id)details completion:(id)completion;
- (void)restoreClientState:(id)state handler:(id)handler;
- (void)restoreClientSystemEndpointWithType:(int64_t)type handler:(id)handler;
- (void)searchEndpointsForOutputDeviceUID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion;
- (void)searchEndpointsForRoutingContextUID:(id)d timeout:(double)timeout details:(id)details completion:(id)completion;
- (void)setAirplayActive:(BOOL)active;
- (void)systemEndpointController:(id)controller activeSystemEndpointDidChangeForRequest:(id)request type:(int64_t)type;
@end

@implementation MRDAVRoutingServer

- (BOOL)isSilentPrimary
{
  if (MRSupportsMediaControlReceiver() && (+[MRSharedSettings currentSettings](MRSharedSettings, "currentSettings"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 supportNowPlayingSessionDataSource], v2, (v3 & 1) == 0))
  {

    return _MRMediaRemoteGetLocalIsProxyGroupPlayer();
  }

  else
  {
    v4 = +[MRUserSettings currentSettings];
    supportMultiplayerHost = [v4 supportMultiplayerHost];

    if (supportMultiplayerHost)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = +[MRAVOutputContext sharedAudioPresentationContext];
      v6 = [v7 containsLocalDevice] ^ 1;
    }

    return v6;
  }
}

- (void)_updateSystemRouteDiscoveryMode
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = +[MRDMediaRemoteServer server];
  allClients = [v3 allClients];

  v5 = [allClients countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = 0;
    v8 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allClients);
        }

        routeDiscoveryMode = [*(*(&v20 + 1) + 8 * i) routeDiscoveryMode];
        if (routeDiscoveryMode <= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = routeDiscoveryMode;
        }
      }

      v6 = [allClients countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v7 != [(MRDAVRoutingDataSource *)self->_routingDataSource discoveryMode])
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(MRDAVRoutingServer *)self _descriptionForDiscoveryMode:v7];
      *buf = 138543362;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Updating system route discovery mode to %{public}@", buf, 0xCu);
    }

    [(MRDAVRoutingDataSource *)self->_routingDataSource setDiscoveryMode:v7];
  }

  discoveryTransaction = [(MRDAVRoutingServer *)self discoveryTransaction];

  if (v7)
  {
    if (!discoveryTransaction)
    {
      v14 = [[MROSTransaction alloc] initWithName:@"com.apple.mediaremoted.MRDAVRoutingServer"];
      [(MRDAVRoutingServer *)self setDiscoveryTransaction:v14];

      discoveryTransaction2 = [(MRDAVRoutingServer *)self discoveryTransaction];
      MRRegisterTransaction();

      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        discoveryTransaction3 = [(MRDAVRoutingServer *)self discoveryTransaction];
        *buf = 138543362;
        v25 = discoveryTransaction3;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Discovery enabled. Starting transaction: %{public}@", buf, 0xCu);
      }
    }
  }

  else if (discoveryTransaction)
  {
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      discoveryTransaction4 = [(MRDAVRoutingServer *)self discoveryTransaction];
      *buf = 138543362;
      v25 = discoveryTransaction4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Discovery ended. Clearing transaction %{public}@", buf, 0xCu);
    }

    [(MRDAVRoutingServer *)self setDiscoveryTransaction:0];
  }
}

- (void)_reevaluateAirplayActive
{
  v3 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v3 supportMultiplayerHost];

  if (supportMultiplayerHost)
  {
    v6 = +[MRDMediaRemoteServer server];
    allClients = [v6 allClients];
    -[MRDAVRoutingServer setAirplayActive:](self, "setAirplayActive:", [allClients mr_any:&stru_1004BFAC8]);
  }
}

- (MRDAVRoutingServer)initWithRoutingDataSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(MRDAVHostedRoutingService);
  v6 = +[MRUserSettings currentSettings];
  supportSystemEndpoints = [v6 supportSystemEndpoints];

  if (supportSystemEndpoints)
  {
    v8 = [MRDAVSystemEndpointController alloc];
    hostedRoutingController = [(MRDAVHostedRoutingService *)v5 hostedRoutingController];
    v10 = [(MRDAVSystemEndpointController *)v8 initWithRoutingController:hostedRoutingController];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(MRDExternalDeviceHomeServer);
  v12 = +[AVOutputDeviceAuthorizationSession sharedAuthorizationSession];
  v13 = +[MRDAutoConnectionController sharedConnectionController];
  v14 = [(MRDAVRoutingServer *)self initWithRoutingDataSource:sourceCopy hostedRoutingService:v5 systemEndpointController:v10 autoConnectionController:v13 homeServer:v11 avOutputDeviceAuthorizationSession:v12];

  return v14;
}

- (MRDAVRoutingServer)initWithRoutingDataSource:(id)source hostedRoutingService:(id)service systemEndpointController:(id)controller autoConnectionController:(id)connectionController homeServer:(id)server avOutputDeviceAuthorizationSession:(id)session
{
  sourceCopy = source;
  serviceCopy = service;
  controllerCopy = controller;
  connectionControllerCopy = connectionController;
  serverCopy = server;
  sessionCopy = session;
  v73.receiver = self;
  v73.super_class = MRDAVRoutingServer;
  v18 = [(MRDAVRoutingServer *)&v73 init];
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v20 = dispatch_queue_create("com.apple.mediaremote.routingServer.workerQueue", v19);
  workerQueue = v18->_workerQueue;
  v18->_workerQueue = v20;

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10015C738;
  v71[3] = &unk_1004BF520;
  v22 = v18;
  v72 = v22;
  [MRAVLightweightReconnaissanceSession setSearchEndpointsForOutputDeviceUIDImplementation:v71];
  [MRAVOutputContextModification setModifyOutputContextImplementation:&stru_1004BF560];
  objc_storeStrong(&v22->_routingDataSource, source);
  objc_storeStrong(&v22->_hostedRoutingService, service);
  objc_storeStrong(&v22->_systemEndpointController, controller);
  [(MRDAVSystemEndpointController *)v22->_systemEndpointController setDelegate:v22];
  objc_storeStrong(&v22->_autoConnectionController, connectionController);
  objc_storeStrong(&v22->_homeServer, server);
  v23 = objc_alloc_init(NSMutableSet);
  routeUIDsToIgnorePortStatusFailures = v22->_routeUIDsToIgnorePortStatusFailures;
  v22->_routeUIDsToIgnorePortStatusFailures = v23;

  v25 = objc_alloc_init(NSMutableSet);
  reconnaissanceSessions = v22->_reconnaissanceSessions;
  v22->_reconnaissanceSessions = v25;

  v27 = objc_alloc_init(NSMutableArray);
  mostRecentlyPickedDevices = v22->_mostRecentlyPickedDevices;
  v22->_mostRecentlyPickedDevices = v27;

  v22->_mostRecentStatus = -1;
  v29 = +[MRUserSettings currentSettings];
  if ([v29 supportTopologyHealing])
  {

LABEL_5:
    v32 = objc_alloc_init(MRDRoutingContinuityManager);
    routingContinuityManager = v22->_routingContinuityManager;
    v22->_routingContinuityManager = v32;

    goto LABEL_6;
  }

  v30 = +[MRUserSettings currentSettings];
  supportRoutingContinuity = [v30 supportRoutingContinuity];

  if (supportRoutingContinuity)
  {
    goto LABEL_5;
  }

LABEL_6:
  v34 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v34 supportMultiplayerHost];

  if (supportMultiplayerHost)
  {
    v36 = objc_alloc_init(MRDIdleTopologySimplifier);
    topologySimplifier = v22->_topologySimplifier;
    v22->_topologySimplifier = v36;

    v38 = objc_alloc_init(MRDAVLocalDeviceCommitManager);
    localDeviceCommitManager = v22->_localDeviceCommitManager;
    v22->_localDeviceCommitManager = v38;

    v40 = objc_alloc_init(MRDNowPlayingAirPlaySessionController);
    nowPlayingAirPlaySessionController = v22->_nowPlayingAirPlaySessionController;
    v22->_nowPlayingAirPlaySessionController = v40;
  }

  v42 = +[MRUserSettings currentSettings];
  useProactivePFSQSender = [v42 useProactivePFSQSender];

  if (useProactivePFSQSender)
  {
    v44 = objc_alloc_init(MRDProactivePrepareForSetQueueSender);
    proactivePrepareForSetQueueSender = v22->_proactivePrepareForSetQueueSender;
    v22->_proactivePrepareForSetQueueSender = v44;
  }

  v46 = +[MRUserSettings currentSettings];
  supportRouteRecommendations = [v46 supportRouteRecommendations];

  if (supportRouteRecommendations)
  {
    v48 = objc_alloc_init(MRDRouteRecommendationController);
    recommendationController = v22->_recommendationController;
    v22->_recommendationController = v48;
  }

  v50 = +[MRUserSettings currentSettings];
  showBluePill = [v50 showBluePill];

  if (showBluePill)
  {
    v52 = objc_alloc_init(MRDRoutedBackgroundActivityManager);
    routedBackgroundActivityManager = v22->_routedBackgroundActivityManager;
    v22->_routedBackgroundActivityManager = v52;

    focusMonitor = [(MRDRouteRecommendationController *)v22->_recommendationController focusMonitor];
    [(MRDRoutedBackgroundActivityManager *)v22->_routedBackgroundActivityManager setFocusMonitor:focusMonitor];

    [(MRDRouteRecommendationController *)v22->_recommendationController setRoutedBackgroundActivityManager:v22->_routedBackgroundActivityManager];
  }

  v55 = +[MRUserSettings currentSettings];
  donateActiveRoutesToBiome = [v55 donateActiveRoutesToBiome];

  if (donateActiveRoutesToBiome)
  {
    v57 = objc_alloc_init(MRDActiveMediaRouteBiomeDonor);
    activeMediaRouteDonor = v22->_activeMediaRouteDonor;
    v22->_activeMediaRouteDonor = v57;
  }

  v59 = +[MRUserSettings currentSettings];
  carPlayBannersEnabled = [v59 carPlayBannersEnabled];

  if (carPlayBannersEnabled)
  {
    v61 = objc_alloc_init(MRDCarPlayRouteRecommendationController);
    carPlayRecommendationController = v22->_carPlayRecommendationController;
    v22->_carPlayRecommendationController = v61;
  }

  [sessionCopy setDelegate:v22];
  v63 = +[MRDPreemptiveRemoteControlConnectionManager sharedManager];
  preemptiveRemoteControlConnectionManager = v22->_preemptiveRemoteControlConnectionManager;
  v22->_preemptiveRemoteControlConnectionManager = v63;

  [(MRDAVRoutingServer *)v22 _registerNotifications];
  [(MRDAVRoutingServer *)v22 _loadMostRecentlyPicked];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10015C804;
  block[3] = &unk_1004B6D08;
  v70 = v22;
  dispatch_async(&_dispatch_main_q, block);

LABEL_19:
  return v18;
}

- (void)dealloc
{
  v3 = +[AVOutputDeviceAuthorizationSession sharedAuthorizationSession];
  [v3 setDelegate:0];
  [(MRDAVRoutingServer *)self _unregisterNotifications];

  v4.receiver = self;
  v4.super_class = MRDAVRoutingServer;
  [(MRDAVRoutingServer *)&v4 dealloc];
}

- (void)setAirplayActive:(BOOL)active
{
  if (self->_airplayActive != active)
  {
    self->_airplayActive = active;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"MRDRoutingServerAirplayActiveDidChange" object:self];
  }
}

- (id)pickableRoutesForCategory:(id)category
{
  v3 = [(MRDAVRoutingDataSource *)self->_routingDataSource pickableRoutesForCategory:category];
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dictionary = [*(*(&v12 + 1) + 8 * i) dictionary];
        [v4 addObject:dictionary];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)pickCachedRouteWithUID:(id)d
{
  dCopy = d;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Route change requested for AV server's cached routes with UID %{public}@", buf, 0xCu);
  }

  [(MRDAVRoutingDataSource *)self->_routingDataSource pickedRoutes];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        uniqueIdentifier = [*(*(&v21 + 1) + 8 * i) uniqueIdentifier];
        v12 = [uniqueIdentifier hasPrefix:dCopy];

        if (v12)
        {
          v15 = v6;
          goto LABEL_27;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = [(MRDAVRoutingDataSource *)self->_routingDataSource pickableRoutesForCategory:0];
  v14 = dCopy;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:buf count:16];
  if (v16)
  {
    v17 = *v26;
    while (2)
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v25 + 1) + 8 * j);
        if ([v19 matchesUniqueIdentifier:{v14, v21}])
        {
          v16 = v19;
          goto LABEL_22;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v25 objects:buf count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  if (v16)
  {
    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Switching to route with UID %{public}@", buf, 0xCu);
    }

    [(MRDAVRoutingServer *)self _setPickedRoute:v16 withPassword:0 options:0];
  }

LABEL_27:
}

- (BOOL)routeIsActiveWithUID:(id)d
{
  routingDataSource = self->_routingDataSource;
  dCopy = d;
  pickedRoute = [(MRDAVRoutingDataSource *)routingDataSource pickedRoute];
  uniqueIdentifier = [pickedRoute uniqueIdentifier];
  v7 = [uniqueIdentifier hasPrefix:dCopy];

  return v7;
}

- (id)applicationPickedRoutes
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = +[MRDMediaRemoteServer server];
  allClients = [v3 allClients];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = allClients;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        applicationPickedRoutes = [*(*(&v13 + 1) + 8 * i) applicationPickedRoutes];
        [v2 addObjectsFromArray:applicationPickedRoutes];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  allObjects = [v2 allObjects];

  return allObjects;
}

- (id)clientsForApplicationPickedRoute:(id)route
{
  routeCopy = route;
  v19 = objc_alloc_init(NSMutableArray);
  v4 = +[MRDMediaRemoteServer server];
  allClients = [v4 allClients];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = allClients;
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        applicationPickedRoutes = [v7 applicationPickedRoutes];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = applicationPickedRoutes;
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              uniqueIdentifier = [*(*(&v22 + 1) + 8 * j) uniqueIdentifier];
              uniqueIdentifier2 = [routeCopy uniqueIdentifier];
              v16 = [uniqueIdentifier isEqual:uniqueIdentifier2];

              if (v16)
              {
                [v19 addObject:v7];
                goto LABEL_16;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  return v19;
}

- (id)clientsWithApplicationPickedRoutes
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = +[MRDMediaRemoteServer server];
  allClients = [v3 allClients];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = allClients;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        applicationPickedRoutes = [v10 applicationPickedRoutes];
        if (applicationPickedRoutes)
        {
          v12 = applicationPickedRoutes;
          applicationPickedRoutes2 = [v10 applicationPickedRoutes];
          v14 = [applicationPickedRoutes2 count];

          if (v14)
          {
            [v2 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v2;
}

- (void)restoreClientState:(id)state handler:(id)handler
{
  handlerCopy = handler;
  if ([state isEntitledFor:0x10000])
  {
    [(MRDAVRoutingServer *)self restoreClientSystemEndpointWithType:0 handler:handlerCopy];
    [(MRDAVRoutingServer *)self restoreClientSystemEndpointWithType:1 handler:handlerCopy];
    [(MRDAVRoutingServer *)self restoreClientSystemEndpointWithType:2 handler:handlerCopy];
    [(MRDAVRoutingServer *)self restoreClientSystemEndpointWithType:3 handler:handlerCopy];
  }
}

- (void)restoreClientSystemEndpointWithType:(int64_t)type handler:(id)handler
{
  systemEndpointController = self->_systemEndpointController;
  if (systemEndpointController)
  {
    handlerCopy = handler;
    v9 = [(MRDAVSystemEndpointController *)systemEndpointController activeOutputDeviceUID:type];
    v8 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v9 reason:@"Restore"];
    [v8 setChangeType:0];
    [(MRDAVRoutingServer *)self postSystemEndpointDeviceChange:v8 type:type originClient:0 handler:handlerCopy];
  }
}

- (id)mediaActivityManager
{
  mediaActivityManager = self->_mediaActivityManager;
  if (!mediaActivityManager)
  {
    v4 = objc_alloc_init(MRDMediaActivityManager);
    v5 = self->_mediaActivityManager;
    self->_mediaActivityManager = v4;

    mediaActivityManager = self->_mediaActivityManager;
  }

  return mediaActivityManager;
}

- (void)handleXPCMessage:(id)message fromClient:(id)client
{
  xdict = message;
  clientCopy = client;
  switch(xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY"))
  {
    case 0x300000000000001uLL:
      [(MRDAVRoutingServer *)self _handleSetRouteDiscoveryModeMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000002uLL:
      [(MRDAVRoutingServer *)self _handleGetPickableRoutesMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000003uLL:
      [(MRDAVRoutingServer *)self _handleSetPickedRouteMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000004uLL:
      [(MRDAVRoutingServer *)self _handleGetPickedRouteHasVolumeControlMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000005uLL:
      [(MRDAVRoutingServer *)self _handleSetPickedRouteHasVolumeControlMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000006uLL:
      [(MRDAVRoutingServer *)self _handleGetExternalScreenTypeMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000007uLL:
      [(MRDAVRoutingServer *)self _handleGetSavedAVRoutePasswordMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000008uLL:
      [(MRDAVRoutingServer *)self _handleSetSavedAVRoutePasswordMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000009uLL:
      [(MRDAVRoutingServer *)self _handleClearAllAVRoutePasswordsMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000000AuLL:
      [(MRDAVRoutingServer *)self _handleUnpickAirPlayRoutesMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000000BuLL:
      [(MRDAVRoutingServer *)self _handleSetApplicationPickedRoutes:xdict fromClient:clientCopy];
      break;
    case 0x30000000000000CuLL:
      [(MRDAVRoutingServer *)self _handleGetAirPlaySecuritySettingsMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000000DuLL:
      [(MRDAVRoutingServer *)self _handleGetHostedRoutingXPCEndpointMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000000EuLL:
      [(MRDAVRoutingServer *)self _handleSetRecentAVOutputDeviceUIDMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000000FuLL:
      [(MRDAVRoutingServer *)self _handleGetRecentAVOutputDeviceUIDsMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000010uLL:
      [(MRDAVRoutingServer *)self _handleGetActiveSystemEndpointUIDsMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000011uLL:
      [(MRDAVRoutingServer *)self _handleUpdateActiveSystemEndpointUIDMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000013uLL:
      [(MRDAVRoutingServer *)self _handleCreateEndpointWithDevices:xdict fromClient:clientCopy];
      break;
    case 0x300000000000014uLL:
      [(MRDAVRoutingServer *)self _handlePromptForRouteAuthorizationMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000015uLL:
      [(MRDAVRoutingServer *)self _handlePresentRouteAuthorizationStatusMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000016uLL:
      [(MRDAVRoutingServer *)self _handleGetAirplayStatus:xdict fromClient:clientCopy];
      break;
    case 0x300000000000017uLL:
      [(MRDAVRoutingServer *)self _handleGroupDevicesAndSendCommand:xdict fromClient:clientCopy];
      break;
    case 0x300000000000018uLL:
      [(MRDAVRoutingServer *)self _handleRemoveFromParentGroup:xdict fromClient:clientCopy];
      break;
    case 0x300000000000019uLL:
      [(MRDAVRoutingServer *)self _handlePredictGroupLeader:xdict fromClient:clientCopy];
      break;
    case 0x30000000000001AuLL:
      [(MRDAVRoutingServer *)self _handleSetNearbyDevice:xdict fromClient:clientCopy];
      break;
    case 0x30000000000001CuLL:
      [(MRDAVRoutingServer *)self _handleResetOutputContextMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000001DuLL:
      [(MRDAVRoutingServer *)self _handleGetExternalDeviceMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000001EuLL:
      [(MRDAVRoutingServer *)self _handleAddVirtualOutputDeviceMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000001FuLL:
      [(MRDAVRoutingServer *)self _handleGetVirtualOutputDevicesMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000020uLL:
      [(MRDAVRoutingServer *)self _handleCreateGroupWithDevices:xdict fromClient:clientCopy];
      break;
    case 0x300000000000021uLL:
      [(MRDAVRoutingServer *)self _handleCreateDirectEndpointForDevices:xdict fromClient:clientCopy];
      break;
    case 0x300000000000022uLL:
      [(MRDExternalDeviceHomeServer *)self->_homeServer handleXPCMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000023uLL:
      [(MRDAVRoutingServer *)self _handleStartNowPlayingSession:xdict fromClient:clientCopy];
      break;
    case 0x300000000000024uLL:
      [(MRDAVRoutingServer *)self _handleStopNowPlayingSession:xdict fromClient:clientCopy];
      break;
    case 0x300000000000025uLL:
      [(MRDAVRoutingServer *)self _handleGetOutputContextUIDMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000026uLL:
      [(MRDAVRoutingServer *)self _handleMigrateFromEndpointToOutputDevicesMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000027uLL:
      [(MRDAVRoutingServer *)self _handleMigrateFromEndpointToEndpointMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000028uLL:
      [(MRDAVRoutingServer *)self _handleModifyOutputContextMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000029uLL:
      [(MRDAVRoutingServer *)self _handleCreateHostedEndpointForDevices:xdict fromClient:clientCopy];
      break;
    case 0x30000000000002AuLL:
      [(MRDAVRoutingServer *)self _handleWillStartPlayingInterruptMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000002BuLL:
      [(MRDAVRoutingServer *)self _handleRecommendRouteCandidateMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000002CuLL:
      [(MRDAVRoutingServer *)self _handleGetRecommendRouteCandidatesMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000002DuLL:
      [(MRDAVRoutingServer *)self _handleResumeNowPlayingSession:xdict fromClient:clientCopy];
      break;
    case 0x30000000000002EuLL:
      [(MRDAVRoutingServer *)self _handleDismissAllBannersMessage:xdict fromClient:clientCopy];
      break;
    case 0x30000000000002FuLL:
      [(MRDAVRoutingServer *)self _handlePauseOutputDeviceUIDsMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000030uLL:
      [(MRDAVRoutingServer *)self _handleSearchEndpointsForOutputDeviceUIDsMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000031uLL:
      [(MRDAVRoutingServer *)self _handleSendCommandToEachEndpointContainingOutputDeviceUIDsMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000032uLL:
      [(MRDAVRoutingServer *)self _handleSendCommandToNewGroupContainingOutputDeviceUIDsMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000033uLL:
      [(MRDAVRoutingServer *)self _handleSearchEndpointsForRoutingContextUIDMessage:xdict fromClient:clientCopy];
      break;
    case 0x300000000000034uLL:
      [(MRDAVRoutingServer *)self _handlePrepareGroupForPlaybackMessage:xdict fromClient:clientCopy];
      break;
    default:
      break;
  }
}

- (void)collectDiagnostic:(id)diagnostic
{
  routingDataSource = self->_routingDataSource;
  diagnosticCopy = diagnostic;
  [diagnosticCopy setSystemDiscoveryMode:{-[MRDAVRoutingDataSource discoveryMode](routingDataSource, "discoveryMode")}];
  v6 = MRMediaRemoteCopyDeviceUID();
  [diagnosticCopy setLocalReceiverPairingIdentity:v6];

  _createAirPlaySecuritySettings = [(MRDAVRoutingServer *)self _createAirPlaySecuritySettings];
  [diagnosticCopy setAirplaySecuritySettings:_createAirPlaySecuritySettings];
  systemEndpointInfo = [(MRDAVSystemEndpointController *)self->_systemEndpointController systemEndpointInfo];
  [diagnosticCopy setSystemActiveEndpoints:systemEndpointInfo];

  recentlyDismissedRecommendationsInfo = [(MRDAVSystemEndpointController *)self->_systemEndpointController recentlyDismissedRecommendationsInfo];
  [diagnosticCopy setRecentlyDismissedSystemEndpoints:recentlyDismissedRecommendationsInfo];

  autoConnectingEndpoints = [(MRDAutoConnectionController *)self->_autoConnectionController autoConnectingEndpoints];
  [diagnosticCopy setAutoConnectingEndpoints:autoConnectingEndpoints];

  autoConnectedEndpoints = [(MRDAutoConnectionController *)self->_autoConnectionController autoConnectedEndpoints];
  [diagnosticCopy setAutoConnectedEndpoints:autoConnectedEndpoints];

  [diagnosticCopy setAutomaticRemoteControlConnections:self->_preemptiveRemoteControlConnectionManager];
  [(MRDAVHostedRoutingService *)self->_hostedRoutingService collectDiagnostic:diagnosticCopy];
}

- (void)outputDeviceAuthorizationSession:(id)session didProvideAuthorizationRequest:(id)request
{
  requestCopy = request;
  status = [requestCopy status];
  if (status > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(&off_1004BFB00 + status);
  }

  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v46 = requestCopy;
    v47 = 2114;
    v48 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Received output device authorization request: %{public}@ (status = %{public}@)", buf, 0x16u);
  }

  outputDevice = [requestCopy outputDevice];
  name = [outputDevice name];
  v11 = [[MRDAVOutputDeviceRoute alloc] initWithAVOutputDevice:outputDevice];
  [(MRDAVRoutingServer *)self _postRouteStatusDidChangeNotificationForRoute:v11 newStatus:1];

  authorizationTokenType = [requestCopy authorizationTokenType];
  if ([authorizationTokenType isEqualToString:AVOutputDeviceAuthorizationTokenTypePIN])
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  if (authorizationTokenType != AVOutputDeviceAuthorizationTokenTypePassword)
  {
    [(MRDAVRoutingServer *)self _clearPasswordForOutputDevice:outputDevice];
LABEL_11:
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10015E03C;
    v38[3] = &unk_1004B68F0;
    v14 = name;
    v39 = v14;
    v15 = requestCopy;
    v40 = v15;
    v16 = objc_retainBlock(v38);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10015E0FC;
    v31[3] = &unk_1004BF5D8;
    v32 = outputDevice;
    v33 = v15;
    v34 = v14;
    v35 = authorizationTokenType;
    selfCopy = self;
    v37 = v16;
    v17 = outputDevice;
    v18 = v16;
    v19 = objc_retainBlock(v31);
    v20 = name;
    v21 = [MRDRouteAuthorizationRequest alloc];
    v22 = [[MRDAVOutputDeviceRoute alloc] initWithAVOutputDevice:v17];
    v23 = v21;
    name = v20;
    v24 = [(MRDRouteAuthorizationRequest *)v23 initWithRoute:v22 inputType:v13 responseCallback:v19 cancelCallback:v18];

    [(MRDAVRoutingServer *)self _handleAuthorizationRequest:v24];
    v25 = v39;
    goto LABEL_16;
  }

  v26 = [(MRDAVRoutingServer *)self _savedPasswordForOutputDevice:outputDevice];
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v26;
  v28 = _MRLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [outputDevice name];
    *buf = 138543618;
    v46 = name2;
    v47 = 2112;
    v48 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Authorization request using saved password for %{public}@: %@", buf, 0x16u);
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10015DFD8;
  v41[3] = &unk_1004B6A98;
  v42 = outputDevice;
  v43 = v27;
  selfCopy2 = self;
  v25 = v27;
  v30 = outputDevice;
  [requestCopy respondWithAuthorizationToken:v25 completionHandler:v41];

LABEL_16:
}

- (void)_handleSetRouteDiscoveryModeMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  [clientCopy setRouteDiscoveryMode:{xpc_dictionary_get_uint64(message, "MRXPC_ROUTE_DISCOVERY_MODE_KEY")}];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [clientCopy displayName];
    v9 = -[MRDAVRoutingServer _descriptionForDiscoveryMode:](self, "_descriptionForDiscoveryMode:", [clientCopy routeDiscoveryMode]);
    v10 = 138543618;
    v11 = displayName;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Client %{public}@ changed route discovery mode to %{public}@.", &v10, 0x16u);
  }

  [(MRDAVRoutingServer *)self _updateSystemRouteDiscoveryMode];
}

- (void)_handleGetPickableRoutesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "MRXPC_ROUTE_CATEGORY_KEY");
  if (string)
  {
    v7 = [NSString stringWithUTF8String:string];
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;
  v8 = [(MRDAVRoutingServer *)self pickableRoutesForCategory:v7];
  v9 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:0];
  sub_10001673C(messageCopy, "MRXPC_ROUTES_DATA_KEY", v9, 0);
}

- (void)_handleSetPickedRouteMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = MRCreatePropertyListFromXPCMessage();
  v9 = MRCreateStringFromXPCMessage();
  v10 = MRCreateStringFromXPCMessage();
  uint64 = xpc_dictionary_get_uint64(messageCopy, "MRXPC_ROUTE_OPTIONS_KEY");
  if (v8)
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [clientCopy displayName];
      v14 = MRMediaRemoteCopySetPickedRouteOptionsDescription();
      *buf = 138543874;
      v31 = displayName;
      v32 = 2114;
      v33 = v8;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] %{public}@ requesting to pick route: %{public}@, options: %{public}@", buf, 0x20u);
    }

    if ([(MRDAVRoutingServer *)self setPickedRoute:v8 withPassword:v10 options:uint64])
    {
      v15 = 0;
    }

    else
    {
      v15 = 7;
    }

    sub_10000F9E4(messageCopy, v15);
  }

  else
  {
    v16 = _MRLogForCategory();
    v17 = v16;
    if (v9)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        displayName2 = [clientCopy displayName];
        v19 = MRMediaRemoteCopySetPickedRouteOptionsDescription();
        *buf = 138543874;
        v31 = displayName2;
        v32 = 2114;
        v33 = v9;
        v34 = 2114;
        v35 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] %{public}@ requesting to pick route with UID: %{public}@, options: %{public}@", buf, 0x20u);
      }

      v20 = [[MRDAVReconnaissanceSession alloc] initWithRouteUID:v9];
      [(NSMutableSet *)self->_reconnaissanceSessions addObject:v20];
      v21 = _MRLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v9;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Beginning AV reconnaissance session for route with UID: %{public}@", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      objc_initWeak(&location, v20);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10015EA08;
      v22[3] = &unk_1004BF600;
      objc_copyWeak(&v26, buf);
      v23 = v9;
      v24 = v10;
      v28 = uint64;
      objc_copyWeak(&v27, &location);
      v25 = messageCopy;
      [(MRDAVReconnaissanceSession *)v20 beginSearchWithTimeout:v22 completion:5.0];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1003AAF20();
      }

      sub_10000F9E4(messageCopy, 7u);
    }
  }
}

- (void)_handleGetPickedRouteHasVolumeControlMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v6 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v6 nowPlayingServer];

  v8 = [nowPlayingServer queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];

  originClient = [v8 originClient];

  if (originClient)
  {
    originClient2 = [v8 originClient];
    volumeControlCapabilities = [originClient2 volumeControlCapabilities];

    v12 = volumeControlCapabilities;
  }

  else
  {
    v12 = 0;
  }

  sub_10000BEE0(messageCopy, "MRXPC_ROUTE_VOLUME_CONTROL_CAPABILITIES_KEY", 0, v12, 0);
}

- (void)_handleSetPickedRouteHasVolumeControlMessage:(id)message fromClient:(id)client
{
  xdict = message;
  clientCopy = client;
  v6 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v6 nowPlayingServer];

  v8 = [nowPlayingServer queryExistingPlayerPathForXPCMessage:xdict forClient:clientCopy];

  originClient = [v8 originClient];

  if (originClient)
  {
    if ([v8 isLocalOrigin])
    {
      error = 2;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(xdict, "MRXPC_ROUTE_VOLUME_CONTROL_CAPABILITIES_KEY");
      originClient2 = [v8 originClient];
      [originClient2 setVolumeControlCapabilities:int64];

      error = 0;
    }
  }

  else
  {
    error = [v8 error];
  }

  sub_10000F9E4(xdict, error);
}

- (void)_handleGetExternalScreenTypeMessage:(id)message fromClient:(id)client
{
  routingDataSource = self->_routingDataSource;
  messageCopy = message;
  sub_10000BEE0(messageCopy, "MRXPC_ROUTE_EXTERNAL_SCREEN_TYPE_KEY", 1, [(MRDAVRoutingDataSource *)routingDataSource externalScreenType], 0);
}

- (void)_handleGetSavedAVRoutePasswordMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = MRCreateStringFromXPCMessage();
  v6 = v5;
  if (v5)
  {
    v5 = MSVKeychainCopyKeychainValue();
  }

  v8 = v5;
  v7 = v5;
  sub_10000BEE0(messageCopy, "MRXPC_ROUTE_PASSWORD_KEY", 3, [v8 UTF8String], 0);
}

- (void)_handleSetSavedAVRoutePasswordMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v4 = MRCreateStringFromXPCMessage();
  v5 = MRCreateStringFromXPCMessage();
  if (v4)
  {
    MSVKeychainSetKeychainValue();
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  sub_10000F9E4(messageCopy, v6);
}

- (void)_handleClearAllAVRoutePasswordsMessage:(id)message fromClient:(id)client
{
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Requesting to clear all AirPlay route passwords...", buf, 2u);
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:&__kCFBooleanTrue forKey:kSecUseSystemKeychain];
  [v5 setObject:@"com.apple.airplay.password" forKey:kSecAttrService];
  [v5 setObject:kSecMatchLimitAll forKey:kSecMatchLimit];
  [v5 setObject:kSecClassGenericPassword forKey:kSecClass];
  [v5 setObject:kCFBooleanTrue forKey:kSecReturnPersistentRef];
  result = 0;
  v6 = SecItemCopyMatching(v5, &result);
  if (v6 == -25300)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AB044();
    }
  }

  else if (v6)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AB080();
    }
  }

  else
  {
    v7 = result;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v17 = v5;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = objc_alloc_init(NSMutableDictionary);
          [v13 setObject:v12 forKey:kSecValuePersistentRef];
          [v13 setObject:kCFBooleanTrue forKey:kSecReturnPersistentRef];
          v14 = SecItemDelete(v13);
          if (v14)
          {
            v15 = v14;
            v16 = _MRLogForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v24 = v15;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[AVRoutingServer] Error %ld trying to delete passwords", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v9);
      v5 = v17;
    }
  }
}

- (void)_handleUnpickAirPlayRoutesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Requesting to unpick AirPlay routes", v8, 2u);
  }

  if ([(MRDAVRoutingDataSource *)self->_routingDataSource unpickAirPlayRoutes])
  {
    v7 = 0;
  }

  else
  {
    v7 = 7;
  }

  sub_10000F9E4(messageCopy, v7);
}

- (void)_handleSetApplicationPickedRoutes:(id)routes fromClient:(id)client
{
  routesCopy = routes;
  clientCopy = client;
  v7 = MRCreatePropertyListFromXPCMessage();
  v8 = xpc_dictionary_get_BOOL(routesCopy, "MRXPC_ROUTE_OPTIONS_KEY");
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Received SetApplicationPickedRoutes message with route descriptions: %{public}@", buf, 0xCu);
  }

  v10 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [[MRDAVRoute alloc] initWithDictionary:*(*(&v18 + 1) + 8 * v15)];
        [v10 addObject:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  [(MRDAVRoutingServer *)self _setApplicationPickedRoutes:v10 updateRoutes:v8 forClient:clientCopy];
}

- (void)_handleGetAirPlaySecuritySettingsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGetHostedRoutingXPCEndpointMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = clientCopy;
  v9 = messageCopy;
  v10 = clientCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleSetRecentAVOutputDeviceUIDMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v9 = MRCreateStringFromXPCMessage();
  [NSMutableArray insertObject:"insertObject:atIndex:" atIndex:?];
  v6 = [(NSMutableArray *)self->_mostRecentlyPickedDevices count];
  if (v6 >= 2)
  {
    v7 = v6;
    v8 = [(NSMutableArray *)self->_mostRecentlyPickedDevices indexOfObject:v9 inRange:1, [(NSMutableArray *)self->_mostRecentlyPickedDevices count]- 1];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_mostRecentlyPickedDevices removeObjectAtIndex:v8];
      --v7;
    }

    if (v7 >= 0xB)
    {
      [(NSMutableArray *)self->_mostRecentlyPickedDevices removeObjectsInRange:10, v7 - 10];
    }
  }

  [(MRDAVRoutingServer *)self _saveMostRecentlyPicked];
  sub_10000F9E4(messageCopy, 0);
}

- (void)_handleGetRecentAVOutputDeviceUIDsMessage:(id)message fromClient:(id)client
{
  mostRecentlyPickedDevices = self->_mostRecentlyPickedDevices;
  messageCopy = message;
  v6 = [NSPropertyListSerialization dataWithPropertyList:mostRecentlyPickedDevices format:200 options:0 error:0];
  sub_10001673C(messageCopy, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY", v6, 0);
}

- (void)_handleUpdateActiveSystemEndpointUIDMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = messageCopy;
  v12 = clientCopy;
  v9 = clientCopy;
  v10 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGetActiveSystemEndpointUIDsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = clientCopy;
  v9 = messageCopy;
  v10 = clientCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGetHostedEndpointForDeviceUIDMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = clientCopy;
  v9 = messageCopy;
  v10 = clientCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handlePromptForRouteAuthorizationMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = MRCreateProtobufFromXPCMessage();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001602E4;
  v21[3] = &unk_1004BE4C8;
  v22 = messageCopy;
  v7 = messageCopy;
  v8 = objc_retainBlock(v21);
  inputType = [v6 inputType];
  v10 = [MRDOutputDeviceRoute alloc];
  route = [v6 route];
  v12 = [(MRDOutputDeviceRoute *)v10 initWithOutputDevice:route];

  v13 = [MRDRouteAuthorizationRequest alloc];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1001603F4;
  v19 = &unk_1004B79A0;
  v20 = v8;
  v14 = v8;
  v15 = [(MRDRouteAuthorizationRequest *)v13 initWithRoute:v12 inputType:inputType responseCallback:v14 cancelCallback:&v16];
  [(MRDAVRoutingServer *)self _handleAuthorizationRequest:v15, v16, v17, v18, v19];
}

- (void)_handlePresentRouteAuthorizationStatusMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v10 = MRCreateProtobufFromXPCMessage();
  status = [v10 status];
  v7 = [MRDOutputDeviceRoute alloc];
  route = [v10 route];
  v9 = [(MRDOutputDeviceRoute *)v7 initWithOutputDevice:route];
  [(MRDAVRoutingServer *)self _handleErrorStatus:status forRoute:v9];

  sub_100008278(messageCopy, 0);
}

- (void)_handleGetAirplayStatus:(id)status fromClient:(id)client
{
  statusCopy = status;
  workerQueue = self->_workerQueue;
  v8 = statusCopy;
  v7 = statusCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleSetNearbyDevice:(id)device fromClient:(id)client
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100160654;
  v5[3] = &unk_1004B6E08;
  deviceCopy = device;
  v4 = deviceCopy;
  sub_100008278(v4, v5);
}

- (void)_handleResetOutputContextMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleAddVirtualOutputDeviceMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    sub_100008278(messageCopy, &stru_1004BF620);
  }
}

- (void)_handleGetVirtualOutputDevicesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    sub_100008278(messageCopy, &stru_1004BF640);
  }
}

- (void)_handleCreateGroupWithDevices:(id)devices fromClient:(id)client
{
  devicesCopy = devices;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = devicesCopy;
  v12 = clientCopy;
  v9 = clientCopy;
  v10 = devicesCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleStartNowPlayingSession:(id)session fromClient:(id)client
{
  sessionCopy = session;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = clientCopy;
  v9 = sessionCopy;
  v10 = clientCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleStopNowPlayingSession:(id)session fromClient:(id)client
{
  sessionCopy = session;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = clientCopy;
  v9 = sessionCopy;
  v10 = clientCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleResumeNowPlayingSession:(id)session fromClient:(id)client
{
  sessionCopy = session;
  clientCopy = client;
  v8 = MRCreatePlayerPathFromXPCMessage();
  workerQueue = self->_workerQueue;
  v13 = clientCopy;
  v14 = sessionCopy;
  v10 = sessionCopy;
  v11 = v8;
  v12 = clientCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGetOutputContextUIDMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  if (qword_100529578 != -1)
  {
    sub_1003AB234();
  }

  v6 = messageCopy;
  v5 = messageCopy;
  MRMediaRemoteGetDeviceUIDWithRetryIntervals();
}

- (void)_handleMigrateFromEndpointToOutputDevicesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleMigrateFromEndpointToEndpointMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleCreateDirectEndpointForDevices:(id)devices fromClient:(id)client
{
  devicesCopy = devices;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = devicesCopy;
  v12 = clientCopy;
  v9 = clientCopy;
  v10 = devicesCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGroupDevicesAndSendCommand:(id)command fromClient:(id)client
{
  commandCopy = command;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = commandCopy;
  v12 = clientCopy;
  v9 = clientCopy;
  v10 = commandCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleCreateHostedEndpointForDevices:(id)devices fromClient:(id)client
{
  devicesCopy = devices;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = devicesCopy;
  v12 = clientCopy;
  v9 = clientCopy;
  v10 = devicesCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handlePredictGroupLeader:(id)leader fromClient:(id)client
{
  leaderCopy = leader;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  v11 = leaderCopy;
  v12 = clientCopy;
  v9 = clientCopy;
  v10 = leaderCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleRemoveFromParentGroup:(id)group fromClient:(id)client
{
  groupCopy = group;
  clientCopy = client;
  v8 = MRCreatePropertyListFromXPCMessage();
  v9 = MRCreateRequestDetailsFromXPCMessage();
  if (!v9)
  {
    v10 = [MRRequestDetails alloc];
    v11 = MRRequestDetailsInitiatorInfer;
    bundleIdentifier = [clientCopy bundleIdentifier];
    v9 = [v10 initWithInitiator:v11 requestID:0 reason:@"RoutingServer.handleRemoveFromParentGroup" userInitiated:0 originatingBundleID:bundleIdentifier];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001635CC;
  v14[3] = &unk_1004B6FC0;
  v15 = groupCopy;
  v13 = groupCopy;
  [(MRDAVRoutingServer *)self removeOutputDeviceUIDsFromParentGroup:v8 details:v9 completion:v14];
}

- (void)_handleGetExternalDeviceMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  if (qword_100529588 != -1)
  {
    sub_1003AB2BC();
  }

  if ([clientCopy isEntitledFor:0x8000])
  {
    v7 = messageCopy;
    xpc_dictionary_handoff_reply();
  }

  else
  {
    sub_100008278(messageCopy, &stru_1004BF7F8);
  }
}

- (void)_handleModifyOutputContextMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleWillStartPlayingInterruptMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleRecommendRouteCandidateMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = messageCopy;
    v15 = 2112;
    v16 = clientCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] [MRDRRC] _handleRecommendRouteCandidateMessage: %@ fromClient: %@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016403C;
  v10[3] = &unk_1004B6E30;
  v11 = messageCopy;
  selfCopy = self;
  v9 = messageCopy;
  sub_100008278(v9, v10);
}

- (void)_handleGetRecommendRouteCandidatesMessage:(id)message fromClient:(id)client
{
  v4 = [(MRDRouteRecommendationController *)self->_recommendationController recommender:message];
  [v4 requestCurrentContext];
}

- (void)_handleDismissAllBannersMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = messageCopy;
    v12 = 2112;
    v13 = clientCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] _handleDismissAllBannersMessage: %@ fromClient: %@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016429C;
  v9[3] = &unk_1004B6E08;
  v9[4] = self;
  sub_100008278(messageCopy, v9);
}

- (void)_handlePauseOutputDeviceUIDsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = MRCreatePropertyListFromXPCMessage();
  v6 = MRCreateRequestDetailsFromXPCMessage();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001643B4;
  v11[3] = &unk_1004B6FC0;
  v12 = messageCopy;
  v7 = messageCopy;
  v8 = objc_retainBlock(v11);
  v9 = qos_class_self();
  v10 = dispatch_get_global_queue(v9, 0);
  [MRDPauseOutputDevicesRequest pauseOutputDeviceUIDs:v5 details:v6 queue:v10 completion:v8];
}

- (void)_handleSearchEndpointsForOutputDeviceUIDsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)searchEndpointsForOutputDeviceUID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v16 = +[NSDate now];
  hostedRoutingController = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
  v18 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v20 = [v18 initWithFormat:@"%@<%@>", @"RoutingServer.searchEndpointsForOutputDeviceUID", requestID];

  if (dCopy)
  {
    [(__CFString *)v20 appendFormat:@" for %@", dCopy];
  }

  label = [detailsCopy label];

  if (label)
  {
    label2 = [detailsCopy label];
    [(__CFString *)v20 appendFormat:@" because %@", label2];
  }

  v44 = queueCopy;
  v23 = _MRLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v64 = v20;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100164E20;
  v56[3] = &unk_1004BAC98;
  v24 = hostedRoutingController;
  v57 = v24;
  v25 = dCopy;
  v58 = v25;
  v59 = @"RoutingServer.searchEndpointsForOutputDeviceUID";
  v26 = detailsCopy;
  v60 = v26;
  v43 = v16;
  v61 = v43;
  v27 = completionCopy;
  v62 = v27;
  v28 = objc_retainBlock(v56);
  availableEndpoints = [v24 availableEndpoints];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100165314;
  v54[3] = &unk_1004BECE0;
  v30 = v25;
  v55 = v30;
  v31 = [availableEndpoints msv_firstWhere:v54];

  v32 = objc_alloc_init(NSMutableDictionary);
  initiator = [v26 initiator];
  [v32 setObject:initiator forKeyedSubscript:MREndpointConnectionReasonUserInfoKey];

  requestID2 = [v26 requestID];
  [v32 setObject:requestID2 forKeyedSubscript:MREndpointConnectionCorrelationIDUserInfoKey];

  if (!v31)
  {
    goto LABEL_15;
  }

  isConnected = [v31 isConnected];
  v36 = _MRLogForCategory();
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (!isConnected)
  {
    if (v37)
    {
      requestID3 = [v26 requestID];
      *buf = 138543874;
      v64 = @"RoutingServer.searchEndpointsForOutputDeviceUID";
      v65 = 2114;
      v66 = requestID3;
      v67 = 2112;
      v68 = @"Found in hostedRouting but not connected";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

LABEL_15:
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100165408;
    v45[3] = &unk_1004BF848;
    v39 = &v50;
    v50 = v28;
    v40 = &v46;
    v46 = v24;
    v47 = v32;
    v48 = @"RoutingServer.searchEndpointsForOutputDeviceUID";
    v49 = v26;
    v41 = v44;
    [MRDLightweightReconnaissanceSession searchEndpointsForOutputDeviceUID:v30 timeout:v49 details:v44 queue:v45 completion:timeout];

    goto LABEL_16;
  }

  if (v37)
  {
    requestID4 = [v26 requestID];
    *buf = 138543874;
    v64 = @"RoutingServer.searchEndpointsForOutputDeviceUID";
    v65 = 2114;
    v66 = requestID4;
    v67 = 2112;
    v68 = @"Found in hostedRouting";
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100165320;
  v51[3] = &unk_1004B9C80;
  v39 = &v52;
  v52 = @"RoutingServer.searchEndpointsForOutputDeviceUID";
  v40 = &v53;
  v53 = v26;
  [v31 connectToExternalDeviceWithUserInfo:v32 completion:v51];
  (v28[2])(v28, v31, 0);
  v41 = v44;
LABEL_16:
}

- (void)_handleSendCommandToEachEndpointContainingOutputDeviceUIDsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleSendCommandToNewGroupContainingOutputDeviceUIDsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handleSearchEndpointsForRoutingContextUIDMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)_handlePrepareGroupForPlaybackMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  workerQueue = self->_workerQueue;
  v8 = messageCopy;
  v7 = messageCopy;
  xpc_dictionary_handoff_reply();
}

- (void)searchEndpointsForRoutingContextUID:(id)d timeout:(double)timeout details:(id)details completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  completionCopy = completion;
  v13 = +[NSDate now];
  v14 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v16 = [v14 initWithFormat:@"%@<%@>", @"RoutingServer.searchEndpointsForRoutingContextUID", requestID];

  if (dCopy)
  {
    [v16 appendFormat:@" for %@", dCopy];
  }

  label = [detailsCopy label];

  if (label)
  {
    label2 = [detailsCopy label];
    [v16 appendFormat:@" because %@", label2];
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v54 = 0x3032000000;
  v55 = sub_1000351DC;
  v56 = sub_100035AA4;
  v57 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1001669F8;
  v46[3] = &unk_1004BF900;
  v20 = dCopy;
  v47 = v20;
  v48 = @"RoutingServer.searchEndpointsForRoutingContextUID";
  v21 = detailsCopy;
  v49 = v21;
  v22 = v13;
  v50 = v22;
  p_buf = &buf;
  v23 = completionCopy;
  v51 = v23;
  v24 = objc_retainBlock(v46);
  v25 = [MRBlockGuard alloc];
  requestID2 = [v21 requestID];
  v27 = &_dispatch_main_q;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100166E28;
  v44[3] = &unk_1004B6FE8;
  v28 = v24;
  v45 = v28;
  v29 = [v25 initWithTimeout:requestID2 reason:&_dispatch_main_q queue:v44 handler:timeout];

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100166E48;
  v40[3] = &unk_1004B6BB0;
  v40[4] = self;
  v30 = v20;
  v41 = v30;
  v31 = v29;
  v42 = v31;
  v32 = v28;
  v43 = v32;
  v33 = objc_retainBlock(v40);
  v34 = +[NSNotificationCenter defaultCenter];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10016703C;
  v38[3] = &unk_1004BB320;
  v35 = v33;
  v39 = v35;
  v36 = [v34 addObserverForName:@"MRDHostedRoutingControllerAvailableExternalDevicesDidChangeNotification" object:0 queue:0 usingBlock:v38];
  v37 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v36;

  v35[2](v35);
  _Block_object_dispose(&buf, 8);
}

- (void)systemEndpointController:(id)controller activeSystemEndpointDidChangeForRequest:(id)request type:(int64_t)type
{
  systemEndpointController = self->_systemEndpointController;
  requestCopy = request;
  outputDeviceUID = [requestCopy outputDeviceUID];
  v10 = [(MRDAVSystemEndpointController *)systemEndpointController originClientForDeviceUID:outputDeviceUID];

  [(MRDAVRoutingServer *)self postSystemEndpointDeviceChange:requestCopy type:type originClient:v10 handler:0];
  if (type == 2)
  {
    notify_post("com.apple.mediaremote.recommendedSystemEndpointDidChange");
  }
}

- (void)postSystemEndpointDeviceChange:(id)change type:(int64_t)type originClient:(id)client handler:(id)handler
{
  changeCopy = change;
  clientCopy = client;
  handlerCopy = handler;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [NSNumber numberWithInteger:type];
  [v11 setObject:v12 forKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];

  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [changeCopy changeType]);
  [v11 setObject:v13 forKeyedSubscript:kMRMediaRemoteActiveEndpointChangeTypeUserInfoKey];

  activeNowPlayingClient = [clientCopy activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [activePlayerClient playbackState]);
  [v11 setObject:v16 forKeyedSubscript:kMRMediaRemotePlaybackStateUserInfoKey];

  reason = [changeCopy reason];

  if (reason)
  {
    reason2 = [changeCopy reason];
    [v11 setObject:reason2 forKeyedSubscript:kMRMediaRemoteActiveEndpointReasonUserInfoKey];
  }

  outputDeviceUID = [changeCopy outputDeviceUID];

  if (outputDeviceUID)
  {
    outputDeviceUID2 = [changeCopy outputDeviceUID];
    [v11 setObject:outputDeviceUID2 forKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];
  }

  playerPath = [clientCopy playerPath];
  MRAddPlayerPathToUserInfo();

  deviceInfo = [clientCopy deviceInfo];
  MRAddDeviceInfoToUserInfo();

  [v11 setObject:changeCopy forKeyedSubscript:MRUpdateActiveSystemEndpointRequestUserInfoKey];
  v23 = _MRMediaRemoteActiveSystemEndpointDidChangeNotification;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, _MRMediaRemoteActiveSystemEndpointDidChangeNotification, v11);
  }

  else
  {
    v24 = +[MRDMediaRemoteServer server];
    [v24 postClientNotificationNamed:v23 userInfo:v11 predicate:&stru_1004BF948];
  }
}

- (void)_clientInvalidatedNotification:(id)notification
{
  object = [notification object];
  [(MRDAVRoutingServer *)self _setApplicationPickedRoutes:0 updateRoutes:1 forClient:object];
  [(MRDAVRoutingServer *)self _updateSystemRouteDiscoveryMode];
}

- (void)_routingDataSourcePickableRoutesDidChangeNotification:(id)notification
{
  v3 = +[MRDMediaRemoteServer server];
  [v3 postClientNotificationNamed:kMRMediaRemotePickableRoutesDidChangeNotification];
}

- (void)_routingDataSourceRouteStatusDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"MRDAVRoutingDataSourceAVRouteUserInfoKey"];

  userInfo2 = [notificationCopy userInfo];

  v8 = [userInfo2 objectForKey:@"MRDAVRoutingDataSourceRouteStatusUserInfoKey"];
  intValue = [v8 intValue];

  if ((intValue - 1) > 1)
  {
    if (intValue)
    {
      [(MRDAVRoutingServer *)self _handleErrorStatus:intValue forRoute:v6];
    }
  }

  else
  {
    uniqueIdentifier = [v6 uniqueIdentifier];
    v11 = [(MRDAVRoutingServer *)self _shouldIgnorePortStatusFailureForRouteWithUID:uniqueIdentifier previouslyCachedRouteUID:0];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Ignoring VAD port authentication failure.", v13, 2u);
      }
    }

    else
    {
      [(MRDAVRoutingServer *)self _handleAuthenticationFailureForRoute:v6 withOptions:0];
    }
  }

  self->_mostRecentStatus = intValue;
  [(MRDAVRoutingServer *)self _postRouteStatusDidChangeNotificationForRoute:v6 newStatus:intValue];
}

- (void)_failedToConnectToOutputDeviceNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:AVOutputContextManagerOutputDeviceKey];

  if (v6)
  {
    v7 = [[MRDAVOutputDeviceRoute alloc] initWithAVOutputDevice:v6];
  }

  else
  {
    v7 = 0;
  }

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 objectForKey:AVOutputContextManagerFailureReasonKey];

  userInfo3 = [notificationCopy userInfo];
  v11 = [userInfo3 objectForKey:AVOutputContextManagerDidFailToConnectToOutputDeviceUserInfoKey];

  v12 = [MRGroupTopologyModificationRequest alloc];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [v11 objectForKeyedSubscript:v14];
  v16 = [v12 initWithData:v15];

  v17 = _MRLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1003AB470();
  }

  if (v9)
  {
    v21[0] = AVOutputContextDeviceConnectionFailureReasonDeviceInUse;
    v21[1] = AVOutputContextDeviceConnectionFailureReasonDeviceOutOfRange;
    v22[0] = &off_1004E0A70;
    v22[1] = &off_1004E0A88;
    v21[2] = AVOutputContextDeviceConnectionFailureReasonDeviceNotConnectedToInternet;
    v21[3] = AVOutputContextDeviceConnectionFailureReasonInfraRelayFailedMultiDFSNetwork;
    v22[2] = &off_1004E0AA0;
    v22[3] = &off_1004E0AB8;
    v21[4] = AVOutputContextDeviceConnectionFailureReasonInfraRelayFailed2GHzNetwork;
    v22[4] = &off_1004E0AD0;
    intValue = 5;
    v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
    v20 = [v19 objectForKey:v9];

    if (v20)
    {
      intValue = [v20 intValue];
    }

    if (!v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    if ([v16 suppressErrorDialog])
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  intValue = 5;
  if (v16)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (MSVDeviceIsAppleTV() && [v6 clusterType] == 1 && MRMediaRemoteAVOutputDeviceIsLocalForAirPlay())
  {
    [(MRDAVRoutingServer *)self _handleClusterErrorStatus:intValue forRoute:v7];
  }

  else
  {
    [(MRDAVRoutingServer *)self _handleErrorStatus:intValue forRoute:v7];
  }

LABEL_18:
  [(MRDAVRoutingServer *)self _postRouteStatusDidChangeNotificationForRoute:v7 newStatus:intValue];
}

- (void)_handleAuthorizationRequest:(id)request
{
  requestCopy = request;
  route = [requestCopy route];
  inputType = [requestCopy inputType];
  routingDataSource = self->_routingDataSource;
  uniqueIdentifier = [route uniqueIdentifier];
  v9 = [(MRDAVRoutingDataSource *)routingDataSource authorizationRequestCallbackForRouteID:uniqueIdentifier];

  if (!v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = self->_routingDataSource;
    v13 = route;
    avOutputDevice = [v13 avOutputDevice];
    clusterID = [avOutputDevice clusterID];
    v9 = [(MRDAVRoutingDataSource *)v12 authorizationRequestCallbackForRouteID:clusterID];

    if (!v9)
    {
LABEL_8:
      activePasswordDialog = [(MRDAVRoutingServer *)self activePasswordDialog];

      uniqueIdentifier2 = [route uniqueIdentifier];
      v31 = 0;
      v18 = [(MRDAVRoutingServer *)self _shouldIgnorePortStatusFailureForRouteWithUID:uniqueIdentifier2 previouslyCachedRouteUID:&v31];
      v9 = v31;

      if (!activePasswordDialog && (v18 & 1) == 0)
      {
        v19 = _MRLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          name = [route name];
          *buf = 138543362;
          v36 = name;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Prompting user with authorization request route %{public}@", buf, 0xCu);
        }

        name2 = [route name];
        v22 = [(MRDAVRoutingServer *)self _passwordDialogForRouteWithName:name2 usingInputType:inputType];

        v24 = _NSConcreteStackBlock;
        v25 = 3221225472;
        v26 = sub_100167EA0;
        v27 = &unk_1004BF998;
        v28 = requestCopy;
        v29 = route;
        selfCopy = self;
        [v22 presentWithCompletion:&v24];
        [(MRDAVRoutingServer *)self setActivePasswordDialog:v22, v24, v25, v26, v27];

        goto LABEL_5;
      }

      if (activePasswordDialog)
      {
        v23 = _MRLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1003AB51C();
        }
      }

      else
      {
        if (!v18)
        {
LABEL_20:
          [requestCopy cancel];
          goto LABEL_5;
        }

        v23 = _MRLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1003AB4E0();
        }
      }

      goto LABEL_20;
    }
  }

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name3 = [route name];
    *buf = 138543362;
    v36 = name3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Handling authorization request with custom callback for route %{public}@", buf, 0xCu);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100167DC4;
  v32[3] = &unk_1004BF970;
  v33 = route;
  v34 = requestCopy;
  v9[2](v9, inputType, v32);

LABEL_5:
}

- (void)_registerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_clientInvalidatedNotification:" name:@"MRDMediaRemoteServerClientInvalidatedNotification" object:0];
  [v3 addObserver:self selector:"_routingDataSourcePickableRoutesDidChangeNotification:" name:@"MRDAVRoutingDataSourcePickableRoutesDidChangeNotification" object:self->_routingDataSource];
  [v3 addObserver:self selector:"_routingDataSourceExternalScreenDidChangeNotification:" name:@"MRDAVRoutingDataSourceExternalScreenDidChangeNotification" object:self->_routingDataSource];
  [v3 addObserver:self selector:"_routingDataSourceRouteStatusDidChangeNotification:" name:@"MRDAVRoutingDataSourceRouteStatusDidChangeNotification" object:self->_routingDataSource];
  v4 = AVOutputContextManagerOutputContextDidFailToConnectToOutputDeviceNotification;
  v5 = +[AVOutputContextManager outputContextManagerForAllOutputContexts];
  [v3 addObserver:self selector:"_failedToConnectToOutputDeviceNotification:" name:v4 object:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003BF3C;
  v11[3] = &unk_1004B99A0;
  v11[4] = self;
  v7 = [v6 addObserverForName:@"MRDMediaRemoteServerClientInvalidatedNotification" object:0 queue:0 usingBlock:v11];

  v8 = +[NSNotificationCenter defaultCenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100168240;
  v10[3] = &unk_1004B99A0;
  v10[4] = self;
  v9 = [v8 addObserverForName:@"MRDMediaRemoteClientDeclaringAirplayActiveDidChange" object:0 queue:0 usingBlock:v10];
}

- (void)_unregisterNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (id)_descriptionForDiscoveryMode:(unsigned int)mode
{
  v3 = MRMediaRemoteCopyRouteDiscoveryModeDescription();

  return v3;
}

- (id)_passwordDialogForRouteWithName:(id)name usingInputType:(int64_t)type
{
  nameCopy = name;
  v6 = MRLocalizedString();
  v7 = MRLocalizedString();
  v8 = MRLocalizedString();
  v9 = objc_alloc_init(MSVSystemDialogOptions);
  [v9 setAlertHeader:v6];
  nameCopy = [NSString stringWithFormat:v7, nameCopy];

  [v9 setAlertMessage:nameCopy];
  v11 = MRLocalizedString();
  [v9 setDefaultButtonTitle:v11];

  v12 = MRLocalizedString();
  [v9 setAlternateButtonTitle:v12];

  [v9 setShowAsTopmost:1];
  [v9 setForceModalAlertAppearance:1];
  [v9 setShowOnLockscreen:1];
  [v9 setDismissOverlaysOnLockscreen:0];
  v13 = [[MSVSystemDialog alloc] initWithOptions:v9];
  v14 = [[MSVSystemDialogTextField alloc] initWithTitle:v8];
  [v14 setSecure:1];
  [v14 setKeyboardType:type];
  [v13 addTextField:v14];

  return v13;
}

- (BOOL)_shouldIgnorePortStatusFailureForRouteWithUID:(id)d previouslyCachedRouteUID:(id *)iD
{
  dCopy = d;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_routeUIDsToIgnorePortStatusFailures;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v23 + 1) + 8 * v12);

        v14 = [dCopy length];
        if (v14 >= [v10 length])
        {
          v15 = v10;
        }

        else
        {
          v15 = dCopy;
        }

        v16 = v15;
        v17 = [dCopy length];
        if (v17 <= [v10 length])
        {
          v18 = v10;
        }

        else
        {
          v18 = dCopy;
        }

        v19 = [v18 containsString:v16];

        if (v19)
        {

          if (((iD != 0) & v19) == 1)
          {
            v21 = v10;
            *iD = v10;
          }

          v20 = 1;
          goto LABEL_20;
        }

        v12 = v12 + 1;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v20 = 0;
  }

  else
  {

    v20 = 0;
    v10 = 0;
  }

LABEL_20:

  return v20;
}

- (void)_handleClusterErrorStatus:(int)status forRoute:(id)route
{
  routeCopy = route;
  [(NSDate *)self->_lastClusterConnectionFailureDate timeIntervalSinceNow];
  v8 = v7;
  v10 = v7 > -480.0 && self->_lastClusterConnectionFailureDate != 0;
  v11 = _MRLogForCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = -v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Suppressing cluster connection error. %.2f since last alert", &buf, 0xCu);
    }
  }

  else
  {
    if (v12)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = routeCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Error connecting to cluster member: %{public}@", &buf, 0xCu);
    }

    v13 = +[NSDate date];
    lastClusterConnectionFailureDate = self->_lastClusterConnectionFailureDate;
    self->_lastClusterConnectionFailureDate = v13;

    v42 = MRLocalizedString();
    if ((status - 7) <= 2)
    {
      v15 = *(&off_1004BFB30 + (status - 7));
      v16 = MRLocalizedString();

      v42 = v16;
    }

    v11 = MRLocalizedString();
    v17 = +[NSDate date];
    v18 = +[NSUUID UUID];
    uUIDString = [v18 UUIDString];

    v20 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"Dialog.handleClusterErrorStatus", uUIDString];
    v21 = v20;
    if (routeCopy)
    {
      [v20 appendFormat:@" for %@", routeCopy];
    }

    v22 = _MRLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v65 = 0x3032000000;
    v66 = sub_1000351DC;
    v67 = sub_100035AA4;
    v68 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = sub_1000351DC;
    v62 = sub_100035AA4;
    v63 = 0;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100168D0C;
    v52[3] = &unk_1004BF9C0;
    v53 = routeCopy;
    v23 = uUIDString;
    v54 = v23;
    v41 = v17;
    v55 = v41;
    v56 = &v58;
    p_buf = &buf;
    v24 = objc_retainBlock(v52);
    v25 = [MRBlockGuard alloc];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100168F88;
    v50[3] = &unk_1004B6FE8;
    v26 = v24;
    v51 = v26;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100168F98;
    v47[3] = &unk_1004B9BE0;
    v27 = [v25 initWithTimeout:@"Cluster connect error" reason:v50 handler:300.0];
    v48 = v27;
    v28 = v26;
    v49 = v28;
    v29 = objc_retainBlock(v47);
    v30 = +[NSNotificationCenter defaultCenter];
    v31 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    v32 = MRAVEndpointDidAddOutputDeviceNotification;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100168FFC;
    v45[3] = &unk_1004BB320;
    v33 = v29;
    v46 = v33;
    v34 = [v30 addObserverForName:v32 object:v31 queue:0 usingBlock:v45];
    v35 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v34;

    v36 = MRLocalizedString();
    v37 = MRLocalizedString();
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100169010;
    v43[3] = &unk_1004BF9E8;
    v43[4] = self;
    v38 = v33;
    v44 = v38;
    v39 = [(MRDAVRoutingServer *)self _presentDialogWithTitle:v42 message:v11 defaultButtonTitle:v36 alternateButtonTitle:v37 completion:v43];
    v40 = v59[5];
    v59[5] = v39;

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&buf, 8);
  }
}

- (void)_launchTVClusterSettings
{
  v4 = FBSOpenApplicationOptionKeyPayloadURL;
  v2 = [NSURL URLWithString:@"prefs:root=DefaultAudioOutput"];
  v5 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  sub_10019E4E8(@"com.apple.TVSettings", v3, &stru_1004BFA08);
}

- (void)_handleErrorStatus:(int)status forRoute:(id)route
{
  routeCopy = route;
  v7 = routeCopy;
  if (self->_mostRecentStatus == status || ([routeCopy uniqueIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[MRDAVRoutingServer _shouldIgnorePortStatusFailureForRouteWithUID:previouslyCachedRouteUID:](self, "_shouldIgnorePortStatusFailureForRouteWithUID:previouslyCachedRouteUID:", v8, 0), v8, (v9 & 1) != 0))
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      mostRecentStatus = self->_mostRecentStatus;
      uniqueIdentifier = [v7 uniqueIdentifier];
      *buf = 134218242;
      statusCopy = mostRecentStatus;
      v28 = 2114;
      v29 = uniqueIdentifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] AirPlay Error %ld: Ignoring because error for %{public}@ because the status code has not changed and already prompted user.", buf, 0x16u);
    }

    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      routeUIDsToIgnorePortStatusFailures = self->_routeUIDsToIgnorePortStatusFailures;
      *buf = 138543362;
      statusCopy = routeUIDsToIgnorePortStatusFailures;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] RouteUIDs ignored for port status failures: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    name = [v7 name];
    v16 = name;
    v17 = @"<Unknown>";
    if (name)
    {
      v17 = name;
    }

    v13 = v17;

    extendedInfo = [v7 extendedInfo];
    modelName = [extendedInfo modelName];
    [modelName hasPrefix:@"AppleTV"];

    v20 = MRLocalizedString();
    v21 = MRLocalizedString();
    v22 = [NSString stringWithFormat:v21, v13];

    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      statusCopy = status;
      v28 = 2114;
      v29 = v20;
      v30 = 2114;
      v31 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] AirPlay Error %ld: %{public}@: %{public}@", buf, 0x20u);
    }

    v24 = MRLocalizedString();
    v25 = [(MRDAVRoutingServer *)self _presentDialogWithTitle:v20 message:v22 defaultButtonTitle:v24 alternateButtonTitle:0 completion:0];
  }
}

- (id)_presentDialogWithTitle:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle alternateButtonTitle:(id)alternateButtonTitle completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  completionCopy = completion;
  alternateButtonTitleCopy = alternateButtonTitle;
  buttonTitleCopy = buttonTitle;
  v17 = objc_alloc_init(MSVSystemDialogOptions);
  [v17 setAlertHeader:titleCopy];
  [v17 setAlertMessage:messageCopy];
  [v17 setDefaultButtonTitle:buttonTitleCopy];

  [v17 setAlternateButtonTitle:alternateButtonTitleCopy];
  [v17 setShowAsTopmost:1];
  [v17 setForceModalAlertAppearance:1];
  [v17 setShowOnLockscreen:1];
  [v17 setDismissOverlaysOnLockscreen:0];
  v18 = [[MSVSystemDialog alloc] initWithOptions:v17];
  [(MSVSystemDialog *)self->_activePasswordDialog dismiss];
  [(MRDAVRoutingServer *)self setActivePasswordDialog:0];
  activeDialog = [(MRDAVRoutingServer *)self activeDialog];

  if (activeDialog)
  {
    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      activeDialog2 = [(MRDAVRoutingServer *)self activeDialog];
      v28 = objc_opt_class();
      [(MRDAVRoutingServer *)self activeDialog];
      v21 = v32 = completionCopy;
      activeDialog3 = [(MRDAVRoutingServer *)self activeDialog];
      options = [activeDialog3 options];
      [options alertHeader];
      v22 = v34 = titleCopy;
      activeDialog4 = [(MRDAVRoutingServer *)self activeDialog];
      options2 = [activeDialog4 options];
      alertMessage = [options2 alertMessage];
      *buf = 138545666;
      v36 = v29;
      v37 = 2048;
      selfCopy = self;
      v39 = 2114;
      v40 = v28;
      v41 = 2048;
      v42 = v21;
      v43 = 2114;
      v44 = v22;
      v45 = 2114;
      v46 = alertMessage;
      v47 = 2114;
      v48 = objc_opt_class();
      v49 = 2048;
      v50 = v18;
      v51 = 2114;
      v52 = v34;
      v53 = 2114;
      v54 = messageCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] <%{public}@: %p> Dismissing active dialog <%{public}@: %p - %{public}@: %{public}@> to present new dialog: <%{public}@: %p - %{public}@: %{public}@>", buf, 0x66u);

      titleCopy = v34;
      completionCopy = v32;
    }

    activeDialog5 = [(MRDAVRoutingServer *)self activeDialog];
    [activeDialog5 dismiss];
  }

  [(MRDAVRoutingServer *)self setActiveDialog:v18];
  [v18 presentWithCompletion:completionCopy];

  return v18;
}

- (id)_existingKeychainAccountForOutputDevice:(id)device password:(id *)password
{
  deviceCopy = device;
  identifyingMACAddress = [deviceCopy identifyingMACAddress];
  if ([identifyingMACAddress length] < 6)
  {
    lowercaseString = 0;
  }

  else
  {
    [identifyingMACAddress bytes];
    HardwareAddressToCString();
    v7 = [NSString stringWithUTF8String:v14];
    v8 = MSVKeychainCopyKeychainValue();
    if (v8)
    {
      v9 = v8;

      goto LABEL_10;
    }

    lowercaseString = [v7 lowercaseString];

    v9 = MSVKeychainCopyKeychainValue();
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v7 = [deviceCopy ID];

  v11 = MSVKeychainCopyKeychainValue();
  if (v11)
  {
    v9 = v11;
    goto LABEL_10;
  }

  lowercaseString = [deviceCopy name];

  v9 = MSVKeychainCopyKeychainValue();
LABEL_9:
  v7 = lowercaseString;
LABEL_10:

  if (password)
  {
    v12 = v9;
    *password = v9;
  }

  return v7;
}

- (id)_savedPasswordForOutputDevice:(id)device
{
  v6 = 0;
  v3 = [(MRDAVRoutingServer *)self _existingKeychainAccountForOutputDevice:device password:&v6];
  v4 = v6;

  return v4;
}

- (void)_clearPasswordForOutputDevice:(id)device
{
  v3 = [(MRDAVRoutingServer *)self _existingKeychainAccountForOutputDevice:device password:0];
  if (v3)
  {
    v4 = v3;
    MSVKeychainSetKeychainValue();
    v3 = v4;
  }
}

- (void)_saveMostRecentlyPicked
{
  CFPreferencesSetAppValue(@"MostRecentlyUsedAVOutputDeviceUIDs", self->_mostRecentlyPickedDevices, @"com.apple.mediaremote");

  CFPreferencesAppSynchronize(@"com.apple.mediaremote");
}

- (void)_loadMostRecentlyPicked
{
  v3 = CFPreferencesCopyAppValue(@"MostRecentlyUsedAVOutputDeviceUIDs", @"com.apple.mediaremote");
  if (v3)
  {
    v6 = v3;
    v4 = [v3 mutableCopy];
    mostRecentlyPickedDevices = self->_mostRecentlyPickedDevices;
    self->_mostRecentlyPickedDevices = v4;

    v3 = v6;
  }
}

- (BOOL)_setPickedRoute:(id)route withPassword:(id)password options:(unsigned int)options
{
  optionsCopy = options;
  routeCopy = route;
  passwordCopy = password;
  routeUIDsToIgnorePortStatusFailures = self->_routeUIDsToIgnorePortStatusFailures;
  uniqueIdentifier = [routeCopy uniqueIdentifier];
  if (optionsCopy)
  {
    [(NSMutableSet *)routeUIDsToIgnorePortStatusFailures addObject:uniqueIdentifier];
  }

  else
  {
    [(NSMutableSet *)routeUIDsToIgnorePortStatusFailures removeObject:uniqueIdentifier];
  }

  self->_mostRecentStatus = -1;
  v12 = [(MRDAVRoutingDataSource *)self->_routingDataSource setPickedRoute:routeCopy withPassword:passwordCopy];
  if (!v12)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1003AB620();
    }
  }

  return v12;
}

- (void)_postExternalScreenDidChange
{
  externalScreenType = [(MRDAVRoutingDataSource *)self->_routingDataSource externalScreenType];
  v3 = +[MRDMediaRemoteServer server];
  v4 = kMRMediaRemoteExternalScreenTypeDidChangeNotification;
  v7 = kMRMediaRemoteExternalScreenTypeUserInfoKey;
  v5 = [NSNumber numberWithUnsignedInt:externalScreenType];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v3 postClientNotificationNamed:v4 userInfo:v6];
}

- (void)_presentPasswordDialogForRoute:(id)route withOptions:(unsigned int)options
{
  routeCopy = route;
  v7 = +[MRDMediaRemoteServer server];
  [v7 postClientNotificationNamed:kMRMediaRemoteWillPresentRouteAuthenticationPromptNotification];

  extendedInfo = [routeCopy extendedInfo];
  if ([extendedInfo requiresPIN])
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  name = [routeCopy name];
  v11 = [(MRDAVRoutingServer *)self _passwordDialogForRouteWithName:name usingInputType:v9];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100169EF0;
  v13[3] = &unk_1004BFA30;
  v13[4] = self;
  v14 = routeCopy;
  optionsCopy = options;
  v12 = routeCopy;
  [v11 presentWithCompletion:v13];
  [(MRDAVRoutingServer *)self setActivePasswordDialog:v11];
}

- (void)_storePassword:(id)password forRoute:(id)route
{
  routeCopy = route;
  passwordCopy = password;
  mACAddress = [routeCopy MACAddress];
  uniqueIdentifier = [routeCopy uniqueIdentifier];
  name = [routeCopy name];

  v11 = [(MRDAVRoutingServer *)self _preferredIdentifierForMACAddress:mACAddress identifier:uniqueIdentifier name:name];

  MSVKeychainSetKeychainValue();
}

- (void)_storePassword:(id)password forOutputDevice:(id)device
{
  deviceCopy = device;
  passwordCopy = password;
  identifyingMACAddress = [deviceCopy identifyingMACAddress];
  v9 = [deviceCopy ID];
  name = [deviceCopy name];

  v11 = [(MRDAVRoutingServer *)self _preferredIdentifierForMACAddress:identifyingMACAddress identifier:v9 name:name];

  MSVKeychainSetKeychainValue();
}

- (id)_preferredIdentifierForMACAddress:(id)address identifier:(id)identifier name:(id)name
{
  addressCopy = address;
  identifierCopy = identifier;
  nameCopy = name;
  if ([addressCopy length] < 6)
  {
    if (identifierCopy)
    {
      v10 = identifierCopy;
    }

    else
    {
      v10 = nameCopy;
    }
  }

  else
  {
    [addressCopy bytes];
    HardwareAddressToCString();
    v10 = [NSString stringWithUTF8String:v13];
  }

  v11 = v10;

  return v11;
}

- (id)_createAirPlaySecuritySettings
{
  if (MRSupportsMediaControlReceiver())
  {
    v12 = 0;
    if (sub_10016A440() && (v2 = sub_10016A440(), dlsym(v2, "APReceiverMediaRemoteXPCClient_CopyProperty")))
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v3 = off_100529598;
      v21 = off_100529598;
      if (!off_100529598)
      {
        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = sub_10016B9A0;
        v16 = &unk_1004B8728;
        v17 = &v18;
        v4 = sub_10016A440();
        v19[3] = dlsym(v4, "APReceiverMediaRemoteXPCClient_CopyProperty");
        off_100529598 = *(v17[1] + 24);
        v3 = v19[3];
      }

      _Block_object_dispose(&v18, 8);
      if (!v3)
      {
        v11 = sub_1003AA728();
        _Block_object_dispose(&v18, 8);
        _Unwind_Resume(v11);
      }

      v5 = v3(@"AirPlaySecuritySetting", &v12);
      v6 = v5;
      if (v12 || !v5)
      {
        v8 = _MRLogForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1003AB690(&v12);
        }

        v7 = 0;
      }

      else
      {
        v7 = [v5 objectForKeyedSubscript:@"password"];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = MRAVAirPlaySecuritySettingsCreate();

  return v9;
}

- (void)createEndpointForOutputDeviceIDs:(id)ds details:(id)details completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016A5F4;
  v8[3] = &unk_1004BFA58;
  completionCopy = completion;
  v7 = completionCopy;
  [MRDCreateEndpointRequest createEndpointWithOutputDeviceUIDs:ds timeout:details details:v8 completion:30.0];
}

- (id)createTransientEndpointForOutputDeviceUID:(id)d details:(id)details
{
  dCopy = d;
  detailsCopy = details;
  v8 = +[NSDate now];
  v9 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v11 = [v9 initWithFormat:@"%@<%@>", @"createTransientEndpointForOutputDeviceUID", requestID];

  if (dCopy)
  {
    [(__CFString *)v11 appendFormat:@" for %@", dCopy];
  }

  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  hostedRoutingController = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
  availableOutputDevices = [hostedRoutingController availableOutputDevices];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10016AA3C;
  v33[3] = &unk_1004B8A40;
  v15 = dCopy;
  v34 = v15;
  v16 = [availableOutputDevices msv_firstWhere:v33];
  if (v16)
  {
    hostedRoutingController2 = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
    v43 = v16;
    v18 = [NSArray arrayWithObjects:&v43 count:1];
    v19 = [hostedRoutingController2 makeEndpointWithOutputDevices:v18 options:0];
  }

  else
  {
    v19 = 0;
  }

  debugName = [v19 debugName];

  v21 = _MRLogForCategory();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (debugName)
  {
    if (v22)
    {
      requestID2 = [detailsCopy requestID];
      [v19 debugName];
      v32 = detailsCopy;
      v25 = v24 = v8;
      v26 = +[NSDate date];
      [v26 timeIntervalSinceDate:v24];
      *buf = 138544130;
      v36 = @"createTransientEndpointForOutputDeviceUID";
      v37 = 2114;
      v38 = requestID2;
      v39 = 2112;
      v40 = v25;
      v41 = 2048;
      v42 = v27;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);

      v8 = v24;
      detailsCopy = v32;
    }
  }

  else if (v22)
  {
    requestID3 = [detailsCopy requestID];
    v29 = +[NSDate date];
    [v29 timeIntervalSinceDate:v8];
    *buf = 138543874;
    v36 = @"createTransientEndpointForOutputDeviceUID";
    v37 = 2114;
    v38 = requestID3;
    v39 = 2048;
    v40 = v30;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
  }

  return v19;
}

- (void)removeOutputDeviceUIDsFromParentGroup:(id)group details:(id)details completion:(id)completion
{
  groupCopy = group;
  detailsCopy = details;
  completionCopy = completion;
  v10 = +[NSDate now];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.mediaremote.removeFromParentGroup", v11);

  v12 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v14 = [v12 initWithFormat:@"%@<%@>", @"removeOutputDeviceUIDsFromParentGroup", requestID];

  if (groupCopy)
  {
    [v14 appendFormat:@" for %@", groupCopy];
  }

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v56 = 0x3032000000;
  v57 = sub_1000351DC;
  v58 = sub_100035AA4;
  v59 = 0;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10016AFBC;
  v48[3] = &unk_1004BFA80;
  p_buf = &buf;
  v31 = detailsCopy;
  v49 = v31;
  v28 = v10;
  v50 = v28;
  v27 = completionCopy;
  v51 = v27;
  v29 = objc_retainBlock(v48);
  v16 = dispatch_group_create();
  v17 = +[MRDMediaRemoteServer server];
  deviceInfo = [v17 deviceInfo];
  deviceUID = [deviceInfo deviceUID];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = groupCopy;
  v20 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v20)
  {
    v21 = *v45;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v44 + 1) + 8 * i);
        if ([v23 isEqualToString:deviceUID])
        {
          v24 = +[MRAVLocalEndpoint sharedLocalEndpoint];
          dispatch_group_enter(v16);
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10016B11C;
          v41[3] = &unk_1004B69F8;
          v43 = &buf;
          v42 = v16;
          [v24 removeOutputDeviceFromParentGroup:deviceUID queue:queue completion:v41];
        }

        else
        {
          dispatch_group_enter(v16);
          v53 = v23;
          v25 = [NSArray arrayWithObjects:&v53 count:1];
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_10016B17C;
          v36[3] = &unk_1004BFAA8;
          v37 = v16;
          v38 = v23;
          v39 = queue;
          v40 = &buf;
          [(MRDAVRoutingServer *)self createEndpointForOutputDeviceIDs:v25 details:v31 completion:v36];

          v24 = v37;
        }
      }

      v20 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v20);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016B2E0;
  block[3] = &unk_1004B79A0;
  v35 = v29;
  v26 = v29;
  dispatch_group_notify(v16, queue, block);

  _Block_object_dispose(&buf, 8);
}

- (id)_predictGroupLeaderForOutputDeviceIDs:(id)ds options:(unint64_t)options details:(id)details
{
  dsCopy = ds;
  detailsCopy = details;
  v10 = +[NSDate now];
  v11 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v13 = [v11 initWithFormat:@"%@<%@>", @"PredictGroupLeader", requestID];

  if (dsCopy)
  {
    [(__CFString *)v13 appendFormat:@" for %@", dsCopy];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  hostedRoutingController = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
  availableOutputDevices = [hostedRoutingController availableOutputDevices];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10016B654;
  v31[3] = &unk_1004B8A40;
  v17 = dsCopy;
  v32 = v17;
  v18 = [availableOutputDevices msv_filter:v31];
  hostedRoutingController2 = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
  0x3E = [hostedRoutingController2 determineGroupLeaderForOutputDevices:v18 options:options | 0x3E];

  v21 = _MRLogForCategory();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (0x3E)
  {
    if (!v22)
    {
      goto LABEL_11;
    }

    requestID2 = [detailsCopy requestID];
    v24 = +[NSDate date];
    [v24 timeIntervalSinceDate:v10];
    *buf = 138544130;
    v34 = @"PredictGroupLeader";
    v35 = 2114;
    v36 = requestID2;
    v37 = 2112;
    v38 = 0x3E;
    v39 = 2048;
    v40 = v25;
    v26 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v27 = v21;
    v28 = 42;
  }

  else
  {
    if (!v22)
    {
      goto LABEL_11;
    }

    requestID2 = [detailsCopy requestID];
    v24 = +[NSDate date];
    [v24 timeIntervalSinceDate:v10];
    *buf = 138543874;
    v34 = @"PredictGroupLeader";
    v35 = 2114;
    v36 = requestID2;
    v37 = 2048;
    v38 = v29;
    v26 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v27 = v21;
    v28 = 32;
  }

  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);

LABEL_11:

  return 0x3E;
}

- (MSVSystemDialog)activeDialog
{
  WeakRetained = objc_loadWeakRetained(&self->_activeDialog);

  return WeakRetained;
}

@end