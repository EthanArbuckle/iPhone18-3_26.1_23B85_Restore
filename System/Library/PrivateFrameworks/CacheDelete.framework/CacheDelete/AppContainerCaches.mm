@interface AppContainerCaches
+ (id)appContainerCachesWithInfo:(id)info;
+ (id)deleteAppCaches:(id)caches telemetry:(id)telemetry;
- (AppContainerCaches)initWithCoder:(id)coder;
- (AppContainerCaches)initWithInfo:(id)info;
- (id)appCache:(id)cache forPath:(id)path;
- (id)cachesForInstalledApps:(BOOL)apps bytesNeeded:(unint64_t)needed volume:(id)volume sortForUrgency:(int)urgency telemetry:(id)telemetry;
- (id)cdVolumeForPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initReadOnlyCopy;
- (void)_serviceCallback:(id)callback replyBlock:(id)block;
- (void)_serviceCancelPurge:(id)purge;
- (void)_serviceNotify:(id)notify replyBlock:(id)block;
- (void)_servicePeriodic:(int)periodic info:(id)info replyBlock:(id)block;
- (void)_servicePurge:(int)purge info:(id)info replyBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AppContainerCaches

+ (id)deleteAppCaches:(id)caches telemetry:(id)telemetry
{
  cachesCopy = caches;
  telemetryCopy = telemetry;
  v60 = objc_opt_new();
  v62 = objc_opt_new();
  v63 = objc_opt_new();
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = cachesCopy;
  v6 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = &DiagnosticLogSubmissionEnabled_ptr;
    v9 = *v84;
    v55 = *v84;
    do
    {
      v10 = 0;
      v56 = v7;
      do
      {
        if (*v84 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v83 + 1) + 8 * v10);
        v12 = v8[302];
        v82 = 0;
        v61 = v11;
        v13 = [v12 bundleRecordWithBundleIdentifier:? allowPlaceholder:? error:?];
        v14 = v82;
        v15 = CDGetLogHandle();
        v16 = v15;
        if (v13)
        {
          v17 = v14 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = objc_opt_class();
            *buf = 138412802;
            v91 = v61;
            v92 = 2112;
            v93 = v18;
            v94 = 2112;
            v95 = v13;
            v19 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "LSBundleRecord for %@ : (class: %@) %@", buf, 0x20u);
          }

          objc_opt_class();
          v58 = v14;
          v59 = v10;
          if (objc_opt_isKindOfClass())
          {
            isPlaceholder = [v13 isPlaceholder];
          }

          else
          {
            isPlaceholder = 0;
          }

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          bundleIdentifier = [v13 bundleIdentifier];
          [v13 platform];
          v22 = dataContainerURLs();

          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v16 = v22;
          v69 = [v16 countByEnumeratingWithState:&v78 objects:v89 count:16];
          if (v69)
          {
            v65 = *v79;
            v66 = v13;
            v64 = isKindOfClass & 1;
            do
            {
              for (i = 0; i != v69; i = i + 1)
              {
                if (*v79 != v65)
                {
                  objc_enumerationMutation(v16);
                }

                v24 = *(*(&v78 + 1) + 8 * i);
                if ([v24 isEqualToString:@"NO_PERSONA_AVAILABLE"])
                {
                  v25 = 0;
                }

                else
                {
                  v25 = v24;
                }

                bundleIdentifier2 = [v13 bundleIdentifier];
                v27 = [NSSet setWithObject:bundleIdentifier2];
                bundleIdentifier3 = [v13 bundleIdentifier];
                groupContainerIdentifiers = [v13 groupContainerIdentifiers];
                v30 = v16;
                v31 = [v16 objectForKeyedSubscript:v24];
                BYTE2(v54) = v64;
                BYTE1(v54) = isPlaceholder;
                LOBYTE(v54) = 0;
                v32 = [AppCache appCacheWithRecords:"appCacheWithRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:v27 groupIdentifiers:bundleIdentifier3 dataContainerURL:groupContainerIdentifiers userManagedAssetsURL:v31 personaUniqueString:0 isDataseparated:v25 isPlaceholder:v54 isPlugin:telemetryCopy telemetry:?];

                if (v32)
                {
                  [v62 addObject:v32];
                  cdVol = [v32 cdVol];
                  [v63 addObject:cdVol];

                  v34 = CDGetLogHandle();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                  {
                    [v32 caches:1 purge:0];
                    v35 = humanReadableNumber();
                    *buf = 138412802;
                    v91 = v61;
                    v92 = 2112;
                    v93 = v35;
                    v94 = 2112;
                    v95 = v32;
                    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "AppCache for %@ : (%@) %@", buf, 0x20u);
                  }
                }

                else
                {
                  v34 = CDGetLogHandle();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v91 = v61;
                    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to create AppCache for %@", buf, 0xCu);
                  }
                }

                v16 = v30;

                v13 = v66;
              }

              v69 = [v16 countByEnumeratingWithState:&v78 objects:v89 count:16];
            }

            while (v69);
          }

          v8 = &DiagnosticLogSubmissionEnabled_ptr;
          v9 = v55;
          v7 = v56;
          v14 = v58;
          v10 = v59;
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v91 = v61;
          v92 = 2112;
          v93 = v14;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to create an LSBundleRecord for %@ : %@", buf, 0x16u);
        }

        v10 = v10 + 1;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v7);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v36 = v62;
  v37 = [v36 countByEnumeratingWithState:&v74 objects:v88 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = 0;
    v40 = *v75;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v75 != v40)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v74 + 1) + 8 * j);
        v43 = [v42 clearCaches:1];
        v39 += v43;
        v44 = [NSNumber numberWithUnsignedLongLong:v43];
        identifier = [v42 identifier];
        [v60 setObject:v44 forKeyedSubscript:identifier];
      }

      v38 = [v36 countByEnumeratingWithState:&v74 objects:v88 count:16];
    }

    while (v38);
  }

  else
  {
    v39 = 0;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v46 = v63;
  v47 = [v46 countByEnumeratingWithState:&v70 objects:v87 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v71;
    do
    {
      for (k = 0; k != v48; k = k + 1)
      {
        if (*v71 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v70 + 1) + 8 * k);
        clearDiscardedCaches();
      }

      v48 = [v46 countByEnumeratingWithState:&v70 objects:v87 count:16];
    }

    while (v48);
  }

  v52 = [NSNumber numberWithUnsignedLongLong:v39];
  [v60 setObject:v52 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  return v60;
}

