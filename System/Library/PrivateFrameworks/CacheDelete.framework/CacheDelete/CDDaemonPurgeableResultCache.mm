@interface CDDaemonPurgeableResultCache
+ (id)defaultPath;
+ (id)pathForVersion:(unint64_t)a3;
+ (id)sharedPurgeableResultsCache;
- (CDDaemonPurgeableResultCache)initWithPath:(id)a3;
- (id)copyInvalidServicesForVolume:(id)a3 atUrgency:(id)a4;
- (id)copyPushingServices;
- (id)emitRecentInfo:(id)a3;
- (void)addInvalidVolume:(id)a3;
- (void)deductPurgeableAmount:(id)a3 serviceID:(id)a4 volume:(id)a5 urgency:(int)a6;
- (void)forgetPushingService:(id)a3;
- (void)invalidateRecentResultsForVolume:(id)a3;
- (void)keepUpToDate:(id)a3;
- (void)prunePreserving:(id)a3;
- (void)removeServiceInfo:(id)a3;
- (void)save:(id)a3;
- (void)setUpdateBlock:(id)a3;
- (void)setUpdateNotificationBlock:(id)a3;
- (void)updateInvalidVolumes;
- (void)updateRecentInfoForServiceID:(id)a3 volume:(id)a4 info:(id)a5;
- (void)updateRecentStateforVolume:(id)a3;
@end

@implementation CDDaemonPurgeableResultCache

void __52__CDDaemonPurgeableResultCache_updateInvalidVolumes__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) recentPurgeableResults];
  [v1 updateInvalidVolumes];
}

