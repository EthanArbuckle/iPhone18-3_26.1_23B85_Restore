@interface MRDCreateEndpointRequest
+ (void)createEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details completion:(id)completion;
+ (void)createEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details groupUIDCompletion:(id)completion;
- (id)_createEndpointForOutputDeviceUIDs:(id)ds;
- (int64_t)_calculateOperationTypeForEndpoint:(id)endpoint;
- (void)createEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details analytics:(id)analytics completion:(id)completion;
@end

@implementation MRDCreateEndpointRequest

+ (void)createEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  v12 = [MRDCreateEndpointAnalytics alloc];
  requestID = [detailsCopy requestID];
  v14 = [(MRDCreateEndpointAnalytics *)v12 initWithRequestID:requestID];

  v15 = +[NSDate now];
  v16 = [NSMutableString alloc];
  requestID2 = [detailsCopy requestID];
  v18 = [v16 initWithFormat:@"%@<%@>", @"CreateEndpointWithOutputDeviceUIDs", requestID2];

  if (dsCopy)
  {
    [v18 appendFormat:@" for %@", dsCopy];
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10018C7D8;
  v35[3] = &unk_1004BAE50;
  v36 = @"CreateEndpointWithOutputDeviceUIDs";
  v20 = detailsCopy;
  v37 = v20;
  v38 = v15;
  v21 = v14;
  v39 = v21;
  v40 = completionCopy;
  v22 = completionCopy;
  v23 = v15;
  v24 = objc_retainBlock(v35);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10018C9E8;
  v29[3] = &unk_1004BAE78;
  v30 = objc_alloc_init(MRDCreateEndpointRequest);
  v31 = v21;
  timeoutCopy = timeout;
  v32 = v20;
  v33 = v24;
  v25 = v24;
  v26 = v20;
  v27 = v21;
  v28 = v30;
  [(MRDCreateEndpointRequest *)v28 createEndpointWithOutputDeviceUIDs:dsCopy timeout:v26 details:v27 analytics:v29 completion:timeout];
}

+ (void)createEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details groupUIDCompletion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  v12 = [MRDCreateEndpointAnalytics alloc];
  requestID = [detailsCopy requestID];
  v14 = [(MRDCreateEndpointAnalytics *)v12 initWithRequestID:requestID];

  v15 = +[NSDate now];
  v16 = [NSMutableString alloc];
  requestID2 = [detailsCopy requestID];
  v18 = [v16 initWithFormat:@"%@<%@>", @"CreateEndpointWithOutputDeviceUIDs", requestID2];

  if (dsCopy)
  {
    [v18 appendFormat:@" for %@", dsCopy];
  }

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10018CEF0;
  v30[3] = &unk_1004BAD38;
  v31 = @"CreateEndpointWithOutputDeviceUIDs";
  v32 = detailsCopy;
  v33 = v15;
  v34 = v14;
  v35 = completionCopy;
  v20 = completionCopy;
  v21 = v14;
  v22 = v15;
  v23 = detailsCopy;
  v24 = objc_retainBlock(v30);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10018D100;
  v27[3] = &unk_1004BAD10;
  v28 = objc_alloc_init(MRDCreateEndpointRequest);
  v29 = v24;
  v25 = v24;
  v26 = v28;
  [(MRDCreateEndpointRequest *)v26 createEndpointWithOutputDeviceUIDs:dsCopy timeout:v23 details:v21 analytics:v27 completion:timeout];
}

