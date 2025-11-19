@interface MBFSEventCollector
+ (void)markModificationsWith:(id)a3 since:(id)a4 domainManager:(id)a5 persona:(id)a6 cancellationHandler:(id)a7;
- (BOOL)_collectEventsFromPreviousState:(id)a3 persona:(id)a4 cancellationHandler:(id)a5;
- (MBFSEventCollector)initWithDomainMarker:(id)a3;
- (id)_buildPathToDomainMapWithDomainManager:(id)a3;
- (id)_pathToModifiedDomainFlagsForVolume:(id)a3;
- (id)_pathToMonitorForVolume:(id)a3;
- (void)_buildEventReadersForPersona:(id)a3 domainManager:(id)a4;
@end

@implementation MBFSEventCollector

- (MBFSEventCollector)initWithDomainMarker:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MBFSEventCollector;
  v6 = [(MBFSEventCollector *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domainMarker, a3);
    v8 = objc_opt_class();
    Name = class_getName(v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(Name, v10);
    eventQueue = v7->_eventQueue;
    v7->_eventQueue = v11;
  }

  return v7;
}

- (id)_pathToMonitorForVolume:(id)a3
{
  if ([a3 isEqualToString:@"/private/var"])
  {
    return @"containers";
  }

  else
  {
    return @"Containers";
  }
}

- (id)_pathToModifiedDomainFlagsForVolume:(id)a3
{
  if ([a3 isEqualToString:@"/private/var"])
  {
    v3 = &off_1003E1F50;
  }

  else
  {
    v3 = &off_1003E1F78;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C7B18;
  v6[3] = &unk_1003C1158;
  v4 = objc_opt_new();
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (void)_buildEventReadersForPersona:(id)a3 domainManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = v6;
  v8 = [v6 volumesToBackUp];
  v21 = v7;
  v25 = [(MBFSEventCollector *)self _buildPathToDomainMapWithDomainManager:v7];
  v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v8;
  v26 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v26)
  {
    obj = v10;
    v24 = *v28;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [(MBFSEventCollector *)self _pathToMonitorForVolume:v12];
        v15 = [(MBFSEventCollector *)self _pathToModifiedDomainFlagsForVolume:v12];
        v16 = [v25 objectForKeyedSubscript:v12];
        v17 = [MBFSEventReader alloc];
        v18 = [(MBFSEventCollector *)self domainMarker];
        v19 = [(MBFSEventReader *)v17 initWithDomainMarker:v18 pathToMonitor:v14 pathToModifiedDomainFlags:v15 pathToDomainMapping:v16];

        [v9 setObject:v19 forKeyedSubscript:v12];
        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
      }

      while (v26 != v11);
      v10 = obj;
      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v26);
  }

  v20 = [v9 count];
  if (v20 != [v10 count])
  {
    __assert_rtn("[MBFSEventCollector _buildEventReadersForPersona:domainManager:]", "MBFSEventCollector.m", 203, "readerForVolume.count == volumesToBackUp.count");
  }

  [(MBFSEventCollector *)self setReaderForVolume:v9];
}

- (id)_buildPathToDomainMapWithDomainManager:(id)a3
{
  v4 = a3;
  v35 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = self;
  v5 = [(MBFSEventCollector *)self domainMarker];
  v6 = [v5 unmodifiedDomainNames];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    v30 = *v42;
    v31 = v4;
    do
    {
      v10 = 0;
      v33 = v8;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v41 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if (([v4 containsDomainName:v11] & 1) == 0)
        {
          __assert_rtn("[MBFSEventCollector _buildPathToDomainMapWithDomainManager:]", "MBFSEventCollector.m", 211, "[domainManager containsDomainName:domainName]");
        }

        v13 = [v4 domainForName:v11];
        if ([v13 supportsFSEventsForDetectingChanges])
        {
          v36 = v12;
          v14 = [v13 volumeMountPoint];
          v15 = [v35 objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = objc_opt_new();
            [v35 setObject:v15 forKeyedSubscript:v14];
          }

          v16 = [v13 rootPathRelativeToVolumeMountPoint];
          [v15 setObject:v13 forKeyedSubscript:v16];
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v17 = [v13 relativePathsToBackup];
          v18 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v38;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v38 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [v16 stringByAppendingPathComponent:*(*(&v37 + 1) + 8 * i)];
                [v15 setObject:v13 forKeyedSubscript:v22];
              }

              v19 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v19);
          }

          v9 = v30;
          v4 = v31;
          v8 = v33;
          v12 = v36;
        }

        else
        {
          v23 = MBGetDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v13 name];
            v25 = [v13 rootPath];
            *buf = 138412546;
            v47 = v24;
            v48 = 2112;
            v49 = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Skipping FSEvents for: %@ path:%@", buf, 0x16u);

            v26 = [v13 name];
            [v13 rootPath];
            v29 = v28 = v26;
            _MBLog();
          }

          v14 = [(MBFSEventCollector *)v32 domainMarker];
          [v14 markModifiedDomain:v11];
        }

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v8);
  }

  return v35;
}

