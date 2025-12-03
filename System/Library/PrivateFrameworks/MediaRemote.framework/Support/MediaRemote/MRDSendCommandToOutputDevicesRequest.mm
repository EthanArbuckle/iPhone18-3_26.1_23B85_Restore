@interface MRDSendCommandToOutputDevicesRequest
- (BOOL)_doesRequestContainLocalDeviceUID:(id)d;
- (BOOL)_isRequestForCompanionOrigin:(id)origin;
- (BOOL)_isRequestForCurrentCongifuration:(id)congifuration;
- (BOOL)_isRequestForLocalOrigin:(id)origin;
- (void)_sendCommand:(unsigned int)command withOptions:(id)options toEachEndpointContainingOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details completion:(id)completion;
- (void)_sendCommand:(unsigned int)command withOptions:(id)options toNewEndpointContainingOutputDeviceUIDs:(id)ds playerPath:(id)path timeout:(double)timeout details:(id)details completion:(id)completion;
@end

@implementation MRDSendCommandToOutputDevicesRequest

- (void)_sendCommand:(unsigned int)command withOptions:(id)options toNewEndpointContainingOutputDeviceUIDs:(id)ds playerPath:(id)path timeout:(double)timeout details:(id)details completion:(id)completion
{
  optionsCopy = options;
  dsCopy = ds;
  pathCopy = path;
  detailsCopy = details;
  completionCopy = completion;
  v18 = [MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics alloc];
  v19 = +[MRDMediaRemoteServer server];
  deviceInfo = [v19 deviceInfo];
  v21 = -[MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics initWithDetails:deviceInfo:numberOfRequestedOutputDeviceUIDs:timeout:](v18, "initWithDetails:deviceInfo:numberOfRequestedOutputDeviceUIDs:timeout:", detailsCopy, deviceInfo, [dsCopy count], timeout);

  v22 = MRMediaRemoteCopyCommandDescription();
  [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v21 setCommandString:v22];

  commandCopy = command;
  [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v21 setCommand:command];
  v23 = +[NSDate now];
  v24 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v26 = [v24 initWithFormat:@"%@<%@>", @"sendCommandToNewEndpointContainingOutputDeviceUIDs", requestID];

  v75 = dsCopy;
  if (dsCopy)
  {
    [v26 appendFormat:@" for %@", dsCopy];
  }

  reason = [detailsCopy reason];

  if (reason)
  {
    reason2 = [detailsCopy reason];
    [v26 appendFormat:@" because %@", reason2];
  }

  v29 = _MRLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v117 = v26;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_1001A34C0;
  v110[3] = &unk_1004C0DD8;
  v111 = @"sendCommandToNewEndpointContainingOutputDeviceUIDs";
  v30 = detailsCopy;
  v112 = v30;
  v73 = v23;
  v113 = v73;
  v31 = v21;
  v114 = v31;
  v72 = completionCopy;
  v115 = v72;
  v32 = objc_retainBlock(v110);
  v33 = +[MRDMediaRemoteServer server];
  deviceInfo2 = [v33 deviceInfo];
  v35 = [deviceInfo2 resolveOutputDeviceUIDs:dsCopy];

  if (v35 != dsCopy && ([v35 isEqual:dsCopy] & 1) == 0)
  {
    v36 = [[NSString alloc] initWithFormat:@"Resolving to outputDeviceUIDs: %@", v35];
    v37 = _MRLogForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      name = [v30 name];
      requestID2 = [v30 requestID];
      *buf = 138543874;
      v117 = name;
      v118 = 2114;
      v119 = requestID2;
      v120 = 2112;
      v121 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v40 = [MRBlockGuard alloc];
  requestReasonID = [v30 requestReasonID];
  v42 = qos_class_self();
  v43 = dispatch_get_global_queue(v42, 0);
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_1001A3944;
  v108[3] = &unk_1004B6FE8;
  v44 = v32;
  v109 = v44;
  v45 = [v40 initWithTimeout:requestReasonID reason:v43 queue:v108 handler:timeout];

  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_1001A39C8;
  v105[3] = &unk_1004C0D88;
  v70 = v45;
  v106 = v70;
  v65 = v44;
  v107 = v65;
  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_1001A3A40;
  v103[3] = &unk_1004B6FE8;
  v46 = objc_retainBlock(v105);
  v104 = v46;
  v47 = objc_retainBlock(v103);
  v96[0] = _NSConcreteStackBlock;
  v96[1] = 3221225472;
  v96[2] = sub_1001A3AC4;
  v96[3] = &unk_1004C0E28;
  v48 = v31;
  v97 = v48;
  v49 = v30;
  v98 = v49;
  v50 = pathCopy;
  v99 = v50;
  v102 = commandCopy;
  v51 = optionsCopy;
  v100 = v51;
  v69 = v47;
  v101 = v69;
  v67 = objc_retainBlock(v96);
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_1001A3E60;
  v93[3] = &unk_1004C0E50;
  v93[4] = self;
  v52 = v35;
  v94 = v52;
  v53 = v48;
  v95 = v53;
  v64 = objc_retainBlock(v93);
  v54 = (v64[2])();
  if (v54)
  {
    sendCommand = [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 sendCommand];
    [sendCommand start];

    v56 = [[MRNowPlayingRequest alloc] initWithOrigin:v54];
    v57 = qos_class_self();
    v58 = dispatch_get_global_queue(v57, 0);
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1001A3F04;
    v90[3] = &unk_1004B78B0;
    v91 = v53;
    v92 = v46;
    [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v56 sendCommand:commandCopy options:v51 queue:v58 completion:v90];

    v60 = v67;
    v59 = v69;
  }

  else
  {
    createPartialEndpoint = [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 createPartialEndpoint];
    [createPartialEndpoint start];

    if ([(MRDSendCommandToOutputDevicesRequest *)self _isRequestForCurrentCongifuration:v52])
    {
      [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 setRequestForCurrentConfiguration:1];
      createEndpointWithCurrentTopology = [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 createEndpointWithCurrentTopology];
      [createEndpointWithCurrentTopology start];

      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = sub_1001A3FBC;
      v86[3] = &unk_1004C0EA0;
      v87 = v53;
      v60 = v67;
      v88 = v67;
      v89 = v46;
      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_1001A4110;
      v83[3] = &unk_1004B7F08;
      v84 = v87;
      v59 = v69;
      v85 = v69;
      [MRDCreateEndpointFromCurrentTopologyRequest createEndpointWithCurrentTopologyWithTimeout:v49 details:v86 previewCallback:v83 completion:timeout];

      v56 = v87;
    }

    else
    {
      [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 setRequestContainsLocalDeviceUID:[(MRDSendCommandToOutputDevicesRequest *)self _doesRequestContainLocalDeviceUID:v52]];
      createOptimizedEndpoint = [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 createOptimizedEndpoint];
      [createOptimizedEndpoint start];

      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_1001A41A4;
      v79[3] = &unk_1004C0EA0;
      v80 = v53;
      v60 = v67;
      v81 = v67;
      v82 = v46;
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_1001A42F8;
      v76[3] = &unk_1004B7FE8;
      v77 = v80;
      v59 = v69;
      v78 = v69;
      [MRDCreateOptimizedEndpointRequest createOptimizedEndpointWithOutputDeviceUIDs:v52 timeout:v49 details:v79 previewCallback:v76 completion:timeout];

      v56 = v80;
    }

    v54 = 0;
  }
}

- (void)_sendCommand:(unsigned int)command withOptions:(id)options toEachEndpointContainingOutputDeviceUIDs:(id)ds timeout:(double)timeout details:(id)details completion:(id)completion
{
  optionsCopy = options;
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  v16 = [MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics alloc];
  v17 = +[MRDMediaRemoteServer server];
  deviceInfo = [v17 deviceInfo];
  v19 = -[MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics initWithDetails:deviceInfo:numberOfRequestedOutputDeviceUIDs:timeout:](v16, "initWithDetails:deviceInfo:numberOfRequestedOutputDeviceUIDs:timeout:", detailsCopy, deviceInfo, [dsCopy count], timeout);

  v20 = MRMediaRemoteCopyCommandDescription();
  [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v19 setCommandString:v20];

  commandCopy = command;
  [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v19 setCommand:command];
  v21 = +[NSDate now];
  v22 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v24 = [v22 initWithFormat:@"%@<%@>", @"sendCommandToEachEndpointContainingOutputDeviceUIDs", requestID];

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
    v107 = v24;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_1001A4C48;
  v100[3] = &unk_1004C0F68;
  v101 = @"sendCommandToEachEndpointContainingOutputDeviceUIDs";
  v28 = detailsCopy;
  v102 = v28;
  v70 = v21;
  v103 = v70;
  v29 = v19;
  v104 = v29;
  v69 = completionCopy;
  v105 = v69;
  v30 = objc_retainBlock(v100);
  v31 = +[MRDMediaRemoteServer server];
  deviceInfo2 = [v31 deviceInfo];
  v33 = [deviceInfo2 resolveOutputDeviceUIDs:dsCopy];

  if (v33 != dsCopy && ([v33 isEqual:dsCopy] & 1) == 0)
  {
    v34 = [[NSString alloc] initWithFormat:@"Resolving to outputDeviceUIDs: %@", v33];
    v35 = _MRLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      name = [v28 name];
      requestID2 = [v28 requestID];
      *buf = 138543874;
      v107 = name;
      v108 = 2114;
      v109 = requestID2;
      v110 = 2112;
      v111 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v71 = dsCopy;
  v38 = objc_alloc_init(NSMutableArray);
  v39 = [MRBlockGuard alloc];
  requestReasonID = [v28 requestReasonID];
  v41 = qos_class_self();
  v42 = dispatch_get_global_queue(v41, 0);
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_1001A505C;
  v97[3] = &unk_1004B9BE0;
  v43 = v38;
  v98 = v43;
  v44 = v30;
  v99 = v44;
  v45 = [v39 initWithTimeout:requestReasonID reason:v42 queue:v97 handler:timeout];

  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_1001A5100;
  v94[3] = &unk_1004C0DB0;
  v65 = v45;
  v95 = v65;
  v66 = v44;
  v96 = v66;
  v46 = objc_retainBlock(v94);
  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_1001A5178;
  v87[3] = &unk_1004C0FF8;
  v47 = v29;
  v88 = v47;
  v48 = v28;
  v89 = v48;
  v93 = commandCopy;
  v74 = optionsCopy;
  v90 = v74;
  v64 = v43;
  v91 = v64;
  v49 = v46;
  v92 = v49;
  v72 = objc_retainBlock(v87);
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_1001A57C8;
  v84[3] = &unk_1004C0E50;
  v84[4] = self;
  v50 = v33;
  v85 = v50;
  v51 = v47;
  v86 = v51;
  v52 = objc_retainBlock(v84);
  v53 = (v52[2])();
  v63 = v48;
  if (v53)
  {
    [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v51 setNumberOfEndpoints:1];
    sendCommands = [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v51 sendCommands];
    [sendCommands start];

    v55 = [[MRNowPlayingRequest alloc] initWithOrigin:v53];
    v56 = qos_class_self();
    v57 = dispatch_get_global_queue(v56, 0);
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_1001A5888;
    v81[3] = &unk_1004B78B0;
    v58 = &v82;
    v82 = v51;
    v59 = &v83;
    v83 = v49;
    [v55 sendCommand:commandCopy options:v74 queue:v57 completion:v81];
    v60 = v71;
  }

  else
  {
    v55 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:v50 features:8 details:v48];
    [v55 setShouldWaitForUnanimousEndpoints:0];
    [v55 setReturnPartialResults:1];
    [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v51 setRequestContainsLocalDeviceUID:[(MRDSendCommandToOutputDevicesRequest *)self _doesRequestContainLocalDeviceUID:v50]];
    discoverOutputDevices = [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v51 discoverOutputDevices];
    [discoverOutputDevices start];

    v62 = v48;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1001A5968;
    v75[3] = &unk_1004C1060;
    v58 = &v76;
    v76 = v51;
    v59 = &v77;
    v60 = v71;
    v77 = v71;
    v78 = @"sendCommandToEachEndpointContainingOutputDeviceUIDs";
    v79 = v62;
    v80 = v72;
    [v55 beginSearchWithTimeout:v75 endpointsCompletion:5.0];

    v57 = v78;
  }
}

- (BOOL)_isRequestForCurrentCongifuration:(id)congifuration
{
  congifurationCopy = congifuration;
  if ([congifurationCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = congifurationCopy;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v7 += [*(*(&v12 + 1) + 8 * i) length];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
      v10 = v7 == 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)_isRequestForLocalOrigin:(id)origin
{
  originCopy = origin;
  v4 = +[MRDMediaRemoteServer server];
  deviceInfo = [v4 deviceInfo];

  deviceUID = [deviceInfo deviceUID];

  v7 = 0;
  if (!deviceUID)
  {
    v8 = [originCopy msv_firstWhere:&stru_1004C1080];

    if (v8)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_isRequestForCompanionOrigin:(id)origin
{
  originCopy = origin;
  v4 = [[MROrigin alloc] initWithIdentifier:1129140302 type:1 displayName:&stru_1004D2058];
  v5 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v5 nowPlayingServer];
  v7 = [nowPlayingServer originClientForOrigin:v4];
  deviceInfo = [v7 deviceInfo];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A616C;
  v12[3] = &unk_1004B90C8;
  v13 = deviceInfo;
  v9 = deviceInfo;
  v10 = [originCopy msv_firstWhere:v12];

  return v10 != 0;
}

- (BOOL)_doesRequestContainLocalDeviceUID:(id)d
{
  dCopy = d;
  v4 = +[MRDMediaRemoteServer server];
  deviceInfo = [v4 deviceInfo];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001A62C0;
  v9[3] = &unk_1004B90C8;
  v10 = deviceInfo;
  v6 = deviceInfo;
  v7 = [dCopy msv_firstWhere:v9];

  return v7 != 0;
}

@end