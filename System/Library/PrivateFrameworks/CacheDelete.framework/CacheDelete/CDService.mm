@interface CDService
+ (CDService)serviceWithInfo:(id)info;
+ (CDService)serviceWithInfo:(id)info endpoint:(id)endpoint;
+ (CDService)serviceWithInfo:(id)info extension:(id)extension;
- (BOOL)inFlight;
- (CDService)initWithInfo:(id)info;
- (NSString)description;
- (void)drainPurgeQueue;
- (void)serviceCallback:(id)callback replyBlock:(id)block;
- (void)serviceCancelPurge:(id)purge;
- (void)serviceNotify:(id)notify replyBlock:(id)block;
- (void)servicePeriodic:(int)periodic info:(id)info replyBlock:(id)block;
- (void)servicePing:(id)ping;
- (void)servicePurge:(int)purge info:(id)info replyBlock:(id)block;
- (void)servicePurgeable:(int)purgeable info:(id)info replyBlock:(id)block;
@end

@implementation CDService

- (BOOL)inFlight
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceQueue = [(CDService *)self serviceQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __21__CDService_inFlight__block_invoke;
  v5[3] = &unk_100060DD0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

id __21__CDService_inFlight__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _inFlight];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)drainPurgeQueue
{
  serviceQueue = [(CDService *)self serviceQueue];
  dispatch_assert_queue_V2(serviceQueue);

  purgeQueue = [(CDService *)self purgeQueue];
  v5 = [purgeQueue count];

  if (v5)
  {
    purgeQueue2 = [(CDService *)self purgeQueue];
    v7 = [purgeQueue2 objectAtIndex:0];

    info = [v7 info];
    v9 = [info objectForKeyedSubscript:@"CACHE_DELETE_QOS"];
    v10 = evaluateNumberProperty();

    purgeQueue3 = [(CDService *)self purgeQueue];
    [purgeQueue3 removeObjectAtIndex:0];

    if (v10)
    {
      unsignedIntValue = [v10 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = QOS_CLASS_UTILITY;
    }

    v14 = CDGetLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(CDService *)self ID];
      *buf = 138412546;
      v25 = v15;
      v26 = 1024;
      LODWORD(selfCopy2) = unsignedIntValue;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "drainPurgeQueue %@ QOS: %u", buf, 0x12u);
    }

    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = __28__CDService_drainPurgeQueue__block_invoke;
    v21 = &unk_100060B40;
    selfCopy = self;
    v23 = v7;
    v13 = v7;
    v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, unsignedIntValue, 0, &v18);
    v17 = [(CDService *)self requestQueue:v18];
    dispatch_async(v17, v16);

    goto LABEL_10;
  }

  v10 = CDGetLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CDService *)self ID];
    *buf = 138412546;
    v25 = v13;
    v26 = 2048;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "dequeuePurge %@ [%p] no purges queued", buf, 0x16u);
LABEL_10:
  }
}

- (CDService)initWithInfo:(id)info
{
  infoCopy = info;
  v39.receiver = self;
  v39.super_class = CDService;
  v5 = [(CDService *)&v39 init];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_ID"];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(v5 + 3, v6);
      v8 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_SERVICES"];
      v9 = CDGetLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v5 + 3);
        *buf = 138412546;
        v41 = v10;
        v42 = 2112;
        v43 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ servicesProvided: %@", buf, 0x16u);
      }

      if (!v8)
      {
        *(v5 + 4) = 257;
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v5 + 8) = [v8 containsObject:@"PERIODIC"];
        *(v5 + 9) = [v8 containsObject:@"PURGE"];
