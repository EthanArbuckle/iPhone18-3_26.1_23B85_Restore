@interface CacheDeletePurgeableOperation
- (CacheDeletePurgeableOperation)initWithInfo:(id)a3 services:(id)a4 volumes:(id)a5;
- (id)copyInFlights;
- (void)_startOperation:(id)a3;
- (void)addInFlight:(id)a3;
- (void)performBlockWithUrgency:(id)a3;
- (void)removeInFlight:(id)a3;
@end

@implementation CacheDeletePurgeableOperation

- (id)copyInFlights
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(CacheDeletePurgeableOperation *)self inflight_q];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __46__CacheDeletePurgeableOperation_copyInFlights__block_invoke;
  v6[3] = &unk_100060DD0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __46__CacheDeletePurgeableOperation_copyInFlights__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) inflight];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (CacheDeletePurgeableOperation)initWithInfo:(id)a3 services:(id)a4 volumes:(id)a5
{
  v8 = a3;
  v27.receiver = self;
  v27.super_class = CacheDeletePurgeableOperation;
  v9 = [(CacheDeleteOperation *)&v27 initWithInfo:v8 services:a4 volumes:a5];
  if (v9)
  {
    v10 = +[NSMutableDictionary dictionary];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [(CacheDeleteOperation *)v9 services];
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        v15 = 0;
        do
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v23 + 1) + 8 * v15);
          v17 = [(CacheDeleteOperation *)v9 services];
          v18 = [v17 objectForKeyedSubscript:v16];

          if ([v18 doesPurge] && (objc_msgSend(v18, "doNotQuery") & 1) == 0)
          {
            [v10 setObject:v18 forKeyedSubscript:v16];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    v19 = dispatch_queue_create("com.apple.cahce_delete.purgeable_inflight", 0);
    [(CacheDeletePurgeableOperation *)v9 setInflight_q:v19];

    v20 = objc_opt_new();
    [(CacheDeletePurgeableOperation *)v9 setInflight:v20];

    [(CacheDeleteOperation *)v9 setServices:v10];
    v21 = evaluatePurgeableUrgency();
    -[CacheDeletePurgeableOperation setPurgeableUrgency:](v9, "setPurgeableUrgency:", [v21 intValue]);
  }

  return v9;
}

- (void)addInFlight:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeletePurgeableOperation *)self inflight_q];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __45__CacheDeletePurgeableOperation_addInFlight___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __45__CacheDeletePurgeableOperation_addInFlight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inflight];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeInFlight:(id)a3
{
  v4 = a3;
  v5 = [(CacheDeletePurgeableOperation *)self inflight_q];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __48__CacheDeletePurgeableOperation_removeInFlight___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __48__CacheDeletePurgeableOperation_removeInFlight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inflight];
  [v2 removeObject:*(a1 + 40)];
}

- (void)performBlockWithUrgency:(id)a3
{
  v5 = a3;
  (*(a3 + 2))(v5, [(CacheDeletePurgeableOperation *)self purgeableUrgency]);
}

