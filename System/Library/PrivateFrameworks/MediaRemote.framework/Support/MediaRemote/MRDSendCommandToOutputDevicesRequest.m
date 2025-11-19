@interface MRDSendCommandToOutputDevicesRequest
- (BOOL)_doesRequestContainLocalDeviceUID:(id)a3;
- (BOOL)_isRequestForCompanionOrigin:(id)a3;
- (BOOL)_isRequestForCurrentCongifuration:(id)a3;
- (BOOL)_isRequestForLocalOrigin:(id)a3;
- (void)_sendCommand:(unsigned int)a3 withOptions:(id)a4 toEachEndpointContainingOutputDeviceUIDs:(id)a5 timeout:(double)a6 details:(id)a7 completion:(id)a8;
- (void)_sendCommand:(unsigned int)a3 withOptions:(id)a4 toNewEndpointContainingOutputDeviceUIDs:(id)a5 playerPath:(id)a6 timeout:(double)a7 details:(id)a8 completion:(id)a9;
@end

@implementation MRDSendCommandToOutputDevicesRequest

- (void)_sendCommand:(unsigned int)a3 withOptions:(id)a4 toNewEndpointContainingOutputDeviceUIDs:(id)a5 playerPath:(id)a6 timeout:(double)a7 details:(id)a8 completion:(id)a9
{
  v68 = a4;
  v15 = a5;
  v66 = a6;
  v16 = a8;
  v17 = a9;
  v18 = [MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics alloc];
  v19 = +[MRDMediaRemoteServer server];
  v20 = [v19 deviceInfo];
  v21 = -[MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics initWithDetails:deviceInfo:numberOfRequestedOutputDeviceUIDs:timeout:](v18, "initWithDetails:deviceInfo:numberOfRequestedOutputDeviceUIDs:timeout:", v16, v20, [v15 count], a7);

  v22 = MRMediaRemoteCopyCommandDescription();
  [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v21 setCommandString:v22];

  v74 = a3;
  [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v21 setCommand:a3];
  v23 = +[NSDate now];
  v24 = [NSMutableString alloc];
  v25 = [v16 requestID];
  v26 = [v24 initWithFormat:@"%@<%@>", @"sendCommandToNewEndpointContainingOutputDeviceUIDs", v25];

  v75 = v15;
  if (v15)
  {
    [v26 appendFormat:@" for %@", v15];
  }

  v27 = [v16 reason];

  if (v27)
  {
    v28 = [v16 reason];
    [v26 appendFormat:@" because %@", v28];
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
  v30 = v16;
  v112 = v30;
  v73 = v23;
  v113 = v73;
  v31 = v21;
  v114 = v31;
  v72 = v17;
  v115 = v72;
  v32 = objc_retainBlock(v110);
  v33 = +[MRDMediaRemoteServer server];
  v34 = [v33 deviceInfo];
  v35 = [v34 resolveOutputDeviceUIDs:v15];

  if (v35 != v15 && ([v35 isEqual:v15] & 1) == 0)
  {
    v36 = [[NSString alloc] initWithFormat:@"Resolving to outputDeviceUIDs: %@", v35];
    v37 = _MRLogForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v30 name];
      v39 = [v30 requestID];
      *buf = 138543874;
      v117 = v38;
      v118 = 2114;
      v119 = v39;
      v120 = 2112;
      v121 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v40 = [MRBlockGuard alloc];
  v41 = [v30 requestReasonID];
  v42 = qos_class_self();
  v43 = dispatch_get_global_queue(v42, 0);
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_1001A3944;
  v108[3] = &unk_1004B6FE8;
  v44 = v32;
  v109 = v44;
  v45 = [v40 initWithTimeout:v41 reason:v43 queue:v108 handler:a7];

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
  v50 = v66;
  v99 = v50;
  v102 = v74;
  v51 = v68;
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
    v55 = [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 sendCommand];
    [v55 start];

    v56 = [[MRNowPlayingRequest alloc] initWithOrigin:v54];
    v57 = qos_class_self();
    v58 = dispatch_get_global_queue(v57, 0);
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1001A3F04;
    v90[3] = &unk_1004B78B0;
    v91 = v53;
    v92 = v46;
    [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v56 sendCommand:v74 options:v51 queue:v58 completion:v90];

    v60 = v67;
    v59 = v69;
  }

  else
  {
    v61 = [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 createPartialEndpoint];
    [v61 start];

    if ([(MRDSendCommandToOutputDevicesRequest *)self _isRequestForCurrentCongifuration:v52])
    {
      [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 setRequestForCurrentConfiguration:1];
      v62 = [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 createEndpointWithCurrentTopology];
      [v62 start];

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
      [MRDCreateEndpointFromCurrentTopologyRequest createEndpointWithCurrentTopologyWithTimeout:v49 details:v86 previewCallback:v83 completion:a7];

      v56 = v87;
    }

    else
    {
      [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 setRequestContainsLocalDeviceUID:[(MRDSendCommandToOutputDevicesRequest *)self _doesRequestContainLocalDeviceUID:v52]];
      v63 = [(MRDSendCommandToEndpointWithOutputDevicesRequestAnalytics *)v53 createOptimizedEndpoint];
      [v63 start];

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
      [MRDCreateOptimizedEndpointRequest createOptimizedEndpointWithOutputDeviceUIDs:v52 timeout:v49 details:v79 previewCallback:v76 completion:a7];

      v56 = v80;
    }

    v54 = 0;
  }
}

