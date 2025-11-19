@interface BWDeferredCaptureContainerManager
+ (id)sharedInstance;
- (BOOL)_removeContainerForCaptureRequestIdentifier:(void *)a3 array:;
- (BOOL)canDefer;
- (BWDeferredCaptureContainerManager)init;
- (__CVBuffer)newPixelBuffer:(id)a3;
- (id)copyRemoteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4 err:(int *)a5;
- (id)createCaptureContainerWithApplicationID:(id)a3 captureRequestIdentifier:(id)a4 err:(int *)a5;
- (id)lookupCaptureContainer:(id)a3;
- (id)manifestsForApplicationID:(id)a3 err:(int *)a4;
- (int)abortContainer:(id)a3 error:(int)a4;
- (int)addBufferPool:(id)a3;
- (int)addCaptureContainer:(id)a3;
- (int)commitContainer:(id)a3;
- (int)containerWaitForFlush:(id)a3;
- (int)deleteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4;
- (int)queryContainerStatusForApplicationID:(id)a3 captureRequestIdentifier:(id)a4 status:(int *)a5;
- (int)releaseRemoteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4;
- (int)removeBufferPool:(id)a3;
- (uint64_t)_containerForCaptureRequestIdentifier:(void *)a3 array:(uint64_t *)a4 index:;
- (uint64_t)_enumerateManifestsForApplicationID:(uint64_t)a3 manifestArray:(int)a4 deleteInvalidContainers:;
- (uint64_t)_flushContainer:(void *)a3 container:;
- (uint64_t)_handleExpiryTimer;
- (uint64_t)_queryLowDiskThresholds:(uint64_t *)a3 veryLowDiskThresholdBytes:;
- (uint64_t)_reportCoreAnalyticsDataWithError:(void *)a3 container:;
- (void)_rescheduleCacheExpiryTimer;
- (void)_updateCacheEntryForContainer:(uint64_t)a1 release:;
- (void)flush:(id)a3 toMinimumCapacity:(unint64_t)a4;
@end

@implementation BWDeferredCaptureContainerManager

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[BWDeferredCaptureContainerManager sharedInstance];
  }

  return sharedInstance_sharedInstance;
}

BWDeferredCaptureContainerManager *__51__BWDeferredCaptureContainerManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(BWDeferredCaptureContainerManager);
  sharedInstance_sharedInstance = result;
  return result;
}

- (BWDeferredCaptureContainerManager)init
{
  v5.receiver = self;
  v5.super_class = BWDeferredCaptureContainerManager;
  v2 = [(BWDeferredContainerManagerBase *)&v5 initWithQueuePriority:14];
  v3 = v2;
  if (v2)
  {
    *(v2 + 56) = 0;
    *(v2 + 57) = 10;
    *(v2 + 29) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 26));
    v3->_stagedContainers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_cachedContainers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_inflightContainers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_flushQueue = FigDispatchQueueCreateWithPriority();
    v3->_flushQueueBackground = FigDispatchQueueCreateWithPriority();
    v3->_pools = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(BWDeferredCaptureContainerManager *)v3 _queryLowDiskThresholds:0 veryLowDiskThresholdBytes:?];
  }

  return v3;
}

uint64_t __87__BWDeferredCaptureContainerManager__containerForCaptureRequestIdentifier_array_index___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 captureRequestIdentifier];

  return [v2 isEqualToString:v3];
}