- (AppContainerCaches)initWithInfo:(id)info
{
  infoCopy = info;
  v35.receiver = self;
  v35.super_class = AppContainerCaches;
  v6 = [(CDService *)&v35 initWithInfo:infoCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_info, info);
    v8 = [infoCopy objectForKeyedSubscript:@"CONTAINER_CACHES_BY_VOLUME"];
    v30 = v8;
    if (v8)
    {
      v9 = [v8 mutableCopy];
    }

    else
    {
      v9 = objc_opt_new();
    }

    cachesByVolume = v7->_cachesByVolume;
    v7->_cachesByVolume = v9;

    v11 = objc_opt_new();
    opState = v7->_opState;
    v7->_opState = v11;

    v13 = objc_opt_new();
    cdVolumes = v7->_cdVolumes;
    v7->_cdVolumes = v13;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = getLocalVolumes();
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          v21 = [CacheDeleteVolume volumeWithMountpoint:v20, v30];
          if (v21)
          {
            [(NSMutableDictionary *)v7->_cdVolumes setObject:v21 forKeyedSubscript:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v17);
    }

    v22 = dispatch_queue_create("com.apple.cache_delete.app_caches.collection", 0);
    collection_queue = v7->_collection_queue;
    v7->_collection_queue = v22;

    v24 = dispatch_queue_create("com.apple.cache_delete.app_caches.purge", 0);
    purge_queue = v7->_purge_queue;
    v7->_purge_queue = v24;

    v7->_multi_user = 0;
    v26 = MKBUserTypeDeviceMode();
    if (!v26)
    {
      v27 = CDGetLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = 0;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "MKBUserTypeDeviceMode error: %@", buf, 0xCu);
      }
    }

    Value = CFDictionaryGetValue(v26, kMKBDeviceModeKey);
    if (Value && CFEqual(kMKBDeviceModeSharedIPad, Value))
    {
      v7->_multi_user = 1;
    }

    if (v26)
    {
      CFRelease(v26);
    }
  }

  return v7;
}

