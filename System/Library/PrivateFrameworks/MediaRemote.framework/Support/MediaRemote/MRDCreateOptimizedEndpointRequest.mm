@interface MRDCreateOptimizedEndpointRequest
+ (void)createOptimizedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details previewCallback:(id)callback completion:(id)completion;
- (void)_createOptimizedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details previewCallback:(id)callback completion:(id)completion;
- (void)searchEndpointsForLocalDeviceWithTimeout:(double)timeout details:(id)details completion:(id)completion;
@end

@implementation MRDCreateOptimizedEndpointRequest

+ (void)createOptimizedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details previewCallback:(id)callback completion:(id)completion
{
  completionCopy = completion;
  callbackCopy = callback;
  detailsCopy = details;
  dsCopy = ds;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000969A4;
  v17[3] = &unk_1004B7FE8;
  v18 = objc_alloc_init(MRDCreateOptimizedEndpointRequest);
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = v18;
  [(MRDCreateOptimizedEndpointRequest *)v16 _createOptimizedEndpointWithOutputDeviceUIDs:dsCopy timeout:detailsCopy details:callbackCopy previewCallback:v17 completion:timeout];
}

- (void)_createOptimizedEndpointWithOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details previewCallback:(id)callback completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  callbackCopy = callback;
  completionCopy = completion;
  v15 = [MRDCreateOptimizedEndpointAnalytics alloc];
  requestID = [detailsCopy requestID];
  v17 = [(MRDCreateOptimizedEndpointAnalytics *)v15 initWithRequestID:requestID];

  v18 = +[MRDMediaRemoteServer server];
  deviceInfo = [v18 deviceInfo];

  v20 = +[NSDate now];
  v21 = [NSMutableString alloc];
  requestID2 = [detailsCopy requestID];
  v23 = [v21 initWithFormat:@"%@<%@>", @"createOptimizedEndpointWithOutputDeviceUIDs", requestID2];

  v24 = _MRLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v88 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_1000970A0;
  v85[3] = &unk_1004B9730;
  v25 = dsCopy;
  v86 = v25;
  v26 = objc_retainBlock(v85);
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_1000971E0;
  v83[3] = &unk_1004B9730;
  v27 = v25;
  v84 = v27;
  v51 = objc_retainBlock(v83);
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_1000973BC;
  v80[3] = &unk_1004B7978;
  v28 = v27;
  v81 = v28;
  v29 = deviceInfo;
  v82 = v29;
  v30 = objc_retainBlock(v80);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1000974D8;
  v71[3] = &unk_1004B97D0;
  v72 = @"createOptimizedEndpointWithOutputDeviceUIDs";
  v31 = detailsCopy;
  v73 = v31;
  v50 = v20;
  v74 = v50;
  v32 = v17;
  v75 = v32;
  v49 = completionCopy;
  v77 = v49;
  v47 = v26;
  v78 = v47;
  v33 = v28;
  v76 = v33;
  v48 = callbackCopy;
  v79 = v48;
  v34 = objc_retainBlock(v71);
  v35 = [MRBlockGuard alloc];
  requestReasonID = [v31 requestReasonID];
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100097E18;
  v69[3] = &unk_1004B6FE8;
  v37 = v34;
  v70 = v37;
  v38 = [v35 initWithTimeout:requestReasonID reason:v69 handler:timeout];

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100097E30;
  v66[3] = &unk_1004B7BA0;
  v39 = v38;
  v67 = v39;
  v40 = v37;
  v68 = v40;
  v41 = objc_retainBlock(v66);
  if ((v30[2])(v30))
  {
    [(MRDCreateOptimizedEndpointAnalytics *)v32 setRequestContainsLocal:1];
    searchEndpointsForLocalDevice = [(MRDCreateOptimizedEndpointAnalytics *)v32 searchEndpointsForLocalDevice];
    [searchEndpointsForLocalDevice start];

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100097EA8;
    v58[3] = &unk_1004B9868;
    v59 = v32;
    v63 = v51;
    v60 = @"createOptimizedEndpointWithOutputDeviceUIDs";
    v61 = v31;
    timeoutCopy = timeout;
    v62 = v29;
    v64 = v41;
    v43 = v41;
    [(MRDCreateOptimizedEndpointRequest *)self searchEndpointsForLocalDeviceWithTimeout:v61 details:v58 completion:timeout];

    v44 = v59;
  }

  else
  {
    v43 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:v33 features:8 details:v31];
    [v43 setShouldWaitForUnanimousEndpoints:0];
    [v43 setReturnPartialResults:1];
    discoverOutputDevices = [(MRDCreateOptimizedEndpointAnalytics *)v32 discoverOutputDevices];
    [discoverOutputDevices start];

    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_100098504;
    v52[3] = &unk_1004B9890;
    v53 = v32;
    v54 = v33;
    timeoutCopy2 = timeout;
    v55 = v31;
    v56 = v41;
    v44 = v41;
    [v43 beginSearchWithTimeout:v52 endpointsCompletion:timeout];
  }
}

- (void)searchEndpointsForLocalDeviceWithTimeout:(double)timeout details:(id)details completion:(id)completion
{
  detailsCopy = details;
  completionCopy = completion;
  v9 = +[MRDMediaRemoteServer server];
  deviceInfo = [v9 deviceInfo];

  v11 = +[NSDate now];
  v12 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v14 = [v12 initWithFormat:@"%@<%@>", @"searchEndpointsForLocalDevice", requestID];

  deviceUID = [deviceInfo deviceUID];

  if (deviceUID)
  {
    deviceUID2 = [deviceInfo deviceUID];
    [v14 appendFormat:@" for %@", deviceUID2];
  }

  v17 = _MRLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100098A30;
  v29[3] = &unk_1004B8108;
  v30 = @"searchEndpointsForLocalDevice";
  v18 = detailsCopy;
  v31 = v18;
  v19 = v11;
  v32 = v19;
  v20 = completionCopy;
  v33 = v20;
  v21 = objc_retainBlock(v29);
  deviceUID3 = [deviceInfo deviceUID];

  if (deviceUID3)
  {
    v23 = [MRAVReconnaissanceSession alloc];
    deviceUID4 = [deviceInfo deviceUID];
    v34 = deviceUID4;
    v25 = [NSArray arrayWithObjects:&v34 count:1];
    v26 = [v23 initWithOutputDeviceUIDs:v25 features:8 details:v18];

    [v26 setWaitForCompleteClusters:1];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100098C5C;
    v27[3] = &unk_1004B98B8;
    v28 = v21;
    [v26 beginSearchWithTimeout:v27 endpointsCompletion:timeout];
  }

  else
  {
    v26 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    (v21[2])(v21, v26, 0);
  }
}

@end