- (void)_startOperation:(id)a3
{
  v121 = a3;
  v136 = self;
  v4 = [(CacheDeleteOperation *)self info];
  v5 = [v4 mutableCopy];

  v137 = v5;
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_NO_CACHE"];
  v129 = evaluateBoolProperty();

  v7 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_DIAGNOSTIC_INFO"];
  v124 = evaluateBoolProperty();

  v120 = mach_absolute_time();
  v8 = [CDPurgeableOperationResult alloc];
  v9 = [(CacheDeleteOperation *)v136 volumeNames];
  v10 = [(CDPurgeableOperationResult *)v8 initWithVolumes:v9];
  [(CacheDeletePurgeableOperation *)v136 setPurgeableResult:v10];

  v139 = [(CacheDeleteOperation *)v136 resultCache];
  v11 = [(CacheDeleteOperation *)v136 info];
  v12 = [v11 objectForKeyedSubscript:@"CACHE_DELETE_CALLING_PROCESS"];
  v128 = evaluateStringProperty();

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  obj = [(CacheDeleteOperation *)v136 volumes];
  v132 = [obj countByEnumeratingWithState:&v170 objects:v191 count:16];
  if (v132)
  {
    v131 = *v171;
    if (v128)
    {
      v13 = v128;
    }

    else
    {
      v13 = @"unknown";
    }

    v125 = v13;
    if (v129)
    {
      v14 = "TRUE";
    }

    else
    {
      v14 = "FALSE";
    }

    if (v129)
    {
      v15 = 30;
    }

    else
    {
      v15 = 5;
    }

    v123 = v15;
    v16 = "NOT ";
    if (v129)
    {
      v16 = "";
    }

    v122 = v16;
    v17 = 5000000000;
    if (v129)
    {
      v17 = 30000000000;
    }

    delta = v17;
    v127 = v14;
LABEL_16:
    v135 = 0;
    while (1)
    {
      if (*v171 != v131)
      {
        objc_enumerationMutation(obj);
      }

      v138 = *(*(&v170 + 1) + 8 * v135);
      [v137 setObject:0 forKeyedSubscript:{@"CACHE_DELETE_AMOUNT", v120}];
      v18 = [v138 mountPoint];
      [v137 setObject:v18 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

      *v188 = 0;
      *&v188[8] = v188;
      *&v188[16] = 0x3032000000;
      v189 = __Block_byref_object_copy__6;
      *&v190 = __Block_byref_object_dispose__6;
      *(&v190 + 1) = 0;
      v134 = dispatch_group_create();
      v19 = CDGetLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v137 objectForKeyedSubscript:@"CACHE_DELETE_QUERY_PATH"];
        v21 = evaluateStringProperty();
        v22 = [v138 mountPoint];
        *buf = 67109890;
        *v182 = 116;
        *&v182[4] = 2114;
        *&v182[6] = v21;
        *&v182[14] = 2112;
        *&v182[16] = v22;
        v183 = 2114;
        v184 = v137;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%d PurgeableOperation _startOperation query path: %{public}@ for volume: %@, info: %{public}@", buf, 0x26u);
      }

      if (v138)
      {
        if (v129)
        {
          v23 = [(CacheDeleteOperation *)v136 services];
          v24 = [v23 allKeys];
          v25 = [NSSet setWithArray:v24];
          v26 = [v25 mutableCopy];
          v27 = *(*&v188[8] + 40);
          *(*&v188[8] + 40) = v26;

          v28 = *(*&v188[8] + 40);
          v29 = [v139 copyPushingServices];
          [v28 minusSet:v29];

          log = CDGetLogHandle();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v30 = *(*&v188[8] + 40);
            *buf = 138543362;
            *v182 = v30;
            _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "NOT using cached purgeable values for %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v32 = [NSNumber numberWithInt:[(CacheDeletePurgeableOperation *)v136 purgeableUrgency]];
          v33 = [v139 copyInvalidServicesForVolume:v138 atUrgency:v32];
          v34 = [v33 mutableCopy];
          v35 = *(*&v188[8] + 40);
          *(*&v188[8] + 40) = v34;

          if (!*(*&v188[8] + 40))
          {
            v36 = +[NSMutableSet set];
            v37 = *(*&v188[8] + 40);
            *(*&v188[8] + 40) = v36;
          }

          v38 = [(CacheDeleteOperation *)v136 services];
          v39 = [v38 allKeys];
          log = [NSMutableSet setWithArray:v39];

          [*(*&v188[8] + 40) intersectSet:log];
          v40 = [(CacheDeleteOperation *)v136 resultCache];
          v41 = [v40 recentInfoForVolume:v138 atUrgency:{-[CacheDeletePurgeableOperation purgeableUrgency](v136, "purgeableUrgency")}];

          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v42 = [(CacheDeleteOperation *)v136 services];
          v43 = [v42 countByEnumeratingWithState:&v166 objects:v187 count:16];
          if (v43)
          {
            v44 = *v167;
            do
            {
              for (i = 0; i != v43; i = i + 1)
              {
                if (*v167 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                v46 = *(*(&v166 + 1) + 8 * i);
                v47 = [v41 objectForKeyedSubscript:v46];
                if (v47)
                {
                }

                else
                {
                  v48 = [v139 copyPushingServices];
                  v49 = [v48 containsObject:v46];

                  if ((v49 & 1) == 0)
                  {
                    [*(*&v188[8] + 40) addObject:v46];
                  }
                }
              }

              v43 = [v42 countByEnumeratingWithState:&v166 objects:v187 count:16];
            }

            while (v43);
          }
        }

        v50 = CDGetLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v138 mountPoint];
          v52 = [*(*&v188[8] + 40) count];
          *buf = 67110146;
          *v182 = 146;
          *&v182[4] = 2114;
          *&v182[6] = v125;
          *&v182[14] = 2082;
          *&v182[16] = v127;
          v183 = 2114;
          v184 = v51;
          v185 = 2048;
          v186 = v52;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%d PurgeableOperation Calling process: %{public}@, refreshAll is %{public}s for volume: %{public}@, %lu servicesToQuery:", buf, 0x30u);
        }

        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v53 = *(*&v188[8] + 40);
        v54 = [v53 countByEnumeratingWithState:&v162 objects:v180 count:16];
        if (v54)
        {
          v55 = *v163;
          do
          {
            for (j = 0; j != v54; j = j + 1)
            {
              if (*v163 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v162 + 1) + 8 * j);
              v58 = CDGetLogHandle();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109378;
                *v182 = 148;
                *&v182[4] = 2114;
                *&v182[6] = v57;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%d PurgeableOperation will query: %{public}@", buf, 0x12u);
              }
            }

            v54 = [v53 countByEnumeratingWithState:&v162 objects:v180 count:16];
          }

          while (v54);
        }

        if ([*(*&v188[8] + 40) count])
        {
          v59 = [CacheDeleteAsyncTimeoutFlag alloc];
          v60 = [(CacheDeleteOperation *)v136 response_queue];
          v61 = [(CacheDeleteAsyncTimeoutFlag *)v59 initWithQueue:v60];

          v155[0] = _NSConcreteStackBlock;
          v155[1] = 3221225472;
          v155[2] = __49__CacheDeletePurgeableOperation__startOperation___block_invoke;
          v155[3] = &unk_100061D18;
          v155[4] = v136;
          v161 = v188;
          v62 = v134;
          v156 = v62;
          v63 = v137;
          v157 = v63;
          v158 = v128;
          v159 = v138;
          v31 = v61;
          v160 = v31;
          [(CacheDeletePurgeableOperation *)v136 performBlockWithUrgency:v155];
          v64 = dispatch_time(0, delta);
          v65 = dispatch_group_wait(v62, v64);
          [v31 setTimedOut:1];
          if (v65)
          {
            v66 = [(CacheDeletePurgeableOperation *)v136 copyInFlights];
            v67 = CDGetLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = objc_opt_self();
              v69 = [v68 volumeNames];
              *buf = 67109634;
              *v182 = v123;
              *&v182[4] = 2080;
              *&v182[6] = v122;
              *&v182[14] = 2114;
              *&v182[16] = v69;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "dispatch_group_wait timed out after %d seconds, %srefreshing all services. Volumes: %{public}@, services in flight:", buf, 0x1Cu);
            }

            v153 = 0u;
            v154 = 0u;
            v151 = 0u;
            v152 = 0u;
            v70 = v66;
            v71 = [v70 countByEnumeratingWithState:&v151 objects:v179 count:16];
            if (v71)
            {
              v72 = *v152;
              do
              {
                for (k = 0; k != v71; k = k + 1)
                {
                  if (*v152 != v72)
                  {
                    objc_enumerationMutation(v70);
                  }

                  v74 = *(*(&v151 + 1) + 8 * k);
                  v75 = CDGetLogHandle();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    *v182 = v74;
                    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "dispatch_group_wait_timeout_leave, service inFlight: %{public}@", buf, 0xCu);
                  }
                }

                v71 = [v70 countByEnumeratingWithState:&v151 objects:v179 count:16];
              }

              while (v71);
            }

            if (v70)
            {
              v76 = v124;
            }

            else
            {
              v76 = 0;
            }

            if (v76 == 1)
            {
              [v63 setObject:v70 forKeyedSubscript:@"CACHE_DELETE_SERVICES_INFLIGHT"];
            }
          }
        }

        else
        {
          v31 = CDGetLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v77 = [(CacheDeleteOperation *)v136 volumeNames];
            *buf = 138543618;
            *v182 = v77;
            *&v182[8] = 2080;
            *&v182[10] = v127;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%{public}@] no servicesToQuery. refreshAll: %s", buf, 0x16u);
          }
        }
      }

      else
      {
        v31 = CDGetLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *v182 = v137;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Invalid volume parameter, info: %{public}@", buf, 0xCu);
        }
      }

      _Block_object_dispose(v188, 8);
      if (!v138)
      {
        break;
      }

      if (++v135 == v132)
      {
        v132 = [obj countByEnumeratingWithState:&v170 objects:v191 count:16];
        if (v132)
        {
          goto LABEL_16;
        }

        goto LABEL_77;
      }
    }
  }

  else
  {
LABEL_77:

    v78 = [(CacheDeletePurgeableOperation *)v136 purgeableResult];
    [v78 finish];

    v79 = [(CacheDeleteOperation *)v136 analyticsReporter];
    v80 = [(CacheDeletePurgeableOperation *)v136 purgeableResult];
    [v79 reportPurgeable:v80];

    if (v124)
    {
      v81 = +[NSMutableDictionary dictionary];
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v140 = [(CacheDeletePurgeableOperation *)v136 copyInFlights];
      v82 = [v140 countByEnumeratingWithState:&v147 objects:v178 count:16];
      if (v82)
      {
        v83 = *v148;
        do
        {
          for (m = 0; m != v82; m = m + 1)
          {
            if (*v148 != v83)
            {
              objc_enumerationMutation(v140);
            }

            v85 = *(*(&v147 + 1) + 8 * m);
            v177[0] = &off_100065638;
            v176[0] = @"Reported";
            v176[1] = @"Duration";
            v86 = [NSNumber numberWithDouble:nan("")];
            v176[2] = @"inFlight";
            v177[1] = v86;
            v177[2] = &__kCFBooleanTrue;
            v87 = [NSDictionary dictionaryWithObjects:v177 forKeys:v176 count:3];

            v175 = v87;
            v88 = [NSArray arrayWithObjects:&v175 count:1];
            [v81 setObject:v88 forKeyedSubscript:v85];
          }

          v82 = [v140 countByEnumeratingWithState:&v147 objects:v178 count:16];
        }

        while (v82);
      }

      v89 = [(CacheDeletePurgeableOperation *)v136 purgeableResult];
      v90 = [v89 results];
      v145[0] = _NSConcreteStackBlock;
      v145[1] = 3221225472;
      v145[2] = __49__CacheDeletePurgeableOperation__startOperation___block_invoke_74;
      v145[3] = &unk_100061D40;
      v146 = v81;
      v91 = v81;
      [v90 enumerateObjectsUsingBlock:v145];

      v92 = [v91 copy];
      [v137 setObject:v92 forKeyedSubscript:@"CACHE_DELETE_DIAGNOSTIC_INFO"];
    }

    v93 = v120;
    v94 = [NSNumber numberWithDouble:gTimebaseConversion * (mach_absolute_time() - v120) / 1000000000.0];
    [v137 setObject:v94 forKeyedSubscript:@"CACHE_DELETE_ELAPSED_TIME"];

    if ([(CacheDeletePurgeableOperation *)v136 cancel])
    {
      [v137 setObject:@"Operation Cancelled" forKeyedSubscript:@"CACHE_DELETE_ERROR"];
    }

    v95 = [(CacheDeleteOperation *)v136 volumes];
    v96 = [(CacheDeleteOperation *)v136 urgency];
    v97 = [(CacheDeleteOperation *)v136 info];
    v98 = [v97 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
    v99 = evaluateStringProperty();
    v100 = [v139 recentInfoForVolumes:v95 atUrgency:v96 validateResults:0 targetVolume:v99];
    [v137 addEntriesFromDictionary:v100];

    v101 = CDGetLogHandle();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      if (v128)
      {
        v102 = v128;
      }

      else
      {
        v102 = @"unknown caller";
      }

      v103 = [v137 objectForKeyedSubscript:@"CACHE_DELETE_QUERY_PATH"];
      v104 = evaluateStringProperty();
      v105 = [NSNumber numberWithInt:[(CacheDeleteOperation *)v136 urgency]];
      v106 = mach_absolute_time();
      *v188 = 138544130;
      *&v188[4] = v102;
      *&v188[12] = 2112;
      *&v188[14] = v104;
      *&v188[22] = 2112;
      v189 = v105;
      LOWORD(v190) = 2048;
      *(&v190 + 2) = gTimebaseConversion * (v106 - v93) / 1000000000.0;
      _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "<<<PurgeableOperation Result (%{public}@, query path: %@, u: %@, ET: %f):", v188, 0x2Au);
    }

    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v107 = v137;
    v108 = [v107 countByEnumeratingWithState:&v141 objects:v174 count:16];
    if (v108)
    {
      v109 = *v142;
      do
      {
        for (n = 0; n != v108; n = n + 1)
        {
          if (*v142 != v109)
          {
            objc_enumerationMutation(v107);
          }

          v111 = *(*(&v141 + 1) + 8 * n);
          v112 = CDGetLogHandle();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
          {
            v113 = [v107 objectForKeyedSubscript:v111];
            *v188 = 138543618;
            *&v188[4] = v111;
            *&v188[12] = 2114;
            *&v188[14] = v113;
            _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "%{public}@ : %{public}@", v188, 0x16u);
          }
        }

        v108 = [v107 countByEnumeratingWithState:&v141 objects:v174 count:16];
      }

      while (v108);
    }

    v114 = CDGetLogHandle();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v115 = [v107 objectForKeyedSubscript:@"CACHE_DELETE_TOTAL_AVAILABLE"];
      v116 = [(CacheDeleteOperation *)v136 info];
      v117 = [v116 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
      v118 = v117;
      v119 = @"unknown";
      *v188 = 138543874;
      if (v128)
      {
        v119 = v128;
      }

      *&v188[4] = v115;
      *&v188[12] = 2114;
      *&v188[14] = v117;
      *&v188[22] = 2114;
      v189 = v119;
      _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "PurgeableOperation Result>>> %{public}@ bytes on: %{public}@. Calling process: %{public}@", v188, 0x20u);
    }

    obj = [v107 copy];
    v121[2](v121, obj);
  }
}