+ (id)appContainerCachesWithInfo:(id)info
{
  infoCopy = info;
  v4 = [[AppContainerCaches alloc] initWithInfo:infoCopy];

  return v4;
}

- (AppContainerCaches)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"CONTAINER_CACHES_BY_VOLUME"];
  v5 = v4;
  if (v4)
  {
    v11[0] = @"CONTAINER_CACHES_BY_VOLUME";
    v11[1] = @"CACHE_DELETE_ID";
    v12[0] = v4;
    v12[1] = @"com.apple.mobile.cache_delete_app_container_caches";
    v11[2] = @"CACHE_DELETE_SERVICES";
    v12[2] = &off_100065D38;
    v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    v7 = [(AppContainerCaches *)self initWithInfo:v6];
  }

  else
  {
    v8 = CDGetLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to decode cachesByVolume", v10, 2u);
    }

    v7 = [(AppContainerCaches *)self initWithInfo:&off_100065B58];
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  cachesByVolume = [(AppContainerCaches *)self cachesByVolume];
  [coderCopy encodeObject:cachesByVolume forKey:@"CONTAINER_CACHES_BY_VOLUME"];
}

- (id)cachesForInstalledApps:(BOOL)apps bytesNeeded:(unint64_t)needed volume:(id)volume sortForUrgency:(int)urgency telemetry:(id)telemetry
{
  volumeCopy = volume;
  telemetryCopy = telemetry;
  v12 = objc_opt_new();
  v13 = recentlyUsedAppsDictionary();
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = __89__AppContainerCaches_cachesForInstalledApps_bytesNeeded_volume_sortForUrgency_telemetry___block_invoke;
  v59[3] = &unk_1000620E8;
  if (needed)
  {
    v17 = 1;
  }

  else
  {
    v17 = urgency == 4;
  }

  v18 = v17;
  appsCopy = apps;
  urgencyCopy = urgency;
  v46 = v13;
  v60 = v46;
  v19 = v16;
  v61 = v19;
  v20 = v14;
  v62 = v20;
  v21 = v15;
  v63 = v21;
  v22 = v12;
  v64 = v22;
  [AppCache enumerateAppCachesOnVolume:volumeCopy options:v18 telemetry:telemetryCopy block:v59];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = __89__AppContainerCaches_cachesForInstalledApps_bytesNeeded_volume_sortForUrgency_telemetry___block_invoke_2;
  v53[3] = &unk_100062110;
  v43 = v21;
  v54 = v43;
  v42 = v20;
  v55 = v42;
  urgencyCopy2 = urgency;
  v44 = telemetryCopy;
  v56 = v44;
  v23 = v22;
  v57 = v23;
  v45 = v19;
  [AppCache enumerateGroupCachesOnVolume:v19 block:v53];
  if ((urgency - 5) > 0xFFFFFFFB)
  {
    v24 = [v23 sortedArrayUsingComparator:&__block_literal_global_10];
  }

  else
  {
    v24 = [v23 copy];
  }

  v25 = v24;
  v41 = v23;
  v26 = CDGetLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "cachesForInstalledApps result:", buf, 2u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = v25;
  v28 = [v27 countByEnumeratingWithState:&v49 objects:v75 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v50;
    v48 = v27;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v49 + 1) + 8 * i);
        v33 = CDGetLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [v32 identifier];
          if (identifier)
          {
            [v32 identifier];
          }

          else
          {
            [v32 bundleIdentifiers];
          }
          v35 = ;
          lastUsed = [v32 lastUsed];
          lastKnownCacheSize = [v32 lastKnownCacheSize];
          [lastKnownCacheSize unsignedLongLongValue];
          v38 = humanReadableNumber();
          urgency = [v32 urgency];
          *buf = 138413058;
          v68 = v35;
          v69 = 2112;
          v70 = lastUsed;
          v71 = 2112;
          v72 = v38;
          v73 = 1024;
          v74 = urgency;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ : %@ : %@, urgency: %d", buf, 0x26u);

          v27 = v48;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v49 objects:v75 count:16];
    }

    while (v29);
  }

  return v27;
}