LABEL_11:
        v11 = CDGetLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v5 + 3);
          v13 = "NO";
          if (*(v5 + 9))
          {
            v13 = "YES";
          }

          *buf = 138412546;
          v41 = v12;
          v42 = 2080;
          v43 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ doesPurge: %s", buf, 0x16u);
        }

        v14 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUMES"];
        v15 = *(v5 + 2);
        *(v5 + 2) = v14;

        v16 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_OPT_OUT_QUOTA_EVENTS"];
        *(v5 + 12) = evaluateBoolProperty();

        if (*(v5 + 12) == 1)
        {
          v17 = CDGetLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v5 + 3);
            *buf = 138412290;
            v41 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ is OPT_OUT_QUOTA_EVENTS service", buf, 0xCu);
          }
        }

        v19 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_DO_NOT_QUERY"];
        if (evaluateBoolProperty())
        {
          v20 = 1;
        }

        else
        {
          v20 = *(v5 + 9) ^ 1;
        }

        *(v5 + 10) = v20 & 1;

        if (*(v5 + 10) == 1)
        {
          v21 = CDGetLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = *(v5 + 3);
            *buf = 138412290;
            v41 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@ is DO_NOT_QUERY service", buf, 0xCu);
          }
        }

        v23 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_NOTIFICATIONS"];
        if (v23)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [NSMutableSet setWithArray:v23];
            v25 = *(v5 + 6);
            *(v5 + 6) = v24;

            v26 = CDGetLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(v5 + 6);
              *buf = 138412546;
              v41 = v7;
              v42 = 2112;
              v43 = v27;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@ desiredNotifications: %@", buf, 0x16u);
            }
          }
        }

        v28 = dispatch_queue_create([*(v5 + 3) UTF8String], 0);
        v29 = *(v5 + 4);
        *(v5 + 4) = v28;

        v30 = [*(v5 + 3) stringByAppendingString:@".request"];
        v31 = dispatch_queue_create_with_target_V2([v30 UTF8String], 0, *(v5 + 4));
        v32 = *(v5 + 5);
        *(v5 + 5) = v31;

        v33 = +[NSMutableArray array];
        v34 = *(v5 + 10);
        *(v5 + 10) = v33;

        goto LABEL_32;
      }

      v36 = CDGetLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v38 = *(v5 + 3);
        *buf = 138412546;
        v41 = v38;
        v42 = 2112;
        v43 = v8;
        _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%@ : CACHE_DELETE_SERVICES value is not an array: %@", buf, 0x16u);
      }
    }

    else
    {
      v7 = CDGetLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = infoCopy;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No Service ID! info dictionary: %@", buf, 0xCu);
      }
    }

    v35 = 0;
    goto LABEL_37;
  }

LABEL_32:
  v35 = v5;
LABEL_37:

  return v35;
}

void __28__CDService_drainPurgeQueue__block_invoke(uint64_t a1)
{
  v2 = CDGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) ID];
    v4 = [*(a1 + 40) urgency];
    v5 = [*(a1 + 40) info];
    *buf = 138412802;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dequeuePurge executing deferred purge for service %@ at urgency %d : %@", buf, 0x1Cu);
  }

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) urgency];
  v8 = [*(a1 + 40) info];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __28__CDService_drainPurgeQueue__block_invoke_62;
  v11[3] = &unk_100060A68;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  [v6 _servicePurge:v7 info:v8 replyBlock:v11];
}

id __28__CDService_drainPurgeQueue__block_invoke_62(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 reply];
  (v5)[2](v5, v4);

  v6 = *(a1 + 40);

  return [v6 drainPurgeQueue];
}

- (void)servicePurgeable:(int)purgeable info:(id)info replyBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  serviceQueue = [(CDService *)self serviceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __46__CDService_servicePurgeable_info_replyBlock___block_invoke;
  block[3] = &unk_100060D58;
  block[4] = self;
  dispatch_sync(serviceQueue, block);

  requestQueue = [(CDService *)self requestQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __46__CDService_servicePurgeable_info_replyBlock___block_invoke_2;
  v14[3] = &unk_100061D90;
  purgeableCopy = purgeable;
  v14[4] = self;
  v15 = infoCopy;
  v16 = blockCopy;
  v12 = blockCopy;
  v13 = infoCopy;
  dispatch_async(requestQueue, v14);
}

void __46__CDService_servicePurgeable_info_replyBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __46__CDService_servicePurgeable_info_replyBlock___block_invoke_3;
  v6[3] = &unk_100061D68;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v3 _servicePurgeable:v2 info:v4 replyBlock:v6];
}

void __46__CDService_servicePurgeable_info_replyBlock___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = CDGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) ID];
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ servicePurgeable returned", buf, 0xCu);
  }

  v4 = [*(a1 + 32) serviceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __46__CDService_servicePurgeable_info_replyBlock___block_invoke_65;
  block[3] = &unk_100060D58;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

- (void)servicePurge:(int)purge info:(id)info replyBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  v10 = blockCopy;
  if (infoCopy && blockCopy)
  {
    serviceQueue = [(CDService *)self serviceQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __42__CDService_servicePurge_info_replyBlock___block_invoke;
    v14[3] = &unk_100061D90;
    v14[4] = self;
    purgeCopy = purge;
    v15 = infoCopy;
    v16 = v10;
    dispatch_sync(serviceQueue, v14);
  }

  else
  {
    v12 = CDGetLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_retainBlock(v10);
      *buf = 138412546;
      v19 = infoCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Parameter error: info: %@, reply: %@", buf, 0x16u);
    }
  }
}