uint64_t __75__BWDeferredCaptureContainerManager__updateCacheEntryForContainer_release___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 cacheExpiryTime];
  if (v5 > [a3 cacheExpiryTime])
  {
    return 1;
  }

  v7 = [a2 cacheExpiryTime];
  if (v7 >= [a3 cacheExpiryTime])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (id)createCaptureContainerWithApplicationID:(id)a3 captureRequestIdentifier:(id)a4 err:(int *)a5
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (a3 && a4)
  {
    v17 = 0;
    v16 = 0;
    v10 = [(BWDeferredContainerManagerBase *)self _containerURLForApplicationID:a3 captureRequestIdentifier:a4 processingContainer:0 exists:&v17 isDirectory:0 resolvedApplicationID:&v16];
    if ((v17 & 1) == 0)
    {
      v11 = v10;
      v12 = self->_cacheSize == 0;
      v13 = [BWDeferredCaptureContainer alloc];
      v14 = [(BWDeferredCaptureContainer *)v13 initWithApplicationID:v16 captureRequestIdentifier:a4 baseFolderURL:v11 flushBuffersUponCommit:v12 err:a5];
      LODWORD(a4) = 0;
      if (!a5)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    a4 = 4294951161;
  }

  else
  {
    [BWDeferredCaptureContainerManager createCaptureContainerWithApplicationID:captureRequestIdentifier:err:];
    a4 = 4294954516;
  }

  [(BWDeferredCaptureContainerManager *)self _reportCoreAnalyticsDataWithError:a4 container:0];
  v14 = 0;
  if (a5)
  {
LABEL_7:
    *a5 = a4;
  }

LABEL_8:
  if (*v9 == 1)
  {
    kdebug_trace();
  }

  return v14;
}

- (int)addCaptureContainer:(id)a3
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (a3)
  {
    [(NSMutableArray *)self->_stagedContainers addObject:a3];
    v6 = 0;
  }

  else
  {
    [BWDeferredCaptureContainerManager addCaptureContainer:];
    v6 = -12780;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v6;
}

- (int)commitContainer:(id)a3
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (a3)
  {
    if (self)
    {
      v6 = [(BWDeferredCaptureContainerManager *)self _containerForCaptureRequestIdentifier:a3 array:self->_stagedContainers index:0];
      if (v6)
      {
        v7 = v6;
        v8 = v6;
        [(BWDeferredCaptureContainerManager *)self _removeContainerForCaptureRequestIdentifier:a3 array:self->_stagedContainers];
        v9 = [v7 commit];
        v11 = v9;
        if (v9 || ([v7 valid:&v11], (v9 = v11) != 0))
        {
          [(BWDeferredCaptureContainerManager *)self _reportCoreAnalyticsDataWithError:v9 container:v7];
        }

        else if ([(NSMutableArray *)self->_cachedContainers count]>= self->_cacheSize)
        {
          [(BWDeferredCaptureContainerManager *)self commitContainer:v7];
        }

        else
        {
          [BWDeferredCaptureContainerManager _updateCacheEntryForContainer:? release:?];
        }

        goto LABEL_11;
      }
    }

    [BWDeferredCaptureContainerManager commitContainer:?];
  }

  else
  {
    [BWDeferredCaptureContainerManager commitContainer:?];
  }

  v7 = 0;
LABEL_11:
  pthread_rwlock_unlock(&self->super._lock);

  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v11;
}

- (int)abortContainer:(id)a3 error:(int)a4
{
  v4 = *&a4;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (!a3)
  {
    [BWDeferredCaptureContainerManager abortContainer:error:];
LABEL_16:
    v13 = -12780;
    goto LABEL_11;
  }

  if (!self || (v8 = [(BWDeferredCaptureContainerManager *)self _containerForCaptureRequestIdentifier:a3 array:self->_stagedContainers index:0]) == 0)
  {
    [BWDeferredCaptureContainerManager abortContainer:error:];
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [v8 abort];
  if (v10)
  {
    [BWDeferredCaptureContainerManager abortContainer:error:];
  }

  [(BWDeferredCaptureContainerManager *)self _reportCoreAnalyticsDataWithError:v4 container:v9];
  v11 = [v9 applicationID];
  [(BWDeferredCaptureContainerManager *)self _removeContainerForCaptureRequestIdentifier:a3 array:self->_stagedContainers];
  v15.receiver = self;
  v15.super_class = BWDeferredCaptureContainerManager;
  v12 = [(BWDeferredContainerManagerBase *)&v15 deleteContainerForApplicationID:v11 captureRequestIdentifier:a3];
  if ((v12 & 0xFFFFFFFB) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

LABEL_11:
  pthread_rwlock_unlock(&self->super._lock);
  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return v13;
}

- (id)manifestsForApplicationID:(id)a3 err:(int *)a4
{
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (a3)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (([a3 isEqualToString:0x1F216ED50] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", 0x1F2185190))
    {
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Media/Deferred/CaptureContainers"];
      v11 = [v9 enumeratorAtURL:v10 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:5 errorHandler:0];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = -[BWDeferredCaptureContainerManager _enumerateManifestsForApplicationID:manifestArray:deleteInvalidContainers:](self, [*(*(&v20 + 1) + 8 * i) lastPathComponent], v8, 1);
          }

          v17 = v16;
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v19 count:16];
        }

        while (v13);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = [(BWDeferredCaptureContainerManager *)self _enumerateManifestsForApplicationID:a3 manifestArray:v8 deleteInvalidContainers:1];
    }
  }

  else
  {
    [BWDeferredCaptureContainerManager manifestsForApplicationID:err:];
    v8 = 0;
    v17 = -16134;
  }

  if (a4)
  {
    *a4 = v17;
  }

  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return v8;
}