uint64_t __89__AppContainerCaches_cachesForInstalledApps_bytesNeeded_volume_sortForUrgency_telemetry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v4 = [v3 caches:*(a1 + 76) purge:0];
  v5 = &v4[[v3 tmp:*(a1 + 76) purge:0 all:*(a1 + 72) == 4]];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [v3 bundleIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
  v34 = v5;
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    obj = *v48;
    v37 = v6;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v5)
        {
          v11 = *(*(&v47 + 1) + 8 * i);
          if ([v11 containsString:@"com.apple.Safari.WebApp"])
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v12 = *(a1 + 32);
            v13 = [v12 countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v44;
              do
              {
                for (j = 0; j != v14; j = j + 1)
                {
                  if (*v44 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v43 + 1) + 8 * j);
                  if ([v17 containsString:@"com.apple.Safari.WebApp"])
                  {
                    v18 = [*(a1 + 32) objectForKeyedSubscript:v17];
                    [v3 setLastUsedTime:v18];
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v43 objects:v52 count:16];
              }

              while (v14);
              v5 = v34;
              v9 = obj;
              v6 = v37;
            }
          }

          else
          {
            v19 = [*(a1 + 32) objectForKeyedSubscript:v11];

            if (!v19)
            {
              continue;
            }

            v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
            [v3 setLastUsedTime:v12];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obja = [v3 groupContainerIdentifiers];
  v20 = [obja countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v20)
  {
    v21 = v20;
    v38 = *v40;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v40 != v38)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v39 + 1) + 8 * k);
        [*(a1 + 40) addObject:v23];
        v24 = [*(a1 + 48) objectForKeyedSubscript:v23];
        if (!v24)
        {
          v24 = objc_opt_new();
          [*(a1 + 48) setObject:v24 forKeyedSubscript:v23];
        }

        v25 = [v3 identifier];
        [v24 addObject:v25];

        v26 = [*(a1 + 56) objectForKeyedSubscript:v23];
        if (!v26 || (v27 = v26, v28 = [v3 urgency], objc_msgSend(*(a1 + 56), "objectForKeyedSubscript:", v23), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "intValue"), v29, v27, v28 > v30))
        {
          v31 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 urgency]);
          [*(a1 + 56) setObject:v31 forKeyedSubscript:v23];
        }
      }

      v21 = [obja countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v21);
  }

  if (v34 && [v3 urgency] <= *(a1 + 72))
  {
    [*(a1 + 64) addObject:v3];
  }

  objc_autoreleasePoolPop(context);

  return 1;
}

uint64_t __89__AppContainerCaches_cachesForInstalledApps_bytesNeeded_volume_sortForUrgency_telemetry___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v9 = [v8 intValue];
  }

  else
  {
    v9 = 1;
  }

  v10 = [*(a1 + 40) objectForKeyedSubscript:v5];
  if (v10 && v9 <= *(a1 + 64))
  {
    BYTE2(v13) = 0;
    LOWORD(v13) = 0;
    v11 = [AppCache appCacheWithRecords:"appCacheWithRecords:identifier:groupIdentifiers:dataContainerURL:userManagedAssetsURL:personaUniqueString:isDataseparated:isPlaceholder:isPlugin:telemetry:" identifier:v10 groupIdentifiers:v5 dataContainerURL:0 userManagedAssetsURL:v6 personaUniqueString:0 isDataseparated:0 isPlaceholder:v13 isPlugin:*(a1 + 48) telemetry:?];
    if (v11)
    {
      [*(a1 + 56) addObject:v11];
    }
  }

  return 1;
}

