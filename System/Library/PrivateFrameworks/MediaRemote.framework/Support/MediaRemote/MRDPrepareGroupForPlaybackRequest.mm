@interface MRDPrepareGroupForPlaybackRequest
+ (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)ds nowPlayingClient:(id)client timeout:(double)timeout details:(id)details completion:(id)completion;
- (void)_anyOutputDeviceSupportsMusicRemoteSetQueue:(id)queue details:(id)details completion:(id)completion;
- (void)_supportsRemoteSetQueueForOutputDeviceUIDs:(id)ds client:(id)client details:(id)details completion:(id)completion;
- (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)ds nowPlayingClient:(id)client timeout:(double)timeout details:(id)details completion:(id)completion;
@end

@implementation MRDPrepareGroupForPlaybackRequest

+ (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)ds nowPlayingClient:(id)client timeout:(double)timeout details:(id)details completion:(id)completion
{
  dsCopy = ds;
  clientCopy = client;
  detailsCopy = details;
  completionCopy = completion;
  v15 = +[NSDate now];
  clientCopy = [NSString stringWithFormat:@"UIDs=(%@), bundleID=%@", dsCopy, clientCopy];
  v17 = [NSMutableString alloc];
  requestID = [detailsCopy requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"MRDPrepareGroupForPlaybackRequest.prepareGroupForPlaybackWithOutputDeviceUIDs", requestID];

  if (clientCopy)
  {
    [v19 appendFormat:@" for %@", clientCopy];
  }

  reason = [detailsCopy reason];

  if (reason)
  {
    reason2 = [detailsCopy reason];
    [v19 appendFormat:@" because %@", reason2];
  }

  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v23 = objc_alloc_init(MRDPrepareGroupForPlaybackRequest);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10013A19C;
  v27[3] = &unk_1004B8108;
  v28 = @"MRDPrepareGroupForPlaybackRequest.prepareGroupForPlaybackWithOutputDeviceUIDs";
  v29 = detailsCopy;
  v30 = v15;
  v31 = completionCopy;
  v24 = completionCopy;
  v25 = v15;
  v26 = detailsCopy;
  [(MRDPrepareGroupForPlaybackRequest *)v23 prepareGroupForPlaybackWithOutputDeviceUIDs:dsCopy nowPlayingClient:clientCopy timeout:v26 details:v27 completion:timeout];
}

- (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)ds nowPlayingClient:(id)client timeout:(double)timeout details:(id)details completion:(id)completion
{
  dsCopy = ds;
  clientCopy = client;
  detailsCopy = details;
  completionCopy = completion;
  v16 = [MRBlockGuard alloc];
  requestReasonID = [detailsCopy requestReasonID];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10013A748;
  v50[3] = &unk_1004B6FE8;
  v18 = completionCopy;
  v51 = v18;
  v19 = [v16 initWithTimeout:requestReasonID reason:v50 handler:timeout];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10013A760;
  v47[3] = &unk_1004B7BA0;
  v20 = v19;
  v48 = v20;
  v21 = v18;
  v49 = v21;
  v22 = objc_retainBlock(v47);
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = sub_10003516C;
  v45[4] = sub_100035A6C;
  v46 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10013A7D8;
  v41[3] = &unk_1004BE5C0;
  v23 = detailsCopy;
  v42 = v23;
  v24 = dsCopy;
  v43 = v24;
  v44 = v45;
  v25 = objc_retainBlock(v41);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10013AA44;
  v36[3] = &unk_1004BE638;
  v26 = v24;
  v37 = v26;
  timeoutCopy = timeout;
  v27 = v23;
  v38 = v27;
  v39 = v45;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10013AD40;
  v31[3] = &unk_1004BE688;
  v28 = objc_retainBlock(v36);
  v32 = v28;
  v29 = v25;
  v33 = v29;
  v30 = v22;
  v34 = v30;
  v35 = v45;
  [(MRDPrepareGroupForPlaybackRequest *)self _supportsRemoteSetQueueForOutputDeviceUIDs:v26 client:clientCopy details:v27 completion:v31];

  _Block_object_dispose(v45, 8);
}

- (void)_supportsRemoteSetQueueForOutputDeviceUIDs:(id)ds client:(id)client details:(id)details completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  completionCopy = completion;
  clientCopy = client;
  bundleIdentifier = [clientCopy bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  bundleIdentifier2 = [clientCopy bundleIdentifier];

  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();
  if ((IsSystemMediaApplication & 1) != 0 || IsSystemPodcastApplication)
  {
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      requestID = [detailsCopy requestID];
      *buf = 138543874;
      v24 = @"MRDPrepareGroupForPlaybackRequest.prepareGroupForPlaybackWithOutputDeviceUIDs";
      v25 = 2114;
      v26 = requestID;
      v27 = 2112;
      v28 = @"App supports RemoteSetQueue";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    if (IsSystemMediaApplication)
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10013B070;
      v20[3] = &unk_1004BE6B0;
      v21 = detailsCopy;
      v22 = completionCopy;
      [(MRDPrepareGroupForPlaybackRequest *)self _anyOutputDeviceSupportsMusicRemoteSetQueue:dsCopy details:v21 completion:v20];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_anyOutputDeviceSupportsMusicRemoteSetQueue:(id)queue details:(id)details completion:(id)completion
{
  completionCopy = completion;
  detailsCopy = details;
  queueCopy = queue;
  v10 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  [v10 setCachedDiscoveryEnabled:1];
  v11 = qos_class_self();
  v12 = dispatch_get_global_queue(v11, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013B2D8;
  v14[3] = &unk_1004BE6F8;
  v15 = completionCopy;
  v13 = completionCopy;
  [v10 searchOutputDeviceUIDs:queueCopy matchingPredicate:&stru_1004BE6D0 timeout:detailsCopy details:v12 queue:v14 completion:3.0];
}

@end