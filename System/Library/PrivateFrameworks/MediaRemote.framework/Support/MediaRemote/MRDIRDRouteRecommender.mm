@interface MRDIRDRouteRecommender
- (MRDIRDRouteRecommender)init;
- (MRRouteRecommenderDelegate)delegate;
- (id)defaultsContext;
- (id)irCandidateFor:(id)for;
- (id)sortCandidateResults:(id)results contextIdentifier:(id)identifier;
- (void)_addEvent:(id)event forRouteCandidate:(id)candidate;
- (void)_onQueue_createRunningSessionWithCompletion:(id)completion;
- (void)_onQueue_createRunningSessionWithServiceToken:(id)token;
- (void)_onQueue_initializeSessionWithCompletion:(id)completion;
- (void)_onQueue_invalidateSession;
- (void)addEvent:(id)event forRouteCandidate:(id)candidate;
- (void)fetchServiceTokenWithCompletion:(id)completion;
- (void)getSessionWithLatestConfiguration:(id)configuration;
- (void)initializeSessionIfNeededWithCompletion:(id)completion;
- (void)requestCurrentContextWithBundleID:(id)d;
- (void)runSession:(id)session withMode:(int64_t)mode andServiceToken:(id)token;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateBundlesWithSignificantInteractionPattern:(id)pattern;
- (void)session:(id)session didUpdateContext:(id)context;
- (void)session:(id)session suspendedWithReason:(int64_t)reason;
- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended;
- (void)setMode:(int64_t)mode;
- (void)updateRouteCandidate:(id)candidate;
- (void)updateRouteCandidates:(id)candidates;
@end

@implementation MRDIRDRouteRecommender

- (id)defaultsContext
{
  userDefaults = [(MRDIRDRouteRecommender *)self userDefaults];
  v3 = [userDefaults objectForKey:@"IRContextUpdate"];

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

- (void)setMode:(int64_t)mode
{
  self->_mode = mode;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Mode set to %ld", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F04C4;
  v6[3] = &unk_1004BC4C8;
  v6[4] = self;
  v6[5] = mode;
  [(MRDIRDRouteRecommender *)self initializeSessionIfNeededWithCompletion:v6];
}

- (void)_addEvent:(id)event forRouteCandidate:(id)candidate
{
  eventCopy = event;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F0658;
  v9[3] = &unk_1004BC4F0;
  v9[4] = self;
  candidateCopy = candidate;
  v11 = eventCopy;
  v7 = eventCopy;
  v8 = candidateCopy;
  [(MRDIRDRouteRecommender *)self getSessionWithLatestConfiguration:v9];
}

- (void)addEvent:(id)event forRouteCandidate:(id)candidate
{
  eventCopy = event;
  candidateCopy = candidate;
  v8 = eventCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleID = [v8 bundleID];
    if (bundleID)
    {
      v10 = +[MRDMediaBundleManager shared];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000F0978;
      v12[3] = &unk_1004BC518;
      bundleID = bundleID;
      v13 = bundleID;
      v14 = v8;
      selfCopy = self;
      v16 = candidateCopy;
      [v10 queryEligibilityOf:bundleID completionHandler:v12];
    }

    else
    {
      [(MRDIRDRouteRecommender *)self _addEvent:v8 forRouteCandidate:candidateCopy];
    }
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1003A88D4(v8, v11);
    }

    bundleID = _MRLogForCategory();
    if (os_log_type_enabled(bundleID, OS_LOG_TYPE_FAULT))
    {
      sub_1003A8978(v8, bundleID);
    }
  }
}

- (void)requestCurrentContextWithBundleID:(id)d
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F0B34;
  v5[3] = &unk_1004BC580;
  dCopy = d;
  selfCopy = self;
  v4 = dCopy;
  [(MRDIRDRouteRecommender *)self getSessionWithLatestConfiguration:v5];
}

- (void)updateRouteCandidate:(id)candidate
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F0CC8;
  v5[3] = &unk_1004BC580;
  candidateCopy = candidate;
  selfCopy = self;
  v4 = candidateCopy;
  [(MRDIRDRouteRecommender *)self getSessionWithLatestConfiguration:v5];
}

- (void)updateRouteCandidates:(id)candidates
{
  candidatesCopy = candidates;
  if ([candidatesCopy count])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000F0E94;
    v5[3] = &unk_1004BC580;
    v6 = candidatesCopy;
    selfCopy = self;
    [(MRDIRDRouteRecommender *)self getSessionWithLatestConfiguration:v5];
  }
}

- (id)sortCandidateResults:(id)results contextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allObjects = [results allObjects];
  v7 = [allObjects sortedArrayUsingComparator:&stru_1004BC648];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F14B0;
  v11[3] = &unk_1004BC670;
  v12 = identifierCopy;
  v8 = identifierCopy;
  v9 = [v7 msv_map:v11];

  return v9;
}

- (id)irCandidateFor:(id)for
{
  forCopy = for;
  v4 = [IRCandidate alloc];
  routeIdentifier = [forCopy routeIdentifier];
  v6 = [v4 initWithCandidateIdentifier:routeIdentifier];

  nodes = [forCopy nodes];

  v8 = [nodes msv_map:&stru_1004BC6B0];
  v9 = [NSSet setWithArray:v8];
  [v6 updateNodes:v9];

  return v6;
}