int64_t __89__AppContainerCaches_cachesForInstalledApps_bytesNeeded_volume_sortForUrgency_telemetry___block_invoke_3(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  if ([v6 isPlaceholder] && !objc_msgSend(v7, "isPlaceholder"))
  {
    goto LABEL_6;
  }

  if ([v7 isPlaceholder] && !objc_msgSend(v6, "isPlaceholder"))
  {
    goto LABEL_8;
  }

  v8 = [v6 urgency];
  if (v8 < [v7 urgency])
  {
LABEL_6:
    v9 = -1;
    goto LABEL_9;
  }

  v10 = [v6 urgency];
  if (v10 > [v7 urgency])
  {
    goto LABEL_8;
  }

  v12 = [v6 lastUsed];
  if (v12)
  {
  }

  else
  {
    v28 = [v7 lastUsed];

    if (v28)
    {
      goto LABEL_6;
    }
  }

  v13 = [v6 lastUsed];
  if (v13)
  {
    v14 = v13;
    v15 = [v7 lastUsed];

    if (!v15)
    {
LABEL_8:
      v9 = 1;
      goto LABEL_9;
    }
  }

  v16 = [v6 lastUsed];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  v18 = [v7 lastUsed];

  if (!v18 || ([v6 lastUsed], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "lastUsed"), v20 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v19, "compare:", v20), v20, v19, !v9))
  {
LABEL_17:
    v21 = [v6 lastKnownCacheSize];
    v22 = [v21 unsignedLongLongValue];
    v23 = [v7 lastKnownCacheSize];
    v24 = [v23 unsignedLongLongValue];

    if (v22 >= v24)
    {
      v25 = [v6 lastKnownCacheSize];
      v26 = [v25 unsignedLongLongValue];
      v27 = [v7 lastKnownCacheSize];
      v9 = v26 > [v27 unsignedLongLongValue];

      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_9:

  return v9;
}

void __102__AppContainerCaches_processContainerCachesForVolume_bytesNeeded_urgency_calculate_verbose_telemetry___block_invoke(id a1)
{
  v1 = [CacheDeletePruner prunerWithFileAge:259200.0 dirAge:86400.0];
  [v1 pruneDir:@"/private/var/tmp" bundleID:0];

  v2 = [CacheDeletePruner prunerWithFileAge:259200.0 dirAge:86400.0];
  [v2 pruneDir:@"/private/var/mobile/tmp" bundleID:0];
}

- (id)cdVolumeForPath:(id)path
{
  pathCopy = path;
  bzero(&v22, 0x878uLL);
  if (statfs([pathCopy UTF8String], &v22))
  {
    cdVolumes2 = CDGetLogHandle();
    if (!os_log_type_enabled(cdVolumes2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    uTF8String = [pathCopy UTF8String];
    v16 = __error();
    v17 = strerror(*v16);
    v18 = 136315394;
    v19 = uTF8String;
    v20 = 2080;
    v21 = v17;
    v12 = "statfs failed for %s : %s";
    v13 = cdVolumes2;
    v14 = 22;
    goto LABEL_14;
  }

  cdVolumes = [(AppContainerCaches *)self cdVolumes];
  v8 = [NSString stringWithUTF8String:v22.f_mntonname];
  v6 = [cdVolumes objectForKeyedSubscript:v8];

  if (!v6)
  {
    v10 = [CacheDeleteVolume volumeWithPath:pathCopy];
    if (v10)
    {
      v6 = v10;
      cdVolumes2 = [(AppContainerCaches *)self cdVolumes];
      mountPoint = [v6 mountPoint];
      [cdVolumes2 setObject:v6 forKeyedSubscript:mountPoint];

      goto LABEL_4;
    }

    cdVolumes2 = CDGetLogHandle();
    if (!os_log_type_enabled(cdVolumes2, OS_LOG_TYPE_ERROR))
    {
LABEL_3:
      v6 = 0;
LABEL_4:

      goto LABEL_6;
    }

    v18 = 138412290;
    v19 = pathCopy;
    v12 = "Unable to create CDVolume from: %@";
    v13 = cdVolumes2;
    v14 = 12;
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, &v18, v14);
    goto LABEL_3;
  }

LABEL_6:

  return v6;
}

- (id)appCache:(id)cache forPath:(id)path
{
  cacheCopy = cache;
  pathCopy = path;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__8;
  v21 = __Block_byref_object_dispose__8;
  v22 = 0;
  v8 = [(AppContainerCaches *)self mountPointForPath:pathCopy];
  if (v8)
  {
    collection_queue = [(AppContainerCaches *)self collection_queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __39__AppContainerCaches_appCache_forPath___block_invoke;
    block[3] = &unk_100062198;
    block[4] = self;
    v13 = v8;
    v14 = cacheCopy;
    v15 = pathCopy;
    v16 = &v17;
    dispatch_sync(collection_queue, block);
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __39__AppContainerCaches_appCache_forPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachesByVolume];
  v11 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v11;
    if (!v11)
    {
      v12 = objc_opt_new();
      v5 = [*(a1 + 32) cachesByVolume];
      [v5 setObject:v12 forKeyedSubscript:*(a1 + 40)];

      v4 = v12;
      v3 = *(a1 + 48);
    }

    v11 = v4;
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 56)];
LABEL_5:
    v6 = v11;
    goto LABEL_6;
  }

  v6 = v11;
  if (v11)
  {
    v7 = [v11 objectForKeyedSubscript:*(a1 + 56)];

    if (v7)
    {
      v8 = [v11 objectForKeyedSubscript:*(a1 + 56)];
      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    goto LABEL_5;
  }

LABEL_6:
}

- (id)initReadOnlyCopy
{
  v10.receiver = self;
  v10.super_class = AppContainerCaches;
  v2 = [(AppContainerCaches *)&v10 init];
  v3 = v2;
  if (v2)
  {
    info = [(AppContainerCaches *)v2 info];
    v5 = [AppContainerCaches appContainerCachesWithInfo:info];

    cachesByVolume = [v5 cachesByVolume];
    v7 = [cachesByVolume copy];
    cachesByVolume = v3->_cachesByVolume;
    v3->_cachesByVolume = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [AppContainerCaches allocWithZone:zone];

  return [(AppContainerCaches *)v3 initReadOnlyCopy];
}

- (void)_servicePurge:(int)purge info:(id)info replyBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  v9 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v10 = evaluateStringProperty();
  v11 = [CacheDeleteVolume volumeWithPath:v10];

  v12 = CDGetLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "com.apple.mobile.cache_delete_app_container_caches";
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: PURGE callback, cdVol: %{public}@", buf, 0x16u);
  }

  if (v11)
  {
    mountPoint = [v11 mountPoint];
    v14 = getRootVolume();
    v15 = [mountPoint isEqualToString:v14];

    if (v15)
    {
      v41 = +[NSMutableDictionary dictionary];
      v16 = [TestTelemetry testTelemetryWithInfo:infoCopy];
      v17 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_DIAGNOSTIC_INFO"];
      v18 = evaluateBoolProperty();

      v19 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
      v20 = evaluateNumberProperty();
      unsignedLongLongValue = [v20 unsignedLongLongValue];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      if (v16)
      {
        v22 = CDGetLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v53 = 138543362;
          v54 = v16;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "TestTelemetry: %{public}@", v53, 0xCu);
        }
      }

      if (purge > 1 || !self->_multi_user)
      {
        purge_queue = [(AppContainerCaches *)self purge_queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __52__AppContainerCaches__servicePurge_info_replyBlock___block_invoke;
        block[3] = &unk_1000621C0;
        block[4] = self;
        v46 = buf;
        v44 = v11;
        v47 = unsignedLongLongValue;
        purgeCopy = purge;
        v49 = v18;
        v45 = v16;
        dispatch_sync(purge_queue, block);
      }

      v51[0] = @"CACHE_DELETE_VOLUME";
      mountPoint2 = [v11 mountPoint];
      v52[0] = mountPoint2;
      v51[1] = @"CACHE_DELETE_AMOUNT";
      v25 = [NSNumber numberWithUnsignedLongLong:*(*&buf[8] + 24)];
      v52[1] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
      v27 = [v26 mutableCopy];

      if (v16)
      {
        terminationFailures = [v16 terminationFailures];
        if ([terminationFailures count])
        {

LABEL_19:
          v29 = +[NSMutableDictionary dictionary];
          terminationFailures2 = [v16 terminationFailures];
          v34 = [terminationFailures2 count];

          if (v34)
          {
            terminationFailures3 = [v16 terminationFailures];
            [v29 setObject:terminationFailures3 forKeyedSubscript:@"CACHE_DELETE_TEST_TERMINATION_FAILURES"];
          }

          removeFailures = [v16 removeFailures];
          v37 = [removeFailures count];

          if (v37)
          {
            removeFailures2 = [v16 removeFailures];
            [v29 setObject:removeFailures2 forKeyedSubscript:@"CACHE_DELETE_TEST_REMOVE_FAILURES"];
          }

          if ([v29 count])
          {
            [v27 setObject:v29 forKeyedSubscript:@"CACHE_DELETE_TEST_FAILURES"];
          }

          goto LABEL_26;
        }

        removeFailures3 = [v16 removeFailures];
        v32 = [removeFailures3 count] == 0;

        if (!v32)
        {
          goto LABEL_19;
        }
      }

      v29 = 0;
LABEL_26:
      v30 = [v27 copy];
      _Block_object_dispose(buf, 8);

      goto LABEL_27;
    }
  }

  v29 = CDGetLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = infoCopy;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Unable to create cdVol from info: %{public}@", buf, 0xCu);
  }

  v30 = 0;