void __42__CDService_servicePurge_info_replyBlock___block_invoke(uint64_t a1)
{
  v2 = CDGetLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) ID];
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138413058;
    v60 = v3;
    v61 = 2048;
    v62 = v5;
    v63 = 1024;
    *v64 = v4;
    *&v64[4] = 2112;
    *&v64[6] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ [%p] queuing purge at urgency %d, info: %@", buf, 0x26u);
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v49 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v8 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v9 = [*(a1 + 32) purgeQueue];
  v54 = [v9 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v54)
  {
    v53 = *v56;
    v51 = 1;
    v52 = 0;
    v50 = v9;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v56 != v53)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v55 + 1) + 8 * i);
        v12 = [v11 info];
        v13 = [v12 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];

        v14 = [v11 info];
        v15 = [v14 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

        if (v13)
        {
          v16 = v7 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && [v7 isEqualToString:v13])
        {
          v17 = [v11 urgency];
          v18 = *(a1 + 56);
          v52 = v17;
          if (v18 > v17 || v18 == v17 && (v25 = [v49 unsignedLongLongValue], v25 > objc_msgSend(v15, "unsignedLongLongValue")))
          {
            v19 = CDGetLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [*(a1 + 32) ID];
              v21 = v7;
              v22 = *(a1 + 32);
              v23 = [v15 unsignedLongLongValue];
              *buf = 138413058;
              v60 = v20;
              v61 = 2048;
              v62 = v22;
              v7 = v21;
              v9 = v50;
              v63 = 1024;
              *v64 = v52;
              *&v64[4] = 2048;
              *&v64[6] = v23;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ [%p] dropping purge of urgency %d, amount %llu", buf, 0x26u);
            }

            [v8 addObject:v11];
            v24 = [v11 reply];
            (v24)[2](v24, &__NSDictionary0__struct);
          }

          else
          {
            v51 = 0;
          }
        }
      }

      v54 = [v9 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v54);
  }

  else
  {
    v51 = 1;
    v52 = 0;
  }

  v26 = [*(a1 + 32) purgeQueue];
  [v26 removeObjectsInArray:v8];

  if (v51)
  {
    v27 = [*(a1 + 32) purgeQueue];
    v28 = [v27 count];

    if (v28)
    {
      v28 = 0;
      do
      {
        v29 = [*(a1 + 32) purgeQueue];
        v30 = [v29 objectAtIndexedSubscript:v28];
        v31 = [v30 urgency];
        v32 = *(a1 + 56);

        if (v31 >= v32)
        {
          break;
        }

        ++v28;
        v33 = [*(a1 + 32) purgeQueue];
        v34 = [v33 count];
      }

      while (v28 < v34);
    }

    v35 = CDGetLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [*(a1 + 32) ID];
      v37 = *(a1 + 32);
      v38 = *(a1 + 56);
      v39 = [v49 unsignedLongLongValue];
      *buf = 138413314;
      v60 = v36;
      v61 = 2048;
      v62 = v37;
      v63 = 1024;
      *v64 = v38;
      *&v64[4] = 2048;
      *&v64[6] = v39;
      v65 = 2048;
      v66 = v28;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@ [%p] is enqueueing a purge of urgency %d amount %llu at index %lu", buf, 0x30u);
    }

    v40 = [*(a1 + 32) purgeQueue];
    v41 = [purgeOP purgeOpAtUrgency:*(a1 + 56) info:*(a1 + 40) reply:*(a1 + 48)];
    [v40 insertObject:v41 atIndex:v28];

    if (([*(a1 + 32) _inFlight] & 1) == 0)
    {
      v42 = CDGetLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [*(a1 + 32) ID];
        v44 = *(a1 + 32);
        v45 = [v44 purgeQueue];
        *buf = 138412802;
        v60 = v43;
        v61 = 2048;
        v62 = v44;
        v63 = 2112;
        *v64 = v45;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@ [%p] is NOT inFlight, draining the purge queue: %@", buf, 0x20u);
      }

      [*(a1 + 32) drainPurgeQueue];
    }
  }

  else
  {
    v46 = CDGetLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [*(a1 + 32) ID];
      v48 = *(a1 + 32);
      *buf = 138412802;
      v60 = v47;
      v61 = 2048;
      v62 = v48;
      v63 = 1024;
      *v64 = v52;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%@ [%p] not purging, it has a pending purge (urgency=%d) enqueued already, skipping", buf, 0x1Cu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)servicePeriodic:(int)periodic info:(id)info replyBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  requestQueue = [(CDService *)self requestQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __45__CDService_servicePeriodic_info_replyBlock___block_invoke;
  v13[3] = &unk_100061D90;
  periodicCopy = periodic;
  v13[4] = self;
  v14 = infoCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = infoCopy;
  dispatch_async(requestQueue, v13);
}

