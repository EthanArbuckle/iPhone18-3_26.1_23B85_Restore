@interface MRDAVHostedRoutingController
+ (id)_expectedSuffixForNewEndpointWithGroupLeader:(id)leader outputDevices:(id)devices;
- (BOOL)_systemSupportLocalEndpoint;
- (BOOL)_topologySupportsLocalEndpointWithDeviceInfo:(id)info;
- (id)_createGroupsFrom:(id)from availableOutputDevices:(id)devices;
- (id)_createNativeGroupForLocalDeviceFromNativeOutputDevice:(id)device availableOutputDevices:(id)devices;
- (id)_maybeAddNativeGroupToGroups:(id)groups availableOutputDevices:(id)devices;
- (id)_onQueue_makeExternalDeviceTransportForEndpoint:(id)endpoint designatedGroupLeader:(id)leader;
- (id)makeEndpointWithOutputDevices:(id)devices options:(unint64_t)options;
- (void)_logEndpointsChanged:(id)changed oldEndpoints:(id)endpoints;
- (void)_onQueue_reloadEndpoints;
- (void)_onQueue_reloadWithOutputDevices:(id)devices;
@end

@implementation MRDAVHostedRoutingController

- (void)_onQueue_reloadEndpoints
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(MRDHostedRoutingController *)self filterOutputDevices:self->super._distantOutputDevices remoteControllableOnly:1];
  if ([(MRDAVHostedRoutingController *)self _systemSupportLocalEndpoint])
  {
    deviceInfo = [(MRDHostedRoutingController *)self deviceInfo];
    v6 = [(MRDAVHostedRoutingController *)self _topologySupportsLocalEndpointWithDeviceInfo:deviceInfo];

    if (v6)
    {
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_10003B478;
      v75[3] = &unk_1004B8A40;
      v75[4] = self;
      v7 = [v4 msv_filter:v75];

      v4 = v7;
    }
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v72;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v72 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v71 + 1) + 8 * i);
        groupID = [v13 groupID];
        v15 = [v3 objectForKeyedSubscript:groupID];
        if (!v15)
        {
          v15 = +[NSMutableArray array];
          [v3 setObject:v15 forKeyedSubscript:groupID];
        }

        [v15 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v10);
  }

  v54 = [(MRDAVHostedRoutingController *)self _createGroupsFrom:v3 availableOutputDevices:v8];
  v16 = [MRDAVHostedRoutingController _maybeAddNativeGroupToGroups:"_maybeAddNativeGroupToGroups:availableOutputDevices:" availableOutputDevices:?];
  v52 = [v16 msv_map:&stru_1004B9EF0];
  v51 = [(MRDHostedExternalDeviceManager *)self->super._externalDeviceManager disconnectUndiscoverableEndpoints:?];
  v53 = v16;
  v17 = [(MRDAVHostedRoutingController *)self _sortNativeGroupToEnd:v16];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v68;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v68 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v67 + 1) + 8 * j);
        externalDevice = [v22 externalDevice];
        distantEndpoint = [v22 distantEndpoint];
        [externalDevice hostedExternalDeviceEndpointDidChange:distantEndpoint];
      }

      v19 = [v17 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v19);
  }

  v25 = [v54 msv_map:&stru_1004B9F10];
  deviceInfo2 = [(MRDHostedRoutingController *)self deviceInfo];
  deviceUID = [deviceInfo2 deviceUID];

  if (!deviceUID)
  {
    goto LABEL_34;
  }

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000A9C58;
  v66[3] = &unk_1004B9F38;
  v66[4] = self;
  v28 = [v53 msv_firstWhere:v66];
  concreteEndpoint = [v28 concreteEndpoint];

  if (!concreteEndpoint)
  {
LABEL_34:
    if ([(MRDAVHostedRoutingController *)self _systemSupportLocalEndpoint])
    {
      v30 = [MRAVDistantEndpoint alloc];
      descriptor = [(MRAVEndpoint *)self->super._localEndpoint descriptor];
      v32 = [v30 initWithDescriptor:descriptor];

      v33 = [v25 arrayByAddingObject:v32];

      concreteEndpoint = self->super._localEndpoint;
      v25 = v33;
    }

    else
    {
      concreteEndpoint = 0;
    }
  }

  v34 = self->super._endpointContainingLocal;
  if (concreteEndpoint == v34)
  {
    LOBYTE(v47) = 0;
  }

  else
  {
    v47 = [(MRAVEndpoint *)concreteEndpoint isEqual:v34]^ 1;
  }

  objc_storeStrong(&self->super._endpointContainingLocal, concreteEndpoint);
  [(MRDAVHostedRoutingController *)self _logEndpointsChanged:v25 oldEndpoints:self->super._distantEndpoints];
  v49 = [v54 msv_map:&stru_1004B9F58];
  objc_storeStrong(&self->super._availableEndpoints, v49);
  v50 = v25;
  objc_storeStrong(&self->super._distantEndpoints, v25);
  v35 = [v53 msv_firstWhere:&stru_1004B9F98];
  concreteEndpoint2 = [v35 concreteEndpoint];

  v37 = self->super._nativeEndpoint;
  if (concreteEndpoint2 == v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = [(MRAVEndpoint *)concreteEndpoint2 isEqual:v37]^ 1;
  }

  objc_storeStrong(&self->super._nativeEndpoint, concreteEndpoint2);
  allObjects = [(NSHashTable *)self->super._weakObservers allObjects];
  queue = self->super._observerCalloutQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011E00;
  block[3] = &unk_1004B9FC0;
  v64 = v47;
  v56 = v34;
  v57 = concreteEndpoint;
  v65 = v38;
  v58 = v37;
  v59 = concreteEndpoint2;
  v60 = allObjects;
  selfCopy = self;
  v62 = v49;
  v63 = v50;
  v48 = v34;
  v46 = concreteEndpoint;
  v40 = v37;
  v41 = concreteEndpoint2;
  v42 = allObjects;
  v43 = v49;
  v44 = v50;
  dispatch_async(queue, block);
}