LABEL_27:

  v39 = CDGetLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    mountPoint3 = [v11 mountPoint];
    *buf = 136446978;
    *&buf[4] = "com.apple.mobile.cache_delete_app_container_caches";
    *&buf[12] = 1024;
    *&buf[14] = purge;
    *&buf[18] = 2114;
    *&buf[20] = mountPoint3;
    *&buf[28] = 2114;
    *&buf[30] = v30;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}s PURGE result: [u:%d] %{public}@ : %{public}@", buf, 0x26u);
  }

  blockCopy[2](blockCopy, v30);
}

uint64_t __52__AppContainerCaches__servicePurge_info_replyBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) opState];
  v3 = [v2 begin];

  if (v3)
  {
    v4 = CDGetLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Purging Container Caches", &v11, 2u);
    }

    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) processContainerCachesForVolume:*(a1 + 40) bytesNeeded:*(a1 + 64) urgency:*(a1 + 72) calculate:0 verbose:*(a1 + 76) telemetry:*(a1 + 48)];
    v5 = [*(a1 + 32) opState];
    [v5 end];

    if (*(a1 + 48))
    {
      v6 = CDGetLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "testTelemetry: %{public}@", &v11, 0xCu);
      }
    }
  }

  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  return clearDiscardedCaches();
}

