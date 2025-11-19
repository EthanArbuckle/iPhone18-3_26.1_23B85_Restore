@interface REProxyAudioClockManager
+ (id)sharedInstance;
- (OpaqueCMClock)_copyAudioClock;
- (OpaqueCMClock)copyAudioClock;
- (REProxyAudioClockManager)init;
- (id).cxx_construct;
- (void)_addClock:(OpaqueCMClock *)a3;
- (void)_removeClock:(OpaqueCMClock *)a3;
- (void)_routeChangeOrMediaServicesReset:(id)a3;
- (void)_setAudioClock:(OpaqueCMClock *)a3;
- (void)_setUp;
- (void)_tearDown;
- (void)_updateClock:(OpaqueCMClock *)a3;
- (void)_updateClocks;
- (void)_updateClocksWithRate:(double)a3 ownTime:(id *)a4 referenceTime:(id *)a5;
- (void)addClock:(OpaqueCMClock *)a3;
- (void)dealloc;
- (void)removeClock:(OpaqueCMClock *)a3;
- (void)routeChangeOrMediaServicesReset:(id)a3;
@end

@implementation REProxyAudioClockManager

+ (id)sharedInstance
{
  if (qword_1EE1C40F0 != -1)
  {
    dispatch_once(&qword_1EE1C40F0, &__block_literal_global_4_2);
  }

  v3 = qword_1EE1C40F8;

  return v3;
}

void __42__REProxyAudioClockManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(REProxyAudioClockManager);
  v1 = qword_1EE1C40F8;
  qword_1EE1C40F8 = v0;
}

- (REProxyAudioClockManager)init
{
  v13.receiver = self;
  v13.super_class = REProxyAudioClockManager;
  v2 = [(REProxyAudioClockManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("REProxyAudioClockManager audio clock update", v3);
    v5 = *(v2 + 9);
    *(v2 + 9) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("REProxyAudioClockManager access", v6);
    v8 = *(v2 + 11);
    *(v2 + 11) = v7;

    *(v2 + 1) = 0x3FF0000000000000;
    v9 = MEMORY[0x1E6960CC0];
    v10 = *(MEMORY[0x1E6960CC0] + 16);
    v11 = *MEMORY[0x1E6960CC0];
    *(v2 + 1) = *MEMORY[0x1E6960CC0];
    *(v2 + 4) = v10;
    *(v2 + 40) = v11;
    *(v2 + 7) = *(v9 + 16);
  }

  return v2;
}

- (void)dealloc
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__REProxyAudioClockManager_dealloc__block_invoke;
  block[3] = &unk_1E871AA90;
  block[4] = self;
  dispatch_sync(queue, block);
  v4.receiver = self;
  v4.super_class = REProxyAudioClockManager;
  [(REProxyAudioClockManager *)&v4 dealloc];
}

- (void)_setUp
{
  if (!self->_initialized)
  {
    objc_initWeak(&location, self);
    audioClockUpdateQueue = self->_audioClockUpdateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__REProxyAudioClockManager__setUp__block_invoke;
    block[3] = &unk_1E8721D28;
    objc_copyWeak(&v15, &location);
    block[4] = self;
    dispatch_async(audioClockUpdateQueue, block);
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_audioClockUpdateQueue);
    timer = self->_timer;
    self->_timer = v4;

    dispatch_source_set_timer(self->_timer, 0, 0x3B9ACA00uLL, 0xF4240uLL);
    v6 = self->_timer;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __34__REProxyAudioClockManager__setUp__block_invoke_9;
    v12 = &unk_1E8721D50;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v6, &v9);
    dispatch_resume(self->_timer);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:self selector:sel_routeChangeOrMediaServicesReset_ name:*MEMORY[0x1E698D5C0] object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:self selector:sel_routeChangeOrMediaServicesReset_ name:*MEMORY[0x1E698D6D0] object:0];

    self->_initialized = 1;
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __34__REProxyAudioClockManager__setUp__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    clockOut = 0;
    v3 = CMAudioClockCreate(*MEMORY[0x1E695E480], &clockOut);
    if (v3)
    {
      v4 = v3;
      v5 = ManualClockLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v10 = v4;
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Failed to create audio clock: %d. Falling back to host clock.", buf, 8u);
      }

      HostTimeClock = CMClockGetHostTimeClock();
      v7 = CFRetain(HostTimeClock);
      clockOut = v7;
    }

    else
    {
      v7 = clockOut;
    }

    [*(a1 + 32) _setAudioClock:v7];
    CFRelease(clockOut);
  }
}

