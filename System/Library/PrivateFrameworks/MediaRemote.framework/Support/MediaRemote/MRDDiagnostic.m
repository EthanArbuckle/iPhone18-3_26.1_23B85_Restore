@interface MRDDiagnostic
- (MRDDiagnostic)init;
- (id)createDiagnosticInfo;
- (id)mediaSuggestions:(id)a3;
- (void)_appendDescribableArray:(id)a3 toString:(id)a4 withTitle:(id)a5 indentLevel:(unsigned int)a6 usingDebugDescription:(BOOL)a7;
- (void)_appendNullableObjectDescription:(id)a3 toString:(id)a4 withTitle:(id)a5 usingDebugDescription:(BOOL)a6;
@end

@implementation MRDDiagnostic

- (MRDDiagnostic)init
{
  v6.receiver = self;
  v6.super_class = MRDDiagnostic;
  v2 = [(MRDDiagnostic *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSDate);
    dateCreated = v2->_dateCreated;
    v2->_dateCreated = v3;
  }

  return v2;
}

- (id)createDiagnosticInfo
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendString:@"MediaRemote Diagnostic\n"];
  [v3 appendFormat:@"Collected at: %@\n", self->_dateCreated];
  [v3 appendString:@"================================================================================\n\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_activeClients toString:v3 withTitle:@"Active Clients" indentLevel:0 usingDebugDescription:1];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_activeTransactions toString:v3 withTitle:@"Active Transactions"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_currentAppActivity toString:v3 withTitle:@"Current App Activity"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_localNowPlayingClient toString:v3 withTitle:@"Local Now Playing Client"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_systemMediaClient toString:v3 withTitle:@"System Media Client"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_frontmostClient toString:v3 withTitle:@"Frontmost Client"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_daemonClient toString:v3 withTitle:@"Daemon Client"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_volumeController toString:v3 withTitle:@"VolumeController" usingDebugDescription:1];
  [(MRDDiagnostic *)self _appendSubheader:@"UI Server" toString:v3];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_uiActivitiesInfo toString:v3 withTitle:@"UI Activities Info"];
  [(MRDDiagnostic *)self _appendSubheader:@"Now Playing Server" toString:v3];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_originClients toString:v3 withTitle:@"Origin Clients" indentLevel:0 usingDebugDescription:1];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_activeOrigin toString:v3 withTitle:@"Active Origin"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_electedPlayer toString:v3 withTitle:@"Elected Player"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_electedPlayerReason toString:v3 withTitle:@"Elected Player Reason"];
  [v3 appendString:@"\n"];
  v4 = [NSNumber numberWithBool:self->_lockScreenWidgetActive];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v4 toString:v3 withTitle:@"LockScreen Widget Active"];

  v5 = [NSNumber numberWithBool:self->_lockScreenWidgetActive];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v5 toString:v3 withTitle:@"LockScreen Widget Visible"];

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_lockScreenPlayerPath toString:v3 withTitle:@"LockScreen Widget PlayerPath"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_lockScreenRoutingController toString:v3 withTitle:@"LockScreen Routing Controller" usingDebugDescription:1];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_originForwarders toString:v3 withTitle:@"Origin Forwarders"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendSubheader:@"Remote Control Server" toString:v3];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_enqueuedCommands toString:v3 withTitle:@"Enqueued Commands"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_remoteControlContexts toString:v3 withTitle:@"Remote Control Contexts"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_commandClientsRestriction toString:v3 withTitle:@"RestrictedCommandClient Mode Restriction"];
  [(MRDDiagnostic *)self _appendSubheader:@"Browsable Content Server" toString:v3];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_queuedInitiatePlaybackMessages toString:v3 withTitle:@"Queued Initiate Playback Messages"];
  [(MRDDiagnostic *)self _appendSubheader:@"External Device Server" toString:v3];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_connectedExternalDevices toString:v3 withTitle:@"Connected Devices" indentLevel:0 usingDebugDescription:1];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_televisionEndpoints toString:v3 withTitle:@"Television Endpoints"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_discoverySessions toString:v3 withTitle:@"External Discovery Sessions" usingDebugDescription:0];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_remoteControlService toString:v3 withTitle:@"RemoteControlService" usingDebugDescription:1];
  v6 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v6 toString:v3 withTitle:@"LocalEndpoint" usingDebugDescription:1];

  [v3 appendString:@"\n"];
  v7 = +[MRDAVOutputContextManager sharedManager];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v7 toString:v3 withTitle:@"OutputContexts" usingDebugDescription:1];

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_batchedNowPlayingState toString:v3 withTitle:@"BatchedNowPlayingState" usingDebugDescription:0];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_remoteASEState toString:v3 withTitle:@"RemoteASEState" usingDebugDescription:0];
  [(MRDDiagnostic *)self _appendSubheader:@"Routing Server" toString:v3];
  systemDiscoveryMode = self->_systemDiscoveryMode;
  v9 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v9 toString:v3 withTitle:@"System Discovery Mode (Legacy)"];

  v10 = [(_MRAVAirPlaySecuritySettingsProtobuf *)self->_airplaySecuritySettings description];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v10 toString:v3 withTitle:@"AirPlay Security Settings"];

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_localReceiverPairingIdentity toString:v3 withTitle:@"Local Receiver Pairing Identity"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_systemActiveEndpoints toString:v3 withTitle:@"System Active Endpoints"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_recentlyDismissedSystemEndpoints toString:v3 withTitle:@"Recently Dissmised Recommendations"];
  if ([(NSArray *)self->_autoConnectedEndpoints count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_autoConnectingEndpoints toString:v3 withTitle:@"Auto Connecting Endpoints"];
  }

  if ([(NSArray *)self->_autoConnectedEndpoints count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_autoConnectedEndpoints toString:v3 withTitle:@"Auto Connected Endpoints"];
  }

  if ([(NSArray *)self->_migrationEvents count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_migrationEvents toString:v3 withTitle:@"Proximity Events"];
  }

  if ([(NSArray *)self->_nearbyDevices count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_nearbyDevices toString:v3 withTitle:@"Nearby Devices"];
  }

  if ([(NSArray *)self->_mediumDevices count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_mediumDevices toString:v3 withTitle:@"Medium Devices"];
  }

  if ([(NSArray *)self->_immediateDevices count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_immediateDevices toString:v3 withTitle:@"Immediate Devices"];
  }

  if ([(NSArray *)self->_migratingDevices count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_migratingDevices toString:v3 withTitle:@"Proximal Migrating Devices"];
  }

  automaticRemoteControlConnections = self->_automaticRemoteControlConnections;
  if (automaticRemoteControlConnections)
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:automaticRemoteControlConnections toString:v3 withTitle:@"Preemptive RemoteControl Connections" usingDebugDescription:1];
  }

  [(MRDDiagnostic *)self _appendSubheader:@"Hosted Routing" toString:v3];
  hostedRouteDiscoveryMode = self->_hostedRouteDiscoveryMode;
  v13 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v13 toString:v3 withTitle:@"Hosted Discovery Mode"];

  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_hostedDiscoverySessions toString:v3 withTitle:@"Discovery Sessions" indentLevel:0 usingDebugDescription:1];
  [v3 appendString:@"\n"];
  [v3 appendString:@"Endpoints:\n"];
  v14 = [NSMutableArray arrayWithCapacity:[(NSDictionary *)self->_hostedExternalDevices count]];
  endpoints = self->_endpoints;
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_100143D3C;
  v68[3] = &unk_1004BEB30;
  v16 = v14;
  v69 = v16;
  v70 = self;
  v17 = v3;
  v71 = v17;
  [(NSArray *)endpoints enumerateObjectsUsingBlock:v68];
  v18 = [(NSDictionary *)self->_hostedExternalDevices mutableCopy];
  v55 = v16;
  [v18 removeObjectsForKeys:v16];
  if ([v18 count])
  {
    [v17 appendString:@"Remaining External Devices\n"];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_100143E88;
    v65[3] = &unk_1004BEB58;
    v19 = v17;
    v66 = v19;
    v67 = self;
    [v18 enumerateKeysAndObjectsUsingBlock:v65];
    [v19 appendString:@"\n"];
  }

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_discoverySession toString:v17 withTitle:@"Concrete Discovery Session" usingDebugDescription:1];
  v20 = +[MRUserSettings currentSettings];
  v21 = [v20 supportMultiplayerHost];

  if (v21)
  {
    v22 = +[MRDStreamCapacityManager sharedManager];
    [(MRDDiagnostic *)self _appendNullableObjectDescription:v22 toString:v17 withTitle:@"Stream Count" usingDebugDescription:1];
  }

  v54 = v18;
  [(MRDDiagnostic *)self _appendSubheader:@"Virtual Audio Server" toString:v17];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_recordingEndpointClients toString:v17 withTitle:@"Recording Endpoint Clients"];
  [v17 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_registeredVirtualAudioDevices toString:v17 withTitle:@"Registered Virtual Audio Devices"];
  [(MRDDiagnostic *)self _appendSubheader:@"Transaction Server" toString:v17];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_transactions toString:v17 withTitle:@"Transactions"];
  [v17 appendString:@"\n"];
  [v17 appendFormat:@"Used Transaction Memory: %llu bytes\n", self->_usedTransactionMemory];
  [v17 appendFormat:@"Allowed Transaction Memory: %llu bytes\n", self->_allowedTransactionMemory];
  [v17 appendFormat:@"Transaction Wait Duration: %f seconds\n", *&self->_transactionWaitDuration];
  [(MRDDiagnostic *)self _appendSubheader:@"Group Sessions" toString:v17];
  groupSessionAssertionManagerState = self->_groupSessionAssertionManagerState;
  if (groupSessionAssertionManagerState)
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:groupSessionAssertionManagerState toString:v17 withTitle:@"Assertion manager state"];
  }

  [v17 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_currentGroupSession toString:v17 withTitle:@"Current group session"];
  [v17 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_groupSessionManagerAdvertiseReason toString:v17 withTitle:@"Advertiser reason"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_groupSessionAdvertiserState toString:v17 withTitle:@"Advertiser state"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_groupSessionAdvertiserEvents toString:v17 withTitle:@"Advertiser log history" indentLevel:1];
  [v17 appendString:@"\n"];
  v24 = [NSNumber numberWithBool:self->_groupSessionDiscoveryEnabled];
  v25 = [v24 stringValue];
  [v17 appendFormat:@"GroupSession discovery enabled: %@\n", v25];

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_discoveredGroupSessions toString:v17 withTitle:@"Discovered group sessions"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_notifiedGroupSessions toString:v17 withTitle:@"Notified group sessions"];
  [v17 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_groupSessionCoordinatorState toString:v17 withTitle:@"Coordinator state"];
  [(MRDDiagnostic *)self _appendSubheader:@"Media Suggestions Data Source" toString:v17];
  v26 = objc_opt_new();
  v27 = [(MRDDiagnostic *)self mediaSuggestions:v26];
  v53 = v26;
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v26 toString:v17 withTitle:@"Suggestion Preferences"];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v61 objects:v74 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v62;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v61 + 1) + 8 * i);
        v34 = [v28 objectForKeyedSubscript:v33];
        [(MRDDiagnostic *)self _appendDescribableArray:v34 toString:v17 withTitle:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v61 objects:v74 count:16];
    }

    while (v30);
  }

  v52 = v28;

  v35 = self;
  [(MRDDiagnostic *)self _appendSubheader:@"Companion Link" toString:v17];
  v36 = +[MRCompanionLinkClient sharedCompanionLinkClient];
  v37 = [v36 companionLinkDevices];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v37;
  v38 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v58;
    do
    {
      for (j = 0; j != v39; j = j + 1)
      {
        if (*v58 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v57 + 1) + 8 * j);
        v42 = v72;
        v43 = [NSArray arrayWithObjects:&v72 count:1];
        v44 = [v42 mediaRouteIdentifier];
        v45 = [NSString stringWithFormat:@"RPDevice<routeID: %@>", v44, v52];
        [(MRDDiagnostic *)v35 _appendDescribableArray:v43 toString:v17 withTitle:v45];

        v46 = [v42 homeKitUserIdentifiers];
        [(MRDDiagnostic *)v35 _appendDescribableArray:v46 toString:v17 withTitle:@"Home Users"];

        [v17 appendString:@"\n"];
      }

      v39 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v39);
  }

  [(MRDDiagnostic *)v35 _appendSubheader:@"MediaRemote User defaults" toString:v17];
  v47 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mediaremote"];
  v48 = [v47 dictionaryRepresentation];
  [(MRDDiagnostic *)v35 _appendNullableObjectDescription:v48 toString:v17 withTitle:@"UserDefaults"];
  [v17 appendString:@"\n"];
  [(MRDDiagnostic *)v35 _appendSubheader:@"Media Control" toString:v17];
  [v17 appendString:v35->_mediaControlDiagnostic];
  dateCreated = v35->_dateCreated;
  v50 = MRDiagnosticCreate();

  return v50;
}

