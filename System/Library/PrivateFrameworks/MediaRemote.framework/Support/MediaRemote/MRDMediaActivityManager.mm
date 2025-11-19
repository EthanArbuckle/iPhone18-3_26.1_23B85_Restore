@interface MRDMediaActivityManager
+ (MRDMediaActivityManager)manager;
- (BOOL)isPresentingBanner;
- (BOOL)isPresentingConnectedPill;
- (BOOL)presentingConnectedPillFor:(id)a3;
- (MRDMediaActivityManager)init;
- (MRRouteBannerRequest)activePillRequest;
- (MRRouteBannerRequest)activeRequest;
- (id)staticRequestForRoute:(id)a3 devices:(id)a4;
- (void)bannerWithRequestIdentifier:(id)a3 didReceiveEvent:(unint64_t)a4;
- (void)dequeueNextPendingRequest;
- (void)dismissAllBannerRequests;
- (void)dismissBannerRequest:(id)a3;
- (void)dismissConnectedBanner;
- (void)dismissPillBannerRequest:(id)a3;
- (void)enqueueRequest:(id)a3 completion:(id)a4;
- (void)postAutoRouteBannerRequestForRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 completion:(id)a6;
- (void)postBannerRequest:(id)a3 completion:(id)a4;
- (void)postCarPlayVideoConnectedBannerRequestWithCompletion:(id)a3;
- (void)postConnectedBannerRequestForRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 remoteControl:(BOOL)a6 completion:(id)a7;
- (void)postDeltaBannerRequestForRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 activeSystemEndpoint:(id)a6 completion:(id)a7;
- (void)postOneTapSuggestionBannerRequestForRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 completion:(id)a6;
- (void)postPillBannerRequest:(id)a3 completion:(id)a4;
- (void)presentControlCenterCallToActionVideo:(BOOL)a3 completion:(id)a4;
- (void)setActivePillRequest:(id)a3;
- (void)setActiveRequest:(id)a3;
@end

@implementation MRDMediaActivityManager

- (BOOL)isPresentingConnectedPill
{
  v2 = [(MRDMediaActivityManager *)self activePillRequest];
  v3 = v2 != 0;

  return v3;
}

- (MRRouteBannerRequest)activePillRequest
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activePillRequest;
  objc_sync_exit(v2);

  return v3;
}

+ (MRDMediaActivityManager)manager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9F84;
  block[3] = &unk_1004B82A0;
  block[4] = a1;
  if (qword_100529728 != -1)
  {
    dispatch_once(&qword_100529728, block);
  }

  v2 = qword_100529720;

  return v2;
}

- (BOOL)isPresentingBanner
{
  v2 = [(MRDMediaActivityManager *)self activeRequest];
  v3 = v2 != 0;

  return v3;
}

- (MRRouteBannerRequest)activeRequest
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activeRequest;
  objc_sync_exit(v2);

  return v3;
}

- (void)dismissAllBannerRequests
{
  v3 = [(MRDMediaActivityManager *)self activeRequest];

  if (v3)
  {
    v4 = [(MRDMediaActivityManager *)self activeRequest];
    [(MRDMediaActivityManager *)self dismissBannerRequest:v4];
  }
}

- (MRDMediaActivityManager)init
{
  v10.receiver = self;
  v10.super_class = MRDMediaActivityManager;
  v2 = [(MRDMediaActivityManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v3;

    v5 = [[MRDBannerCenter alloc] initWithDelegate:v2];
    [(MRDMediaActivityManager *)v2 setBannerCenter:v5];

    v6 = [[MRDBannerCenter alloc] initWithDelegate:v2];
    [(MRDMediaActivityManager *)v2 setPillCenter:v6];

    v7 = [MRDStatusItemController controllerForStatusItemIdentifier:@"com.apple.mediaremoted.status-item.call-to-action.audio-route"];
    [(MRDMediaActivityManager *)v2 setAudioStatusItemController:v7];

    v8 = [MRDStatusItemController controllerForStatusItemIdentifier:@"com.apple.mediaremoted.status-item.call-to-action.video-route"];
    [(MRDMediaActivityManager *)v2 setVideoStatusItemController:v8];
  }

  return v2;
}

- (void)setActiveRequest:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  activeRequest = obj->_activeRequest;
  obj->_activeRequest = v4;

  objc_sync_exit(obj);
}

