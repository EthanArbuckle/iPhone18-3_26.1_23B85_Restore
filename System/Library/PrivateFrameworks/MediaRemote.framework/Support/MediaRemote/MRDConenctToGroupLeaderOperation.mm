@interface MRDConenctToGroupLeaderOperation
- (MRDConenctToGroupLeaderOperation)initWithGroupID:(id)d;
- (void)execute;
- (void)finishWithError:(id)error;
- (void)setEndpoint:(id)endpoint;
@end

@implementation MRDConenctToGroupLeaderOperation

- (MRDConenctToGroupLeaderOperation)initWithGroupID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MRDConenctToGroupLeaderOperation;
  v6 = [(MRDConenctToGroupLeaderOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupID, d);
  }

  return v7;
}

- (void)execute
{
  v3 = [[MRRequestDetails alloc] initWithName:@"create remoteControlConnection to groupLeader" requestID:0 reason:@"PreemptiveRemoteControlConnectionManager.conenctToGroupLeaderOperation"];
  details = self->_details;
  self->_details = v3;

  v5 = [NSMutableString alloc];
  reason = [(MRRequestDetails *)self->_details reason];
  requestID = [(MRRequestDetails *)self->_details requestID];
  v8 = [v5 initWithFormat:@"%@<%@>", reason, requestID];

  if (self->_groupID)
  {
    [v8 appendFormat:@" for %@", self->_groupID];
  }

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v10 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  groupID = self->_groupID;
  requestReasonID = [(MRRequestDetails *)self->_details requestReasonID];
  v13 = dispatch_get_global_queue(0, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100199664;
  v14[3] = &unk_1004BD478;
  v14[4] = self;
  [v10 searchEndpointsForGroupUID:groupID timeout:requestReasonID reason:v13 queue:v14 completion:30.0];
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003AFC58(self);
    }
  }

  else
  {
    endpoint = [(MRDConenctToGroupLeaderOperation *)self endpoint];
    debugName = [endpoint debugName];

    v5 = _MRLogForCategory();
    v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (debugName)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      reason = [(MRRequestDetails *)self->_details reason];
      requestID = [(MRRequestDetails *)self->_details requestID];
      endpoint2 = [(MRDConenctToGroupLeaderOperation *)self endpoint];
      debugName2 = [endpoint2 debugName];
      v13 = +[NSDate date];
      startDate = [(MRRequestDetails *)self->_details startDate];
      [v13 timeIntervalSinceDate:startDate];
      *buf = 138544130;
      v21 = reason;
      v22 = 2114;
      v23 = requestID;
      v24 = 2112;
      v25 = debugName2;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      reason = [(MRRequestDetails *)self->_details reason];
      requestID = [(MRRequestDetails *)self->_details requestID];
      endpoint2 = +[NSDate date];
      debugName2 = [(MRRequestDetails *)self->_details startDate];
      [endpoint2 timeIntervalSinceDate:debugName2];
      *buf = 138543874;
      v21 = reason;
      v22 = 2114;
      v23 = requestID;
      v24 = 2048;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }
  }

LABEL_10:

  v19.receiver = self;
  v19.super_class = MRDConenctToGroupLeaderOperation;
  [(MRDConenctToGroupLeaderOperation *)&v19 finishWithError:errorCopy];
  completionBlock = [(MRDConenctToGroupLeaderOperation *)self completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(MRDConenctToGroupLeaderOperation *)self completionBlock];
    completionBlock2[2]();
  }
}

- (void)setEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  debugName = [(MRAVEndpoint *)self->_endpoint debugName];

  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (debugName)
  {
    if (v7)
    {
      requestReasonID = [(MRRequestDetails *)self->_details requestReasonID];
      debugName2 = [(MRAVEndpoint *)self->_endpoint debugName];
      debugName3 = [endpointCopy debugName];
      v12 = 138544130;
      v13 = requestReasonID;
      v14 = 2114;
      v15 = @"endpoint";
      v16 = 2112;
      v17 = debugName2;
      v18 = 2112;
      v19 = debugName3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v12, 0x2Au);

LABEL_6:
    }
  }

  else if (v7)
  {
    requestReasonID = [(MRRequestDetails *)self->_details requestReasonID];
    debugName2 = [endpointCopy debugName];
    v12 = 138543874;
    v13 = requestReasonID;
    v14 = 2114;
    v15 = @"endpoint";
    v16 = 2112;
    v17 = debugName2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
    goto LABEL_6;
  }

  endpoint = self->_endpoint;
  self->_endpoint = endpointCopy;
}

@end