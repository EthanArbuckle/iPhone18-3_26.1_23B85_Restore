@interface MRDIRDRouteRecommender
- (MRDIRDRouteRecommender)init;
- (MRRouteRecommenderDelegate)delegate;
- (id)defaultsContext;
- (id)irCandidateFor:(id)a3;
- (id)sortCandidateResults:(id)a3 contextIdentifier:(id)a4;
- (void)_addEvent:(id)a3 forRouteCandidate:(id)a4;
- (void)_onQueue_createRunningSessionWithCompletion:(id)a3;
- (void)_onQueue_createRunningSessionWithServiceToken:(id)a3;
- (void)_onQueue_initializeSessionWithCompletion:(id)a3;
- (void)_onQueue_invalidateSession;
- (void)addEvent:(id)a3 forRouteCandidate:(id)a4;
- (void)fetchServiceTokenWithCompletion:(id)a3;
- (void)getSessionWithLatestConfiguration:(id)a3;
- (void)initializeSessionIfNeededWithCompletion:(id)a3;
- (void)requestCurrentContextWithBundleID:(id)a3;
- (void)runSession:(id)a3 withMode:(int64_t)a4 andServiceToken:(id)a5;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateBundlesWithSignificantInteractionPattern:(id)a4;
- (void)session:(id)a3 didUpdateContext:(id)a4;
- (void)session:(id)a3 suspendedWithReason:(int64_t)a4;
- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5;
- (void)setMode:(int64_t)a3;
- (void)updateRouteCandidate:(id)a3;
- (void)updateRouteCandidates:(id)a3;
@end

@implementation MRDIRDRouteRecommender

- (id)defaultsContext
{
  v2 = [(MRDIRDRouteRecommender *)self userDefaults];
  v3 = [v2 objectForKey:@"IRContextUpdate"];

  v4 = [MRIRRouteRecommendationContext fromObject:v3];
  if (v4)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Overriding context with %@", &v7, 0xCu);
    }
  }

  return v4;
}

- (MRRouteRecommenderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MRDIRDRouteRecommender)init
{
  v7.receiver = self;
  v7.super_class = MRDIRDRouteRecommender;
  v2 = [(MRDIRDRouteRecommender *)&v7 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mediaremote"];
    [(MRDIRDRouteRecommender *)v2 setUserDefaults:v3];

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.mediaremote.MRIRDRouteRecommender", v4);
    [(MRDIRDRouteRecommender *)v2 setQueue:v5];
  }

  return v2;
}

- (void)setMode:(int64_t)a3
{
  self->_mode = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Mode set to %ld", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F04C4;
  v6[3] = &unk_1004BC4C8;
  v6[4] = self;
  v6[5] = a3;
  [(MRDIRDRouteRecommender *)self initializeSessionIfNeededWithCompletion:v6];
}

- (void)_addEvent:(id)a3 forRouteCandidate:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F0658;
  v9[3] = &unk_1004BC4F0;
  v9[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  [(MRDIRDRouteRecommender *)self getSessionWithLatestConfiguration:v9];
}

- (void)addEvent:(id)a3 forRouteCandidate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 bundleID];
    if (v9)
    {
      v10 = +[MRDMediaBundleManager shared];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000F0978;
      v12[3] = &unk_1004BC518;
      v9 = v9;
      v13 = v9;
      v14 = v8;
      v15 = self;
      v16 = v7;
      [v10 queryEligibilityOf:v9 completionHandler:v12];
    }

    else
    {
      [(MRDIRDRouteRecommender *)self _addEvent:v8 forRouteCandidate:v7];
    }
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1003A88D4(v8, v11);
    }

    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1003A8978(v8, v9);
    }
  }
}

- (void)requestCurrentContextWithBundleID:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F0B34;
  v5[3] = &unk_1004BC580;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(MRDIRDRouteRecommender *)self getSessionWithLatestConfiguration:v5];
}

- (void)updateRouteCandidate:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F0CC8;
  v5[3] = &unk_1004BC580;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(MRDIRDRouteRecommender *)self getSessionWithLatestConfiguration:v5];
}

- (void)updateRouteCandidates:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000F0E94;
    v5[3] = &unk_1004BC580;
    v6 = v4;
    v7 = self;
    [(MRDIRDRouteRecommender *)self getSessionWithLatestConfiguration:v5];
  }
}

- (id)sortCandidateResults:(id)a3 contextIdentifier:(id)a4
{
  v5 = a4;
  v6 = [a3 allObjects];
  v7 = [v6 sortedArrayUsingComparator:&stru_1004BC648];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F14B0;
  v11[3] = &unk_1004BC670;
  v12 = v5;
  v8 = v5;
  v9 = [v7 msv_map:v11];

  return v9;
}

- (id)irCandidateFor:(id)a3
{
  v3 = a3;
  v4 = [IRCandidate alloc];
  v5 = [v3 routeIdentifier];
  v6 = [v4 initWithCandidateIdentifier:v5];

  v7 = [v3 nodes];

  v8 = [v7 msv_map:&stru_1004BC6B0];
  v9 = [NSSet setWithArray:v8];
  [v6 updateNodes:v9];

  return v6;
}