- (void)setActivePillRequest:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  activePillRequest = obj->_activePillRequest;
  obj->_activePillRequest = v4;

  objc_sync_exit(obj);
}

- (void)postPillBannerRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MRDMediaActivityManager *)self setActivePillRequest:v7];
  [(MRDMediaActivityManager *)self setPillCompletion:v6];

  v8 = [(MRDMediaActivityManager *)self pillCenter];
  [v8 postBannerRequest:v7];
}

- (void)postBannerRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MRDMediaActivityManager *)self setActiveRequest:v7];
  [(MRDMediaActivityManager *)self setCompletion:v6];

  v8 = [(MRDMediaActivityManager *)self bannerCenter];
  [v8 postBannerRequest:v7];
}

- (void)postDeltaBannerRequestForRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 activeSystemEndpoint:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [(MRDMediaActivityManager *)self activeRequest];

  if (v15)
  {
    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(MRDMediaActivityManager *)self activeRequest];
      v23 = 138412290;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting %@, bailing out", &v23, 0xCu);
    }

    if (v14)
    {
      v18 = [NSError errorWithDomain:@"MRBannerErrorDomain" code:1 userInfo:0];
      v14[2](v14, 0, v18);
    }
  }

  else
  {
    v19 = [(MRDMediaActivityManager *)self staticRequestForRoute:v11 devices:v12];
    [v19 setBannerType:4];
    v20 = [v13 outputDevices];
    v21 = [v20 msv_compactMap:&stru_1004C1A10];
    v22 = [v19 staticRequest];
    [v22 setUserSelectedDeviceNames:v21];

    [(MRDMediaActivityManager *)self postBannerRequest:v19 completion:v14];
  }
}

- (void)postOneTapSuggestionBannerRequestForRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MRDMediaActivityManager *)self activeRequest];

  if (v12)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MRDMediaActivityManager *)self activeRequest];
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting %@, bailing out", &v17, 0xCu);
    }

    if (v11)
    {
      v15 = [NSError errorWithDomain:@"MRBannerErrorDomain" code:1 userInfo:0];
      v11[2](v11, 0, v15);
    }
  }

  else
  {
    v16 = [(MRDMediaActivityManager *)self staticRequestForRoute:v9 devices:v10];
    [(MRDMediaActivityManager *)self postBannerRequest:v16 completion:v11];
  }
}

- (void)postAutoRouteBannerRequestForRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(MRDMediaActivityManager *)self activeRequest];

  if (v12)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MRDMediaActivityManager *)self activeRequest];
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting %@, bailing out", &v17, 0xCu);
    }

    if (v11)
    {
      v15 = [NSError errorWithDomain:@"MRBannerErrorDomain" code:1 userInfo:0];
      v11[2](v11, 0, v15);
    }
  }

  else
  {
    v16 = [(MRDMediaActivityManager *)self staticRequestForRoute:v9 devices:v10];
    [v16 setBannerType:1];
    [(MRDMediaActivityManager *)self postBannerRequest:v16 completion:v11];
  }
}

- (void)postCarPlayVideoConnectedBannerRequestWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MRDMediaActivityManager *)self activeRequest];

  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MRDMediaActivityManager *)self activeRequest];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting %@, bailing out", &v11, 0xCu);
    }

    if (v4)
    {
      v8 = [NSError errorWithDomain:@"MRBannerErrorDomain" code:1 userInfo:0];
      v4[2](v4, 0, v8);
    }
  }

  else
  {
    v9 = objc_alloc_init(MRStaticRouteBannerRequest);
    [v9 setRouteIdentifier:@"CARPLAY-VIDEO"];
    [v9 setRouteSymbolName:@"carplay"];
    [v9 setRouteName:@"AirPlay"];
    v10 = [MRRouteBannerRequest requestWithStaticRequest:v9];
    [v10 setBannerType:5];
    [(MRDMediaActivityManager *)self postBannerRequest:v10 completion:v4];
  }
}