- (void)initializeSessionIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(MRDIRDRouteRecommender *)self queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000F190C;
  handler[3] = &unk_1004BC6D8;
  objc_copyWeak(&v16, &location);
  v6 = completionCopy;
  v15 = v6;
  v7 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->_firstUnlockToken, queue, handler);

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
    queue2 = [(MRDIRDRouteRecommender *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F1994;
    block[3] = &unk_1004BC700;
    objc_copyWeak(&v13, &location);
    v12 = v6;
    dispatch_async(queue2, block);

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

- (void)_onQueue_initializeSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(MRDIRDRouteRecommender *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000F1B04;
  v13 = &unk_1004BC728;
  selfCopy = self;
  v15 = completionCopy;
  v6 = completionCopy;
  v7 = objc_retainBlock(&v10);
  v8 = [(MRDIRDRouteRecommender *)self session:v10];

  if (v8)
  {
    session = [(MRDIRDRouteRecommender *)self session];
    (v7[2])(v7, session, 0);
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
  queue = [(MRDIRDRouteRecommender *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Invalidating Session", v7, 2u);
  }

  session = [(MRDIRDRouteRecommender *)self session];

  if (session)
  {
    session2 = [(MRDIRDRouteRecommender *)self session];
    [session2 invalidate];
  }

  [(MRDIRDRouteRecommender *)self setSession:0];
}

- (void)_onQueue_createRunningSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(MRDIRDRouteRecommender *)self queue];
  dispatch_assert_queue_V2(queue);

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F1D0C;
  v7[3] = &unk_1004BC750;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(MRDIRDRouteRecommender *)self fetchServiceTokenWithCompletion:v7];
}

- (void)_onQueue_createRunningSessionWithServiceToken:(id)token
{
  tokenCopy = token;
  queue = [(MRDIRDRouteRecommender *)self queue];
  dispatch_assert_queue_V2(queue);

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
  [(MRDIRDRouteRecommender *)self runSession:v6 withMode:[(MRDIRDRouteRecommender *)self mode] andServiceToken:tokenCopy];
}

- (void)getSessionWithLatestConfiguration:(id)configuration
{
  configurationCopy = configuration;
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
  v8 = configurationCopy;
  v6 = configurationCopy;
  [(MRDIRDRouteRecommender *)self initializeSessionIfNeededWithCompletion:v7];
}

- (void)runSession:(id)session withMode:(int64_t)mode andServiceToken:(id)token
{
  sessionCopy = session;
  tokenCopy = token;
  v9 = [[IRConfiguration alloc] initWithServiceToken:tokenCopy];

  [v9 setMode:mode];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218498;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = sessionCopy;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD Will call (%p)%@ runWithConfiguration: %@", &v11, 0x20u);
  }

  [sessionCopy runWithConfiguration:v9];
}

- (void)fetchServiceTokenWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD fetchServiceTokenWithCompletion: non user aware", v6, 2u);
  }

  v5 = [IRServiceToken serviceTokenForServiceIdentifier:MRIRServiceTokenIdentifier];
  completionCopy[2](completionCopy, v5);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  queue = [(MRDIRDRouteRecommender *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F23BC;
  block[3] = &unk_1004B69D0;
  v12 = sessionCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)session:(id)session didUpdateContext:(id)context
{
  contextCopy = context;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = contextCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD session:didUpdateContext: %@", &v17, 0xCu);
  }

  defaultsContext = [(MRDIRDRouteRecommender *)self defaultsContext];
  v8 = defaultsContext;
  if (defaultsContext)
  {
    v9 = defaultsContext;
  }

  else
  {
    v9 = [contextCopy objectForKeyedSubscript:IRContextMediaRouteKey];
  }

  v10 = v9;

  contextIdentifier = [v10 contextIdentifier];
  candidateResults = [v10 candidateResults];
  v13 = [(MRDIRDRouteRecommender *)self sortCandidateResults:candidateResults contextIdentifier:contextIdentifier];
  if ([(MRDIRDRouteRecommender *)self allowedContextUpdates]>= 1 && ([(MRDIRDRouteRecommender *)self bundleIdentifierPendingUpdate], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    [(MRDIRDRouteRecommender *)self setAllowedContextUpdates:[(MRDIRDRouteRecommender *)self allowedContextUpdates]- 1];
    delegate = [(MRDIRDRouteRecommender *)self delegate];
    bundleIdentifierPendingUpdate = [(MRDIRDRouteRecommender *)self bundleIdentifierPendingUpdate];
    [delegate didReceiveNewRecommendations:v13 forBundleIdentifier:bundleIdentifierPendingUpdate];
  }

  else
  {
    delegate = [(MRDIRDRouteRecommender *)self delegate];
    [delegate didReceiveNewRecommendations:v13 forBundleIdentifier:0];
  }
}

- (void)session:(id)session suspendedWithReason:(int64_t)reason
{
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD session:suspendedWithReason: %ld", &v6, 0xCu);
  }
}

- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    endedCopy = ended;
    v10 = 1024;
    v11 = suspendedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD session:suspensionReasonEnded:isNoLongerSuspended: %ld %d", &v8, 0x12u);
  }
}

- (void)session:(id)session didUpdateBundlesWithSignificantInteractionPattern:(id)pattern
{
  patternCopy = pattern;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = patternCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].IRD session:didUpdateBundlesWithSignificantInteractionPattern: %@", buf, 0xCu);
  }

  v6 = +[NSMutableSet set];
  v20 = +[NSMutableSet set];
  v7 = +[NSMutableDictionary dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = patternCopy;
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
        identifier = [v13 identifier];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v16 = v6;
        if ((isKindOfClass & 1) == 0 || (v17 = v13, v18 = [v17 bundleType], objc_msgSend(v7, "setObject:forKeyedSubscript:", v17, identifier), v17, objc_msgSend(v6, "addObject:", identifier), v16 = v20, v18 == 2))
        {
          [v16 addObject:identifier];
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