@interface MRDConnectToRelaySecondaryOperation
- (MRDConnectToRelaySecondaryOperation)initWithOutputDevice:(id)a3;
- (NSString)debugDescription;
- (void)execute;
- (void)finishWithError:(id)a3;
- (void)setHandle:(id)a3;
- (void)transport:(id)a3 didReceiveData:(id)a4;
@end

@implementation MRDConnectToRelaySecondaryOperation

- (MRDConnectToRelaySecondaryOperation)initWithOutputDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRDConnectToRelaySecondaryOperation;
  v6 = [(MRDConnectToRelaySecondaryOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDevice, a3);
  }

  return v7;
}

- (NSString)debugDescription
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(MRDConnectToRelaySecondaryOperation *)self handle];
  v6 = [v3 initWithFormat:@"<%@:%p\n handle=%@\n pendingReplies=%@\n>", v4, self, v5, self->_pendingConfigureConnectionReplies];

  return v6;
}

- (void)execute
{
  v3 = [[MRRequestDetails alloc] initWithName:@"ConnectToMRRelay" requestID:0 reason:0];
  details = self->_details;
  self->_details = v3;

  v5 = [NSMutableString alloc];
  v6 = [(MRRequestDetails *)self->_details name];
  v7 = [(MRRequestDetails *)self->_details requestID];
  v8 = [v5 initWithFormat:@"%@<%@>", v6, v7];

  v9 = [(MRAVOutputDevice *)self->_outputDevice debugName];

  if (v9)
  {
    v10 = [(MRAVOutputDevice *)self->_outputDevice debugName];
    [(__CFString *)v8 appendFormat:@" for %@", v10];
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v127 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = [(MRRequestDetails *)self->_details reason];
  [v12 setObject:v13 forKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];

  v14 = [(MRRequestDetails *)self->_details requestID];
  [v12 setObject:v14 forKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];

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
    v19 = [(MRRequestDetails *)self->_details requestID];
    v20 = [v18 initWithFormat:@"%@<%@>", @"ConnectToMRRelay.createConnection", v19];

    v21 = [(MRAVOutputDevice *)self->_outputDevice debugName];

    if (v21)
    {
      v22 = [(MRAVOutputDevice *)self->_outputDevice debugName];
      [(__CFString *)v20 appendFormat:@" for %@", v22];
    }

    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v127 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
    }

    v24 = [v15 createConnectionWithUserInfo:v12];
    v25 = [v24 error];
    if (v24)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v27)
    {
      v28 = [(MRAVOutputDevice *)self->_outputDevice debugName];

      v29 = _MRLogForCategory();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v30)
        {
          v31 = [(MRRequestDetails *)self->_details requestID];
          v32 = [(MRAVOutputDevice *)self->_outputDevice debugName];
          v33 = +[NSDate date];
          [v33 timeIntervalSinceDate:v114];
          *buf = 138544386;
          v127 = @"ConnectToMRRelay.createConnection";
          v128 = 2114;
          v129 = v31;
          v130 = 2112;
          v131 = v24;
          v132 = 2114;
          v133 = v32;
          v134 = 2048;
          v135 = v34;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);
        }
      }

      else if (v30)
      {
        v44 = [(MRRequestDetails *)self->_details requestID];
        v45 = +[NSDate date];
        [v45 timeIntervalSinceDate:v114];
        *buf = 138544130;
        v127 = @"ConnectToMRRelay.createConnection";
        v128 = 2114;
        v129 = v44;
        v130 = 2112;
        v131 = v24;
        v132 = 2048;
        v133 = v46;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
      }
    }

    else
    {
      v35 = [v24 error];

      v36 = [(MRAVOutputDevice *)self->_outputDevice debugName];

      v37 = _MRLogForCategory();
      v29 = v37;
      if (v35)
      {
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          if (v38)
          {
            v39 = [(MRRequestDetails *)self->_details requestID];
            v40 = [v24 error];
            v41 = [(MRAVOutputDevice *)self->_outputDevice debugName];
            v42 = +[NSDate date];
            [v42 timeIntervalSinceDate:v114];
            *buf = 138544386;
            v127 = @"ConnectToMRRelay.createConnection";
            v128 = 2114;
            v129 = v39;
            v130 = 2114;
            v131 = v40;
            v132 = 2114;
            v133 = v41;
            v134 = 2048;
            v135 = v43;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
          }
        }

        else if (v38)
        {
          v52 = [(MRRequestDetails *)self->_details requestID];
          v53 = [v24 error];
          v54 = +[NSDate date];
          [v54 timeIntervalSinceDate:v114];
          *buf = 138544130;
          v127 = @"ConnectToMRRelay.createConnection";
          v128 = 2114;
          v129 = v52;
          v130 = 2114;
          v131 = v53;
          v132 = 2048;
          v133 = v55;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
        }
      }

      else
      {
        v47 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
        if (v36)
        {
          if (v47)
          {
            v48 = [(MRRequestDetails *)self->_details requestID];
            v49 = [(MRAVOutputDevice *)self->_outputDevice debugName];
            v50 = +[NSDate date];
            [v50 timeIntervalSinceDate:v114];
            *buf = 138544130;
            v127 = @"ConnectToMRRelay.createConnection";
            v128 = 2114;
            v129 = v48;
            v130 = 2114;
            v131 = v49;
            v132 = 2048;
            v133 = v51;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
          }
        }

        else if (v47)
        {
          v56 = [(MRRequestDetails *)self->_details requestID];
          v57 = +[NSDate date];
          [v57 timeIntervalSinceDate:v114];
          *buf = 138543874;
          v127 = @"ConnectToMRRelay.createConnection";
          v128 = 2114;
          v129 = v56;
          v130 = 2048;
          v131 = v58;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
        }
      }
    }

    v59 = objc_alloc_init(MRDeviceInfo);
    v60 = [(MRAVOutputDevice *)self->_outputDevice uid];
    [v59 setDeviceUID:v60];

    v61 = [(MRAVOutputDevice *)self->_outputDevice name];
    [v59 setName:v61];

    v62 = [[MRExternalDeviceTransportConnectionHandle alloc] initWithConnection:v24 deviceInfo:v59];
    [(MRDConnectToRelaySecondaryOperation *)self setHandle:v62];

    v120 = 0;
    v121 = &v120;
    v122 = 0x3032000000;
    v123 = sub_1000352AC;
    v124 = sub_100035B0C;
    v125 = 0;
    v63 = [v24 error];

    if (v63)
    {
      v64 = [v24 error];
      v65 = v121[5];
      v121[5] = v64;

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
        v112 = [v67 deviceInfo];

        v68 = [MRConfigureConnectionServiceMessage alloc];
        v69 = [v112 WHAIdentifier];
        v70 = [v112 name];
        v113 = [v68 initWithServiceType:@"MRRelay" sourceOutputDeviceUID:v69 sourceOutputDeviceName:v70];

        v71 = +[NSUUID UUID];
        v72 = [v71 UUIDString];
        [v113 setReplyIdentifier:v72];

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
        v79 = [v113 replyIdentifier];
        [(NSMutableDictionary *)v78 setObject:v77 forKeyedSubscript:v79];

        v110 = +[NSDate now];
        v80 = [NSMutableString alloc];
        v81 = [(MRRequestDetails *)self->_details requestID];
        v82 = [v80 initWithFormat:@"%@<%@>", @"ConnectToMRRelay.configureConnection", v81];

        v83 = [(MRAVOutputDevice *)self->_outputDevice debugName];

        if (v83)
        {
          v84 = [(MRAVOutputDevice *)self->_outputDevice debugName];
          [(__CFString *)v82 appendFormat:@" for %@", v84];
        }

        v85 = _MRLogForCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v127 = v82;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
        }

        v86 = [v113 protobufData];
        [v24 sendTransportData:v86 options:0];

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
          v92 = [(MRAVOutputDevice *)outputDevice debugName];

          if (v92)
          {
            v93 = _MRLogForCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
            {
              v94 = [(MRRequestDetails *)self->_details requestID];
              v95 = v121[5];
              v115 = [(MRAVOutputDevice *)self->_outputDevice debugName];
              v96 = +[NSDate date];
              [v96 timeIntervalSinceDate:v110];
              *buf = 138544386;
              v127 = @"ConnectToMRRelay.configureConnection";
              v128 = 2114;
              v129 = v94;
              v130 = 2114;
              v131 = v95;
              v132 = 2114;
              v133 = v115;
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
              v103 = [(MRRequestDetails *)self->_details requestID];
              v104 = v121[5];
              v105 = +[NSDate date];
              [v105 timeIntervalSinceDate:v110];
              *buf = 138544130;
              v127 = @"ConnectToMRRelay.configureConnection";
              v128 = 2114;
              v129 = v103;
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
          v98 = [(MRAVOutputDevice *)outputDevice debugName];

          if (v98)
          {
            v93 = _MRLogForCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v99 = [(MRRequestDetails *)self->_details requestID];
              v100 = [(MRAVOutputDevice *)self->_outputDevice debugName];
              v101 = +[NSDate date];
              [v101 timeIntervalSinceDate:v110];
              *buf = 138544130;
              v127 = @"ConnectToMRRelay.configureConnection";
              v128 = 2114;
              v129 = v99;
              v130 = 2114;
              v131 = v100;
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
              v107 = [(MRRequestDetails *)self->_details requestID];
              v108 = +[NSDate date];
              [v108 timeIntervalSinceDate:v110];
              *buf = 138543874;
              v127 = @"ConnectToMRRelay.configureConnection";
              v128 = 2114;
              v129 = v107;
              v130 = 2048;
              v131 = v109;
              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
            }
          }
        }

        [v24 removeObserver:self];
        [(MRDConnectToRelaySecondaryOperation *)self finishWithError:v121[5]];

        v66 = v112;
      }
    }

    _Block_object_dispose(&v120, 8);
  }
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v14 = [(MRDConnectToRelaySecondaryOperation *)self handle];

    v15 = [(MRAVOutputDevice *)self->_outputDevice debugName];

    v6 = _MRLogForCategory();
    v16 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v15)
      {
        if (!v16)
        {
          goto LABEL_19;
        }

        v8 = [(MRRequestDetails *)self->_details name];
        v9 = [(MRRequestDetails *)self->_details requestID];
        v10 = [(MRDConnectToRelaySecondaryOperation *)self handle];
        v11 = [(MRAVOutputDevice *)self->_outputDevice debugName];
        v12 = +[NSDate date];
        v17 = [(MRRequestDetails *)self->_details startDate];
        [v12 timeIntervalSinceDate:v17];
        *buf = 138544386;
        v27 = v8;
        v28 = 2114;
        v29 = v9;
        v30 = 2112;
        v31 = v10;
        v32 = 2114;
        v33 = v11;
        v34 = 2048;
        v35 = v18;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);

        goto LABEL_17;
      }

      if (!v16)
      {
        goto LABEL_19;
      }

      v8 = [(MRRequestDetails *)self->_details name];
      v9 = [(MRRequestDetails *)self->_details requestID];
      v10 = [(MRDConnectToRelaySecondaryOperation *)self handle];
      v11 = +[NSDate date];
      v12 = [(MRRequestDetails *)self->_details startDate];
      [v11 timeIntervalSinceDate:v12];
      *buf = 138544130;
      v27 = v8;
      v28 = 2114;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      v32 = 2048;
      v33 = v21;
      v20 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    }

    else
    {
      if (!v15)
      {
        if (v16)
        {
          v8 = [(MRRequestDetails *)self->_details name];
          v9 = [(MRRequestDetails *)self->_details requestID];
          v10 = +[NSDate date];
          v11 = [(MRRequestDetails *)self->_details startDate];
          [v10 timeIntervalSinceDate:v11];
          *buf = 138543874;
          v27 = v8;
          v28 = 2114;
          v29 = v9;
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

      v8 = [(MRRequestDetails *)self->_details name];
      v9 = [(MRRequestDetails *)self->_details requestID];
      v10 = [(MRAVOutputDevice *)self->_outputDevice debugName];
      v11 = +[NSDate date];
      v12 = [(MRRequestDetails *)self->_details startDate];
      [v11 timeIntervalSinceDate:v12];
      *buf = 138544130;
      v27 = v8;
      v28 = 2114;
      v29 = v9;
      v30 = 2114;
      v31 = v10;
      v32 = 2048;
      v33 = v19;
      v20 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    }

    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v20, buf, 0x2Au);
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  v5 = [(MRAVOutputDevice *)self->_outputDevice debugName];

  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = [(MRRequestDetails *)self->_details name];
    v9 = [(MRRequestDetails *)self->_details requestID];
    v10 = [(MRAVOutputDevice *)self->_outputDevice debugName];
    v11 = +[NSDate date];
    v12 = [(MRRequestDetails *)self->_details startDate];
    [v11 timeIntervalSinceDate:v12];
    *buf = 138544386;
    v27 = v8;
    v28 = 2114;
    v29 = v9;
    v30 = 2114;
    v31 = v4;
    v32 = 2114;
    v33 = v10;
    v34 = 2048;
    v35 = v13;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_17;
  }

  if (v7)
  {
    sub_1003B0A5C(self, v4, v6);
  }

