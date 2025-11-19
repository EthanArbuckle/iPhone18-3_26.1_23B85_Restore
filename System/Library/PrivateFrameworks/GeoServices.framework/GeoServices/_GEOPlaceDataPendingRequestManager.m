@interface _GEOPlaceDataPendingRequestManager
- (_GEOPlaceDataPendingRequestManager)init;
- (id)_finished:(id)a3 withResult:(id)a4 error:(id)a5;
- (id)identifiersRequested:(id)a3 forHandler:(id)a4;
- (void)_cleanUpFinishedHandlers:(id)a3;
- (void)_failAllPendingRequests;
- (void)didResolveItems:(id)a3 forIdentifiers:(id)a4;
- (void)failedToResolveIdentifiers:(id)a3 withError:(id)a4;
- (void)willUpdateExpiredIdentifiers:(id)a3;
@end

@implementation _GEOPlaceDataPendingRequestManager

- (void)_failAllPendingRequests
{
  v3 = +[NSMutableSet set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(NSMutableDictionary *)self->_requestHandlersPending allValues];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:*(*(&v20 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_requestHandlersPending removeAllObjects];
  if ([v3 count])
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v3 count];
      *buf = 67109120;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Found %d request helpers that should have finished by now", buf, 8u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15) failAllRemainingRequests];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (void)failedToResolveIdentifiers:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v6;
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

          v14 = [(_GEOPlaceDataPendingRequestManager *)self _finished:*(*(&v17 + 1) + 8 * v13) withResult:0 error:v7, v17];
          [v8 addObjectsFromArray:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }

    [(_GEOPlaceDataPendingRequestManager *)self _cleanUpFinishedHandlers:v8];
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(NSMutableDictionary *)self->_requestHandlersPending allKeys];
      *buf = 138477827;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Remaining requests in progress: %{private}@", buf, 0xCu);
    }
  }
}

- (void)didResolveItems:(id)a3 forIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 count];
    v9 = [v7 count];
    v10 = +[NSMutableArray array];
    if (v8 == v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = +[NSMutableIndexSet indexSet];
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10004BFB4;
    v23[3] = &unk_100083860;
    v28 = v8 == v9;
    v12 = v7;
    v24 = v12;
    v13 = v11;
    v25 = v13;
    v14 = v10;
    v26 = v14;
    v27 = self;
    [v6 enumerateObjectsUsingBlock:v23];
    [(_GEOPlaceDataPendingRequestManager *)self _cleanUpFinishedHandlers:v14];
    if (v8 != v9)
    {
      v15 = [v13 count];
      if (v15 != [v12 count])
      {
        v16 = [v12 mutableCopy];
        [v16 removeObjectsAtIndexes:v13];
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v16 componentsJoinedByString:{@", "}];
          *buf = 138543362;
          v30 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[For MUID] Server error fetching muids: %{public}@", buf, 0xCu);
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: [resolvedIdentifierIndexes count] == [placeResults count]", buf, 2u);
        }

        if ([v6 count])
        {
          v19 = 0;
        }

        else
        {
          v19 = [NSError GEOErrorWithCode:-7 reason:@"failed to return all requested ids"];
        }

        v20 = [NSSet setWithArray:v16];
        [(_GEOPlaceDataPendingRequestManager *)self failedToResolveIdentifiers:v20 withError:v19];
      }
    }

    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(NSMutableDictionary *)self->_requestHandlersPending allKeys];
      *buf = 138477827;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Remaining requests in progress: %{private}@", buf, 0xCu);
    }
  }
}

- (void)_cleanUpFinishedHandlers:(id)a3
{
  v4 = a3;
  if ([v4 count] && -[NSMutableDictionary count](self->_requestHandlersPending, "count"))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(NSMutableDictionary *)self->_requestHandlersPending allKeys];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_requestHandlersPending objectForKeyedSubscript:v10];
          [v11 removeObjectsInArray:v4];
          if (![v11 count])
          {
            [(NSMutableDictionary *)self->_requestHandlersPending removeObjectForKey:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (id)_finished:(id)a3 withResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(NSMutableDictionary *)self->_requestHandlersPending objectForKeyedSubscript:v8];
    if (v11)
    {
      v12 = +[NSMutableArray array];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10004C3A8;
      v17[3] = &unk_100083838;
      v18 = v8;
      v19 = v9;
      v20 = v10;
      v13 = v12;
      v21 = v13;
      [v11 enumerateObjectsUsingBlock:v17];
      v14 = v21;
      v15 = v13;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: requestHandlers", buf, 2u);
      }

      v15 = &__NSArray0__struct;
    }
  }

  else
  {
    v15 = &__NSArray0__struct;
  }

  return v15;
}

- (id)identifiersRequested:(id)a3 forHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSOrderedSet orderedSetWithArray:v6];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count]);
  v20 = v6;
  v10 = [_GEOPlaceDataRequestHelper helperForHandler:v7 identifiers:v6];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [(NSMutableDictionary *)self->_requestHandlersPending objectForKeyedSubscript:v16];
        if (v17)
        {
          v18 = v17;
          [v9 addObject:v16];
        }

        else
        {
          v18 = [NSMutableArray arrayWithCapacity:1];
          [(NSMutableDictionary *)self->_requestHandlersPending setObject:v18 forKeyedSubscript:v16];
        }

        [v18 addObject:v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  return v9;
}

- (void)willUpdateExpiredIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [_GEOPlaceDataRequestHelper helperExpiredIdentifiers:v4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_requestHandlersPending objectForKeyedSubscript:v11, v13];
        if (!v12)
        {
          v12 = [NSMutableArray arrayWithCapacity:1];
          [(NSMutableDictionary *)self->_requestHandlersPending setObject:v12 forKeyedSubscript:v11];
        }

        [v12 addObject:v5];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (_GEOPlaceDataPendingRequestManager)init
{
  v6.receiver = self;
  v6.super_class = _GEOPlaceDataPendingRequestManager;
  v2 = [(_GEOPlaceDataPendingRequestManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    requestHandlersPending = v2->_requestHandlersPending;
    v2->_requestHandlersPending = v3;
  }

  return v2;
}

@end