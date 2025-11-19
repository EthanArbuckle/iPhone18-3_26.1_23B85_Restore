@interface MRDCreateEndpointRequest
+ (void)createEndpointWithOutputDeviceUIDs:(id)a3 timeout:(double)a4 details:(id)a5 completion:(id)a6;
+ (void)createEndpointWithOutputDeviceUIDs:(id)a3 timeout:(double)a4 details:(id)a5 groupUIDCompletion:(id)a6;
- (id)_createEndpointForOutputDeviceUIDs:(id)a3;
- (int64_t)_calculateOperationTypeForEndpoint:(id)a3;
- (void)createEndpointWithOutputDeviceUIDs:(id)a3 timeout:(double)a4 details:(id)a5 analytics:(id)a6 completion:(id)a7;
@end

@implementation MRDCreateEndpointRequest

+ (void)createEndpointWithOutputDeviceUIDs:(id)a3 timeout:(double)a4 details:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [MRDCreateEndpointAnalytics alloc];
  v13 = [v10 requestID];
  v14 = [(MRDCreateEndpointAnalytics *)v12 initWithRequestID:v13];

  v15 = +[NSDate now];
  v16 = [NSMutableString alloc];
  v17 = [v10 requestID];
  v18 = [v16 initWithFormat:@"%@<%@>", @"CreateEndpointWithOutputDeviceUIDs", v17];

  if (v9)
  {
    [v18 appendFormat:@" for %@", v9];
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
  v20 = v10;
  v37 = v20;
  v38 = v15;
  v21 = v14;
  v39 = v21;
  v40 = v11;
  v22 = v11;
  v23 = v15;
  v24 = objc_retainBlock(v35);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10018C9E8;
  v29[3] = &unk_1004BAE78;
  v30 = objc_alloc_init(MRDCreateEndpointRequest);
  v31 = v21;
  v34 = a4;
  v32 = v20;
  v33 = v24;
  v25 = v24;
  v26 = v20;
  v27 = v21;
  v28 = v30;
  [(MRDCreateEndpointRequest *)v28 createEndpointWithOutputDeviceUIDs:v9 timeout:v26 details:v27 analytics:v29 completion:a4];
}

+ (void)createEndpointWithOutputDeviceUIDs:(id)a3 timeout:(double)a4 details:(id)a5 groupUIDCompletion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [MRDCreateEndpointAnalytics alloc];
  v13 = [v10 requestID];
  v14 = [(MRDCreateEndpointAnalytics *)v12 initWithRequestID:v13];

  v15 = +[NSDate now];
  v16 = [NSMutableString alloc];
  v17 = [v10 requestID];
  v18 = [v16 initWithFormat:@"%@<%@>", @"CreateEndpointWithOutputDeviceUIDs", v17];

  if (v9)
  {
    [v18 appendFormat:@" for %@", v9];
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
  v32 = v10;
  v33 = v15;
  v34 = v14;
  v35 = v11;
  v20 = v11;
  v21 = v14;
  v22 = v15;
  v23 = v10;
  v24 = objc_retainBlock(v30);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10018D100;
  v27[3] = &unk_1004BAD10;
  v28 = objc_alloc_init(MRDCreateEndpointRequest);
  v29 = v24;
  v25 = v24;
  v26 = v28;
  [(MRDCreateEndpointRequest *)v26 createEndpointWithOutputDeviceUIDs:v9 timeout:v23 details:v21 analytics:v27 completion:a4];
}

