@interface GEOResourceRequesterLocalProxy
- (GEOResourceRequesterLocalProxy)init;
- (id)_finished:(id)_finished withResult:(id)result error:(id)error;
- (void)_cleanUpFinishedHandlers:(id)handlers;
- (void)_failAllPendingRequests;
- (void)_fetchResources:(id)resources force:(BOOL)force manifestConfiguration:(id)configuration destination:(id)destination additionalDestination:(id)additionalDestination auditToken:(id)token signpostID:(unint64_t)d;
- (void)_resetRequestTimeout;
- (void)dealloc;
- (void)didResolvePaths:(id)paths forResources:(id)resources;
- (void)failedToResolveResources:(id)resources withError:(id)error;
- (void)fetchResources:(id)resources force:(BOOL)force unpack:(BOOL)unpack manifestConfiguration:(id)configuration auditToken:(id)token signpostID:(unint64_t)d queue:(id)queue handler:(id)self0;
- (void)reportCorruptUnpackedResource:(id)resource fileURL:(id)l;
@end

@implementation GEOResourceRequesterLocalProxy

- (void)_resetRequestTimeout
{
  v3 = GeoServicesConfig_ResourceRequesterTimeoutEnabled[1];
  BOOL = GEOConfigGetBOOL();
  requestTimeoutTimer = self->_requestTimeoutTimer;
  if (BOOL)
  {
    if (requestTimeoutTimer)
    {
      goto LABEL_4;
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_workQueue);
    v7 = self->_requestTimeoutTimer;
    self->_requestTimeoutTimer = v6;

    dispatch_source_set_timer(self->_requestTimeoutTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    v8 = self->_requestTimeoutTimer;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100043F44;
    v15[3] = &unk_1000838F0;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v8, v15);
    dispatch_activate(self->_requestTimeoutTimer);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    if (self->_requestTimeoutTimer)
    {
LABEL_4:
      GEODataRequestTimeout();
      if (v9 * 3.0 * 0.5 <= 300.0)
      {
        v11 = 300000000000;
      }

      else
      {
        GEODataRequestTimeout();
        v11 = (v10 * 3.0 * 0.5 * 1000000000.0);
      }

      v13 = self->_requestTimeoutTimer;
      v14 = dispatch_time(0, v11);
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 1uLL);
    }
  }

  else if (requestTimeoutTimer)
  {
    dispatch_source_cancel(requestTimeoutTimer);
    v12 = self->_requestTimeoutTimer;
    self->_requestTimeoutTimer = 0;
  }
}

- (void)_failAllPendingRequests
{
  v3 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  allValues = [(NSMutableDictionary *)self->_requestHandlersPending allValues];
  v5 = [allValues countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      v8 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [v3 addObjectsFromArray:*(*(&v32 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_requestHandlersPending removeAllObjects];
  if ([v3 count])
  {
    v9 = sub_1000018BC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 count];
      *buf = 67109120;
      v39 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Found %d request helpers that should have finished by now", buf, 8u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        v15 = 0;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v28 + 1) + 8 * v15) failAllRemainingRequests];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v13);
    }
  }

  v16 = [(NSMutableArray *)self->_inProgressLoaders copy];
  [(NSMutableArray *)self->_inProgressLoaders removeAllObjects];
  v17 = sub_1000018BC();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = [v16 count];
    *buf = 67109120;
    v39 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Canceling %d in-flight resource loaders", buf, 8u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = self->_inProgressLoaders;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v24 + 1) + 8 * v23) cancel];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v21);
  }
}

- (void)failedToResolveResources:(id)resources withError:(id)error
{
  resourcesCopy = resources;
  errorCopy = error;
  if ([resourcesCopy count])
  {
    v8 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = resourcesCopy;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(GEOResourceRequesterLocalProxy *)self _finished:*(*(&v17 + 1) + 8 * v13) withResult:0 error:errorCopy, v17];
          [v8 addObjectsFromArray:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }

    [(GEOResourceRequesterLocalProxy *)self _cleanUpFinishedHandlers:v8];
    v15 = sub_1000018BC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      allKeys = [(NSMutableDictionary *)self->_requestHandlersPending allKeys];
      *buf = 138477827;
      v22 = allKeys;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Remaining requests in progress: %{private}@", buf, 0xCu);
    }
  }
}

