@interface BWInferenceSharedResourceManager
+ (void)initialize;
- (BWInferenceSharedResourceManager)init;
- (id)description;
- (id)retrieveSharedResourceForResourceCategoryAndLockIfNotAvailable:(id)available;
- (uint64_t)_addSharedResource:(uint64_t)resource toSharedResourceDirectoryForResourceCategory:;
- (uint64_t)_purgeAllSharedResources;
- (void)dealloc;
- (void)finalizeResourceCreationAttemptForCategory:(id)category;
- (void)stashSharedResource:(id)resource forResourceCategory:(id)category;
@end

@implementation BWInferenceSharedResourceManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWInferenceSharedResourceManager)init
{
  v4.receiver = self;
  v4.super_class = BWInferenceSharedResourceManager;
  v2 = [(BWInferenceSharedResourceManager *)&v4 init];
  if (v2)
  {
    v2->_sharedResourceDirectoryByCategory = objc_alloc_init(MEMORY[0x1E695DF90]);
    pthread_rwlock_init(&v2->_sharedResourceDirectoryRWLock, 0);
    v2->_resourcesBeingCreated = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_conditionVariablesTrackedByResourceCategory = objc_alloc_init(MEMORY[0x1E695DF90]);
    pthread_mutex_init(&v2->_resourceCreationMutex, 0);
  }

  return v2;
}

- (void)dealloc
{
  [(BWInferenceSharedResourceManager *)self _purgeAllSharedResources];
  v3.receiver = self;
  v3.super_class = BWInferenceSharedResourceManager;
  [(BWInferenceSharedResourceManager *)&v3 dealloc];
}

- (void)stashSharedResource:(id)resource forResourceCategory:(id)category
{
  pthread_rwlock_wrlock(&self->_sharedResourceDirectoryRWLock);
  [(BWInferenceSharedResourceManager *)self _addSharedResource:resource toSharedResourceDirectoryForResourceCategory:category];
  __dmb(0xBu);
  pthread_rwlock_unlock(&self->_sharedResourceDirectoryRWLock);
  pthread_mutex_lock(&self->_resourceCreationMutex);
  pthread_cond_broadcast([-[NSMutableDictionary objectForKeyedSubscript:](self->_conditionVariablesTrackedByResourceCategory objectForKeyedSubscript:{category), "pointerValue"}]);
  [(NSMutableSet *)self->_resourcesBeingCreated removeObject:category];

  pthread_mutex_unlock(&self->_resourceCreationMutex);
}

- (id)retrieveSharedResourceForResourceCategoryAndLockIfNotAvailable:(id)available
{
  pthread_rwlock_rdlock(&self->_sharedResourceDirectoryRWLock);
  v5 = [(NSMutableDictionary *)self->_sharedResourceDirectoryByCategory objectForKeyedSubscript:available];
  pthread_rwlock_unlock(&self->_sharedResourceDirectoryRWLock);
  if (!v5)
  {
    pthread_mutex_lock(&self->_resourceCreationMutex);
    if ([(NSMutableSet *)self->_resourcesBeingCreated containsObject:available])
    {
      do
      {
        v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_conditionVariablesTrackedByResourceCategory objectForKeyedSubscript:{available), "pointerValue"}];
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_REALTIME, &__tp);
        __tp.tv_sec += 5;
        if (pthread_cond_timedwait(v6, &self->_resourceCreationMutex, &__tp) == 60)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v8 = _os_log_send_and_compose_impl();
          FigCapturePleaseFileRadar(11, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Inference/Scheduling/SharedResourceManagement/BWInferenceSharedResourceManager.m", 182, @"LastShownDate:BWInferenceSharedResourceManager.m:182", @"LastShownBuild:BWInferenceSharedResourceManager.m:182", 0);
          free(v8);
          [(NSMutableSet *)self->_resourcesBeingCreated removeObject:available];
        }

        else
        {
          pthread_rwlock_rdlock(&self->_sharedResourceDirectoryRWLock);
          v5 = [(NSMutableDictionary *)self->_sharedResourceDirectoryByCategory objectForKeyedSubscript:available];
          pthread_rwlock_unlock(&self->_sharedResourceDirectoryRWLock);
          if (v5)
          {
            goto LABEL_11;
          }

          [(NSMutableSet *)self->_resourcesBeingCreated containsObject:available];
        }
      }

      while (([(NSMutableSet *)self->_resourcesBeingCreated containsObject:available]& 1) != 0);
    }

    [(NSMutableSet *)self->_resourcesBeingCreated addObject:available];
    if (![(NSMutableDictionary *)self->_conditionVariablesTrackedByResourceCategory objectForKeyedSubscript:available])
    {
      v9 = malloc_type_malloc(0x30uLL, 0x1000040EED21634uLL);
      pthread_cond_init(v9, 0);
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_conditionVariablesTrackedByResourceCategory, "setObject:forKeyedSubscript:", [MEMORY[0x1E696B098] valueWithPointer:v9], available);
    }

    pthread_mutex_unlock(&self->_resourceCreationMutex);
    v5 = 0;