- (void)createEndpointWithOutputDeviceUIDs:(id)a3 timeout:(double)a4 details:(id)a5 analytics:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[NSDate now];
  v17 = [NSMutableString alloc];
  v18 = [v13 requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"CreateEndpointWithOutputDeviceUIDs.perform", v18];

  if (v12)
  {
    [v19 appendFormat:@" for %@", v12];
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
  v21 = v13;
  v78 = v21;
  v52 = v16;
  v79 = v52;
  v50 = v15;
  v80 = v50;
  v22 = objc_retainBlock(v76);
  v23 = [MRBlockGuard alloc];
  v24 = [v21 requestReasonID];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10018DB50;
  v74[3] = &unk_1004B6FE8;
  v25 = v22;
  v75 = v25;
  v26 = [v23 initWithTimeout:v24 reason:v74 handler:a4];

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10018DB68;
  v71[3] = &unk_1004BAD10;
  v53 = v26;
  v72 = v53;
  v51 = v25;
  v73 = v51;
  v27 = objc_retainBlock(v71);
  v28 = [(MRDCreateEndpointRequest *)self _createEndpointForOutputDeviceUIDs:v12];
  v29 = [(MRDCreateEndpointRequest *)self _calculateOperationTypeForEndpoint:v28];
  [v14 setOperationType:v29];
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      [v14 setOperationTypeString:@"CreateRemoteHostedEndpoint"];
      v47 = [v14 createRemoteHostedEndpoint];
      [v47 start];

      v48 = [v28 groupLeader];
      v49 = [v48 uid];
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10018DC74;
      v65[3] = &unk_1004BADD8;
      v66 = v14;
      v67 = v27;
      [MRDCreateRemoteHostedEndpointRequest createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:v49 withOutputDeviceUIDs:v12 timeout:v21 details:v65 groupUIDCompletion:a4];

      goto LABEL_15;
    }

    if (v29 == 3)
    {
      [v14 setOperationTypeString:@"ModifyOutputContext"];
      v31 = dispatch_group_create();
      dispatch_group_enter(v31);
      v32 = [v14 removeFromParent];
      [v32 start];

      v33 = [v28 designatedGroupLeader];
      v34 = [v33 uid];
      v35 = qos_class_self();
      v36 = dispatch_get_global_queue(v35, 0);
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_10018DD08;
      v62[3] = &unk_1004B9C80;
      v37 = v14;
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
      v39 = [[MRGroupTopologyModificationRequest alloc] initWithRequestDetails:v21 type:3 outputDeviceUIDs:v12];
      [v39 setSuppressErrorDialog:1];
      dispatch_group_enter(v38);
      v40 = [v37 modifyOutputContext];
      [v40 start];

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
    [v14 setOperationTypeString:@"?"];
    goto LABEL_15;
  }

  if (!v29)
  {
    [v14 setOperationTypeString:@"None"];
    v46 = [[NSError alloc] initWithMRError:47];
    (v27[2])(v27, 0, v46);

    goto LABEL_15;
  }

  if (v29 != 1)
  {
    goto LABEL_12;
  }

  [v14 setOperationTypeString:@"CreateHostedEndpoint"];
  v30 = [v14 createHostedEndpoint];
  [v30 start];

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_10018DBE0;
  v68[3] = &unk_1004C04F8;
  v69 = v14;
  v70 = v27;
  [MRDCreateHostedEndpointRequest createHostedEndpointWithOutputDeviceUIDs:v12 timeout:v21 details:v68 groupUIDCompletion:a4];

LABEL_15:
}

- (id)_createEndpointForOutputDeviceUIDs:(id)a3
{
  v3 = a3;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 routingServer];
  v6 = [v5 hostedRoutingService];
  v7 = [v6 hostedRoutingController];

  v8 = [v7 makeEndpointWithOutputDeviceUIDs:v3 options:190];

  return v8;
}

- (int64_t)_calculateOperationTypeForEndpoint:(id)a3
{
  v3 = a3;
  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 supportPTOTRefactorPart1];

  if (v5)
  {
    v6 = +[MRUserSettings currentSettings];
    if ([v6 supportMultiplayerHost])
    {
      if ([v3 connectionType] == 1)
      {

LABEL_15:
        v7 = 1;
        goto LABEL_16;
      }

      v11 = [v3 connectionType];

      if (v11 == 6)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v8 = [v3 designatedGroupLeader];
    v9 = [v8 supportsMultiplayer];

    v10 = 3;
    if (!v3)
    {
      v10 = 0;
    }

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      v7 = v10;
    }
  }

  else if (v3)
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