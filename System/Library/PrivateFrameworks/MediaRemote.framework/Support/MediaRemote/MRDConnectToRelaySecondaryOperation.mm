@interface MRDConnectToRelaySecondaryOperation
- (MRDConnectToRelaySecondaryOperation)initWithOutputDevice:(id)device;
- (NSString)debugDescription;
- (void)execute;
- (void)finishWithError:(id)error;
- (void)setHandle:(id)handle;
- (void)transport:(id)transport didReceiveData:(id)data;
@end

@implementation MRDConnectToRelaySecondaryOperation

- (MRDConnectToRelaySecondaryOperation)initWithOutputDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = MRDConnectToRelaySecondaryOperation;
  v6 = [(MRDConnectToRelaySecondaryOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDevice, device);
  }

  return v7;
}

- (NSString)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  handle = [(MRDConnectToRelaySecondaryOperation *)self handle];
  v6 = [v3 initWithFormat:@"<%@:%p\n handle=%@\n pendingReplies=%@\n>", v4, self, handle, self->_pendingConfigureConnectionReplies];

  return v6;
}

- (void)execute
{
  v3 = [[MRRequestDetails alloc] initWithName:@"ConnectToMRRelay" requestID:0 reason:0];
  details = self->_details;
  self->_details = v3;

  v5 = [NSMutableString alloc];
  name = [(MRRequestDetails *)self->_details name];
  requestID = [(MRRequestDetails *)self->_details requestID];
  v8 = [v5 initWithFormat:@"%@<%@>", name, requestID];

  debugName = [(MRAVOutputDevice *)self->_outputDevice debugName];

  if (debugName)
  {
    debugName2 = [(MRAVOutputDevice *)self->_outputDevice debugName];
    [(__CFString *)v8 appendFormat:@" for %@", debugName2];
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v127 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  reason = [(MRRequestDetails *)self->_details reason];
  [v12 setObject:reason forKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];

  requestID2 = [(MRRequestDetails *)self->_details requestID];
  [v12 setObject:requestID2 forKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];

  if ([(MRDConnectToRelaySecondaryOperation *)self isCancelled])
  {
    v15 = [[NSError alloc] initWithMRError:25];
    [(MRDConnectToRelaySecondaryOperation *)self finishWithError:v15];
  }

  else
  {
    v16 = [MRAVOutputDeviceTransport alloc];
    v17 = [(MRAVOutputDevice *)self->_outputDevice uid];
    v15 = [v16 initWithOutputDeviceUID:v17];

    v114 = +[NSDate now];
    v18 = [NSMutableString alloc];
    requestID3 = [(MRRequestDetails *)self->_details requestID];
    v20 = [v18 initWithFormat:@"%@<%@>", @"ConnectToMRRelay.createConnection", requestID3];

    debugName3 = [(MRAVOutputDevice *)self->_outputDevice debugName];

    if (debugName3)
    {
      debugName4 = [(MRAVOutputDevice *)self->_outputDevice debugName];
      [(__CFString *)v20 appendFormat:@" for %@", debugName4];
    }

    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v127 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v24 = [v15 createConnectionWithUserInfo:v12];
    error = [v24 error];
    if (v24)
    {
      v26 = error == 0;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v27)
    {
      debugName5 = [(MRAVOutputDevice *)self->_outputDevice debugName];

      v29 = _MRLogForCategory();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (debugName5)
      {
        if (v30)
        {
          requestID4 = [(MRRequestDetails *)self->_details requestID];
          debugName6 = [(MRAVOutputDevice *)self->_outputDevice debugName];
          v33 = +[NSDate date];
          [v33 timeIntervalSinceDate:v114];
          *buf = 138544386;
          v127 = @"ConnectToMRRelay.createConnection";
          v128 = 2114;
          v129 = requestID4;
          v130 = 2112;
          v131 = v24;
          v132 = 2114;
          v133 = debugName6;
          v134 = 2048;
          v135 = v34;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);
        }
      }

      else if (v30)
      {
        requestID5 = [(MRRequestDetails *)self->_details requestID];
        v45 = +[NSDate date];
        [v45 timeIntervalSinceDate:v114];
        *buf = 138544130;
        v127 = @"ConnectToMRRelay.createConnection";
        v128 = 2114;
        v129 = requestID5;
        v130 = 2112;
        v131 = v24;
        v132 = 2048;
        v133 = v46;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
      }
    }

    else
    {
      error2 = [v24 error];

      debugName7 = [(MRAVOutputDevice *)self->_outputDevice debugName];

      v37 = _MRLogForCategory();
      v29 = v37;
      if (error2)
      {
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        if (debugName7)
        {
          if (v38)
          {
            requestID6 = [(MRRequestDetails *)self->_details requestID];
            error3 = [v24 error];
            debugName8 = [(MRAVOutputDevice *)self->_outputDevice debugName];
            v42 = +[NSDate date];
            [v42 timeIntervalSinceDate:v114];
            *buf = 138544386;
            v127 = @"ConnectToMRRelay.createConnection";
            v128 = 2114;
            v129 = requestID6;
            v130 = 2114;
            v131 = error3;
            v132 = 2114;
            v133 = debugName8;
            v134 = 2048;
            v135 = v43;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
          }
        }

        else if (v38)
        {
          requestID7 = [(MRRequestDetails *)self->_details requestID];
          error4 = [v24 error];
          v54 = +[NSDate date];
          [v54 timeIntervalSinceDate:v114];
          *buf = 138544130;
          v127 = @"ConnectToMRRelay.createConnection";
          v128 = 2114;
          v129 = requestID7;
          v130 = 2114;
          v131 = error4;
          v132 = 2048;
          v133 = v55;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
        }
      }

      else
      {
        v47 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        if (debugName7)
        {
          if (v47)
          {
            requestID8 = [(MRRequestDetails *)self->_details requestID];
            debugName9 = [(MRAVOutputDevice *)self->_outputDevice debugName];
            v50 = +[NSDate date];
            [v50 timeIntervalSinceDate:v114];
            *buf = 138544130;
            v127 = @"ConnectToMRRelay.createConnection";
            v128 = 2114;
            v129 = requestID8;
            v130 = 2114;
            v131 = debugName9;
            v132 = 2048;
            v133 = v51;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
          }
        }

        else if (v47)
        {
          requestID9 = [(MRRequestDetails *)self->_details requestID];
          v57 = +[NSDate date];
          [v57 timeIntervalSinceDate:v114];
          *buf = 138543874;
          v127 = @"ConnectToMRRelay.createConnection";
          v128 = 2114;
          v129 = requestID9;
          v130 = 2048;
          v131 = v58;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
        }
      }
    }

    v59 = objc_alloc_init(MRDeviceInfo);
    v60 = [(MRAVOutputDevice *)self->_outputDevice uid];
    [v59 setDeviceUID:v60];

    name2 = [(MRAVOutputDevice *)self->_outputDevice name];
    [v59 setName:name2];

    v62 = [[MRExternalDeviceTransportConnectionHandle alloc] initWithConnection:v24 deviceInfo:v59];
    [(MRDConnectToRelaySecondaryOperation *)self setHandle:v62];

    v120 = 0;
    v121 = &v120;
    v122 = 0x3032000000;
    v123 = sub_1000352AC;
    v124 = sub_100035B0C;
    v125 = 0;
    error5 = [v24 error];

    if (error5)
    {
      error6 = [v24 error];
      v65 = v121[5];
      v121[5] = error6;

      [(MRDConnectToRelaySecondaryOperation *)self finishWithError:v121[5]];
    }

    else
    {
      if ([(MRDConnectToRelaySecondaryOperation *)self isCancelled])
      {
        v66 = [[NSError alloc] initWithMRError:25];
        [(MRDConnectToRelaySecondaryOperation *)self finishWithError:v66];
      }

      else
      {
        [v24 addObserver:self];
        v67 = +[MRDMediaRemoteServer server];
        deviceInfo = [v67 deviceInfo];

        v68 = [MRConfigureConnectionServiceMessage alloc];
        wHAIdentifier = [deviceInfo WHAIdentifier];
        name3 = [deviceInfo name];
        v113 = [v68 initWithServiceType:@"MRRelay" sourceOutputDeviceUID:wHAIdentifier sourceOutputDeviceName:name3];

        v71 = +[NSUUID UUID];
        uUIDString = [v71 UUIDString];
        [v113 setReplyIdentifier:uUIDString];

        v73 = objc_alloc_init(NSMutableDictionary);
        pendingConfigureConnectionReplies = self->_pendingConfigureConnectionReplies;
        self->_pendingConfigureConnectionReplies = v73;

        v75 = dispatch_semaphore_create(0);
        v116[0] = _NSConcreteStackBlock;
        v116[1] = 3221225472;
        v116[2] = sub_1001B9494;
        v116[3] = &unk_1004C19B0;
        v76 = v59;
        v117 = v76;
        v119 = &v120;
        dsema = v75;
        v118 = dsema;
        v77 = objc_retainBlock(v116);
        v78 = self->_pendingConfigureConnectionReplies;
        replyIdentifier = [v113 replyIdentifier];
        [(NSMutableDictionary *)v78 setObject:v77 forKeyedSubscript:replyIdentifier];

        v110 = +[NSDate now];
        v80 = [NSMutableString alloc];
        requestID10 = [(MRRequestDetails *)self->_details requestID];
        v82 = [v80 initWithFormat:@"%@<%@>", @"ConnectToMRRelay.configureConnection", requestID10];

        debugName10 = [(MRAVOutputDevice *)self->_outputDevice debugName];

        if (debugName10)
        {
          debugName11 = [(MRAVOutputDevice *)self->_outputDevice debugName];
          [(__CFString *)v82 appendFormat:@" for %@", debugName11];
        }

        v85 = _MRLogForCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v127 = v82;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
        }

        protobufData = [v113 protobufData];
        [v24 sendTransportData:protobufData options:0];

        v87 = +[MRProtocolMessageLogger sharedLogger];
        [v87 logMessage:@"Message Sent:" label:@"MRRelay" deviceInfo:v76 protocolMessage:v113];

        v88 = dispatch_time(0, 7000000000);
        if (dispatch_semaphore_wait(dsema, v88))
        {
          v89 = [[NSError alloc] initWithMRError:26 format:@"Failed to configureConnection"];
          v90 = v121[5];
          v121[5] = v89;
        }

        outputDevice = self->_outputDevice;
        if (v121[5])
        {
          debugName12 = [(MRAVOutputDevice *)outputDevice debugName];

          if (debugName12)
          {
            v93 = _MRLogForCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              requestID11 = [(MRRequestDetails *)self->_details requestID];
              v95 = v121[5];
              debugName13 = [(MRAVOutputDevice *)self->_outputDevice debugName];
              v96 = +[NSDate date];
              [v96 timeIntervalSinceDate:v110];
              *buf = 138544386;
              v127 = @"ConnectToMRRelay.configureConnection";
              v128 = 2114;
              v129 = requestID11;
              v130 = 2114;
              v131 = v95;
              v132 = 2114;
              v133 = debugName13;
              v134 = 2048;
              v135 = v97;
              _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
            }
          }

          else
          {
            v93 = _MRLogForCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              requestID12 = [(MRRequestDetails *)self->_details requestID];
              v104 = v121[5];
              v105 = +[NSDate date];
              [v105 timeIntervalSinceDate:v110];
              *buf = 138544130;
              v127 = @"ConnectToMRRelay.configureConnection";
              v128 = 2114;
              v129 = requestID12;
              v130 = 2114;
              v131 = v104;
              v132 = 2048;
              v133 = v106;
              _os_log_error_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
            }
          }
        }

        else
        {
          debugName14 = [(MRAVOutputDevice *)outputDevice debugName];

          if (debugName14)
          {
            v93 = _MRLogForCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              requestID13 = [(MRRequestDetails *)self->_details requestID];
              debugName15 = [(MRAVOutputDevice *)self->_outputDevice debugName];
              v101 = +[NSDate date];
              [v101 timeIntervalSinceDate:v110];
              *buf = 138544130;
              v127 = @"ConnectToMRRelay.configureConnection";
              v128 = 2114;
              v129 = requestID13;
              v130 = 2114;
              v131 = debugName15;
              v132 = 2048;
              v133 = v102;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
            }
          }

          else
          {
            v93 = _MRLogForCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              requestID14 = [(MRRequestDetails *)self->_details requestID];
              v108 = +[NSDate date];
              [v108 timeIntervalSinceDate:v110];
              *buf = 138543874;
              v127 = @"ConnectToMRRelay.configureConnection";
              v128 = 2114;
              v129 = requestID14;
              v130 = 2048;
              v131 = v109;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
            }
          }
        }

        [v24 removeObserver:self];
        [(MRDConnectToRelaySecondaryOperation *)self finishWithError:v121[5]];

        v66 = deviceInfo;
      }
    }

    _Block_object_dispose(&v120, 8);
  }
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    handle = [(MRDConnectToRelaySecondaryOperation *)self handle];

    debugName = [(MRAVOutputDevice *)self->_outputDevice debugName];

    v6 = _MRLogForCategory();
    v16 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (handle)
    {
      if (debugName)
      {
        if (!v16)
        {
          goto LABEL_19;
        }

        name = [(MRRequestDetails *)self->_details name];
        requestID = [(MRRequestDetails *)self->_details requestID];
        handle2 = [(MRDConnectToRelaySecondaryOperation *)self handle];
        debugName2 = [(MRAVOutputDevice *)self->_outputDevice debugName];
        startDate2 = +[NSDate date];
        startDate = [(MRRequestDetails *)self->_details startDate];
        [startDate2 timeIntervalSinceDate:startDate];
        *buf = 138544386;
        v27 = name;
        v28 = 2114;
        v29 = requestID;
        v30 = 2112;
        v31 = handle2;
        v32 = 2114;
        v33 = debugName2;
        v34 = 2048;
        v35 = v18;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);

        goto LABEL_17;
      }

      if (!v16)
      {
        goto LABEL_19;
      }

      name = [(MRRequestDetails *)self->_details name];
      requestID = [(MRRequestDetails *)self->_details requestID];
      handle2 = [(MRDConnectToRelaySecondaryOperation *)self handle];
      debugName2 = +[NSDate date];
      startDate2 = [(MRRequestDetails *)self->_details startDate];
      [debugName2 timeIntervalSinceDate:startDate2];
      *buf = 138544130;
      v27 = name;
      v28 = 2114;
      v29 = requestID;
      v30 = 2112;
      v31 = handle2;
      v32 = 2048;
      v33 = v21;
      v20 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    }

    else
    {
      if (!debugName)
      {
        if (v16)
        {
          name = [(MRRequestDetails *)self->_details name];
          requestID = [(MRRequestDetails *)self->_details requestID];
          handle2 = +[NSDate date];
          debugName2 = [(MRRequestDetails *)self->_details startDate];
          [handle2 timeIntervalSinceDate:debugName2];
          *buf = 138543874;
          v27 = name;
          v28 = 2114;
          v29 = requestID;
          v30 = 2048;
          v31 = v24;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      if (!v16)
      {
        goto LABEL_19;
      }

      name = [(MRRequestDetails *)self->_details name];
      requestID = [(MRRequestDetails *)self->_details requestID];
      handle2 = [(MRAVOutputDevice *)self->_outputDevice debugName];
      debugName2 = +[NSDate date];
      startDate2 = [(MRRequestDetails *)self->_details startDate];
      [debugName2 timeIntervalSinceDate:startDate2];
      *buf = 138544130;
      v27 = name;
      v28 = 2114;
      v29 = requestID;
      v30 = 2114;
      v31 = handle2;
      v32 = 2048;
      v33 = v19;
      v20 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    }

    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v20, buf, 0x2Au);
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  debugName3 = [(MRAVOutputDevice *)self->_outputDevice debugName];

  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (debugName3)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    name = [(MRRequestDetails *)self->_details name];
    requestID = [(MRRequestDetails *)self->_details requestID];
    handle2 = [(MRAVOutputDevice *)self->_outputDevice debugName];
    debugName2 = +[NSDate date];
    startDate2 = [(MRRequestDetails *)self->_details startDate];
    [debugName2 timeIntervalSinceDate:startDate2];
    *buf = 138544386;
    v27 = name;
    v28 = 2114;
    v29 = requestID;
    v30 = 2114;
    v31 = errorCopy;
    v32 = 2114;
    v33 = handle2;
    v34 = 2048;
    v35 = v13;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_17;
  }

  if (v7)
  {
    sub_1003B0A5C(self, errorCopy, v6);
  }

