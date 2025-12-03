@interface LSSStationaryProvider
- (LSSProviderDelegate)delegate;
- (LSSStationaryProvider)initWithQueue:(id)queue delegate:(id)delegate;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation LSSStationaryProvider

- (LSSStationaryProvider)initWithQueue:(id)queue delegate:(id)delegate
{
  queueCopy = queue;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = LSSStationaryProvider;
  v9 = [(LSSStationaryProvider *)&v20 init];
  if (!v9)
  {
    goto LABEL_8;
  }

  if (qword_280D2F610 != -1)
  {
    [LSSStationaryProvider initWithQueue:delegate:];
    v10 = _MergedGlobals_15;
    if (!os_log_type_enabled(_MergedGlobals_15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = _MergedGlobals_15;
  if (os_log_type_enabled(_MergedGlobals_15, OS_LOG_TYPE_DEFAULT))
  {
LABEL_4:
    *buf = 0;
    _os_log_impl(&dword_255E8B000, v10, OS_LOG_TYPE_DEFAULT, "init", buf, 2u);
  }

LABEL_5:
  objc_storeStrong(v9 + 1, queue);
  objc_storeWeak(v9 + 3, delegateCopy);
  v11 = +[LSSSettings currentSettings];
  v12 = *(v9 + 2);
  *(v9 + 2) = v11;

  if ([(LSSSettings *)*(v9 + 2) dynamic])
  {
    defaults = [(LSSSettings *)*(v9 + 2) defaults];
    [defaults addObserver:v9 forKeyPath:@"lightDefaultAzimuth" options:1 context:0];

    defaults2 = [(LSSSettings *)*(v9 + 2) defaults];
    [defaults2 addObserver:v9 forKeyPath:@"lightDefaultAltitude" options:1 context:0];
  }

  v15 = *(v9 + 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__LSSStationaryProvider_initWithQueue_delegate___block_invoke;
  block[3] = &unk_279812748;
  v18 = v9;
  dispatch_async(v15, block);

LABEL_8:
  return v9;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (([pathCopy isEqualToString:@"lightDefaultAzimuth"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"lightDefaultAltitude"))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__LSSStationaryProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_279812748;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)invalidate
{
  if ([(LSSSettings *)self->_settings dynamic])
  {
    defaults = [(LSSSettings *)self->_settings defaults];
    [defaults removeObserver:self forKeyPath:@"lightDefaultAzimuth"];

    defaults2 = [(LSSSettings *)self->_settings defaults];
    [defaults2 removeObserver:self forKeyPath:@"lightDefaultAltitude"];
  }
}

- (LSSProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __48__LSSStationaryProvider_initWithQueue_delegate___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [(LSSSettings *)*(v2 + 16) doubleForKey:?];
    v4 = [(LSSSettings *)*(v2 + 16) doubleForKey:?];
    OUTLINED_FUNCTION_3_0(v4, 3.14159265, v3 * 3.14159265, 180.0);
    v5.f64[0] = OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_0_6(v5, v14, xmmword_255E9C9F0, v15, v16, v17, v18, v19, v6, v7, v8, v9, v10, v11, v12, v13, v29, v32, v34, *&v35);
    OUTLINED_FUNCTION_1_5();
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    OUTLINED_FUNCTION_2_1(WeakRetained, v21, v22, v23, v24, v25, v26, v27, v30, v31, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __72__LSSStationaryProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [(LSSSettings *)*(v2 + 16) doubleForKey:?];
    v4 = [(LSSSettings *)*(v2 + 16) doubleForKey:?];
    OUTLINED_FUNCTION_3_0(v4, 3.14159265, v3 * 3.14159265, 180.0);
    v5.f64[0] = OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_0_6(v5, v14, xmmword_255E9C9F0, v15, v16, v17, v18, v19, v6, v7, v8, v9, v10, v11, v12, v13, v29, v32, v34, *&v35);
    OUTLINED_FUNCTION_1_5();
    WeakRetained = objc_loadWeakRetained((v2 + 24));
    OUTLINED_FUNCTION_2_1(WeakRetained, v21, v22, v23, v24, v25, v26, v27, v30, v31, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end