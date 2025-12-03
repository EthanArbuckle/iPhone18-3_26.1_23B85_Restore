@interface MRDPauseOutputDevicesRequest
+ (void)pauseOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
- (id)_calculateDevicesInGroup:(id)group;
- (id)_calculateOperationForEndpoint:(id)endpoint outputDeviceUIDs:(id)ds;
- (id)_calculateRelevantOutputDevicesInGroup:(id)group outputDeviceUIDs:(id)ds;
- (void)_discoverOutputDevices:(id)devices details:(id)details completion:(id)completion;
- (void)_pauseOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
- (void)_performOperation:(id)operation details:(id)details completion:(id)completion;
- (void)pauseOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
@end

@implementation MRDPauseOutputDevicesRequest

+ (void)pauseOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  detailsCopy = details;
  dsCopy = ds;
  v14 = objc_alloc_init(MRDPauseOutputDevicesRequest);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000CD3E4;
  v16[3] = &unk_1004BB610;
  v17 = completionCopy;
  selfCopy = self;
  v15 = completionCopy;
  [(MRDPauseOutputDevicesRequest *)v14 pauseOutputDeviceUIDs:dsCopy details:detailsCopy queue:queueCopy completion:v16];
}

- (void)pauseOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  queueCopy = queue;
  v14 = [MRDPauseOutputDevicesRequestReport alloc];
  requestID = [detailsCopy requestID];
  v16 = [(MRDPauseOutputDevicesRequestReport *)v14 initWithOutputDevices:dsCopy requestID:requestID];
  report = self->_report;
  self->_report = v16;

  v18 = +[NSDate now];
  v19 = _MRLogForCategory();
  requestID2 = [detailsCopy requestID];
  v21 = [requestID2 hash];

  if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "pauseOutputDeviceUIDs.perform", "", buf, 2u);
  }

  v22 = [NSMutableString alloc];
  requestID3 = [detailsCopy requestID];
  v24 = [v22 initWithFormat:@"%@<%@>", @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs", requestID3];

  if (dsCopy)
  {
    [v24 appendFormat:@" for %@", dsCopy];
  }

  reason = [detailsCopy reason];

  if (reason)
  {
    reason2 = [detailsCopy reason];
    [v24 appendFormat:@" because %@", reason2];
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
  v34 = detailsCopy;
  selfCopy = self;
  v37 = dsCopy;
  v38 = completionCopy;
  v36 = v18;
  v28 = dsCopy;
  v29 = completionCopy;
  v30 = v18;
  v31 = detailsCopy;
  v32 = objc_retainBlock(v33);
  [(MRDPauseOutputDevicesRequest *)self _pauseOutputDeviceUIDs:v28 details:v31 queue:queueCopy completion:v32];
}

- (void)_pauseOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  queueCopy = queue;
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
  selfCopy = self;
  v23 = detailsCopy;
  v24 = v14;
  v25 = dsCopy;
  v16 = dsCopy;
  v17 = v14;
  v18 = detailsCopy;
  v19 = v15;
  [(MRDPauseOutputDevicesRequest *)self _discoverOutputDevices:v16 details:v18 completion:v20];
  dispatch_group_notify(v17, queueCopy, completionCopy);
}

- (void)_discoverOutputDevices:(id)devices details:(id)details completion:(id)completion
{
  detailsCopy = details;
  completionCopy = completion;
  devicesCopy = devices;
  v10 = _MRLogForCategory();
  requestID = [detailsCopy requestID];
  v12 = [requestID hash];

  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "pauseOutputDeviceUIDs.discover", "", buf, 2u);
  }

  v13 = +[MRDMediaRemoteServer server];
  deviceInfo = [v13 deviceInfo];
  v15 = [deviceInfo resolveOutputDeviceUIDs:devicesCopy];

  v16 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:v15 features:8 details:detailsCopy];
  [v16 setWaitForCompleteClusters:1];
  [v16 setShouldWaitForUnanimousEndpoints:0];
  [v16 setReturnPartialResults:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000CE810;
  v19[3] = &unk_1004B8130;
  v20 = detailsCopy;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = detailsCopy;
  [v16 beginSearchWithTimeout:v19 endpointsCompletion:3.0];
}

