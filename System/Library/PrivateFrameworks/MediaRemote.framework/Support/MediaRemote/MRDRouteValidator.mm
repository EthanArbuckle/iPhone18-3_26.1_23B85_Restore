@interface MRDRouteValidator
- (MRAVEndpoint)activeSystemEndpoint;
- (MRDRouteValidator)init;
- (void)_bestRecommendationIn:(id)in primaryBundleIdentifier:(id)identifier activeSystemEndpoint:(id)endpoint completion:(id)completion;
- (void)_fetchActiveSystemEndpoint:(id)endpoint;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification;
- (void)_refreshActiveSystemEndpoint:(id)endpoint;
- (void)bestRecommendationIn:(id)in primaryBundleIdentifier:(id)identifier eligibleToShowRecommendationsOutsideApp:(BOOL)app completion:(id)completion;
- (void)evaluateRecommendations:(id)recommendations localOutputContextHasAirPlay:(BOOL)play primaryBundleIdentifier:(id)identifier activeSystemEndpoint:(id)endpoint completion:(id)completion;
@end

@implementation MRDRouteValidator

- (MRDRouteValidator)init
{
  v16.receiver = self;
  v16.super_class = MRDRouteValidator;
  v2 = [(MRDRouteValidator *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MRDRouteRecommendationOutputContextLogic);
    outputContextLogic = v2->_outputContextLogic;
    v2->_outputContextLogic = v3;

    v5 = +[MRDRouteRecommendationSuppressionController controller];
    suppressionController = v2->_suppressionController;
    v2->_suppressionController = v5;

    v7 = +[MRDRouteRecommendationDemotionController controller];
    demotionController = v2->_demotionController;
    v2->_demotionController = v7;

    v9 = objc_alloc_init(NSLock);
    activeSystemEndpointLock = v2->_activeSystemEndpointLock;
    v2->_activeSystemEndpointLock = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mediaremote.MRDRouteValidator", v11);
    queue = v2->_queue;
    v2->_queue = v12;

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"_handleActiveSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];
  }

  return v2;
}

- (void)bestRecommendationIn:(id)in primaryBundleIdentifier:(id)identifier eligibleToShowRecommendationsOutsideApp:(BOOL)app completion:(id)completion
{
  appCopy = app;
  inCopy = in;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [inCopy count];
    v15 = @"NO";
    *buf = 134218498;
    v23 = v14;
    v24 = 2112;
    if (appCopy)
    {
      v15 = @"YES";
    }

    v25 = identifierCopy;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV bestRecommendationIn: %lu recommendation(s) | bundleID: %@ | outsideApp: %@ ", buf, 0x20u);
  }

  if ([inCopy count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B02C4;
    v17[3] = &unk_1004BA4A0;
    v17[4] = self;
    v21 = appCopy;
    v20 = completionCopy;
    v18 = inCopy;
    v19 = identifierCopy;
    [(MRDRouteValidator *)self _fetchActiveSystemEndpoint:v17];
  }

  else
  {
    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV received 0 interactive recommendations.", buf, 2u);
    }
  }
}

- (MRAVEndpoint)activeSystemEndpoint
{
  [(NSLock *)self->_activeSystemEndpointLock lock];
  v3 = self->_activeSystemEndpoint;
  [(NSLock *)self->_activeSystemEndpointLock unlock];

  return v3;
}

- (void)_fetchActiveSystemEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  activeSystemEndpoint = [(MRDRouteValidator *)self activeSystemEndpoint];
  if (activeSystemEndpoint)
  {
    if (endpointCopy)
    {
      endpointCopy[2](endpointCopy, activeSystemEndpoint);
    }
  }

  else
  {
    [(MRDRouteValidator *)self _refreshActiveSystemEndpoint:endpointCopy];
  }
}

- (void)_refreshActiveSystemEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  activeSystemEndpointLock = [(MRDRouteValidator *)self activeSystemEndpointLock];
  [activeSystemEndpointLock lock];

  queue = [(MRDRouteValidator *)self queue];
  v7 = endpointCopy;
  MRAVEndpointResolveActiveSystemEndpointWithType();
}

