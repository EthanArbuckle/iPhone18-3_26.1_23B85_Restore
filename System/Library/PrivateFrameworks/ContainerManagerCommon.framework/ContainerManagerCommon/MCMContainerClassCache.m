@interface MCMContainerClassCache
- (BOOL)_checkExistanceOfCacheEntry:(id)a3 libraryRepair:(id)a4;
- (BOOL)_identifier:(id)a3 isEqualToOtherIdentifier:(id)a4 caseSensitive:(BOOL)a5;
- (BOOL)_isEntryA:(id)a3 olderThanEntryB:(id)a4;
- (BOOL)_queue_consumeResyncRequired;
- (BOOL)enumerateCacheEntriesWithEnumerator:(id)a3;
- (BOOL)firstBuild;
- (BOOL)writeThroughEnabled;
- (Class)cacheEntryClass;
- (MCMContainerClassCache)initWithContainerClassPath:(id)a3 cacheEntryClass:(Class)a4 targetQueue:(id)a5 userIdentityCache:(id)a6;
- (MCMContainerClassPath)containerClassPath;
- (MCMUserIdentityCache)userIdentityCache;
- (NSMutableDictionary)lock_cache;
- (NSUUID)lastCompletedDiskScanUUID;
- (NSUUID)targetDiskScanUUID;
- (OS_dispatch_queue)fsScanQueue;
- (container_notify_s)notify;
- (id)_concurrent_generateCacheEntryWithURL:(id)a3 identifier:(id)a4 containerPath:(id)a5 schemaVersion:(id)a6 uuid:(id)a7 metadata:(id)a8;
- (id)_concurrent_slowGenerateCacheEntryWithFileHandle:(id)a3 URL:(id)a4 identifier:(id)a5 uuid:(id)a6 schemaVersion:(id)a7 containerPath:(id)a8;
- (id)_lock_rootEntryByResortingFromRootEntry:(id)a3 insertEntry:(id)a4;
- (id)_lock_rootEntryFromRootEntry:(id)a3 afterRemovingEntryForContainerPath:(id)a4;
- (id)_setEntry:(id)a3 forIdentifier:(id)a4 containerPath:(id)a5 writeThrough:(BOOL)a6 replace:(BOOL)a7;
- (id)cacheEntryForIdentifier:(id)a3;
- (id)concurrentWriteThroughHandler;
- (id)setCacheEntry:(id)a3 forIdentifier:(id)a4;
- (unint64_t)containerClass;
- (unint64_t)generation;
- (void)_concurrent_processCorruptEntry:(id)a3 handler:(id)a4;
- (void)_concurrent_processURL:(id)a3 handler:(id)a4;
- (void)_handleUnrecoverableCorruptContainerPath:(id)a3;
- (void)_processCorruptEntries:(id)a3 handler:(id)a4;
- (void)_processURLs:(id)a3 handler:(id)a4;
- (void)_queue_syncWithDisk;
- (void)asyncStartSynchronization;
- (void)dealloc;
- (void)forceWriteThrough;
- (void)resyncRequired;
- (void)setConcurrentWriteThroughHandler:(id)a3;
- (void)setFirstBuild:(BOOL)a3;
- (void)setLastCompletedDiskScanUUID:(id)a3;
- (void)setTargetDiskScanUUID:(id)a3;
- (void)setWriteThroughEnabled:(BOOL)a3;
- (void)waitForSynchronizationToComplete;
@end

@implementation MCMContainerClassCache

- (void)waitForSynchronizationToComplete
{
  v4[5] = *MEMORY[0x1E69E9840];
  fsScanQueue = self->_fsScanQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__MCMContainerClassCache_waitForSynchronizationToComplete__block_invoke;
  v4[3] = &unk_1E86B0E08;
  v4[4] = self;
  dispatch_async_and_wait(fsScanQueue, v4);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __58__MCMContainerClassCache_waitForSynchronizationToComplete__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _queue_consumeResyncRequired];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x1E69E9840];

    return [v3 _queue_syncWithDisk];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (NSMutableDictionary)lock_cache
{
  result = self->_lock_cache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)generation
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9968];
  [(MCMContainerClassCache *)self notify];
  container_notify_get_generation();
  result = v4;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (container_notify_s)notify
{
  result = self->_notify;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_queue_consumeResyncRequired
{
  v6 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_fsScanQueue);
  os_unfair_lock_lock(&self->_resyncRequiredLock);
  lock_resyncRequired = self->_lock_resyncRequired;
  self->_lock_resyncRequired = 0;
  os_unfair_lock_unlock(&self->_resyncRequiredLock);
  v4 = *MEMORY[0x1E69E9840];
  return lock_resyncRequired;
}

