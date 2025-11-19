@interface MRDAVRoutingServer
- (BOOL)_setPickedRoute:(id)a3 withPassword:(id)a4 options:(unsigned int)a5;
- (BOOL)_shouldIgnorePortStatusFailureForRouteWithUID:(id)a3 previouslyCachedRouteUID:(id *)a4;
- (BOOL)isSilentPrimary;
- (BOOL)routeIsActiveWithUID:(id)a3;
- (MRDAVRoutingServer)initWithRoutingDataSource:(id)a3;
- (MRDAVRoutingServer)initWithRoutingDataSource:(id)a3 hostedRoutingService:(id)a4 systemEndpointController:(id)a5 autoConnectionController:(id)a6 homeServer:(id)a7 avOutputDeviceAuthorizationSession:(id)a8;
- (MSVSystemDialog)activeDialog;
- (id)_createAirPlaySecuritySettings;
- (id)_descriptionForDiscoveryMode:(unsigned int)a3;
- (id)_existingKeychainAccountForOutputDevice:(id)a3 password:(id *)a4;
- (id)_passwordDialogForRouteWithName:(id)a3 usingInputType:(int64_t)a4;
- (id)_predictGroupLeaderForOutputDeviceIDs:(id)a3 options:(unint64_t)a4 details:(id)a5;
- (id)_preferredIdentifierForMACAddress:(id)a3 identifier:(id)a4 name:(id)a5;
- (id)_presentDialogWithTitle:(id)a3 message:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 completion:(id)a7;
- (id)_savedPasswordForOutputDevice:(id)a3;
- (id)applicationPickedRoutes;
- (id)clientsForApplicationPickedRoute:(id)a3;
- (id)clientsWithApplicationPickedRoutes;
- (id)createTransientEndpointForOutputDeviceUID:(id)a3 details:(id)a4;
- (id)mediaActivityManager;
- (id)pickableRoutesForCategory:(id)a3;
- (void)_clearPasswordForOutputDevice:(id)a3;
- (void)_clientInvalidatedNotification:(id)a3;
- (void)_failedToConnectToOutputDeviceNotification:(id)a3;
- (void)_handleAddVirtualOutputDeviceMessage:(id)a3 fromClient:(id)a4;
- (void)_handleAuthorizationRequest:(id)a3;
- (void)_handleClearAllAVRoutePasswordsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleClusterErrorStatus:(int)a3 forRoute:(id)a4;
- (void)_handleCreateDirectEndpointForDevices:(id)a3 fromClient:(id)a4;
- (void)_handleCreateGroupWithDevices:(id)a3 fromClient:(id)a4;
- (void)_handleCreateHostedEndpointForDevices:(id)a3 fromClient:(id)a4;
- (void)_handleDismissAllBannersMessage:(id)a3 fromClient:(id)a4;
- (void)_handleErrorStatus:(int)a3 forRoute:(id)a4;
- (void)_handleGetActiveSystemEndpointUIDsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetAirPlaySecuritySettingsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetAirplayStatus:(id)a3 fromClient:(id)a4;
- (void)_handleGetExternalDeviceMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetExternalScreenTypeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetHostedEndpointForDeviceUIDMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetHostedRoutingXPCEndpointMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetOutputContextUIDMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetPickableRoutesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetPickedRouteHasVolumeControlMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetRecentAVOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetRecommendRouteCandidatesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetSavedAVRoutePasswordMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetVirtualOutputDevicesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGroupDevicesAndSendCommand:(id)a3 fromClient:(id)a4;
- (void)_handleMigrateFromEndpointToEndpointMessage:(id)a3 fromClient:(id)a4;
- (void)_handleMigrateFromEndpointToOutputDevicesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleModifyOutputContextMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePauseOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePredictGroupLeader:(id)a3 fromClient:(id)a4;
- (void)_handlePrepareGroupForPlaybackMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePresentRouteAuthorizationStatusMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePromptForRouteAuthorizationMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRecommendRouteCandidateMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRemoveFromParentGroup:(id)a3 fromClient:(id)a4;
- (void)_handleResetOutputContextMessage:(id)a3 fromClient:(id)a4;
- (void)_handleResumeNowPlayingSession:(id)a3 fromClient:(id)a4;
- (void)_handleSearchEndpointsForOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSearchEndpointsForRoutingContextUIDMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSendCommandToEachEndpointContainingOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSendCommandToNewGroupContainingOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetApplicationPickedRoutes:(id)a3 fromClient:(id)a4;
- (void)_handleSetNearbyDevice:(id)a3 fromClient:(id)a4;
- (void)_handleSetPickedRouteHasVolumeControlMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetPickedRouteMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetRecentAVOutputDeviceUIDMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetRouteDiscoveryModeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetSavedAVRoutePasswordMessage:(id)a3 fromClient:(id)a4;
- (void)_handleStartNowPlayingSession:(id)a3 fromClient:(id)a4;
- (void)_handleStopNowPlayingSession:(id)a3 fromClient:(id)a4;
- (void)_handleUnpickAirPlayRoutesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleUpdateActiveSystemEndpointUIDMessage:(id)a3 fromClient:(id)a4;
- (void)_handleWillStartPlayingInterruptMessage:(id)a3 fromClient:(id)a4;
- (void)_launchTVClusterSettings;
- (void)_loadMostRecentlyPicked;
- (void)_postExternalScreenDidChange;
- (void)_presentPasswordDialogForRoute:(id)a3 withOptions:(unsigned int)a4;
- (void)_reevaluateAirplayActive;
- (void)_registerNotifications;
- (void)_routingDataSourcePickableRoutesDidChangeNotification:(id)a3;
- (void)_routingDataSourceRouteStatusDidChangeNotification:(id)a3;
- (void)_saveMostRecentlyPicked;
- (void)_storePassword:(id)a3 forOutputDevice:(id)a4;
- (void)_storePassword:(id)a3 forRoute:(id)a4;
- (void)_unregisterNotifications;
- (void)_updateSystemRouteDiscoveryMode;
- (void)collectDiagnostic:(id)a3;
- (void)createEndpointForOutputDeviceIDs:(id)a3 details:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
- (void)outputDeviceAuthorizationSession:(id)a3 didProvideAuthorizationRequest:(id)a4;
- (void)pickCachedRouteWithUID:(id)a3;
- (void)postSystemEndpointDeviceChange:(id)a3 type:(int64_t)a4 originClient:(id)a5 handler:(id)a6;
- (void)removeOutputDeviceUIDsFromParentGroup:(id)a3 details:(id)a4 completion:(id)a5;
- (void)restoreClientState:(id)a3 handler:(id)a4;
- (void)restoreClientSystemEndpointWithType:(int64_t)a3 handler:(id)a4;
- (void)searchEndpointsForOutputDeviceUID:(id)a3 timeout:(double)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchEndpointsForRoutingContextUID:(id)a3 timeout:(double)a4 details:(id)a5 completion:(id)a6;
- (void)setAirplayActive:(BOOL)a3;
- (void)systemEndpointController:(id)a3 activeSystemEndpointDidChangeForRequest:(id)a4 type:(int64_t)a5;
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
    v5 = [v4 supportMultiplayerHost];

    if (v5)
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
  v4 = [v3 allClients];

  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v20 + 1) + 8 * i) routeDiscoveryMode];
        if (v10 <= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
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

  v13 = [(MRDAVRoutingServer *)self discoveryTransaction];

  if (v7)
  {
    if (!v13)
    {
      v14 = [[MROSTransaction alloc] initWithName:@"com.apple.mediaremoted.MRDAVRoutingServer"];
      [(MRDAVRoutingServer *)self setDiscoveryTransaction:v14];

      v15 = [(MRDAVRoutingServer *)self discoveryTransaction];
      MRRegisterTransaction();

      v16 = _MRLogForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(MRDAVRoutingServer *)self discoveryTransaction];
        *buf = 138543362;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Discovery enabled. Starting transaction: %{public}@", buf, 0xCu);
      }
    }
  }

  else if (v13)
  {
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(MRDAVRoutingServer *)self discoveryTransaction];
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Discovery ended. Clearing transaction %{public}@", buf, 0xCu);
    }

    [(MRDAVRoutingServer *)self setDiscoveryTransaction:0];
  }
}

