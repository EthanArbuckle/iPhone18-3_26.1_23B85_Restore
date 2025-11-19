@interface CWFAssetRootMonitor
- (CWFAssetRootMonitorDelegate)delegate;
- (id)initMonitorWithPath:(id)a3;
- (void)checkForChanges;
- (void)checkForDeletedPath:(id)a3;
- (void)dealloc;
- (void)handleUpdatedPaths;
- (void)printDictionaryDifferences:(id)a3 dictTwo:(id)a4;
- (void)scheduleTimer;
- (void)startMonitoring;
- (void)startMonitoringPath:(id)a3;
- (void)stopMonitoringStream;
@end

@implementation CWFAssetRootMonitor

- (id)initMonitorWithPath:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31.receiver = self;
  v31.super_class = CWFAssetRootMonitor;
  v6 = [(CWFAssetRootMonitor *)&v31 init];
  v7 = v6;
  if (!v6)
  {
    v22 = CWFGetOTAOSLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *buf = 136446466;
    v33 = "[CWFAssetRootMonitor initMonitorWithPath:]";
    v34 = 1024;
    v35 = 53;
    v25 = "%{public}s::%d:Failed to init";
    v26 = v22;
    v27 = OS_LOG_TYPE_ERROR;
    v28 = 18;
    goto LABEL_4;
  }

  objc_storeStrong(&v6->monitoredPath, a3);
  v8 = [v5 stringByDeletingLastPathComponent];
  monitoredParentPath = v7->monitoredParentPath;
  v7->monitoredParentPath = v8;

  v10 = [MEMORY[0x1E695DFA8] set];
  pathsUpdated = v7->pathsUpdated;
  v7->pathsUpdated = v10;

  v12 = [MEMORY[0x1E695DFA8] set];
  pathsExisting = v7->pathsExisting;
  v7->pathsExisting = v12;

  v14 = [MEMORY[0x1E695DFA8] set];
  pathsExistingAtLastCheck = v7->pathsExistingAtLastCheck;
  v7->pathsExistingAtLastCheck = v14;

  v16 = [MEMORY[0x1E695DF90] dictionary];
  pathsFileAttributes = v7->pathsFileAttributes;
  v7->pathsFileAttributes = v16;

  v18 = [MEMORY[0x1E695DF90] dictionary];
  pathsFileAttributesAtLastCheck = v7->pathsFileAttributesAtLastCheck;
  v7->pathsFileAttributesAtLastCheck = v18;

  v7->pathPollingInterval = 600;
  v20 = dispatch_queue_create("com.apple.wifi.CWFAssetRootMonitor", 0);
  timerQueue = v7->timerQueue;
  v7->timerQueue = v20;

  v22 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    monitoredPath = v7->monitoredPath;
    pathPollingInterval = v7->pathPollingInterval;
    *buf = 136446978;
    v33 = "[CWFAssetRootMonitor initMonitorWithPath:]";
    v34 = 1024;
    v35 = 68;
    v36 = 2112;
    v37 = monitoredPath;
    v38 = 2048;
    v39 = pathPollingInterval;
    v25 = "%{public}s::%d:Monitoring Directory %@ at interval %ld seconds";
    v26 = v22;
    v27 = OS_LOG_TYPE_DEFAULT;
    v28 = 38;
LABEL_4:
    _os_log_impl(&dword_1E0BBF000, v26, v27, v25, buf, v28);
  }

LABEL_5:

  v29 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  [(CWFAssetRootMonitor *)self stopMonitoringStream];
  v3.receiver = self;
  v3.super_class = CWFAssetRootMonitor;
  [(CWFAssetRootMonitor *)&v3 dealloc];
}

- (void)scheduleTimer
{
  timer = self->timer;
  if (!timer)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->timerQueue);
    v5 = self->timer;
    self->timer = v4;

    objc_initWeak(&location, self);
    v6 = self->timer;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1E0C968EC;
    v9[3] = &unk_1E86E6190;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v6, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    timer = self->timer;
  }

  dispatch_activate(timer);
  v7 = self->timer;
  v8 = dispatch_walltime(0, 1000000000 * self->pathPollingInterval);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)startMonitoring
{
  [(CWFAssetRootMonitor *)self scheduleTimer];

  [(CWFAssetRootMonitor *)self checkForChanges];
}

