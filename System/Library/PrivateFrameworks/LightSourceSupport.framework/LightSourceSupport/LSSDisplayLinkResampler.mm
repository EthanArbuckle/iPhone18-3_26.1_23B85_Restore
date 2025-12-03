@interface LSSDisplayLinkResampler
- (LSSDisplayLinkResampler)initWithProvider:(id)provider display:(id)display inUpdateInterval:(double)interval outUpdateInterval:(double)updateInterval delegate:(id)delegate;
- (LSSProviderDelegate)delegate;
- (void)_fire;
- (void)_onthread_fire;
- (void)invalidate;
- (void)provider:(id)provider updatedLight:(id)light;
- (void)updateLightDirection:(id)direction;
@end

@implementation LSSDisplayLinkResampler

- (LSSDisplayLinkResampler)initWithProvider:(id)provider display:(id)display inUpdateInterval:(double)interval outUpdateInterval:(double)updateInterval delegate:(id)delegate
{
  v30 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  displayCopy = display;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = LSSDisplayLinkResampler;
  v16 = [(LSSDisplayLinkResampler *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v17->_inUpdateInterval = interval;
    v17->_outUpdateInterval = updateInterval;
    objc_storeStrong(&v17->_provider, provider);
    [providerCopy setDelegate:v17];
    if (v17->_outUpdateInterval <= 0.0)
    {
      [LSSDisplayLinkResampler initWithProvider:display:inUpdateInterval:outUpdateInterval:delegate:];
    }

    if (qword_280D2F4C0 == -1)
    {
      v18 = _MergedGlobals_0;
      if (!os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:
        v19 = objc_alloc_init(LSSEventQueue);
        eventQueue = v17->_eventQueue;
        v17->_eventQueue = v19;

        [(LSSDisplayLink *)v17->_displayLink setPaused:1];
        v17->_additionalShiftToAccountForVariance = 0.01;
        v21 = [[LSSDisplayLink alloc] initWithDisplay:displayCopy updateInterval:v17 target:sel__onthread_fire action:updateInterval];
        displayLink = v17->_displayLink;
        v17->_displayLink = v21;

        goto LABEL_7;
      }
    }

    else
    {
      [LSSDisplayLinkResampler initWithProvider:display:inUpdateInterval:outUpdateInterval:delegate:];
      v18 = _MergedGlobals_0;
      if (!os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }
    }

    *buf = 134218240;
    intervalCopy = interval;
    v28 = 2048;
    updateIntervalCopy = updateInterval;
    _os_log_impl(&dword_255E8B000, v18, OS_LOG_TYPE_DEFAULT, "inUpdateInterval: %f outUpdateInterval: %f", buf, 0x16u);
    goto LABEL_6;
  }

LABEL_7:

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_onthread_fire
{
  queue = [(LSSDisplayLinkResampler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__LSSDisplayLinkResampler__onthread_fire__block_invoke;
  block[3] = &unk_279812748;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateLightDirection:(id)direction
{
  var0 = direction.var0;
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(LSSProvider *)self->_provider queue:*&direction.var0];
  dispatch_assert_queue_V2(v5);

  inUpdateInterval = self->_inUpdateInterval;
  if (inUpdateInterval <= 0.0)
  {
    [LSSDisplayLinkResampler updateLightDirection:];
  }

  if (inUpdateInterval > self->_outUpdateInterval)
  {
    **&var0 = LSSMediaTime() + self->_additionalShiftToAccountForVariance + self->_inUpdateInterval;
  }

  eventQueue = self->_eventQueue;
  v8 = *(*&var0 + 48);
  v13[2] = *(*&var0 + 32);
  v13[3] = v8;
  v9 = *(*&var0 + 80);
  v13[4] = *(*&var0 + 64);
  v13[5] = v9;
  v10 = *(*&var0 + 16);
  v13[0] = **&var0;
  v13[1] = v10;
  [(LSSEventQueue *)eventQueue schedule:v13];
  if ([(LSSDisplayLink *)self->_displayLink paused])
  {
    if (qword_280D2F4C0 == -1)
    {
      v11 = _MergedGlobals_0;
      if (!os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        [(LSSDisplayLink *)self->_displayLink setPaused:0];
        goto LABEL_9;
      }
    }

    else
    {
      [LSSDisplayLinkResampler initWithProvider:display:inUpdateInterval:outUpdateInterval:delegate:];
      v11 = _MergedGlobals_0;
      if (!os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }
    }

    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_255E8B000, v11, OS_LOG_TYPE_DEFAULT, "resume", v13, 2u);
    goto LABEL_8;
  }

LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)provider:(id)provider updatedLight:(id)light
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(*&light.var0 + 48);
  v8[2] = *(*&light.var0 + 32);
  v8[3] = v4;
  v5 = *(*&light.var0 + 80);
  v8[4] = *(*&light.var0 + 64);
  v8[5] = v5;
  v6 = *(*&light.var0 + 16);
  v8[0] = **&light.var0;
  v8[1] = v6;
  [(LSSDisplayLinkResampler *)self updateLightDirection:v8];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  [(LSSDisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  provider = self->_provider;

  [(LSSProvider *)provider invalidate];
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_fire
{
  v9 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = LSSMediaTime();
    bzero(__src, 0xD0uLL);
    [(LSSEventQueue *)*(self + 16) intervalForTime:v2];
    if (*&__src[12])
    {
      memset(v7, 0, sizeof(v7));
      memcpy(v6, __src, sizeof(v6));
      LSSLightDirectionFromTimeInInterval(v6, v7, v2);
      if (!DWORD1(v7[5]) && *&__src[12] == 1 && ([*(self + 8) paused] & 1) == 0)
      {
        if (qword_280D2F4C0 != -1)
        {
          dispatch_once(&qword_280D2F4C0, &__block_literal_global_0);
        }

        v3 = _MergedGlobals_0;
        if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_255E8B000, v3, OS_LOG_TYPE_DEFAULT, "pause", v6, 2u);
        }

        [*(self + 8) setPaused:1];
      }

      WeakRetained = objc_loadWeakRetained((self + 32));
      memcpy(v6, v7, 0x60uLL);
      [WeakRetained provider:self updatedLight:v6];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end