@interface MRDMediaActivityManager
+ (MRDMediaActivityManager)manager;
- (BOOL)isPresentingBanner;
- (BOOL)isPresentingConnectedPill;
- (BOOL)presentingConnectedPillFor:(id)for;
- (MRDMediaActivityManager)init;
- (MRRouteBannerRequest)activePillRequest;
- (MRRouteBannerRequest)activeRequest;
- (id)staticRequestForRoute:(id)route devices:(id)devices;
- (void)bannerWithRequestIdentifier:(id)identifier didReceiveEvent:(unint64_t)event;
- (void)dequeueNextPendingRequest;
- (void)dismissAllBannerRequests;
- (void)dismissBannerRequest:(id)request;
- (void)dismissConnectedBanner;
- (void)dismissPillBannerRequest:(id)request;
- (void)enqueueRequest:(id)request completion:(id)completion;
- (void)postAutoRouteBannerRequestForRoute:(id)route devices:(id)devices endpoint:(id)endpoint completion:(id)completion;
- (void)postBannerRequest:(id)request completion:(id)completion;
- (void)postCarPlayVideoConnectedBannerRequestWithCompletion:(id)completion;
- (void)postConnectedBannerRequestForRoute:(id)route devices:(id)devices endpoint:(id)endpoint remoteControl:(BOOL)control completion:(id)completion;
- (void)postDeltaBannerRequestForRoute:(id)route devices:(id)devices endpoint:(id)endpoint activeSystemEndpoint:(id)systemEndpoint completion:(id)completion;
- (void)postOneTapSuggestionBannerRequestForRoute:(id)route devices:(id)devices endpoint:(id)endpoint completion:(id)completion;
- (void)postPillBannerRequest:(id)request completion:(id)completion;
- (void)presentControlCenterCallToActionVideo:(BOOL)video completion:(id)completion;
- (void)setActivePillRequest:(id)request;
- (void)setActiveRequest:(id)request;
@end

@implementation MRDMediaActivityManager

- (BOOL)isPresentingConnectedPill
{
  activePillRequest = [(MRDMediaActivityManager *)self activePillRequest];
  v3 = activePillRequest != 0;

  return v3;
}

- (MRRouteBannerRequest)activePillRequest
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activePillRequest;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (MRDMediaActivityManager)manager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9F84;
  block[3] = &unk_1004B82A0;
  block[4] = self;
  if (qword_100529728 != -1)
  {
    dispatch_once(&qword_100529728, block);
  }

  v2 = qword_100529720;

  return v2;
}

- (BOOL)isPresentingBanner
{
  activeRequest = [(MRDMediaActivityManager *)self activeRequest];
  v3 = activeRequest != 0;

  return v3;
}

- (MRRouteBannerRequest)activeRequest
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_activeRequest;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)dismissAllBannerRequests
{
  activeRequest = [(MRDMediaActivityManager *)self activeRequest];

  if (activeRequest)
  {
    activeRequest2 = [(MRDMediaActivityManager *)self activeRequest];
    [(MRDMediaActivityManager *)self dismissBannerRequest:activeRequest2];
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

- (void)setActiveRequest:(id)request
{
  requestCopy = request;
  obj = self;
  objc_sync_enter(obj);
  activeRequest = obj->_activeRequest;
  obj->_activeRequest = requestCopy;

  objc_sync_exit(obj);
}

- (void)setActivePillRequest:(id)request
{
  requestCopy = request;
  obj = self;
  objc_sync_enter(obj);
  activePillRequest = obj->_activePillRequest;
  obj->_activePillRequest = requestCopy;

  objc_sync_exit(obj);
}

- (void)postPillBannerRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(MRDMediaActivityManager *)self setActivePillRequest:requestCopy];
  [(MRDMediaActivityManager *)self setPillCompletion:completionCopy];

  pillCenter = [(MRDMediaActivityManager *)self pillCenter];
  [pillCenter postBannerRequest:requestCopy];
}

- (void)postBannerRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  [(MRDMediaActivityManager *)self setActiveRequest:requestCopy];
  [(MRDMediaActivityManager *)self setCompletion:completionCopy];

  bannerCenter = [(MRDMediaActivityManager *)self bannerCenter];
  [bannerCenter postBannerRequest:requestCopy];
}