- (void)stopMonitoringStream
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136446466;
    v8 = "[CWFAssetRootMonitor stopMonitoringStream]";
    v9 = 1024;
    v10 = 110;
    _os_log_impl(&dword_1E0BBF000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:stopMonitoringStream", &v7, 0x12u);
  }

  timer = self->timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v5 = self->timer;
    self->timer = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)checkForChanges
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"RootMonitorCheckPath"];

  if (v4)
  {
    v5 = [v3 stringForKey:@"RootMonitorCheckPath"];
    if (![(NSString *)self->monitoredPath isEqualToString:v5])
    {
      v6 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136447234;
        v26 = "[CWFAssetRootMonitor checkForChanges]";
        v27 = 1024;
        v28 = 128;
        v29 = 2080;
        v30 = "[CWFAssetRootMonitor checkForChanges]";
        v31 = 2112;
        v32 = @"RootMonitorCheckPath";
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: checkForChanges NSUserDefaults found with key %@ value %@", &v25, 0x30u);
      }

      objc_storeStrong(&self->monitoredPath, v5);
      v7 = [v5 stringByDeletingLastPathComponent];
      monitoredParentPath = self->monitoredParentPath;
      self->monitoredParentPath = v7;

      v9 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v25 = 136446722;
        v26 = "[CWFAssetRootMonitor checkForChanges]";
        v27 = 1024;
        v28 = 133;
        v29 = 2080;
        v30 = "[CWFAssetRootMonitor checkForChanges]";
        _os_log_impl(&dword_1E0BBF000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: Clearing pathsUpdated", &v25, 0x1Cu);
      }

      v10 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v25 = 136446722;
        v26 = "[CWFAssetRootMonitor checkForChanges]";
        v27 = 1024;
        v28 = 134;
        v29 = 2080;
        v30 = "[CWFAssetRootMonitor checkForChanges]";
        _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: Clearing pathsExisting", &v25, 0x1Cu);
      }

      v11 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v25 = 136446722;
        v26 = "[CWFAssetRootMonitor checkForChanges]";
        v27 = 1024;
        v28 = 135;
        v29 = 2080;
        v30 = "[CWFAssetRootMonitor checkForChanges]";
        _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: Clearing pathsFileAttributes", &v25, 0x1Cu);
      }

      [(NSMutableSet *)self->pathsUpdated removeAllObjects];
      [(NSMutableSet *)self->pathsExisting removeAllObjects];
      [(NSMutableDictionary *)self->pathsFileAttributes removeAllObjects];
      v12 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        monitoredPath = self->monitoredPath;
        pathPollingInterval = self->pathPollingInterval;
        v25 = 136447234;
        v26 = "[CWFAssetRootMonitor checkForChanges]";
        v27 = 1024;
        v28 = 140;
        v29 = 2080;
        v30 = "[CWFAssetRootMonitor checkForChanges]";
        v31 = 2112;
        v32 = monitoredPath;
        v33 = 2048;
        v34 = pathPollingInterval;
        _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Monitoring Directory %@ at interval %ld seconds", &v25, 0x30u);
      }
    }
  }

  v15 = [v3 objectForKey:@"RootMonitorCheckInterval_s"];

  if (v15)
  {
    v16 = [v3 integerForKey:@"RootMonitorCheckInterval_s"];
    if (self->pathPollingInterval != v16)
    {
      v17 = v16;
      v18 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136447234;
        v26 = "[CWFAssetRootMonitor checkForChanges]";
        v27 = 1024;
        v28 = 149;
        v29 = 2080;
        v30 = "[CWFAssetRootMonitor checkForChanges]";
        v31 = 2112;
        v32 = @"RootMonitorCheckInterval_s";
        v33 = 2048;
        v34 = v17;
        _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: checkForChanges NSUserDefaults found with key %@ value %ld", &v25, 0x30u);
      }

      if (v17 >= 1)
      {
        self->pathPollingInterval = v17;
        [(CWFAssetRootMonitor *)self stopMonitoringStream];
        [(CWFAssetRootMonitor *)self scheduleTimer];
      }

      v19 = CWFGetOTAOSLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->monitoredPath;
        v21 = self->pathPollingInterval;
        v25 = 136447234;
        v26 = "[CWFAssetRootMonitor checkForChanges]";
        v27 = 1024;
        v28 = 157;
        v29 = 2080;
        v30 = "[CWFAssetRootMonitor checkForChanges]";
        v31 = 2112;
        v32 = v20;
        v33 = 2048;
        v34 = v21;
        _os_log_impl(&dword_1E0BBF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s: Monitoring Directory %@ at interval %ld seconds", &v25, 0x30u);
      }
    }
  }

  v22 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = [v22 fileExistsAtPath:self->monitoredPath isDirectory:0];

  if (v23)
  {
    [(CWFAssetRootMonitor *)self startMonitoringPath:self->monitoredPath];
  }

  else
  {
    [(NSMutableSet *)self->pathsExisting removeAllObjects];
    [(NSMutableDictionary *)self->pathsFileAttributes removeAllObjects];
  }

  [(CWFAssetRootMonitor *)self handleUpdatedPaths];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)startMonitoringPath:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 enumeratorAtPath:v4];
  [(NSMutableSet *)self->pathsExisting removeAllObjects];
  [(NSMutableDictionary *)self->pathsFileAttributes removeAllObjects];
  v7 = [v6 nextObject];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    *&v8 = 136447234;
    v18 = v8;
    do
    {
      v11 = v10;
      v12 = [v4 stringByAppendingPathComponent:{v9, v18}];
      v19 = v10;
      v13 = [v5 attributesOfItemAtPath:v12 error:&v19];
      v10 = v19;

      if (v10)
      {
        v14 = CWFGetOTAOSLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [v10 localizedDescription];
          *buf = v18;
          v21 = "[CWFAssetRootMonitor startMonitoringPath:]";
          v22 = 1024;
          v23 = 192;
          v24 = 2080;
          v25 = "[CWFAssetRootMonitor startMonitoringPath:]";
          v26 = 2112;
          v27 = v12;
          v28 = 2112;
          v29 = v15;
          _os_log_impl(&dword_1E0BBF000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:%s: Error accessing attributesOfItemAtPath %@ : %@", buf, 0x30u);
        }
      }

      else
      {
        v14 = [(NSMutableDictionary *)self->pathsFileAttributesAtLastCheck objectForKeyedSubscript:v12];
        if (([(NSMutableSet *)self->pathsUpdated containsObject:v12]& 1) == 0 && (!v14 || ([v14 isEqualToDictionary:v13]& 1) == 0))
        {
          [(NSMutableSet *)self->pathsUpdated addObject:v12];
        }

        [(NSMutableSet *)self->pathsExisting addObject:v12];
        [(NSMutableDictionary *)self->pathsFileAttributes setObject:v13 forKeyedSubscript:v12];
      }

      v16 = [v6 nextObject];

      v9 = v16;
    }

    while (v16);
  }

  [(CWFAssetRootMonitor *)self checkForDeletedPath:v4];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)printDictionaryDifferences:(id)a3 dictTwo:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E695DFA8];
  v8 = [v5 allKeys];
  v9 = [v7 setWithArray:v8];

  v10 = [v6 allKeys];
  [v9 addObjectsFromArray:v10];

  v23 = v9;
  v11 = [v9 allObjects];
  v12 = [v11 sortedArrayUsingSelector:sel_compare_];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v5 objectForKeyedSubscript:v18];
        v20 = [v6 objectForKeyedSubscript:v18];
        if (([v19 isEqual:v20] & 1) == 0)
        {
          v21 = CWFGetOTAOSLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136447490;
            v29 = "[CWFAssetRootMonitor printDictionaryDifferences:dictTwo:]";
            v30 = 1024;
            v31 = 228;
            v32 = 2080;
            v33 = "[CWFAssetRootMonitor printDictionaryDifferences:dictTwo:]";
            v34 = 2112;
            v35 = v18;
            v36 = 2112;
            v37 = v19;
            v38 = 2112;
            v39 = v20;
            _os_log_impl(&dword_1E0BBF000, v21, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%s: key %@\n\tdictOne %@\n\tdictTwo %@", buf, 0x3Au);
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v40 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)checkForDeletedPath:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFA8] setWithSet:self->pathsExistingAtLastCheck];
  [v4 minusSet:self->pathsExisting];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [(NSMutableSet *)self->pathsUpdated addObject:v10, v12];
        [(NSMutableDictionary *)self->pathsFileAttributes removeObjectForKey:v10];
        [(NSMutableSet *)self->pathsExisting removeObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleUpdatedPaths
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v34 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DFA8] set];
  v33 = [MEMORY[0x1E695DFA8] set];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = self->pathsUpdated;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v37 objects:v51 count:16];
  v32 = self;
  v35 = v4;
  if (v6)
  {
    v8 = v6;
    v9 = *v38;
    *&v7 = 136447234;
    v31 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        if (![v3 fileExistsAtPath:{v11, v31}])
        {
          [v4 addObject:v11];
          continue;
        }

        v36 = 0;
        v12 = [v3 attributesOfItemAtPath:v11 error:&v36];
        v13 = v36;
        v14 = [(NSMutableDictionary *)self->pathsFileAttributesAtLastCheck objectForKeyedSubscript:v11];
        if (v14)
        {
          if ([v12 isEqualToDictionary:v14])
          {
            v15 = CWFGetOTAOSLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v31;
              v42 = "[CWFAssetRootMonitor handleUpdatedPaths]";
              v43 = 1024;
              v44 = 265;
              v45 = 2112;
              v46 = v11;
              v47 = 2112;
              v48 = v12;
              v49 = 2112;
              v50 = v14;
              _os_log_impl(&dword_1E0BBF000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:handleUpdatedPaths ERROR processing pathsUpdated path %@ attr %@ prevAttr %@", buf, 0x30u);
            }

            self = v32;
            goto LABEL_16;
          }

          v16 = v33;
        }

        else
        {
          v16 = v34;
        }

        [v16 addObject:v11];
LABEL_16:

        v4 = v35;
      }

      v8 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v8);
  }

  if ([v34 count])
  {
    v17 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v42 = "[CWFAssetRootMonitor handleUpdatedPaths]";
      v43 = 1024;
      v44 = 276;
      v45 = 2112;
      v46 = v34;
      _os_log_impl(&dword_1E0BBF000, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Files Added %@", buf, 0x1Cu);
    }
  }

  if ([v4 count])
  {
    v18 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v42 = "[CWFAssetRootMonitor handleUpdatedPaths]";
      v43 = 1024;
      v44 = 279;
      v45 = 2112;
      v46 = v4;
      _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Files Deleted \n%@", buf, 0x1Cu);
    }
  }

  if ([v33 count])
  {
    v19 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      v42 = "[CWFAssetRootMonitor handleUpdatedPaths]";
      v43 = 1024;
      v44 = 282;
      v45 = 2112;
      v46 = v33;
      _os_log_impl(&dword_1E0BBF000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Files Modified: \n%@", buf, 0x1Cu);
    }
  }

  if ([v34 count] || objc_msgSend(v4, "count") || objc_msgSend(v33, "count"))
  {
    v20 = [(CWFAssetRootMonitor *)self delegate];
    v21 = MEMORY[0x1E695DF70];
    v22 = [v34 allObjects];
    v23 = [v21 arrayWithArray:v22];
    v24 = MEMORY[0x1E695DF70];
    v25 = [v4 allObjects];
    v26 = [v24 arrayWithArray:v25];
    v27 = MEMORY[0x1E695DF70];
    v28 = [v33 allObjects];
    v29 = [v27 arrayWithArray:v28];
    [v20 rootMonitorDetectedAdd:v23 deleted:v26 updated:v29];

    v4 = v35;
    self = v32;
  }

  [(NSMutableSet *)self->pathsUpdated removeAllObjects];
  objc_storeStrong(&self->pathsExistingAtLastCheck, self->pathsExisting);
  [(NSMutableDictionary *)self->pathsFileAttributesAtLastCheck removeAllObjects];
  [(NSMutableDictionary *)self->pathsFileAttributesAtLastCheck setDictionary:self->pathsFileAttributes];

  v30 = *MEMORY[0x1E69E9840];
}

- (CWFAssetRootMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end