- (void)_appendNullableObjectDescription:(id)a3 toString:(id)a4 withTitle:(id)a5 usingDebugDescription:(BOOL)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (v12)
  {
    if (a6)
    {
      [v12 debugDescription];
    }

    else
    {
      [v12 description];
    }
    v11 = ;
  }

  else
  {
    v11 = @"(None)";
  }

  [v9 appendFormat:@"%@: %@\n", v10, v11];
}

- (void)_appendDescribableArray:(id)a3 toString:(id)a4 withTitle:(id)a5 indentLevel:(unsigned int)a6 usingDebugDescription:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  for (i = +[NSMutableString string];
  {
    [i appendString:@"    "];
  }

  [v12 appendFormat:@"%@%@:", i, v13];
  if ([v11 count])
  {
    v22 = v13;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * v19);
          if (v7)
          {
            [v20 debugDescription];
          }

          else
          {
            [v20 description];
          }
          v21 = ;
          [v12 appendFormat:@"\n%@%@", i, v21];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    v13 = v22;
  }

  else
  {
    [v12 appendFormat:@"\n%@(None)", i];
  }

  [v12 appendString:@"\n"];
}

- (id)mediaSuggestions:(id)a3
{
  v3 = a3;
  v4 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003518C;
  v16 = sub_100035A7C;
  v17 = 0;
  v5 = +[MRMediaSuggestionRequest defaultRequest];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001443B0;
  v9[3] = &unk_1004BEB80;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 performWithPreferences:v3 completion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end