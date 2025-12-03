@interface NanoRoutePlanningSession
+ (id)_defaultClassesBySessionState;
+ (void)processRequest:(id)request withCompletion:(id)completion;
+ (void)setDefaultClass:(Class)class forSessionState:(int64_t)state;
- (BOOL)_hasReceivedAllExpectedRoutes;
- (BOOL)hasReceivedAllExpectedRoutes;
- (BOOL)isLoading;
- (BOOL)shouldBroadcast;
- (Class)_classForState:(int64_t)state;
- (GEOCompanionRouteDetails)selectedCompanionRoute;
- (GEOComposedRoute)selectedRoute;
- (GEOObserverHashTable)observers;
- (NSString)description;
- (NanoRoutePlanningRequest)request;
- (NanoRoutePlanningResponse)response;
- (NanoRoutePlanningSession)init;
- (NanoRoutePlanningSession)initWithOrigin:(unint64_t)origin;
- (id)_description;
- (id)valueForUserInfoKey:(id)key;
- (int64_t)state;
- (unint64_t)origin;
- (void)_anticipateRoutesWithRequest:(id)request;
- (void)_broadcastIfNeeded;
- (void)_cancelRequestIfNeeded;
- (void)_endTransaction;
- (void)_notifyDidChangeFromState:(int64_t)state toState:(int64_t)toState;
- (void)_notifyDidInvalidate;
- (void)_notifySessionDidFail;
- (void)_notifySessionDidStartLoading;
- (void)_notifySessionDidUpdateResponse;
- (void)_prepareForRequest:(id)request;
- (void)_processRequest:(id)request;
- (void)_setResponse:(id)response;
- (void)_setSelectedRouteWithRouteID:(id)d;
- (void)_startTransaction;
- (void)_transitionToState:(int64_t)state;
- (void)_transitionToState:(int64_t)state withClass:(Class)class;
- (void)_updateWithRequest:(id)request response:(id)response;
- (void)dealloc;
- (void)invalidate;
- (void)processRequest:(id)request;
- (void)registerObserver:(id)observer;
- (void)replaceWithStateOfClass:(Class)class;
- (void)setNextClass:(Class)class forSessionState:(int64_t)state;
- (void)setRequest:(id)request;
- (void)setResponse:(id)response;
- (void)setSelectedCompanionRoute:(id)route;
- (void)setSelectedRoute:(id)route;
- (void)setSelectedRouteWithRouteID:(id)d;
- (void)setShouldBroadcast:(BOOL)broadcast;
- (void)setUserInfoKey:(id)key andValue:(id)value;
- (void)unregisterObserver:(id)observer;
- (void)updateWithBlock:(id)block;
- (void)updateWithRequest:(id)request response:(id)response;
@end

@implementation NanoRoutePlanningSession

- (void)dealloc
{
  [(NanoRoutePlanningState *)self->_stateObject leaveToState:0];
  v3 = sub_100032AE0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = self;
    v7 = 2080;
    v8 = "[NanoRoutePlanningSession dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%p] %s", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = NanoRoutePlanningSession;
  [(NanoRoutePlanningSession *)&v4 dealloc];
}

- (NanoRoutePlanningSession)init
{
  defaultOrigin = [objc_opt_class() defaultOrigin];

  return [(NanoRoutePlanningSession *)self initWithOrigin:defaultOrigin];
}

- (NanoRoutePlanningSession)initWithOrigin:(unint64_t)origin
{
  v20.receiver = self;
  v20.super_class = NanoRoutePlanningSession;
  v4 = [(NanoRoutePlanningSession *)&v20 init];
  if (v4)
  {
    v5 = sub_100032AE0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v22 = v4;
      v23 = 2080;
      v24 = "[NanoRoutePlanningSession initWithOrigin:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%p] %s", buf, 0x16u);
    }

    v6 = MapsAppBundleId;
    v7 = [NSString stringWithFormat:@"%@.%@.%p", MapsAppBundleId, objc_opt_class(), v4];
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    v11 = *(v4 + 2);
    *(v4 + 2) = v10;

    dispatch_queue_set_specific(*(v4 + 2), &unk_100065A40, &unk_100065A40, 0);
    v12 = [NSString stringWithFormat:@"%@.%@.%p", v6, objc_opt_class(), v4];
    uTF8String2 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String2, v14);
    v16 = *(v4 + 3);
    *(v4 + 3) = v15;

    dispatch_queue_set_specific(*(v4 + 3), &off_1000862E0, &off_1000862E0, 0);
    *(v4 + 4) = origin;
    v17 = [NSMutableDictionary dictionaryWithCapacity:1];
    v18 = *(v4 + 11);
    *(v4 + 11) = v17;
  }

  return v4;
}

