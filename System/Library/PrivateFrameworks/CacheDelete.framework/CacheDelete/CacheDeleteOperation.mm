@interface CacheDeleteOperation
- (BOOL)serviceIsRegistered:(id)registered;
- (BOOL)validateDictionaryForXPC:(id)c;
- (CacheDeleteOperation)initWithInfo:(id)info services:(id)services volumes:(id)volumes;
- (NSArray)volumeNames;
- (NSString)description;
- (double)non_negative_time_remaining;
- (id)servicesForVolume:(id)volume;
- (void)performBlockWithUrgency:(id)urgency;
- (void)processTestFailures:(id)failures;
- (void)startOperation:(id)operation;
@end

@implementation CacheDeleteOperation

- (NSArray)volumeNames
{
  v3 = [NSMutableArray alloc];
  volumes = [(CacheDeleteOperation *)self volumes];
  v5 = [v3 initWithCapacity:{objc_msgSend(volumes, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  volumes2 = [(CacheDeleteOperation *)self volumes];
  v7 = [volumes2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(volumes2);
        }

        mountPoint = [*(*(&v13 + 1) + 8 * i) mountPoint];
        [v5 addObject:mountPoint];
      }

      v8 = [volumes2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (CacheDeleteOperation)initWithInfo:(id)info services:(id)services volumes:(id)volumes
{
  infoCopy = info;
  servicesCopy = services;
  volumesCopy = volumes;
  v128.receiver = self;
  v128.super_class = CacheDeleteOperation;
  v12 = [(CacheDeleteOperation *)&v128 init];
  if (!v12)
  {
LABEL_102:
    v22 = v12;
    goto LABEL_107;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_PURGE_TIMEOUT"];
    v14 = evaluateNumberProperty();

    v15 = CDGetLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    infoCopy2 = info;
    if (v14)
    {
      if (v16)
      {
        *buf = 138412290;
        v136 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Client specified timeout: %@", buf, 0xCu);
      }

      [v14 doubleValue];
      if (v17 > 600.0)
      {
        v17 = 600.0;
      }

      v18 = 1;
    }

    else
    {
      if (v16)
      {
        *buf = 67109120;
        LODWORD(v136) = 600;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Client specified no timeout. Using : %d", buf, 8u);
      }

      v18 = 0;
      v17 = 600.0;
    }

    v105 = v14;
    v106 = servicesCopy;
    v12->_timeout_seconds = v17;
    v12->_clientSpecifiedTimeout = v18;
    v12->_start_time = 0.0;
    servicesToTranslate = v12->_servicesToTranslate;
    v12->_servicesToTranslate = &off_100065D20;

    v24 = [infoCopy mutableCopy];
    v25 = v12->_result;
    v12->_result = v24;

    v26 = [(NSMutableDictionary *)v12->_result objectForKeyedSubscript:@"CACHE_DELETE_MEASURE_ELAPSED_TIME"];
    v12->_measureElapsedTime = evaluateBoolProperty();

    v27 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(volumesCopy, "count")}];
    v104 = v12;
    if (volumesCopy && [volumesCopy count])
    {
      v101 = volumesCopy;
      v102 = infoCopy;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v28 = volumesCopy;
      v29 = [v28 countByEnumeratingWithState:&v124 objects:v134 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v125;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v125 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v124 + 1) + 8 * i);
            if (([v33 validate] & 1) == 0)
            {
              v34 = CDGetLogHandle();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                mountPoint = [v33 mountPoint];
                *buf = 138543362;
                v136 = mountPoint;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Volume became invalid: %{public}@", buf, 0xCu);
              }
            }

            if (([v27 containsObject:v33] & 1) == 0)
            {
              [v27 addObject:v33];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v124 objects:v134 count:16];
        }

        while (v30);
      }

      if ([v27 count])
      {
        v36 = v27;
        p_super = &v12->_volumes->super;
        v12->_volumes = v36;
LABEL_34:

        v40 = [(NSMutableDictionary *)v12->_result objectForKeyedSubscript:@"CACHE_DELETE_MEASURE_ELAPSED_TIME"];
        v12->_measureElapsedTime = evaluateBoolProperty();

        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = [NSString stringWithFormat:@"%s_%@_operation.%p", "com.apple.cache_delete", v42, v12];

        v44 = dispatch_queue_create([v43 UTF8String], 0);
        operation_queue = v12->_operation_queue;
        v12->_operation_queue = v44;

        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        v48 = [NSString stringWithFormat:@"%s_%@_response.%p", "com.apple.cache_delete", v47, v12];

        v100 = v48;
        v49 = dispatch_queue_create([v48 UTF8String], 0);
        response_queue = v12->_response_queue;
        v12->_response_queue = v49;

        servicesCopy = v106;
        v51 = [v106 mutableCopy];
        v107 = +[NSMutableSet set];
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v52 = v12->_volumes;
        v53 = [(NSArray *)v52 countByEnumeratingWithState:&v120 objects:v132 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v121;
          while (2)
          {
            for (j = 0; j != v54; j = j + 1)
            {
              if (*v121 != v55)
              {
                objc_enumerationMutation(v52);
              }

              if (![*(*(&v120 + 1) + 8 * j) isRoot])
              {

                v118 = 0u;
                v119 = 0u;
                v116 = 0u;
                v117 = 0u;
                v52 = v51;
                v57 = [(NSArray *)v52 countByEnumeratingWithState:&v116 objects:v131 count:16];
                if (v57)
                {
                  v58 = v57;
                  v59 = *v117;
                  while (2)
                  {
                    for (k = 0; k != v58; k = k + 1)
                    {
                      if (*v117 != v59)
                      {
                        objc_enumerationMutation(v52);
                      }

                      v61 = *(*(&v116 + 1) + 8 * k);
                      v62 = [v106 objectForKeyedSubscript:v61];
                      if ([v62 rootOnly])
                      {
                        if ([(NSArray *)v12->_volumes count]!= 1)
                        {
                          v12->_hasRootOnlyServices = 1;

                          goto LABEL_58;
                        }

                        [v107 addObject:v61];
                      }
                    }

                    v58 = [(NSArray *)v52 countByEnumeratingWithState:&v116 objects:v131 count:16];
                    if (v58)
                    {
                      continue;
                    }

                    break;
                  }
                }

                goto LABEL_58;
              }
            }

            v54 = [(NSArray *)v52 countByEnumeratingWithState:&v120 objects:v132 count:16];
            if (v54)
            {
              continue;
            }

            break;
          }
        }

LABEL_58:

        v65 = [(NSMutableDictionary *)v12->_result objectForKeyedSubscript:@"CACHE_DELETE_SERVICES"];
        if (v65)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v67 = CDGetLogHandle();
          v68 = v67;
          if (isKindOfClass)
          {
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v136 = v65;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "filtering for user specified services: %{public}@", buf, 0xCu);
            }

            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v68 = v51;
            v69 = [v68 countByEnumeratingWithState:&v112 objects:v130 count:16];
            if (v69)
            {
              v70 = v69;
              v71 = *v113;
              do
              {
                for (m = 0; m != v70; m = m + 1)
                {
                  if (*v113 != v71)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v73 = *(*(&v112 + 1) + 8 * m);
                  if (([v65 containsObject:v73] & 1) == 0)
                  {
                    [v107 addObject:v73];
                  }
                }

                v70 = [v68 countByEnumeratingWithState:&v112 objects:v130 count:16];
              }

              while (v70);
            }
          }

          else if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v136 = v65;
            _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "unsupported type for CACHE_DELETE_SERVICES_KEY: %{public}@", buf, 0xCu);
          }
        }

        v74 = [(NSMutableDictionary *)v12->_result objectForKeyedSubscript:@"CACHE_DELETE_QUOTA_EVENT"];
        v98 = v74;
        if (v74 && (v75 = v74, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          bOOLValue = [v75 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        obj = v51;
        v77 = v51;
        v78 = [v77 countByEnumeratingWithState:&v108 objects:v129 count:16];
        if (v78)
        {
          v79 = v78;
          v80 = *v109;
          do
          {
            for (n = 0; n != v79; n = n + 1)
            {
              if (*v109 != v80)
              {
                objc_enumerationMutation(v77);
              }

              v82 = *(*(&v108 + 1) + 8 * n);
              v83 = [servicesCopy objectForKeyedSubscript:v82];
              v84 = v83;
              if (bOOLValue && [v83 noQuota])
              {
                v85 = CDGetLogHandle();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v136 = v82;
                  _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "removing noQuota service %{public}@ for this quota event", buf, 0xCu);
                }

                [v107 addObject:v82];
                servicesCopy = v106;
              }
            }

            v79 = [v77 countByEnumeratingWithState:&v108 objects:v129 count:16];
          }

          while (v79);
        }

        v86 = CDGetLogHandle();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v136 = v107;
          _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "removing filtered services: %{public}@", buf, 0xCu);
        }

        allObjects = [v107 allObjects];
        [v77 removeObjectsForKeys:allObjects];

        v12 = v104;
        objc_storeStrong(&v104->_services, obj);
        objc_storeStrong(&v104->_info, infoCopy2);
        v88 = [(NSDictionary *)v104->_info objectForKeyedSubscript:@"CACHE_DELETE_URGENCY"];
        objc_opt_class();
        volumesCopy = v101;
        infoCopy = v102;
        if (objc_opt_isKindOfClass())
        {
          v89 = CDGetLogHandle();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v136 = v88;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "User specified CACHE_DELETE_URGENCY: %{public}@", buf, 0xCu);
          }
        }

        info = v104->_info;
        v91 = evaluateUrgency();
        v104->_urgency = [v91 intValue];

        v92 = [(NSDictionary *)v104->_info objectForKeyedSubscript:@"CACHE_DELETE_URGENCY_LIMIT"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v93 = CDGetLogHandle();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v136 = v92;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "User specified CACHE_DELETE_URGENCY_LIMIT: %{public}@", buf, 0xCu);
          }
        }

        v94 = v104->_info;
        v95 = evaluateUrgencyLimit();
        v104->_urgencyLimit = [v95 intValue];

        goto LABEL_102;
      }

      p_super = CDGetLogHandle();
      v64 = v105;
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v136 = v28;
        _os_log_error_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "Failing to create operation: no valid volumes! (%{public}@)", buf, 0xCu);
      }

      volumesCopy = v101;
      infoCopy = v102;
    }

    else
    {
      v38 = [(NSMutableDictionary *)v12->_result objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
      p_super = [CacheDeleteDaemonVolume volumeWithPath:v38];

      if ([p_super validate])
      {
        v101 = volumesCopy;
        v102 = infoCopy;
        v133 = p_super;
        v39 = [NSArray arrayWithObjects:&v133 count:1];
        [(CacheDeleteOperation *)v12 setVolumes:v39];

        goto LABEL_34;
      }

      v63 = CDGetLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v97 = [(NSMutableDictionary *)v12->_result objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
        *buf = 138543362;
        v136 = v97;
        _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "CacheDeleteOperation unable to validate volume: %{public}@", buf, 0xCu);
      }

      v64 = v105;
    }

    v22 = 0;
    servicesCopy = v106;
    goto LABEL_107;
  }

  v19 = CDGetLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "info is not a dictionary!", buf, 2u);
  }

  v20 = [NSMutableDictionary dictionaryWithObject:@"Parameter error forKey:info is not a dict", @"CACHE_DELETE_ERROR"];
  v21 = v12->_result;
  v12->_result = v20;

  v22 = 0;