- (void)updateInvalidVolumes
{
  v3 = [(CDDaemonPurgeableResultCache *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__CDDaemonPurgeableResultCache_updateInvalidVolumes__block_invoke;
  block[3] = &unk_100060D58;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)copyPushingServices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v3 = [(CDDaemonPurgeableResultCache *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __51__CDDaemonPurgeableResultCache_copyPushingServices__block_invoke;
  v6[3] = &unk_100060DD0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__CDDaemonPurgeableResultCache_copyPushingServices__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) recentPurgeableResults];
  v2 = [v5 copyPushingServices];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)pathForVersion:(unint64_t)a3
{
  if (a3 >= 2)
  {
    v3 = [NSString stringWithFormat:@"_v%lu", a3];
  }

  else
  {
    v3 = &stru_100064760;
  }

  v4 = [NSString localizedStringWithFormat:@"%@%@", @"CacheDeleteDaemonRecentInfo", v3];

  return v4;
}

+ (id)defaultPath
{
  v3 = cdCachesPath();
  v4 = [a1 pathForVersion:2];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)sharedPurgeableResultsCache
{
  if (qword_10006E298 != -1)
  {
    dispatch_once(&qword_10006E298, &__block_literal_global_3);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __59__CDDaemonPurgeableResultCache_sharedPurgeableResultsCache__block_invoke(id a1)
{
  v1 = [CDDaemonPurgeableResultCache alloc];
  v4 = +[CDDaemonPurgeableResultCache defaultPath];
  v2 = [(CDDaemonPurgeableResultCache *)v1 initWithPath:v4];
  v3 = _MergedGlobals_1;
  _MergedGlobals_1 = v2;
}

- (CDDaemonPurgeableResultCache)initWithPath:(id)a3
{
  v4 = a3;
  v56.receiver = self;
  v56.super_class = CDDaemonPurgeableResultCache;
  v5 = [(CDDaemonPurgeableResultCache *)&v56 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_31;
  }

  [(CDDaemonPurgeableResultCache *)v5 setPath:v4];
  v7 = [(CDDaemonPurgeableResultCache *)v6 path];

  if (!v7)
  {
    v9 = 0;
    v53 = 0;
    goto LABEL_21;
  }

  v8 = [(CDDaemonPurgeableResultCache *)v6 path];
  v55 = 0;
  v53 = [NSData dataWithContentsOfFile:v8 options:1 error:&v55];
  v9 = v55;

  if (!v53 || v9)
  {
LABEL_21:
    v29 = [(__CFString *)v9 domain];
    v30 = v29;
    if (v29 == NSPOSIXErrorDomain)
    {
      v31 = [(__CFString *)v9 code]== 2;

      if (v31)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v32 = CDGetLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v43 = [(__CFString *)v9 description];
      *buf = 138412546;
      v58 = v4;
      v59 = 2112;
      v60 = v43;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unable to make data from %@ : %@", buf, 0x16u);
    }

    goto LABEL_27;
  }

  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [NSSet setWithObjects:v10, v11, v12, v13, v14, v15, objc_opt_class(), 0];
  objc_opt_class();
  v54 = 0;
  v17 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v16 fromData:v53 error:&v54];
  v9 = v54;
  [(CDDaemonPurgeableResultCache *)v6 setRecentPurgeableResults:v17];

  v18 = [(CDDaemonPurgeableResultCache *)v6 recentPurgeableResults];
  if (v18)
  {
    v19 = v9 == 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = !v19;

  if (v20)
  {
    v21 = CDGetLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v44 = @"No error information available";
      if (v9)
      {
        v44 = v9;
      }

      *buf = 138412290;
      v58 = v44;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NSKeyedUnarchiver unarchivedObjectOfClass failed to unarchive recent purgeable results: %@", buf, 0xCu);
    }
  }

  v22 = [(CDDaemonPurgeableResultCache *)v6 recentPurgeableResults];

  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = [(CDDaemonPurgeableResultCache *)v6 recentPurgeableResults];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v28 = CDGetLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v45 = [(CDDaemonPurgeableResultCache *)v6 recentPurgeableResults];
      v46 = objc_opt_class();
      *buf = 138412290;
      v58 = v46;
      v47 = v46;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "result is not of class (or subclass) CacheDeleteRecentInfo: %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  v25 = [(CDDaemonPurgeableResultCache *)v6 recentPurgeableResults];
  v26 = [v25 version];
  v27 = [v26 isEqualToNumber:&off_1000655F0];

  if ((v27 & 1) == 0)
  {
    v28 = CDGetLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v48 = [(CDDaemonPurgeableResultCache *)v6 recentPurgeableResults];
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = [(CDDaemonPurgeableResultCache *)v6 recentPurgeableResults];
      v52 = [v51 version];
      *buf = 138412802;
      v58 = v50;
      v59 = 2112;
      v60 = v52;
      v61 = 1024;
      v62 = 2;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "unarchived version of %@ (%@) is incompatible with current version (%d)", buf, 0x1Cu);
    }

LABEL_19:

    [(CDDaemonPurgeableResultCache *)v6 setRecentPurgeableResults:0];
LABEL_27:
    v33 = v4;
    unlink([(__CFString *)v4 fileSystemRepresentation]);
  }

LABEL_28:
  v34 = [(CDDaemonPurgeableResultCache *)v6 recentPurgeableResults];
  v35 = v34 == 0;

  if (v35)
  {
    v36 = [CDDaemonRecentInfo recentInfoForVolumes:&__NSDictionary0__struct];
    [(CDDaemonPurgeableResultCache *)v6 setRecentPurgeableResults:v36];
  }

  v37 = objc_opt_class();
  v38 = NSStringFromClass(v37);
  v39 = v38;
  v40 = dispatch_queue_create([v38 UTF8String], 0);
  [(CDDaemonPurgeableResultCache *)v6 setQueue:v40];

  v41 = v6;
LABEL_31:

  return v6;
}

- (void)save:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(CDDaemonPurgeableResultCache *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37__CDDaemonPurgeableResultCache_save___block_invoke;
  block[3] = &unk_100061230;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

void __37__CDDaemonPurgeableResultCache_save___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) recentPurgeableResults];
  v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:0];

  if (v3)
  {
    v4 = [*(a1 + 40) path];

    if (v4)
    {
      v5 = [*(a1 + 40) path];
      v11 = 0;
      v6 = [v3 writeToFile:v5 options:0 error:&v11];
      v4 = v11;

      if ((v6 & 1) == 0)
      {
        v7 = CDGetLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v10 = [*(a1 + 40) path];
          *buf = 138412546;
          v13 = v10;
          v14 = 2112;
          v15 = v4;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "unable to write results to cache file: %@: %@", buf, 0x16u);
        }
      }

      v8 = *(a1 + 48);
      if (v8)
      {
        (*(v8 + 16))();
      }
    }
  }

  else
  {
    v4 = CDGetLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) recentPurgeableResults];
      *buf = 138412290;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create data from: %@", buf, 0xCu);
    }
  }
}

