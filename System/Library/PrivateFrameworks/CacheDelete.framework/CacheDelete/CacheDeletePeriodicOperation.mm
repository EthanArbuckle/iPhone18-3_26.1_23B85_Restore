@interface CacheDeletePeriodicOperation
- (CacheDeletePeriodicOperation)initWithInfo:(id)a3 services:(id)a4 volumes:(id)a5;
- (void)_startOperation:(id)a3;
@end

@implementation CacheDeletePeriodicOperation

- (CacheDeletePeriodicOperation)initWithInfo:(id)a3 services:(id)a4 volumes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v10 count])
  {
    v11 = [v8 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];

    if (!v11)
    {
      v12 = +[CacheDeleteDaemonVolume rootVolume];
      v33 = v12;
      v13 = [NSArray arrayWithObjects:&v33 count:1];

      v10 = v13;
    }
  }

  v31.receiver = self;
  v31.super_class = CacheDeletePeriodicOperation;
  v14 = [(CacheDeleteOperation *)&v31 initWithInfo:v8 services:v9 volumes:v10];
  if (v14)
  {
    v25 = v9;
    v26 = v8;
    v15 = +[NSMutableDictionary dictionary];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = [(CacheDeleteOperation *)v14 services];
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * v20);
          v22 = [(CacheDeleteOperation *)v14 services];
          v23 = [v22 objectForKeyedSubscript:v21];

          if ([v23 doesPeriodic])
          {
            [v15 setObject:v23 forKeyedSubscript:v21];
          }

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v18);
    }

    [(CacheDeleteOperation *)v14 setServices:v15];
    v9 = v25;
    v8 = v26;
  }

  return v14;
}