- (BOOL)_systemSupportLocalEndpoint
{
  v2 = +[MRAVClusterController sharedController];
  if ([v2 needsCommandRedirection])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = +[MRUserSettings currentSettings];
    v3 = [v4 supportMultiplayerHost] ^ 1;
  }

  return v3;
}

- (id)makeEndpointWithOutputDevices:(id)devices options:(unint64_t)options
{
  devicesCopy = devices;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10003506C;
  v19 = sub_1000359EC;
  v20 = 0;
  serialQueue = self->super._serialQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A96C4;
  v11[3] = &unk_1004B9EB0;
  v11[4] = self;
  v12 = devicesCopy;
  v13 = &v15;
  optionsCopy = options;
  v8 = devicesCopy;
  dispatch_sync(serialQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)_onQueue_makeExternalDeviceTransportForEndpoint:(id)endpoint designatedGroupLeader:(id)leader
{
  endpointCopy = endpoint;
  leaderCopy = leader;
  transportType = [leaderCopy transportType];
  v8 = 0;
  if (transportType > 4)
  {
    if (transportType > 6)
    {
      if (transportType == 7)
      {
        v25 = [MRDSystemGroupSessionTransport alloc];
        groupID = [leaderCopy groupID];
        v8 = [(MRDSystemGroupSessionTransport *)v25 initWithSessionIdentifier:groupID];
LABEL_28:

        goto LABEL_31;
      }

      if (transportType != 8)
      {
        goto LABEL_31;
      }

      v12 = MRDMRRelayTransport;
    }

    else
    {
      if (transportType == 5)
      {
        goto LABEL_14;
      }

      v12 = MRDGroupSessionTransport;
    }

LABEL_26:
    v8 = [[v12 alloc] initWithOutputDevice:leaderCopy];
    goto LABEL_31;
  }

  if (transportType > 2)
  {
    if (transportType == 3)
    {
      v12 = MRIDSCompanionTransport;
    }

    else
    {
      v12 = MRDIDSTransport;
    }

    goto LABEL_26;
  }

  if (transportType != 1)
  {
    if (transportType != 2)
    {
      goto LABEL_31;
    }

    v9 = [MRRapportTransport alloc];
    groupID = [endpointCopy outputDevices];
    firstObject = [groupID firstObject];
    v8 = [v9 initWithOutputDevice:firstObject proxyOutputDevice:leaderCopy];

    goto LABEL_28;
  }

LABEL_14:
  if ([endpointCopy connectionType] == 5)
  {
    outputDevices = [endpointCopy outputDevices];
    firstObject2 = [outputDevices firstObject];
    groupID2 = [firstObject2 groupID];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    outputDevices2 = [endpointCopy outputDevices];
    v17 = [outputDevices2 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(outputDevices2);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [leaderCopy uid];
          v23 = [v21 containsUID:v22];

          if (v23)
          {
            groupID3 = [v21 groupID];

            groupID2 = groupID3;
          }
        }

        v18 = [outputDevices2 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }
  }

  else
  {
    groupID2 = 0;
  }

  v8 = [[MRAVOutputDeviceTransport alloc] initWithOutputDevice:leaderCopy groupID:groupID2 connectionType:{objc_msgSend(endpointCopy, "connectionType")}];

LABEL_31:

  return v8;
}

- (id)_createGroupsFrom:(id)from availableOutputDevices:(id)devices
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A9D80;
  v8[3] = &unk_1004BA010;
  v8[4] = self;
  devicesCopy = devices;
  v5 = devicesCopy;
  v6 = [from msv_compactMap:v8];

  return v6;
}