- (BOOL)_collectEventsFromPreviousState:(id)a3 persona:(id)a4 cancellationHandler:(id)a5
{
  v72 = a3;
  v7 = a4;
  v8 = a5;
  v110 = 0;
  v111 = &v110;
  v112 = 0x2020000000;
  v113 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  group = dispatch_group_create();
  v73 = objc_opt_new();
  [v7 volumesToBackUp];
  v74 = v8;
  v70 = v7;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  obj = v103 = 0u;
  v9 = [obj countByEnumeratingWithState:&v102 objects:v120 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v83 = *v103;
  while (2)
  {
    v81 = v9;
    for (i = 0; i != v81; i = i + 1)
    {
      if (*v103 != v83)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v102 + 1) + 8 * i);
      v101 = 0;
      v12 = [MBFileSystemManager volumeUUIDWithVolumeMountPoint:v11 error:&v101];
      v13 = v101;
      if (!v12)
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to fetch volumeUUID for %{public}@", buf, 0xCu);
          v65 = v11;
          _MBLog();
        }

        atomic_fetch_add(v111 + 3, 1uLL);
        goto LABEL_18;
      }

      v14 = [v72 eventId];
      v15 = [v14 unsignedLongLongValue];

      v16 = [v72 eventDatabaseUUIDForVolumeUUID];
      v17 = [v12 UUIDString];
      v18 = [v16 objectForKeyedSubscript:v17];

      if (!v18)
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to fetch databaseUUID for volumeUUID %{public}@", buf, 0xCu);
          v65 = v12;
          _MBLog();
        }

        atomic_fetch_add(v111 + 3, 1uLL);
