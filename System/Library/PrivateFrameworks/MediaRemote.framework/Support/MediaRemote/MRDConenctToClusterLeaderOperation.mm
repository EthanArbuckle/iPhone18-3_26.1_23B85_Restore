@interface MRDConenctToClusterLeaderOperation
- (MRDConenctToClusterLeaderOperation)initWithClusterLeaderID:(id)a3;
- (void)execute;
- (void)finishWithError:(id)a3;
- (void)setEndpoint:(id)a3;
@end

@implementation MRDConenctToClusterLeaderOperation

- (MRDConenctToClusterLeaderOperation)initWithClusterLeaderID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRDConenctToClusterLeaderOperation;
  v6 = [(MRDConenctToClusterLeaderOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clusterLeaderID, a3);
  }

  return v7;
}

- (void)execute
{
  v3 = [[MRRequestDetails alloc] initWithName:@"create remoteControlConnection to clusterLeader" requestID:0 reason:@"PreemptiveRemoteControlConnectionManager.conenctToClusterLeaderOperation"];
  details = self->_details;
  self->_details = v3;

  v5 = [NSMutableString alloc];
  v6 = [(MRRequestDetails *)self->_details reason];
  v7 = [(MRRequestDetails *)self->_details requestID];
  v8 = [v5 initWithFormat:@"%@<%@>", v6, v7];

  if (self->_clusterLeaderID)
  {
    [v8 appendFormat:@" for %@", self->_clusterLeaderID];
  }

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v10 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  clusterLeaderID = self->_clusterLeaderID;
  v12 = self->_details;
  v13 = dispatch_get_global_queue(0, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10019A00C;
  v14[3] = &unk_1004BD478;
  v14[4] = self;
  [v10 searchEndpointsForOutputDeviceUID:clusterLeaderID timeout:v12 details:v13 queue:v14 completion:30.0];
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1003AFD54(self);
    }
  }

  else
  {
    v6 = [(MRDConenctToClusterLeaderOperation *)self endpoint];
    v7 = [v6 debugName];

    v5 = _MRLogForCategory();
    v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v9 = [(MRRequestDetails *)self->_details reason];
      v10 = [(MRRequestDetails *)self->_details requestID];
      v11 = [(MRDConenctToClusterLeaderOperation *)self endpoint];
      v12 = [v11 debugName];
      v13 = +[NSDate date];
      v14 = [(MRRequestDetails *)self->_details startDate];
      [v13 timeIntervalSinceDate:v14];
      *buf = 138544130;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      v24 = 2112;
      v25 = v12;
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

      v9 = [(MRRequestDetails *)self->_details reason];
      v10 = [(MRRequestDetails *)self->_details requestID];
      v11 = +[NSDate date];
      v12 = [(MRRequestDetails *)self->_details startDate];
      [v11 timeIntervalSinceDate:v12];
      *buf = 138543874;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      v24 = 2048;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }
  }

LABEL_10:

  v19.receiver = self;
  v19.super_class = MRDConenctToClusterLeaderOperation;
  [(MRDConenctToClusterLeaderOperation *)&v19 finishWithError:v4];
  v17 = [(MRDConenctToClusterLeaderOperation *)self completionBlock];

  if (v17)
  {
    v18 = [(MRDConenctToClusterLeaderOperation *)self completionBlock];
    v18[2]();
  }
}

- (void)setEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(MRAVEndpoint *)self->_endpoint debugName];

  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(MRRequestDetails *)self->_details requestReasonID];
      v9 = [(MRAVEndpoint *)self->_endpoint debugName];
      v10 = [v4 debugName];
      v12 = 138544130;
      v13 = v8;
      v14 = 2114;
      v15 = @"endpoint";
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v12, 0x2Au);

LABEL_6:
    }
  }

  else if (v7)
  {
    v8 = [(MRRequestDetails *)self->_details requestReasonID];
    v9 = [v4 debugName];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = @"endpoint";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
    goto LABEL_6;
  }

  endpoint = self->_endpoint;
  self->_endpoint = v4;
}

@end