- (id)copyRemoteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4 err:(int *)a5
{
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v13 = 0;
  pthread_rwlock_wrlock(&self->super._lock);
  if (self && (v9 = [(BWDeferredCaptureContainerManager *)self _containerForCaptureRequestIdentifier:a4 array:self->_cachedContainers index:0]) != 0)
  {
    v10 = v9;
    [BWDeferredCaptureContainerManager _updateCacheEntryForContainer:? release:?];
    v11 = [v10 copyXPCEncoding:&v13];
    if (!v11)
    {
      [BWDeferredCaptureContainerManager copyRemoteContainerForApplicationID:? captureRequestIdentifier:? err:?];
    }
  }

  else
  {
    [BWDeferredCaptureContainerManager copyRemoteContainerForApplicationID:? captureRequestIdentifier:? err:?];
    v11 = 0;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (a5)
  {
    *a5 = v13;
  }

  if (*v8 == 1)
  {
    kdebug_trace();
  }

  return v11;
}

- (int)releaseRemoteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4
{
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_rdlock(&self->super._lock);
  if (!self || ([BWDeferredCaptureContainerManager releaseRemoteContainerForApplicationID:a4 captureRequestIdentifier:?]& 1) != 0)
  {
    [BWDeferredCaptureContainerManager releaseRemoteContainerForApplicationID:captureRequestIdentifier:];
    v7 = -16134;
  }

  else
  {
    v7 = 0;
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v6 == 1)
  {
    kdebug_trace();
  }

  return v7;
}

- (int)addBufferPool:(id)a3
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (a3)
  {
    v6 = -[BWDeferredContainerPixelBufferPoolWrapper initWithVideoFormat:capacity:name:]([BWDeferredContainerPixelBufferPoolWrapper alloc], "initWithVideoFormat:capacity:name:", [a3 videoFormat], objc_msgSend(a3, "capacity") * (self->_cacheSize + 1), objc_msgSend(a3, "name"));
    pthread_rwlock_wrlock(&self->super._lock);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_pools, "setObject:forKeyedSubscript:", v6, [MEMORY[0x1E696B098] valueWithPointer:a3]);
  }

  else
  {
    [BWDeferredCaptureContainerManager addBufferPool:];
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (int)removeBufferPool:(id)a3
{
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (a3)
  {
    -[NSMutableDictionary removeObjectForKey:](self->_pools, "removeObjectForKey:", [MEMORY[0x1E696B098] valueWithPointer:a3]);
  }

  else
  {
    [BWDeferredCaptureContainerManager removeBufferPool:];
  }

  pthread_rwlock_unlock(&self->super._lock);
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return 0;
}

- (__CVBuffer)newPixelBuffer:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    [BWDeferredCaptureContainerManager newPixelBuffer:];
LABEL_7:
    v7 = 0;
    goto LABEL_4;
  }

  pthread_rwlock_rdlock(&self->super._lock);
  v3 = -[NSMutableDictionary objectForKeyedSubscript:](self->_pools, "objectForKeyedSubscript:", [MEMORY[0x1E696B098] valueWithPointer:v3]);
  v5 = v3;
  pthread_rwlock_unlock(&self->super._lock);
  if (!v3)
  {
    [BWDeferredCaptureContainerManager newPixelBuffer:];
    goto LABEL_7;
  }

  [BWDeferredContainerPixelBufferPoolWrapper newPixelBuffer];
  v7 = v6;