LABEL_11:
    pthread_mutex_unlock(&self->_resourceCreationMutex);
  }

  return v5;
}

- (void)finalizeResourceCreationAttemptForCategory:(id)category
{
  pthread_mutex_lock(&self->_resourceCreationMutex);
  if ([(NSMutableSet *)self->_resourcesBeingCreated containsObject:category])
  {
    pthread_cond_broadcast([-[NSMutableDictionary objectForKeyedSubscript:](self->_conditionVariablesTrackedByResourceCategory objectForKeyedSubscript:{category), "pointerValue"}]);
    [(NSMutableSet *)self->_resourcesBeingCreated removeObject:category];
  }

  pthread_mutex_unlock(&self->_resourceCreationMutex);
}

void __60__BWInferenceSharedResourceManager__purgeAllSharedResources__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 pointerValue];
  pthread_cond_broadcast(v3);
  pthread_cond_destroy(v3);

  free(v3);
}

uint64_t __85__BWInferenceSharedResourceManager__removeSharedResourcesFromSharedResourceContainer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [a2 isEqualToString:{+[BWInferenceSharedE5ANEMemoryProvider resourceCategory](BWInferenceSharedE5ANEMemoryProvider, "resourceCategory")}];
  if (result)
  {
    [a3 pointerValue];
    return e5rt_ane_memory_provider_release();
  }

  return result;
}

- (id)description
{
  pthread_rwlock_rdlock(&self->_sharedResourceDirectoryRWLock);
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"BWInferenceResourceManager\nTotal Resources: %lu\n", -[NSMutableDictionary count](self->_sharedResourceDirectoryByCategory, "count")];
  if ([(NSMutableDictionary *)self->_sharedResourceDirectoryByCategory count])
  {
    [v3 appendString:@"Stored Resources:\n"];
    sharedResourceDirectoryByCategory = self->_sharedResourceDirectoryByCategory;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__BWInferenceSharedResourceManager_description__block_invoke;
    v6[3] = &unk_1E7999428;
    v6[4] = v3;
    [(NSMutableDictionary *)sharedResourceDirectoryByCategory enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    [v3 appendString:@"No resources currently stored.\n"];
  }

  pthread_rwlock_unlock(&self->_sharedResourceDirectoryRWLock);
  return v3;
}

- (uint64_t)_purgeAllSharedResources
{
  if (result)
  {
    v1 = result;
    if (dword_1EB58E140)
    {
      v2 = OUTLINED_FUNCTION_1_85();
      if (os_log_type_enabled(v2, v6))
      {
        v3 = v7;
      }

      else
      {
        v3 = v7 & 0xFFFFFFFE;
      }

      if (v3)
      {
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_77();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    mach_absolute_time();
    pthread_rwlock_wrlock((v1 + 8));
    [*(v1 + 208) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_23];
    [*(v1 + 208) removeAllObjects];

    pthread_rwlock_unlock((v1 + 8));
    pthread_rwlock_destroy((v1 + 8));
    pthread_mutex_lock((v1 + 216));

    [*(v1 + 288) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_81];
    [*(v1 + 288) removeAllObjects];

    pthread_mutex_unlock((v1 + 216));
    result = pthread_mutex_destroy((v1 + 216));
    if (dword_1EB58E140)
    {
      v4 = OUTLINED_FUNCTION_1_85();
      if (os_log_type_enabled(v4, v6))
      {
        v5 = v7;
      }

      else
      {
        v5 = v7 & 0xFFFFFFFE;
      }

      if (v5)
      {
        mach_absolute_time();
        FigHostTimeToNanoseconds();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_77();
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (uint64_t)_addSharedResource:(uint64_t)resource toSharedResourceDirectoryForResourceCategory:
{
  if (result)
  {
    v5 = result;
    if ([*(result + 208) objectForKeyedSubscript:?])
    {
      [*(v5 + 208) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_23];
      [*(v5 + 208) removeAllObjects];
    }

    v6 = *(v5 + 208);

    return [v6 setObject:a2 forKeyedSubscript:resource];
  }

  return result;
}

@end