- (void)setFirstBuild:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_firstBuild = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)firstBuild
{
  result = self->_firstBuild;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (Class)cacheEntryClass
{
  result = self->_cacheEntryClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setWriteThroughEnabled:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_writeThroughEnabled = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)writeThroughEnabled
{
  result = self->_writeThroughEnabled;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (OS_dispatch_queue)fsScanQueue
{
  result = self->_fsScanQueue;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setTargetDiskScanUUID:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_targetDiskScanUUID = &self->_targetDiskScanUUID;

  objc_storeStrong(p_targetDiskScanUUID, a3);
}

- (NSUUID)targetDiskScanUUID
{
  result = self->_targetDiskScanUUID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setLastCompletedDiskScanUUID:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_lastCompletedDiskScanUUID = &self->_lastCompletedDiskScanUUID;

  objc_storeStrong(p_lastCompletedDiskScanUUID, a3);
}

- (NSUUID)lastCompletedDiskScanUUID
{
  result = self->_lastCompletedDiskScanUUID;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerClassPath)containerClassPath
{
  result = self->_containerClassPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)containerClass
{
  result = self->_containerClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  notify = self->_notify;
  container_notify_free();
  v5.receiver = self;
  v5.super_class = MCMContainerClassCache;
  [(MCMContainerClassCache *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_handleUnrecoverableCorruptContainerPath:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 containerRootURL];
  v5 = [v3 userIdentity];
  v6 = [v3 containerClass];
  v7 = [v3 containerPathIdentifier];
  v12 = 0;
  LODWORD(v6) = [MCMCommandOperationDelete deleteContainerRootURL:v4 userIdentity:v5 containerClass:v6 containerPathIdentifier:v7 preferDirectDelete:0 error:&v12];
  v8 = v12;

  v9 = container_log_handle_for_category();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "DELETED: [%@] (corrupt container)", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Could not delete corrupt container; path = %@, error = %@", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isEntryA:(id)a3 olderThanEntryB:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v25 = 0;
  v7 = [v5 birthtimeWithError:&v25];
  v9 = v8;
  v10 = v25;
  v24 = 0;
  v11 = [v6 birthtimeWithError:&v24];
  v13 = v12;
  v14 = v24;
  if (!(v7 | v9))
  {
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v5;
      v28 = 2112;
      v29 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Unpredicatable resolution for conflicting container paths since birthtime not available on A; entry = %@, error = %@", buf, 0x16u);
    }
  }

  if (!(v11 | v13))
  {
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v14;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Unpredicatable resolution for conflicting container paths since birthtime not available on B; entry = %@, error = %@", buf, 0x16u);
    }
  }

  v17 = v7 < v11;
  if (v7 == v11 && (v17 = v9 < v13, v9 == v13))
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Unpredicatable resolution for conflicting container paths since birthtime is the same; entryA = %@, entryB = %@", buf, 0x16u);
    }

    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = container_log_handle_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v23 = @"NO";
    *buf = 138413826;
    v27 = v5;
    if (v19)
    {
      v23 = @"YES";
    }

    v28 = 2112;
    v29 = v6;
    v30 = 2112;
    v31 = v23;
    v32 = 2048;
    v33 = v7;
    v34 = 2048;
    v35 = v9;
    v36 = 2048;
    v37 = v11;
    v38 = 2048;
    v39 = v13;
    _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "entryA %@ is older than entryB %@: %@; birthtimeA = %ld.%09ld, birthtimeB = %ld.%09ld", buf, 0x48u);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)_lock_rootEntryByResortingFromRootEntry:(id)a3 insertEntry:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8)
  {
    v9 = v8;
    if ([v7 ignore] || !-[MCMContainerClassCache _isEntryA:olderThanEntryB:](self, "_isEntryA:olderThanEntryB:", v7, v9))
    {
      v12 = 0;
      v14 = v9;
      while (1)
      {
        v15 = v12;
        v12 = v14;

        if (([v7 ignore] & 1) == 0)
        {
          v16 = [v12 next];
          if (!v16)
          {
            break;
          }

          v17 = v16;
          v18 = [(MCMContainerClassCache *)self _isEntryA:v12 olderThanEntryB:v7];

          if (v18)
          {
            break;
          }
        }

        v14 = [v12 next];

        if (!v14)
        {
          [v12 setNext:v7];
          v19 = container_log_handle_for_category();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v27 = 138412546;
            v28 = v7;
            v29 = 2112;
            v30 = v12;
            _os_log_debug_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEBUG, "Inserting entry %@ after entry %@", &v27, 0x16u);
          }

          v13 = 0;
          goto LABEL_19;
        }
      }

      v20 = container_log_handle_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v25 = [v12 next];
        v27 = 138412802;
        v28 = v7;
        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v25;
        _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "Inserting entry %@ after entry %@ but before entry %@", &v27, 0x20u);
      }

      v21 = [v12 next];
      [v7 setNext:v21];

      [v12 setNext:v7];
      v13 = v12;