void __34__REProxyAudioClockManager__setUp__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateClocks];
    WeakRetained = v2;
  }
}

- (void)_tearDown
{
  if (self->_initialized)
  {
    location[5] = v2;
    location[6] = v3;
    timer = self->_timer;
    if (timer)
    {
      dispatch_source_cancel(timer);
      v6 = self->_timer;
      self->_timer = 0;
    }

    objc_initWeak(location, self);
    audioClockUpdateQueue = self->_audioClockUpdateQueue;
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __37__REProxyAudioClockManager__tearDown__block_invoke;
    v13 = &unk_1E8721D50;
    objc_copyWeak(&v14, location);
    dispatch_async(audioClockUpdateQueue, &v10);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 removeObserver:self name:*MEMORY[0x1E698D5C0] object:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:self name:*MEMORY[0x1E698D6D0] object:0];

    self->_initialized = 0;
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

void __37__REProxyAudioClockManager__tearDown__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setAudioClock:0];
    WeakRetained = v2;
  }
}

- (void)_routeChangeOrMediaServicesReset:(id)a3
{
  if (self->_initialized)
  {
    [(REProxyAudioClockManager *)self _tearDown];

    [(REProxyAudioClockManager *)self _setUp];
  }
}

- (void)_addClock:(OpaqueCMClock *)a3
{
  if (!self->_clocks.__table_.__size_)
  {
    [(REProxyAudioClockManager *)self _setUp];
  }

  [(REProxyAudioClockManager *)self _updateClock:a3];
  v5 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ (a3 >> 32));
  v6 = 0x9DDFEA08EB382D69 * ((a3 >> 32) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  size = self->_clocks.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(size);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
    if (v7 >= size)
    {
      v10 = v7 % size;
    }
  }

  else
  {
    v10 = (size - 1) & v7;
  }

  v11 = self->_clocks.__table_.__bucket_list_.__ptr_[v10];
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= size)
      {
        v13 %= size;
      }
    }

    else
    {
      v13 &= size - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (v12[2] != a3)
  {
    goto LABEL_19;
  }
}

- (void)_removeClock:(OpaqueCMClock *)a3
{
  size = self->_clocks.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_47;
  }

  v5 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ (a3 >> 32));
  v6 = 0x9DDFEA08EB382D69 * ((a3 >> 32) ^ (v5 >> 47) ^ v5);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47));
  v8 = vcnt_s8(size);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v7;
    if (v7 >= size)
    {
      v9 = v7 % size;
    }
  }

  else
  {
    v9 = (size - 1) & v7;
  }

  ptr = self->_clocks.__table_.__bucket_list_.__ptr_;
  v11 = ptr[v9];
  if (!v11)
  {
    goto LABEL_47;
  }

  v12 = *v11;
  if (!*v11)
  {
    goto LABEL_47;
  }

  v13 = size - 1;
  while (1)
  {
    next = v12[1].__next_;
    if (next == v7)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (next >= size)
      {
        next %= size;
      }
    }

    else
    {
      next &= v13;
    }

    if (next != v9)
    {
      goto LABEL_47;
    }

LABEL_17:
    v12 = v12->__next_;
    if (!v12)
    {
      goto LABEL_47;
    }
  }

  if (v12[2].__next_ != a3)
  {
    goto LABEL_17;
  }

  v15 = v12->__next_;
  if (v8.u32[0] > 1uLL)
  {
    if (v7 >= size)
    {
      v7 %= size;
    }
  }

  else
  {
    v7 &= v13;
  }

  v16 = ptr[v7];
  do
  {
    v17 = v16;
    v16 = v16->__next_;
  }

  while (v16 != v12);
  if (v17 == &self->_clocks.__table_.__first_node_)
  {
    goto LABEL_36;
  }

  v18 = v17[1].__next_;
  if (v8.u32[0] > 1uLL)
  {
    if (v18 >= size)
    {
      v18 %= size;
    }
  }

  else
  {
    v18 &= v13;
  }

  if (v18 == v7)
  {
LABEL_38:
    if (v15)
    {
      v19 = v15[1].__next_;
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
    if (!v15)
    {
      goto LABEL_37;
    }

    v19 = v15[1].__next_;
    if (v8.u32[0] > 1uLL)
    {
      v20 = v15[1].__next_;
      if (v19 >= size)
      {
        v20 = v19 % size;
      }
    }

    else
    {
      v20 = v19 & v13;
    }

    if (v20 != v7)
    {
LABEL_37:
      ptr[v7] = 0;
      v15 = v12->__next_;
      goto LABEL_38;
    }

LABEL_40:
    if (v8.u32[0] > 1uLL)
    {
      if (v19 >= size)
      {
        v19 %= size;
      }
    }

    else
    {
      v19 &= v13;
    }

    if (v19 != v7)
    {
      self->_clocks.__table_.__bucket_list_.__ptr_[v19] = v17;
      v15 = v12->__next_;
    }
  }

  v17->__next_ = v15;
  v12->__next_ = 0;
  --self->_clocks.__table_.__size_;
  operator delete(v12);
LABEL_47:
  if (!self->_clocks.__table_.__size_)
  {

    [(REProxyAudioClockManager *)self _tearDown];
  }
}