LABEL_19:

  v25.receiver = self;
  v25.super_class = MRDConnectToRelaySecondaryOperation;
  [(MRDConnectToRelaySecondaryOperation *)&v25 finishWithError:v4];
  v22 = [(MRDConnectToRelaySecondaryOperation *)self completionBlock];

  if (v22)
  {
    v23 = [(MRDConnectToRelaySecondaryOperation *)self completionBlock];
    v23[2]();
  }
}

- (void)setHandle:(id)a3
{
  v4 = a3;
  handle = self->_handle;
  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (handle)
  {
    if (v7)
    {
      v8 = [(MRRequestDetails *)self->_details requestReasonID];
      v9 = self->_handle;
      v14 = 138544130;
      v15 = v8;
      v16 = 2114;
      v17 = @"connection";
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v4;
      v10 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
      v11 = v6;
      v12 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  else if (v7)
  {
    v8 = [(MRRequestDetails *)self->_details requestReasonID];
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = @"connection";
    v18 = 2112;
    v19 = v4;
    v10 = "Set: %{public}@ setting %{public}@ to <%@>";
    v11 = v6;
    v12 = 32;
    goto LABEL_6;
  }

  v13 = self->_handle;
  self->_handle = v4;
}

- (void)transport:(id)a3 didReceiveData:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [MRProtocolMessage protocolMessageWithProtobufData:v6 error:0];
  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = v8;
    objc_sync_enter(v9);
    pendingConfigureConnectionReplies = v9->_pendingConfigureConnectionReplies;
    v11 = [v7 replyIdentifier];
    v12 = [(NSMutableDictionary *)pendingConfigureConnectionReplies objectForKeyedSubscript:v11];

    objc_sync_exit(v9);
    if (v12)
    {
      (v12)[2](v12, v7);
    }

    objc_sync_exit(v9);
  }
}

@end