- (NSString)description
{
  if (dispatch_get_specific(&unk_100065A40) == &unk_100065A40)
  {
    _description = [(NanoRoutePlanningSession *)self _description];
  }

  else
  {
    dispatch_assert_queue_not_V2(self->_isolationQueue);
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_100032EC0;
    v11 = sub_100032ED0;
    v12 = 0;
    isolationQueue = self->_isolationQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100032ED8;
    v6[3] = &unk_1000856D0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(isolationQueue, v6);
    _description = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return _description;
}

- (id)_description
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  v7.receiver = self;
  v7.super_class = NanoRoutePlanningSession;
  v3 = [(NanoRoutePlanningSession *)&v7 description];
  v4 = sub_1000134A4(self->_origin);
  v5 = [NSString stringWithFormat:@"%@ (origin:%@)", v3, v4];

  return v5;
}

- (void)invalidate
{
  if (![(NanoRoutePlanningSession *)self isInvalidated])
  {
    self->_invalidated = 1;
    v3 = sub_100032AE0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%p] is being invalidated", buf, 0xCu);
    }

    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000330D8;
    block[3] = &unk_100084F10;
    block[4] = self;
    dispatch_async(isolationQueue, block);
  }
}

- (void)processRequest:(id)request
{
  requestCopy = request;
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000331B4;
  v7[3] = &unk_1000856F8;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(isolationQueue, v7);
}

- (void)_processRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(NanoRoutePlanningSession *)self _cancelRequestIfNeeded];
  [(NanoRoutePlanningSession *)self _prepareForRequest:requestCopy];
  [(NanoRoutePlanningSession *)self _broadcastIfNeeded];
  v5 = sub_100032AE0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = requestCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%p] Will process request: %@", &v6, 0x16u);
  }

  [(NanoRoutePlanningSession *)self _transitionToState:[(objc_class *)[(NanoRoutePlanningSession *)self _classForState:3] requiredInitialStateForRequest:requestCopy]];
}

- (void)_prepareForRequest:(id)request
{
  isolationQueue = self->_isolationQueue;
  requestCopy = request;
  dispatch_assert_queue_V2(isolationQueue);
  dispatch_assert_queue_not_V2(self->_stateIsolationQueue);
  self->_state = 0;
  v6 = [requestCopy mutableCopy];

  request = self->_request;
  self->_request = v6;

  v8 = objc_alloc_init(NanoRoutePlanningMutableResponse);
  [(NanoRoutePlanningSession *)self _setResponse:v8];

  stateIsolationQueue = self->_stateIsolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000333A8;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(stateIsolationQueue, block);
}

- (void)_cancelRequestIfNeeded
{
  dispatch_assert_queue_V2(self->_isolationQueue);

  [(NanoRoutePlanningSession *)self _transitionToState:0];
}

- (unint64_t)origin
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000334E4;
  v6[3] = &unk_1000856D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int64_t)state
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000335AC;
  v6[3] = &unk_1000856D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NanoRoutePlanningRequest)request
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100032EC0;
  v11 = sub_100032ED0;
  v12 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000336B8;
  v6[3] = &unk_1000856D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NanoRoutePlanningResponse)response
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100032EC0;
  v11 = sub_100032ED0;
  v12 = 0;
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000337FC;
  v6[3] = &unk_1000856D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(isolationQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)shouldBroadcast
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = selfCopy->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000338FC;
  v5[3] = &unk_1000856D0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setShouldBroadcast:(BOOL)broadcast
{
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033988;
  v4[3] = &unk_100084F60;
  v4[4] = self;
  broadcastCopy = broadcast;
  dispatch_async(isolationQueue, v4);
}

- (BOOL)isLoading
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100033A44;
  v5[3] = &unk_1000856D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setRequest:(id)request
{
  v4 = [request mutableCopy];
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033B00;
  v7[3] = &unk_1000856F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v7);
}

- (void)setResponse:(id)response
{
  v4 = [response mutableCopy];
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033BA8;
  v7[3] = &unk_1000856F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(isolationQueue, v7);
}

- (void)_setResponse:(id)response
{
  responseCopy = response;
  dispatch_assert_queue_V2(self->_isolationQueue);
  response = self->_response;
  p_response = &self->_response;
  if (response != responseCopy)
  {
    v8 = sub_100032AE0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *p_response;
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = responseCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Changing response from %{public}@ to %{public}@", &v10, 0x16u);
    }

    objc_storeStrong(p_response, response);
  }
}

