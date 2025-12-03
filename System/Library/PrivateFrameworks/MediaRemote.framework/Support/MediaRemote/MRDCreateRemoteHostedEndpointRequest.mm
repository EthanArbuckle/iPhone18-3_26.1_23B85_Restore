@interface MRDCreateRemoteHostedEndpointRequest
+ (void)createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:(id)d withOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details completion:(id)completion;
+ (void)createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:(id)d withOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details groupUIDCompletion:(id)completion;
- (void)_createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:(id)d withOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details analytics:(id)analytics completion:(id)completion;
@end

@implementation MRDCreateRemoteHostedEndpointRequest

+ (void)createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:(id)d withOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details completion:(id)completion
{
  dCopy = d;
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  v15 = [MRDCreateRemoteHostedEndpointAnalytics alloc];
  requestID = [detailsCopy requestID];
  v17 = [(MRDCreateRemoteHostedEndpointAnalytics *)v15 initWithRequestID:requestID];

  v18 = +[NSDate now];
  v19 = [NSMutableString alloc];
  requestID2 = [detailsCopy requestID];
  v21 = [v19 initWithFormat:@"%@<%@>", @"createRemoteHostedEndpointForGroupLeaderWithOutputDeviceUIDs", requestID2];

  if (dCopy)
  {
    [v21 appendFormat:@" for %@", dCopy];
  }

  if (dsCopy)
  {
    [v21 appendFormat:@" because %@", dsCopy];
  }

  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v45 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000C007C;
  v38[3] = &unk_1004BAE50;
  v39 = @"createRemoteHostedEndpointForGroupLeaderWithOutputDeviceUIDs";
  v23 = detailsCopy;
  v40 = v23;
  v41 = v18;
  v24 = v17;
  v42 = v24;
  v43 = completionCopy;
  v25 = completionCopy;
  v26 = v18;
  v27 = objc_retainBlock(v38);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000C0294;
  v32[3] = &unk_1004BAE78;
  v33 = objc_alloc_init(MRDCreateRemoteHostedEndpointRequest);
  v34 = v24;
  timeoutCopy = timeout;
  v35 = v23;
  v36 = v27;
  v28 = v27;
  v29 = v23;
  v30 = v24;
  v31 = v33;
  [(MRDCreateRemoteHostedEndpointRequest *)v31 _createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:dCopy withOutputDeviceUIDs:dsCopy timeout:v29 details:v30 analytics:v32 completion:timeout];
}

+ (void)createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:(id)d withOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details groupUIDCompletion:(id)completion
{
  dCopy = d;
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  v15 = [MRDCreateRemoteHostedEndpointAnalytics alloc];
  requestID = [detailsCopy requestID];
  v17 = [(MRDCreateRemoteHostedEndpointAnalytics *)v15 initWithRequestID:requestID];

  v18 = +[NSDate now];
  v19 = [NSMutableString alloc];
  requestID2 = [detailsCopy requestID];
  v21 = [v19 initWithFormat:@"%@<%@>", @"createRemoteHostedEndpointForGroupLeaderWithOutputDeviceUIDs", requestID2];

  if (dCopy)
  {
    [v21 appendFormat:@" for %@", dCopy];
  }

  if (dsCopy)
  {
    [v21 appendFormat:@" because %@", dsCopy];
  }

  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000C07C8;
  v33[3] = &unk_1004BAD38;
  v34 = @"createRemoteHostedEndpointForGroupLeaderWithOutputDeviceUIDs";
  v35 = detailsCopy;
  v36 = v18;
  v37 = v17;
  v38 = completionCopy;
  v23 = completionCopy;
  v24 = v17;
  v25 = v18;
  v26 = detailsCopy;
  v27 = objc_retainBlock(v33);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000C09E0;
  v30[3] = &unk_1004BAD10;
  v31 = objc_alloc_init(MRDCreateRemoteHostedEndpointRequest);
  v32 = v27;
  v28 = v27;
  v29 = v31;
  [(MRDCreateRemoteHostedEndpointRequest *)v29 _createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:dCopy withOutputDeviceUIDs:dsCopy timeout:v26 details:v24 analytics:v30 completion:timeout];
}

