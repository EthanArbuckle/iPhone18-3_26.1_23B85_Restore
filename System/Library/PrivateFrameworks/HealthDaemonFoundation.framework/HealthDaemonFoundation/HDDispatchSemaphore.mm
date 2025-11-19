@interface HDDispatchSemaphore
- (HDDispatchSemaphore)initWithCount:(unint64_t)a3 options:(unint64_t)a4 debugIdentifier:(id)a5;
- (void)waitWithPriority:(int64_t)a3;
@end

@implementation HDDispatchSemaphore

- (HDDispatchSemaphore)initWithCount:(unint64_t)a3 options:(unint64_t)a4 debugIdentifier:(id)a5
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = HDDispatchSemaphore;
  v10 = [(HDDispatchSemaphore *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = a4;
    objc_storeStrong(&v10->_debugIdentifier, a5);
    v12 = dispatch_semaphore_create(a3);
    semaphore = v11->_semaphore;
    v11->_semaphore = v12;

    v11->_waitCount = 0;
    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_signpost = 0;
    v11->_isHighCount = 0;
  }

  return v11;
}

- (void)waitWithPriority:(int64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_options)
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = self->_waitCount + 1;
    self->_waitCount = v4;
    if (v4 >= 0x14 && !self->_isHighCount)
    {
      self->_isHighCount = 1;
      v5 = MEMORY[0x277CCC2A0];
      v6 = *MEMORY[0x277CCC2A0];
      self->_signpost = _HKLogSignpostIDGenerate();
      _HKInitializeLogging();
      v7 = *v5;
      if (os_signpost_enabled(v7))
      {
        v8 = v7;
        v9 = v8;
        signpost = self->_signpost;
        if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
        {
          v11 = [(NSString *)self->_debugIdentifier cStringUsingEncoding:4];
          v19 = 136446210;
          v20 = v11;
          _os_signpost_emit_with_name_impl(&dword_25156C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "HDDatabase-semaphore-high-count", "Name: %{public}s", &v19, 0xCu);
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_options)
  {
    os_unfair_lock_lock(&self->_lock);
    v12 = self->_waitCount - 1;
    self->_waitCount = v12;
    if (v12 <= 4 && self->_isHighCount)
    {
      self->_isHighCount = 0;
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v14 = v13;
        v15 = v14;
        v16 = self->_signpost;
        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          v17 = [(NSString *)self->_debugIdentifier cStringUsingEncoding:4];
          v19 = 136446210;
          v20 = v17;
          _os_signpost_emit_with_name_impl(&dword_25156C000, v15, OS_SIGNPOST_INTERVAL_END, v16, "HDDatabase-semaphore-high-count", "Name: %{public}s", &v19, 0xCu);
        }
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end