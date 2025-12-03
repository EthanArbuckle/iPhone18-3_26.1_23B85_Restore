@interface OSLogStatistics
- (OSLogStatistics)initWithLogArchivePath:(id)path forRelativePaths:(id)paths errorOut:(id *)out;
- (id)_initializeEventSourceWithPaths:(id)paths;
@end

@implementation OSLogStatistics

void __130__OSLogStatistics_aggregationForStartDate_impl_endDate_predicate_withOptions_catalogCacheSize_dataCacheSize_useMemEffic_errorOut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v11 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 unixDate];
    v4 = v11;
    if (*(v5 + 8) / 1000000.0 + *v5 > *(a1 + 64))
    {
LABEL_8:
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained invalidate];

      goto LABEL_9;
    }
  }

  if ([v4 type] == 1536 || objc_msgSend(v11, "type") == 1024)
  {
    v6 = [*(a1 + 40) handler];

    v7 = v11;
    if (!v6 || ([*(a1 + 40) handler], v8 = objc_claimAutoreleasedReturnValue(), v9 = (v8)[2](v8, v11), v8, v7 = v11, v9))
    {
      [*(a1 + 48) _addTraceEvent:v7];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __130__OSLogStatistics_aggregationForStartDate_impl_endDate_predicate_withOptions_catalogCacheSize_dataCacheSize_useMemEffic_errorOut___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v6 = _logHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Invalid position.";
        v8 = buf;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (a2 == 7)
    {
      v6 = _logHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 0;
        v7 = "Client has insufficient permissions to access the archive.";
        v8 = &v9;
        goto LABEL_15;
      }

LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v6 = _logHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v7 = "Stream disconnected.";
        v8 = &v12;
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (a2 == 2)
    {
      v6 = _logHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v7 = "Stream backlogged, too many events.";
        v8 = &v11;
LABEL_15:
        _os_log_impl(&dword_22E01A000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_17:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_initializeEventSourceWithPaths:(id)paths
{
  v30[1] = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  archivePath = [(OSLogStatistics *)self archivePath];

  if (!archivePath || (v6 = MEMORY[0x277CBEBC0], -[OSLogStatistics archivePath](self, "archivePath"), v7 = objc_claimAutoreleasedReturnValue(), [v6 fileURLWithPath:v7 isDirectory:0], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    if (pathsCopy)
    {
      [OSLogEventStore localStoreWithRelativePaths:pathsCopy];
    }

    else
    {
      +[OSLogEventStore localStore];
    }
    v9 = ;
    v8 = 0;
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_9:
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__2699;
    v27 = __Block_byref_object_dispose__2700;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__2699;
    v21 = __Block_byref_object_dispose__2700;
    v22 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__OSLogStatistics__initializeEventSourceWithPaths___block_invoke;
    v16[3] = &unk_2787AE6F8;
    v16[4] = &v17;
    v16[5] = &v23;
    [v9 prepareWithCompletionHandler:v16];
    v10 = v18[5];
    if (v10)
    {
      objc_storeStrong(&self->_eventSource, v10);
      v11 = 0;
    }

    else
    {
      v11 = v24[5];
    }

    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(&v23, 8);
    goto LABEL_16;
  }

  if (pathsCopy)
  {
    [OSLogEventStore storeWithArchiveURL:v8 relativePaths:pathsCopy];
  }

  else
  {
    [OSLogEventStore storeWithArchiveURL:v8];
  }
  v9 = ;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_15:
  v12 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277CCA450];
  v30[0] = @"Failed to initialize event store";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v11 = [v12 errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:v13];

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

void __51__OSLogStatistics__initializeEventSourceWithPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 32;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (OSLogStatistics)initWithLogArchivePath:(id)path forRelativePaths:(id)paths errorOut:(id *)out
{
  v23 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  pathsCopy = paths;
  v20.receiver = self;
  v20.super_class = OSLogStatistics;
  v11 = [(OSLogStatistics *)&v20 init];
  v12 = v11;
  if (v11 && (objc_storeStrong(&v11->_archivePath, path), [(OSLogStatistics *)v12 _initializeEventSourceWithPaths:pathsCopy], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = _logHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_error_impl(&dword_22E01A000, v15, OS_LOG_TYPE_ERROR, "Encountered error during initialisation of OSLogStatistics: %@", buf, 0xCu);
    }

    if (out)
    {
      v16 = v14;
      *out = v14;
    }

    v17 = 0;
  }

  else
  {
    v17 = v12;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end