LABEL_19:
      v10 = v9;
    }

    else
    {
      [v7 setNext:v9];
      v10 = v7;

      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v26 = [v10 next];
        v27 = 138412546;
        v28 = v10;
        v29 = 2112;
        v30 = v26;
        _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Inserting entry %@ as root entry; next = %@", &v27, 0x16u);
      }

      v12 = 0;
      v13 = v9;
    }
  }

  else
  {
    v10 = v7;
    v12 = 0;
    v13 = 0;
  }

  v22 = v10;

  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_lock_rootEntryFromRootEntry:(id)a3 afterRemovingEntryForContainerPath:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = 0;
  v9 = v7;
  while (1)
  {
    v10 = [v9 containerPath];
    v11 = [v10 isEqual:v6];

    if (v11)
    {
      break;
    }

    v12 = v9;

    v9 = [v12 next];

    v8 = v12;
    if (!v9)
    {
      v8 = v12;
      goto LABEL_11;
    }
  }

  v13 = [v9 next];
  v14 = v13;
  if (v8)
  {
    [v8 setNext:v13];
    v15 = v14;
  }

  else
  {
    v15 = v7;
    v7 = v13;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v7;
    _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Removing entry %@, new root is %@", &v20, 0x16u);
  }

LABEL_11:
  v17 = v7;

  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_setEntry:(id)a3 forIdentifier:(id)a4 containerPath:(id)a5 writeThrough:(BOOL)a6 replace:(BOOL)a7
{
  v8 = a6;
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v12;
  if (v15)
  {
    [(MCMContainerClassCache *)self _lightweightAnnotateEntry:v15];
  }

  os_unfair_lock_lock(&self->_cacheLock);
  v16 = [(MCMContainerClassCache *)self lock_cache];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 objectForKeyedSubscript:v13];
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v18 = 0;
    if (v8)
    {
LABEL_5:
      v19 = _Block_copy(self->_lock_concurrentWriteThroughHandler);
      if (v15)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (v14)
      {
        [(MCMContainerClassCache *)self _lock_rootEntryFromRootEntry:v18 afterRemovingEntryForContainerPath:v14];
      }

      else
      {
        [v18 next];
      }
      v22 = ;
      [v17 setObject:v22 forKeyedSubscript:v13];

      v20 = 0;
      goto LABEL_17;
    }
  }

  v19 = 0;
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_6:
  v20 = [v15 copyWithZone:0];

  [v20 setCache:self];
  if (!v18 || a7)
  {
    v21 = [v18 next];
    [v20 setNext:v21];
  }

  else
  {
    [(MCMContainerClassCache *)self _lock_rootEntryByResortingFromRootEntry:v18 insertEntry:v15];
    v20 = v21 = v20;
  }

  [v17 setObject:v20 forKeyedSubscript:v13];