- (void)_createRemoteHostedEndpointWithGroupLeaderOutputDeviceUID:(id)d withOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details analytics:(id)analytics completion:(id)completion
{
  dCopy = d;
  dsCopy = ds;
  detailsCopy = details;
  analyticsCopy = analytics;
  completionCopy = completion;
  v18 = +[NSDate now];
  v19 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v21 = [v19 initWithFormat:@"%@<%@>", @"createRemoteHostedEndpointForGroupLeaderWithOutputDeviceUIDs.perform", requestID];

  if (dCopy)
  {
    [v21 appendFormat:@" for %@", dCopy];
  }

  if (dsCopy)
  {
    [v21 appendFormat:@" because %@", dsCopy];
  }

  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v77 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1000C1078;
  v69[3] = &unk_1004BAEA0;
  v70 = @"createRemoteHostedEndpointForGroupLeaderWithOutputDeviceUIDs.perform";
  v23 = detailsCopy;
  v71 = v23;
  v55 = v18;
  v72 = v55;
  v54 = completionCopy;
  v73 = v54;
  v24 = objc_retainBlock(v69);
  v25 = [MRBlockGuard alloc];
  requestReasonID = [v23 requestReasonID];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000C1280;
  v67[3] = &unk_1004B6FE8;
  v27 = v24;
  v68 = v27;
  v28 = [v25 initWithTimeout:requestReasonID reason:v67 handler:timeout];

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_1000C1298;
  v64[3] = &unk_1004BAD10;
  v52 = v28;
  v65 = v52;
  v53 = v27;
  v66 = v53;
  v29 = objc_retainBlock(v64);
  v30 = +[MRDMediaRemoteServer server];
  routingServer = [v30 routingServer];
  hostedRoutingService = [routingServer hostedRoutingService];
  hostedRoutingController = [hostedRoutingService hostedRoutingController];

  availableOutputDevices = [hostedRoutingController availableOutputDevices];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000C1310;
  v62[3] = &unk_1004B8A40;
  v35 = dCopy;
  v63 = v35;
  v36 = [availableOutputDevices msv_firstWhere:v62];

  if (!v36)
  {
    v49 = [[NSError alloc] initWithMRError:47];
LABEL_13:
    v44 = v49;
    (v29[2])(v29, 0, v49);
    goto LABEL_16;
  }

  primaryID = [v36 primaryID];

  if (!primaryID)
  {
    v49 = [[NSError alloc] initWithMRError:39 description:@"No primaryID"];
    goto LABEL_13;
  }

  v50 = v35;
  v51 = dsCopy;
  createTransientExternalDevice = [analyticsCopy createTransientExternalDevice];
  [createTransientExternalDevice start];

  v39 = +[MRDMediaRemoteServer server];
  routingServer2 = [v39 routingServer];
  hostedRoutingService2 = [routingServer2 hostedRoutingService];
  [hostedRoutingService2 hostedRoutingController];
  v43 = v42 = analyticsCopy;
  v44 = [v43 makeTransientExternalDeviceToOutputDevice:v36];

  if (v44)
  {
    createTransientExternalDevice2 = [v42 createTransientExternalDevice];
    [createTransientExternalDevice2 end];

    connectToTransientExternalDevice = [v42 connectToTransientExternalDevice];
    [connectToTransientExternalDevice start];

    v75[0] = @"createRemoteHostedEndpointForGroupLeaderWithOutputDeviceUIDs.perform";
    v74[0] = MRExternalDeviceConnectionReasonUserInfoKey;
    v74[1] = MRExternalDeviceConnectionCorrelationIDUserInfoKey;
    requestID2 = [v23 requestID];
    v75[1] = requestID2;
    v48 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1000C131C;
    v56[3] = &unk_1004B9780;
    v57 = v42;
    v58 = v44;
    dsCopy = v51;
    v59 = v51;
    v60 = v23;
    v61 = v29;
    [v58 connectWithOptions:0 userInfo:v48 completion:v56];
  }

  else
  {
    v48 = [[NSError alloc] initWithMRError:127];
    (v29[2])(v29, 0, v48);
    dsCopy = v51;
  }

  analyticsCopy = v42;

  v35 = v50;
LABEL_16:
}

@end