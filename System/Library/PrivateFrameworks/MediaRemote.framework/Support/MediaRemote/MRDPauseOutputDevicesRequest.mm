@interface MRDPauseOutputDevicesRequest
+ (void)pauseOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6;
- (id)_calculateDevicesInGroup:(id)a3;
- (id)_calculateOperationForEndpoint:(id)a3 outputDeviceUIDs:(id)a4;
- (id)_calculateRelevantOutputDevicesInGroup:(id)a3 outputDeviceUIDs:(id)a4;
- (void)_discoverOutputDevices:(id)a3 details:(id)a4 completion:(id)a5;
- (void)_pauseOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)_performOperation:(id)a3 details:(id)a4 completion:(id)a5;
- (void)pauseOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6;
@end

@implementation MRDPauseOutputDevicesRequest

+ (void)pauseOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(MRDPauseOutputDevicesRequest);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CD3E4;
  v16[3] = &unk_1004BB610;
  v17 = v10;
  v18 = a1;
  v15 = v10;
  [(MRDPauseOutputDevicesRequest *)v14 pauseOutputDeviceUIDs:v13 details:v12 queue:v11 completion:v16];
}

- (void)pauseOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [MRDPauseOutputDevicesRequestReport alloc];
  v15 = [v11 requestID];
  v16 = [(MRDPauseOutputDevicesRequestReport *)v14 initWithOutputDevices:v10 requestID:v15];
  report = self->_report;
  self->_report = v16;

  v18 = +[NSDate now];
  v19 = _MRLogForCategory();
  v20 = [v11 requestID];
  v21 = [v20 hash];

  if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "pauseOutputDeviceUIDs.perform", "", buf, 2u);
  }

  v22 = [NSMutableString alloc];
  v23 = [v11 requestID];
  v24 = [v22 initWithFormat:@"%@<%@>", @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs", v23];

  if (v10)
  {
    [v24 appendFormat:@" for %@", v10];
  }

  v25 = [v11 reason];

  if (v25)
  {
    v26 = [v11 reason];
    [v24 appendFormat:@" because %@", v26];
  }

  v27 = _MRLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = v24;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000CD730;
  v33[3] = &unk_1004BADB0;
  v34 = v11;
  v35 = self;
  v37 = v10;
  v38 = v12;
  v36 = v18;
  v28 = v10;
  v29 = v12;
  v30 = v18;
  v31 = v11;
  v32 = objc_retainBlock(v33);
  [(MRDPauseOutputDevicesRequest *)self _pauseOutputDeviceUIDs:v28 details:v31 queue:v13 completion:v32];
}

- (void)_pauseOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v15 = [[MRDPauseOutputDevicesRequestEndpointOperation alloc] initWithEndpoint:0];
  [(MRDPauseOutputDevicesRequestReport *)self->_report addOperation:v15];
  [(MRDPauseOutputDevicesRequestEndpointOperation *)v15 startEvent:@"discover"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000CDEFC;
  v20[3] = &unk_1004BB660;
  v21 = v15;
  v22 = self;
  v23 = v11;
  v24 = v14;
  v25 = v10;
  v16 = v10;
  v17 = v14;
  v18 = v11;
  v19 = v15;
  [(MRDPauseOutputDevicesRequest *)self _discoverOutputDevices:v16 details:v18 completion:v20];
  dispatch_group_notify(v17, v13, v12);
}

- (void)_discoverOutputDevices:(id)a3 details:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = _MRLogForCategory();
  v11 = [v7 requestID];
  v12 = [v11 hash];

  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "pauseOutputDeviceUIDs.discover", "", buf, 2u);
  }

  v13 = +[MRDMediaRemoteServer server];
  v14 = [v13 deviceInfo];
  v15 = [v14 resolveOutputDeviceUIDs:v9];

  v16 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:v15 features:8 details:v7];
  [v16 setWaitForCompleteClusters:1];
  [v16 setShouldWaitForUnanimousEndpoints:0];
  [v16 setReturnPartialResults:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000CE810;
  v19[3] = &unk_1004B8130;
  v20 = v7;
  v21 = v8;
  v17 = v8;
  v18 = v7;
  [v16 beginSearchWithTimeout:v19 endpointsCompletion:3.0];
}