- (void)enqueueRequest:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MRRouteBannerRequestQueueItem);
  [(MRRouteBannerRequestQueueItem *)v7 setRequest:v10];
  [(MRRouteBannerRequestQueueItem *)v7 setCompletion:v6];
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(MRDMediaActivityManager *)v8 pendingRequests];
  [v9 addObject:v7];

  objc_sync_exit(v8);
}

- (void)dequeueNextPendingRequest
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(MRDMediaActivityManager *)obj pendingRequests];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [v3 request];
    v5 = [v3 completion];
    [(MRDMediaActivityManager *)obj postPillBannerRequest:v4 completion:v5];

    v6 = [(MRDMediaActivityManager *)obj pendingRequests];
    [v6 removeObject:v3];
  }

  objc_sync_exit(obj);
}

- (void)postConnectedBannerRequestForRoute:(id)a3 devices:(id)a4 endpoint:(id)a5 remoteControl:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = a4;
  v14 = a3;
  v15 = [a5 outputDevices];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  v18 = [(MRDMediaActivityManager *)self staticRequestForRoute:v14 devices:v17];

  v19 = +[MRDDisplayMonitor sharedMonitor];
  v20 = [v19 primaryUIApplicationBundleIdentifier];
  [v18 setBundleIdentifierAffinity:v20];

  if (v7)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  [v18 setBannerType:v21];
  v22 = [(MRDMediaActivityManager *)self activePillRequest];

  if (v22)
  {
    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(MRDMediaActivityManager *)self activePillRequest];
      v25 = 138412546;
      v26 = v24;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting pill %@, enqueueing request %@", &v25, 0x16u);
    }

    [(MRDMediaActivityManager *)self enqueueRequest:v18 completion:v12];
  }

  else
  {
    [(MRDMediaActivityManager *)self postPillBannerRequest:v18 completion:v12];
  }
}

- (BOOL)presentingConnectedPillFor:(id)a3
{
  v4 = a3;
  v5 = [(MRDMediaActivityManager *)self activePillRequest];
  v6 = [v5 bundleIdentifierAffinity];
  v7 = v6;
  if (v6 == v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v6 isEqual:v4];
  }

  return v8;
}

- (void)dismissConnectedBanner
{
  if ([(MRDMediaActivityManager *)self isPresentingConnectedPill])
  {
    v3 = [(MRDMediaActivityManager *)self activePillRequest];
    [(MRDMediaActivityManager *)self dismissPillBannerRequest:v3];
  }

  obj = self;
  objc_sync_enter(obj);
  v4 = [(MRDMediaActivityManager *)obj pendingRequests];
  [v4 removeAllObjects];

  objc_sync_exit(obj);
}

- (void)dismissBannerRequest:(id)a3
{
  v4 = a3;
  v6 = [(MRDMediaActivityManager *)self bannerCenter];
  v5 = [v4 requestIdentifier];

  [v6 dismissBannerWithIdentifier:v5];
}

- (void)dismissPillBannerRequest:(id)a3
{
  v4 = a3;
  v6 = [(MRDMediaActivityManager *)self pillCenter];
  v5 = [v4 requestIdentifier];

  [v6 dismissBannerWithIdentifier:v5];
}

