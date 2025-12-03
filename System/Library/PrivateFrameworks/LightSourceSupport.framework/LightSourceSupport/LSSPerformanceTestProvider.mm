@interface LSSPerformanceTestProvider
- (LSSPerformanceTestProvider)initWithQueue:(id)queue delegate:(id)delegate;
- (LSSProviderDelegate)delegate;
- (void)invalidate;
@end

@implementation LSSPerformanceTestProvider

- (LSSPerformanceTestProvider)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  if (!LSSHasInternalUI())
  {
    selfCopy = 0;
    goto LABEL_9;
  }

  v24.receiver = self;
  v24.super_class = LSSPerformanceTestProvider;
  v9 = [(LSSPerformanceTestProvider *)&v24 init];
  if (v9)
  {
    if (qword_280D2F560 == -1)
    {
      v10 = _MergedGlobals_8;
      if (!os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:
        objc_storeStrong(v9 + 1, queue);
        v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v9 + 1));
        v12 = *(v9 + 2);
        *(v9 + 2) = v11;

        objc_storeWeak(v9 + 3, delegateCopy);
        v13 = LSSMediaTime();
        objc_initWeak(buf, v9);
        v14 = +[LSSSettings currentSettings];
        v15 = [(LSSSettings *)v14 doubleForKey:?];

        v16 = +[LSSSettings currentSettings];
        v17 = [(LSSSettings *)v16 doubleForKey:?];

        dispatch_source_set_timer(*(v9 + 2), 0, (v15 * 1000000000.0), 0x5F5E100uLL);
        v18 = *(v9 + 2);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __53__LSSPerformanceTestProvider_initWithQueue_delegate___block_invoke;
        handler[3] = &unk_279812870;
        objc_copyWeak(v22, buf);
        v22[1] = *&v13;
        v22[2] = *&v17;
        dispatch_source_set_event_handler(v18, handler);
        dispatch_activate(*(v9 + 2));
        objc_destroyWeak(v22);
        objc_destroyWeak(buf);
        goto LABEL_7;
      }
    }

    else
    {
      [LSSPerformanceTestProvider initWithQueue:delegate:];
      v10 = _MergedGlobals_8;
      if (!os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }
    }

    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_255E8B000, v10, OS_LOG_TYPE_DEFAULT, "init", buf, 2u);
    goto LABEL_6;
  }

LABEL_7:
  self = v9;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

void __53__LSSPerformanceTestProvider_initWithQueue_delegate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (qword_280D2F560 == -1)
  {
    v2 = _MergedGlobals_8;
    if (!os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

LABEL_7:
    __53__LSSPerformanceTestProvider_initWithQueue_delegate___block_invoke_cold_2(v2);
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (!WeakRetained)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __53__LSSPerformanceTestProvider_initWithQueue_delegate___block_invoke_cold_1();
  v2 = _MergedGlobals_8;
  if (os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_7;
  }

LABEL_3:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
LABEL_4:
    v4 = LSSMediaTime();
    v6 = __sincos_stret((v4 - *(a1 + 40)) * *(a1 + 48));
    *&v5 = v6.__cosval;
    *(&v5 + 1) = *&v6.__sinval;
    v9 = v5;
    v7 = [WeakRetained delegate];
    *v10 = v4;
    v10[1] = 0;
    v11 = v9;
    v12 = 0u;
    v13 = 0;
    v14 = 0;
    v15 = xmmword_255E9C9F0;
    v16 = 0x23F800000;
    v17 = 0;
    [v7 provider:WeakRetained updatedLight:v10];
  }

LABEL_5:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  dispatch_source_cancel(self->_timer);
  timer = self->_timer;
  self->_timer = 0;
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end