- (void)_updateClock:(OpaqueCMClock *)a3
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  if (DerivedStorage)
  {
    v5 = DerivedStorage;
    os_unfair_lock_lock(DerivedStorage);
    *&v5[4]._os_unfair_lock_opaque = self->_rateRelativeToHost;
    v6 = *&self->_ownTimelineAnchor.value;
    *&v5[10]._os_unfair_lock_opaque = self->_ownTimelineAnchor.epoch;
    *&v5[6]._os_unfair_lock_opaque = v6;
    v7 = *&self->_referenceTimelineAnchor.value;
    *&v5[16]._os_unfair_lock_opaque = self->_referenceTimelineAnchor.epoch;
    *&v5[12]._os_unfair_lock_opaque = v7;

    os_unfair_lock_unlock(v5);
  }
}

- (void)_updateClocksWithRate:(double)a3 ownTime:(id *)a4 referenceTime:(id *)a5
{
  self->_rateRelativeToHost = a3;
  v5 = *&a4->var0;
  self->_ownTimelineAnchor.epoch = a4->var3;
  *&self->_ownTimelineAnchor.value = v5;
  v6 = *&a5->var0;
  self->_referenceTimelineAnchor.epoch = a5->var3;
  *&self->_referenceTimelineAnchor.value = v6;
  for (i = self->_clocks.__table_.__first_node_.__next_; i; i = *i)
  {
    [(REProxyAudioClockManager *)self _updateClock:i[2]];
  }
}

- (void)_updateClocks
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(REProxyAudioClockManager *)self _copyAudioClock];
  if (v3)
  {
    v4 = v3;
    outRelativeRate = 0.0;
    HostTimeClock = CMClockGetHostTimeClock();
    RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(v4, HostTimeClock, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime);
    CFRelease(v4);
    if (RelativeRateAndAnchorTime)
    {
      v7 = ManualClockLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v16 = RelativeRateAndAnchorTime;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Failed to update proxy audio clock: %d", buf, 8u);
      }
    }

    else
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__REProxyAudioClockManager__updateClocks__block_invoke;
      block[3] = &unk_1E8721D78;
      block[4] = self;
      *&block[5] = outRelativeRate;
      v10 = outOfClockOrTimebaseAnchorTime;
      v11 = outRelativeToClockOrTimebaseAnchorTime;
      dispatch_sync(queue, block);
    }
  }
}

uint64_t __41__REProxyAudioClockManager__updateClocks__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 88);
  return [v1 _updateClocksWithRate:&v6 ownTime:&v4 referenceTime:v2];
}

- (OpaqueCMClock)_copyAudioClock
{
  result = self->_audioClock;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

- (OpaqueCMClock)copyAudioClock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  audioClockUpdateQueue = self->_audioClockUpdateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__REProxyAudioClockManager_copyAudioClock__block_invoke;
  v5[3] = &unk_1E8721DA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(audioClockUpdateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__REProxyAudioClockManager_copyAudioClock__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyAudioClock];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setAudioClock:(OpaqueCMClock *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  audioClock = self->_audioClock;
  self->_audioClock = a3;
  if (audioClock)
  {

    CFRelease(audioClock);
  }
}

- (void)routeChangeOrMediaServicesReset:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__REProxyAudioClockManager_routeChangeOrMediaServicesReset___block_invoke;
  v7[3] = &unk_1E8721DC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)addClock:(OpaqueCMClock *)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__REProxyAudioClockManager_addClock___block_invoke;
  v4[3] = &unk_1E871AD90;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (void)removeClock:(OpaqueCMClock *)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__REProxyAudioClockManager_removeClock___block_invoke;
  v4[3] = &unk_1E871AD90;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (id).cxx_construct
{
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  return self;
}

@end