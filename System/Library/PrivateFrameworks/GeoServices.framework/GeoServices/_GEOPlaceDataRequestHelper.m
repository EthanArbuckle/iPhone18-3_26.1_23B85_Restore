@interface _GEOPlaceDataRequestHelper
+ (id)helperExpiredIdentifiers:(id)a3;
+ (id)helperForHandler:(id)a3 identifiers:(id)a4;
- (BOOL)finishedIdentifier:(id)a3 withResult:(id)a4 error:(id)a5;
- (id)description;
- (void)failAllRemainingRequests;
@end

@implementation _GEOPlaceDataRequestHelper

- (void)failAllRemainingRequests
{
  if ([(NSMutableSet *)self->_remaningIdentifiers count])
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = [(NSMutableSet *)self->_remaningIdentifiers allObjects];
      v5 = [v4 componentsJoinedByString:{@", "}];
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Watchdog timeout, server error fetching muids: %{public}@", &v10, 0xCu);
    }

    v6 = [NSError GEOErrorWithCode:-19 reason:@"timed-out waiting for requested ids"];
    requestHandler = self->_requestHandler;
    if (requestHandler)
    {
      v8 = sub_10004B204(self->_results);
      requestHandler[2](requestHandler, v8, v6);

      v9 = self->_requestHandler;
      self->_requestHandler = 0;
    }

    [(NSMutableSet *)self->_remaningIdentifiers removeAllObjects];
  }
}

- (BOOL)finishedIdentifier:(id)a3 withResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(NSMutableSet *)self->_remaningIdentifiers removeObject:v8];
  if (v9 && self->_results)
  {
    v11 = [(NSDictionary *)self->_identifierOrderMap objectForKeyedSubscript:v8];
    if (!v11)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: indexes != ((void *)0)", buf, 2u);
      }

      goto LABEL_6;
    }

    v12 = v11;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_10004B4B8;
    v21 = &unk_100083810;
    v22 = self;
    v23 = v9;
    [v12 enumerateIndexesUsingBlock:&v18];
  }

  if ([(NSMutableSet *)self->_remaningIdentifiers count:v18])
  {
LABEL_6:
    v13 = 0;
    goto LABEL_13;
  }

  requestHandler = self->_requestHandler;
  if (requestHandler)
  {
    if (v10)
    {
      requestHandler[2](self->_requestHandler, 0, v10);
    }

    else
    {
      v15 = sub_10004B204(self->_results);
      (requestHandler)[2](requestHandler, v15, 0);
    }

    v16 = self->_requestHandler;
    self->_requestHandler = 0;
  }

  v13 = 1;
LABEL_13:

  return v13;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_retainBlock(self->_requestHandler);
  v6 = [(NSDictionary *)self->_identifierOrderMap allKeys];
  v7 = [NSString stringWithFormat:@"<%@ %p handler %p identifiers %@ remaning %@ results.count: %d", v4, self, v5, v6, self->_remaningIdentifiers, [(NSMutableArray *)self->_results count]];

  return v7;
}

+ (id)helperExpiredIdentifiers:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_GEOPlaceDataRequestHelper);
  if (v4)
  {
    v5 = [v3 mutableCopy];
    remaningIdentifiers = v4->_remaningIdentifiers;
    v4->_remaningIdentifiers = v5;
  }

  return v4;
}

+ (id)helperForHandler:(id)a3 identifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(_GEOPlaceDataRequestHelper);
  if (v7)
  {
    v8 = [v5 copy];
    requestHandler = v7->_requestHandler;
    v7->_requestHandler = v8;

    v10 = [NSMutableSet setWithArray:v6];
    remaningIdentifiers = v7->_remaningIdentifiers;
    v7->_remaningIdentifiers = v10;

    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    results = v7->_results;
    v7->_results = v12;

    v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10004B76C;
    v23 = &unk_1000837E8;
    v15 = v7;
    v24 = v15;
    v25 = v14;
    v16 = v14;
    [v6 enumerateObjectsUsingBlock:&v20];
    v17 = [v16 copy];
    identifierOrderMap = v15->_identifierOrderMap;
    v15->_identifierOrderMap = v17;
  }

  return v7;
}

@end