- (id)_calculateDevicesInGroup:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableSet);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v3 resolvedOutputDevices];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:*(*(&v23 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  if ([v3 isLocalEndpoint])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v3 resolvedOutputDevices];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * j);
          if ([v15 isLocalDevice])
          {
            v16 = [v15 uid];
            v17 = [v16 length];

            if (v17)
            {
              [v4 addObject:v15];
              goto LABEL_20;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  return v4;
}

- (id)_calculateRelevantOutputDevicesInGroup:(id)a3 outputDeviceUIDs:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v5;
  obj = [v5 outputDevices];
  v8 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v13 = v6;
        v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v22;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ([v12 containsUID:*(*(&v21 + 1) + 8 * j)])
              {
                [v7 addObject:v12];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v15);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)_calculateOperationForEndpoint:(id)a3 outputDeviceUIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MRDPauseOutputDevicesRequestOperation);
  [(MRDPauseOutputDevicesRequestOperation *)v8 setType:0];
  v9 = [(MRDPauseOutputDevicesRequest *)self _calculateDevicesInGroup:v6];
  [(MRDPauseOutputDevicesRequestOperation *)v8 setDevicesInGroup:v9];

  v10 = [(MRDPauseOutputDevicesRequest *)self _calculateRelevantOutputDevicesInGroup:v6 outputDeviceUIDs:v7];

  [(MRDPauseOutputDevicesRequestOperation *)v8 setRelevantOutputDevices:v10];
  v11 = [(MRDPauseOutputDevicesRequestOperation *)v8 relevantOutputDevices];
  v12 = [v11 count];

  if (!v12)
  {
    v18 = 0;
    v17 = @"no relevant outputDevices";
    goto LABEL_17;
  }

  v13 = [(MRDPauseOutputDevicesRequestOperation *)v8 devicesInGroup];
  v14 = [v13 count];
  v15 = [(MRDPauseOutputDevicesRequestOperation *)v8 relevantOutputDevices];
  v16 = [v15 count];

  if (v14 == v16)
  {
    v17 = @"all devices in group need to pause";
    v18 = 1;
    goto LABEL_17;
  }

  if ([v6 groupContainsDiscoverableGroupLeader])
  {
    v17 = @"discoverable group leader";
LABEL_7:
    v18 = 2;
    goto LABEL_17;
  }

  v19 = [v6 designatedGroupLeader];
  if ([v19 isRemoteControllable])
  {
  }

  else
  {
    v20 = [v6 designatedGroupLeader];
    v21 = [v20 canRelayCommunicationChannel];

    if (v21)
    {
      v17 = @"relayable group leader";
      goto LABEL_7;
    }
  }

  v22 = [v6 designatedGroupLeader];
  if ([v22 isRemoteControllable])
  {
    v23 = [v6 resolvedOutputDevices];
    v24 = [v23 msv_filter:&stru_1004BB680];
    v25 = [v24 count];

    if (v25)
    {
      v17 = @"undiscoverable remote controllable group leader but relay available";
      v18 = 4;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v17 = @"undiscoverable group leader";
  v18 = 3;
LABEL_17:
  [(MRDPauseOutputDevicesRequestOperation *)v8 setReason:v17];
  [(MRDPauseOutputDevicesRequestOperation *)v8 setType:v18];

  return v8;
}

- (void)_performOperation:(id)a3 details:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSString alloc];
  v11 = [v7 endpoint];
  v12 = [v11 debugName];
  v13 = [v7 pauseOperation];
  v14 = [v13 type];
  if (v14 > 4)
  {
    v15 = @"?";
  }

  else
  {
    v15 = off_1004BB888[v14];
  }

  v16 = [v7 pauseOperation];
  v17 = [v16 relevantOutputDevices];
  v18 = [v10 initWithFormat:@"Endpoint %@ will %@ %@", v12, v15, v17];

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v8 requestID];
    *buf = 138543874;
    v84 = @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs";
    v85 = 2114;
    v86 = v20;
    v87 = 2112;
    v88 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v21 = [v7 pauseOperation];
  v22 = [v21 type];

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      if (v22 == 3)
      {
        [v7 startEvent:@"removeFromParentGroup"];
        v57 = +[MRDMediaRemoteServer server];
        v58 = [v57 routingServer];
        v59 = [v7 pauseOperation];
        v60 = [v59 relevantOutputDeviceUIDs];
        v61 = [v60 allObjects];
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_1000CF890;
        v72[3] = &unk_1004B9BE0;
        v73 = v7;
        v74 = v9;
        [v58 removeOutputDeviceUIDsFromParentGroup:v61 details:v8 completion:v72];

        v62 = v73;
LABEL_23:

        goto LABEL_24;
      }

      if (v22 == 4)
      {
        v23 = [v7 pauseOperation];
        v24 = [v23 devicesInGroup];
        v25 = [v24 msv_filter:&stru_1004BB6A0];

        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_1000CF900;
        v70[3] = &unk_1004B8A40;
        v26 = v7;
        v71 = v26;
        v27 = [v25 msv_firstWhere:v70];
        v28 = v27;
        if (!v27)
        {
          v28 = [v25 firstObject];
        }

        v65 = v25;
        [v26 startEvent:@"createRelayEndpointForOutputDeviceUIDs"];
        v29 = +[MRDMediaRemoteServer server];
        v30 = [v29 routingServer];
        v64 = v28;
        v31 = [v28 uid];
        v32 = [v30 createTransientEndpointForOutputDeviceUID:v31 details:v8];

        [v26 endEvent:@"createRelayEndpointForOutputDeviceUIDs" withError:0];
        if (v32)
        {
          v63 = v27 == 0;
          v33 = [MRGroupTopologyModificationRequest alloc];
          v34 = [v26 pauseOperation];
          v35 = [v34 relevantOutputDeviceUIDs];
          v36 = [v35 allObjects];
          v37 = [v33 initWithRequestDetails:v8 type:2 outputDeviceUIDs:v36];

          [v37 setSuppressErrorDialog:1];
          [v26 startEvent:@"modifyRelayEndpoint"];
          v38 = qos_class_self();
          v39 = dispatch_get_global_queue(v38, 0);
          v66[0] = _NSConcreteStackBlock;
          v66[1] = 3221225472;
          v66[2] = sub_1000CF980;
          v66[3] = &unk_1004BB6C8;
          v69 = v63;
          v67 = v26;
          v68 = v9;
          [v32 modifyTopologyWithRequest:v37 withReplyQueue:v39 completion:v66];
        }

        else
        {
          v9[2](v9);
        }

        v62 = v65;
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    v49 = MRGroupTopologyModificationRequestTypeDescription();
    [v7 startEvent:v49];

    v50 = [MRGroupTopologyModificationRequest alloc];
    v51 = [v7 pauseOperation];
    v52 = [v51 relevantOutputDevices];
    v53 = [v52 allObjects];
    v43 = [v50 initWithRequestDetails:v8 type:2 outputDevices:v53];

    [v43 setSuppressErrorDialog:1];
    v54 = [v7 endpoint];
    v55 = qos_class_self();
    v56 = dispatch_get_global_queue(v55, 0);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000CF818;
    v75[3] = &unk_1004B9BE0;
    v76 = v7;
    v77 = v9;
    [v54 modifyTopologyWithRequest:v43 withReplyQueue:v56 completion:v75];

LABEL_18:
    goto LABEL_24;
  }

  if (!v22)
  {
    v9[2](v9);
    goto LABEL_24;
  }

  if (v22 == 1)
  {
    [v7 startEvent:@"pause"];
    v40 = [MRNowPlayingRequest alloc];
    v41 = [v7 endpoint];
    v42 = [v41 origin];
    v43 = [v40 initWithOrigin:v42];

    v81[0] = kMRMediaRemoteOptionContextID;
    v44 = [v8 requestID];
    v82[0] = v44;
    v81[1] = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
    v45 = [v8 reason];
    v82[1] = v45;
    v46 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:2];

    v47 = qos_class_self();
    v48 = dispatch_get_global_queue(v47, 0);
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_1000CF7A8;
    v78[3] = &unk_1004B78B0;
    v79 = v7;
    v80 = v9;
    [v43 sendCommand:1 options:v46 queue:v48 completion:v78];

    goto LABEL_18;
  }

LABEL_24:
}

@end