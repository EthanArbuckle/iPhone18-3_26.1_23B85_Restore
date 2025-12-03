@interface _GEOPlaceDataRequestHelper
+ (id)helperExpiredIdentifiers:(id)identifiers;
+ (id)helperForHandler:(id)handler identifiers:(id)identifiers;
- (BOOL)finishedIdentifier:(id)identifier withResult:(id)result error:(id)error;
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
      allObjects = [(NSMutableSet *)self->_remaningIdentifiers allObjects];
      v5 = [allObjects componentsJoinedByString:{@", "}];
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

- (BOOL)finishedIdentifier:(id)identifier withResult:(id)result error:(id)error
{
  identifierCopy = identifier;
  resultCopy = result;
  errorCopy = error;
  [(NSMutableSet *)self->_remaningIdentifiers removeObject:identifierCopy];
  if (resultCopy && self->_results)
  {
    v11 = [(NSDictionary *)self->_identifierOrderMap objectForKeyedSubscript:identifierCopy];
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
    selfCopy = self;
    v23 = resultCopy;
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
    if (errorCopy)
    {
      requestHandler[2](self->_requestHandler, 0, errorCopy);
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
  allKeys = [(NSDictionary *)self->_identifierOrderMap allKeys];
  v7 = [NSString stringWithFormat:@"<%@ %p handler %p identifiers %@ remaning %@ results.count: %d", v4, self, v5, allKeys, self->_remaningIdentifiers, [(NSMutableArray *)self->_results count]];

  return v7;
}

+ (id)helperExpiredIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(_GEOPlaceDataRequestHelper);
  if (v4)
  {
    v5 = [identifiersCopy mutableCopy];
    remaningIdentifiers = v4->_remaningIdentifiers;
    v4->_remaningIdentifiers = v5;
  }

  return v4;
}

+ (id)helperForHandler:(id)handler identifiers:(id)identifiers
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  v7 = objc_alloc_init(_GEOPlaceDataRequestHelper);
  if (v7)
  {
    v8 = [handlerCopy copy];
    requestHandler = v7->_requestHandler;
    v7->_requestHandler = v8;

    v10 = [NSMutableSet setWithArray:identifiersCopy];
    remaningIdentifiers = v7->_remaningIdentifiers;
    v7->_remaningIdentifiers = v10;

    v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [identifiersCopy count]);
    results = v7->_results;
    v7->_results = v12;

    v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [identifiersCopy count]);
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10004B76C;
    v23 = &unk_1000837E8;
    v15 = v7;
    v24 = v15;
    v25 = v14;
    v16 = v14;
    [identifiersCopy enumerateObjectsUsingBlock:&v20];
    v17 = [v16 copy];
    identifierOrderMap = v15->_identifierOrderMap;
    v15->_identifierOrderMap = v17;
  }

  return v7;
}

@end