@interface MRDAVHostedRoutingController
+ (id)_expectedSuffixForNewEndpointWithGroupLeader:(id)a3 outputDevices:(id)a4;
- (BOOL)_systemSupportLocalEndpoint;
- (BOOL)_topologySupportsLocalEndpointWithDeviceInfo:(id)a3;
- (id)_createGroupsFrom:(id)a3 availableOutputDevices:(id)a4;
- (id)_createNativeGroupForLocalDeviceFromNativeOutputDevice:(id)a3 availableOutputDevices:(id)a4;
- (id)_maybeAddNativeGroupToGroups:(id)a3 availableOutputDevices:(id)a4;
- (id)_onQueue_makeExternalDeviceTransportForEndpoint:(id)a3 designatedGroupLeader:(id)a4;
- (id)makeEndpointWithOutputDevices:(id)a3 options:(unint64_t)a4;
- (void)_logEndpointsChanged:(id)a3 oldEndpoints:(id)a4;
- (void)_onQueue_reloadEndpoints;
- (void)_onQueue_reloadWithOutputDevices:(id)a3;
@end

@implementation MRDAVHostedRoutingController

- (void)_onQueue_reloadEndpoints
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(MRDHostedRoutingController *)self filterOutputDevices:self->super._distantOutputDevices remoteControllableOnly:1];
  if ([(MRDAVHostedRoutingController *)self _systemSupportLocalEndpoint])
  {
    v5 = [(MRDHostedRoutingController *)self deviceInfo];
    v6 = [(MRDAVHostedRoutingController *)self _topologySupportsLocalEndpointWithDeviceInfo:v5];

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
        v14 = [v13 groupID];
        v15 = [v3 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = +[NSMutableArray array];
          [v3 setObject:v15 forKeyedSubscript:v14];
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
        v23 = [v22 externalDevice];
        v24 = [v22 distantEndpoint];
        [v23 hostedExternalDeviceEndpointDidChange:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v19);
  }

  v25 = [v54 msv_map:&stru_1004B9F10];
  v26 = [(MRDHostedRoutingController *)self deviceInfo];
  v27 = [v26 deviceUID];

  if (!v27)
  {
    goto LABEL_34;
  }

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1000A9C58;
  v66[3] = &unk_1004B9F38;
  v66[4] = self;
  v28 = [v53 msv_firstWhere:v66];
  v29 = [v28 concreteEndpoint];

  if (!v29)
  {
LABEL_34:
    if ([(MRDAVHostedRoutingController *)self _systemSupportLocalEndpoint])
    {
      v30 = [MRAVDistantEndpoint alloc];
      v31 = [(MRAVEndpoint *)self->super._localEndpoint descriptor];
      v32 = [v30 initWithDescriptor:v31];

      v33 = [v25 arrayByAddingObject:v32];

      v29 = self->super._localEndpoint;
      v25 = v33;
    }

    else
    {
      v29 = 0;
    }
  }

  v34 = self->super._endpointContainingLocal;
  if (v29 == v34)
  {
    LOBYTE(v47) = 0;
  }

  else
  {
    v47 = [(MRAVEndpoint *)v29 isEqual:v34]^ 1;
  }

  objc_storeStrong(&self->super._endpointContainingLocal, v29);
  [(MRDAVHostedRoutingController *)self _logEndpointsChanged:v25 oldEndpoints:self->super._distantEndpoints];
  v49 = [v54 msv_map:&stru_1004B9F58];
  objc_storeStrong(&self->super._availableEndpoints, v49);
  v50 = v25;
  objc_storeStrong(&self->super._distantEndpoints, v25);
  v35 = [v53 msv_firstWhere:&stru_1004B9F98];
  v36 = [v35 concreteEndpoint];

  v37 = self->super._nativeEndpoint;
  if (v36 == v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = [(MRAVEndpoint *)v36 isEqual:v37]^ 1;
  }

  objc_storeStrong(&self->super._nativeEndpoint, v36);
  v39 = [(NSHashTable *)self->super._weakObservers allObjects];
  queue = self->super._observerCalloutQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011E00;
  block[3] = &unk_1004B9FC0;
  v64 = v47;
  v56 = v34;
  v57 = v29;
  v65 = v38;
  v58 = v37;
  v59 = v36;
  v60 = v39;
  v61 = self;
  v62 = v49;
  v63 = v50;
  v48 = v34;
  v46 = v29;
  v40 = v37;
  v41 = v36;
  v42 = v39;
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

- (id)makeEndpointWithOutputDevices:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
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
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(serialQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)_onQueue_makeExternalDeviceTransportForEndpoint:(id)a3 designatedGroupLeader:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 transportType];
  v8 = 0;
  if (v7 > 4)
  {
    if (v7 > 6)
    {
      if (v7 == 7)
      {
        v25 = [MRDSystemGroupSessionTransport alloc];
        v10 = [v6 groupID];
        v8 = [(MRDSystemGroupSessionTransport *)v25 initWithSessionIdentifier:v10];
LABEL_28:

        goto LABEL_31;
      }

      if (v7 != 8)
      {
        goto LABEL_31;
      }

      v12 = MRDMRRelayTransport;
    }

    else
    {
      if (v7 == 5)
      {
        goto LABEL_14;
      }

      v12 = MRDGroupSessionTransport;
    }

LABEL_26:
    v8 = [[v12 alloc] initWithOutputDevice:v6];
    goto LABEL_31;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v12 = MRIDSCompanionTransport;
    }

    else
    {
      v12 = MRDIDSTransport;
    }

    goto LABEL_26;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      goto LABEL_31;
    }

    v9 = [MRRapportTransport alloc];
    v10 = [v5 outputDevices];
    v11 = [v10 firstObject];
    v8 = [v9 initWithOutputDevice:v11 proxyOutputDevice:v6];

    goto LABEL_28;
  }

