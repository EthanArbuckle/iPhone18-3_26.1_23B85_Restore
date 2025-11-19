@interface _GEOResourceRequestHelper
+ (id)helperForHandler:(id)a3 queue:(id)a4 resources:(id)a5 wantsUnpacked:(BOOL)a6 signpost:(unint64_t)a7;
- (BOOL)finishedResource:(id)a3 withResult:(id)a4 error:(id)a5;
- (BOOL)wantsUnpacked:(id)a3;
- (id)description;
- (void)_callResultHandlerWith:(id)a3 paths:(id)a4 error:(id)a5;
- (void)failAllRemainingRequests;
@end

@implementation _GEOResourceRequestHelper

- (void)_callResultHandlerWith:(id)a3 paths:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
      v25 = v10;
      v26 = v8;
      v27 = v9;
      v24 = dispatch_block_create_with_voucher_and_qos_class();
      dispatch_async(resultQueue, v24);

      v20 = v28;
      goto LABEL_15;
    }

    v13 = sub_1000018BC();
    v14 = v13;
    signpost = self->_signpost;
    if (v10)
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
      v30 = [v9 count];
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
      v4 = [(NSMutableSet *)self->_remaining allObjects];
      v5 = [v4 componentsJoinedByString:{@", "}];
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

- (BOOL)finishedResource:(id)a3 withResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(NSMutableSet *)self->_remaining removeObject:v8];
  if (v9 && self->_resultNames)
  {
    v11 = [(NSDictionary *)self->_orderMap objectForKeyedSubscript:v8];
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
    v16 = v8;
    v17 = v9;
    [v12 enumerateIndexesUsingBlock:v15];
  }

  if (![(NSMutableSet *)self->_remaining count])
  {
    [(_GEOResourceRequestHelper *)self _callResultHandlerWith:self->_resultNames paths:self->_resultPaths error:v10];
    v13 = 1;
    goto LABEL_8;
  }

LABEL_6:
  v13 = 0;
LABEL_8:

  return v13;
}

- (BOOL)wantsUnpacked:(id)a3
{
  v4 = [(NSDictionary *)self->_orderMap objectForKeyedSubscript:a3];
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
  v6 = [(NSDictionary *)self->_orderMap allKeys];
  v7 = [NSString stringWithFormat:@"<%@ %p handler %p resources %@ remaning %@ results.count: %d", v4, self, v5, v6, self->_remaining, [(NSMutableArray *)self->_resultNames count]];

  return v7;
}

+ (id)helperForHandler:(id)a3 queue:(id)a4 resources:(id)a5 wantsUnpacked:(BOOL)a6 signpost:(unint64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = objc_alloc_init(_GEOResourceRequestHelper);
  if (v14)
  {
    v15 = [v11 copy];
    resultHandler = v14->_resultHandler;
    v14->_resultHandler = v15;

    objc_storeStrong(&v14->_resultQueue, a4);
    v17 = voucher_copy();
    voucher = v14->_voucher;
    v14->_voucher = v17;

    v14->_qos = qos_class_self();
    v14->_signpost = a7;
    v19 = [NSMutableSet setWithArray:v13];
    remaining = v14->_remaining;
    v14->_remaining = v19;

    v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    resultNames = v14->_resultNames;
    v14->_resultNames = v21;

    v23 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    resultPaths = v14->_resultPaths;
    v14->_resultPaths = v23;

    v14->_wantsUnpacked = a6;
    v25 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v13 count]);
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
    [v13 enumerateObjectsUsingBlock:v33];
    v30 = [v28 copy];
    orderMap = v27->_orderMap;
    v27->_orderMap = v30;
  }

  return v14;
}

@end