uint64_t __49__CacheDeletePurgeableOperation__startOperation___block_invoke(uint64_t a1, unsigned int a2)
{
  v27 = [*(a1 + 32) cancel];
  if ((v27 & 1) == 0)
  {
    v3 = CDGetLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v25 = [*(a1 + 32) urgency];
      v26 = [*(a1 + 32) urgencyLimit];
      *&buf = 0xA004000300;
      WORD4(buf) = 1024;
      *(&buf + 10) = v25;
      HIWORD(buf) = 1024;
      LODWORD(v51) = v26;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%d self.urgency: %d, self.urgencyLimit: %d", &buf, 0x14u);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v4 = *(*(*(a1 + 80) + 8) + 40);
    v31 = [v4 countByEnumeratingWithState:&v46 objects:v53 count:16];
    if (v31)
    {
      v30 = *v47;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(v4);
          }

          v6 = *(*(&v46 + 1) + 8 * i);
          v7 = fsPurgeableTypeForService();

          if (!v7)
          {
            if ([*(a1 + 32) cancel])
            {
              goto LABEL_18;
            }

            v8 = [*(a1 + 32) services];
            v9 = [v8 objectForKeyedSubscript:v6];

            if ([v9 inFlight])
            {
              v10 = CDGetLogHandle();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v6;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Service %{public}@ is still in-flight!", &buf, 0xCu);
              }
            }

            else
            {
              dispatch_group_enter(*(a1 + 40));
              [*(a1 + 32) addInFlight:v6];
              v28 = [*(a1 + 32) resultCache];
              objc_initWeak(&location, *(a1 + 32));
              v11 = [*(a1 + 32) response_queue];
              *&buf = 0;
              *(&buf + 1) = &buf;
              v51 = 0x2020000000;
              v52 = 0;
              v12 = objc_alloc_init(CDPurgeableServiceRequestResult);
              [(CDServiceRequestResult *)v12 setUrgency:a2];
              [(CDServiceRequestResult *)v12 setServiceName:v6];
              v13 = [*(a1 + 32) servicesToTranslate];
              [v13 containsObject:v6];

              v14 = [*(a1 + 48) objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
              v15 = mapVolume();
              [*(a1 + 48) setObject:v15 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

              v16 = mach_absolute_time();
              v17 = [*(a1 + 48) mutableCopy];
              v32[0] = _NSConcreteStackBlock;
              v32[1] = 3221225472;
              v32[2] = __49__CacheDeletePurgeableOperation__startOperation___block_invoke_31;
              v32[3] = &unk_100061CF0;
              v43[1] = v16;
              v32[4] = v6;
              v18 = *(a1 + 56);
              v19 = *(a1 + 64);
              v33 = v18;
              v34 = v19;
              p_buf = &buf;
              v20 = v9;
              v35 = v20;
              v36 = *(a1 + 40);
              v21 = v11;
              v37 = v21;
              objc_copyWeak(v43, &location);
              v22 = v12;
              v23 = *(a1 + 32);
              v38 = v22;
              v39 = v23;
              v44 = a2;
              v10 = v28;
              v40 = v10;
              v41 = *(a1 + 72);
              [v20 servicePurgeable:a2 info:v17 replyBlock:v32];

              objc_destroyWeak(v43);
              _Block_object_dispose(&buf, 8);

              objc_destroyWeak(&location);
            }
          }
        }

        v31 = [v4 countByEnumeratingWithState:&v46 objects:v53 count:16];
      }

      while (v31);
    }

