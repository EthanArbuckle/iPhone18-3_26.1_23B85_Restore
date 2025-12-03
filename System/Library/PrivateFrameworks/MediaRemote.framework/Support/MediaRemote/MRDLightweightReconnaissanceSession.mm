@interface MRDLightweightReconnaissanceSession
+ (void)searchEndpointsForOutputDeviceUID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion;
@end

@implementation MRDLightweightReconnaissanceSession

+ (void)searchEndpointsForOutputDeviceUID:(id)d timeout:(double)timeout details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = &_dispatch_main_q;
    v15 = &_dispatch_main_q;
  }

  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = sub_100034FC0;
  v119 = sub_1000359A4;
  v120 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x3032000000;
  v112 = sub_100034FC0;
  v113 = sub_1000359A4;
  v114 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:8];
  v16 = +[NSDate date];
  requestID = [detailsCopy requestID];
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = sub_100034FC0;
  v107 = sub_1000359A4;
  v76 = dCopy;
  v108 = v76;
  v18 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID", requestID];
  v19 = v18;
  if (v104[5])
  {
    [(__CFString *)v18 appendFormat:@" for %@", v104[5]];
  }

  label = [detailsCopy label];

  if (label)
  {
    label2 = [detailsCopy label];
    [(__CFString *)v19 appendFormat:@" because %@", label2];
  }

  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v122 = v19;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_100061E4C;
  v93[3] = &unk_1004B7B78;
  v99 = &v103;
  v94 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
  v23 = requestID;
  v95 = v23;
  v75 = v16;
  v96 = v75;
  v73 = queueCopy;
  v97 = v73;
  v74 = completionCopy;
  v98 = v74;
  v100 = &v109;
  v101 = &v115;
  selfCopy = self;
  v24 = objc_retainBlock(v93);
  v25 = [MRBlockGuard alloc];
  v26 = [[NSString alloc] initWithFormat:@"%@<%@>", @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID", v23];
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_100062384;
  v91[3] = &unk_1004B6FE8;
  v27 = v24;
  v92 = v27;
  v28 = [v25 initWithTimeout:v26 reason:v91 handler:timeout];

  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_1000623A4;
  v88[3] = &unk_1004B7BA0;
  v29 = v28;
  v89 = v29;
  v30 = v27;
  v90 = v30;
  v31 = objc_retainBlock(v88);
  v32 = +[MRDMediaRemoteServer server];
  deviceInfo = [v32 deviceInfo];

  v34 = v104[5];
  v35 = +[MRAVOutputDevice localDeviceUID];
  if ([v34 compare:v35 options:1])
  {
    goto LABEL_14;
  }

  deviceUID = [deviceInfo deviceUID];
  v37 = deviceUID == 0;

  if (!v37)
  {
    v38 = [NSString alloc];
    deviceUID2 = [deviceInfo deviceUID];
    v35 = [v38 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", deviceUID2];

    v40 = _MRLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v122 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
      v123 = 2114;
      v124 = v23;
      v125 = 2112;
      v126 = v35;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    deviceUID3 = [deviceInfo deviceUID];
    v42 = v104[5];
    v104[5] = deviceUID3;

LABEL_14:
  }

  if (!v104[5])
  {
    deviceUID4 = [deviceInfo deviceUID];
    v44 = deviceUID4 == 0;

    if (!v44)
    {
      v45 = [NSString alloc];
      deviceUID5 = [deviceInfo deviceUID];
      v47 = [v45 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", deviceUID5];

      v48 = _MRLogForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v122 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
        v123 = 2114;
        v124 = v23;
        v125 = 2112;
        v126 = v47;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      deviceUID6 = [deviceInfo deviceUID];
      v50 = v104[5];
      v104[5] = deviceUID6;
    }
  }

  if (!v104[5])
  {
    v51 = [NSString alloc];
    v52 = +[MRAVOutputDevice localDeviceUID];
    v53 = [v51 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", v52];

    v54 = _MRLogForCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v122 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
      v123 = 2114;
      v124 = v23;
      v125 = 2112;
      v126 = v53;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v55 = +[MRAVOutputDevice localDeviceUID];
    v56 = v104[5];
    v104[5] = v55;
  }

  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_10006241C;
  v84[3] = &unk_1004B7C08;
  v57 = deviceInfo;
  v85 = v57;
  v86 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
  v58 = v23;
  v87 = v58;
  v59 = objc_retainBlock(v84);
  if (!(v59[2])())
  {
    goto LABEL_40;
  }

  selfCopy2 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  v61 = v104[5];
  v62 = +[MRAVOutputDevice localDeviceUID];
  LODWORD(v61) = [v61 compare:v62 options:1] == 0;

  if (!v61)
  {
    deviceUID7 = [v57 deviceUID];
    v64 = [deviceUID7 isEqualToString:v104[5]];

    if (v64)
    {
      v65 = _MRLogForCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v122 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
        v123 = 2114;
        v124 = v58;
        v125 = 2112;
        v126 = @"searching for localDeviceUID, using localEndpoint...";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        goto LABEL_38;
      }

      goto LABEL_38;
    }

    identifier = [v57 identifier];
    v67 = [identifier isEqualToString:v104[5]];

    if (v67)
    {
      v65 = _MRLogForCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v122 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
        v123 = 2114;
        v124 = v58;
        v125 = 2112;
        v126 = @"searching for localIdentifier, using localEndpoint...";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_100062754;
    v83[3] = &unk_1004B7C30;
    v83[4] = &v103;
    v68 = [selfCopy2 outputDevicesMatchingPredicate:v83];
    v69 = [v68 count] == 0;

    if (!v69)
    {
      v65 = _MRLogForCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v122 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
        v123 = 2114;
        v124 = v58;
        v125 = 2112;
        v126 = @"found device in localEndpoint, using localEndpoint...";
        goto LABEL_37;
      }

      goto LABEL_38;
    }

LABEL_40:
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    [v110[5] setDiscoveryMode:3];
    v70 = v110[5];
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_100062768;
    v78[3] = &unk_1004B7C58;
    v82 = &v103;
    v79 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
    v80 = v58;
    v81 = v31;
    v71 = [v70 addEndpointsChangedCallback:v78];
    v72 = v116[5];
    v116[5] = v71;

    objc_sync_exit(selfCopy2);
    goto LABEL_41;
  }

  v65 = _MRLogForCategory();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v122 = @"MRDLightweightReconnaissanceSession.searchEndpointsForOutputDeviceUID";
    v123 = 2114;
    v124 = v58;
    v125 = 2112;
    v126 = @"searching for local, using localEndpoint...";
    goto LABEL_37;
  }

LABEL_38:

  (v31[2])(v31, selfCopy2, 0);
LABEL_41:

  _Block_object_dispose(&v103, 8);
  _Block_object_dispose(&v109, 8);

  _Block_object_dispose(&v115, 8);
}

@end