- (void)_servicePeriodic:(int)periodic info:(id)info replyBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  v8 = [infoCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v9 = evaluateStringProperty();
  v10 = [CacheDeleteVolume volumeWithPath:v9];

  v11 = CDGetLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    mountPoint = [v10 mountPoint];
    *buf = 136446466;
    v24 = "com.apple.mobile.cache_delete_app_container_caches";
    v25 = 2114;
    v26 = mountPoint;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: PERIODIC callback, cdVol: %{public}@", buf, 0x16u);
  }

  if (v10)
  {
    mountPoint2 = [v10 mountPoint];
    v14 = getRootVolume();
    v15 = [mountPoint2 isEqualToString:v14];

    if (v15)
    {
      v16 = [TestTelemetry testTelemetryWithInfo:infoCopy];
      v17 = getRootVolume();
      v18 = volumeSupportsEAPFS();

      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __55__AppContainerCaches__servicePeriodic_info_replyBlock___block_invoke;
      v21[3] = &__block_descriptor_33_e18_B16__0__AppCache_8l;
      v22 = v18;
      [AppCache enumerateAppCachesOnVolume:v10 options:1 telemetry:v16 block:v21];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __55__AppContainerCaches__servicePeriodic_info_replyBlock___block_invoke_2;
      v19[3] = &__block_descriptor_33_e28_B24__0__NSString_8__NSURL_16l;
      v20 = v18;
      [AppCache enumerateGroupCachesOnVolume:0 block:v19];
    }
  }

  blockCopy[2](blockCopy, &off_100065B80);
}

uint64_t __55__AppContainerCaches__servicePeriodic_info_replyBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cachePath];
  [v4 UTF8String];
  v5 = *(a1 + 32);
  enableDirStats();

  v6 = [v3 tmpPath];

  [v6 UTF8String];
  v7 = *(a1 + 32);
  enableDirStats();

  return 1;
}

uint64_t __55__AppContainerCaches__servicePeriodic_info_replyBlock___block_invoke_2(uint64_t a1, int a2, id a3)
{
  v5 = a3;
  v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [a3 fileSystemRepresentation]);
  v7 = [v6 stringByAppendingPathComponent:@"Library/Caches"];

  [v7 UTF8String];
  v8 = *(a1 + 32);
  enableDirStats();

  return 1;
}

