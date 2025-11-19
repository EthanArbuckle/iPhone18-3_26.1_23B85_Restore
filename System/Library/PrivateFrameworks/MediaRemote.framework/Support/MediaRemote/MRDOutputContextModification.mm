@interface MRDOutputContextModification
+ (id)_modifyPredictedOutputDevicesWithRequest:(id)a3 outputContext:(id)a4;
- (MRDOutputContextModification)initWithRequest:(id)a3;
- (void)modifyWithOutputContext:(id)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation MRDOutputContextModification

- (MRDOutputContextModification)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRDOutputContextModification;
  v6 = [(MRDOutputContextModification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (void)modifyWithOutputContext:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v43 = a4;
  v9 = a5;
  v10 = +[NSDate date];
  v11 = [(MRGroupTopologyModificationRequest *)self->_request requestDetails];
  v12 = [v11 requestID];

  v13 = [(MRGroupTopologyModificationRequest *)self->_request shouldModifyPredictedRoutes];
  v14 = @"modifyOutputContext";
  if (v13)
  {
    v14 = @"modifyPredictedOutputDevices";
  }

  v15 = v14;
  v16 = qos_class_self();
  v17 = [NSString alloc];
  v18 = [v8 contextID];
  v19 = [v17 initWithFormat:@"%@, contextID=%@", self, v18];

  v20 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", v15, v12];
  v21 = v20;
  if (v19)
  {
    [v20 appendFormat:@" for %@", v19];
  }

  v45 = v19;
  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10018F674;
  v50[3] = &unk_1004BF2B8;
  v57 = v16;
  v23 = v15;
  v51 = v23;
  v24 = v12;
  v52 = v24;
  v25 = v8;
  v53 = v25;
  v26 = v10;
  v54 = v26;
  v27 = v9;
  v56 = v27;
  v28 = v43;
  v55 = v28;
  v29 = objc_retainBlock(v50);
  v30 = [(MRDOutputContextModification *)self request];
  v31 = [v30 shouldModifyPredictedRoutes];

  if (v31)
  {
    v32 = objc_opt_class();
    v33 = [(MRDOutputContextModification *)self request];
    v34 = [v32 _modifyPredictedOutputDevicesWithRequest:v33 outputContext:v25];

    (v29[2])(v29, v34);
  }

  else
  {
    v35 = [v25 outputDevices];
    v44 = [v35 count];

    v36 = [(MRDOutputContextModification *)self request];
    v37 = [v36 shouldClearPredictedRoutes];

    if (v37)
    {
      sub_1003ACA2C(self, v25);
      v38 = [MRGroupTopologyModificationRequest alloc];
      v42 = [(MRDOutputContextModification *)self request];
      v39 = [v42 requestDetails];
      v40 = [v38 initWithRequestDetails:v39 type:3 outputDevices:&__NSArray0__struct];

      v41 = [objc_opt_class() _modifyPredictedOutputDevicesWithRequest:v40 outputContext:v25];
    }

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10018FA40;
    v46[3] = &unk_1004C05C8;
    v48 = v29;
    v46[4] = self;
    v47 = v26;
    v49 = v44;
    sub_1003ACD74(self, v25, v28, v46);

    v34 = v48;
  }
}

+ (id)_modifyPredictedOutputDevicesWithRequest:(id)a3 outputContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MRUserSettings currentSettings];
  v8 = [v7 supportPredictedRoutes];

  if ((v8 & 1) == 0)
  {
    v25 = [[NSError alloc] initWithMRError:132];
    goto LABEL_31;
  }

  v44 = +[NSDate now];
  v9 = [v5 requestDetails];
  v10 = [v9 requestID];

  v11 = [v5 type];
  v12 = [NSString alloc];
  v13 = MRGroupTopologyModificationRequestTypeDescription();
  v14 = [v12 initWithFormat:@"%@PredictedOutputDevices", v13];

  v15 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", v14, v10];
  v16 = [v5 requestDetails];
  v17 = [v16 reason];

  if (v17)
  {
    v18 = [v5 requestDetails];
    v19 = [v18 reason];
    [v15 appendFormat:@" for %@", v19];
  }

  v20 = _MRLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if ([v6 type] != 1)
  {
    v26 = [[NSError alloc] initWithMRError:32];
    goto LABEL_24;
  }

  v21 = [v5 outputDeviceUIDs];
  v22 = [v6 predictedOutputDeviceUIDs];
  v23 = v22;
  v43 = v21;
  if (v11 == 1)
  {
    v27 = [v22 arrayByAddingObjectsFromArray:v21];
  }

  else
  {
    if (v11 != 3)
    {
      if (v11 == 2)
      {
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100190104;
        v45[3] = &unk_1004B90C8;
        v46 = v21;
        v24 = [v23 msv_filter:v45];
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_17;
    }

    v27 = v21;
  }

  v24 = v27;
LABEL_17:
  v28 = [[NSString alloc] initWithFormat:@"Setting predictedOutputDevices: <%@>", v24];
  v29 = _MRLogForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v48 = v14;
    v49 = 2114;
    v50 = v10;
    v51 = 2112;
    v52 = v28;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v42 = v28;

  v30 = [[NSString alloc] initWithFormat:@"Existing predictedOutputDevices: <%@>", v23];
  v31 = _MRLogForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v48 = v14;
    v49 = 2114;
    v50 = v10;
    v51 = 2112;
    v52 = v30;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v26 = [[NSError alloc] initWithMRError:132];
  v32 = [NSString alloc];
  v33 = [v6 predictedOutputDeviceUIDs];
  v34 = [v32 initWithFormat:@"Final predictedOutputDevices: <%@>", v33];

  v35 = _MRLogForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v48 = v14;
    v49 = 2114;
    v50 = v10;
    v51 = 2112;
    v52 = v34;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

LABEL_24:
  v36 = _MRLogForCategory();
  v37 = v36;
  if (v26)
  {
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = +[NSDate date];
      [v38 timeIntervalSinceDate:v44];
      *buf = 138544130;
      v48 = v14;
      v49 = 2114;
      v50 = v10;
      v51 = 2114;
      v52 = v26;
      v53 = 2048;
      v54 = v39;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
LABEL_29:
    }
  }

  else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v38 = +[NSDate date];
    [v38 timeIntervalSinceDate:v44];
    *buf = 138543874;
    v48 = v14;
    v49 = 2114;
    v50 = v10;
    v51 = 2048;
    v52 = v40;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    goto LABEL_29;
  }

  v25 = v26;
LABEL_31:

  return v25;
}

@end