- (void)didResolvePaths:(id)paths forResources:(id)resources
{
  pathsCopy = paths;
  resourcesCopy = resources;
  if ([pathsCopy count])
  {
    v8 = +[NSMutableArray array];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000445E4;
    v12[3] = &unk_100083508;
    v13 = resourcesCopy;
    v9 = v8;
    v14 = v9;
    selfCopy = self;
    [pathsCopy enumerateObjectsUsingBlock:v12];
    [(GEOResourceRequesterLocalProxy *)self _cleanUpFinishedHandlers:v9];
    v10 = sub_1000018BC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      allKeys = [(NSMutableDictionary *)self->_requestHandlersPending allKeys];
      *buf = 138477827;
      v17 = allKeys;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Remaining requests in progress: %{private}@", buf, 0xCu);
    }
  }
}

- (void)_cleanUpFinishedHandlers:(id)handlers
{
  handlersCopy = handlers;
  if ([handlersCopy count] && -[NSMutableDictionary count](self->_requestHandlersPending, "count"))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allKeys = [(NSMutableDictionary *)self->_requestHandlersPending allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(allKeys);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_requestHandlersPending objectForKeyedSubscript:v10];
          [v11 removeObjectsInArray:handlersCopy];
          if (![v11 count])
          {
            [(NSMutableDictionary *)self->_requestHandlersPending removeObjectForKey:v10];
          }
        }

        v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (id)_finished:(id)_finished withResult:(id)result error:(id)error
{
  _finishedCopy = _finished;
  resultCopy = result;
  errorCopy = error;
  if (_finishedCopy)
  {
    v11 = [(NSMutableDictionary *)self->_requestHandlersPending objectForKeyedSubscript:_finishedCopy];
    if (v11)
    {
      *v32 = 0;
      v33 = v32;
      v34 = 0x2020000000;
      v35 = 0;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_100044B4C;
      v29[3] = &unk_1000834B8;
      v12 = _finishedCopy;
      v30 = v12;
      v31 = v32;
      [v11 enumerateObjectsUsingBlock:v29];
      if (v33[24] == 1)
      {
        v13 = sub_1000018BC();
        v28 = 0;
        v14 = [GEOResourceLoader unpackResource:v12 at:resultCopy log:v13 error:&v28];
        v15 = v28;

        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v17 = sub_1000018BC();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v37 = v12;
            v38 = 2112;
            v39 = resultCopy;
            v40 = 2112;
            v41 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to unpack resource %@ at %@ - %@", buf, 0x20u);
          }
        }
      }

      else
      {
        v14 = resultCopy;
      }

      v18 = +[NSMutableArray array];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100044B94;
      v23[3] = &unk_1000834E0;
      v24 = v12;
      resultCopy = v14;
      v25 = resultCopy;
      v26 = errorCopy;
      v19 = v18;
      v27 = v19;
      [v11 enumerateObjectsUsingBlock:v23];
      v20 = v27;
      v21 = v19;

      _Block_object_dispose(v32, 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        *v32 = 0;
        _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: requestHandlers", v32, 2u);
      }

      v21 = &__NSArray0__struct;
    }
  }

  else
  {
    v21 = &__NSArray0__struct;
  }

  return v21;
}

- (void)dealloc
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100044EBC;
  block[3] = &unk_1000838C8;
  block[4] = self;
  dispatch_sync(workQueue, block);
  v4.receiver = self;
  v4.super_class = GEOResourceRequesterLocalProxy;
  [(GEOResourceRequesterLocalProxy *)&v4 dealloc];
}

- (void)reportCorruptUnpackedResource:(id)resource fileURL:(id)l
{
  lCopy = l;
  resourceCopy = resource;
  v7 = sub_1000018BC();
  [GEOResourceLoader removeUnpackedResource:resourceCopy at:lCopy log:v7 error:0];
}

