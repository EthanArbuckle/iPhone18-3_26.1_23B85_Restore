@interface MRDPrepareGroupForPlaybackRequest
+ (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)a3 nowPlayingClient:(id)a4 timeout:(double)a5 details:(id)a6 completion:(id)a7;
- (void)_anyOutputDeviceSupportsMusicRemoteSetQueue:(id)a3 details:(id)a4 completion:(id)a5;
- (void)_supportsRemoteSetQueueForOutputDeviceUIDs:(id)a3 client:(id)a4 details:(id)a5 completion:(id)a6;
- (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)a3 nowPlayingClient:(id)a4 timeout:(double)a5 details:(id)a6 completion:(id)a7;
@end

@implementation MRDPrepareGroupForPlaybackRequest

+ (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)a3 nowPlayingClient:(id)a4 timeout:(double)a5 details:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = +[NSDate now];
  v16 = [NSString stringWithFormat:@"UIDs=(%@), bundleID=%@", v11, v12];
  v17 = [NSMutableString alloc];
  v18 = [v13 requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"MRDPrepareGroupForPlaybackRequest.prepareGroupForPlaybackWithOutputDeviceUIDs", v18];

  if (v16)
  {
    [v19 appendFormat:@" for %@", v16];
  }

  v20 = [v13 reason];

  if (v20)
  {
    v21 = [v13 reason];
    [v19 appendFormat:@" because %@", v21];
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
  v29 = v13;
  v30 = v15;
  v31 = v14;
  v24 = v14;
  v25 = v15;
  v26 = v13;
  [(MRDPrepareGroupForPlaybackRequest *)v23 prepareGroupForPlaybackWithOutputDeviceUIDs:v11 nowPlayingClient:v12 timeout:v26 details:v27 completion:a5];
}

- (void)prepareGroupForPlaybackWithOutputDeviceUIDs:(id)a3 nowPlayingClient:(id)a4 timeout:(double)a5 details:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [MRBlockGuard alloc];
  v17 = [v14 requestReasonID];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10013A748;
  v50[3] = &unk_1004B6FE8;
  v18 = v15;
  v51 = v18;
  v19 = [v16 initWithTimeout:v17 reason:v50 handler:a5];

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
  v23 = v14;
  v42 = v23;
  v24 = v12;
  v43 = v24;
  v44 = v45;
  v25 = objc_retainBlock(v41);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10013AA44;
  v36[3] = &unk_1004BE638;
  v26 = v24;
  v37 = v26;
  v40 = a5;
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
  [(MRDPrepareGroupForPlaybackRequest *)self _supportsRemoteSetQueueForOutputDeviceUIDs:v26 client:v13 details:v27 completion:v31];

  _Block_object_dispose(v45, 8);
}

- (void)_supportsRemoteSetQueueForOutputDeviceUIDs:(id)a3 client:(id)a4 details:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [v13 bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  v16 = [v13 bundleIdentifier];

  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();
  if ((IsSystemMediaApplication & 1) != 0 || IsSystemPodcastApplication)
  {
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 requestID];
      *buf = 138543874;
      v24 = @"MRDPrepareGroupForPlaybackRequest.prepareGroupForPlaybackWithOutputDeviceUIDs";
      v25 = 2114;
      v26 = v19;
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
      v21 = v11;
      v22 = v12;
      [(MRDPrepareGroupForPlaybackRequest *)self _anyOutputDeviceSupportsMusicRemoteSetQueue:v10 details:v21 completion:v20];
    }

    else
    {
      (*(v12 + 2))(v12, 1);
    }
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }
}

- (void)_anyOutputDeviceSupportsMusicRemoteSetQueue:(id)a3 details:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  [v10 setCachedDiscoveryEnabled:1];
  v11 = qos_class_self();
  v12 = dispatch_get_global_queue(v11, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10013B2D8;
  v14[3] = &unk_1004BE6F8;
  v15 = v7;
  v13 = v7;
  [v10 searchOutputDeviceUIDs:v9 matchingPredicate:&stru_1004BE6D0 timeout:v8 details:v12 queue:v14 completion:3.0];
}

@end