LABEL_17:
  v23 = container_log_handle_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v26 = [v20 next];
    v27 = 138412802;
    v28 = v13;
    v29 = 2112;
    v30 = v20;
    v31 = 2112;
    v32 = v26;
    _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "Setting cache entry; identifier = %@, cache entry = %@, next = %@", &v27, 0x20u);
  }

  os_unfair_lock_unlock(&self->_cacheLock);
  if (v19)
  {
    v19[2](v19, v13, v18, v15);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)_identifier:(id)a3 isEqualToOtherIdentifier:(id)a4 caseSensitive:(BOOL)a5
{
  v9 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v5 = *MEMORY[0x1E69E9840];
    v6 = *MEMORY[0x1E69E9840];

    return [a3 isEqualToString:a4];
  }

  else
  {
    result = [a3 compare:a4 options:1] == 0;
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (id)_concurrent_generateCacheEntryWithURL:(id)a3 identifier:(id)a4 containerPath:(id)a5 schemaVersion:(id)a6 uuid:(id)a7 metadata:(id)a8
{
  v23 = *MEMORY[0x1E69E9840];
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = [(objc_class *)[(MCMContainerClassCache *)self cacheEntryClass] alloc];
  v19 = [(MCMContainerClassCache *)self userIdentityCache];
  v20 = [(objc_class *)v18 initWithIdentifier:v17 containerPath:v16 schemaVersion:v15 uuid:v14 metadata:v13 userIdentityCache:v19];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_concurrent_slowGenerateCacheEntryWithFileHandle:(id)a3 URL:(id)a4 identifier:(id)a5 uuid:(id)a6 schemaVersion:(id)a7 containerPath:(id)a8
{
  v58 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v43 = a5;
  v42 = a6;
  v41 = a7;
  v16 = a8;
  v17 = [(MCMContainerClassCache *)self containerClassPath];
  v18 = [v17 containerClass];
  v19 = [v17 userIdentity];
  v20 = [MCMMetadata alloc];
  v21 = [(MCMContainerClassCache *)self userIdentityCache];
  v45 = 0;
  v40 = v19;
  v22 = [(MCMMetadataMinimal *)v20 initByReadingAndValidatingMetadataAtContainerPath:v16 userIdentity:v19 containerClass:v18 userIdentityCache:v21 error:&v45];
  v23 = v45;

  if (v22)
  {
    v24 = [v22 identifier];
    v25 = [v22 schemaVersion];
    v26 = [v22 uuid];
    v27 = [(MCMContainerClassCache *)self _concurrent_generateCacheEntryWithURL:v15 identifier:v24 containerPath:v16 schemaVersion:v25 uuid:v26 metadata:v22];

    [v27 setXattrsWithFileHandle:v14];
    goto LABEL_3;
  }

  v31 = containermanager_copy_global_configuration();
  v32 = [v31 staticConfig];
  if ([v32 attemptMetadataReconstructionIfMissing])
  {
  }

  else
  {
    v33 = [v23 POSIXerrno];

    if (v33 == 2)
    {
      v34 = container_log_handle_for_category();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413570;
        v47 = v43;
        v48 = 2112;
        v49 = v16;
        v50 = 2112;
        v51 = v43;
        v52 = 2112;
        v53 = v42;
        v54 = 2112;
        v55 = v41;
        v56 = 2112;
        v57 = v23;
        _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "Could not read metadata for [(%@) %@]; identifier = [%@], uuid = %@, schemaVersion = %@, error = %@", buf, 0x3Eu);
      }

      v27 = 0;
      goto LABEL_3;
    }
  }

  v35 = container_log_handle_for_category();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413570;
    v47 = v43;
    v48 = 2112;
    v49 = v16;
    v50 = 2112;
    v51 = v43;
    v52 = 2112;
    v53 = v42;
    v54 = 2112;
    v55 = v41;
    v56 = 2112;
    v57 = v23;
    _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Could not read metadata for [(%@) %@], attempting recovery; identifier = [%@], uuid = %@, schemaVersion = %@, error = %@", buf, 0x3Eu);
  }

  v36 = [MCMContainerCacheEntry alloc];
  v37 = [(MCMContainerClassCache *)self userIdentityCache];
  v27 = [(MCMContainerCacheEntry *)v36 initFromContainerPath:v16 identifier:v43 uuid:v42 schemaVersion:v41 userIdentityCache:v37];

  if (!v27)
  {
LABEL_3:
    v28 = v23;
    goto LABEL_4;
  }

  v44 = v23;
  v38 = [v27 verifyWithError:&v44];
  v28 = v44;

  if ((v38 & 1) == 0)
  {
    v39 = container_log_handle_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v47 = v43;
      v48 = 2112;
      v49 = v42;
      v50 = 2112;
      v51 = v41;
      v52 = 2112;
      v53 = v28;
      _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, "Attempted to recover, but verification failed; identifier = [%@], uuid = %@, schemaVersion = %@, error = %@", buf, 0x2Au);
    }

    v27 = 0;
  }

