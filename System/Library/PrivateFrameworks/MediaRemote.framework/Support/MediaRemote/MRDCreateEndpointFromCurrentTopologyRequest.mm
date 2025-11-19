@interface MRDCreateEndpointFromCurrentTopologyRequest
+ (void)createEndpointWithCurrentTopologyWithTimeout:(double)a3 details:(id)a4 previewCallback:(id)a5 completion:(id)a6;
- (void)_createEndpointWithCurrentTopologyWithTimeout:(double)a3 details:(id)a4 previewCallback:(id)a5 completion:(id)a6;
- (void)searchEndpointsForMyGroupLeaderWithTimeout:(double)a3 details:(id)a4 completion:(id)a5;
@end

@implementation MRDCreateEndpointFromCurrentTopologyRequest

+ (void)createEndpointWithCurrentTopologyWithTimeout:(double)a3 details:(id)a4 previewCallback:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100065838;
  v14[3] = &unk_1004B7F08;
  v15 = objc_alloc_init(MRDCreateEndpointFromCurrentTopologyRequest);
  v16 = v9;
  v12 = v9;
  v13 = v15;
  [(MRDCreateEndpointFromCurrentTopologyRequest *)v13 _createEndpointWithCurrentTopologyWithTimeout:v11 details:v10 previewCallback:v14 completion:a3];
}

- (void)_createEndpointWithCurrentTopologyWithTimeout:(double)a3 details:(id)a4 previewCallback:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [MRDCreateEndpointWithCurrentTopologyAnalytics alloc];
  v13 = [v9 requestID];
  v14 = [(MRDCreateEndpointWithCurrentTopologyAnalytics *)v12 initWithRequestID:v13];

  v15 = +[NSDate now];
  v16 = [NSMutableString alloc];
  v17 = [v9 requestID];
  v18 = [v16 initWithFormat:@"%@<%@>", @"createEndpointWithCurrentTopology", v17];

  v19 = _MRLogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v101 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_100066094;
  v94[3] = &unk_1004B7F30;
  v95 = @"createEndpointWithCurrentTopology";
  v20 = v9;
  v96 = v20;
  v64 = v15;
  v97 = v64;
  v65 = v11;
  v99 = v65;
  v21 = v14;
  v98 = v21;
  v22 = objc_retainBlock(v94);
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_1000662C8;
  v90[3] = &unk_1004B7F58;
  v91 = @"createEndpointWithCurrentTopology";
  v23 = v20;
  v92 = v23;
  v63 = v10;
  v93 = v63;
  v24 = objc_retainBlock(v90);
  v25 = [MRBlockGuard alloc];
  v26 = [v23 requestReasonID];
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_10006642C;
  v88[3] = &unk_1004B6FE8;
  v27 = v22;
  v89 = v27;
  v28 = [v25 initWithTimeout:v26 reason:v88 handler:a3];

  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_100066444;
  v85[3] = &unk_1004B7BA0;
  v29 = v28;
  v86 = v29;
  v30 = v27;
  v87 = v30;
  v31 = objc_retainBlock(v85);
  v32 = [MRBlockGuard alloc];
  v33 = [v23 requestReasonID];
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_1000664BC;
  v83[3] = &unk_1004B6FE8;
  v34 = v24;
  v84 = v34;
  v35 = [v32 initWithTimeout:v33 reason:v83 handler:0.0];

  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_1000664D4;
  v80[3] = &unk_1004B7F80;
  v62 = v35;
  v81 = v62;
  v36 = v34;
  v82 = v36;
  v37 = objc_retainBlock(v80);
  v38 = +[MRDMediaRemoteServer server];
  v39 = [v38 deviceInfo];

  -[MRDCreateEndpointWithCurrentTopologyAnalytics setAirplayActive:](v21, "setAirplayActive:", [v39 isAirPlayActive]);
  if (![v39 isAirPlayActive])
  {
    goto LABEL_7;
  }

  if (![v39 groupContainsDiscoverableGroupLeader])
  {
    goto LABEL_8;
  }

  v40 = [v39 leaderDeviceInfo];
  if (!v40)
  {
    goto LABEL_7;
  }

  v41 = v40;
  [v39 leaderDeviceInfo];
  v59 = v37;
  v42 = v36;
  v43 = v31;
  v44 = v29;
  v46 = v45 = v30;
  v47 = [v46 deviceUID];

  v30 = v45;
  v29 = v44;
  v31 = v43;
  v36 = v42;
  v37 = v59;

  if (!v47)
  {
LABEL_8:
    v60 = v30;
    [(MRDCreateEndpointWithCurrentTopologyAnalytics *)v21 setUndiscoverableGroupLeader:1];
    v50 = [v39 leaderDeviceInfo];
    v51 = [v50 groupedDevices];

    if (v51)
    {
      v52 = [v39 leaderDeviceInfo];
      v53 = [v52 groupedDevices];
      v49 = [v53 msv_map:&stru_1004B7FC0];

      [(MRDCreateEndpointWithCurrentTopologyAnalytics *)v21 setContainsLeaderInfo:1];
      v54 = [(MRDCreateEndpointWithCurrentTopologyAnalytics *)v21 createOptimizedEndpoint];
      [v54 start];

      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_100066554;
      v77[3] = &unk_1004B7FE8;
      v78 = v21;
      v79 = v31;
      [MRDCreateOptimizedEndpointRequest createOptimizedEndpointWithOutputDeviceUIDs:v49 timeout:v23 details:v37 previewCallback:v77 completion:a3];

      v55 = v78;
    }

    else
    {
      v56 = [(MRDCreateEndpointWithCurrentTopologyAnalytics *)v21 discoverGroup];
      [v56 start];

      v57 = [MRAVReconnaissanceSession alloc];
      v58 = [v39 groupUID];
      v49 = [v57 initWithOutputDeviceGroupUID:v58 features:1 details:v23];

      [v49 setReturnPartialResults:1];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_1000665E8;
      v70[3] = &unk_1004B8098;
      v71 = v21;
      v72 = v39;
      v76 = a3;
      v73 = v23;
      v74 = v37;
      v75 = v31;
      [v49 beginSearchWithTimeout:v70 completion:3.0];

      v55 = v71;
    }

    v30 = v60;
  }

  else
  {
LABEL_7:
    v48 = [(MRDCreateEndpointWithCurrentTopologyAnalytics *)v21 findMyGroupLeader];
    [v48 start];

    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100066860;
    v66[3] = &unk_1004B80E0;
    v67 = v21;
    v68 = v37;
    v69 = v31;
    [(MRDCreateEndpointFromCurrentTopologyRequest *)self searchEndpointsForMyGroupLeaderWithTimeout:v23 details:v66 completion:a3];

    v49 = v67;
  }
}

