@interface GTMTLTelemetryService
- (GTMTLTelemetryService)initWithGuestApp:(GTMTLGuestAppClient *)app;
- (id)query:(id)query;
- (id)update:(id)update;
- (unint64_t)registerObserver:(id)observer;
- (void)deregisterObserver:(unint64_t)observer;
- (void)deregisterObserversForConnection:(id)connection path:(id)path;
- (void)notifyStatistics:(id)statistics;
@end

@implementation GTMTLTelemetryService

- (void)notifyStatistics:(id)statistics
{
  statisticsCopy = statistics;
  pthread_mutex_lock(&self->_lock);
  observers = self->_observers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __42__GTMTLTelemetryService_notifyStatistics___block_invoke;
  v7[3] = &unk_2F1D48;
  v8 = statisticsCopy;
  v6 = statisticsCopy;
  [(GTObservableService *)observers notifyAll:v7];
  pthread_mutex_unlock(&self->_lock);
}

- (id)update:(id)update
{
  updateCopy = update;
  requestID = [updateCopy requestID];
  v4 = [NSMutableArray alloc];
  requests = [updateCopy requests];
  v6 = [v4 initWithCapacity:{objc_msgSend(requests, "count")}];

  requests2 = [updateCopy requests];
  v8 = [requests2 count];

  if (v8)
  {
    v9 = 0;
    v31 = GTTelemetryErrorDomain;
    do
    {
      requests3 = [updateCopy requests];
      v11 = [requests3 objectAtIndexedSubscript:v9];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        requestID2 = [v12 requestID];
        configuration = [v12 configuration];
        [configuration reportFrequencyInSeconds];
        GT_TELEMETRY_ENV = v15;

        if (*&GT_TELEMETRY_ENV != INFINITY)
        {
          dispatch_source_set_timer(self->_timer, 0, (*&GT_TELEMETRY_ENV * 1000000000.0), 0);
        }

        v16 = objc_alloc_init(GTTelemetryResponse);
        [v16 setRequestID:requestID2];
        v33 = 0;
        v17 = [NSKeyedArchiver archivedDataWithRootObject:&__kCFBooleanTrue requiringSecureCoding:1 error:&v33];
        v18 = v33;
        [v16 setData:v17];

        [v16 setError:v18];
        [v6 setObject:v16 atIndexedSubscript:v9];
      }

      else
      {
        v12 = objc_alloc_init(GTTelemetryResponse);
        [v12 setRequestID:{objc_msgSend(v11, "requestID")}];
        v34 = NSLocalizedDescriptionKey;
        v35 = @"unknown request";
        v19 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v20 = [NSError errorWithDomain:v31 code:1 userInfo:v19];
        [v12 setError:v20];

        [v6 setObject:v12 atIndexedSubscript:v9];
      }

      ++v9;
      requests4 = [updateCopy requests];
      v22 = [requests4 count];
    }

    while (v22 > v9);
  }

  v23 = objc_opt_new();
  v24 = [v6 copy];
  v32 = 0;
  v25 = [NSKeyedArchiver archivedDataWithRootObject:v24 requiringSecureCoding:1 error:&v32];
  v26 = v32;
  [v23 setData:v25];

  [v23 setError:v26];
  [v23 setRequestID:requestID];
  completionHandler = [updateCopy completionHandler];
  (completionHandler)[2](completionHandler, v23);

  return 0;
}

