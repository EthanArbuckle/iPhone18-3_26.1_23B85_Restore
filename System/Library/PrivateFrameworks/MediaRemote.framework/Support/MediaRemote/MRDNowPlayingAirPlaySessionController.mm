@interface MRDNowPlayingAirPlaySessionController
- (BOOL)isStartingNowPlayingSession;
- (void)_findEndpointContainingGroupID:(id)d andDeviceID:(id)iD requestID:(id)requestID completion:(id)completion;
- (void)resumeNowPlayingSesion;
- (void)setStartingNowPlayingSession:(BOOL)session;
- (void)startNowPlayingSessionWithCompletion:(id)completion;
- (void)stopNowPlayingSesion;
@end

@implementation MRDNowPlayingAirPlaySessionController

- (void)startNowPlayingSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v7 = +[NSDate now];
  v8 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v8 nowPlayingServer];
  localOriginClient = [nowPlayingServer localOriginClient];
  deviceInfoDataSource = [localOriginClient deviceInfoDataSource];
  deviceInfo = [deviceInfoDataSource deviceInfo];

  deviceUID = [deviceInfo deviceUID];
  v14 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"startNowPlayingSession", uUIDString];
  v15 = v14;
  if (deviceUID)
  {
    [(__CFString *)v14 appendFormat:@" for %@", deviceUID];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v138 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  [(MRDNowPlayingAirPlaySessionController *)self setStartingNowPlayingSession:1];
  v17 = [MRDNowPlayingAirPlaySessionEvents alloc];
  clusterType = [deviceInfo clusterType];
  v95 = deviceInfo;
  modelID = [deviceInfo modelID];
  v20 = [(MRDNowPlayingAirPlaySessionEvents *)v17 initWithClusterType:clusterType modelID:modelID];

  v129[0] = _NSConcreteStackBlock;
  v129[1] = 3221225472;
  v129[2] = sub_1000B9920;
  v129[3] = &unk_1004BAA88;
  v21 = v20;
  v130 = v21;
  v131 = @"startNowPlayingSession";
  v22 = uUIDString;
  v132 = v22;
  v98 = deviceUID;
  v133 = v98;
  v23 = v7;
  v134 = v23;
  v97 = completionCopy;
  selfCopy = self;
  v136 = v97;
  v24 = objc_retainBlock(v129);
  v25 = +[MRDMediaRemoteServer server];
  routingServer = [v25 routingServer];
  hostedRoutingService = [routingServer hostedRoutingService];
  hostedRoutingController = [hostedRoutingService hostedRoutingController];

  v96 = hostedRoutingController;
  discoverySession = [hostedRoutingController discoverySession];
  localEndpointConnection = [discoverySession localEndpointConnection];

  if (localEndpointConnection)
  {
    v31 = [MRBlockGuard alloc];
    v32 = [[NSString alloc] initWithFormat:@"%@<%@>", @"startNowPlayingSession", v22];
    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_1000B9E6C;
    v127[3] = &unk_1004B6FE8;
    v33 = v24;
    v128 = v33;
    v34 = [v31 initWithTimeout:v32 reason:v127 handler:15.0];

    v124[0] = _NSConcreteStackBlock;
    v124[1] = 3221225472;
    v124[2] = sub_1000B9E84;
    v124[3] = &unk_1004BAAB0;
    v35 = v34;
    v125 = v35;
    v126 = v33;
    v36 = objc_retainBlock(v124);
    v37 = +[MRAVClusterController sharedController];
    LODWORD(v32) = [v37 needsCommandRedirection];

    if (v32)
    {
      v38 = _MRLogForCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v138 = @"startNowPlayingSession";
        v139 = 2114;
        v140 = v22;
        v141 = 2112;
        v142 = @"Returning local origin because device requires command redirection";
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v39 = [MRPlayerPath alloc];
      v40 = +[MROrigin localOrigin];
      v41 = [v39 initWithOrigin:v40 client:0 player:0];

      (v36[2])(v36, v41, 0);
      v42 = v97;
      goto LABEL_22;
    }

    v91 = v24;
    v92 = v35;
    v118[0] = _NSConcreteStackBlock;
    v118[1] = 3221225472;
    v118[2] = sub_1000B9EFC;
    v118[3] = &unk_1004BAAD8;
    v44 = v21;
    v45 = v36;
    v46 = v44;
    v119 = v44;
    v93 = v45;
    v47 = v45;
    v123 = v47;
    selfCopy2 = self;
    v48 = v98;
    v121 = v48;
    v49 = v22;
    v122 = v49;
    v50 = objc_retainBlock(v118);
    sourceOutputContext = [(MRDNowPlayingAirPlaySessionEvents *)v46 sourceOutputContext];
    [sourceOutputContext start];

    v52 = +[MRDAVOutputContextManager sharedManager];
    v53 = [v52 outputContextForOutputDeviceUID:v48];

    v94 = v53;
    if (!v53)
    {
      v78 = [[NSError alloc] initWithMRError:32 description:@"Failed to query output context for local device"];
      sourceOutputContext2 = [(MRDNowPlayingAirPlaySessionEvents *)v46 sourceOutputContext];
      [sourceOutputContext2 endWithError:v78];

      (v47[2])(v47, 0, v78);
      v35 = v92;
      v36 = v93;
      v42 = v97;
LABEL_21:

      v41 = v119;
      v24 = v91;
LABEL_22:

      v43 = v128;
      goto LABEL_23;
    }

    v85 = v47;
    v86 = v50;
    v87 = v23;
    v88 = v21;
    sourceOutputContext3 = [(MRDNowPlayingAirPlaySessionEvents *)v46 sourceOutputContext];
    [sourceOutputContext3 end];

    v55 = _MRLogForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v138 = @"startNowPlayingSession";
      v139 = 2114;
      v140 = v49;
      v141 = 2112;
      v142 = v53;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    outputDevices = [(__CFString *)v53 outputDevices];
    v116[0] = _NSConcreteStackBlock;
    v116[1] = 3221225472;
    v116[2] = sub_1000BA26C;
    v116[3] = &unk_1004B8A40;
    v57 = v48;
    v117 = v57;
    v58 = [outputDevices msv_firstWhere:v116];

    v84 = objc_alloc_init(NSMutableArray);
    v109[0] = _NSConcreteStackBlock;
    v109[1] = 3221225472;
    v109[2] = sub_1000BA278;
    v109[3] = &unk_1004BAB00;
    v59 = v58;
    v110 = v59;
    v60 = v53;
    v111 = v60;
    v61 = v57;
    v112 = v61;
    v62 = v46;
    v113 = v62;
    v63 = v49;
    v114 = v63;
    v115 = @"startNowPlayingSession";
    v64 = objc_retainBlock(v109);
    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_1000BA518;
    v103[3] = &unk_1004BAB28;
    v83 = v59;
    v104 = v83;
    v105 = v61;
    v65 = v62;
    v106 = v65;
    v107 = v63;
    v108 = @"startNowPlayingSession";
    v89 = objc_retainBlock(v103);
    v101[0] = _NSConcreteStackBlock;
    v101[1] = 3221225472;
    v101[2] = sub_1000BA7D8;
    v101[3] = &unk_1004BAB50;
    v102 = v65;
    v82 = objc_retainBlock(v101);
    v66 = +[MRDMediaRemoteServer server];
    nowPlayingServer2 = [v66 nowPlayingServer];
    localOriginClient2 = [nowPlayingServer2 localOriginClient];
    deviceInfoDataSource2 = [localOriginClient2 deviceInfoDataSource];
    deviceInfo2 = [deviceInfoDataSource2 deviceInfo];
    v71 = ([deviceInfo2 clusterType] - 1) & 0xFFFFFFFD;

    outputDevices2 = [(__CFString *)v60 outputDevices];
    v73 = [outputDevices2 count];

    v35 = v92;
    v90 = v64;
    if (v71)
    {
      v42 = v97;
      v50 = v86;
      v23 = v87;
      v36 = v93;
      v75 = v84;
      v74 = v85;
      if (v73 >= 2)
      {
        v76 = [v90 copy];
        [v84 addObject:v76];

        v77 = v89;
LABEL_19:
        v80 = [v77 copy];
        [v75 addObject:v80];
      }
    }

    else
    {
      v77 = v64;
      v42 = v97;
      v50 = v86;
      v23 = v87;
      v36 = v93;
      v75 = v84;
      v74 = v85;
      if (v73)
      {
        goto LABEL_19;
      }
    }

    v81 = [v82 copy];
    [v75 addObject:v81];

    v99 = v50;
    v100 = v74;
    MRPerformAsyncOperationsUntilError();

    v78 = v117;
    v21 = v88;
    goto LABEL_21;
  }

  v43 = [[NSError alloc] initWithMRError:140];
  (v24[2])(v24, 0, v43);
  v42 = v97;
LABEL_23:
}

