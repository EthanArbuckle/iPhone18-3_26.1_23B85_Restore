@interface NDOOutreachActivityUtilities
- (void)performOutreachActivityForActivityID:(id)d withScheduler:(id)scheduler andCompletion:(id)completion;
@end

@implementation NDOOutreachActivityUtilities

- (void)performOutreachActivityForActivityID:(id)d withScheduler:(id)scheduler andCompletion:(id)completion
{
  dCopy = d;
  schedulerCopy = scheduler;
  completionCopy = completion;
  [(NDOOutreachActivityUtilities *)self setOutreachInProgress:1];
  objc_initWeak(&location, self);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000197F0;
  v39[3] = &unk_10009AE88;
  objc_copyWeak(&v43, &location);
  v11 = schedulerCopy;
  v40 = v11;
  v12 = dCopy;
  v41 = v12;
  v13 = completionCopy;
  v42 = v13;
  v14 = [NSTimer timerWithTimeInterval:1 repeats:v39 block:2000000000.0];
  [(NDOOutreachActivityUtilities *)self setOutReachTimer:v14];

  v15 = +[NSRunLoop mainRunLoop];
  outReachTimer = [(NDOOutreachActivityUtilities *)self outReachTimer];
  [v15 addTimer:outReachTimer forMode:NSDefaultRunLoopMode];

  v17 = +[NDODeviceProvider sharedProvider];
  primaryFUPEligibleDevices = [v17 primaryFUPEligibleDevices];
  allValues = [primaryFUPEligibleDevices allValues];

  v20 = _NDOLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[NDOOutreachActivityUtilities performOutreachActivityForActivityID:withScheduler:andCompletion:]";
    *&buf[12] = 2114;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v46 = allValues;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: -- Activity: %{public}@ -- devices: %@", buf, 0x20u);
  }

  v21 = dispatch_group_create();
  v22 = [[NDOWarrantyDownloader alloc] initWithCallingProcessBundleID:v12];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = sub_100001F2C;
  v47 = sub_100003F9C;
  v48 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000198FC;
  v34[3] = &unk_10009AED8;
  v23 = v21;
  v35 = v23;
  v24 = v22;
  v36 = v24;
  v25 = v12;
  v37 = v25;
  v38 = buf;
  [allValues enumerateObjectsUsingBlock:v34];
  v26 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019CE4;
  block[3] = &unk_10009AF00;
  objc_copyWeak(&v33, &location);
  v31 = v13;
  v32 = buf;
  v30 = v25;
  v27 = v13;
  v28 = v25;
  dispatch_group_notify(v23, v26, block);

  objc_destroyWeak(&v33);
  _Block_object_dispose(buf, 8);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

@end