- (void)_reevaluateAirplayActive
{
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 supportMultiplayerHost];

  if (v4)
  {
    v6 = +[MRDMediaRemoteServer server];
    v5 = [v6 allClients];
    -[MRDAVRoutingServer setAirplayActive:](self, "setAirplayActive:", [v5 mr_any:&stru_1004BFAC8]);
  }
}

- (MRDAVRoutingServer)initWithRoutingDataSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MRDAVHostedRoutingService);
  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 supportSystemEndpoints];

  if (v7)
  {
    v8 = [MRDAVSystemEndpointController alloc];
    v9 = [(MRDAVHostedRoutingService *)v5 hostedRoutingController];
    v10 = [(MRDAVSystemEndpointController *)v8 initWithRoutingController:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(MRDExternalDeviceHomeServer);
  v12 = +[AVOutputDeviceAuthorizationSession sharedAuthorizationSession];
  v13 = +[MRDAutoConnectionController sharedConnectionController];
  v14 = [(MRDAVRoutingServer *)self initWithRoutingDataSource:v4 hostedRoutingService:v5 systemEndpointController:v10 autoConnectionController:v13 homeServer:v11 avOutputDeviceAuthorizationSession:v12];

  return v14;
}

- (MRDAVRoutingServer)initWithRoutingDataSource:(id)a3 hostedRoutingService:(id)a4 systemEndpointController:(id)a5 autoConnectionController:(id)a6 homeServer:(id)a7 avOutputDeviceAuthorizationSession:(id)a8
{
  v68 = a3;
  v67 = a4;
  v66 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
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
  objc_storeStrong(&v22->_routingDataSource, a3);
  objc_storeStrong(&v22->_hostedRoutingService, a4);
  objc_storeStrong(&v22->_systemEndpointController, a5);
  [(MRDAVSystemEndpointController *)v22->_systemEndpointController setDelegate:v22];
  objc_storeStrong(&v22->_autoConnectionController, a6);
  objc_storeStrong(&v22->_homeServer, a7);
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
  v31 = [v30 supportRoutingContinuity];

  if (v31)
  {
    goto LABEL_5;
  }

LABEL_6:
  v34 = +[MRUserSettings currentSettings];
  v35 = [v34 supportMultiplayerHost];

  if (v35)
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
  v43 = [v42 useProactivePFSQSender];

  if (v43)
  {
    v44 = objc_alloc_init(MRDProactivePrepareForSetQueueSender);
    proactivePrepareForSetQueueSender = v22->_proactivePrepareForSetQueueSender;
    v22->_proactivePrepareForSetQueueSender = v44;
  }

  v46 = +[MRUserSettings currentSettings];
  v47 = [v46 supportRouteRecommendations];

  if (v47)
  {
    v48 = objc_alloc_init(MRDRouteRecommendationController);
    recommendationController = v22->_recommendationController;
    v22->_recommendationController = v48;
  }

  v50 = +[MRUserSettings currentSettings];
  v51 = [v50 showBluePill];

  if (v51)
  {
    v52 = objc_alloc_init(MRDRoutedBackgroundActivityManager);
    routedBackgroundActivityManager = v22->_routedBackgroundActivityManager;
    v22->_routedBackgroundActivityManager = v52;

    v54 = [(MRDRouteRecommendationController *)v22->_recommendationController focusMonitor];
    [(MRDRoutedBackgroundActivityManager *)v22->_routedBackgroundActivityManager setFocusMonitor:v54];

    [(MRDRouteRecommendationController *)v22->_recommendationController setRoutedBackgroundActivityManager:v22->_routedBackgroundActivityManager];
  }

  v55 = +[MRUserSettings currentSettings];
  v56 = [v55 donateActiveRoutesToBiome];

  if (v56)
  {
    v57 = objc_alloc_init(MRDActiveMediaRouteBiomeDonor);
    activeMediaRouteDonor = v22->_activeMediaRouteDonor;
    v22->_activeMediaRouteDonor = v57;
  }

  v59 = +[MRUserSettings currentSettings];
  v60 = [v59 carPlayBannersEnabled];

  if (v60)
  {
    v61 = objc_alloc_init(MRDCarPlayRouteRecommendationController);
    carPlayRecommendationController = v22->_carPlayRecommendationController;
    v22->_carPlayRecommendationController = v61;
  }

  [v17 setDelegate:v22];
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

- (void)setAirplayActive:(BOOL)a3
{
  if (self->_airplayActive != a3)
  {
    self->_airplayActive = a3;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"MRDRoutingServerAirplayActiveDidChange" object:self];
  }
}

- (id)pickableRoutesForCategory:(id)a3
{
  v3 = [(MRDAVRoutingDataSource *)self->_routingDataSource pickableRoutesForCategory:a3];
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

        v10 = [*(*(&v12 + 1) + 8 * i) dictionary];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)pickCachedRouteWithUID:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v4;
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

        v11 = [*(*(&v21 + 1) + 8 * i) uniqueIdentifier];
        v12 = [v11 hasPrefix:v4];

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
  v14 = v4;
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

- (BOOL)routeIsActiveWithUID:(id)a3
{
  routingDataSource = self->_routingDataSource;
  v4 = a3;
  v5 = [(MRDAVRoutingDataSource *)routingDataSource pickedRoute];
  v6 = [v5 uniqueIdentifier];
  v7 = [v6 hasPrefix:v4];

  return v7;
}

- (id)applicationPickedRoutes
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 allClients];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
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

        v10 = [*(*(&v13 + 1) + 8 * i) applicationPickedRoutes];
        [v2 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v2 allObjects];

  return v11;
}

- (id)clientsForApplicationPickedRoute:(id)a3
{
  v3 = a3;
  v19 = objc_alloc_init(NSMutableArray);
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 allClients];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
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
        v8 = [v7 applicationPickedRoutes];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = v8;
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

              v14 = [*(*(&v22 + 1) + 8 * j) uniqueIdentifier];
              v15 = [v3 uniqueIdentifier];
              v16 = [v14 isEqual:v15];

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
  v4 = [v3 allClients];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
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
        v11 = [v10 applicationPickedRoutes];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 applicationPickedRoutes];
          v14 = [v13 count];

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

- (void)restoreClientState:(id)a3 handler:(id)a4
{
  v6 = a4;
  if ([a3 isEntitledFor:0x10000])
  {
    [(MRDAVRoutingServer *)self restoreClientSystemEndpointWithType:0 handler:v6];
    [(MRDAVRoutingServer *)self restoreClientSystemEndpointWithType:1 handler:v6];
    [(MRDAVRoutingServer *)self restoreClientSystemEndpointWithType:2 handler:v6];
    [(MRDAVRoutingServer *)self restoreClientSystemEndpointWithType:3 handler:v6];
  }
}