- (void)searchEndpointsForMyGroupLeaderWithTimeout:(double)a3 details:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[MRDMediaRemoteServer server];
  v11 = [v10 deviceInfo];

  v12 = +[NSDate now];
  v13 = [NSMutableString alloc];
  v14 = [v8 requestID];
  v15 = [v13 initWithFormat:@"%@<%@>", @"searchEndpointsForMyGroupLeader", v14];

  v16 = [v11 deviceUID];

  if (v16)
  {
    v17 = [v11 deviceUID];
    [v15 appendFormat:@" for %@", v17];
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v15;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100066C84;
  v30[3] = &unk_1004B8108;
  v31 = @"searchEndpointsForMyGroupLeader";
  v19 = v8;
  v32 = v19;
  v20 = v12;
  v33 = v20;
  v21 = v9;
  v34 = v21;
  v22 = objc_retainBlock(v30);
  v23 = [v11 deviceUID];

  if (v23)
  {
    v24 = [MRAVReconnaissanceSession alloc];
    v25 = [v11 deviceUID];
    v35 = v25;
    v26 = [NSArray arrayWithObjects:&v35 count:1];
    v27 = [v24 initWithOutputDeviceUIDs:v26 features:8 details:v19];

    [v27 setWaitForCompleteClusters:1];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100066EB0;
    v28[3] = &unk_1004B8130;
    v28[4] = self;
    v29 = v22;
    [v27 beginSearchWithTimeout:v28 endpointsCompletion:a3];
  }

  else
  {
    v27 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    (v22[2])(v22, v27, 0);
  }
}

@end