- (void)postDeltaBannerRequestForRoute:(id)route devices:(id)devices endpoint:(id)endpoint activeSystemEndpoint:(id)systemEndpoint completion:(id)completion
{
  routeCopy = route;
  devicesCopy = devices;
  systemEndpointCopy = systemEndpoint;
  completionCopy = completion;
  activeRequest = [(MRDMediaActivityManager *)self activeRequest];

  if (activeRequest)
  {
    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      activeRequest2 = [(MRDMediaActivityManager *)self activeRequest];
      v23 = 138412290;
      v24 = activeRequest2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting %@, bailing out", &v23, 0xCu);
    }

    if (completionCopy)
    {
      v18 = [NSError errorWithDomain:@"MRBannerErrorDomain" code:1 userInfo:0];
      completionCopy[2](completionCopy, 0, v18);
    }
  }

  else
  {
    v19 = [(MRDMediaActivityManager *)self staticRequestForRoute:routeCopy devices:devicesCopy];
    [v19 setBannerType:4];
    outputDevices = [systemEndpointCopy outputDevices];
    v21 = [outputDevices msv_compactMap:&stru_1004C1A10];
    staticRequest = [v19 staticRequest];
    [staticRequest setUserSelectedDeviceNames:v21];

    [(MRDMediaActivityManager *)self postBannerRequest:v19 completion:completionCopy];
  }
}

- (void)postOneTapSuggestionBannerRequestForRoute:(id)route devices:(id)devices endpoint:(id)endpoint completion:(id)completion
{
  routeCopy = route;
  devicesCopy = devices;
  completionCopy = completion;
  activeRequest = [(MRDMediaActivityManager *)self activeRequest];

  if (activeRequest)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      activeRequest2 = [(MRDMediaActivityManager *)self activeRequest];
      v17 = 138412290;
      v18 = activeRequest2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting %@, bailing out", &v17, 0xCu);
    }

    if (completionCopy)
    {
      v15 = [NSError errorWithDomain:@"MRBannerErrorDomain" code:1 userInfo:0];
      completionCopy[2](completionCopy, 0, v15);
    }
  }

  else
  {
    v16 = [(MRDMediaActivityManager *)self staticRequestForRoute:routeCopy devices:devicesCopy];
    [(MRDMediaActivityManager *)self postBannerRequest:v16 completion:completionCopy];
  }
}

- (void)postAutoRouteBannerRequestForRoute:(id)route devices:(id)devices endpoint:(id)endpoint completion:(id)completion
{
  routeCopy = route;
  devicesCopy = devices;
  completionCopy = completion;
  activeRequest = [(MRDMediaActivityManager *)self activeRequest];

  if (activeRequest)
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      activeRequest2 = [(MRDMediaActivityManager *)self activeRequest];
      v17 = 138412290;
      v18 = activeRequest2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting %@, bailing out", &v17, 0xCu);
    }

    if (completionCopy)
    {
      v15 = [NSError errorWithDomain:@"MRBannerErrorDomain" code:1 userInfo:0];
      completionCopy[2](completionCopy, 0, v15);
    }
  }

  else
  {
    v16 = [(MRDMediaActivityManager *)self staticRequestForRoute:routeCopy devices:devicesCopy];
    [v16 setBannerType:1];
    [(MRDMediaActivityManager *)self postBannerRequest:v16 completion:completionCopy];
  }
}

- (void)postCarPlayVideoConnectedBannerRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  activeRequest = [(MRDMediaActivityManager *)self activeRequest];

  if (activeRequest)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      activeRequest2 = [(MRDMediaActivityManager *)self activeRequest];
      v11 = 138412290;
      v12 = activeRequest2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting %@, bailing out", &v11, 0xCu);
    }

    if (completionCopy)
    {
      v8 = [NSError errorWithDomain:@"MRBannerErrorDomain" code:1 userInfo:0];
      completionCopy[2](completionCopy, 0, v8);
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
    [(MRDMediaActivityManager *)self postBannerRequest:v10 completion:completionCopy];
  }
}

- (void)enqueueRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v7 = objc_alloc_init(MRRouteBannerRequestQueueItem);
  [(MRRouteBannerRequestQueueItem *)v7 setRequest:requestCopy];
  [(MRRouteBannerRequestQueueItem *)v7 setCompletion:completionCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingRequests = [(MRDMediaActivityManager *)selfCopy pendingRequests];
  [pendingRequests addObject:v7];

  objc_sync_exit(selfCopy);
}

- (void)dequeueNextPendingRequest
{
  obj = self;
  objc_sync_enter(obj);
  pendingRequests = [(MRDMediaActivityManager *)obj pendingRequests];
  firstObject = [pendingRequests firstObject];

  if (firstObject)
  {
    request = [firstObject request];
    completion = [firstObject completion];
    [(MRDMediaActivityManager *)obj postPillBannerRequest:request completion:completion];

    pendingRequests2 = [(MRDMediaActivityManager *)obj pendingRequests];
    [pendingRequests2 removeObject:firstObject];
  }

  objc_sync_exit(obj);
}