- (void)restoreClientSystemEndpointWithType:(int64_t)a3 handler:(id)a4
{
  systemEndpointController = self->_systemEndpointController;
  if (systemEndpointController)
  {
    v7 = a4;
    v9 = [(MRDAVSystemEndpointController *)systemEndpointController activeOutputDeviceUID:a3];
    v8 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v9 reason:@"Restore"];
    [v8 setChangeType:0];
    [(MRDAVRoutingServer *)self postSystemEndpointDeviceChange:v8 type:a3 originClient:0 handler:v7];
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

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  xdict = a3;
  v6 = a4;
  switch(xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY"))
  {
    case 0x300000000000001uLL:
      [(MRDAVRoutingServer *)self _handleSetRouteDiscoveryModeMessage:xdict fromClient:v6];
      break;
    case 0x300000000000002uLL:
      [(MRDAVRoutingServer *)self _handleGetPickableRoutesMessage:xdict fromClient:v6];
      break;
    case 0x300000000000003uLL:
      [(MRDAVRoutingServer *)self _handleSetPickedRouteMessage:xdict fromClient:v6];
      break;
    case 0x300000000000004uLL:
      [(MRDAVRoutingServer *)self _handleGetPickedRouteHasVolumeControlMessage:xdict fromClient:v6];
      break;
    case 0x300000000000005uLL:
      [(MRDAVRoutingServer *)self _handleSetPickedRouteHasVolumeControlMessage:xdict fromClient:v6];
      break;
    case 0x300000000000006uLL:
      [(MRDAVRoutingServer *)self _handleGetExternalScreenTypeMessage:xdict fromClient:v6];
      break;
    case 0x300000000000007uLL:
      [(MRDAVRoutingServer *)self _handleGetSavedAVRoutePasswordMessage:xdict fromClient:v6];
      break;
    case 0x300000000000008uLL:
      [(MRDAVRoutingServer *)self _handleSetSavedAVRoutePasswordMessage:xdict fromClient:v6];
      break;
    case 0x300000000000009uLL:
      [(MRDAVRoutingServer *)self _handleClearAllAVRoutePasswordsMessage:xdict fromClient:v6];
      break;
    case 0x30000000000000AuLL:
      [(MRDAVRoutingServer *)self _handleUnpickAirPlayRoutesMessage:xdict fromClient:v6];
      break;
    case 0x30000000000000BuLL:
      [(MRDAVRoutingServer *)self _handleSetApplicationPickedRoutes:xdict fromClient:v6];
      break;
    case 0x30000000000000CuLL:
      [(MRDAVRoutingServer *)self _handleGetAirPlaySecuritySettingsMessage:xdict fromClient:v6];
      break;
    case 0x30000000000000DuLL:
      [(MRDAVRoutingServer *)self _handleGetHostedRoutingXPCEndpointMessage:xdict fromClient:v6];
      break;
    case 0x30000000000000EuLL:
      [(MRDAVRoutingServer *)self _handleSetRecentAVOutputDeviceUIDMessage:xdict fromClient:v6];
      break;
    case 0x30000000000000FuLL:
      [(MRDAVRoutingServer *)self _handleGetRecentAVOutputDeviceUIDsMessage:xdict fromClient:v6];
      break;
    case 0x300000000000010uLL:
      [(MRDAVRoutingServer *)self _handleGetActiveSystemEndpointUIDsMessage:xdict fromClient:v6];
      break;
    case 0x300000000000011uLL:
      [(MRDAVRoutingServer *)self _handleUpdateActiveSystemEndpointUIDMessage:xdict fromClient:v6];
      break;
    case 0x300000000000013uLL:
      [(MRDAVRoutingServer *)self _handleCreateEndpointWithDevices:xdict fromClient:v6];
      break;
    case 0x300000000000014uLL:
      [(MRDAVRoutingServer *)self _handlePromptForRouteAuthorizationMessage:xdict fromClient:v6];
      break;
    case 0x300000000000015uLL:
      [(MRDAVRoutingServer *)self _handlePresentRouteAuthorizationStatusMessage:xdict fromClient:v6];
      break;
    case 0x300000000000016uLL:
      [(MRDAVRoutingServer *)self _handleGetAirplayStatus:xdict fromClient:v6];
      break;
    case 0x300000000000017uLL:
      [(MRDAVRoutingServer *)self _handleGroupDevicesAndSendCommand:xdict fromClient:v6];
      break;
    case 0x300000000000018uLL:
      [(MRDAVRoutingServer *)self _handleRemoveFromParentGroup:xdict fromClient:v6];
      break;
    case 0x300000000000019uLL:
      [(MRDAVRoutingServer *)self _handlePredictGroupLeader:xdict fromClient:v6];
      break;
    case 0x30000000000001AuLL:
      [(MRDAVRoutingServer *)self _handleSetNearbyDevice:xdict fromClient:v6];
      break;
    case 0x30000000000001CuLL:
      [(MRDAVRoutingServer *)self _handleResetOutputContextMessage:xdict fromClient:v6];
      break;
    case 0x30000000000001DuLL:
      [(MRDAVRoutingServer *)self _handleGetExternalDeviceMessage:xdict fromClient:v6];
      break;
    case 0x30000000000001EuLL:
      [(MRDAVRoutingServer *)self _handleAddVirtualOutputDeviceMessage:xdict fromClient:v6];
      break;
    case 0x30000000000001FuLL:
      [(MRDAVRoutingServer *)self _handleGetVirtualOutputDevicesMessage:xdict fromClient:v6];
      break;
    case 0x300000000000020uLL:
      [(MRDAVRoutingServer *)self _handleCreateGroupWithDevices:xdict fromClient:v6];
      break;
    case 0x300000000000021uLL:
      [(MRDAVRoutingServer *)self _handleCreateDirectEndpointForDevices:xdict fromClient:v6];
      break;
    case 0x300000000000022uLL:
      [(MRDExternalDeviceHomeServer *)self->_homeServer handleXPCMessage:xdict fromClient:v6];
      break;
    case 0x300000000000023uLL:
      [(MRDAVRoutingServer *)self _handleStartNowPlayingSession:xdict fromClient:v6];
      break;
    case 0x300000000000024uLL:
      [(MRDAVRoutingServer *)self _handleStopNowPlayingSession:xdict fromClient:v6];
      break;
    case 0x300000000000025uLL:
      [(MRDAVRoutingServer *)self _handleGetOutputContextUIDMessage:xdict fromClient:v6];
      break;
    case 0x300000000000026uLL:
      [(MRDAVRoutingServer *)self _handleMigrateFromEndpointToOutputDevicesMessage:xdict fromClient:v6];
      break;
    case 0x300000000000027uLL:
      [(MRDAVRoutingServer *)self _handleMigrateFromEndpointToEndpointMessage:xdict fromClient:v6];
      break;
    case 0x300000000000028uLL:
      [(MRDAVRoutingServer *)self _handleModifyOutputContextMessage:xdict fromClient:v6];
      break;
    case 0x300000000000029uLL:
      [(MRDAVRoutingServer *)self _handleCreateHostedEndpointForDevices:xdict fromClient:v6];
      break;
    case 0x30000000000002AuLL:
      [(MRDAVRoutingServer *)self _handleWillStartPlayingInterruptMessage:xdict fromClient:v6];
      break;
    case 0x30000000000002BuLL:
      [(MRDAVRoutingServer *)self _handleRecommendRouteCandidateMessage:xdict fromClient:v6];
      break;
    case 0x30000000000002CuLL:
      [(MRDAVRoutingServer *)self _handleGetRecommendRouteCandidatesMessage:xdict fromClient:v6];
      break;
    case 0x30000000000002DuLL:
      [(MRDAVRoutingServer *)self _handleResumeNowPlayingSession:xdict fromClient:v6];
      break;
    case 0x30000000000002EuLL:
      [(MRDAVRoutingServer *)self _handleDismissAllBannersMessage:xdict fromClient:v6];
      break;
    case 0x30000000000002FuLL:
      [(MRDAVRoutingServer *)self _handlePauseOutputDeviceUIDsMessage:xdict fromClient:v6];
      break;
    case 0x300000000000030uLL:
      [(MRDAVRoutingServer *)self _handleSearchEndpointsForOutputDeviceUIDsMessage:xdict fromClient:v6];
      break;
    case 0x300000000000031uLL:
      [(MRDAVRoutingServer *)self _handleSendCommandToEachEndpointContainingOutputDeviceUIDsMessage:xdict fromClient:v6];
      break;
    case 0x300000000000032uLL:
      [(MRDAVRoutingServer *)self _handleSendCommandToNewGroupContainingOutputDeviceUIDsMessage:xdict fromClient:v6];
      break;
    case 0x300000000000033uLL:
      [(MRDAVRoutingServer *)self _handleSearchEndpointsForRoutingContextUIDMessage:xdict fromClient:v6];
      break;
    case 0x300000000000034uLL:
      [(MRDAVRoutingServer *)self _handlePrepareGroupForPlaybackMessage:xdict fromClient:v6];
      break;
    default:
      break;
  }
}

- (void)collectDiagnostic:(id)a3
{
  routingDataSource = self->_routingDataSource;
  v5 = a3;
  [v5 setSystemDiscoveryMode:{-[MRDAVRoutingDataSource discoveryMode](routingDataSource, "discoveryMode")}];
  v6 = MRMediaRemoteCopyDeviceUID();
  [v5 setLocalReceiverPairingIdentity:v6];

  v11 = [(MRDAVRoutingServer *)self _createAirPlaySecuritySettings];
  [v5 setAirplaySecuritySettings:v11];
  v7 = [(MRDAVSystemEndpointController *)self->_systemEndpointController systemEndpointInfo];
  [v5 setSystemActiveEndpoints:v7];

  v8 = [(MRDAVSystemEndpointController *)self->_systemEndpointController recentlyDismissedRecommendationsInfo];
  [v5 setRecentlyDismissedSystemEndpoints:v8];

  v9 = [(MRDAutoConnectionController *)self->_autoConnectionController autoConnectingEndpoints];
  [v5 setAutoConnectingEndpoints:v9];

  v10 = [(MRDAutoConnectionController *)self->_autoConnectionController autoConnectedEndpoints];
  [v5 setAutoConnectedEndpoints:v10];

  [v5 setAutomaticRemoteControlConnections:self->_preemptiveRemoteControlConnectionManager];
  [(MRDAVHostedRoutingService *)self->_hostedRoutingService collectDiagnostic:v5];
}

- (void)outputDeviceAuthorizationSession:(id)a3 didProvideAuthorizationRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 status];
  if (v6 > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(&off_1004BFB00 + v6);
  }

  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v46 = v5;
    v47 = 2114;
    v48 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Received output device authorization request: %{public}@ (status = %{public}@)", buf, 0x16u);
  }

  v9 = [v5 outputDevice];
  v10 = [v9 name];
  v11 = [[MRDAVOutputDeviceRoute alloc] initWithAVOutputDevice:v9];
  [(MRDAVRoutingServer *)self _postRouteStatusDidChangeNotificationForRoute:v11 newStatus:1];

  v12 = [v5 authorizationTokenType];
  if ([v12 isEqualToString:AVOutputDeviceAuthorizationTokenTypePIN])
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  if (v12 != AVOutputDeviceAuthorizationTokenTypePassword)
  {
    [(MRDAVRoutingServer *)self _clearPasswordForOutputDevice:v9];
LABEL_11:
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10015E03C;
    v38[3] = &unk_1004B68F0;
    v14 = v10;
    v39 = v14;
    v15 = v5;
    v40 = v15;
    v16 = objc_retainBlock(v38);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10015E0FC;
    v31[3] = &unk_1004BF5D8;
    v32 = v9;
    v33 = v15;
    v34 = v14;
    v35 = v12;
    v36 = self;
    v37 = v16;
    v17 = v9;
    v18 = v16;
    v19 = objc_retainBlock(v31);
    v20 = v10;
    v21 = [MRDRouteAuthorizationRequest alloc];
    v22 = [[MRDAVOutputDeviceRoute alloc] initWithAVOutputDevice:v17];
    v23 = v21;
    v10 = v20;
    v24 = [(MRDRouteAuthorizationRequest *)v23 initWithRoute:v22 inputType:v13 responseCallback:v19 cancelCallback:v18];

    [(MRDAVRoutingServer *)self _handleAuthorizationRequest:v24];
    v25 = v39;
    goto LABEL_16;
  }

  v26 = [(MRDAVRoutingServer *)self _savedPasswordForOutputDevice:v9];
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v26;
  v28 = _MRLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v9 name];
    *buf = 138543618;
    v46 = v29;
    v47 = 2112;
    v48 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Authorization request using saved password for %{public}@: %@", buf, 0x16u);
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10015DFD8;
  v41[3] = &unk_1004B6A98;
  v42 = v9;
  v43 = v27;
  v44 = self;
  v25 = v27;
  v30 = v9;
  [v5 respondWithAuthorizationToken:v25 completionHandler:v41];