- (id)_calculateDevicesInGroup:(id)group
{
  groupCopy = group;
  v4 = objc_alloc_init(NSMutableSet);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  resolvedOutputDevices = [groupCopy resolvedOutputDevices];
  v6 = [resolvedOutputDevices countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(resolvedOutputDevices);
        }

        [v4 addObject:*(*(&v23 + 1) + 8 * i)];
      }

      v7 = [resolvedOutputDevices countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  if ([groupCopy isLocalEndpoint])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    resolvedOutputDevices2 = [groupCopy resolvedOutputDevices];
    v11 = [resolvedOutputDevices2 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
            objc_enumerationMutation(resolvedOutputDevices2);
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

        v12 = [resolvedOutputDevices2 countByEnumeratingWithState:&v19 objects:v27 count:16];
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

- (id)_calculateRelevantOutputDevicesInGroup:(id)group outputDeviceUIDs:(id)ds
{
  groupCopy = group;
  dsCopy = ds;
  v7 = objc_alloc_init(NSMutableSet);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = groupCopy;
  obj = [groupCopy outputDevices];
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
        v13 = dsCopy;
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

- (id)_calculateOperationForEndpoint:(id)endpoint outputDeviceUIDs:(id)ds
{
  endpointCopy = endpoint;
  dsCopy = ds;
  v8 = objc_alloc_init(MRDPauseOutputDevicesRequestOperation);
  [(MRDPauseOutputDevicesRequestOperation *)v8 setType:0];
  v9 = [(MRDPauseOutputDevicesRequest *)self _calculateDevicesInGroup:endpointCopy];
  [(MRDPauseOutputDevicesRequestOperation *)v8 setDevicesInGroup:v9];

  v10 = [(MRDPauseOutputDevicesRequest *)self _calculateRelevantOutputDevicesInGroup:endpointCopy outputDeviceUIDs:dsCopy];

  [(MRDPauseOutputDevicesRequestOperation *)v8 setRelevantOutputDevices:v10];
  relevantOutputDevices = [(MRDPauseOutputDevicesRequestOperation *)v8 relevantOutputDevices];
  v12 = [relevantOutputDevices count];

  if (!v12)
  {
    v18 = 0;
    v17 = @"no relevant outputDevices";
    goto LABEL_17;
  }

  devicesInGroup = [(MRDPauseOutputDevicesRequestOperation *)v8 devicesInGroup];
  v14 = [devicesInGroup count];
  relevantOutputDevices2 = [(MRDPauseOutputDevicesRequestOperation *)v8 relevantOutputDevices];
  v16 = [relevantOutputDevices2 count];

  if (v14 == v16)
  {
    v17 = @"all devices in group need to pause";
    v18 = 1;
    goto LABEL_17;
  }

  if ([endpointCopy groupContainsDiscoverableGroupLeader])
  {
    v17 = @"discoverable group leader";
LABEL_7:
    v18 = 2;
    goto LABEL_17;
  }

  designatedGroupLeader = [endpointCopy designatedGroupLeader];
  if ([designatedGroupLeader isRemoteControllable])
  {
  }

  else
  {
    designatedGroupLeader2 = [endpointCopy designatedGroupLeader];
    canRelayCommunicationChannel = [designatedGroupLeader2 canRelayCommunicationChannel];

    if (canRelayCommunicationChannel)
    {
      v17 = @"relayable group leader";
      goto LABEL_7;
    }
  }

  designatedGroupLeader3 = [endpointCopy designatedGroupLeader];
  if ([designatedGroupLeader3 isRemoteControllable])
  {
    resolvedOutputDevices = [endpointCopy resolvedOutputDevices];
    v24 = [resolvedOutputDevices msv_filter:&stru_1004BB680];
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

- (void)_performOperation:(id)operation details:(id)details completion:(id)completion
{
  operationCopy = operation;
  detailsCopy = details;
  completionCopy = completion;
  v10 = [NSString alloc];
  endpoint = [operationCopy endpoint];
  debugName = [endpoint debugName];
  pauseOperation = [operationCopy pauseOperation];
  type = [pauseOperation type];
  if (type > 4)
  {
    v15 = @"?";
  }

  else
  {
    v15 = off_1004BB888[type];
  }

  pauseOperation2 = [operationCopy pauseOperation];
  relevantOutputDevices = [pauseOperation2 relevantOutputDevices];
  v18 = [v10 initWithFormat:@"Endpoint %@ will %@ %@", debugName, v15, relevantOutputDevices];

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    requestID = [detailsCopy requestID];
    *buf = 138543874;
    v84 = @"MRDPauseOutputDevicesRequest.pauseOutputDeviceUIDs";
    v85 = 2114;
    v86 = requestID;
    v87 = 2112;
    v88 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  pauseOperation3 = [operationCopy pauseOperation];
  type2 = [pauseOperation3 type];

  if (type2 > 1)
  {
    if (type2 != 2)
    {
      if (type2 == 3)
      {
        [operationCopy startEvent:@"removeFromParentGroup"];
        v57 = +[MRDMediaRemoteServer server];
        routingServer = [v57 routingServer];
        pauseOperation4 = [operationCopy pauseOperation];
        relevantOutputDeviceUIDs = [pauseOperation4 relevantOutputDeviceUIDs];
        allObjects = [relevantOutputDeviceUIDs allObjects];
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_1000CF890;
        v72[3] = &unk_1004B9BE0;
        v73 = operationCopy;
        v74 = completionCopy;
        [routingServer removeOutputDeviceUIDsFromParentGroup:allObjects details:detailsCopy completion:v72];

        v62 = v73;
LABEL_23:

        goto LABEL_24;
      }

      if (type2 == 4)
      {
        pauseOperation5 = [operationCopy pauseOperation];
        devicesInGroup = [pauseOperation5 devicesInGroup];
        v25 = [devicesInGroup msv_filter:&stru_1004BB6A0];

        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_1000CF900;
        v70[3] = &unk_1004B8A40;
        v26 = operationCopy;
        v71 = v26;
        v27 = [v25 msv_firstWhere:v70];
        firstObject = v27;
        if (!v27)
        {
          firstObject = [v25 firstObject];
        }

        v65 = v25;
        [v26 startEvent:@"createRelayEndpointForOutputDeviceUIDs"];
        v29 = +[MRDMediaRemoteServer server];
        routingServer2 = [v29 routingServer];
        v64 = firstObject;
        v31 = [firstObject uid];
        v32 = [routingServer2 createTransientEndpointForOutputDeviceUID:v31 details:detailsCopy];

        [v26 endEvent:@"createRelayEndpointForOutputDeviceUIDs" withError:0];
        if (v32)
        {
          v63 = v27 == 0;
          v33 = [MRGroupTopologyModificationRequest alloc];
          pauseOperation6 = [v26 pauseOperation];
          relevantOutputDeviceUIDs2 = [pauseOperation6 relevantOutputDeviceUIDs];
          allObjects2 = [relevantOutputDeviceUIDs2 allObjects];
          v37 = [v33 initWithRequestDetails:detailsCopy type:2 outputDeviceUIDs:allObjects2];

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
          v68 = completionCopy;
          [v32 modifyTopologyWithRequest:v37 withReplyQueue:v39 completion:v66];
        }

        else
        {
          completionCopy[2](completionCopy);
        }

        v62 = v65;
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    v49 = MRGroupTopologyModificationRequestTypeDescription();
    [operationCopy startEvent:v49];

    v50 = [MRGroupTopologyModificationRequest alloc];
    pauseOperation7 = [operationCopy pauseOperation];
    relevantOutputDevices2 = [pauseOperation7 relevantOutputDevices];
    allObjects3 = [relevantOutputDevices2 allObjects];
    v43 = [v50 initWithRequestDetails:detailsCopy type:2 outputDevices:allObjects3];

    [v43 setSuppressErrorDialog:1];
    endpoint2 = [operationCopy endpoint];
    v55 = qos_class_self();
    v56 = dispatch_get_global_queue(v55, 0);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000CF818;
    v75[3] = &unk_1004B9BE0;
    v76 = operationCopy;
    v77 = completionCopy;
    [endpoint2 modifyTopologyWithRequest:v43 withReplyQueue:v56 completion:v75];

LABEL_18:
    goto LABEL_24;
  }

  if (!type2)
  {
    completionCopy[2](completionCopy);
    goto LABEL_24;
  }

  if (type2 == 1)
  {
    [operationCopy startEvent:@"pause"];
    v40 = [MRNowPlayingRequest alloc];
    endpoint3 = [operationCopy endpoint];
    origin = [endpoint3 origin];
    v43 = [v40 initWithOrigin:origin];

    v81[0] = kMRMediaRemoteOptionContextID;
    requestID2 = [detailsCopy requestID];
    v82[0] = requestID2;
    v81[1] = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
    reason = [detailsCopy reason];
    v82[1] = reason;
    v46 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:2];

    v47 = qos_class_self();
    v48 = dispatch_get_global_queue(v47, 0);
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_1000CF7A8;
    v78[3] = &unk_1004B78B0;
    v79 = operationCopy;
    v80 = completionCopy;
    [v43 sendCommand:1 options:v46 queue:v48 completion:v78];

    goto LABEL_18;
  }

LABEL_24:
}

@end