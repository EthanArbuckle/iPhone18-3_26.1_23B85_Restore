@interface _GEOResourceRequestHelper
+ (id)helperForHandler:(id)handler queue:(id)queue resources:(id)resources wantsUnpacked:(BOOL)unpacked signpost:(unint64_t)signpost;
- (BOOL)finishedResource:(id)resource withResult:(id)result error:(id)error;
- (BOOL)wantsUnpacked:(id)unpacked;
- (id)description;
- (void)_callResultHandlerWith:(id)with paths:(id)paths error:(id)error;
- (void)failAllRemainingRequests;
@end

@implementation _GEOResourceRequestHelper

- (void)_callResultHandlerWith:(id)with paths:(id)paths error:(id)error
{
  withCopy = with;
  pathsCopy = paths;
  errorCopy = error;
  v11 = objc_retainBlock(self->_resultHandler);
  resultHandler = self->_resultHandler;
  self->_resultHandler = 0;

  if (v11)
  {
    if (!self->_signpost)
    {
LABEL_14:
      resultQueue = self->_resultQueue;
      voucher = self->_voucher;
      qos = self->_qos;
      v28 = v11;
      v25 = errorCopy;
      v26 = withCopy;
      v27 = pathsCopy;
      v24 = dispatch_block_create_with_voucher_and_qos_class();
      dispatch_async(resultQueue, v24);

      v20 = v28;
      goto LABEL_15;
    }

    v13 = sub_1000018BC();
    v14 = v13;
    signpost = self->_signpost;
    if (errorCopy)
    {
      if (signpost - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v16 = "Result=Error";
      v17 = v14;
      v18 = signpost;
      v19 = 2;
    }

    else
    {
      if (signpost - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v13))
      {
        goto LABEL_13;
      }

      *buf = 67109120;
      v30 = [pathsCopy count];
      v16 = "Result=Success Count=%d";
      v17 = v14;
      v18 = signpost;
      v19 = 8;
    }

    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v18, "FetchResources", v16, buf, v19);
LABEL_13:

    goto LABEL_14;
  }

  v20 = sub_1000018BC();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Tried to call resource handler twice", buf, 2u);
  }

LABEL_15:
}

- (void)failAllRemainingRequests
{
  if ([(NSMutableSet *)self->_remaining count])
  {
    v3 = sub_1000018BC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      allObjects = [(NSMutableSet *)self->_remaining allObjects];
      v5 = [allObjects componentsJoinedByString:{@", "}];
      v10 = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Server error fetching resources: %{public}@", &v10, 0xCu);
    }

    v6 = sub_1000018BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Assertion failed: [_remaining count] > 0", &v10, 2u);
    }

    v7 = [NSError GEOErrorWithCode:-19 reason:@"timed-out waiting for requested resources"];
    v8 = sub_1000018BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [(NSMutableSet *)self->_remaining count];
      v10 = 67109120;
      LODWORD(v11) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failing %d requests due to timeout", &v10, 8u);
    }

    [(_GEOResourceRequestHelper *)self _callResultHandlerWith:self->_resultNames paths:self->_resultPaths error:v7];
    [(NSMutableSet *)self->_remaining removeAllObjects];
  }
}

- (BOOL)finishedResource:(id)resource withResult:(id)result error:(id)error
{
  resourceCopy = resource;
  resultCopy = result;
  errorCopy = error;
  [(NSMutableSet *)self->_remaining removeObject:resourceCopy];
  if (resultCopy && self->_resultNames)
  {
    v11 = [(NSDictionary *)self->_orderMap objectForKeyedSubscript:resourceCopy];
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
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100043A8C;
    v15[3] = &unk_100083368;
    v15[4] = self;
    v16 = resourceCopy;
    v17 = resultCopy;
    [v12 enumerateIndexesUsingBlock:v15];
  }

  if (![(NSMutableSet *)self->_remaining count])
  {
    [(_GEOResourceRequestHelper *)self _callResultHandlerWith:self->_resultNames paths:self->_resultPaths error:errorCopy];
    v13 = 1;
    goto LABEL_8;
  }

LABEL_6:
  v13 = 0;
LABEL_8:

  return v13;
}

- (BOOL)wantsUnpacked:(id)unpacked
{
  v4 = [(NSDictionary *)self->_orderMap objectForKeyedSubscript:unpacked];
  if (v4)
  {
    wantsUnpacked = self->_wantsUnpacked;
  }

  else
  {
    wantsUnpacked = 0;
  }

  return wantsUnpacked;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = objc_retainBlock(self->_resultHandler);
  allKeys = [(NSDictionary *)self->_orderMap allKeys];
  v7 = [NSString stringWithFormat:@"<%@ %p handler %p resources %@ remaning %@ results.count: %d", v4, self, v5, allKeys, self->_remaining, [(NSMutableArray *)self->_resultNames count]];

  return v7;
}

+ (id)helperForHandler:(id)handler queue:(id)queue resources:(id)resources wantsUnpacked:(BOOL)unpacked signpost:(unint64_t)signpost
{
  handlerCopy = handler;
  queueCopy = queue;
  resourcesCopy = resources;
  v14 = objc_alloc_init(_GEOResourceRequestHelper);
  if (v14)
  {
    v15 = [handlerCopy copy];
    resultHandler = v14->_resultHandler;
    v14->_resultHandler = v15;

    objc_storeStrong(&v14->_resultQueue, queue);
    v17 = voucher_copy();
    voucher = v14->_voucher;
    v14->_voucher = v17;

    v14->_qos = qos_class_self();
    v14->_signpost = signpost;
    v19 = [NSMutableSet setWithArray:resourcesCopy];
    remaining = v14->_remaining;
    v14->_remaining = v19;

    v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [resourcesCopy count]);
    resultNames = v14->_resultNames;
    v14->_resultNames = v21;

    v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [resourcesCopy count]);
    resultPaths = v14->_resultPaths;
    v14->_resultPaths = v23;

    v14->_wantsUnpacked = unpacked;
    v25 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [resourcesCopy count]);
    v26 = [NSURL fileURLWithPath:@"/"];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100043E2C;
    v33[3] = &unk_100083340;
    v27 = v14;
    v34 = v27;
    v35 = v26;
    v36 = v25;
    v28 = v25;
    v29 = v26;
    [resourcesCopy enumerateObjectsUsingBlock:v33];
    v30 = [v28 copy];
    orderMap = v27->_orderMap;
    v27->_orderMap = v30;
  }

  return v14;
}

@end