- (void)postConnectedBannerRequestForRoute:(id)route devices:(id)devices endpoint:(id)endpoint remoteControl:(BOOL)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  devicesCopy = devices;
  routeCopy = route;
  outputDevices = [endpoint outputDevices];
  v16 = outputDevices;
  if (outputDevices)
  {
    v17 = outputDevices;
  }

  else
  {
    v17 = devicesCopy;
  }

  v18 = [(MRDMediaActivityManager *)self staticRequestForRoute:routeCopy devices:v17];

  v19 = +[MRDDisplayMonitor sharedMonitor];
  primaryUIApplicationBundleIdentifier = [v19 primaryUIApplicationBundleIdentifier];
  [v18 setBundleIdentifierAffinity:primaryUIApplicationBundleIdentifier];

  if (controlCopy)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  [v18 setBannerType:v21];
  activePillRequest = [(MRDMediaActivityManager *)self activePillRequest];

  if (activePillRequest)
  {
    v23 = _MRLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      activePillRequest2 = [(MRDMediaActivityManager *)self activePillRequest];
      v25 = 138412546;
      v26 = activePillRequest2;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM already presenting pill %@, enqueueing request %@", &v25, 0x16u);
    }

    [(MRDMediaActivityManager *)self enqueueRequest:v18 completion:completionCopy];
  }

  else
  {
    [(MRDMediaActivityManager *)self postPillBannerRequest:v18 completion:completionCopy];
  }
}

- (BOOL)presentingConnectedPillFor:(id)for
{
  forCopy = for;
  activePillRequest = [(MRDMediaActivityManager *)self activePillRequest];
  bundleIdentifierAffinity = [activePillRequest bundleIdentifierAffinity];
  v7 = bundleIdentifierAffinity;
  if (bundleIdentifierAffinity == forCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = [bundleIdentifierAffinity isEqual:forCopy];
  }

  return v8;
}

- (void)dismissConnectedBanner
{
  if ([(MRDMediaActivityManager *)self isPresentingConnectedPill])
  {
    activePillRequest = [(MRDMediaActivityManager *)self activePillRequest];
    [(MRDMediaActivityManager *)self dismissPillBannerRequest:activePillRequest];
  }

  obj = self;
  objc_sync_enter(obj);
  pendingRequests = [(MRDMediaActivityManager *)obj pendingRequests];
  [pendingRequests removeAllObjects];

  objc_sync_exit(obj);
}

- (void)dismissBannerRequest:(id)request
{
  requestCopy = request;
  bannerCenter = [(MRDMediaActivityManager *)self bannerCenter];
  requestIdentifier = [requestCopy requestIdentifier];

  [bannerCenter dismissBannerWithIdentifier:requestIdentifier];
}

- (void)dismissPillBannerRequest:(id)request
{
  requestCopy = request;
  pillCenter = [(MRDMediaActivityManager *)self pillCenter];
  requestIdentifier = [requestCopy requestIdentifier];

  [pillCenter dismissBannerWithIdentifier:requestIdentifier];
}

