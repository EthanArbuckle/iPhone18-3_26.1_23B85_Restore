@interface BWInferenceSharedE5ANEMemoryProvider
+ (void)initialize;
- (BWInferenceSharedE5ANEMemoryProvider)init;
- (e5rt_ane_memory_provider)fetchANEMemoryProviderForNetwork:(id)network;
- (id)description;
- (int)registerANEMemoryProvider:(e5rt_ane_memory_provider *)provider forNetwork:(id)network;
- (void)completeANEMemoryProviderCreationForNetwork:(id)network wasSuccessful:(BOOL)successful;
- (void)dealloc;
@end

@implementation BWInferenceSharedE5ANEMemoryProvider

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWInferenceSharedE5ANEMemoryProvider)init
{
  v5.receiver = self;
  v5.super_class = BWInferenceSharedE5ANEMemoryProvider;
  v2 = [(BWInferenceSharedResourceManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_networkListLock._os_unfair_lock_opaque = 0;
    v2->_networksUsingE5ANEMemoryProvider = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v3;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_networkListLock);
  if (dword_1EB58E160)
  {
    v6 = 0;
    v5 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_unlock(&self->_networkListLock);
  v4.receiver = self;
  v4.super_class = BWInferenceSharedE5ANEMemoryProvider;
  [(BWInferenceSharedResourceManager *)&v4 dealloc];
}

- (id)description
{
  os_unfair_lock_lock(&self->_networkListLock);
  v5.receiver = self;
  v5.super_class = BWInferenceSharedE5ANEMemoryProvider;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ | Networks Using E5ANEMemoryProvider: %@", -[BWInferenceSharedResourceManager description](&v5, sel_description), objc_msgSend(-[NSMutableSet allObjects](self->_networksUsingE5ANEMemoryProvider, "allObjects"), "componentsJoinedByString:", @", ")];
  os_unfair_lock_unlock(&self->_networkListLock);
  return v3;
}

- (int)registerANEMemoryProvider:(e5rt_ane_memory_provider *)provider forNetwork:(id)network
{
  if (!provider)
  {
    return -31710;
  }

  if (!+[BWInferenceSharedE5ANEMemoryProvider resourceCategory])
  {
    return -31710;
  }

  -[BWInferenceSharedResourceManager stashSharedResource:forResourceCategory:](self, "stashSharedResource:forResourceCategory:", [MEMORY[0x1E696B098] valueWithPointer:provider], +[BWInferenceSharedE5ANEMemoryProvider resourceCategory](BWInferenceSharedE5ANEMemoryProvider, "resourceCategory"));
  os_unfair_lock_lock(&self->_networkListLock);
  [(NSMutableSet *)self->_networksUsingE5ANEMemoryProvider addObject:network];
  os_unfair_lock_unlock(&self->_networkListLock);
  return 0;
}

- (e5rt_ane_memory_provider)fetchANEMemoryProviderForNetwork:(id)network
{
  if (!network)
  {
    return 0;
  }

  if (!+[BWInferenceSharedE5ANEMemoryProvider resourceCategory])
  {
    return 0;
  }

  v4 = [(BWInferenceSharedResourceManager *)self retrieveSharedResourceForResourceCategoryAndLockIfNotAvailable:+[BWInferenceSharedE5ANEMemoryProvider resourceCategory]];
  if (!v4)
  {
    return 0;
  }

  pointerValue = [v4 pointerValue];
  if (pointerValue)
  {
    os_unfair_lock_lock(&self->_networkListLock);
    if (([OUTLINED_FUNCTION_0_76() containsObject:?] & 1) == 0)
    {
      [OUTLINED_FUNCTION_0_76() addObject:?];
    }

    os_unfair_lock_unlock(&self->_networkListLock);
  }

  return pointerValue;
}

- (void)completeANEMemoryProviderCreationForNetwork:(id)network wasSuccessful:(BOOL)successful
{
  if (+[BWInferenceSharedE5ANEMemoryProvider resourceCategory])
  {
    if (!successful)
    {
      os_unfair_lock_lock(&self->_networkListLock);
      if ([OUTLINED_FUNCTION_0_76() containsObject:?])
      {
        [OUTLINED_FUNCTION_0_76() removeObject:?];
      }

      os_unfair_lock_unlock(&self->_networkListLock);
    }

    v6 = +[BWInferenceSharedE5ANEMemoryProvider resourceCategory];

    [(BWInferenceSharedResourceManager *)self finalizeResourceCreationAttemptForCategory:v6];
  }
}

@end