- (void)_fetchResources:(id)resources force:(BOOL)force manifestConfiguration:(id)configuration destination:(id)destination additionalDestination:(id)additionalDestination auditToken:(id)token signpostID:(unint64_t)d
{
  resourcesCopy = resources;
  configurationCopy = configuration;
  destinationCopy = destination;
  additionalDestinationCopy = additionalDestination;
  tokenCopy = token;
  v33 = configurationCopy;
  v18 = [GEOResourceManifestManager modernManagerForConfiguration:configurationCopy];
  activeTileGroup = [v18 activeTileGroup];

  urlInfoSet = [activeTileGroup urlInfoSet];
  resourcesURL = [urlInfoSet resourcesURL];
  nsURL = [resourcesURL nsURL];

  urlInfoSet2 = [activeTileGroup urlInfoSet];
  alternateResourcesNSURLs = [urlInfoSet2 alternateResourcesNSURLs];

  urlInfoSet3 = [activeTileGroup urlInfoSet];
  resourcesProxyURL = [urlInfoSet3 resourcesProxyURL];

  v27 = [GEOResourceLoader alloc];
  v28 = sub_1000018BC();
  v34 = additionalDestinationCopy;
  LOBYTE(v32) = force;
  v37 = tokenCopy;
  v29 = [v27 initWithTargetDirectory:destinationCopy auditToken:tokenCopy baseURL:nsURL alternateURLs:alternateResourcesNSURLs proxyURL:resourcesProxyURL resources:resourcesCopy forceUpdateCheck:v32 maximumConcurrentLoads:6 additionalDirectoryToConsider:additionalDestinationCopy log:v28 signpostID:d];

  [(NSMutableArray *)self->_inProgressLoaders addObject:v29];
  objc_initWeak(&location, v29);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100045260;
  v38[3] = &unk_100083470;
  v38[4] = self;
  objc_copyWeak(&v41, &location);
  v30 = resourcesCopy;
  v39 = v30;
  v31 = destinationCopy;
  v40 = v31;
  [v29 startWithCompletionHandler:v38 callbackQueue:self->_workQueue];
  [(GEOResourceRequesterLocalProxy *)self _resetRequestTimeout];

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

- (void)fetchResources:(id)resources force:(BOOL)force unpack:(BOOL)unpack manifestConfiguration:(id)configuration auditToken:(id)token signpostID:(unint64_t)d queue:(id)queue handler:(id)self0
{
  resourcesCopy = resources;
  configurationCopy = configuration;
  tokenCopy = token;
  queueCopy = queue;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100045F78;
  v28[3] = &unk_1000833B8;
  v28[4] = self;
  v29 = resourcesCopy;
  forceCopy = force;
  unpackCopy = unpack;
  v30 = configurationCopy;
  v31 = tokenCopy;
  v33 = handlerCopy;
  dCopy = d;
  v32 = queueCopy;
  v22 = handlerCopy;
  v23 = queueCopy;
  v24 = tokenCopy;
  v25 = configurationCopy;
  v26 = resourcesCopy;
  v27 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v28);
  dispatch_async(workQueue, v27);
}

- (GEOResourceRequesterLocalProxy)init
{
  v11.receiver = self;
  v11.super_class = GEOResourceRequesterLocalProxy;
  v2 = [(GEOResourceRequesterLocalProxy *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    requestHandlersPending = v2->_requestHandlersPending;
    v2->_requestHandlersPending = v3;

    v5 = +[NSMutableArray array];
    inProgressLoaders = v2->_inProgressLoaders;
    v2->_inProgressLoaders = v5;

    requestTimeoutTimer = v2->_requestTimeoutTimer;
    v2->_requestTimeoutTimer = 0;

    v8 = geo_dispatch_queue_create_with_workloop_qos();
    workQueue = v2->_workQueue;
    v2->_workQueue = v8;
  }

  return v2;
}

@end