LABEL_107:

  return v22;
}

- (void)startOperation:(id)operation
{
  operationCopy = operation;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  operation_queue = [(CacheDeleteOperation *)self operation_queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __39__CacheDeleteOperation_startOperation___block_invoke;
  v8[3] = &unk_100061990;
  v8[4] = self;
  v10 = v18;
  v6 = operationCopy;
  v9 = v6;
  v11 = &v12;
  dispatch_sync(operation_queue, v8);

  v7 = v13[5];
  if (v7)
  {
    objc_exception_throw(v7);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);
}

void __39__CacheDeleteOperation_startOperation___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __39__CacheDeleteOperation_startOperation___block_invoke_2;
  v8[3] = &unk_100061968;
  v6 = *(a1 + 40);
  v4 = v6;
  v9 = v6;
  [v3 _startOperation:v8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Finished operation without firing completion!", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t __39__CacheDeleteOperation_startOperation___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)serviceIsRegistered:(id)registered
{
  registeredCopy = registered;
  services = [(CacheDeleteOperation *)self services];
  allKeys = [services allKeys];
  v7 = [allKeys containsObject:registeredCopy];

  return v7;
}

- (id)servicesForVolume:(id)volume
{
  if (([volume isRoot] & 1) != 0 || !-[CacheDeleteOperation hasRootOnlyServices](self, "hasRootOnlyServices"))
  {
    services = [(CacheDeleteOperation *)self services];
  }

  else
  {
    v4 = [NSMutableDictionary alloc];
    services2 = [(CacheDeleteOperation *)self services];
    services = [v4 initWithCapacity:{objc_msgSend(services2, "count")}];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    services3 = [(CacheDeleteOperation *)self services];
    v8 = [services3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(services3);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          services4 = [(CacheDeleteOperation *)self services];
          v14 = [services4 objectForKeyedSubscript:v12];

          if (([v14 rootOnly] & 1) == 0)
          {
            [services setObject:v14 forKeyedSubscript:v12];
          }
        }

        v9 = [services3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return services;
}

- (void)performBlockWithUrgency:(id)urgency
{
  urgencyCopy = urgency;
  urgency = [(CacheDeleteOperation *)self urgency];
  if (urgency <= [(CacheDeleteOperation *)self urgencyLimit])
  {
    do
    {
      if ((urgencyCopy[2](urgencyCopy, urgency) & 1) == 0)
      {
        break;
      }

      v5 = urgency < [(CacheDeleteOperation *)self urgencyLimit];
      urgency = (urgency + 1);
    }

    while (v5);
  }
}

- (void)processTestFailures:(id)failures
{
  failuresCopy = failures;
  if (qword_10006E2B8 != -1)
  {
    dispatch_once(&qword_10006E2B8, &__block_literal_global_5);
  }

  v5 = CDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = failuresCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "processTestFailures: %@", buf, 0xCu);
  }

  if (failuresCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = _MergedGlobals_13;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __44__CacheDeleteOperation_processTestFailures___block_invoke_56;
    v8[3] = &unk_100060B40;
    v9 = failuresCopy;
    selfCopy = self;
    dispatch_sync(v6, v8);
    v7 = v9;
  }

  else
  {
    v7 = CDGetLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = failuresCopy;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "processTestFailures parameter error, failures: %@", buf, 0xCu);
    }
  }
}