LABEL_4:

  return v7;
}

- (void)flush:(id)a3 toMinimumCapacity:(unint64_t)a4
{
  if (a3)
  {
    pthread_rwlock_rdlock(&self->super._lock);
    v9 = -[NSMutableDictionary objectForKeyedSubscript:](self->_pools, "objectForKeyedSubscript:", [MEMORY[0x1E696B098] valueWithPointer:a3]);
    v7 = v9;
    pthread_rwlock_unlock(&self->super._lock);
    [v9 flushToMinimumCapacity:a4];
    v8 = v9;
  }

  else
  {
    [BWDeferredCaptureContainerManager flush:toMinimumCapacity:];
    v8 = 0;
  }
}

- (uint64_t)_queryLowDiskThresholds:(uint64_t *)a3 veryLowDiskThresholdBytes:
{
  if (!a1)
  {
    return 0;
  }

  bzero(&v10, 0x200uLL);
  v9 = 0;
  v5 = [(NSString *)NSHomeDirectory() fileSystemRepresentation];
  if (statfs(v5, &v10))
  {
    OUTLINED_FUNCTION_0();
  }

  else if (fsctl(v10.f_mntonname, 0x4004681CuLL, &v9 + 4, 0))
  {
    OUTLINED_FUNCTION_0();
  }

  else
  {
    if (!fsctl(v10.f_mntonname, 0x4004681BuLL, &v9, 0))
    {
      v6 = v10.f_bsize * HIDWORD(v9);
      v7 = (v9 * v10.f_bsize);
      if (!a2)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    OUTLINED_FUNCTION_0();
  }

  FigDebugAssert3();
  v7 = 524288000;
  v6 = 734003200;
  if (a2)
  {
LABEL_6:
    *a2 = v6;
  }

LABEL_7:
  if (a3)
  {
    *a3 = v7;
  }

  return 0;
}

- (uint64_t)_containerForCaptureRequestIdentifier:(void *)a3 array:(uint64_t *)a4 index:
{
  if (result)
  {
    OUTLINED_FUNCTION_7_1();
    v9 = 3221225472;
    v10 = __87__BWDeferredCaptureContainerManager__containerForCaptureRequestIdentifier_array_index___block_invoke;
    v11 = &unk_1E7997330;
    v12 = v6;
    v7 = [a3 indexOfObjectPassingTest:v8];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      if (a4)
      {
        *a4 = v7;
      }

      return [a3 objectAtIndexedSubscript:v7];
    }
  }

  return result;
}

- (BOOL)_removeContainerForCaptureRequestIdentifier:(void *)a3 array:
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v4 = [(BWDeferredCaptureContainerManager *)a1 _containerForCaptureRequestIdentifier:a2 array:a3 index:&v7];
  v5 = v4 != 0;
  if (v4)
  {
    [a3 removeObjectAtIndex:v7];
  }

  return v5;
}

- (uint64_t)_flushContainer:(void *)a3 container:
{
  if (a1)
  {
    [a3 preflush];
    OUTLINED_FUNCTION_7_1();
    v9 = 3221225472;
    OUTLINED_FUNCTION_9_28();
    v10 = v6;
    v11 = &unk_1E7997358;
    v12 = a3;
    v13 = a1;
    v14 = 0;
    dispatch_async(a2, block);
  }

  return 0;
}