- (id)valueForUserInfoKey:(id)key
{
  keyCopy = key;
  specific = dispatch_get_specific(&off_1000862E0);
  stateIsolationQueue = self->_stateIsolationQueue;
  if (specific == &off_1000862E0)
  {
    dispatch_assert_queue_V2(stateIsolationQueue);
    v8 = [(NSMutableDictionary *)self->_userInfo objectForKeyedSubscript:keyCopy];
  }

  else
  {
    dispatch_assert_queue_not_V2(stateIsolationQueue);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100032EC0;
    v17 = sub_100032ED0;
    v18 = 0;
    v7 = self->_stateIsolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100033DFC;
    block[3] = &unk_1000862F0;
    v12 = &v13;
    block[4] = self;
    v11 = keyCopy;
    dispatch_sync(v7, block);
    v8 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return v8;
}

- (void)setUserInfoKey:(id)key andValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  specific = dispatch_get_specific(&off_1000862E0);
  stateIsolationQueue = self->_stateIsolationQueue;
  if (specific == &off_1000862E0)
  {
    dispatch_assert_queue_V2(stateIsolationQueue);
    [(NSMutableDictionary *)self->_userInfo setObject:valueCopy forKeyedSubscript:keyCopy];
  }

  else
  {
    dispatch_assert_queue_not_V2(stateIsolationQueue);
    v10 = self->_stateIsolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100033F4C;
    block[3] = &unk_100085E38;
    block[4] = self;
    v12 = keyCopy;
    v13 = valueCopy;
    dispatch_sync(v10, block);
  }
}

- (void)_broadcastIfNeeded
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_shouldBroadcast)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100033FF0;
    block[3] = &unk_100084F10;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_notifySessionDidStartLoading
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000341A8;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notifySessionDidUpdateResponse
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034350;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notifySessionDidFail
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000344F8;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_notifyDidInvalidate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003468C;
  block[3] = &unk_100084F10;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

+ (id)_defaultClassesBySessionState
{
  if (qword_10009E808 != -1)
  {
    sub_100055C70();
  }

  v3 = qword_10009E800;

  return v3;
}

+ (void)setDefaultClass:(Class)class forSessionState:(int64_t)state
{
  _defaultClassesBySessionState = [self _defaultClassesBySessionState];
  v6 = [NSNumber numberWithInteger:state];
  [_defaultClassesBySessionState setObject:class forKeyedSubscript:v6];
}

- (void)setNextClass:(Class)class forSessionState:(int64_t)state
{
  classesBySessionState = self->_classesBySessionState;
  v6 = [NSNumber numberWithInteger:state];
  [(NSMutableDictionary *)classesBySessionState setObject:class forKeyedSubscript:v6];
}

- (Class)_classForState:(int64_t)state
{
  v4 = [NSNumber numberWithInteger:state];
  v5 = [(NSMutableDictionary *)self->_classesBySessionState objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    [(NSMutableDictionary *)self->_classesBySessionState setObject:0 forKeyedSubscript:v4];
    v7 = v6;
  }

  else
  {
    _defaultClassesBySessionState = [objc_opt_class() _defaultClassesBySessionState];
    v7 = [_defaultClassesBySessionState objectForKeyedSubscript:v4];
  }

  return v7;
}

- (void)updateWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    objc_initWeak(&location, self);
    isolationQueue = self->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034B3C;
    block[3] = &unk_100086338;
    objc_copyWeak(&v8, &location);
    v7 = blockCopy;
    dispatch_async(isolationQueue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_transitionToState:(int64_t)state
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_state != state)
  {
    v5 = [(NanoRoutePlanningSession *)self _classForState:state];

    [(NanoRoutePlanningSession *)self _transitionToState:state withClass:v5];
  }
}

- (void)_transitionToState:(int64_t)state withClass:(Class)class
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (class)
  {
    state = self->_state;
    [(NanoRoutePlanningState *)self->_stateObject leaveToState:state];
    if (state < 1)
    {
      [(NanoRoutePlanningSession *)self _endTransaction];
    }

    else
    {
      [(NanoRoutePlanningSession *)self _startTransaction];
    }

    self->_state = state;
    v10 = [[class alloc] initWithStateManager:self isolationQueue:self->_stateIsolationQueue];
    stateObject = self->_stateObject;
    self->_stateObject = v10;

    v12 = sub_100032AE0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = sub_100013558(state);
      v14 = NSStringFromClass(class);
      v15 = 134218498;
      selfCopy2 = self;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%p] Will transition to state %@ with class %@", &v15, 0x20u);
    }

    [(NanoRoutePlanningState *)self->_stateObject enterToState:state fromState:state];
    [(NanoRoutePlanningSession *)self _notifyDidChangeFromState:state toState:self->_state];
  }

  else
  {
    v8 = sub_100032AE0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_100013558(state);
      v15 = 134218242;
      selfCopy2 = self;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%p] No class found for state %@", &v15, 0x16u);
    }

    [(NanoRoutePlanningSession *)self _notifySessionDidFail];
  }
}