LABEL_16:
}

- (void)_handleSetRouteDiscoveryModeMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  [v6 setRouteDiscoveryMode:{xpc_dictionary_get_uint64(a3, "MRXPC_ROUTE_DISCOVERY_MODE_KEY")}];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 displayName];
    v9 = -[MRDAVRoutingServer _descriptionForDiscoveryMode:](self, "_descriptionForDiscoveryMode:", [v6 routeDiscoveryMode]);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Client %{public}@ changed route discovery mode to %{public}@.", &v10, 0x16u);
  }

  [(MRDAVRoutingServer *)self _updateSystemRouteDiscoveryMode];
}

- (void)_handleGetPickableRoutesMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  string = xpc_dictionary_get_string(v5, "MRXPC_ROUTE_CATEGORY_KEY");
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
  sub_10001673C(v5, "MRXPC_ROUTES_DATA_KEY", v9, 0);
}

- (void)_handleSetPickedRouteMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreatePropertyListFromXPCMessage();
  v9 = MRCreateStringFromXPCMessage();
  v10 = MRCreateStringFromXPCMessage();
  uint64 = xpc_dictionary_get_uint64(v6, "MRXPC_ROUTE_OPTIONS_KEY");
  if (v8)
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 displayName];
      v14 = MRMediaRemoteCopySetPickedRouteOptionsDescription();
      *buf = 138543874;
      v31 = v13;
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

    sub_10000F9E4(v6, v15);
  }

  else
  {
    v16 = _MRLogForCategory();
    v17 = v16;
    if (v9)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v7 displayName];
        v19 = MRMediaRemoteCopySetPickedRouteOptionsDescription();
        *buf = 138543874;
        v31 = v18;
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
      v25 = v6;
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

      sub_10000F9E4(v6, 7u);
    }
  }
}

- (void)_handleGetPickedRouteHasVolumeControlMessage:(id)a3 fromClient:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = +[MRDMediaRemoteServer server];
  v7 = [v6 nowPlayingServer];

  v8 = [v7 queryExistingPlayerPathForXPCMessage:v13 forClient:v5];

  v9 = [v8 originClient];

  if (v9)
  {
    v10 = [v8 originClient];
    v11 = [v10 volumeControlCapabilities];

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_10000BEE0(v13, "MRXPC_ROUTE_VOLUME_CONTROL_CAPABILITIES_KEY", 0, v12, 0);
}

- (void)_handleSetPickedRouteHasVolumeControlMessage:(id)a3 fromClient:(id)a4
{
  xdict = a3;
  v5 = a4;
  v6 = +[MRDMediaRemoteServer server];
  v7 = [v6 nowPlayingServer];

  v8 = [v7 queryExistingPlayerPathForXPCMessage:xdict forClient:v5];

  v9 = [v8 originClient];

  if (v9)
  {
    if ([v8 isLocalOrigin])
    {
      v10 = 2;
    }

    else
    {
      int64 = xpc_dictionary_get_int64(xdict, "MRXPC_ROUTE_VOLUME_CONTROL_CAPABILITIES_KEY");
      v12 = [v8 originClient];
      [v12 setVolumeControlCapabilities:int64];

      v10 = 0;
    }
  }

  else
  {
    v10 = [v8 error];
  }

  sub_10000F9E4(xdict, v10);
}

- (void)_handleGetExternalScreenTypeMessage:(id)a3 fromClient:(id)a4
{
  routingDataSource = self->_routingDataSource;
  v5 = a3;
  sub_10000BEE0(v5, "MRXPC_ROUTE_EXTERNAL_SCREEN_TYPE_KEY", 1, [(MRDAVRoutingDataSource *)routingDataSource externalScreenType], 0);
}

- (void)_handleGetSavedAVRoutePasswordMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v5 = MRCreateStringFromXPCMessage();
  v6 = v5;
  if (v5)
  {
    v5 = MSVKeychainCopyKeychainValue();
  }

  v8 = v5;
  v7 = v5;
  sub_10000BEE0(v4, "MRXPC_ROUTE_PASSWORD_KEY", 3, [v8 UTF8String], 0);
}

- (void)_handleSetSavedAVRoutePasswordMessage:(id)a3 fromClient:(id)a4
{
  v7 = a3;
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

  sub_10000F9E4(v7, v6);
}

- (void)_handleClearAllAVRoutePasswordsMessage:(id)a3 fromClient:(id)a4
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

- (void)_handleUnpickAirPlayRoutesMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
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

  sub_10000F9E4(v5, v7);
}

- (void)_handleSetApplicationPickedRoutes:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MRCreatePropertyListFromXPCMessage();
  v8 = xpc_dictionary_get_BOOL(v5, "MRXPC_ROUTE_OPTIONS_KEY");
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

  [(MRDAVRoutingServer *)self _setApplicationPickedRoutes:v10 updateRoutes:v8 forClient:v6];
}

- (void)_handleGetAirPlaySecuritySettingsMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGetHostedRoutingXPCEndpointMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v7;
  v9 = v6;
  v10 = v7;
  xpc_dictionary_handoff_reply();
}

- (void)_handleSetRecentAVOutputDeviceUIDMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
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
  sub_10000F9E4(v5, 0);
}