void __63__BWDeferredCaptureContainerManager__flushContainer_container___block_invoke(uint64_t a1)
{
  OUTLINED_FUNCTION_13_23();
  if (v2)
  {
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v3 = [*(a1 + 32) captureRequestIdentifier];
  [*(a1 + 32) flush];
  [(BWDeferredCaptureContainerManager *)*(a1 + 40) _reportCoreAnalyticsDataWithError:*(a1 + 32) container:?];
  pthread_rwlock_wrlock((*(a1 + 40) + 8));
  [(BWDeferredCaptureContainerManager *)*(a1 + 40) _removeContainerForCaptureRequestIdentifier:v3 array:*(*(a1 + 40) + 248)];
  pthread_rwlock_unlock((*(a1 + 40) + 8));
  OUTLINED_FUNCTION_13_23();
  if (v2)
  {
    OUTLINED_FUNCTION_17_14();

    kdebug_trace();
  }
}

- (uint64_t)_reportCoreAnalyticsDataWithError:(void *)a3 container:
{
  if (result)
  {
    v5 = objc_alloc_init(BWDeferredCaptureAnalyticsPayload);
    [(BWDeferredCaptureAnalyticsPayload *)v5 setError:a2];
    if (a3)
    {
      -[BWDeferredCaptureAnalyticsPayload setProcessingType:](v5, "setProcessingType:", [a3 processingType]);
      -[BWDeferredCaptureAnalyticsPayload setFileBacked:](v5, "setFileBacked:", [a3 cached] ^ 1);
      -[BWDeferredCaptureAnalyticsPayload setCommitDurationInMilliseconds:](v5, "setCommitDurationInMilliseconds:", [a3 commitDurationNS] / 0xF4240uLL);
      -[BWDeferredCaptureAnalyticsPayload setFlushDurationInMilliseconds:](v5, "setFlushDurationInMilliseconds:", [a3 flushDurationNS] / 0xF4240uLL);
    }

    v6 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v6 sendEvent:v5];
  }

  return result;
}

- (void)_rescheduleCacheExpiryTimer
{
  if (a1)
  {
    OUTLINED_FUNCTION_13_23();
    if (v2)
    {
      OUTLINED_FUNCTION_12_28();
      OUTLINED_FUNCTION_17_14();
      kdebug_trace();
    }

    if ([*(a1 + 256) count])
    {
      dispatch_source_set_timer(*(a1 + 232), [objc_msgSend(*(a1 + 256) "firstObject")], 0xFFFFFFFFFFFFFFFFLL, 0);
      OUTLINED_FUNCTION_8_7();
      v5 = 3221225472;
      v6 = __64__BWDeferredCaptureContainerManager__rescheduleCacheExpiryTimer__block_invoke;
      v7 = &unk_1E798F870;
      v8 = a1;
      dispatch_source_set_event_handler(v3, handler);
      dispatch_resume(*(a1 + 232));
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    OUTLINED_FUNCTION_13_23();
    if (v2)
    {
      OUTLINED_FUNCTION_17_14();
      kdebug_trace();
    }
  }
}

- (uint64_t)_handleExpiryTimer
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18();
  if (v2)
  {
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  dispatch_suspend(*(a1 + 232));
  pthread_rwlock_wrlock((a1 + 8));
  if (![*(a1 + 256) count])
  {
    goto LABEL_8;
  }

  v3 = [*(a1 + 256) objectAtIndexedSubscript:0];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 248) addObject:v3];
    [*(a1 + 256) removeObjectAtIndex:0];
    v5 = *(a1 + 272);
    [v4 preflush];
    OUTLINED_FUNCTION_8_7();
    v10 = 3221225472;
    OUTLINED_FUNCTION_9_28();
    v11 = v6;
    v12 = &unk_1E7997358;
    v13 = v4;
    v14 = a1;
    v15 = 0;
    dispatch_async(v5, block);
    [(BWDeferredCaptureContainerManager *)a1 _rescheduleCacheExpiryTimer];
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  v7 = 4294951160;
LABEL_9:
  pthread_rwlock_unlock((a1 + 8));
  OUTLINED_FUNCTION_18();
  if (v2)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v7;
}