- (void)replaceWithStateOfClass:(Class)class
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000351E4;
  v6[3] = &unk_100086360;
  objc_copyWeak(v7, &location);
  v6[4] = self;
  v7[1] = class;
  dispatch_async(isolationQueue, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)_notifyDidChangeFromState:(int64_t)state toState:(int64_t)toState
{
  v7 = sub_100032AE0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_100013558(state);
    v9 = sub_100013558(toState);
    v11 = 134218498;
    selfCopy = self;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%p] State changed from '%@' to '%@'", &v11, 0x20u);
  }

  if (!state)
  {
    [(NanoRoutePlanningSession *)self _notifySessionDidStartLoading];
  }

  if (toState == 4)
  {
    lastError = [(NanoRoutePlanningResponse *)self->_response lastError];

    if (lastError)
    {
      [(NanoRoutePlanningSession *)self _notifySessionDidFail];
    }

    else
    {
      [(NanoRoutePlanningSession *)self _notifySessionDidUpdateResponse];
    }
  }
}

- (GEOComposedRoute)selectedRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100032EC0;
  v10 = sub_100032ED0;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003547C;
  v5[3] = &unk_1000856D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (GEOCompanionRouteDetails)selectedCompanionRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100032EC0;
  v10 = sub_100032ED0;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000355BC;
  v5[3] = &unk_1000856D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setSelectedRoute:(id)route
{
  if (route)
  {
    uniqueRouteID = [route uniqueRouteID];
    [(NanoRoutePlanningSession *)self setSelectedRouteWithRouteID:uniqueRouteID];
  }
}

- (void)setSelectedCompanionRoute:(id)route
{
  if (route)
  {
    routeID = [route routeID];
    v5 = [NSUUID _maps_UUIDWithData:routeID];

    [(NanoRoutePlanningSession *)self setSelectedRouteWithRouteID:v5];
  }
}

- (void)setSelectedRouteWithRouteID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    isolationQueue = self->_isolationQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003579C;
    v7[3] = &unk_1000856F8;
    v7[4] = self;
    v8 = dCopy;
    dispatch_async(isolationQueue, v7);
  }
}

- (void)_setSelectedRouteWithRouteID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_isolationQueue);
  selectedRouteID = [(NanoRoutePlanningResponse *)self->_response selectedRouteID];
  if (([MNComparison isValue:selectedRouteID equalTo:dCopy]& 1) == 0)
  {
    [(NanoRoutePlanningResponse *)self->_response setSelectedRouteID:dCopy];
    [(NanoRoutePlanningSession *)self _notifySessionDidUpdateResponse];
  }
}

- (BOOL)hasReceivedAllExpectedRoutes
{
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003591C;
  block[3] = &unk_100086388;
  block[4] = &v8;
  objc_copyWeak(&v6, &location);
  dispatch_sync(isolationQueue, block);
  LOBYTE(isolationQueue) = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return isolationQueue;
}

- (BOOL)_hasReceivedAllExpectedRoutes
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  response = self->_response;
  if (response)
  {
    expectedNumberOfRoutes = [(NanoRoutePlanningResponse *)response expectedNumberOfRoutes];
    routes = [(NanoRoutePlanningResponse *)self->_response routes];
    v6 = [routes count];

    if (expectedNumberOfRoutes)
    {
      v7 = v6 == expectedNumberOfRoutes;
    }

    else
    {
      v7 = 0;
    }

    LOBYTE(response) = v7;
  }

  return response;
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___NanoRoutePlanningSessionObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  [(NanoRoutePlanningSession *)self _assertNotInvalidated];
  if (observerCopy)
  {
    v5 = sub_100032AE0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = observerCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%p] Adding observer: %@", &v7, 0x16u);
    }

    observers = [(NanoRoutePlanningSession *)self observers];
    [observers registerObserver:observerCopy];
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = sub_100032AE0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = observerCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%p] Removing observer: %@", &v7, 0x16u);
    }

    observers = [(NanoRoutePlanningSession *)self observers];
    [observers unregisterObserver:observerCopy];
  }
}

