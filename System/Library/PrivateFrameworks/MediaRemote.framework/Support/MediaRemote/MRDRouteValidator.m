@interface MRDRouteValidator
- (MRAVEndpoint)activeSystemEndpoint;
- (MRDRouteValidator)init;
- (void)_bestRecommendationIn:(id)a3 primaryBundleIdentifier:(id)a4 activeSystemEndpoint:(id)a5 completion:(id)a6;
- (void)_fetchActiveSystemEndpoint:(id)a3;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3;
- (void)_refreshActiveSystemEndpoint:(id)a3;
- (void)bestRecommendationIn:(id)a3 primaryBundleIdentifier:(id)a4 eligibleToShowRecommendationsOutsideApp:(BOOL)a5 completion:(id)a6;
- (void)evaluateRecommendations:(id)a3 localOutputContextHasAirPlay:(BOOL)a4 primaryBundleIdentifier:(id)a5 activeSystemEndpoint:(id)a6 completion:(id)a7;
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

- (void)bestRecommendationIn:(id)a3 primaryBundleIdentifier:(id)a4 eligibleToShowRecommendationsOutsideApp:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 count];
    v15 = @"NO";
    *buf = 134218498;
    v23 = v14;
    v24 = 2112;
    if (v7)
    {
      v15 = @"YES";
    }

    v25 = v11;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV bestRecommendationIn: %lu recommendation(s) | bundleID: %@ | outsideApp: %@ ", buf, 0x20u);
  }

  if ([v10 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B02C4;
    v17[3] = &unk_1004BA4A0;
    v17[4] = self;
    v21 = v7;
    v20 = v12;
    v18 = v10;
    v19 = v11;
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

- (void)_fetchActiveSystemEndpoint:(id)a3
{
  v5 = a3;
  v4 = [(MRDRouteValidator *)self activeSystemEndpoint];
  if (v4)
  {
    if (v5)
    {
      v5[2](v5, v4);
    }
  }

  else
  {
    [(MRDRouteValidator *)self _refreshActiveSystemEndpoint:v5];
  }
}

- (void)_refreshActiveSystemEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(MRDRouteValidator *)self activeSystemEndpointLock];
  [v5 lock];

  v6 = [(MRDRouteValidator *)self queue];
  v7 = v4;
  MRAVEndpointResolveActiveSystemEndpointWithType();
}

- (void)_bestRecommendationIn:(id)a3 primaryBundleIdentifier:(id)a4 activeSystemEndpoint:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(MRDRouteValidator *)self localEndpoint];
  v15 = [MRIRRoute routeWithEndpoint:v14];
  v16 = [v15 nodes];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000B0AB0;
  v33[3] = &unk_1004BA530;
  v34 = v16;
  v17 = v16;
  v18 = [v13 msv_filter:v33];

  v19 = [(MRDRouteRecommendationOutputContextLogic *)self->_outputContextLogic localOutputContextHasDeviceOfType:1];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000B0E20;
  v27 = &unk_1004BA578;
  v28 = v10;
  v29 = v11;
  v32 = v19;
  v30 = self;
  v31 = v12;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = objc_retainBlock(&v24);
  [(MRDRouteValidator *)self evaluateRecommendations:v18 localOutputContextHasAirPlay:v19 primaryBundleIdentifier:v22 activeSystemEndpoint:v21 completion:v23, v24, v25, v26, v27];
}

- (void)evaluateRecommendations:(id)a3 localOutputContextHasAirPlay:(BOOL)a4 primaryBundleIdentifier:(id)a5 activeSystemEndpoint:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v12 firstObject];
  if (v16)
  {
    v31 = v12;
    [v12 msv_suffixFromIndex:1];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000B16A4;
    v32 = v44[3] = &unk_1004BA5A0;
    v45 = v32;
    v46 = self;
    v50 = a4;
    v35 = v13;
    v47 = v13;
    v34 = v14;
    v17 = v14;
    v48 = v17;
    v33 = v15;
    v18 = v15;
    v49 = v18;
    v19 = objc_retainBlock(v44);
    v20 = [v16 route];
    v21 = [v20 routeIdentifier];
    v22 = [v21 componentsSeparatedByString:@"|"];

    v23 = [v16 route];
    v24 = [v23 nodes];

    v25 = [MRIRRoute routeWithEndpoint:v17];
    v26 = [v25 nodes];

    if ([v24 isEqualToSet:v26])
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
      v29 = [(MRDRouteValidator *)self queue];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000B1778;
      v36[3] = &unk_1004BA610;
      v37 = v22;
      v38 = v17;
      v43 = a4;
      v41 = v19;
      v39 = v24;
      v42 = v18;
      v40 = v16;
      [v30 searchOutputDevices:v37 reason:@"coriander" timeout:v29 queue:v36 completion:7.0];
    }

    v15 = v33;
    v14 = v34;

    v13 = v35;
    v12 = v31;
  }

  else
  {
    v28 = _MRLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV no recommendations left. giving up", buf, 2u);
    }

    (*(v15 + 2))(v15, 0, 0, 0, 0, 0, 0, 0);
  }
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:kMRMediaRemoteActiveEndpointTypeUserInfoKey];
  v7 = [v6 intValue];

  if (!v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].RV _handleActiveSystemEndpointDidChangeNotification: %@", &v9, 0xCu);
    }

    [(MRDRouteValidator *)self _refreshActiveSystemEndpoint:0];
  }
}

@end