- (void)createEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details analytics:(id)analytics completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  analyticsCopy = analytics;
  completionCopy = completion;
  v16 = +[NSDate now];
  v17 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"CreateEndpointWithOutputDeviceUIDs.perform", requestID];

  if (dsCopy)
  {
    [v19 appendFormat:@" for %@", dsCopy];
  }

  v20 = _MRLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10018D948;
  v76[3] = &unk_1004BAEA0;
  v77 = @"CreateEndpointWithOutputDeviceUIDs.perform";
  v21 = detailsCopy;
  v78 = v21;
  v52 = v16;
  v79 = v52;
  v50 = completionCopy;
  v80 = v50;
  v22 = objc_retainBlock(v76);
  v23 = [MRBlockGuard alloc];
  requestReasonID = [v21 requestReasonID];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10018DB50;
  v74[3] = &unk_1004B6FE8;
  v25 = v22;
  v75 = v25;
  v26 = [v23 initWithTimeout:requestReasonID reason:v74 handler:timeout];

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10018DB68;
  v71[3] = &unk_1004BAD10;
  v53 = v26;
  v72 = v53;
  v51 = v25;
  v73 = v51;
  v27 = objc_retainBlock(v71);
  v28 = [(MRDCreateEndpointRequest *)self _createEndpointForOutputDeviceUIDs:dsCopy];
  v29 = [(MRDCreateEndpointRequest *)self _calculateOperationTypeForEndpoint:v28];
  [analyticsCopy setOperationType:v29];
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      [analyticsCopy setOperationTypeString:@"CreateRemoteHostedEndpoint"];
      createRemoteHostedEndpoint = [analyticsCopy createRemoteHostedEndpoint];
      [createRemoteHostedEndpoint start];

      groupLeader = [v28 groupLeader];
      v49 = [groupLeader uid];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10018DC74;
      v65[3] = &unk_1004BADD8;
      v66 = analyticsCopy;
      v67 = v27;
      [MRDCreateRemoteHostedEndpointRequest createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:v49 withOutputDeviceUIDs:dsCopy timeout:v21 details:v65 groupUIDCompletion:timeout];

      goto LABEL_15;
    }

    if (v29 == 3)
    {
      [analyticsCopy setOperationTypeString:@"ModifyOutputContext"];
      v31 = dispatch_group_create();
      dispatch_group_enter(v31);
      removeFromParent = [analyticsCopy removeFromParent];
      [removeFromParent start];

      designatedGroupLeader = [v28 designatedGroupLeader];
      v34 = [designatedGroupLeader uid];
      v35 = qos_class_self();
      v36 = dispatch_get_global_queue(v35, 0);
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_10018DD08;
      v62[3] = &unk_1004B9C80;
      v37 = analyticsCopy;
      v63 = v37;
      v38 = v31;
      v64 = v38;
      [v28 removeOutputDeviceFromParentGroup:v34 queue:v36 completion:v62];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v82 = 0x3032000000;
      v83 = sub_10003525C;
      v84 = sub_100035AE4;
      v85 = 0;
      v39 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v21 type:3 outputDeviceUIDs:dsCopy];
      [v39 setSuppressErrorDialog:1];
      dispatch_group_enter(v38);
      modifyOutputContext = [v37 modifyOutputContext];
      [modifyOutputContext start];

      v41 = qos_class_self();
      v42 = dispatch_get_global_queue(v41, 0);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10018DD58;
      v58[3] = &unk_1004C0520;
      p_buf = &buf;
      v59 = v37;
      v43 = v38;
      v60 = v43;
      [v28 modifyTopologyWithRequest:v39 withReplyQueue:v42 completion:v58];

      v44 = qos_class_self();
      v45 = dispatch_get_global_queue(v44, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10018DDD4;
      block[3] = &unk_1004BA720;
      v56 = v27;
      v55 = v28;
      v57 = &buf;
      dispatch_group_notify(v43, v45, block);

      _Block_object_dispose(&buf, 8);
      goto LABEL_15;
    }

LABEL_12:
    [analyticsCopy setOperationTypeString:@"?"];
    goto LABEL_15;
  }

  if (!v29)
  {
    [analyticsCopy setOperationTypeString:@"None"];
    v46 = [[NSError alloc] initWithMRError:47];
    (v27[2])(v27, 0, v46);

    goto LABEL_15;
  }

  if (v29 != 1)
  {
    goto LABEL_12;
  }

  [analyticsCopy setOperationTypeString:@"CreateHostedEndpoint"];
  createHostedEndpoint = [analyticsCopy createHostedEndpoint];
  [createHostedEndpoint start];

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10018DBE0;
  v68[3] = &unk_1004C04F8;
  v69 = analyticsCopy;
  v70 = v27;
  [MRDCreateHostedEndpointRequest createHostedEndpointWithOutputDeviceUIDs:dsCopy timeout:v21 details:v68 groupUIDCompletion:timeout];

LABEL_15:
}

- (id)_createEndpointForOutputDeviceUIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[MRDMediaRemoteServer server];
  routingServer = [v4 routingServer];
  hostedRoutingService = [routingServer hostedRoutingService];
  hostedRoutingController = [hostedRoutingService hostedRoutingController];

  v8 = [hostedRoutingController makeEndpointWithOutputDeviceUIDs:dsCopy options:190];

  return v8;
}

- (int64_t)_calculateOperationTypeForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = +[MRUserSettings currentSettings];
  supportPTOTRefactorPart1 = [v4 supportPTOTRefactorPart1];

  if (supportPTOTRefactorPart1)
  {
    v6 = +[MRUserSettings currentSettings];
    if ([v6 supportMultiplayerHost])
    {
      if ([endpointCopy connectionType] == 1)
      {

LABEL_15:
        v7 = 1;
        goto LABEL_16;
      }

      connectionType = [endpointCopy connectionType];

      if (connectionType == 6)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    designatedGroupLeader = [endpointCopy designatedGroupLeader];
    supportsMultiplayer = [designatedGroupLeader supportsMultiplayer];

    v10 = 3;
    if (!endpointCopy)
    {
      v10 = 0;
    }

    if (supportsMultiplayer)
    {
      v7 = 2;
    }

    else
    {
      v7 = v10;
    }
  }

  else if (endpointCopy)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

LABEL_16:

  return v7;
}

@end