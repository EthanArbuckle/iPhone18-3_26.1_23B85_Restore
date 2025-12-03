@interface MRDAVReconnaissanceSession
- (MRDAVReconnaissanceSession)initWithRouteUID:(id)d;
- (void)_concludeSearchWithRoute:(id)route;
- (void)_endSearch;
- (void)_routingDataSourcePickableRoutesDidChange:(id)change;
- (void)_timeoutTimerFired:(id)fired;
- (void)beginSearchWithTimeout:(double)timeout completion:(id)completion;
- (void)cancelSearch;
- (void)dealloc;
@end

@implementation MRDAVReconnaissanceSession

- (MRDAVReconnaissanceSession)initWithRouteUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MRDAVReconnaissanceSession;
  v5 = [(MRDAVReconnaissanceSession *)&v12 init];
  if (v5)
  {
    v6 = [dCopy copy];
    routeUID = v5->_routeUID;
    v5->_routeUID = v6;

    v8 = objc_alloc_init(MRDAVRoutingDataSource);
    routingDataSource = v5->_routingDataSource;
    v5->_routingDataSource = v8;

    v5->_searchInProgress = 0;
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v5 selector:"_routingDataSourcePickableRoutesDidChange:" name:@"MRDAVRoutingDataSourcePickableRoutesDidChangeNotification" object:v5->_routingDataSource];
  }

  return v5;
}

- (void)dealloc
{
  [(MRDAVReconnaissanceSession *)self cancelSearch];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRDAVReconnaissanceSession;
  [(MRDAVReconnaissanceSession *)&v4 dealloc];
}

- (void)beginSearchWithTimeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  if (self->_searchInProgress)
  {
    [(MRDAVReconnaissanceSession *)self cancelSearch];
  }

  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    timeoutCopy = timeout;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[ReconnaissanceSession] Beginning search with timeout %f", &v9, 0xCu);
  }

  self->_searchInProgress = 1;
  self->_timeoutInterval = timeout;
  [(MRDAVReconnaissanceSession *)self setCallback:completionCopy];
  v8 = [NSTimer scheduledTimerWithTimeInterval:self target:"_timeoutTimerFired:" selector:0 userInfo:0 repeats:timeout];
  [(MRDAVReconnaissanceSession *)self setTimeoutTimer:v8];

  [(MRDAVRoutingDataSource *)self->_routingDataSource setDiscoveryMode:3];
}

- (void)cancelSearch
{
  if (self->_searchInProgress)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[ReconnaissanceSession] Cancelling search for session %{public}@", &v7, 0xCu);
    }

    callback = [(MRDAVReconnaissanceSession *)self callback];

    if (callback)
    {
      Error = MRMediaRemoteCreateError();
      callback2 = [(MRDAVReconnaissanceSession *)self callback];
      (callback2)[2](callback2, 0, Error);
    }

    [(MRDAVReconnaissanceSession *)self _endSearch];
  }
}

- (void)_routingDataSourcePickableRoutesDidChange:(id)change
{
  if (self->_searchInProgress)
  {
    [(MRDAVRoutingDataSource *)self->_routingDataSource pickableRoutesForCategory:0];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    v6 = v4;
    if (v5)
    {
      v7 = v5;
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ([v10 matchesUniqueIdentifier:{self->_routeUID, v11}])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          v6 = v4;
          goto LABEL_13;
        }
      }

      v6 = v10;

      if (!v6)
      {
        goto LABEL_14;
      }

      [(MRDAVReconnaissanceSession *)self _concludeSearchWithRoute:v6];
    }

LABEL_13:

LABEL_14:
  }
}

- (void)_timeoutTimerFired:(id)fired
{
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    timeoutInterval = self->_timeoutInterval;
    v9 = 134217984;
    v10 = timeoutInterval;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[ReconnaissanceSession] Session timed out after %f seconds", &v9, 0xCu);
  }

  callback = [(MRDAVReconnaissanceSession *)self callback];

  if (callback)
  {
    Error = MRMediaRemoteCreateError();
    callback2 = [(MRDAVReconnaissanceSession *)self callback];
    (callback2)[2](callback2, 0, Error);
  }

  [(MRDAVReconnaissanceSession *)self _endSearch];
}

- (void)_concludeSearchWithRoute:(id)route
{
  routeCopy = route;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = routeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ReconnaissanceSession] Found route matching query: %@", &v8, 0xCu);
  }

  callback = [(MRDAVReconnaissanceSession *)self callback];

  if (callback)
  {
    callback2 = [(MRDAVReconnaissanceSession *)self callback];
    (callback2)[2](callback2, routeCopy, 0);
  }

  [(MRDAVReconnaissanceSession *)self _endSearch];
}

- (void)_endSearch
{
  if (self->_searchInProgress)
  {
    timeoutTimer = [(MRDAVReconnaissanceSession *)self timeoutTimer];
    [timeoutTimer invalidate];

    [(MRDAVReconnaissanceSession *)self setTimeoutTimer:0];
    [(MRDAVRoutingDataSource *)self->_routingDataSource setDiscoveryMode:0];
    self->_searchInProgress = 0;
  }
}

@end