- (id)staticRequestForRoute:(id)route devices:(id)devices
{
  devicesCopy = devices;
  routeCopy = route;
  v7 = objc_alloc_init(MRStaticRouteBannerRequest);
  routeIdentifier = [routeCopy routeIdentifier];

  [v7 setRouteIdentifier:routeIdentifier];
  if ([devicesCopy count])
  {
    if ([devicesCopy mr_containsVideoOutputDevice])
    {
      v9 = @"airplayvideo";
    }

    else
    {
      v9 = @"airplayaudio";
    }

    [v7 setActionImageName:v9];
    v10 = [devicesCopy msv_compactMap:&stru_1004C1A30];
    [v7 setOutputDeviceNames:v10];

    v11 = [devicesCopy count];
    firstObject = [devicesCopy firstObject];
    deviceSubtype = [firstObject deviceSubtype];

    if (v11 == 1 && deviceSubtype == 12)
    {
      firstObject2 = [devicesCopy firstObject];
      modelID = [firstObject2 modelID];
      [v7 setSoloModelID:modelID];

      deviceEnclosureColor = [firstObject2 deviceEnclosureColor];
      [v7 setSoloDeviceEnclosureColor:deviceEnclosureColor];
    }

    v17 = [MRAVOutputDeviceSymbolProvider symbolNameForOutputDevices:devicesCopy];
    [v7 setRouteSymbolName:v17];

    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      routeSymbolName = [v7 routeSymbolName];
      v22 = 138412546;
      v23 = routeSymbolName;
      v24 = 2112;
      v25 = devicesCopy;
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

- (void)bannerWithRequestIdentifier:(id)identifier didReceiveEvent:(unint64_t)event
{
  identifierCopy = identifier;
  v7 = MRBannerEventDescription();
  activeRequest = [(MRDMediaActivityManager *)self activeRequest];
  requestIdentifier = [activeRequest requestIdentifier];
  v10 = [(__CFString *)identifierCopy isEqualToString:requestIdentifier];

  activePillRequest = [(MRDMediaActivityManager *)self activePillRequest];
  requestIdentifier2 = [activePillRequest requestIdentifier];
  v13 = [(__CFString *)identifierCopy isEqualToString:requestIdentifier2];

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138413058;
    v47 = v7;
    v48 = 2112;
    v49 = identifierCopy;
    v50 = 1024;
    LODWORD(v51[0]) = v10;
    WORD2(v51[0]) = 1024;
    *(v51 + 6) = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM got event %@ for %@ r=%d p=%d", &v46, 0x22u);
  }

  activeBannerState = [(MRDMediaActivityManager *)self activeBannerState];
  if (activeBannerState <= 4)
  {
    v16 = off_1004C1A50[activeBannerState];
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (event <= 1)
    {
      if (!event)
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

        completion = [(MRDMediaActivityManager *)self completion];

        if (completion)
        {
          completion2 = [(MRDMediaActivityManager *)self completion];
          (*(completion2 + 16))(completion2, v33, 0);
        }

        else
        {
          completion2 = _MRLogForCategory();
          if (os_log_type_enabled(completion2, OS_LOG_TYPE_DEFAULT))
          {
            v41 = off_1004C1A78[v33];
            v46 = 138412546;
            v47 = v41;
            v48 = 2112;
            v49 = 0;
            _os_log_impl(&_mh_execute_header, completion2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM Would have called completion with result %@ error %@ but completion is nil", &v46, 0x16u);
          }
        }

        [(MRDMediaActivityManager *)self setCompletion:0];
        goto LABEL_84;
      }

      if (event != 1)
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

      selfCopy4 = self;
      v26 = 2;
    }

    else
    {
      switch(event)
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

          selfCopy4 = self;
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

          selfCopy4 = self;
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

          selfCopy4 = self;
          v26 = 1;
          break;
        default:
          goto LABEL_84;
      }
    }

    [(MRDMediaActivityManager *)selfCopy4 setActiveBannerState:v26];
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
    if (event <= 1)
    {
      if (event)
      {
        if (event != 1)
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

        selfCopy8 = self;
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

      pillCompletion = [(MRDMediaActivityManager *)self pillCompletion];

      if (pillCompletion)
      {
        pillCompletion2 = [(MRDMediaActivityManager *)self pillCompletion];
        (*(pillCompletion2 + 16))(pillCompletion2, v37, 0);
      }

      else
      {
        pillCompletion2 = _MRLogForCategory();
        if (os_log_type_enabled(pillCompletion2, OS_LOG_TYPE_DEFAULT))
        {
          v44 = off_1004C1A78[v37];
          v46 = 138412546;
          v47 = v44;
          v48 = 2112;
          v49 = 0;
          _os_log_impl(&_mh_execute_header, pillCompletion2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM Would have called pill completion with result %@ error %@ but completion is nil", &v46, 0x16u);
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
      switch(event)
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

          selfCopy8 = self;
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

          selfCopy8 = self;
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

          selfCopy8 = self;
          v29 = 1;
LABEL_83:
          [(MRDMediaActivityManager *)selfCopy8 setActivePillBannerState:v29];
          break;
      }
    }
  }

  else
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      activeRequest2 = [(MRDMediaActivityManager *)self activeRequest];
      requestIdentifier3 = [activeRequest2 requestIdentifier];
      activePillRequest2 = [(MRDMediaActivityManager *)self activePillRequest];
      requestIdentifier4 = [activePillRequest2 requestIdentifier];
      v46 = 138412802;
      v47 = identifierCopy;
      v48 = 2112;
      v49 = requestIdentifier3;
      v50 = 2112;
      v51[0] = requestIdentifier4;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDRRC].MAM got unexpected event from %@. active route is %@ active pill is %@", &v46, 0x20u);
    }
  }

LABEL_84:
}

- (void)presentControlCenterCallToActionVideo:(BOOL)video completion:(id)completion
{
  completionCopy = completion;
  if (video)
  {
    videoStatusItemController = [(MRDMediaActivityManager *)self videoStatusItemController];
    v8 = @"video";
  }

  else
  {
    videoStatusItemController = [(MRDMediaActivityManager *)self audioStatusItemController];
    v8 = @"audio";
  }

  [videoStatusItemController setIsStatusItemActive:1];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = videoStatusItemController;
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
  v15 = videoStatusItemController;
  v16 = v8;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = videoStatusItemController;
  dispatch_after(v10, v11, block);
}

@end