- (void)_updateCacheEntryForContainer:(uint64_t)a1 release:
{
  if (a1)
  {
    OUTLINED_FUNCTION_25_10();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    if ([*(v5 + 256) count])
    {
      dispatch_suspend(*(v6 + 232));
    }

    if (v2)
    {
      if (!OUTLINED_FUNCTION_22_13([v4 captureRequestIdentifier]))
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
      }
    }

    else
    {
      v7 = v4;
      OUTLINED_FUNCTION_22_13([v4 captureRequestIdentifier]);
      [v4 setCached:1];
      [v4 setCacheExpiryTime:{dispatch_time(0, 1000000000 * *(v6 + 228))}];
      [*(v6 + 256) insertObject:v4 atIndex:{objc_msgSend(*(v6 + 256), "indexOfObject:inSortedRange:options:usingComparator:", v4, 0, objc_msgSend(*(v6 + 256), "count"), 1024, &__block_literal_global_99)}];
    }

    OUTLINED_FUNCTION_24_12();

    [(BWDeferredCaptureContainerManager *)v8 _rescheduleCacheExpiryTimer];
  }
}

- (BOOL)canDefer
{
  bzero(&v5, 0x200uLL);
  v3 = [(NSString *)NSHomeDirectory() fileSystemRepresentation];
  if (statfs(v3, &v5))
  {
    return 0;
  }

  if (v5.f_bavail * v5.f_bsize <= self->_cachedLowDiskThresholdBytes)
  {
    [(BWDeferredCaptureContainerManager *)self _reportCoreAnalyticsDataWithError:0 container:?];
    return 0;
  }

  return 1;
}

