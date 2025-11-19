@interface LSSTestProvider
- (LSSProviderDelegate)delegate;
- (LSSTestProvider)initWithQueue:(id)a3 delegate:(id)a4;
- (void)_updateAngle:(double)a3 forTime:;
- (void)_updateRealtime:(double)a3 forTime:;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation LSSTestProvider

- (LSSTestProvider)initWithQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!LSSHasInternalUI())
  {
    v14 = 0;
    goto LABEL_9;
  }

  v17.receiver = self;
  v17.super_class = LSSTestProvider;
  v9 = [(LSSTestProvider *)&v17 init];
  if (v9)
  {
    if (qword_280D2F630 == -1)
    {
      v10 = _MergedGlobals_17;
      if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:
        objc_storeStrong(&v9->_queue, a3);
        objc_storeWeak(&v9->_delegate, v8);
        v11 = +[LSSSettings currentSettings];
        v9->_expectRealtimeUpdates = [(LSSSettings *)v11 BOOLForKey:?];
        v12 = [(LSSSettings *)v11 defaults];
        [v12 addObserver:v9 forKeyPath:@"test_realtime" options:1 context:0];

        v13 = [(LSSSettings *)v11 defaults];
        [v13 addObserver:v9 forKeyPath:@"test_lightAngle" options:5 context:0];

        goto LABEL_7;
      }
    }

    else
    {
      [LSSTestProvider initWithQueue:delegate:];
      v10 = _MergedGlobals_17;
      if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }
    }

    *v16 = 0;
    _os_log_impl(&dword_255E8B000, v10, OS_LOG_TYPE_DEFAULT, "starting", v16, 2u);
    goto LABEL_6;
  }

LABEL_7:
  self = v9;
  v14 = self;
LABEL_9:

  return v14;
}

- (void)invalidate
{
  v5 = +[LSSSettings currentSettings];
  if ([(LSSSettings *)v5 dynamic])
  {
    v3 = [(LSSSettings *)v5 defaults];
    [v3 removeObserver:self forKeyPath:@"test_realtime"];

    v4 = [(LSSSettings *)v5 defaults];
    [v4 removeObserver:self forKeyPath:@"test_lightAngle"];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = LSSMediaTime();
  if ([v8 isEqualToString:@"test_lightAngle"])
  {
    v11 = [v9 objectForKey:*MEMORY[0x277CCA2F0]];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (qword_280D2F630 == -1)
      {
        v15 = _MergedGlobals_17;
        if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      else
      {
        [LSSTestProvider observeValueForKeyPath:ofObject:change:context:];
        v15 = _MergedGlobals_17;
        if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      [LSSTestProvider observeValueForKeyPath:v15 ofObject:? change:? context:?];
      goto LABEL_15;
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__LSSTestProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279812AB0;
    block[4] = self;
    v21 = v11;
    v22 = v10;
    v11 = v11;
    dispatch_async(queue, block);
    v13 = v21;
LABEL_9:

LABEL_15:
    goto LABEL_16;
  }

  if ([v8 isEqualToString:@"test_realtime"])
  {
    v11 = [v9 objectForKey:*MEMORY[0x277CCA2F0]];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (qword_280D2F630 == -1)
      {
        v16 = _MergedGlobals_17;
        if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      else
      {
        [LSSTestProvider observeValueForKeyPath:ofObject:change:context:];
        v16 = _MergedGlobals_17;
        if (!os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      [LSSTestProvider observeValueForKeyPath:v16 ofObject:? change:? context:?];
      goto LABEL_15;
    }

    v14 = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__LSSTestProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v17[3] = &unk_279812AB0;
    v17[4] = self;
    v18 = v11;
    v19 = v10;
    v11 = v11;
    dispatch_async(v14, v17);
    v13 = v18;
    goto LABEL_9;
  }

LABEL_16:
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateAngle:(double)a3 forTime:
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (qword_280D2F630 != -1)
    {
      dispatch_once(&qword_280D2F630, &__block_literal_global_17);
    }

    v6 = _MergedGlobals_17;
    if (os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEBUG))
    {
      *__dst = 0;
      _os_log_debug_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEBUG, "angle", __dst, 2u);
    }

    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = xmmword_255E9C9F0;
    v8 = __sincos_stret(a2 * 3.14159265 / 180.0);
    *&v7 = v8.__cosval;
    *(a1 + 32) = a3;
    *(&v7 + 1) = *&v8.__sinval;
    *(a1 + 48) = v7;
    *(a1 + 64) = 0u;
    *(a1 + 112) = 1065353216;
    if (*(a1 + 16) == 1)
    {
      if (*(a1 + 128))
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 116) = v9;
    memcpy(__dst, (a1 + 32), 0x60uLL);
    WeakRetained = objc_loadWeakRetained((a1 + 136));
    OUTLINED_FUNCTION_0_8(WeakRetained, v11, v12, v13, v14, v15, v16, v17, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11], __dst[0]);
    [v6 provider:a1 updatedLight:v19];

    *(a1 + 16) = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_updateRealtime:(double)a3 forTime:
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (qword_280D2F630 != -1)
    {
      dispatch_once(&qword_280D2F630, &__block_literal_global_17);
    }

    v6 = _MergedGlobals_17;
    if (os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_impl(&dword_255E8B000, v6, OS_LOG_TYPE_DEFAULT, "expect realtime: %d", buf, 8u);
    }

    if (*(a1 + 128) != a2)
    {
      *(a1 + 128) = a2;
      if ((a2 & 1) == 0)
      {
        if (qword_280D2F630 != -1)
        {
          dispatch_once(&qword_280D2F630, &__block_literal_global_17);
        }

        v7 = _MergedGlobals_17;
        if (os_log_type_enabled(_MergedGlobals_17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_255E8B000, v7, OS_LOG_TYPE_DEFAULT, "need to pause", buf, 2u);
        }

        *(a1 + 32) = a3;
        *(a1 + 116) = 0;
        memcpy(buf, (a1 + 32), 0x60uLL);
        WeakRetained = objc_loadWeakRetained((a1 + 136));
        OUTLINED_FUNCTION_0_8(WeakRetained, v9, v10, v11, v12, v13, v14, v15, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], buf[0]);
        [v7 provider:a1 updatedLight:v17];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __66__LSSTestProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) doubleValue];
  v4 = *(a1 + 48);

  [(LSSTestProvider *)v2 _updateAngle:v3 forTime:v4];
}

void __66__LSSTestProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) BOOLValue];
  v4 = *(a1 + 48);

  [(LSSTestProvider *)v2 _updateRealtime:v3 forTime:v4];
}

@end