- (void)_handleGetRecentAVOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4
{
  mostRecentlyPickedDevices = self->_mostRecentlyPickedDevices;
  v5 = a3;
  v6 = [NSPropertyListSerialization dataWithPropertyList:mostRecentlyPickedDevices format:200 options:0 error:0];
  sub_10001673C(v5, "MRXPC_OUTPUT_DEVICE_UID_ARRAY_DATA_KEY", v6, 0);
}

- (void)_handleUpdateActiveSystemEndpointUIDMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGetActiveSystemEndpointUIDsMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v7;
  v9 = v6;
  v10 = v7;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGetHostedEndpointForDeviceUIDMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v7;
  v9 = v6;
  v10 = v7;
  xpc_dictionary_handoff_reply();
}

- (void)_handlePromptForRouteAuthorizationMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRCreateProtobufFromXPCMessage();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001602E4;
  v21[3] = &unk_1004BE4C8;
  v22 = v5;
  v7 = v5;
  v8 = objc_retainBlock(v21);
  v9 = [v6 inputType];
  v10 = [MRDOutputDeviceRoute alloc];
  v11 = [v6 route];
  v12 = [(MRDOutputDeviceRoute *)v10 initWithOutputDevice:v11];

  v13 = [MRDRouteAuthorizationRequest alloc];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1001603F4;
  v19 = &unk_1004B79A0;
  v20 = v8;
  v14 = v8;
  v15 = [(MRDRouteAuthorizationRequest *)v13 initWithRoute:v12 inputType:v9 responseCallback:v14 cancelCallback:&v16];
  [(MRDAVRoutingServer *)self _handleAuthorizationRequest:v15, v16, v17, v18, v19];
}

- (void)_handlePresentRouteAuthorizationStatusMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v10 = MRCreateProtobufFromXPCMessage();
  v6 = [v10 status];
  v7 = [MRDOutputDeviceRoute alloc];
  v8 = [v10 route];
  v9 = [(MRDOutputDeviceRoute *)v7 initWithOutputDevice:v8];
  [(MRDAVRoutingServer *)self _handleErrorStatus:v6 forRoute:v9];

  sub_100008278(v5, 0);
}

- (void)_handleGetAirplayStatus:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handleSetNearbyDevice:(id)a3 fromClient:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100160654;
  v5[3] = &unk_1004B6E08;
  v6 = a3;
  v4 = v6;
  sub_100008278(v4, v5);
}

- (void)_handleResetOutputContextMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handleAddVirtualOutputDeviceMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    sub_100008278(v4, &stru_1004BF620);
  }
}

- (void)_handleGetVirtualOutputDevicesMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    sub_100008278(v4, &stru_1004BF640);
  }
}

- (void)_handleCreateGroupWithDevices:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  xpc_dictionary_handoff_reply();
}

- (void)_handleStartNowPlayingSession:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v7;
  v9 = v6;
  v10 = v7;
  xpc_dictionary_handoff_reply();
}

- (void)_handleStopNowPlayingSession:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v7;
  v9 = v6;
  v10 = v7;
  xpc_dictionary_handoff_reply();
}

- (void)_handleResumeNowPlayingSession:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreatePlayerPathFromXPCMessage();
  workerQueue = self->_workerQueue;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  v12 = v7;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGetOutputContextUIDMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  if (qword_100529578 != -1)
  {
    sub_1003AB234();
  }

  v6 = v4;
  v5 = v4;
  MRMediaRemoteGetDeviceUIDWithRetryIntervals();
}

- (void)_handleMigrateFromEndpointToOutputDevicesMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handleMigrateFromEndpointToEndpointMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handleCreateDirectEndpointForDevices:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  xpc_dictionary_handoff_reply();
}

- (void)_handleGroupDevicesAndSendCommand:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  xpc_dictionary_handoff_reply();
}

- (void)_handleCreateHostedEndpointForDevices:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  xpc_dictionary_handoff_reply();
}

- (void)_handlePredictGroupLeader:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  xpc_dictionary_handoff_reply();
}

- (void)_handleRemoveFromParentGroup:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreatePropertyListFromXPCMessage();
  v9 = MRCreateRequestDetailsFromXPCMessage();
  if (!v9)
  {
    v10 = [MRRequestDetails alloc];
    v11 = MRRequestDetailsInitiatorInfer;
    v12 = [v7 bundleIdentifier];
    v9 = [v10 initWithInitiator:v11 requestID:0 reason:@"RoutingServer.handleRemoveFromParentGroup" userInitiated:0 originatingBundleID:v12];
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001635CC;
  v14[3] = &unk_1004B6FC0;
  v15 = v6;
  v13 = v6;
  [(MRDAVRoutingServer *)self removeOutputDeviceUIDsFromParentGroup:v8 details:v9 completion:v14];
}

- (void)_handleGetExternalDeviceMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_100529588 != -1)
  {
    sub_1003AB2BC();
  }

  if ([v6 isEntitledFor:0x8000])
  {
    v7 = v5;
    xpc_dictionary_handoff_reply();
  }

  else
  {
    sub_100008278(v5, &stru_1004BF7F8);
  }
}

- (void)_handleModifyOutputContextMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handleWillStartPlayingInterruptMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handleRecommendRouteCandidateMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] [MRDRRC] _handleRecommendRouteCandidateMessage: %@ fromClient: %@", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016403C;
  v10[3] = &unk_1004B6E30;
  v11 = v6;
  v12 = self;
  v9 = v6;
  sub_100008278(v9, v10);
}

- (void)_handleGetRecommendRouteCandidatesMessage:(id)a3 fromClient:(id)a4
{
  v4 = [(MRDRouteRecommendationController *)self->_recommendationController recommender:a3];
  [v4 requestCurrentContext];
}

- (void)_handleDismissAllBannersMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] _handleDismissAllBannersMessage: %@ fromClient: %@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016429C;
  v9[3] = &unk_1004B6E08;
  v9[4] = self;
  sub_100008278(v6, v9);
}

- (void)_handlePauseOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v5 = MRCreatePropertyListFromXPCMessage();
  v6 = MRCreateRequestDetailsFromXPCMessage();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001643B4;
  v11[3] = &unk_1004B6FC0;
  v12 = v4;
  v7 = v4;
  v8 = objc_retainBlock(v11);
  v9 = qos_class_self();
  v10 = dispatch_get_global_queue(v9, 0);
  [MRDPauseOutputDevicesRequest pauseOutputDeviceUIDs:v5 details:v6 queue:v10 completion:v8];
}

- (void)_handleSearchEndpointsForOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)searchEndpointsForOutputDeviceUID:(id)a3 timeout:(double)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSDate now];
  v17 = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
  v18 = [NSMutableString alloc];
  v19 = [v13 requestID];
  v20 = [v18 initWithFormat:@"%@<%@>", @"RoutingServer.searchEndpointsForOutputDeviceUID", v19];

  if (v12)
  {
    [(__CFString *)v20 appendFormat:@" for %@", v12];
  }

  v21 = [v13 label];

  if (v21)
  {
    v22 = [v13 label];
    [(__CFString *)v20 appendFormat:@" because %@", v22];
  }

  v44 = v14;
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
  v24 = v17;
  v57 = v24;
  v25 = v12;
  v58 = v25;
  v59 = @"RoutingServer.searchEndpointsForOutputDeviceUID";
  v26 = v13;
  v60 = v26;
  v43 = v16;
  v61 = v43;
  v27 = v15;
  v62 = v27;
  v28 = objc_retainBlock(v56);
  v29 = [v24 availableEndpoints];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100165314;
  v54[3] = &unk_1004BECE0;
  v30 = v25;
  v55 = v30;
  v31 = [v29 msv_firstWhere:v54];

  v32 = objc_alloc_init(NSMutableDictionary);
  v33 = [v26 initiator];
  [v32 setObject:v33 forKeyedSubscript:MREndpointConnectionReasonUserInfoKey];

  v34 = [v26 requestID];
  [v32 setObject:v34 forKeyedSubscript:MREndpointConnectionCorrelationIDUserInfoKey];

  if (!v31)
  {
    goto LABEL_15;
  }

  v35 = [v31 isConnected];
  v36 = _MRLogForCategory();
  v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (!v35)
  {
    if (v37)
    {
      v42 = [v26 requestID];
      *buf = 138543874;
      v64 = @"RoutingServer.searchEndpointsForOutputDeviceUID";
      v65 = 2114;
      v66 = v42;
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
    [MRDLightweightReconnaissanceSession searchEndpointsForOutputDeviceUID:v30 timeout:v49 details:v44 queue:v45 completion:a4];

    goto LABEL_16;
  }

  if (v37)
  {
    v38 = [v26 requestID];
    *buf = 138543874;
    v64 = @"RoutingServer.searchEndpointsForOutputDeviceUID";
    v65 = 2114;
    v66 = v38;
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

- (void)_handleSendCommandToEachEndpointContainingOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handleSendCommandToNewGroupContainingOutputDeviceUIDsMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handleSearchEndpointsForRoutingContextUIDMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)_handlePrepareGroupForPlaybackMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  workerQueue = self->_workerQueue;
  v8 = v5;
  v7 = v5;
  xpc_dictionary_handoff_reply();
}

