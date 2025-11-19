@interface LSSResampler
- (LSSProviderDelegate)delegate;
- (LSSResampler)initWithProvider:(id)a3 inUpdateInterval:(double)a4 outUpdateInterval:(double)a5 delegate:(id)a6;
- (void)_fire;
- (void)invalidate;
- (void)provider:(id)a3 updatedLight:(id)a4;
- (void)updateLightDirection:(id)a3;
@end

@implementation LSSResampler

- (void)_fire
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = LSSMediaTime();
    bzero(__src, 0xD0uLL);
    [(LSSSampleBuffer *)*(a1 + 24) intervalContaining:v2];
    if (*&__src[12])
    {
      memset(v7, 0, sizeof(v7));
      memcpy(v6, __src, sizeof(v6));
      LSSLightDirectionFromTimeInInterval(v6, v7, v2);
      if (!DWORD1(v7[5]) && *&__src[12] == 1 && (*(a1 + 32) & 1) == 0)
      {
        if (qword_280D2F4B0 != -1)
        {
          dispatch_once(&qword_280D2F4B0, &__block_literal_global);
        }

        v3 = _MergedGlobals;
        if (os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_255E8B000, v3, OS_LOG_TYPE_DEFAULT, "pause", v6, 2u);
        }

        dispatch_suspend(*(a1 + 16));
        *(a1 + 32) = 1;
      }

      WeakRetained = objc_loadWeakRetained((a1 + 40));
      memcpy(v6, v7, 0x60uLL);
      [WeakRetained provider:a1 updatedLight:v6];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (LSSResampler)initWithProvider:(id)a3 inUpdateInterval:(double)a4 outUpdateInterval:(double)a5 delegate:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = LSSResampler;
  v13 = [(LSSResampler *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v12);
    v14->_inUpdateInterval = a4;
    v14->_outUpdateInterval = a5;
    v14->_paused = 1;
    objc_storeStrong(&v14->_provider, a3);
    [v11 setDelegate:v14];
    if (v14->_outUpdateInterval <= 0.0)
    {
      [LSSResampler initWithProvider:inUpdateInterval:outUpdateInterval:delegate:];
    }

    if (qword_280D2F4B0 == -1)
    {
      v15 = _MergedGlobals;
      if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:
        v16 = objc_alloc_init(LSSSampleBuffer);
        buffer = v14->_buffer;
        v14->_buffer = v16;

        v14->_additionalShiftToAccountForVariance = 0.01;
        timer = v14->_timer;
        v14->_timer = 0;

        goto LABEL_7;
      }
    }

    else
    {
      [LSSResampler initWithProvider:inUpdateInterval:outUpdateInterval:delegate:];
      v15 = _MergedGlobals;
      if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }
    }

    *buf = 134218240;
    v23 = a4;
    v24 = 2048;
    v25 = a5;
    _os_log_impl(&dword_255E8B000, v15, OS_LOG_TYPE_DEFAULT, "inUpdateInterval: %f outUpdateInterval: %f", buf, 0x16u);
    goto LABEL_6;
  }

LABEL_7:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)updateLightDirection:(id)a3
{
  var0 = a3.var0;
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(LSSProvider *)self->_provider queue:*&a3.var0];
  dispatch_assert_queue_V2(v5);

  inUpdateInterval = self->_inUpdateInterval;
  if (inUpdateInterval <= 0.0)
  {
    [LSSResampler updateLightDirection:];
  }

  if (inUpdateInterval > self->_outUpdateInterval)
  {
    **&var0 = LSSMediaTime() + self->_additionalShiftToAccountForVariance + self->_inUpdateInterval;
  }

  buffer = self->_buffer;
  v8 = *(*&var0 + 48);
  v22 = *(*&var0 + 32);
  v23 = v8;
  v9 = *(*&var0 + 80);
  v24 = *(*&var0 + 64);
  v25 = v9;
  v10 = *(*&var0 + 16);
  *buf = **&var0;
  v21 = v10;
  [(LSSSampleBuffer *)buffer append:buf];
  if (self->_paused)
  {
    if (qword_280D2F4B0 == -1)
    {
      v11 = _MergedGlobals;
      if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        timer = self->_timer;
        if (!timer)
        {
          v13 = [(LSSProvider *)self->_provider queue];
          v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13);
          v15 = self->_timer;
          self->_timer = v14;

          objc_initWeak(buf, self);
          dispatch_source_set_timer(self->_timer, 0, (self->_outUpdateInterval * 1000000000.0), 0x989680uLL);
          v16 = self->_timer;
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __37__LSSResampler_updateLightDirection___block_invoke;
          handler[3] = &unk_279812700;
          objc_copyWeak(&v19, buf);
          dispatch_source_set_event_handler(v16, handler);
          objc_destroyWeak(&v19);
          objc_destroyWeak(buf);
          timer = self->_timer;
        }

        dispatch_resume(timer);
        self->_paused = 0;
        goto LABEL_11;
      }
    }

    else
    {
      [LSSResampler initWithProvider:inUpdateInterval:outUpdateInterval:delegate:];
      v11 = _MergedGlobals;
      if (!os_log_type_enabled(_MergedGlobals, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_255E8B000, v11, OS_LOG_TYPE_DEFAULT, "resume", buf, 2u);
    goto LABEL_8;
  }

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)a3 updatedLight:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(*&a4.var0 + 48);
  v8[2] = *(*&a4.var0 + 32);
  v8[3] = v4;
  v5 = *(*&a4.var0 + 80);
  v8[4] = *(*&a4.var0 + 64);
  v8[5] = v5;
  v6 = *(*&a4.var0 + 16);
  v8[0] = **&a4.var0;
  v8[1] = v6;
  [(LSSResampler *)self updateLightDirection:v8];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  timer = self->_timer;
  if (timer)
  {
    if (self->_paused)
    {
      dispatch_resume(timer);
      timer = self->_timer;
    }

    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }

  provider = self->_provider;

  [(LSSProvider *)provider invalidate];
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __37__LSSResampler_updateLightDirection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(LSSResampler *)WeakRetained _fire];
}

@end