- (id)emitRecentInfo:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v5 = CDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "emitRecentInfo ENTRY, info: %@", buf, 0xCu);
  }

  [(CDDaemonPurgeableResultCache *)self keepUpToDate:v4];
  v6 = [(CDDaemonPurgeableResultCache *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __47__CDDaemonPurgeableResultCache_emitRecentInfo___block_invoke;
  v11[3] = &unk_100060DD0;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(v6, v11);

  v7 = CDGetLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v13[5];
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "emitRecentInfo EXIT, result: %@", buf, 0xCu);
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __47__CDDaemonPurgeableResultCache_emitRecentInfo___block_invoke(uint64_t a1)
{
  v2 = [CDRecentInfo alloc];
  v6 = [*(a1 + 32) recentPurgeableResults];
  v3 = [v2 initWithRecentInfo:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)addInvalidVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonPurgeableResultCache *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __49__CDDaemonPurgeableResultCache_addInvalidVolume___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __49__CDDaemonPurgeableResultCache_addInvalidVolume___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentPurgeableResults];
  [v2 addInvalidVolume:*(a1 + 40)];
}

- (void)updateRecentInfoForServiceID:(id)a3 volume:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CDDaemonPurgeableResultCache *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __73__CDDaemonPurgeableResultCache_updateRecentInfoForServiceID_volume_info___block_invoke;
  v15[3] = &unk_1000617E8;
  v16 = v10;
  v17 = v9;
  v18 = self;
  v19 = v8;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __73__CDDaemonPurgeableResultCache_updateRecentInfoForServiceID_volume_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_PUSHED"];
  v4 = evaluateBoolProperty();

  v5 = evaluatePurgeableUrgency();
  v6 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v7 = [v2 objectForKeyedSubscript:@"CACHE_DELETE_TIMESTAMP"];
  if (!*(a1 + 40))
  {
    obj = CDGetLogHandle();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v90 = v2;
      _os_log_error_impl(&_mh_execute_header, obj, OS_LOG_TYPE_ERROR, "parameter error (volume). mInfo: %@", buf, 0xCu);
    }

    v10 = 0;
    goto LABEL_68;
  }

  v8 = &DiagnosticLogSubmissionEnabled_ptr;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 doubleValue];
  }

  else
  {
    +[NSDate timeIntervalSinceReferenceDate];
  }

  v11 = v9;
  v77 = v7;
  v76 = v4;
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v103 = &off_100065608;
      v104 = v6;
      v12 = &v104;
      v13 = &v103;
LABEL_14:
      v14 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:1];
      goto LABEL_26;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v101 = v5;
      v102 = v6;
      v12 = &v102;
      v13 = &v101;
      goto LABEL_14;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [*(a1 + 48) recentPurgeableResults];
    v27 = *(a1 + 56);
    v28 = [*(a1 + 40) mountPoint];
    [v26 removeServiceInfo:v27 forVolume:v28];

    v25 = 0;
    goto LABEL_28;
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v6;
  v15 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  v17 = *v86;
  while (2)
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v86 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v85 + 1) + 8 * i);
      v20 = v8[251];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v59 = CDGetLogHandle();
        if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
LABEL_58:

          v10 = 0;
          goto LABEL_59;
        }

        *buf = 138412290;
        v90 = obj;
        v60 = "bad key in amounts dictionary: %@";
LABEL_70:
        _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, v60, buf, 0xCu);
        goto LABEL_58;
      }

      v21 = [obj objectForKeyedSubscript:v19];
      v22 = v8;
      v23 = v8[251];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v59 = CDGetLogHandle();
        if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        *buf = 138412290;
        v90 = obj;
        v60 = "bad value in amounts dictionary: %@";
        goto LABEL_70;
      }

      v8 = v22;
    }

    v16 = [obj countByEnumeratingWithState:&v85 objects:v100 count:16];
    v4 = v76;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v14 = obj;
LABEL_26:
  v25 = v14;