LABEL_4:

  v29 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)_concurrent_processCorruptEntry:(id)a3 handler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 containerPath];
  v9 = [v8 containerRootURL];
  v10 = [MCMFileHandle alloc];
  v11 = [v9 path];
  LOBYTE(v23) = 0;
  v12 = [(MCMFileHandle *)v10 initWithPath:v11 relativeToFileHandle:0 direction:9 symlinks:0 createMode:0 createDPClass:0 openLazily:v23];

  v25 = 0;
  v13 = [(MCMFileHandle *)v12 openWithError:&v25];
  v14 = v25;
  v15 = container_log_handle_for_category();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    v24 = v7;
    v17 = self;
    if (v16)
    {
      *buf = 138412290;
      v27 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Attempting to repair corrupt container (slow); path = %@", buf, 0xCu);
    }

    v18 = [v6 identifier];
    v19 = [v6 uuid];
    v20 = [v6 schemaVersion];
    v15 = [(MCMContainerClassCache *)v17 _concurrent_slowGenerateCacheEntryWithFileHandle:v12 URL:v9 identifier:v18 uuid:v19 schemaVersion:v20 containerPath:v8];

    if (!v15)
    {
      [(MCMContainerClassCache *)v17 _handleUnrecoverableCorruptContainerPath:v8];
      v7 = v24;
      goto LABEL_9;
    }

    v7 = v24;
    v24[2](v24, v15);
  }

  else if (v16)
  {
    v22 = [v9 path];
    *buf = 138412546;
    v27 = v22;
    v28 = 2112;
    v29 = v14;
    _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to open [%@] for container scan, skipping; error = %@", buf, 0x16u);
  }

LABEL_9:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_concurrent_processURL:(id)a3 handler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = a4;
  v7 = [(MCMContainerClassCache *)self containerClassPath];
  v8 = [v6 lastPathComponent];
  v26 = [MCMContainerPath containerPathForContainerClassPath:v7 containerPathIdentifier:v8];
  v9 = [MCMFileHandle alloc];
  v10 = [v6 path];
  LOBYTE(v24) = 0;
  v11 = [(MCMFileHandle *)v9 initWithPath:v10 relativeToFileHandle:0 direction:9 symlinks:0 createMode:0 createDPClass:0 openLazily:v24];

  v27 = 0;
  LOBYTE(v9) = [(MCMFileHandle *)v11 openWithError:&v27];
  v12 = v27;
  if ((v9 & 1) == 0)
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = [v6 path];
      *buf = 138412546;
      v29 = v23;
      v30 = 2112;
      v31 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Failed to open [%@] for container scan, skipping; error = %@", buf, 0x16u);
    }

    v16 = 0;
    v14 = 0;
    v13 = 0;
    v19 = 0;
    goto LABEL_15;
  }

  v13 = [MCMContainerCacheEntry identifierForFileHandle:v11];
  v14 = [MCMContainerCacheEntry UUIDForFileHandle:v11];
  v15 = [MCMContainerCacheEntry schemaVersionForFileHandle:v11];
  v16 = v15;
  if (v13 && v14 && v15)
  {
    v17 = [(MCMContainerClassCache *)self _concurrent_generateCacheEntryWithURL:v6 identifier:v13 containerPath:v26 schemaVersion:v15 uuid:v14 metadata:0];
  }

  else
  {
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v26;
      _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "Container did not have xattr (%@|%@|%@), reading plist (slow); path = %@", buf, 0x2Au);
    }

    v17 = [(MCMContainerClassCache *)self _concurrent_slowGenerateCacheEntryWithFileHandle:v11 URL:v6 identifier:v13 uuid:v14 schemaVersion:v16 containerPath:v26];
  }

  v19 = v17;
  if (!v17)
  {
    [(MCMContainerClassCache *)self _handleUnrecoverableCorruptContainerPath:v26];
LABEL_15:
    v21 = v25;
    goto LABEL_16;
  }

  v21 = v25;
  (*(v25 + 2))(v25, v17);