- (void)initializeSessionIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(MRDIRDRouteRecommender *)self queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000F190C;
  handler[3] = &unk_1004BC6D8;
  objc_copyWeak(&v16, &location);
  v6 = v4;
  v15 = v6;
  v7 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->_firstUnlockToken, v5, handler);

  if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Failed to register for first unlock notification (status = %d)", buf, 8u);
    }
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v9 = [(MRDIRDRouteRecommender *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F1994;
    block[3] = &unk_1004BC700;
    objc_copyWeak(&v13, &location);
    v12 = v6;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
  }

  else
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Device not yet unlocked since boot", buf, 2u);
    }
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_onQueue_initializeSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MRDIRDRouteRecommender *)self queue];
  dispatch_assert_queue_V2(v5);

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000F1B04;
  v13 = &unk_1004BC728;
  v14 = self;
  v15 = v4;
  v6 = v4;
  v7 = objc_retainBlock(&v10);
  v8 = [(MRDIRDRouteRecommender *)self session:v10];

  if (v8)
  {
    v9 = [(MRDIRDRouteRecommender *)self session];
    (v7[2])(v7, v9, 0);
  }

  else
  {
    [(MRDIRDRouteRecommender *)self _onQueue_createRunningSessionWithCompletion:v7];
  }

  if (notify_is_valid_token(self->_firstUnlockToken))
  {
    notify_cancel(self->_firstUnlockToken);
  }
}

- (void)_onQueue_invalidateSession
{
  v3 = [(MRDIRDRouteRecommender *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Invalidating Session", v7, 2u);
  }

  v5 = [(MRDIRDRouteRecommender *)self session];

  if (v5)
  {
    v6 = [(MRDIRDRouteRecommender *)self session];
    [v6 invalidate];
  }

  [(MRDIRDRouteRecommender *)self setSession:0];
}

- (void)_onQueue_createRunningSessionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MRDIRDRouteRecommender *)self queue];
  dispatch_assert_queue_V2(v5);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F1D0C;
  v7[3] = &unk_1004BC750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MRDIRDRouteRecommender *)self fetchServiceTokenWithCompletion:v7];
}

- (void)_onQueue_createRunningSessionWithServiceToken:(id)a3
{
  v4 = a3;
  v5 = [(MRDIRDRouteRecommender *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(IRSession);
  [v6 setDelegate:self];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD createRunningSession: session created %@", &v8, 0xCu);
  }

  [(MRDIRDRouteRecommender *)self setSession:v6];
  [(MRDIRDRouteRecommender *)self runSession:v6 withMode:[(MRDIRDRouteRecommender *)self mode] andServiceToken:v4];
}

- (void)getSessionWithLatestConfiguration:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD getSessionWithLatestConfiguration:", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F2080;
  v7[3] = &unk_1004BC778;
  v8 = v4;
  v6 = v4;
  [(MRDIRDRouteRecommender *)self initializeSessionIfNeededWithCompletion:v7];
}

- (void)runSession:(id)a3 withMode:(int64_t)a4 andServiceToken:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [[IRConfiguration alloc] initWithServiceToken:v8];

  [v9 setMode:a4];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    v12 = v7;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Will call (%p)%@ runWithConfiguration: %@", &v11, 0x20u);
  }

  [v7 runWithConfiguration:v9];
}

- (void)fetchServiceTokenWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD fetchServiceTokenWithCompletion: non user aware", v6, 2u);
  }

  v5 = [IRServiceToken serviceTokenForServiceIdentifier:MRIRServiceTokenIdentifier];
  v3[2](v3, v5);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDIRDRouteRecommender *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F23BC;
  block[3] = &unk_1004B69D0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)session:(id)a3 didUpdateContext:(id)a4
{
  v5 = a4;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD session:didUpdateContext: %@", &v17, 0xCu);
  }

  v7 = [(MRDIRDRouteRecommender *)self defaultsContext];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:IRContextMediaRouteKey];
  }

  v10 = v9;

  v11 = [v10 contextIdentifier];
  v12 = [v10 candidateResults];
  v13 = [(MRDIRDRouteRecommender *)self sortCandidateResults:v12 contextIdentifier:v11];
  if ([(MRDIRDRouteRecommender *)self allowedContextUpdates]>= 1 && ([(MRDIRDRouteRecommender *)self bundleIdentifierPendingUpdate], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    [(MRDIRDRouteRecommender *)self setAllowedContextUpdates:[(MRDIRDRouteRecommender *)self allowedContextUpdates]- 1];
    v15 = [(MRDIRDRouteRecommender *)self delegate];
    v16 = [(MRDIRDRouteRecommender *)self bundleIdentifierPendingUpdate];
    [v15 didReceiveNewRecommendations:v13 forBundleIdentifier:v16];
  }

  else
  {
    v15 = [(MRDIRDRouteRecommender *)self delegate];
    [v15 didReceiveNewRecommendations:v13 forBundleIdentifier:0];
  }
}

- (void)session:(id)a3 suspendedWithReason:(int64_t)a4
{
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD session:suspendedWithReason: %ld", &v6, 0xCu);
  }
}

- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5
{
  v5 = a5;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD session:suspensionReasonEnded:isNoLongerSuspended: %ld %d", &v8, 0x12u);
  }
}

- (void)session:(id)a3 didUpdateBundlesWithSignificantInteractionPattern:(id)a4
{
  v4 = a4;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD session:didUpdateBundlesWithSignificantInteractionPattern: %@", buf, 0xCu);
  }

  v6 = +[NSMutableSet set];
  v20 = +[NSMutableSet set];
  v7 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 identifier];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v16 = v6;
        if ((isKindOfClass & 1) == 0 || (v17 = v13, v18 = [v17 bundleType], objc_msgSend(v7, "setObject:forKeyedSubscript:", v17, v14), v17, objc_msgSend(v6, "addObject:", v14), v16 = v20, v18 == 2))
        {
          [v16 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = +[MRDMediaBundleManager shared];
  [v19 setBundles:v7];
}

@end