- (id)query:(id)query
{
  queryCopy = query;
  requestID = [queryCopy requestID];
  v4 = [NSMutableArray alloc];
  requests = [queryCopy requests];
  v6 = [v4 initWithCapacity:{objc_msgSend(requests, "count")}];

  requests2 = [queryCopy requests];
  v8 = [requests2 count];

  if (v8)
  {
    v9 = 0;
    v32 = GTTelemetryErrorDomain;
    do
    {
      requests3 = [queryCopy requests];
      v11 = [requests3 objectAtIndexedSubscript:v9];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        requestID2 = [v11 requestID];
        v14 = GTMTLGuestAppClient_getTelemetry(requestID2, v13);
        v15 = objc_alloc_init(GTTelemetryResponse);
        [v15 setRequestID:requestID2];
        v35 = 0;
        v16 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v35];
        v17 = v35;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = objc_alloc_init(GTTelemetryResponse);
          [v14 setRequestID:{objc_msgSend(v11, "requestID")}];
          v36 = NSLocalizedDescriptionKey;
          v37 = @"unknown request";
          v21 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v22 = [NSError errorWithDomain:v32 code:1 userInfo:v21];
          [v14 setError:v22];

          [v6 setObject:v14 atIndexedSubscript:v9];
          goto LABEL_9;
        }

        requestID3 = [v11 requestID];
        v14 = objc_opt_new();
        LODWORD(v19) = GT_TELEMETRY_ENV;
        [v14 setReportFrequencyInSeconds:v19];
        v15 = objc_alloc_init(GTTelemetryResponse);
        [v15 setRequestID:requestID3];
        v34 = 0;
        v16 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v34];
        v17 = v34;
      }

      v20 = v17;
      [v15 setData:v16];

      [v15 setError:v20];
      [v6 setObject:v15 atIndexedSubscript:v9];

LABEL_9:
      ++v9;
      requests4 = [queryCopy requests];
      v24 = [requests4 count];
    }

    while (v24 > v9);
  }

  v25 = objc_opt_new();
  v26 = [v6 copy];
  v33 = 0;
  v27 = [NSKeyedArchiver archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v33];
  v28 = v33;
  [v25 setData:v27];

  [v25 setError:v28];
  [v25 setRequestID:requestID];
  completionHandler = [queryCopy completionHandler];
  (completionHandler)[2](completionHandler, v25);

  return 0;
}

- (void)deregisterObserversForConnection:(id)connection path:(id)path
{
  connectionCopy = connection;
  pathCopy = path;
  pthread_mutex_lock(&self->_lock);
  if ([(GTObservableService *)self->_observers count])
  {
    [(GTObservableService *)self->_observers deregisterObserversForConnection:connectionCopy path:pathCopy];
    if (![(GTObservableService *)self->_observers count])
    {
      dispatch_suspend(self->_timer);
    }
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)deregisterObserver:(unint64_t)observer
{
  pthread_mutex_lock(&self->_lock);
  [(GTObservableService *)self->_observers deregisterObserver:observer];
  if (![(GTObservableService *)self->_observers count])
  {
    dispatch_suspend(self->_timer);
  }

  pthread_mutex_unlock(&self->_lock);
}

- (unint64_t)registerObserver:(id)observer
{
  observerCopy = observer;
  pthread_mutex_lock(&self->_lock);
  v5 = [(GTObservableService *)self->_observers registerObserver:observerCopy];

  if ([(GTObservableService *)self->_observers count]== &dword_0 + 1)
  {
    dispatch_resume(self->_timer);
  }

  pthread_mutex_unlock(&self->_lock);
  return v5;
}

- (GTMTLTelemetryService)initWithGuestApp:(GTMTLGuestAppClient *)app
{
  v15.receiver = self;
  v15.super_class = GTMTLTelemetryService;
  v3 = [(GTMTLTelemetryService *)&v15 init];
  if (v3)
  {
    if (s_logUsingOsLog == 1)
    {
      v4 = gt_tagged_log(16);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Create Telemetry Service", buf, 2u);
      }
    }

    else
    {
      v5 = __stdoutp;
      v4 = [NSString stringWithFormat:@"Create Telemetry Service"];
      fprintf(v5, "%s\n", [v4 UTF8String]);
    }

    pthread_mutex_init((v3 + 16), 0);
    v6 = dispatch_queue_create("com.app.gputools.telemetry", 0);
    v7 = *(v3 + 10);
    *(v3 + 10) = v6;

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 10));
    v9 = *(v3 + 11);
    *(v3 + 11) = v8;

    dispatch_source_set_event_handler(*(v3 + 11), &__block_literal_global_127);
    if (*&GT_TELEMETRY_ENV == INFINITY)
    {
      v10 = 5000000;
    }

    else
    {
      v10 = (*&GT_TELEMETRY_ENV * 1000000000.0);
    }

    dispatch_source_set_timer(*(v3 + 11), 0, v10, 0);
    v11 = objc_opt_new();
    v12 = *(v3 + 1);
    *(v3 + 1) = v11;
  }

  return v3;
}

@end