LABEL_16:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_processCorruptEntries:(id)a3 handler:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MCMContainerClassCache__processCorruptEntries_handler___block_invoke;
  v9[3] = &unk_1E86AFEF8;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  [a3 enumerateObjectsWithOptions:0 usingBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __57__MCMContainerClassCache__processCorruptEntries_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) _concurrent_processCorruptEntry:v5 handler:*(a1 + 40)];
  objc_autoreleasePoolPop(v3);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_processURLs:(id)a3 handler:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__MCMContainerClassCache__processURLs_handler___block_invoke;
  v9[3] = &unk_1E86AFEF8;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  [a3 enumerateObjectsWithOptions:0 usingBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __47__MCMContainerClassCache__processURLs_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) _concurrent_processURL:v5 handler:*(a1 + 40)];
  objc_autoreleasePoolPop(v3);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_queue_syncWithDisk
{
  v90 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_fsScanQueue);
  v3 = [(MCMContainerClassCache *)self containerClassPath];
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v73 = v3;
    _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Resyncing container class cache: %@", buf, 0xCu);
  }

  v5 = container_log_handle_for_category();
  v6 = os_signpost_id_make_with_pointer(v5, self);

  v7 = container_log_handle_for_category();
  v8 = v7;
  v58 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v9 = [v3 containerClass];
    *buf = 134349056;
    v73 = v9;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ResyncingCache", " class=%{public, signpost.description:attribute}llu ", buf, 0xCu);
  }

  spid = v6;

  v10 = [(MCMContainerClassCache *)self userIdentityCache];
  v11 = [v3 userIdentity];
  v12 = [v10 libraryRepairForUserIdentity:v11];

  v13 = [MEMORY[0x1E695DFA8] set];
  v60 = v3;
  v14 = [v3 classURL];
  v71 = 0;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke;
  v69[3] = &unk_1E86B10B8;
  v15 = v13;
  v70 = v15;
  v59 = v12;
  LODWORD(v13) = [v12 fixAndRetryIfPermissionsErrorWithURL:v14 error:&v71 duringBlock:v69];
  v57 = v71;

  if (v13)
  {
    v16 = [(MCMContainerClassCache *)self containerClassPath:spid];
    [v16 setExists:1];
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v65 = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_cacheLock);
  v18 = [(MCMContainerClassCache *)self lock_cache];
  v19 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v18, "count")}];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v18;
  v62 = [obj countByEnumeratingWithState:&v86 objects:v85 count:16];
  if (v62)
  {
    v61 = *v87;
    do
    {
      for (i = 0; i != v62; ++i)
      {
        if (*v87 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [obj objectForKeyedSubscript:*(*(&v86 + 1) + 8 * i)];
        v64 = v21;
        do
        {
          v22 = [v21 containerPath];
          v23 = [v22 containerRootURL];

          if ([v15 containsObject:v23])
          {
            v24 = [v21 corrupt];
            v25 = container_log_handle_for_category();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
            if (v24)
            {
              if (v26)
              {
                v31 = [v23 path];
                *buf = 138412290;
                v73 = v31;
                _os_log_debug_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEBUG, "Disk sync knows about corrupt [%@]", buf, 0xCu);
              }

              [v65 addObject:v21];
            }

            else
            {
              if (v26)
              {
                v32 = [v23 path];
                *buf = 138412290;
                v73 = v32;
                _os_log_debug_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEBUG, "Disk sync knows about [%@]", buf, 0xCu);
              }
            }

            [v19 addObject:v23];
          }

          else
          {
            v27 = container_log_handle_for_category();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v23 path];
              *buf = 138412290;
              v73 = v28;
              _os_log_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEFAULT, "Disk sync has stale entry for [%@]", buf, 0xCu);
            }

            [v17 addObject:v21];
            v29 = [(MCMContainerClassCache *)self containerClassPath];
            [v29 setExists:0];
          }

          v30 = [v21 next];

          v21 = v30;
        }

        while (v30);
      }

      v62 = [obj countByEnumeratingWithState:&v86 objects:v85 count:16];
    }

    while (v62);
  }

  os_unfair_lock_unlock(&self->_cacheLock);
  [v15 minusSet:v19];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v66 = v17;
  v33 = [v66 countByEnumeratingWithState:&v81 objects:v80 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v82;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v82 != v35)
        {
          objc_enumerationMutation(v66);
        }

        v37 = *(*(&v81 + 1) + 8 * j);
        v38 = container_log_handle_for_category();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v37;
          _os_log_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_DEFAULT, "Disk sync evicting stale entry: %@", buf, 0xCu);
        }

        v39 = [v37 identifier];
        v40 = [v37 containerPath];
        v41 = [(MCMContainerClassCache *)self _setEntry:0 forIdentifier:v39 containerPath:v40 writeThrough:1 replace:0];
      }

      v34 = [v66 countByEnumeratingWithState:&v81 objects:v80 count:16];
    }

    while (v34);
  }

  v42 = [v15 allObjects];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke_8;
  v68[3] = &unk_1E86AFED0;
  v68[4] = self;
  [(MCMContainerClassCache *)self _processURLs:v42 handler:v68];

  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke_10;
  v67[3] = &unk_1E86AFED0;
  v67[4] = self;
  [(MCMContainerClassCache *)self _processCorruptEntries:v65 handler:v67];
  v43 = [v19 count];
  v44 = [v15 count];
  v45 = [v66 count];
  if ([(MCMContainerClassCache *)self firstBuild])
  {
    [(MCMContainerClassCache *)self setFirstBuild:0];
    v46 = v60;
  }

  else
  {
    v46 = v60;
    if ([v15 count] || objc_msgSend(v66, "count"))
    {
      [(MCMContainerClassCache *)self notify];
      container_notify_increment_generation();
    }
  }

  v47 = container_log_handle_for_category();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v44 + v43 - v45;
    v49 = [v15 count];
    v50 = [v66 count];
    *buf = 138413058;
    v73 = v46;
    v74 = 2048;
    v75 = v49;
    v76 = 2048;
    v77 = v50;
    v78 = 2048;
    v79 = v48;
    _os_log_impl(&dword_1DF2C3000, v47, OS_LOG_TYPE_DEFAULT, "Finished resyncing container class cache: %@, added = %lu, removed = %lu, total = %lu", buf, 0x2Au);
  }

  v51 = container_log_handle_for_category();
  v52 = v51;
  if (v58 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    v53 = [v46 containerClass];
    *buf = 134349056;
    v73 = v53;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v52, OS_SIGNPOST_INTERVAL_END, spida, "ResyncingCache", " class=%{public, signpost.description:attribute}llu ", buf, 0xCu);
  }

  v54 = *MEMORY[0x1E69E9840];
}