LABEL_28:
  obj = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
  if (!obj)
  {
    v29 = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];
    obj = evaluateNumberProperty();
  }

  v74 = v5;
  v30 = CDGetLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v70 = *(a1 + 56);
    v71 = *(a1 + 40);
    *buf = 138412802;
    v90 = v70;
    v91 = 2112;
    v92 = v71;
    v93 = 2112;
    v94 = v25;
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Updating cache for service: %@, volume: %@, amounts: %@", buf, 0x20u);
  }

  v73 = v6;
  v75 = v2;

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v10 = v25;
  v31 = [v10 countByEnumeratingWithState:&v81 objects:v99 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = "FALSE";
    if (v4)
    {
      v34 = "TRUE";
    }

    v78 = v34;
    v79 = *v82;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v82 != v79)
        {
          objc_enumerationMutation(v10);
        }

        v36 = *(*(&v81 + 1) + 8 * j);
        v37 = v10;
        v38 = [v10 objectForKeyedSubscript:v36];
        v39 = CDGetLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = *(a1 + 56);
          v41 = [*(a1 + 32) objectForKeyedSubscript:@"CACHE_DELETE_SIGNING_ID"];
          *buf = 138413314;
          v90 = v38;
          v91 = 2112;
          v92 = v40;
          v93 = 2112;
          v94 = v41;
          v95 = 2112;
          v96 = v36;
          v97 = 2080;
          v98 = v78;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Updating service info amount: %@, serviceID: %@ (%@), urgency: %@, pushed: %s", buf, 0x34u);
        }

        v42 = [*(a1 + 48) recentPurgeableResults];
        v43 = *(a1 + 56);
        v44 = [*(a1 + 40) mountPoint];
        v45 = [v42 updateServiceInfoAmount:v38 forService:v43 onVolume:v44 atUrgency:objc_msgSend(v36 withTimestamp:"intValue") nonPurgeableAmount:obj deductFromCurrentAmount:0 info:{v11, *(a1 + 32)}];

        v33 |= v45;
        v10 = v37;
      }

      v32 = [v37 countByEnumeratingWithState:&v81 objects:v99 count:16];
    }

    while (v32);
  }

  else
  {
    v33 = 0;
  }

  if (v76)
  {
    v46 = [*(a1 + 48) recentPurgeableResults];
    v47 = [v46 pushingServices];
    [v47 addObject:*(a1 + 56)];
  }

  v5 = v74;
  v2 = v75;
  v6 = v73;
  if ((v33 & 1) != 0 && ([*(a1 + 48) updatedNotificationBlock], v48 = objc_claimAutoreleasedReturnValue(), v48, v48))
  {
    v72 = v10;
    if (qword_10006E2A8 != -1)
    {
      dispatch_once(&qword_10006E2A8, &__block_literal_global_62);
    }

    v49 = qword_10006E2A0;
    v50 = [*(a1 + 40) mountPoint];
    v51 = [v49 objectForKeyedSubscript:v50];
    v52 = evaluateNumberProperty();

    if (v52)
    {
      v53 = [*(a1 + 40) thresholds];
      v54 = [v53 objectForKeyedSubscript:@"VERY_LOW_DISK_THRESHOLD"];
      v55 = evaluateNumberProperty();

      v56 = [v52 unsignedLongLongValue];
      if (v56 <= [*(a1 + 40) freespace])
      {
        v57 = [*(a1 + 40) freespace];
        v58 = [v52 unsignedLongLongValue];
      }

      else
      {
        v57 = [v52 unsignedLongLongValue];
        v58 = [*(a1 + 40) freespace];
      }

      v64 = v57 - v58;
      if (v55 && [v55 unsignedLongLongValue] >> 22 <= 0x18)
      {
        v65 = [v55 unsignedLongLongValue];
      }

      else
      {
        v65 = 104857600;
      }

      if (v64 > v65)
      {
        v66 = [*(a1 + 48) updatedNotificationBlock];
        v66[2](v66, 1);

        v67 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) freespace]);
        v68 = qword_10006E2A0;
        v69 = [*(a1 + 40) mountPoint];
        [v68 setObject:v67 forKeyedSubscript:v69];
      }
    }

    else
    {
      v61 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 40) freespace]);
      v62 = qword_10006E2A0;
      v63 = [*(a1 + 40) mountPoint];
      [v62 setObject:v61 forKeyedSubscript:v63];

      v55 = [*(a1 + 48) updatedNotificationBlock];
      v55[2](v55, 1);
    }

    v7 = v77;
    v10 = v72;
  }

  else
  {
LABEL_59:
    v7 = v77;
  }

LABEL_68:
}

void __73__CDDaemonPurgeableResultCache_updateRecentInfoForServiceID_volume_info___block_invoke_60(id a1)
{
  qword_10006E2A0 = objc_opt_new();

  _objc_release_x1();
}

- (void)deductPurgeableAmount:(id)a3 serviceID:(id)a4 volume:(id)a5 urgency:(int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CDDaemonPurgeableResultCache *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __79__CDDaemonPurgeableResultCache_deductPurgeableAmount_serviceID_volume_urgency___block_invoke;
  block[3] = &unk_100061810;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __79__CDDaemonPurgeableResultCache_deductPurgeableAmount_serviceID_volume_urgency___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) recentPurgeableResults];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) mountPoint];
  v5 = *(a1 + 64);
  +[NSDate timeIntervalSinceReferenceDate];
  [v6 updateServiceInfoAmount:v2 forService:v3 onVolume:v4 atUrgency:v5 withTimestamp:0 nonPurgeableAmount:1 deductFromCurrentAmount:0 info:?];
}