- (void)stopNowPlayingSesion
{
  v3 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v3 nowPlayingServer];
  localOriginClient = [nowPlayingServer localOriginClient];
  deviceInfoDataSource = [localOriginClient deviceInfoDataSource];
  deviceInfo = [deviceInfoDataSource deviceInfo];
  deviceUID = [deviceInfo deviceUID];

  v9 = +[NSDate date];
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];

  v12 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"stopNowPlayingSession", uUIDString];
  v13 = v12;
  if (deviceUID)
  {
    [(__CFString *)v12 appendFormat:@" for %@", deviceUID];
  }

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v15 = _MRLogForCategory();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (deviceUID)
  {
    if (v16)
    {
      v17 = +[NSDate date];
      [v17 timeIntervalSinceDate:v9];
      *buf = 138544130;
      v25 = @"stopNowPlayingSession";
      v26 = 2114;
      v27 = uUIDString;
      v28 = 2114;
      v29 = deviceUID;
      v30 = 2048;
      v31 = v18;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v20 = v15;
      v21 = 42;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    }
  }

  else if (v16)
  {
    v17 = +[NSDate date];
    [v17 timeIntervalSinceDate:v9];
    *buf = 138543874;
    v25 = @"stopNowPlayingSession";
    v26 = 2114;
    v27 = uUIDString;
    v28 = 2048;
    v29 = v22;
    v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v20 = v15;
    v21 = 32;
    goto LABEL_10;
  }

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 postNotificationName:@"MRDNowPlayingAirPlaySessionStopped" object:self];
}