- (void)_startOperation:(id)a3
{
  v38 = a3;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  group = dispatch_group_create();
  v4 = [CDPeriodicOperationResult alloc];
  v5 = [(CacheDeleteOperation *)self volumeNames];
  v6 = [(CDPeriodicOperationResult *)v4 initWithVolumes:v5];
  [(CacheDeletePeriodicOperation *)self setPeriodicResult:v6];

  v7 = [(CacheDeleteOperation *)self info];
  v40 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_TEST_PARAMETERS"];

  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x3032000000;
  v75[3] = __Block_byref_object_copy__2;
  v75[4] = __Block_byref_object_dispose__2;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__2;
  v73 = __Block_byref_object_dispose__2;
  v74 = 0;
  if (v40)
  {
    v8 = [v40 objectForKeyedSubscript:@"CACHE_DELETE_PURGE_TIMEOUT"];
    v9 = evaluateNumberProperty();
    v10 = [v9 unsignedLongLongValue];

    v11 = 120;
    if (v10)
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 30;
  }

  v41 = v11;
  queue = dispatch_queue_create("com.apple.cache_delete_periodic_results", 0);
  v12 = [(CacheDeleteOperation *)self info];
  v13 = [(CacheDeleteOperation *)self validateDictionaryForXPC:v12];

  if (v13)
  {
    v14 = [(CacheDeleteOperation *)self info];
    v49 = [v14 mutableCopy];
  }

  else
  {
    v49 = objc_opt_new();
  }

  v15 = [NSNumber numberWithInt:1, v38];
  [v49 setObject:v15 forKeyedSubscript:@"CACHE_DELETE_URGENCY"];

  v16 = CDGetLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CacheDeleteOperation *)self volumes];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Periodic Operation: Info %@ ", &buf, 0xCu);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [(CacheDeleteOperation *)self volumes];
  v44 = [obj countByEnumeratingWithState:&v65 objects:v82 count:16];
  if (v44)
  {
    v43 = *v66;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v66 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v65 + 1) + 8 * i);
        v18 = CDGetLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v48;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Periodic Operation: volume %{public}@ ", &buf, 0xCu);
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v19 = [(CacheDeleteOperation *)self services];
        v20 = [v19 countByEnumeratingWithState:&v61 objects:v81 count:16];
        if (v20)
        {
          v21 = *v62;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v62 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v61 + 1) + 8 * j);
              v24 = [(CacheDeleteOperation *)self services];
              v25 = [v24 objectForKeyedSubscript:v23];

              if ([v25 inFlight])
              {
                v26 = CDGetLogHandle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v23;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Periodic Operation: Service %{public}@ is in flight, skipping", &buf, 0xCu);
                }
              }

              else
              {
                v27 = objc_alloc_init(CDPeriodicServiceRequestResult);
                [(CDServiceRequestResult *)v27 setServiceName:v23];
                [(CDServiceRequestResult *)v27 setUrgency:1];
                v28 = CDGetLogHandle();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v23;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Periodic Operation: Service %{public}@ ", &buf, 0xCu);
                }

                v29 = [(CacheDeleteOperation *)self servicesToTranslate];
                v30 = [v25 ID];
                [v29 containsObject:v30];

                v31 = [v48 mountPoint];
                v32 = mapVolume();
                [v49 setObject:v32 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

                dispatch_group_enter(group);
                *&buf = 0;
                *(&buf + 1) = &buf;
                v79 = 0x2020000000;
                v80 = 0;
                v33 = [v49 mutableCopy];
                v52[0] = _NSConcreteStackBlock;
                v52[1] = 3221225472;
                v52[2] = __48__CacheDeletePeriodicOperation__startOperation___block_invoke;
                v52[3] = &unk_1000618B0;
                p_buf = &buf;
                v34 = v25;
                v53 = v34;
                v54 = self;
                v26 = v27;
                v55 = v26;
                v59 = v77;
                v56 = queue;
                v60 = v75;
                v57 = group;
                [v34 servicePeriodic:1 info:v33 replyBlock:v52];

                _Block_object_dispose(&buf, 8);
              }
            }

            v20 = [v19 countByEnumeratingWithState:&v61 objects:v81 count:16];
          }

          while (v20);
        }

        v35 = dispatch_time(0, 1000000000 * v41);
        if (dispatch_group_wait(group, v35))
        {
          v36 = CDGetLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v41;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "timed out (%llu seconds) waiting for:", &buf, 0xCu);
          }

          v37 = [(CacheDeleteOperation *)self services];
          [v37 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_4];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __48__CacheDeletePeriodicOperation__startOperation___block_invoke_36;
          block[3] = &unk_100060D58;
          block[4] = self;
          dispatch_sync(queue, block);
        }
      }

      v44 = [obj countByEnumeratingWithState:&v65 objects:v82 count:16];
    }

    while (v44);
  }

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = __48__CacheDeletePeriodicOperation__startOperation___block_invoke_2_37;
  v50[3] = &unk_100061918;
  v50[4] = self;
  v50[5] = v75;
  v50[6] = &v69;
  v50[7] = v77;
  dispatch_sync(queue, v50);
  if (v39)
  {
    v39[2](v39, v70[5]);
  }

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(v75, 8);

  _Block_object_dispose(v77, 8);
}

void __48__CacheDeletePeriodicOperation__startOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 72) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v13 = [*(a1 + 32) ID];
      *buf = 138543362;
      v24 = v13;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Periodic callback firing more than once for service %{public}@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) ID];
    _CacheDeleteAbortWithMessage();
  }

  else
  {
    *(v4 + 24) = 1;
    v7 = [*(a1 + 40) response_queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __48__CacheDeletePeriodicOperation__startOperation___block_invoke_18;
    block[3] = &unk_100061888;
    v16 = *(a1 + 48);
    v8 = v3;
    v9 = *(a1 + 80);
    v17 = v8;
    v21 = v9;
    v10 = *(a1 + 56);
    v11 = *(a1 + 88);
    v18 = v10;
    v22 = v11;
    v14 = *(a1 + 32);
    v12 = v14.i64[0];
    v19 = vextq_s8(v14, v14, 8uLL);
    v20 = *(a1 + 64);
    dispatch_async(v7, block);

    v6 = v16;
  }
}