- (void)_bestRecommendationIn:(id)in primaryBundleIdentifier:(id)identifier activeSystemEndpoint:(id)endpoint completion:(id)completion
{
  identifierCopy = identifier;
  endpointCopy = endpoint;
  completionCopy = completion;
  inCopy = in;
  localEndpoint = [(MRDRouteValidator *)self localEndpoint];
  v15 = [MRIRRoute routeWithEndpoint:localEndpoint];
  nodes = [v15 nodes];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000B0AB0;
  v33[3] = &unk_1004BA530;
  v34 = nodes;
  v17 = nodes;
  v18 = [inCopy msv_filter:v33];

  v19 = [(MRDRouteRecommendationOutputContextLogic *)self->_outputContextLogic localOutputContextHasDeviceOfType:1];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000B0E20;
  v27 = &unk_1004BA578;
  v28 = identifierCopy;
  v29 = endpointCopy;
  v32 = v19;
  selfCopy = self;
  v31 = completionCopy;
  v20 = completionCopy;
  v21 = endpointCopy;
  v22 = identifierCopy;
  v23 = objc_retainBlock(&v24);
  [(MRDRouteValidator *)self evaluateRecommendations:v18 localOutputContextHasAirPlay:v19 primaryBundleIdentifier:v22 activeSystemEndpoint:v21 completion:v23, v24, v25, v26, v27];
}

- (void)evaluateRecommendations:(id)recommendations localOutputContextHasAirPlay:(BOOL)play primaryBundleIdentifier:(id)identifier activeSystemEndpoint:(id)endpoint completion:(id)completion
{
  recommendationsCopy = recommendations;
  identifierCopy = identifier;
  endpointCopy = endpoint;
  completionCopy = completion;
  firstObject = [recommendationsCopy firstObject];
  if (firstObject)
  {
    v31 = recommendationsCopy;
    [recommendationsCopy msv_suffixFromIndex:1];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000B16A4;
    v32 = v44[3] = &unk_1004BA5A0;
    v45 = v32;
    selfCopy = self;
    playCopy = play;
    v35 = identifierCopy;
    v47 = identifierCopy;
    v34 = endpointCopy;
    v17 = endpointCopy;
    v48 = v17;
    v33 = completionCopy;
    v18 = completionCopy;
    v49 = v18;
    v19 = objc_retainBlock(v44);
    route = [firstObject route];
    routeIdentifier = [route routeIdentifier];
    v22 = [routeIdentifier componentsSeparatedByString:@"|"];

    route2 = [firstObject route];
    nodes = [route2 nodes];

    v25 = [MRIRRoute routeWithEndpoint:v17];
    nodes2 = [v25 nodes];

    if ([nodes isEqualToSet:nodes2])
    {
      v27 = _MRLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV ase is routed to same devices in recommendation. skipping recommendation.", buf, 2u);
      }

      (v19[2])(v19);
    }

    else
    {
      v30 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
      queue = [(MRDRouteValidator *)self queue];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000B1778;
      v36[3] = &unk_1004BA610;
      v37 = v22;
      v38 = v17;
      playCopy2 = play;
      v41 = v19;
      v39 = nodes;
      v42 = v18;
      v40 = firstObject;
      [v30 searchOutputDevices:v37 reason:@"coriander" timeout:queue queue:v36 completion:7.0];
    }

    completionCopy = v33;
    endpointCopy = v34;

    identifierCopy = v35;
    recommendationsCopy = v31;
  }

  else
  {
    v28 = _MRLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV no recommendations left. giving up", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, 0, 0);
  }
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  intValue = [v6 intValue];

  if (!intValue)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV _handleActiveSystemEndpointDidChangeNotification: %@", &v9, 0xCu);
    }

    [(MRDRouteValidator *)self _refreshActiveSystemEndpoint:0];
  }
}

@end