LABEL_18:
  }

  return v27 ^ 1;
}

void __49__CacheDeletePurgeableOperation__startOperation___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_absolute_time();
  v5 = *(a1 + 128);
  v6 = gTimebaseConversion;
  v7 = CDGetLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v6 * (v4 - v5) / 1000000000.0;
    v9 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v10 = *(a1 + 40);
    }

    else
    {
      v10 = @"unknown";
    }

    v11 = [*(a1 + 48) mountPoint];
    v12 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    *buf = 138544386;
    v48 = v9;
    v49 = 2048;
    v50 = v8;
    v51 = 2114;
    v52 = v10;
    v53 = 2114;
    v54 = v11;
    v55 = 2114;
    v56 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ took %f seconds for Calling process: %{public}@, on volume: %{public}@, returned: %{public}@", buf, 0x34u);
  }

  v31 = a1;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v42 + 1) + 8 * i);
        v19 = CDGetLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v13 objectForKeyedSubscript:v18];
          *buf = 138543618;
          v48 = v18;
          v49 = 2114;
          v50 = *&v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "\t%{public}@ : %{public}@", buf, 0x16u);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v15);
  }

  v21 = *(*(v31 + 112) + 8);
  if (*(v21 + 24) == 1)
  {
    v22 = CDGetLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v29 = [*(v31 + 56) ID];
      *buf = 138543362;
      v48 = v29;
      _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Purgeable callback firing more than once for service %{public}@", buf, 0xCu);
    }

    v30 = [*(v31 + 56) ID];
    _CacheDeleteAbortWithMessage();
  }

  else
  {
    *(v21 + 24) = 1;
    v23 = *(v31 + 64);
    v24 = *(v31 + 72);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __49__CacheDeletePurgeableOperation__startOperation___block_invoke_33;
    block[3] = &unk_100061CC8;
    objc_copyWeak(&v40, (v31 + 120));
    v33 = *(v31 + 80);
    v25 = v13;
    v26 = *(v31 + 32);
    v34 = v25;
    v35 = v26;
    v27 = *(v31 + 88);
    v28 = *(v31 + 96);
    v36 = *(v31 + 48);
    v37 = v27;
    v41 = *(v31 + 136);
    v38 = v28;
    v39 = *(v31 + 104);
    dispatch_group_async(v23, v24, block);
    dispatch_group_leave(*(v31 + 64));

    objc_destroyWeak(&v40);
  }
}