- (void)searchEndpointsForRoutingContextUID:(id)a3 timeout:(double)a4 details:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[NSDate now];
  v14 = [NSMutableString alloc];
  v15 = [v11 requestID];
  v16 = [v14 initWithFormat:@"%@<%@>", @"RoutingServer.searchEndpointsForRoutingContextUID", v15];

  if (v10)
  {
    [v16 appendFormat:@" for %@", v10];
  }

  v17 = [v11 label];

  if (v17)
  {
    v18 = [v11 label];
    [v16 appendFormat:@" because %@", v18];
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
  v20 = v10;
  v47 = v20;
  v48 = @"RoutingServer.searchEndpointsForRoutingContextUID";
  v21 = v11;
  v49 = v21;
  v22 = v13;
  v50 = v22;
  p_buf = &buf;
  v23 = v12;
  v51 = v23;
  v24 = objc_retainBlock(v46);
  v25 = [MRBlockGuard alloc];
  v26 = [v21 requestID];
  v27 = &_dispatch_main_q;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100166E28;
  v44[3] = &unk_1004B6FE8;
  v28 = v24;
  v45 = v28;
  v29 = [v25 initWithTimeout:v26 reason:&_dispatch_main_q queue:v44 handler:a4];

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

- (void)systemEndpointController:(id)a3 activeSystemEndpointDidChangeForRequest:(id)a4 type:(int64_t)a5
{
  systemEndpointController = self->_systemEndpointController;
  v8 = a4;
  v9 = [v8 outputDeviceUID];
  v10 = [(MRDAVSystemEndpointController *)systemEndpointController originClientForDeviceUID:v9];

  [(MRDAVRoutingServer *)self postSystemEndpointDeviceChange:v8 type:a5 originClient:v10 handler:0];
  if (a5 == 2)
  {
    notify_post("com.apple.mediaremote.recommendedSystemEndpointDidChange");
  }
}

- (void)postSystemEndpointDeviceChange:(id)a3 type:(int64_t)a4 originClient:(id)a5 handler:(id)a6
{
  v25 = a3;
  v9 = a5;
  v10 = a6;
  v11 = objc_alloc_init(NSMutableDictionary);
  v12 = [NSNumber numberWithInteger:a4];
  [v11 setObject:v12 forKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];

  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v25 changeType]);
  [v11 setObject:v13 forKeyedSubscript:kMRMediaRemoteActiveEndpointChangeTypeUserInfoKey];

  v14 = [v9 activeNowPlayingClient];
  v15 = [v14 activePlayerClient];
  v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 playbackState]);
  [v11 setObject:v16 forKeyedSubscript:kMRMediaRemotePlaybackStateUserInfoKey];

  v17 = [v25 reason];

  if (v17)
  {
    v18 = [v25 reason];
    [v11 setObject:v18 forKeyedSubscript:kMRMediaRemoteActiveEndpointReasonUserInfoKey];
  }

  v19 = [v25 outputDeviceUID];

  if (v19)
  {
    v20 = [v25 outputDeviceUID];
    [v11 setObject:v20 forKeyedSubscript:kMRAVEndpointOutputDeviceIdentifierUserInfoKey];
  }

  v21 = [v9 playerPath];
  MRAddPlayerPathToUserInfo();

  v22 = [v9 deviceInfo];
  MRAddDeviceInfoToUserInfo();

  [v11 setObject:v25 forKeyedSubscript:MRUpdateActiveSystemEndpointRequestUserInfoKey];
  v23 = _MRMediaRemoteActiveSystemEndpointDidChangeNotification;
  if (v10)
  {
    v10[2](v10, _MRMediaRemoteActiveSystemEndpointDidChangeNotification, v11);
  }

  else
  {
    v24 = +[MRDMediaRemoteServer server];
    [v24 postClientNotificationNamed:v23 userInfo:v11 predicate:&stru_1004BF948];
  }
}

- (void)_clientInvalidatedNotification:(id)a3
{
  v4 = [a3 object];
  [(MRDAVRoutingServer *)self _setApplicationPickedRoutes:0 updateRoutes:1 forClient:v4];
  [(MRDAVRoutingServer *)self _updateSystemRouteDiscoveryMode];
}

- (void)_routingDataSourcePickableRoutesDidChangeNotification:(id)a3
{
  v3 = +[MRDMediaRemoteServer server];
  [v3 postClientNotificationNamed:kMRMediaRemotePickableRoutesDidChangeNotification];
}

- (void)_routingDataSourceRouteStatusDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"MRDAVRoutingDataSourceAVRouteUserInfoKey"];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:@"MRDAVRoutingDataSourceRouteStatusUserInfoKey"];
  v9 = [v8 intValue];

  if ((v9 - 1) > 1)
  {
    if (v9)
    {
      [(MRDAVRoutingServer *)self _handleErrorStatus:v9 forRoute:v6];
    }
  }

  else
  {
    v10 = [v6 uniqueIdentifier];
    v11 = [(MRDAVRoutingServer *)self _shouldIgnorePortStatusFailureForRouteWithUID:v10 previouslyCachedRouteUID:0];

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

  self->_mostRecentStatus = v9;
  [(MRDAVRoutingServer *)self _postRouteStatusDidChangeNotificationForRoute:v6 newStatus:v9];
}

- (void)_failedToConnectToOutputDeviceNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:AVOutputContextManagerOutputDeviceKey];

  if (v6)
  {
    v7 = [[MRDAVOutputDeviceRoute alloc] initWithAVOutputDevice:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:AVOutputContextManagerFailureReasonKey];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:AVOutputContextManagerDidFailToConnectToOutputDeviceUserInfoKey];

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
    v18 = 5;
    v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:5];
    v20 = [v19 objectForKey:v9];

    if (v20)
    {
      v18 = [v20 intValue];
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

  v18 = 5;
  if (v16)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (MSVDeviceIsAppleTV() && [v6 clusterType] == 1 && MRMediaRemoteAVOutputDeviceIsLocalForAirPlay())
  {
    [(MRDAVRoutingServer *)self _handleClusterErrorStatus:v18 forRoute:v7];
  }

  else
  {
    [(MRDAVRoutingServer *)self _handleErrorStatus:v18 forRoute:v7];
  }

LABEL_18:
  [(MRDAVRoutingServer *)self _postRouteStatusDidChangeNotificationForRoute:v7 newStatus:v18];
}