LABEL_18:

        goto LABEL_19;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v118 = sub_1001C8E90;
      *&v119 = sub_1001C8EA0;
      v19 = [(MBFSEventCollector *)self readerForVolume];
      *(&v119 + 1) = [v19 objectForKeyedSubscript:v11];

      if (!*(*&buf[8] + 40))
      {
        __assert_rtn("[MBFSEventCollector _collectEventsFromPreviousState:persona:cancellationHandler:]", "MBFSEventCollector.m", 261, "reader");
      }

      v20 = [MBFSEventStream alloc];
      v21 = [(MBFSEventCollector *)self eventQueue];
      v22 = [*(*&buf[8] + 40) pathToMonitor];
      v100[0] = _NSConcreteStackBlock;
      v100[1] = 3221225472;
      v100[2] = sub_1001C8EA8;
      v100[3] = &unk_1003C1180;
      v100[4] = &v106;
      v100[5] = buf;
      v23 = [(MBFSEventStream *)v20 initWithQueue:v21 volumeMountPoint:v11 databaseUUID:v18 eventID:v15 rootPathToMonitor:v22 eventHandler:v100];

      dispatch_group_enter(group);
      v97[0] = _NSConcreteStackBlock;
      v97[1] = 3221225472;
      v97[2] = sub_1001C8EDC;
      v97[3] = &unk_1003BC160;
      v99 = &v110;
      v98 = group;
      [(MBFSEventStream *)v23 startWithCompletion:v97];
      [v73 addObject:v23];

      _Block_object_dispose(buf, 8);
    }

    v9 = [obj countByEnumeratingWithState:&v102 objects:v120 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v26 = 0;
  v27 = 0;
  do
  {
    ++v27;
    if (0xAAAAAAAAAAAAAAABLL * v27 <= 0x5555555555555555)
    {
      v29 = atomic_load(v107 + 3);
      v28 = v29 == v26;
      v26 = v29;
    }

    else
    {
      v28 = 0;
    }

    v30 = atomic_load(v111 + 3);
    if (v74)
    {
      v31 = v74[2]();
    }

    else
    {
      v31 = 0;
    }

    if (v28 | v31 || v30)
    {
      v32 = MBGetDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        v33 = v30 != 0;
        *&buf[4] = v28;
        *&buf[8] = 1024;
        *&buf[10] = v31;
        *&buf[14] = 1024;
        *&buf[16] = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Stopping FSEvent collection timedOut:%d cancelled:%d failed:%d", buf, 0x14u);
        v66 = v31;
        v67 = v33;
        v65 = v28;
        _MBLog();
      }

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v34 = v73;
      v35 = [v34 countByEnumeratingWithState:&v93 objects:v116 count:16];
      if (v35)
      {
        v36 = *v94;
        do
        {
          for (j = 0; j != v35; j = j + 1)
          {
            if (*v94 != v36)
            {
              objc_enumerationMutation(v34);
            }

            [*(*(&v93 + 1) + 8 * j) cancel];
          }

          v35 = [v34 countByEnumeratingWithState:&v93 objects:v116 count:16];
        }

        while (v35);
      }
    }

    v38 = dispatch_time(0, 10000000000);
  }

  while (dispatch_group_wait(group, v38));
  v39 = atomic_load(v111 + 3);
  v69 = v39;
  if (!v39)
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v77 = obj;
    v40 = [v77 countByEnumeratingWithState:&v89 objects:v115 count:16];
    if (v40)
    {
      v82 = 0;
      v84 = 0;
      v41 = 0;
      v78 = *v90;
      do
      {
        v42 = 0;
        v79 = v40;
        do
        {
          if (*v90 != v78)
          {
            objc_enumerationMutation(v77);
          }

          v43 = *(*(&v89 + 1) + 8 * v42);
          v44 = [(MBFSEventCollector *)self readerForVolume:v65];
          v45 = [v44 objectForKeyedSubscript:v43];

          v46 = [v45 eventsCollected];
          v47 = [v45 eventsSkipped];
          v48 = [v45 modifiedDomainsFlags];
          v49 = MBGetDefaultLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            v50 = v49;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              v76 = v41;
              v51 = [v45 modifiedDomainsFlags];
              v52 = [v45 eventsCollected];
              v53 = [v45 eventsSkipped];
              *buf = 134218754;
              *&buf[4] = v51;
              *&buf[12] = 2048;
              *&buf[14] = v52;
              *&buf[22] = 2048;
              v118 = v53;
              LOWORD(v119) = 2114;
              *(&v119 + 2) = v43;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "FSEvents Scan flags:0x%lx collected:%llu skipped:%llu for %{public}@", buf, 0x2Au);
              v41 = v76;
            }

            v54 = [v45 modifiedDomainsFlags];
            v55 = [v45 eventsCollected];
            v67 = [v45 eventsSkipped];
            v68 = v43;
            v65 = v54;
            v66 = v55;
            _MBLog();
          }

          v82 = &v82[v46];
          v41 = (v41 + v47);
          v84 |= v48;
          v42 = v42 + 1;
        }

        while (v79 != v42);
        v40 = [v77 countByEnumeratingWithState:&v89 objects:v115 count:16];
      }

      while (v40);
    }

    else
    {
      v82 = 0;
      v84 = 0;
      v41 = 0;
    }

    v56 = MBGetDefaultLog();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v84;
      *&buf[12] = 2048;
      *&buf[14] = v82;
      *&buf[22] = 2048;
      v118 = v41;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "FSEvents Scan flags:0x%lx collected:%llu skipped:%llu", buf, 0x20u);
      v66 = v82;
      v67 = v41;
      v65 = v84;
      _MBLog();
    }

    if (v84)
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v57 = [(MBFSEventCollector *)self domainMarker];
      v58 = [v57 unmodifiedDomainNames];

      v59 = [v58 countByEnumeratingWithState:&v85 objects:v114 count:16];
      if (v59)
      {
        v60 = *v86;
        do
        {
          for (k = 0; k != v59; k = k + 1)
          {
            if (*v86 != v60)
            {
              objc_enumerationMutation(v58);
            }

            v62 = *(*(&v85 + 1) + 8 * k);
            if ((v84 & 1) != 0 && ([MBDomain isSystemSharedContainerName:*(*(&v85 + 1) + 8 * k)]& 1) != 0 || (v84 & 2) != 0 && ([MBDomain isSystemContainerName:v62]& 1) != 0 || (v84 & 4) != 0 && ([MBDomain isAppName:v62]& 1) != 0 || (v84 & 8) != 0 && ([MBDomain isAppPluginName:v62]& 1) != 0 || (v84 & 0x10) != 0 && [MBDomain isAppGroupName:v62])
            {
              v63 = [(MBFSEventCollector *)self domainMarker:v65];
              [v63 markModifiedDomain:v62];
            }
          }

          v59 = [v58 countByEnumeratingWithState:&v85 objects:v114 count:16];
        }

        while (v59);
      }
    }
  }

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);

  return v69 == 0;
}

+ (void)markModificationsWith:(id)a3 since:(id)a4 domainManager:(id)a5 persona:(id)a6 cancellationHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Marking modifications using FSEvents", buf, 2u);
    _MBLog();
  }

  v18 = [[MBFSEventCollector alloc] initWithDomainMarker:v11];
  [(MBFSEventCollector *)v18 _buildEventReadersForPersona:v14 domainManager:v13];
  if (![(MBFSEventCollector *)v18 _collectEventsFromPreviousState:v12 persona:v14 cancellationHandler:v15]&& (v15[2](v15) & 1) == 0)
  {
    v25 = v16;
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to collect FSEvents, marking all domains as modified", buf, 2u);
      _MBLog();
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = [v11 unmodifiedDomainNames];
    v21 = [v20 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v27;
      do
      {
        v24 = 0;
        do
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [v11 markModifiedDomain:*(*(&v26 + 1) + 8 * v24)];
          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v22);
    }

    v16 = v25;
  }

  objc_autoreleasePoolPop(v16);
}

@end