- (void)_sendCommand:(unsigned int)a3 withOptions:(id)a4 toEachEndpointContainingOutputDeviceUIDs:(id)a5 timeout:(double)a6 details:(id)a7 completion:(id)a8
{
  v73 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a8;
  v16 = [MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics alloc];
  v17 = +[MRDMediaRemoteServer server];
  v18 = [v17 deviceInfo];
  v19 = -[MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics initWithDetails:deviceInfo:numberOfRequestedOutputDeviceUIDs:timeout:](v16, "initWithDetails:deviceInfo:numberOfRequestedOutputDeviceUIDs:timeout:", v14, v18, [v13 count], a6);

  v20 = MRMediaRemoteCopyCommandDescription();
  [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v19 setCommandString:v20];

  v68 = a3;
  [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v19 setCommand:a3];
  v21 = +[NSDate now];
  v22 = [NSMutableString alloc];
  v23 = [v14 requestID];
  v24 = [v22 initWithFormat:@"%@<%@>", @"sendCommandToEachEndpointContainingOutputDeviceUIDs", v23];

  if (v13)
  {
    [v24 appendFormat:@" for %@", v13];
  }

  v25 = [v14 reason];

  if (v25)
  {
    v26 = [v14 reason];
    [v24 appendFormat:@" because %@", v26];
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
  v28 = v14;
  v102 = v28;
  v70 = v21;
  v103 = v70;
  v29 = v19;
  v104 = v29;
  v69 = v15;
  v105 = v69;
  v30 = objc_retainBlock(v100);
  v31 = +[MRDMediaRemoteServer server];
  v32 = [v31 deviceInfo];
  v33 = [v32 resolveOutputDeviceUIDs:v13];

  if (v33 != v13 && ([v33 isEqual:v13] & 1) == 0)
  {
    v34 = [[NSString alloc] initWithFormat:@"Resolving to outputDeviceUIDs: %@", v33];
    v35 = _MRLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v28 name];
      v37 = [v28 requestID];
      *buf = 138543874;
      v107 = v36;
      v108 = 2114;
      v109 = v37;
      v110 = 2112;
      v111 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v71 = v13;
  v38 = objc_alloc_init(NSMutableArray);
  v39 = [MRBlockGuard alloc];
  v40 = [v28 requestReasonID];
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
  v45 = [v39 initWithTimeout:v40 reason:v42 queue:v97 handler:a6];

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
  v93 = v68;
  v74 = v73;
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
    v54 = [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v51 sendCommands];
    [v54 start];

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
    [v55 sendCommand:v68 options:v74 queue:v57 completion:v81];
    v60 = v71;
  }

  else
  {
    v55 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:v50 features:8 details:v48];
    [v55 setShouldWaitForUnanimousEndpoints:0];
    [v55 setReturnPartialResults:1];
    [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v51 setRequestContainsLocalDeviceUID:[(MRDSendCommandToOutputDevicesRequest *)self _doesRequestContainLocalDeviceUID:v50]];
    v61 = [(MRDSendCommandToEndpointsWithOutputDevicesRequestAnalytics *)v51 discoverOutputDevices];
    [v61 start];

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

- (BOOL)_isRequestForCurrentCongifuration:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
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

- (BOOL)_isRequestForLocalOrigin:(id)a3
{
  v3 = a3;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 deviceInfo];

  v6 = [v5 deviceUID];

  v7 = 0;
  if (!v6)
  {
    v8 = [v3 msv_firstWhere:&stru_1004C1080];

    if (v8)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_isRequestForCompanionOrigin:(id)a3
{
  v3 = a3;
  v4 = [[MROrigin alloc] initWithIdentifier:1129140302 type:1 displayName:&stru_1004D2058];
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v6 originClientForOrigin:v4];
  v8 = [v7 deviceInfo];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A616C;
  v12[3] = &unk_1004B90C8;
  v13 = v8;
  v9 = v8;
  v10 = [v3 msv_firstWhere:v12];

  return v10 != 0;
}

- (BOOL)_doesRequestContainLocalDeviceUID:(id)a3
{
  v3 = a3;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 deviceInfo];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001A62C0;
  v9[3] = &unk_1004B90C8;
  v10 = v5;
  v6 = v5;
  v7 = [v3 msv_firstWhere:v9];

  return v7 != 0;
}

@end