- (id)staticRequestForRoute:(id)a3 devices:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MRStaticRouteBannerRequest);
  v8 = [v6 routeIdentifier];

  [v7 setRouteIdentifier:v8];
  if ([v5 count])
  {
    if ([v5 mr_containsVideoOutputDevice])
    {
      v9 = @"airplayvideo";
    }

    else
    {
      v9 = @"airplayaudio";
    }

    [v7 setActionImageName:v9];
    v10 = [v5 msv_compactMap:&stru_1004C1A30];
    [v7 setOutputDeviceNames:v10];

    v11 = [v5 count];
    v12 = [v5 firstObject];
    v13 = [v12 deviceSubtype];

    if (v11 == 1 && v13 == 12)
    {
      v14 = [v5 firstObject];
      v15 = [v14 modelID];
      [v7 setSoloModelID:v15];

      v16 = [v14 deviceEnclosureColor];
      [v7 setSoloDeviceEnclosureColor:v16];
    }

    v17 = [MRAVOutputDeviceSymbolProvider symbolNameForOutputDevices:v5];
    [v7 setRouteSymbolName:v17];

    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v7 routeSymbolName];
      v22 = 138412546;
      v23 = v19;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM Static Request symbol name=%@ for devices:%@", &v22, 0x16u);
    }

    v20 = [MRRouteBannerRequest requestWithStaticRequest:v7];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)bannerWithRequestIdentifier:(id)a3 didReceiveEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = MRBannerEventDescription();
  v8 = [(MRDMediaActivityManager *)self activeRequest];
  v9 = [v8 requestIdentifier];
  v10 = [(__CFString *)v6 isEqualToString:v9];

  v11 = [(MRDMediaActivityManager *)self activePillRequest];
  v12 = [v11 requestIdentifier];
  v13 = [(__CFString *)v6 isEqualToString:v12];

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138413058;
    v47 = v7;
    v48 = 2112;
    v49 = v6;
    v50 = 1024;
    LODWORD(v51[0]) = v10;
    WORD2(v51[0]) = 1024;
    *(v51 + 6) = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM got event %@ for %@ r=%d p=%d", &v46, 0x22u);
  }

  v15 = [(MRDMediaActivityManager *)self activeBannerState];
  if (v15 <= 4)
  {
    v16 = off_1004C1A50[v15];
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (a4 <= 1)
    {
      if (!a4)
      {
        v32 = [(MRDMediaActivityManager *)self activeBannerState]- 1;
        if (v32 > 3)
        {
          v33 = 0;
        }

        else
        {
          v33 = qword_10044E9F8[v32];
        }

        [(MRDMediaActivityManager *)self setActiveBannerState:0];
        [(MRDMediaActivityManager *)self setActiveRequest:0];
        v38 = _MRLogForCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v46) = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM cleared activeRequest", &v46, 2u);
        }

        v39 = [(MRDMediaActivityManager *)self completion];

        if (v39)
        {
          v40 = [(MRDMediaActivityManager *)self completion];
          (*(v40 + 16))(v40, v33, 0);
        }

        else
        {
          v40 = _MRLogForCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = off_1004C1A78[v33];
            v46 = 138412546;
            v47 = v41;
            v48 = 2112;
            v49 = 0;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM Would have called completion with result %@ error %@ but completion is nil", &v46, 0x16u);
          }
        }

        [(MRDMediaActivityManager *)self setCompletion:0];
        goto LABEL_84;
      }

      if (a4 != 1)
      {
        goto LABEL_84;
      }

      if ([(MRDMediaActivityManager *)self activeBannerState]!= 1)
      {
        v24 = _MRLogForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 138412546;
          v47 = v7;
          v48 = 2112;
          v49 = v16;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM unexpected event %@ while current state is %@, letting it slide.", &v46, 0x16u);
        }
      }

      v25 = self;
      v26 = 2;
    }

    else
    {
      switch(a4)
      {
        case 2uLL:
          if ([(MRDMediaActivityManager *)self activeBannerState]!= 1)
          {
            v30 = _MRLogForCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 138412546;
              v47 = v7;
              v48 = 2112;
              v49 = v16;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM unexpected event %@ while current state is %@, letting it slide.", &v46, 0x16u);
            }
          }

          v25 = self;
          v26 = 3;
          break;
        case 4uLL:
          if ([(MRDMediaActivityManager *)self activeBannerState]!= 1)
          {
            v31 = _MRLogForCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 138412546;
              v47 = v7;
              v48 = 2112;
              v49 = v16;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM unexpected event %@ while current state is %@, letting it slide.", &v46, 0x16u);
            }
          }

          v25 = self;
          v26 = 4;
          break;
        case 3uLL:
          if ([(MRDMediaActivityManager *)self activeBannerState])
          {
            v17 = _MRLogForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 138412546;
              v47 = v7;
              v48 = 2112;
              v49 = v16;
              v18 = "[MRDRRC].MAM unexpected event %@ while current state is %@, ignoring.";
              goto LABEL_21;
            }