- (void)_serviceCancelPurge:(id)purge
{
  purgeCopy = purge;
  v5 = CDGetLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446210;
    v8 = "com.apple.mobile.cache_delete_app_container_caches";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: PURGE CANCEL callback", &v7, 0xCu);
  }

  opState = [(AppContainerCaches *)self opState];
  [opState cancel];

  purgeCopy[2](purgeCopy);
}

- (void)_serviceNotify:(id)notify replyBlock:(id)block
{
  v4 = CDGetLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446210;
    v6 = "com.apple.mobile.cache_delete_app_container_caches";
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "_serviceNotify is unsupported for %{public}s", &v5, 0xCu);
  }
}

- (void)_serviceCallback:(id)callback replyBlock:(id)block
{
  callbackCopy = callback;
  blockCopy = block;
  v39 = +[NSMutableDictionary dictionary];
  v6 = [callbackCopy objectForKeyedSubscript:@"CACHE_DELETE_OPERATIONS"];
  v7 = CDGetLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v49 = callbackCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "com.apple.mobile.cache_delete_app_container_caches Callback ENTRY, info: %{public}@", buf, 0xCu);
  }

  v38 = callbackCopy;

  v8 = getLocalVolumes();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = [CacheDeleteVolume volumeWithPath:v13];
        v15 = v14;
        if (v13)
        {
          mountPoint = [v14 mountPoint];
          v17 = getRootVolume();
          v18 = [mountPoint isEqualToString:v17];

          if (v18)
          {
            clearDiscardedCaches();
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v10);
  }

  v36 = v8;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v41;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v40 + 1) + 8 * j);
        v25 = [v19 objectForKeyedSubscript:v24];
        v26 = [v25 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
        v27 = evaluateStringProperty();
        v28 = [CacheDeleteVolume volumeWithPath:v27];

        v29 = CDGetLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v49 = 672;
          *&v49[4] = 2114;
          *&v49[6] = v28;
          *&v49[14] = 2114;
          *&v49[16] = v25;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%d, cdVol: %{public}@, opInfo: %{public}@", buf, 0x1Cu);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v24 isEqualToString:@"CACHE_DELETE_PURGE_OPERATION"])
          {
            v30 = CDGetLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v31 = v30;
              v32 = "unsupported, call _servicePurge directly";
              goto LABEL_36;
            }

LABEL_37:

            goto LABEL_38;
          }

          if ([v24 isEqualToString:@"CACHE_DELETE_PURGEABLE_OPERATION"])
          {
            v30 = CDGetLogHandle();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_37;
            }

            *buf = 0;
            v31 = v30;
            v32 = "unsupported, call _servicePurgeable directly";
          }

          else if ([v24 isEqualToString:@"CACHE_DELETE_PURGE_CANCEL_OPERATION"])
          {
            v30 = CDGetLogHandle();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_37;
            }

            *buf = 0;
            v31 = v30;
            v32 = "unsupported, call _serviceCancelPurge directly";
          }

          else
          {
            if (![v24 isEqualToString:@"CACHE_DELETE_PERIODIC_OPERATION"])
            {
              goto LABEL_38;
            }

            v30 = CDGetLogHandle();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_37;
            }

            *buf = 0;
            v31 = v30;
            v32 = "unsupported, call _servicePeriodic directly";
          }

LABEL_36:
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
          goto LABEL_37;
        }

        v33 = CDGetLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *v49 = v25;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "operation info is not a dictionary: %@", buf, 0xCu);
        }

        [v39 setObject:&off_100065BA8 forKeyedSubscript:@"CACHE_DELETE_SERVICE_REQUEST_OPERATION"];
LABEL_38:
      }

      v21 = [v19 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v21);
  }

  v34 = CDGetLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *v49 = "com.apple.mobile.cache_delete_app_container_caches";
    *&v49[8] = 2114;
    *&v49[10] = v39;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}s result: %{public}@", buf, 0x16u);
  }

  v35 = [v39 copy];
  blockCopy[2](blockCopy, v35);
}

@end