- (void)_handleAuthorizationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 route];
  v6 = [v4 inputType];
  routingDataSource = self->_routingDataSource;
  v8 = [v5 uniqueIdentifier];
  v9 = [(MRDAVRoutingDataSource *)routingDataSource authorizationRequestCallbackForRouteID:v8];

  if (!v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = self->_routingDataSource;
    v13 = v5;
    v14 = [v13 avOutputDevice];
    v15 = [v14 clusterID];
    v9 = [(MRDAVRoutingDataSource *)v12 authorizationRequestCallbackForRouteID:v15];

    if (!v9)
    {
LABEL_8:
      v16 = [(MRDAVRoutingServer *)self activePasswordDialog];

      v17 = [v5 uniqueIdentifier];
      v31 = 0;
      v18 = [(MRDAVRoutingServer *)self _shouldIgnorePortStatusFailureForRouteWithUID:v17 previouslyCachedRouteUID:&v31];
      v9 = v31;

      if (!v16 && (v18 & 1) == 0)
      {
        v19 = _MRLogForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v5 name];
          *buf = 138543362;
          v36 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Prompting user with authorization request route %{public}@", buf, 0xCu);
        }

        v21 = [v5 name];
        v22 = [(MRDAVRoutingServer *)self _passwordDialogForRouteWithName:v21 usingInputType:v6];

        v24 = _NSConcreteStackBlock;
        v25 = 3221225472;
        v26 = sub_100167EA0;
        v27 = &unk_1004BF998;
        v28 = v4;
        v29 = v5;
        v30 = self;
        [v22 presentWithCompletion:&v24];
        [(MRDAVRoutingServer *)self setActivePasswordDialog:v22, v24, v25, v26, v27];

        goto LABEL_5;
      }

      if (v16)
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
          [v4 cancel];
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
    v11 = [v5 name];
    *buf = 138543362;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Handling authorization request with custom callback for route %{public}@", buf, 0xCu);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100167DC4;
  v32[3] = &unk_1004BF970;
  v33 = v5;
  v34 = v4;
  v9[2](v9, v6, v32);

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

- (id)_descriptionForDiscoveryMode:(unsigned int)a3
{
  v3 = MRMediaRemoteCopyRouteDiscoveryModeDescription();

  return v3;
}

- (id)_passwordDialogForRouteWithName:(id)a3 usingInputType:(int64_t)a4
{
  v5 = a3;
  v6 = MRLocalizedString();
  v7 = MRLocalizedString();
  v8 = MRLocalizedString();
  v9 = objc_alloc_init(MSVSystemDialogOptions);
  [v9 setAlertHeader:v6];
  v10 = [NSString stringWithFormat:v7, v5];

  [v9 setAlertMessage:v10];
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
  [v14 setKeyboardType:a4];
  [v13 addTextField:v14];

  return v13;
}

- (BOOL)_shouldIgnorePortStatusFailureForRouteWithUID:(id)a3 previouslyCachedRouteUID:(id *)a4
{
  v6 = a3;
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

        v14 = [v6 length];
        if (v14 >= [v10 length])
        {
          v15 = v10;
        }

        else
        {
          v15 = v6;
        }

        v16 = v15;
        v17 = [v6 length];
        if (v17 <= [v10 length])
        {
          v18 = v10;
        }

        else
        {
          v18 = v6;
        }

        v19 = [v18 containsString:v16];

        if (v19)
        {

          if (((a4 != 0) & v19) == 1)
          {
            v21 = v10;
            *a4 = v10;
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

- (void)_handleClusterErrorStatus:(int)a3 forRoute:(id)a4
{
  v6 = a4;
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
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] Error connecting to cluster member: %{public}@", &buf, 0xCu);
    }

    v13 = +[NSDate date];
    lastClusterConnectionFailureDate = self->_lastClusterConnectionFailureDate;
    self->_lastClusterConnectionFailureDate = v13;

    v42 = MRLocalizedString();
    if ((a3 - 7) <= 2)
    {
      v15 = *(&off_1004BFB30 + (a3 - 7));
      v16 = MRLocalizedString();

      v42 = v16;
    }

    v11 = MRLocalizedString();
    v17 = +[NSDate date];
    v18 = +[NSUUID UUID];
    v19 = [v18 UUIDString];

    v20 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"Dialog.handleClusterErrorStatus", v19];
    v21 = v20;
    if (v6)
    {
      [v20 appendFormat:@" for %@", v6];
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
    v53 = v6;
    v23 = v19;
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

- (void)_handleErrorStatus:(int)a3 forRoute:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_mostRecentStatus == a3 || ([v6 uniqueIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[MRDAVRoutingServer _shouldIgnorePortStatusFailureForRouteWithUID:previouslyCachedRouteUID:](self, "_shouldIgnorePortStatusFailureForRouteWithUID:previouslyCachedRouteUID:", v8, 0), v8, (v9 & 1) != 0))
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      mostRecentStatus = self->_mostRecentStatus;
      v12 = [v7 uniqueIdentifier];
      *buf = 134218242;
      v27 = mostRecentStatus;
      v28 = 2114;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] AirPlay Error %ld: Ignoring because error for %{public}@ because the status code has not changed and already prompted user.", buf, 0x16u);
    }

    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      routeUIDsToIgnorePortStatusFailures = self->_routeUIDsToIgnorePortStatusFailures;
      *buf = 138543362;
      v27 = routeUIDsToIgnorePortStatusFailures;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] RouteUIDs ignored for port status failures: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v15 = [v7 name];
    v16 = v15;
    v17 = @"<Unknown>";
    if (v15)
    {
      v17 = v15;
    }

    v13 = v17;

    v18 = [v7 extendedInfo];
    v19 = [v18 modelName];
    [v19 hasPrefix:@"AppleTV"];

    v20 = MRLocalizedString();
    v21 = MRLocalizedString();
    v22 = [NSString stringWithFormat:v21, v13];

    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v27 = a3;
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

- (id)_presentDialogWithTitle:(id)a3 message:(id)a4 defaultButtonTitle:(id)a5 alternateButtonTitle:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = objc_alloc_init(MSVSystemDialogOptions);
  [v17 setAlertHeader:v12];
  [v17 setAlertMessage:v13];
  [v17 setDefaultButtonTitle:v16];

  [v17 setAlternateButtonTitle:v15];
  [v17 setShowAsTopmost:1];
  [v17 setForceModalAlertAppearance:1];
  [v17 setShowOnLockscreen:1];
  [v17 setDismissOverlaysOnLockscreen:0];
  v18 = [[MSVSystemDialog alloc] initWithOptions:v17];
  [(MSVSystemDialog *)self->_activePasswordDialog dismiss];
  [(MRDAVRoutingServer *)self setActivePasswordDialog:0];
  v19 = [(MRDAVRoutingServer *)self activeDialog];

  if (v19)
  {
    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v33 = [(MRDAVRoutingServer *)self activeDialog];
      v28 = objc_opt_class();
      [(MRDAVRoutingServer *)self activeDialog];
      v21 = v32 = v14;
      v31 = [(MRDAVRoutingServer *)self activeDialog];
      v30 = [v31 options];
      [v30 alertHeader];
      v22 = v34 = v12;
      v23 = [(MRDAVRoutingServer *)self activeDialog];
      v24 = [v23 options];
      v25 = [v24 alertMessage];
      *buf = 138545666;
      v36 = v29;
      v37 = 2048;
      v38 = self;
      v39 = 2114;
      v40 = v28;
      v41 = 2048;
      v42 = v21;
      v43 = 2114;
      v44 = v22;
      v45 = 2114;
      v46 = v25;
      v47 = 2114;
      v48 = objc_opt_class();
      v49 = 2048;
      v50 = v18;
      v51 = 2114;
      v52 = v34;
      v53 = 2114;
      v54 = v13;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[AVRoutingServer] <%{public}@: %p> Dismissing active dialog <%{public}@: %p - %{public}@: %{public}@> to present new dialog: <%{public}@: %p - %{public}@: %{public}@>", buf, 0x66u);

      v12 = v34;
      v14 = v32;
    }

    v26 = [(MRDAVRoutingServer *)self activeDialog];
    [v26 dismiss];
  }

  [(MRDAVRoutingServer *)self setActiveDialog:v18];
  [v18 presentWithCompletion:v14];

  return v18;
}