void __44__CacheDeleteOperation_processTestFailures___block_invoke(id a1)
{
  _MergedGlobals_13 = dispatch_queue_create("com.apple.cache_deleteoperation_test_failures", 0);

  _objc_release_x1();
}

void __44__CacheDeleteOperation_processTestFailures___block_invoke_56(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412546;
    v17 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = CDGetLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [*(a1 + 32) objectForKeyedSubscript:v8];
          *buf = v17;
          v23 = v8;
          v24 = 2112;
          v25 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "processTestFailures key: %@, val: %@", buf, 0x16u);
        }

        v11 = [*(a1 + 40) testFailures];

        if (!v11)
        {
          v12 = +[NSMutableDictionary dictionary];
          [*(a1 + 40) setTestFailures:v12];
        }

        v13 = [*(a1 + 40) testFailures];
        v14 = [v13 objectForKeyedSubscript:v8];

        if (!v14)
        {
          v14 = +[NSMutableArray array];
          v15 = [*(a1 + 40) testFailures];
          [v15 setObject:v14 forKeyedSubscript:v8];
        }

        v16 = [*(a1 + 32) objectForKeyedSubscript:v8];
        [v14 addObject:v16];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v5);
  }
}

- (BOOL)validateDictionaryForXPC:(id)c
{
  cCopy = c;
  v11 = 0;
  v4 = [NSPropertyListSerialization dataWithPropertyList:cCopy format:100 options:0 error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (!v7)
  {
    v9 = CDGetLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = cCopy;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "validateDictionaryForXPC Invalid dictionary (%@): %@", buf, 0x16u);
    }
  }

  return v8;
}