void __49__CacheDeletePurgeableOperation__startOperation___block_invoke_33(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v2 = +[NSMutableDictionary dictionary];
  [*(v1 + 32) finish];
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v4 longLongValue] & 0x8000000000000000) != 0)
    {
      v5 = CDGetLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v1 + 48);
        *buf = 138543362;
        v54 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ returned an invalid CACHE_DELETE_AMOUNT, using zero", buf, 0xCu);
      }

      v4 = &off_100065638;
    }

    [*(v1 + 32) setReportedPurgeableBytes:{objc_msgSend(v4, "unsignedLongLongValue")}];
    v51[0] = @"CACHE_DELETE_AMOUNT";
    v51[1] = @"CACHE_DELETE_VOLUME";
    v52[0] = v4;
    v7 = [*(v1 + 56) mountPoint];
    v52[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
    [v2 addEntriesFromDictionary:v8];

    v9 = [*(v1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];
    v10 = evaluateStringProperty();

    v11 = [*(v1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
    v12 = evaluateStringProperty();

    if (v10)
    {
      [v2 setObject:v10 forKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];
    }

    if (v12)
    {
      [v2 setObject:v12 forKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
    }

    v13 = [*(v1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];

    if (v13)
    {
      v14 = [*(v1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];
      [v2 setObject:v14 forKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];
    }

    v15 = [*(v1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];

    if (v15)
    {
      v16 = [*(v1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
      [v2 setObject:v16 forKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
    }

    v17 = [*(v1 + 64) analyticsReporter];
    [v17 reportPurgeableTimingInfo:*(v1 + 32)];
  }

  else
  {
    v18 = CDGetLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(v1 + 48);
      *buf = 138543362;
      v54 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ returned null result", buf, 0xCu);
    }

    v49[0] = @"CACHE_DELETE_AMOUNT";
    v49[1] = @"CACHE_DELETE_VOLUME";
    v50[0] = &off_100065638;
    v4 = [*(v1 + 56) mountPoint];
    v50[1] = v4;
    v10 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
    [v2 addEntriesFromDictionary:v10];
  }

  v20 = [NSNumber numberWithInt:*(v1 + 96)];
  [v2 setObject:v20 forKeyedSubscript:@"CACHE_DELETE_URGENCY"];

  v39 = v2;
  [*(v1 + 72) updateRecentInfoForServiceID:*(v1 + 48) volume:*(v1 + 56) info:v2];
  v21 = [*(v1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_PURGEABLE"];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v45;
    v41 = *v45;
    v42 = v21;
    do
    {
      v25 = 0;
      v43 = v23;
      do
      {
        if (*v45 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v44 + 1) + 8 * v25);
        if (([v26 isEqualToString:@"CACHE_DELETE_TOTAL_FSPURGEABLE"] & 1) == 0)
        {
          v27 = objc_opt_new();
          v28 = [*(v1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];
          v29 = evaluateStringProperty();

          v30 = [*(v1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
          v31 = evaluateStringProperty();

          if (v29)
          {
            [v27 setObject:v29 forKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];
          }

          v32 = v1;
          if (v31)
          {
            [v27 setObject:v31 forKeyedSubscript:@"CACHE_DELETE_PROCNAME"];
          }

          v33 = [v21 objectForKeyedSubscript:v26];
          v34 = evaluateNumberProperty();
          if (([v34 longLongValue] & 0x8000000000000000) != 0)
          {
            v35 = &off_100065638;
          }

          else
          {
            v35 = [v21 objectForKeyedSubscript:v26];
          }

          v1 = v32;
          v36 = [NSNumber numberWithInt:*(v32 + 96)];
          [v27 setObject:v36 forKeyedSubscript:@"CACHE_DELETE_URGENCY"];

          [v27 setObject:v35 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
          v37 = [*(v32 + 56) mountPoint];
          [v27 setObject:v37 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

          [*(v32 + 72) updateRecentInfoForServiceID:v26 volume:*(v32 + 56) info:v27];
          v21 = v42;
          v23 = v43;
          v24 = v41;
        }

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v23);
  }

  if (([*(v1 + 80) timedOut] & 1) == 0)
  {
    v38 = [WeakRetained purgeableResult];
    [v38 addResult:*(v1 + 32)];

    [WeakRetained removeInFlight:*(v1 + 48)];
  }
}

void __49__CacheDeletePurgeableOperation__startOperation___block_invoke_74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 serviceName];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(a1 + 32);
    v9 = [v3 serviceName];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  v17[0] = @"Urgency";
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 urgency]);
  v18[0] = v10;
  v17[1] = @"Reported";
  v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 reportedPurgeableBytes]);
  v18[1] = v11;
  v17[2] = @"Duration";
  [v3 duration];
  v12 = [NSNumber numberWithDouble:?];
  v18[2] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

  v14 = *(a1 + 32);
  v15 = [v3 serviceName];
  v16 = [v14 objectForKeyedSubscript:v15];
  [v16 addObject:v13];
}

@end