BOOL __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 urlsForItemsInDirectoryAtURL:v5 error:a3];

  [*(a1 + 32) addObjectsFromArray:v7];
  v8 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

void __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke_8(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEFAULT, "Disk sync reporting on new entry: %@", &v10, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 identifier];
  v7 = [v3 containerPath];
  v8 = [v5 _setEntry:v3 forIdentifier:v6 containerPath:v7 writeThrough:1 replace:0];

  v9 = *MEMORY[0x1E69E9840];
}

void __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke_10(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEFAULT, "Disk sync reporting on repaired entry: %@", &v10, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 identifier];
  v7 = [v3 containerPath];
  v8 = [v5 _setEntry:v3 forIdentifier:v6 containerPath:v7 writeThrough:1 replace:1];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkExistanceOfCacheEntry:(id)a3 libraryRepair:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [(MCMContainerClassCache *)self containerClassPath];
  v9 = [v8 classURL];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__MCMContainerClassCache__checkExistanceOfCacheEntry_libraryRepair___block_invoke;
  v13[3] = &unk_1E86B1090;
  v13[4] = &v15;
  v14 = 0;
  [v7 fixAndRetryIfPermissionsErrorWithURL:v9 error:&v14 duringBlock:v13];
  v10 = v14;

  LOBYTE(v8) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __68__MCMContainerClassCache__checkExistanceOfCacheEntry_libraryRepair___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 itemAtURL:v5 exists:*(*(a1 + 32) + 8) + 24 error:a3];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)concurrentWriteThroughHandler
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = _Block_copy(self->_lock_concurrentWriteThroughHandler);
  os_unfair_lock_unlock(&self->_cacheLock);
  v4 = _Block_copy(v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setConcurrentWriteThroughHandler:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = _Block_copy(v4);

  lock_concurrentWriteThroughHandler = self->_lock_concurrentWriteThroughHandler;
  self->_lock_concurrentWriteThroughHandler = v5;

  v7 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)forceWriteThrough
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = _Block_copy(self->_lock_concurrentWriteThroughHandler);
  v4 = [(MCMContainerClassCache *)self lock_cache];
  v5 = [v4 copy];

  os_unfair_lock_unlock(&self->_cacheLock);
  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__MCMContainerClassCache_forceWriteThrough__block_invoke;
    v7[3] = &unk_1E86AFEA8;
    v8 = v3;
    [v5 enumerateKeysAndObjectsWithOptions:1 usingBlock:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __43__MCMContainerClassCache_forceWriteThrough__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

- (void)resyncRequired
{
  v4 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_resyncRequiredLock);
  self->_lock_resyncRequired = 1;
  v3 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&self->_resyncRequiredLock);
}