- (void)resumeNowPlayingSesion
{
  v2 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v2 nowPlayingServer];
  localOriginClient = [nowPlayingServer localOriginClient];
  deviceInfoDataSource = [localOriginClient deviceInfoDataSource];
  deviceInfo = [deviceInfoDataSource deviceInfo];
  deviceUID = [deviceInfo deviceUID];

  v8 = +[NSDate date];
  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];

  v11 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"resumeNowPlayingSession", uUIDString];
  v12 = v11;
  if (deviceUID)
  {
    [(__CFString *)v11 appendFormat:@" for %@", deviceUID];
  }

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v14 = _MRLogForCategory();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (deviceUID)
  {
    if (v15)
    {
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:v8];
      *buf = 138544130;
      v23 = @"resumeNowPlayingSession";
      v24 = 2114;
      v25 = uUIDString;
      v26 = 2114;
      v27 = deviceUID;
      v28 = 2048;
      v29 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v14;
      v20 = 42;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }
  }

  else if (v15)
  {
    v16 = +[NSDate date];
    [v16 timeIntervalSinceDate:v8];
    *buf = 138543874;
    v23 = @"resumeNowPlayingSession";
    v24 = 2114;
    v25 = uUIDString;
    v26 = 2048;
    v27 = v21;
    v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v19 = v14;
    v20 = 32;
    goto LABEL_10;
  }
}

- (void)_findEndpointContainingGroupID:(id)d andDeviceID:(id)iD requestID:(id)requestID completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  requestIDCopy = requestID;
  completionCopy = completion;
  v13 = +[NSDate now];
  requestIDCopy = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"startNowPlayingSession.findEndpointContainingGroupID", requestIDCopy];
  v15 = requestIDCopy;
  if (dCopy)
  {
    [requestIDCopy appendFormat:@" for %@", dCopy];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000BB244;
  v41[3] = &unk_1004B8438;
  v17 = dCopy;
  v42 = v17;
  v43 = @"startNowPlayingSession.findEndpointContainingGroupID";
  v18 = requestIDCopy;
  v44 = v18;
  v45 = v13;
  v46 = completionCopy;
  v31 = completionCopy;
  v19 = v13;
  v20 = objc_retainBlock(v41);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000BB5C0;
  v36[3] = &unk_1004BABC0;
  v37 = iDCopy;
  v38 = @"startNowPlayingSession.findEndpointContainingGroupID";
  v21 = v18;
  v39 = v21;
  v40 = v17;
  v22 = v17;
  v23 = iDCopy;
  v24 = objc_retainBlock(v36);
  v25 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v26 = [[NSString alloc] initWithFormat:@"%@<%@> looking for localDevice with groupID=%@", @"startNowPlayingSession.findEndpointContainingGroupID", v21, v22];
  v27 = qos_class_self();
  v28 = dispatch_get_global_queue(v27, 0);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000BB8E8;
  v32[3] = &unk_1004BABE8;
  v33 = @"startNowPlayingSession.findEndpointContainingGroupID";
  v34 = v21;
  v35 = v20;
  v29 = v20;
  v30 = v21;
  [v25 searchEndpointsWithPredicate:v24 timeout:v26 reason:v28 queue:v32 completion:7.0];
}

- (BOOL)isStartingNowPlayingSession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  startingNowPlayingSession = selfCopy->_startingNowPlayingSession;
  objc_sync_exit(selfCopy);

  return startingNowPlayingSession;
}

- (void)setStartingNowPlayingSession:(BOOL)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_startingNowPlayingSession = sessionCopy;
  objc_sync_exit(selfCopy);

  v5 = +[NSNotificationCenter defaultCenter];
  v7 = v5;
  if (sessionCopy)
  {
    v6 = @"MRDNowPlayingAirplaySessionStarting";
  }

  else
  {
    v6 = @"MRDNowPlayingAirplaySessionStarted";
  }

  [v5 postNotificationName:v6 object:selfCopy];
}

@end