LABEL_14:
  if ([v5 connectionType] == 5)
  {
    v13 = [v5 outputDevices];
    v14 = [v13 firstObject];
    v15 = [v14 groupID];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [v5 outputDevices];
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [v6 uid];
          v23 = [v21 containsUID:v22];

          if (v23)
          {
            v24 = [v21 groupID];

            v15 = v24;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v15 = 0;
  }

  v8 = [[MRAVOutputDeviceTransport alloc] initWithOutputDevice:v6 groupID:v15 connectionType:{objc_msgSend(v5, "connectionType")}];

LABEL_31:

  return v8;
}

- (id)_createGroupsFrom:(id)a3 availableOutputDevices:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A9D80;
  v8[3] = &unk_1004BA010;
  v8[4] = self;
  v9 = a4;
  v5 = v9;
  v6 = [a3 msv_compactMap:v8];

  return v6;
}

- (id)_maybeAddNativeGroupToGroups:(id)a3 availableOutputDevices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 msv_firstWhere:&stru_1004BA030];
  v10 = v8;
  if (!v9)
  {
    v11 = +[MRUserSettings currentSettings];
    v12 = [v11 supportMultiplayerHost];

    if (v12)
    {
      v13 = [(MRDHostedRoutingController *)self discoverySession];
      v14 = [v13 nativeOutputDevice];
      v9 = [(MRDAVHostedRoutingController *)self _createNativeGroupForLocalDeviceFromNativeOutputDevice:v14 availableOutputDevices:v7];

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

- (id)_createNativeGroupForLocalDeviceFromNativeOutputDevice:(id)a3 availableOutputDevices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MRUserSettings currentSettings];
  v9 = [v8 supportMultiplayerHost];

  if (!v9)
  {
    v24 = 0;
    goto LABEL_23;
  }

  if (v6)
  {
    v10 = [(MRDHostedRoutingController *)self discoverySession];
    v11 = [v10 localEndpointConnection];

    if (v11)
    {
      v12 = [v7 msv_firstWhere:&stru_1004BA090];
      v13 = +[MRDAVOutputContextManager sharedManager];
      v14 = [v13 outputContextForOutputDevice:v6];

      v15 = [v14 contextID];
      if (v15)
      {
        v16 = [MRConcreteEndpoint alloc];
        if (v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = v6;
        }

        v32 = v17;
        v18 = [NSArray arrayWithObjects:&v32 count:1];
        v19 = [v16 initWithDesignatedGroupLeader:v6 outputDevices:v18 preferredSuffix:v15];

        v27 = 0;
        v20 = [(MRDHostedRoutingController *)self _onQueue_makeLocalHostedExternalDeviceForEndpoint:v19 didCreate:&v27];
        if (v27 == 1)
        {
          v21 = _MRLogForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v19 uniqueIdentifier];
            v23 = [v20 externalDevice];
            *buf = 138412546;
            v29 = v22;
            v30 = 2112;
            v31 = v23;
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

+ (id)_expectedSuffixForNewEndpointWithGroupLeader:(id)a3 outputDevices:(id)a4
{
  v4 = a4;
  v5 = [v4 msv_firstWhere:&stru_1004BA0B0];
  if (!v5)
  {
    v5 = [v4 firstObject];
  }

  v6 = [v5 groupID];
  v7 = MRComputeGroupContextID();

  if (!v7)
  {
    v8 = +[MRDAVOutputContextManager sharedManager];
    v9 = [v8 outputContextForOutputDevice:v5];

    v7 = [v9 contextID];
  }

  return v7;
}

- (void)_onQueue_reloadWithOutputDevices:(id)a3
{
  v4.receiver = self;
  v4.super_class = MRDAVHostedRoutingController;
  [(MRDHostedRoutingController *)&v4 _onQueue_reloadWithOutputDevices:a3];
  [(MRDAVHostedRoutingController *)self _onQueue_reloadEndpoints];
}

- (void)_logEndpointsChanged:(id)a3 oldEndpoints:(id)a4
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = [v5 changeDescriptionTo:a3 keyBlock:&stru_1004BA0F0 isUpdatedBlock:&stru_1004BA130 descriptionBlock:&stru_1004BA170];
  if (v6)
  {
    v7 = MRLogCategoryDiscoveryUpdates();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = self;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Endpoints changed\n%{public}@", &v8, 0x16u);
    }
  }
}

- (BOOL)_topologySupportsLocalEndpointWithDeviceInfo:(id)a3
{
  v3 = a3;
  if ([v3 isAirPlayActive])
  {
    v4 = [v3 groupContainsDiscoverableGroupLeader] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

@end