- (void)_startTransaction
{
  if (!self->_transaction)
  {
    v3 = sub_100032AE0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%p] Starting transaction", buf, 0xCu);
    }

    v4 = +[NSBundle mainBundle];
    bundleIdentifier = [v4 bundleIdentifier];
    v6 = [NSString stringWithFormat:@"%@.%@.%p", bundleIdentifier, objc_opt_class(), self];
    [v6 UTF8String];
    v7 = os_transaction_create();
    transaction = self->_transaction;
    self->_transaction = v7;
  }
}

- (void)_endTransaction
{
  if (self->_transaction)
  {
    v3 = sub_100032AE0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%p] Ending transaction", &v5, 0xCu);
    }

    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

- (void)_anticipateRoutesWithRequest:(id)request
{
  isolationQueue = self->_isolationQueue;
  requestCopy = request;
  dispatch_assert_queue_V2(isolationQueue);
  [(NanoRoutePlanningSession *)self _prepareForRequest:requestCopy];

  [(NanoRoutePlanningSession *)self _broadcastIfNeeded];
  v6 = sub_100032AE0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    companionRouteContext = [(NanoRoutePlanningRequest *)self->_request companionRouteContext];
    simpleDescription = [companionRouteContext simpleDescription];
    v9 = 134218242;
    selfCopy = self;
    v11 = 2112;
    v12 = simpleDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%p] Anticipate request with context %@", &v9, 0x16u);
  }

  [(NanoRoutePlanningSession *)self _transitionToState:3];
}

- (void)updateWithRequest:(id)request response:(id)response
{
  requestCopy = request;
  responseCopy = response;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003609C;
  block[3] = &unk_100085E38;
  block[4] = self;
  v12 = requestCopy;
  v13 = responseCopy;
  v9 = responseCopy;
  v10 = requestCopy;
  dispatch_async(isolationQueue, block);
}

- (void)_updateWithRequest:(id)request response:(id)response
{
  requestCopy = request;
  responseCopy = response;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100036424;
  v29[3] = &unk_100085E38;
  v29[4] = self;
  v8 = requestCopy;
  v30 = v8;
  v9 = responseCopy;
  v31 = v9;
  v10 = objc_retainBlock(v29);
  v11 = v10;
  state = self->_state;
  if (state != 3)
  {
    if (state == 4)
    {
      (v10[2])(v10);
      v13 = sub_100032AE0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        companionRouteContext = [(NanoRoutePlanningRequest *)self->_request companionRouteContext];
        simpleDescription = [companionRouteContext simpleDescription];
        *buf = 134218242;
        selfCopy3 = self;
        v34 = 2112;
        v35 = simpleDescription;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%p] Updating completed session with context %@, notify observers", buf, 0x16u);
      }

      [(NanoRoutePlanningSession *)self _notifySessionDidUpdateResponse];
      goto LABEL_20;
    }

    v16 = sub_100032AE0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      companionRouteContext2 = [(NanoRoutePlanningRequest *)self->_request companionRouteContext];
      simpleDescription2 = [companionRouteContext2 simpleDescription];
      *buf = 134218242;
      selfCopy3 = self;
      v34 = 2112;
      v35 = simpleDescription2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%p] Force anticipate request before updating request/response with context %@", buf, 0x16u);
    }

    [(NanoRoutePlanningSession *)self _anticipateRoutesWithRequest:v8];
  }

  v11[2](v11);
  hasReceivedAllExpectedRoutes = [v9 hasReceivedAllExpectedRoutes];
  lastError = [v9 lastError];

  if (lastError || hasReceivedAllExpectedRoutes)
  {
    v21 = sub_100032AE0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      companionRouteContext3 = [(NanoRoutePlanningRequest *)self->_request companionRouteContext];
      simpleDescription3 = [companionRouteContext3 simpleDescription];
      if (hasReceivedAllExpectedRoutes)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v24 = v23;
      lastError2 = [v9 lastError];
      if (lastError2)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = v26;
      *buf = 134218754;
      selfCopy3 = self;
      v34 = 2112;
      v35 = simpleDescription3;
      v36 = 2112;
      v37 = v24;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%p] Updating request with context %@ (hasReceivedAllRoutes: %@, error: %@)", buf, 0x2Au);
    }

    [(NanoRoutePlanningSession *)self _transitionToState:4];
  }

LABEL_20:
}

+ (void)processRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100032EC0;
  v16 = sub_100032ED0;
  v17 = objc_alloc_init(_NanoRoutePlanningSingleRequester);
  v7 = v13[5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000367D0;
  v9[3] = &unk_1000863B0;
  v8 = completionCopy;
  v10 = v8;
  v11 = &v12;
  [v7 processRequest:requestCopy withCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

@end