- (id)_maybeAddNativeGroupToGroups:(id)groups availableOutputDevices:(id)devices
{
  groupsCopy = groups;
  devicesCopy = devices;
  v8 = groupsCopy;
  v9 = [v8 msv_firstWhere:&stru_1004BA030];
  v10 = v8;
  if (!v9)
  {
    v11 = +[MRUserSettings currentSettings];
    supportMultiplayerHost = [v11 supportMultiplayerHost];

    if (supportMultiplayerHost)
    {
      discoverySession = [(MRDHostedRoutingController *)self discoverySession];
      nativeOutputDevice = [discoverySession nativeOutputDevice];
      v9 = [(MRDAVHostedRoutingController *)self _createNativeGroupForLocalDeviceFromNativeOutputDevice:nativeOutputDevice availableOutputDevices:devicesCopy];

      if (v9)
      {
        v10 = [v8 arrayByAddingObject:v9];

        goto LABEL_9;
      }

      v15 = MRLogCategoryDiscovery();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "No NativeGroup", v17, 2u);
      }
    }

    v9 = 0;
    v10 = v8;
  }

LABEL_9:

  return v10;
}

- (id)_createNativeGroupForLocalDeviceFromNativeOutputDevice:(id)device availableOutputDevices:(id)devices
{
  deviceCopy = device;
  devicesCopy = devices;
  v8 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v8 supportMultiplayerHost];

  if (!supportMultiplayerHost)
  {
    v24 = 0;
    goto LABEL_23;
  }

  if (deviceCopy)
  {
    discoverySession = [(MRDHostedRoutingController *)self discoverySession];
    localEndpointConnection = [discoverySession localEndpointConnection];

    if (localEndpointConnection)
    {
      v12 = [devicesCopy msv_firstWhere:&stru_1004BA090];
      v13 = +[MRDAVOutputContextManager sharedManager];
      v14 = [v13 outputContextForOutputDevice:deviceCopy];

      contextID = [v14 contextID];
      if (contextID)
      {
        v16 = [MRConcreteEndpoint alloc];
        if (v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = deviceCopy;
        }

        v32 = v17;
        v18 = [NSArray arrayWithObjects:&v32 count:1];
        v19 = [v16 initWithDesignatedGroupLeader:deviceCopy outputDevices:v18 preferredSuffix:contextID];

        v27 = 0;
        v20 = [(MRDHostedRoutingController *)self _onQueue_makeLocalHostedExternalDeviceForEndpoint:v19 didCreate:&v27];
        if (v27 == 1)
        {
          v21 = _MRLogForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            uniqueIdentifier = [v19 uniqueIdentifier];
            externalDevice = [v20 externalDevice];
            *buf = 138412546;
            v29 = uniqueIdentifier;
            v30 = 2112;
            v31 = externalDevice;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[HostedRoutingController] Create nativeEndpoint for endpoint=%@ externalDevice=%@", buf, 0x16u);
          }
        }

        v24 = [[MRDAVHostedRoutingControllerGroup alloc] initWithEndpoint:v19 externalDevice:v20];
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_22;
    }

    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "[HostedRoutingController] Unable to create nativeGroup: no localEndpointConnection";
      goto LABEL_18;
    }
  }

  else
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "[HostedRoutingController] Unable to create nativeGroup: no nativeOutputDevice";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
    }
  }

  v24 = 0;
LABEL_22:

LABEL_23:

  return v24;
}

+ (id)_expectedSuffixForNewEndpointWithGroupLeader:(id)leader outputDevices:(id)devices
{
  devicesCopy = devices;
  firstObject = [devicesCopy msv_firstWhere:&stru_1004BA0B0];
  if (!firstObject)
  {
    firstObject = [devicesCopy firstObject];
  }

  groupID = [firstObject groupID];
  contextID = MRComputeGroupContextID();

  if (!contextID)
  {
    v8 = +[MRDAVOutputContextManager sharedManager];
    v9 = [v8 outputContextForOutputDevice:firstObject];

    contextID = [v9 contextID];
  }

  return contextID;
}

- (void)_onQueue_reloadWithOutputDevices:(id)devices
{
  v4.receiver = self;
  v4.super_class = MRDAVHostedRoutingController;
  [(MRDHostedRoutingController *)&v4 _onQueue_reloadWithOutputDevices:devices];
  [(MRDAVHostedRoutingController *)self _onQueue_reloadEndpoints];
}

- (void)_logEndpointsChanged:(id)changed oldEndpoints:(id)endpoints
{
  if (endpoints)
  {
    endpointsCopy = endpoints;
  }

  else
  {
    endpointsCopy = &__NSArray0__struct;
  }

  v6 = [endpointsCopy changeDescriptionTo:changed keyBlock:&stru_1004BA0F0 isUpdatedBlock:&stru_1004BA130 descriptionBlock:&stru_1004BA170];
  if (v6)
  {
    v7 = MRLogCategoryDiscoveryUpdates();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      selfCopy = self;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Endpoints changed\n%{public}@", &v8, 0x16u);
    }
  }
}

- (BOOL)_topologySupportsLocalEndpointWithDeviceInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy isAirPlayActive])
  {
    v4 = [infoCopy groupContainsDiscoverableGroupLeader] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

@end