- (double)non_negative_time_remaining
{
  v3 = mach_absolute_time();
  start_time = self->_start_time;
  timeout_seconds = self->_timeout_seconds;
  if (start_time == 0.0)
  {
    return self->_timeout_seconds;
  }

  v7 = (v3 - start_time) * gTimebaseConversion / 1000000000.0;
  result = 0.0;
  if (v7 < timeout_seconds)
  {
    return timeout_seconds - v7;
  }

  return result;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"%@ <%p>: {\n", v4, self];

  [v5 appendString:@"\tVolumes: [\n"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  volumes = [(CacheDeleteOperation *)self volumes];
  v7 = [volumes countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(volumes);
        }

        mountPoint = [*(*(&v24 + 1) + 8 * i) mountPoint];
        v12 = [NSString stringWithFormat:@"\t\t%@\n", mountPoint];
        [v5 appendString:v12];
      }

      v8 = [volumes countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  [v5 appendString:@"\tServices: [\n"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  services = [(CacheDeleteOperation *)self services];
  v14 = [services countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(services);
        }

        v18 = [NSString stringWithFormat:@"\t\t%@\n", *(*(&v20 + 1) + 8 * j)];
        [v5 appendString:v18];
      }

      v15 = [services countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  [v5 appendString:@"\t]\n"];
  [v5 appendString:@"}\n"];

  return v5;
}

@end