- (id)lookupCaptureContainer:(id)a3
{
  OUTLINED_FUNCTION_25_10();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_rdlock((v6 + 8));
  if (v4)
  {
    if (v6)
    {
      v8 = OUTLINED_FUNCTION_3_53();
      v4 = [(BWDeferredCaptureContainerManager *)v8 _containerForCaptureRequestIdentifier:v9 array:v10 index:0];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  pthread_rwlock_unlock((v6 + 8));
  OUTLINED_FUNCTION_18();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  v11 = v4;
  OUTLINED_FUNCTION_24_12();

  return v12;
}

- (int)containerWaitForFlush:(id)a3
{
  pthread_rwlock_rdlock(&self->super._lock);
  if (self && (v4 = OUTLINED_FUNCTION_3_53(), (v7 = [(BWDeferredCaptureContainerManager *)v4 _containerForCaptureRequestIdentifier:v5 array:v6 index:0]) != 0))
  {
    v8 = [v7 waitForFlush];
  }

  else
  {
    v8 = 0;
  }

  pthread_rwlock_unlock(&self->super._lock);
  return v8;
}

- (uint64_t)_enumerateManifestsForApplicationID:(uint64_t)a3 manifestArray:(int)a4 deleteInvalidContainers:
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v104[0] = 0;
  v53 = a2;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF.applicationID == %@"];
  pthread_rwlock_wrlock((v7 + 8));
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v9 = [*(v7 + 256) filteredArrayUsingPredicate:v8];
  v10 = [v9 countByEnumeratingWithState:&v100 objects:v99 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v101;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v101 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v100 + 1) + 8 * i) manifest];
        OUTLINED_FUNCTION_16_20();
      }

      v11 = [v9 countByEnumeratingWithState:&v100 objects:v99 count:16];
    }

    while (v11);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v14 = [*(v7 + 248) filteredArrayUsingPredicate:v8];
  v15 = [v14 countByEnumeratingWithState:&v95 objects:v94 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v96;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v96 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v95 + 1) + 8 * j) manifest];
        OUTLINED_FUNCTION_16_20();
      }

      v16 = [v14 countByEnumeratingWithState:&v95 objects:v94 count:16];
    }

    while (v16);
  }

  pthread_rwlock_unlock((v7 + 8));
  v69 = @"/var/mobile/Media/Deferred/CaptureContainers";
  v70 = a2;
  v19 = [MEMORY[0x1E695DFF8] fileURLWithPathComponents:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v69, 2)}];
  v20 = [MEMORY[0x1E696AC08] defaultManager];
  v21 = [v20 enumeratorAtURL:v19 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:5 errorHandler:0];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v21;
  result = [v21 countByEnumeratingWithState:&v90 objects:v89 count:16];
  if (!result)
  {
    return result;
  }

  v23 = result;
  HIDWORD(v58) = a4;
  v59 = v4;
  v24 = 0;
  HIDWORD(v60) = 0;
  v25 = *v91;
  *&v22 = 136316162;
  *v57 = v22;
  while (2)
  {
    v26 = 0;
    if (v24 <= 0x3FF)
    {
      v27 = 1023 - v24;
    }

    else
    {
      v27 = 0;
    }

    do
    {
      if (*v91 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v90 + 1) + 8 * v26);
      v29 = objc_autoreleasePoolPush();
      v30 = objc_alloc(MEMORY[0x1E696AFB0]);
      v31 = [v30 initWithUUIDString:{objc_msgSend(v28, "lastPathComponent")}];
      if (v31)
      {
        v30 = v31;
        pthread_rwlock_rdlock((v7 + 8));
        if (-[BWDeferredCaptureContainerManager _containerForCaptureRequestIdentifier:array:index:](v7, [v30 UUIDString], *(v7 + 240), 0) || -[BWDeferredCaptureContainerManager _containerForCaptureRequestIdentifier:array:index:](v7, objc_msgSend(v30, "UUIDString"), *(v7 + 248), 0))
        {
          pthread_rwlock_unlock((v7 + 8));
          goto LABEL_26;
        }

        pthread_rwlock_unlock((v7 + 8));
        [BWDeferredContainer manifestDictionaryForURL:v28 err:v104];
        if (!v104[0])
        {
          OUTLINED_FUNCTION_16_20();
          goto LABEL_26;
        }

        v54 = v59;
        LODWORD(v53) = v104[0];
        FigDebugAssert3();
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
        v104[0] = -16132;
      }

      if (HIDWORD(v58))
      {
        v88 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v32 = OUTLINED_FUNCTION_15_18();
        OUTLINED_FUNCTION_20_12(v32, v33, v34, v35, v36, v37, v38, v39, v53, v54, v55, v56, SHIDWORD(v56), v57[0], v57[1], v58, v59, v60, obj, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, type, v88);
        OUTLINED_FUNCTION_17_17();
        if (v30)
        {
          [v28 path];
          LODWORD(v62) = v57[0];
          OUTLINED_FUNCTION_11_26();
          OUTLINED_FUNCTION_6_40();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_5_46();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v69 = 0;
        [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
        v48 = HIDWORD(v60);
        if (v69)
        {
          v48 = HIDWORD(v60) + 1;
        }

        HIDWORD(v60) = v48;
      }

      else
      {
        v88 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v40 = OUTLINED_FUNCTION_15_18();
        OUTLINED_FUNCTION_20_12(v40, v41, v42, v43, v44, v45, v46, v47, v53, v54, v55, v56, SHIDWORD(v56), v57[0], v57[1], v58, v59, v60, obj, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, type, v88);
        OUTLINED_FUNCTION_17_17();
        if (v30)
        {
          [v28 path];
          LODWORD(v62) = v57[0];
          OUTLINED_FUNCTION_11_26();
          OUTLINED_FUNCTION_6_40();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_5_46();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_26:
      if (v27 == v26)
      {
        v88 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v50 = OUTLINED_FUNCTION_15_18();
        v51 = v88;
        if (os_log_type_enabled(v50, type))
        {
          v52 = v51;
        }

        else
        {
          v52 = v51 & 0xFFFFFFFE;
        }

        if (v52)
        {
          OUTLINED_FUNCTION_21();
        }

        OUTLINED_FUNCTION_5_46();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        objc_autoreleasePoolPop(v29);
        goto LABEL_51;
      }

      ++v24;
      objc_autoreleasePoolPop(v29);
      ++v26;
    }

    while (v23 != v26);
    v49 = [obj countByEnumeratingWithState:&v90 objects:v89 count:16];
    v23 = v49;
    if (v49)
    {
      continue;
    }

    break;
  }

LABEL_51:
  if (HIDWORD(v60))
  {
    return 4294951157;
  }

  else
  {
    return v104[0];
  }
}

- (int)queryContainerStatusForApplicationID:(id)a3 captureRequestIdentifier:(id)a4 status:(int *)a5
{
  OUTLINED_FUNCTION_10_27();
  if (v7)
  {
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (self)
  {
    if (OUTLINED_FUNCTION_23_11(256))
    {
      [BWDeferredCaptureContainerManager _updateCacheEntryForContainer:? release:?];
      v11 = 0;
      LODWORD(v9) = 1;
      goto LABEL_11;
    }

    v8 = OUTLINED_FUNCTION_23_11(248);
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = [v9 waitForFlushWithTimeoutInSeconds:7];

      LODWORD(v9) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v11 = 0;
LABEL_11:
  pthread_rwlock_unlock(&self->super._lock);
  if (a5)
  {
    *a5 = v9;
  }

  OUTLINED_FUNCTION_10_27();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v11;
}

- (int)deleteContainerForApplicationID:(id)a3 captureRequestIdentifier:(id)a4
{
  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  pthread_rwlock_wrlock(&self->super._lock);
  if (!a3 || !a4)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
    goto LABEL_27;
  }

  if (!self)
  {
LABEL_27:
    LODWORD(v20) = 0;
    goto LABEL_28;
  }

  v8 = OUTLINED_FUNCTION_3_53();
  v11 = [(BWDeferredCaptureContainerManager *)v8 _containerForCaptureRequestIdentifier:v9 array:v10 index:0];
  if (v11)
  {
    v20 = v11;
    v22 = v11;
    v23 = OUTLINED_FUNCTION_3_53();
    [(BWDeferredCaptureContainerManager *)v23 _removeContainerForCaptureRequestIdentifier:v24 array:v25];
    goto LABEL_13;
  }

  v12 = OUTLINED_FUNCTION_3_53();
  v15 = [(BWDeferredCaptureContainerManager *)v12 _containerForCaptureRequestIdentifier:v13 array:v14 index:0];
  if (v15)
  {
    v20 = v15;
    v26 = v15;
    [BWDeferredCaptureContainerManager _updateCacheEntryForContainer:? release:?];
    goto LABEL_13;
  }

  v16 = OUTLINED_FUNCTION_3_53();
  v19 = [(BWDeferredCaptureContainerManager *)v16 _containerForCaptureRequestIdentifier:v17 array:v18 index:0];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
LABEL_13:
    v27 = [v20 waitForFlush];

    LODWORD(v20) = 1;
    goto LABEL_14;
  }

LABEL_28:
  v27 = 0;
LABEL_14:
  v32.receiver = self;
  v32.super_class = BWDeferredCaptureContainerManager;
  v28 = [(BWDeferredContainerManagerBase *)&v32 deleteContainerForApplicationID:a3 captureRequestIdentifier:a4];
  if (v28 == 4)
  {
    v29 = v20;
  }

  else
  {
    v29 = 0;
  }

  if (!v28)
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = v27;
  }

  else
  {
    v30 = v28;
  }

  pthread_rwlock_unlock(&self->super._lock);
  OUTLINED_FUNCTION_19_2();
  if (v7)
  {
    OUTLINED_FUNCTION_17_14();
    kdebug_trace();
  }

  return v30;
}

- (uint64_t)commitContainer:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a1 = -12780;
  return result;
}

- (uint64_t)commitContainer:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a1 = -12780;
  return result;
}

- (uint64_t)copyRemoteContainerForApplicationID:(_DWORD *)a1 captureRequestIdentifier:err:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a1 = -16132;
  return result;
}

- (uint64_t)copyRemoteContainerForApplicationID:(_DWORD *)a1 captureRequestIdentifier:err:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3();
  *a1 = -16134;
  return result;
}

- (uint64_t)releaseRemoteContainerForApplicationID:(uint64_t)a1 captureRequestIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  if (![(BWDeferredCaptureContainerManager *)a1 _containerForCaptureRequestIdentifier:a2 array:*(a1 + 256) index:0])
  {
    return 1;
  }

  [BWDeferredCaptureContainerManager _updateCacheEntryForContainer:a1 release:?];
  return 0;
}

@end