LABEL_19:

  v25.receiver = self;
  v25.super_class = MRDConnectToRelaySecondaryOperation;
  [(MRDConnectToRelaySecondaryOperation *)&v25 finishWithError:errorCopy];
  completionBlock = [(MRDConnectToRelaySecondaryOperation *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(MRDConnectToRelaySecondaryOperation *)self completionBlock];
    completionBlock2[2]();
  }
}

- (void)setHandle:(id)handle
{
  handleCopy = handle;
  handle = self->_handle;
  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (handle)
  {
    if (v7)
    {
      requestReasonID = [(MRRequestDetails *)self->_details requestReasonID];
      v9 = self->_handle;
      v14 = 138544130;
      v15 = requestReasonID;
      v16 = 2114;
      v17 = @"connection";
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = handleCopy;
      v10 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
      v11 = v6;
      v12 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  else if (v7)
  {
    requestReasonID = [(MRRequestDetails *)self->_details requestReasonID];
    v14 = 138543874;
    v15 = requestReasonID;
    v16 = 2114;
    v17 = @"connection";
    v18 = 2112;
    v19 = handleCopy;
    v10 = "Set: %{public}@ setting %{public}@ to <%@>";
    v11 = v6;
    v12 = 32;
    goto LABEL_6;
  }

  v13 = self->_handle;
  self->_handle = handleCopy;
}

- (void)transport:(id)transport didReceiveData:(id)data
{
  transportCopy = transport;
  dataCopy = data;
  v7 = [MRProtocolMessage protocolMessageWithProtobufData:dataCopy error:0];
  if (v7)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = selfCopy;
    objc_sync_enter(v9);
    pendingConfigureConnectionReplies = v9->_pendingConfigureConnectionReplies;
    replyIdentifier = [v7 replyIdentifier];
    v12 = [(NSMutableDictionary *)pendingConfigureConnectionReplies objectForKeyedSubscript:replyIdentifier];

    objc_sync_exit(v9);
    if (v12)
    {
      (v12)[2](v12, v7);
    }

    objc_sync_exit(v9);
  }
}

@end