- (void)removeServiceInfo:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonPurgeableResultCache *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__CDDaemonPurgeableResultCache_removeServiceInfo___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__CDDaemonPurgeableResultCache_removeServiceInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentPurgeableResults];
  [v2 removeServiceInfo:*(a1 + 40)];

  v3 = [*(a1 + 32) updatedNotificationBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedNotificationBlock];
    v4[2](v4, 0);
  }
}

- (void)updateRecentStateforVolume:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 state];
    v7 = [(CDDaemonPurgeableResultCache *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __59__CDDaemonPurgeableResultCache_updateRecentStateforVolume___block_invoke;
    block[3] = &unk_100061050;
    v9 = v5;
    v10 = self;
    v11 = v6;
    dispatch_sync(v7, block);
  }
}

void __59__CDDaemonPurgeableResultCache_updateRecentStateforVolume___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) mountPoint];
  v3 = [*(a1 + 32) validate] == 0;
  v2 = v8;
  v3 = v3 || v8 == 0;
  if (!v3)
  {
    v4 = [*(a1 + 40) recentPurgeableResults];
    v5 = [v4 updateRecentState:*(a1 + 48) forVolume:v8];

    v2 = v8;
    if (v5)
    {
      v6 = [*(a1 + 40) updatedNotificationBlock];

      v2 = v8;
      if (v6)
      {
        v7 = [*(a1 + 40) updatedNotificationBlock];
        v7[2](v7, 0);

        v2 = v8;
      }
    }
  }
}

- (void)prunePreserving:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonPurgeableResultCache *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __48__CDDaemonPurgeableResultCache_prunePreserving___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__CDDaemonPurgeableResultCache_prunePreserving___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recentPurgeableResults];
  [v2 prunePreserving:*(a1 + 40)];

  v3 = [*(a1 + 32) updatedNotificationBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) updatedNotificationBlock];
    v4[2](v4, 0);
  }
}

- (void)forgetPushingService:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonPurgeableResultCache *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __53__CDDaemonPurgeableResultCache_forgetPushingService___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__CDDaemonPurgeableResultCache_forgetPushingService___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) recentPurgeableResults];
  v2 = [v3 pushingServices];
  [v2 removeObject:*(a1 + 40)];
}

- (void)invalidateRecentResultsForVolume:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonPurgeableResultCache *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __65__CDDaemonPurgeableResultCache_invalidateRecentResultsForVolume___block_invoke;
  v7[3] = &unk_100060B40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__CDDaemonPurgeableResultCache_invalidateRecentResultsForVolume___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) recentPurgeableResults];
  v2 = [*(a1 + 40) mountPoint];
  [v3 invalidateForVolume:v2];
}

- (id)copyInvalidServicesForVolume:(id)a3 atUrgency:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v8 = [(CDDaemonPurgeableResultCache *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __71__CDDaemonPurgeableResultCache_copyInvalidServicesForVolume_atUrgency___block_invoke;
  v13[3] = &unk_100061838;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __71__CDDaemonPurgeableResultCache_copyInvalidServicesForVolume_atUrgency___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) recentPurgeableResults];
  v2 = [*(a1 + 40) mountPoint];
  v3 = [v6 copyInvalidsForVolume:v2 atUrgency:{objc_msgSend(*(a1 + 48), "intValue")}];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setUpdateNotificationBlock:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonPurgeableResultCache *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __59__CDDaemonPurgeableResultCache_setUpdateNotificationBlock___block_invoke;
  v7[3] = &unk_1000612A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setUpdateBlock:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonPurgeableResultCache *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __47__CDDaemonPurgeableResultCache_setUpdateBlock___block_invoke;
  v7[3] = &unk_1000612A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)keepUpToDate:(id)a3
{
  v4 = a3;
  v5 = [(CDDaemonPurgeableResultCache *)self updatedBlock];

  if (v5)
  {
    v6 = [(CDDaemonPurgeableResultCache *)self updatedBlock];
    (*(v6 + 16))(v6, v4);
  }

  else
  {
    v6 = CDGetLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "keepUpToDate: no updateBlock.", v7, 2u);
    }
  }
}

@end