void __45__CDService_servicePeriodic_info_replyBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __45__CDService_servicePeriodic_info_replyBlock___block_invoke_2;
  v6[3] = &unk_100061D68;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v3 _servicePeriodic:v2 info:v4 replyBlock:v6];
}

void __45__CDService_servicePeriodic_info_replyBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) serviceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__CDService_servicePeriodic_info_replyBlock___block_invoke_3;
  block[3] = &unk_100060D58;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (void)serviceCancelPurge:(id)purge
{
  purgeCopy = purge;
  requestQueue = [(CDService *)self requestQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __32__CDService_serviceCancelPurge___block_invoke;
  v7[3] = &unk_1000612A8;
  v7[4] = self;
  v8 = purgeCopy;
  v6 = purgeCopy;
  dispatch_async(requestQueue, v7);
}

- (void)servicePing:(id)ping
{
  pingCopy = ping;
  requestQueue = [(CDService *)self requestQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __25__CDService_servicePing___block_invoke;
  v7[3] = &unk_1000612A8;
  v7[4] = self;
  v8 = pingCopy;
  v6 = pingCopy;
  dispatch_async(requestQueue, v7);
}

- (void)serviceNotify:(id)notify replyBlock:(id)block
{
  notifyCopy = notify;
  blockCopy = block;
  requestQueue = [(CDService *)self requestQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __38__CDService_serviceNotify_replyBlock___block_invoke;
  block[3] = &unk_100061230;
  block[4] = self;
  v12 = notifyCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = notifyCopy;
  dispatch_async(requestQueue, block);
}

- (void)serviceCallback:(id)callback replyBlock:(id)block
{
  callbackCopy = callback;
  blockCopy = block;
  requestQueue = [(CDService *)self requestQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __40__CDService_serviceCallback_replyBlock___block_invoke;
  block[3] = &unk_100061230;
  block[4] = self;
  v12 = callbackCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = callbackCopy;
  dispatch_async(requestQueue, block);
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CDService *)self ID];
  if ([(CDService *)self inFlight])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  purgeQueue = [(CDService *)self purgeQueue];
  v9 = [v3 initWithFormat:@"<%@: %p (%@) = { inFlight=%s, purgeQueueLength=%d }>", v5, self, v6, v7, objc_msgSend(purgeQueue, "count")];

  return v9;
}

+ (CDService)serviceWithInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_SERVICE_IS_LOCAL"];
  v5 = evaluateBoolProperty();

  v6 = &off_100060768;
  if (!v5)
  {
    v6 = off_100060760;
  }

  v7 = [objc_alloc(*v6) initWithInfo:infoCopy];

  return v7;
}

+ (CDService)serviceWithInfo:(id)info endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v6 = [info mutableCopy];
  v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_ID"];

  if (!v7)
  {
    endpointCopy = [NSString stringWithFormat:@"ANONYMOUS_%p", endpointCopy];
    [v6 setObject:endpointCopy forKeyedSubscript:@"CACHE_DELETE_ID"];
  }

  v9 = [[CDAnonymousXPCService alloc] initWithInfo:v6 endpoint:endpointCopy];

  return v9;
}

+ (CDService)serviceWithInfo:(id)info extension:(id)extension
{
  extensionCopy = extension;
  infoCopy = info;
  v7 = [[CDAppExtensionService alloc] initWithInfo:infoCopy extension:extensionCopy];

  return v7;
}

@end