- (id)_existingKeychainAccountForOutputDevice:(id)a3 password:(id *)a4
{
  v5 = a3;
  v6 = [v5 identifyingMACAddress];
  if ([v6 length] < 6)
  {
    v10 = 0;
  }

  else
  {
    [v6 bytes];
    HardwareAddressToCString();
    v7 = [NSString stringWithUTF8String:v14];
    v8 = MSVKeychainCopyKeychainValue();
    if (v8)
    {
      v9 = v8;

      goto LABEL_10;
    }

    v10 = [v7 lowercaseString];

    v9 = MSVKeychainCopyKeychainValue();
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v7 = [v5 ID];

  v11 = MSVKeychainCopyKeychainValue();
  if (v11)
  {
    v9 = v11;
    goto LABEL_10;
  }

  v10 = [v5 name];

  v9 = MSVKeychainCopyKeychainValue();
LABEL_9:
  v7 = v10;
LABEL_10:

  if (a4)
  {
    v12 = v9;
    *a4 = v9;
  }

  return v7;
}

- (id)_savedPasswordForOutputDevice:(id)a3
{
  v6 = 0;
  v3 = [(MRDAVRoutingServer *)self _existingKeychainAccountForOutputDevice:a3 password:&v6];
  v4 = v6;

  return v4;
}

- (void)_clearPasswordForOutputDevice:(id)a3
{
  v3 = [(MRDAVRoutingServer *)self _existingKeychainAccountForOutputDevice:a3 password:0];
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

- (BOOL)_setPickedRoute:(id)a3 withPassword:(id)a4 options:(unsigned int)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  routeUIDsToIgnorePortStatusFailures = self->_routeUIDsToIgnorePortStatusFailures;
  v11 = [v8 uniqueIdentifier];
  if (v5)
  {
    [(NSMutableSet *)routeUIDsToIgnorePortStatusFailures addObject:v11];
  }

  else
  {
    [(NSMutableSet *)routeUIDsToIgnorePortStatusFailures removeObject:v11];
  }

  self->_mostRecentStatus = -1;
  v12 = [(MRDAVRoutingDataSource *)self->_routingDataSource setPickedRoute:v8 withPassword:v9];
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
  v2 = [(MRDAVRoutingDataSource *)self->_routingDataSource externalScreenType];
  v3 = +[MRDMediaRemoteServer server];
  v4 = kMRMediaRemoteExternalScreenTypeDidChangeNotification;
  v7 = kMRMediaRemoteExternalScreenTypeUserInfoKey;
  v5 = [NSNumber numberWithUnsignedInt:v2];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v3 postClientNotificationNamed:v4 userInfo:v6];
}

- (void)_presentPasswordDialogForRoute:(id)a3 withOptions:(unsigned int)a4
{
  v6 = a3;
  v7 = +[MRDMediaRemoteServer server];
  [v7 postClientNotificationNamed:kMRMediaRemoteWillPresentRouteAuthenticationPromptNotification];

  v8 = [v6 extendedInfo];
  if ([v8 requiresPIN])
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v6 name];
  v11 = [(MRDAVRoutingServer *)self _passwordDialogForRouteWithName:v10 usingInputType:v9];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100169EF0;
  v13[3] = &unk_1004BFA30;
  v13[4] = self;
  v14 = v6;
  v15 = a4;
  v12 = v6;
  [v11 presentWithCompletion:v13];
  [(MRDAVRoutingServer *)self setActivePasswordDialog:v11];
}

- (void)_storePassword:(id)a3 forRoute:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 MACAddress];
  v9 = [v6 uniqueIdentifier];
  v10 = [v6 name];

  v11 = [(MRDAVRoutingServer *)self _preferredIdentifierForMACAddress:v8 identifier:v9 name:v10];

  MSVKeychainSetKeychainValue();
}

- (void)_storePassword:(id)a3 forOutputDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 identifyingMACAddress];
  v9 = [v6 ID];
  v10 = [v6 name];

  v11 = [(MRDAVRoutingServer *)self _preferredIdentifierForMACAddress:v8 identifier:v9 name:v10];

  MSVKeychainSetKeychainValue();
}

- (id)_preferredIdentifierForMACAddress:(id)a3 identifier:(id)a4 name:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 length] < 6)
  {
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    [v7 bytes];
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

- (void)createEndpointForOutputDeviceIDs:(id)a3 details:(id)a4 completion:(id)a5
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016A5F4;
  v8[3] = &unk_1004BFA58;
  v9 = a5;
  v7 = v9;
  [MRDCreateEndpointRequest createEndpointWithOutputDeviceUIDs:a3 timeout:a4 details:v8 completion:30.0];
}

- (id)createTransientEndpointForOutputDeviceUID:(id)a3 details:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate now];
  v9 = [NSMutableString alloc];
  v10 = [v7 requestID];
  v11 = [v9 initWithFormat:@"%@<%@>", @"createTransientEndpointForOutputDeviceUID", v10];

  if (v6)
  {
    [(__CFString *)v11 appendFormat:@" for %@", v6];
  }

  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v13 = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
  v14 = [v13 availableOutputDevices];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10016AA3C;
  v33[3] = &unk_1004B8A40;
  v15 = v6;
  v34 = v15;
  v16 = [v14 msv_firstWhere:v33];
  if (v16)
  {
    v17 = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
    v43 = v16;
    v18 = [NSArray arrayWithObjects:&v43 count:1];
    v19 = [v17 makeEndpointWithOutputDevices:v18 options:0];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v19 debugName];

  v21 = _MRLogForCategory();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      v23 = [v7 requestID];
      [v19 debugName];
      v32 = v7;
      v25 = v24 = v8;
      v26 = +[NSDate date];
      [v26 timeIntervalSinceDate:v24];
      *buf = 138544130;
      v36 = @"createTransientEndpointForOutputDeviceUID";
      v37 = 2114;
      v38 = v23;
      v39 = 2112;
      v40 = v25;
      v41 = 2048;
      v42 = v27;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);

      v8 = v24;
      v7 = v32;
    }
  }

  else if (v22)
  {
    v28 = [v7 requestID];
    v29 = +[NSDate date];
    [v29 timeIntervalSinceDate:v8];
    *buf = 138543874;
    v36 = @"createTransientEndpointForOutputDeviceUID";
    v37 = 2114;
    v38 = v28;
    v39 = 2048;
    v40 = v30;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
  }

  return v19;
}

- (void)removeOutputDeviceUIDsFromParentGroup:(id)a3 details:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSDate now];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.mediaremote.removeFromParentGroup", v11);

  v12 = [NSMutableString alloc];
  v13 = [v8 requestID];
  v14 = [v12 initWithFormat:@"%@<%@>", @"removeOutputDeviceUIDsFromParentGroup", v13];

  if (v7)
  {
    [v14 appendFormat:@" for %@", v7];
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
  v31 = v8;
  v49 = v31;
  v28 = v10;
  v50 = v28;
  v27 = v9;
  v51 = v27;
  v29 = objc_retainBlock(v48);
  v16 = dispatch_group_create();
  v17 = +[MRDMediaRemoteServer server];
  v18 = [v17 deviceInfo];
  v19 = [v18 deviceUID];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v7;
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
        if ([v23 isEqualToString:v19])
        {
          v24 = +[MRAVLocalEndpoint sharedLocalEndpoint];
          dispatch_group_enter(v16);
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10016B11C;
          v41[3] = &unk_1004B69F8;
          v43 = &buf;
          v42 = v16;
          [v24 removeOutputDeviceFromParentGroup:v19 queue:queue completion:v41];
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

- (id)_predictGroupLeaderForOutputDeviceIDs:(id)a3 options:(unint64_t)a4 details:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[NSDate now];
  v11 = [NSMutableString alloc];
  v12 = [v9 requestID];
  v13 = [v11 initWithFormat:@"%@<%@>", @"PredictGroupLeader", v12];

  if (v8)
  {
    [(__CFString *)v13 appendFormat:@" for %@", v8];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v15 = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
  v16 = [v15 availableOutputDevices];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10016B654;
  v31[3] = &unk_1004B8A40;
  v17 = v8;
  v32 = v17;
  v18 = [v16 msv_filter:v31];
  v19 = [(MRDAVHostedRoutingService *)self->_hostedRoutingService hostedRoutingController];
  v20 = [v19 determineGroupLeaderForOutputDevices:v18 options:a4 | 0x3E];

  v21 = _MRLogForCategory();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_11;
    }

    v23 = [v9 requestID];
    v24 = +[NSDate date];
    [v24 timeIntervalSinceDate:v10];
    *buf = 138544130;
    v34 = @"PredictGroupLeader";
    v35 = 2114;
    v36 = v23;
    v37 = 2112;
    v38 = v20;
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

    v23 = [v9 requestID];
    v24 = +[NSDate date];
    [v24 timeIntervalSinceDate:v10];
    *buf = 138543874;
    v34 = @"PredictGroupLeader";
    v35 = 2114;
    v36 = v23;
    v37 = 2048;
    v38 = v29;
    v26 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v27 = v21;
    v28 = 32;
  }

  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);

LABEL_11:

  return v20;
}

- (MSVSystemDialog)activeDialog
{
  WeakRetained = objc_loadWeakRetained(&self->_activeDialog);

  return WeakRetained;
}

@end