void __48__CacheDeletePeriodicOperation__startOperation___block_invoke_18(uint64_t a1)
{
  [*(a1 + 32) finish];
  v2 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setReportedPurgedBytes:{objc_msgSend(v2, "unsignedLongLongValue")}];
    *(*(*(a1 + 80) + 8) + 24) += [v2 unsignedLongLongValue];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__CacheDeletePeriodicOperation__startOperation___block_invoke_2;
  block[3] = &unk_100060B40;
  v3 = *(a1 + 48);
  block[4] = *(a1 + 56);
  v15 = *(a1 + 32);
  dispatch_sync(v3, block);
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_ERROR"];
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_TEST_FAILURES"];
  v6 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __48__CacheDeletePeriodicOperation__startOperation___block_invoke_3;
  v9[3] = &unk_100061860;
  v10 = v4;
  v11 = v5;
  v13 = *(a1 + 88);
  v12 = *(a1 + 64);
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);
  dispatch_group_leave(*(a1 + 72));
}

void __48__CacheDeletePeriodicOperation__startOperation___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) periodicResult];
  [v2 addResult:*(a1 + 40)];
}

void __48__CacheDeletePeriodicOperation__startOperation___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 || *(a1 + 40))
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v3 = +[NSMutableArray array];
      v4 = *(*(a1 + 56) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      v2 = *(a1 + 32);
    }

    v6 = &DiagnosticLogSubmissionEnabled_ptr;
    if (v2)
    {
      v7 = *(*(*(a1 + 56) + 8) + 40);
      v8 = [*(a1 + 48) ID];
      v9 = *(a1 + 32);
      v31[0] = v8;
      v31[1] = v9;
      v10 = [NSArray arrayWithObjects:v31 count:2];
      v11 = [v10 componentsJoinedByString:@" : "];
      [v7 addObject:v11];
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = v12;
      v13 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v26;
        do
        {
          v16 = 0;
          do
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v25 + 1) + 8 * v16);
            v18 = *(*(*(a1 + 56) + 8) + 40);
            v19 = [*(a1 + 48) ID];
            v29[0] = v19;
            v29[1] = v17;
            v20 = [*(a1 + 40) objectForKeyedSubscript:v17];
            v29[2] = v20;
            [v6[283] arrayWithObjects:v29 count:3];
            v22 = v21 = v6;
            v23 = [v22 componentsJoinedByString:@" : "];
            [v18 addObject:v23];

            v6 = v21;
            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v14);
      }
    }
  }
}

void __48__CacheDeletePeriodicOperation__startOperation___block_invoke_34(id a1, NSString *a2, CDService *a3, BOOL *a4)
{
  v5 = a2;
  if ([(CDService *)a3 inFlight])
  {
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\t%{public}@", &v7, 0xCu);
    }
  }
}

void __48__CacheDeletePeriodicOperation__startOperation___block_invoke_36(uint64_t a1)
{
  v1 = [*(a1 + 32) periodicResult];
  [v1 setTimedOut:1];
}

void __48__CacheDeletePeriodicOperation__startOperation___block_invoke_2_37(uint64_t a1)
{
  v2 = [*(a1 + 32) periodicResult];
  [v2 finish];

  v3 = [*(a1 + 32) analyticsReporter];
  v4 = [*(a1 + 32) periodicResult];
  [v3 reportPeriodic:v4];

  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v5 = CDGetLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v26) = 172;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%d, CacheDeletePeriodicOperation _startOperation service errors:", buf, 8u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v20;
      *&v8 = 138412290;
      v18 = v8;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = CDGetLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v26 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Service:Error - %@", buf, 0xCu);
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v9);
    }
  }

  v23 = @"CACHE_DELETE_AMOUNT";
  v14 = [NSNumber numberWithUnsignedLongLong:*(*(*(a1 + 56) + 8) + 24), v18, v19];
  v24 = v14;
  v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

@end