LABEL_22:

            goto LABEL_84;
          }

          v25 = self;
          v26 = 1;
          break;
        default:
          goto LABEL_84;
      }
    }

    [(MRDMediaActivityManager *)v25 setActiveBannerState:v26];
    goto LABEL_84;
  }

  v16 = 0;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v13)
  {
    if (a4 <= 1)
    {
      if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_84;
        }

        if ([(MRDMediaActivityManager *)self activePillBannerState]!= 1)
        {
          v27 = _MRLogForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v46 = 138412546;
            v47 = v7;
            v48 = 2112;
            v49 = v16;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM unexpected pill event %@ while current state is %@, letting it slide.", &v46, 0x16u);
          }
        }

        v28 = self;
        v29 = 2;
        goto LABEL_83;
      }

      v36 = [(MRDMediaActivityManager *)self activePillBannerState]- 1;
      if (v36 > 3)
      {
        v37 = 0;
      }

      else
      {
        v37 = qword_10044E9F8[v36];
      }

      v42 = [(MRDMediaActivityManager *)self pillCompletion];

      if (v42)
      {
        v43 = [(MRDMediaActivityManager *)self pillCompletion];
        (*(v43 + 16))(v43, v37, 0);
      }

      else
      {
        v43 = _MRLogForCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = off_1004C1A78[v37];
          v46 = 138412546;
          v47 = v44;
          v48 = 2112;
          v49 = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM Would have called pill completion with result %@ error %@ but completion is nil", &v46, 0x16u);
        }
      }

      [(MRDMediaActivityManager *)self setActivePillBannerState:0];
      [(MRDMediaActivityManager *)self setActivePillRequest:0];
      v45 = _MRLogForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v46) = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM cleared activePillRequest", &v46, 2u);
      }

      [(MRDMediaActivityManager *)self setPillCompletion:0];
      [(MRDMediaActivityManager *)self dequeueNextPendingRequest];
    }

    else
    {
      switch(a4)
      {
        case 2uLL:
          if ([(MRDMediaActivityManager *)self activePillBannerState]!= 1)
          {
            v34 = _MRLogForCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 138412546;
              v47 = v7;
              v48 = 2112;
              v49 = v16;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM unexpected pill event %@ while current state is %@, letting it slide.", &v46, 0x16u);
            }
          }

          v28 = self;
          v29 = 3;
          goto LABEL_83;
        case 4uLL:
          if ([(MRDMediaActivityManager *)self activePillBannerState]!= 1)
          {
            v35 = _MRLogForCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 138412546;
              v47 = v7;
              v48 = 2112;
              v49 = v16;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM unexpected pill event %@ while current state is %@, letting it slide.", &v46, 0x16u);
            }
          }

          v28 = self;
          v29 = 4;
          goto LABEL_83;
        case 3uLL:
          if ([(MRDMediaActivityManager *)self activePillBannerState])
          {
            v17 = _MRLogForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 138412546;
              v47 = v7;
              v48 = 2112;
              v49 = v16;
              v18 = "[MRDRRC].MAM unexpected pill event %@ while current state is %@, ignoring.";
LABEL_21:
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, &v46, 0x16u);
              goto LABEL_22;
            }

            goto LABEL_22;
          }

          v28 = self;
          v29 = 1;
LABEL_83:
          [(MRDMediaActivityManager *)v28 setActivePillBannerState:v29];
          break;
      }
    }
  }

  else
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(MRDMediaActivityManager *)self activeRequest];
      v21 = [v20 requestIdentifier];
      v22 = [(MRDMediaActivityManager *)self activePillRequest];
      v23 = [v22 requestIdentifier];
      v46 = 138412802;
      v47 = v6;
      v48 = 2112;
      v49 = v21;
      v50 = 2112;
      v51[0] = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM got unexpected event from %@. active route is %@ active pill is %@", &v46, 0x20u);
    }
  }

LABEL_84:
}

- (void)presentControlCenterCallToActionVideo:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [(MRDMediaActivityManager *)self videoStatusItemController];
    v8 = @"video";
  }

  else
  {
    v7 = [(MRDMediaActivityManager *)self audioStatusItemController];
    v8 = @"audio";
  }

  [v7 setIsStatusItemActive:1];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM Asked %@ to activate - %@", buf, 0x16u);
  }

  v10 = dispatch_time(0, 5000000000);
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BBC38;
  block[3] = &unk_1004B71F8;
  v15 = v7;
  v16 = v8;
  v17 = v6;
  v12 = v6;
  v13 = v7;
  dispatch_after(v10, v11, block);
}

@end