- (void)asyncStartSynchronization
{
  v4[5] = *MEMORY[0x1E69E9840];
  fsScanQueue = self->_fsScanQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MCMContainerClassCache_asyncStartSynchronization__block_invoke;
  v4[3] = &unk_1E86B0E08;
  v4[4] = self;
  dispatch_async(fsScanQueue, v4);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __51__MCMContainerClassCache_asyncStartSynchronization__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _queue_consumeResyncRequired];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *MEMORY[0x1E69E9840];

    return [v3 _queue_syncWithDisk];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (BOOL)enumerateCacheEntriesWithEnumerator:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(MCMContainerClassCache *)self lock_cache];
  v6 = [v5 copy];

  os_unfair_lock_unlock(&self->_cacheLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [v7 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        if (([v13 corrupt] & 1) == 0 && (objc_msgSend(v13, "ignore") & 1) == 0)
        {
          if ((v4[2](v4, v13) & 1) == 0)
          {

            goto LABEL_14;
          }

          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_14:
    v10 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (id)setCacheEntry:(id)a3 forIdentifier:(id)a4
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return [(MCMContainerClassCache *)self setCacheEntry:a3 forIdentifier:a4 writeThrough:1];
}

- (id)cacheEntryForIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCMContainerClassCache *)self waitForSynchronizationToComplete];
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(MCMContainerClassCache *)self lock_cache];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (([v6 corrupt] & 1) != 0 || objc_msgSend(v6, "ignore"))
  {

    v6 = 0;
  }

  [v6 setGeneration:{-[MCMContainerClassCache generation](self, "generation")}];
  os_unfair_lock_unlock(&self->_cacheLock);
  v7 = container_log_handle_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_debug_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEBUG, "Retrieving cache entry; identifier = %@, cache entry = %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMContainerClassCache)initWithContainerClassPath:(id)a3 cacheEntryClass:(Class)a4 targetQueue:(id)a5 userIdentityCache:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v34.receiver = self;
  v34.super_class = MCMContainerClassCache;
  v14 = [(MCMContainerClassCache *)&v34 init];
  v15 = v14;
  if (!v14)
  {
LABEL_12:
    v28 = v15;
    goto LABEL_13;
  }

  v14->_lock_resyncRequired = 1;
  lock_concurrentWriteThroughHandler = v14->_lock_concurrentWriteThroughHandler;
  *&v14->_lock_concurrentWriteThroughHandler = 0u;

  objc_storeStrong(&v15->_cacheEntryClass, a4);
  v15->_containerClass = [v11 containerClass];
  v17 = containermanager_copy_global_configuration();
  v18 = [v17 dispositionForContainerClass:v15->_containerClass];

  if (v18 == 1)
  {
    v19 = [MEMORY[0x1E696AFB0] UUID];
    targetDiskScanUUID = v15->_targetDiskScanUUID;
    v15->_targetDiskScanUUID = v19;

    lastCompletedDiskScanUUID = v15->_lastCompletedDiskScanUUID;
    v15->_lastCompletedDiskScanUUID = 0;

    objc_storeStrong(&v15->_containerClassPath, a3);
    v22 = [MEMORY[0x1E695DF90] dictionary];
    lock_cache = v15->_lock_cache;
    v15->_lock_cache = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_BACKGROUND, 0);

    if (v12)
    {
      v26 = dispatch_queue_create_with_target_V2("com.apple.containermanagerd.fsScan", v25, v12);
    }

    else
    {
      v26 = dispatch_queue_create("com.apple.containermanagerd.fsScan", v25);
    }

    fsScanQueue = v15->_fsScanQueue;
    v15->_fsScanQueue = v26;

    objc_storeStrong(&v15->_userIdentityCache, a6);
    v15->_firstBuild = 1;
    v30 = container_notify_create();
    v15->_notify = v30;
    if (v30)
    {
      [v11 containerClass];
      container_notify_set_class();
    }

    goto LABEL_12;
  }

  v27 = container_log_handle_for_category();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    containerClass = v15->_containerClass;
    *buf = 134217984;
    v36 = containerClass;
    _os_log_fault_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_FAULT, "Attempting to build cache for class not supported by this daemon: %llu", buf, 0xCu);
  }

  v28 = 0;
LABEL_13:

  v31 = *MEMORY[0x1E69E9840];
  return v28;
}

@end