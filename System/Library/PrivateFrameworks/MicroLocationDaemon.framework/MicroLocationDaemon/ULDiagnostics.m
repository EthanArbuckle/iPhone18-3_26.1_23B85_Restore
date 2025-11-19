@interface ULDiagnostics
- (ULDiagnostics)initWithLabel:(id)a3;
- (id)_diagnosticsInfo;
- (os_state_data_s)_stateDataForInfo:(id)a3;
- (void)_registerStateHandler;
- (void)_withLock:(id)a3;
- (void)addProvider:(id)a3;
- (void)dealloc;
- (void)removeProvider:(id)a3;
@end

@implementation ULDiagnostics

- (ULDiagnostics)initWithLabel:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ULDiagnostics;
  v5 = [(ULDiagnostics *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(ULDiagnostics *)v5 setLabel:v4];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.milod.ULDiagnostics", v7);
    [(ULDiagnostics *)v6 setQueue:v8];

    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(ULDiagnostics *)v6 setProviders:v9];

    [(ULDiagnostics *)v6 setProvidersLock:0];
    [(ULDiagnostics *)v6 _registerStateHandler];
  }

  return v6;
}

- (void)dealloc
{
  [(ULDiagnostics *)self stateHandle];
  os_state_remove_handler();
  v3.receiver = self;
  v3.super_class = ULDiagnostics;
  [(ULDiagnostics *)&v3 dealloc];
}

- (void)addProvider:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__ULDiagnostics_addProvider___block_invoke;
  v6[3] = &unk_2798D4280;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(ULDiagnostics *)self _withLock:v6];
}

void __29__ULDiagnostics_addProvider___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __29__ULDiagnostics_addProvider___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "Adding provider: %@", &v9, 0xCu);
  }

  v7 = [*(a1 + 40) providers];
  [v7 addObject:*(a1 + 32)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeProvider:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__ULDiagnostics_removeProvider___block_invoke;
  v6[3] = &unk_2798D4280;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(ULDiagnostics *)self _withLock:v6];
}

void __32__ULDiagnostics_removeProvider___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    __29__ULDiagnostics_addProvider___block_invoke_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "Removing provider: %@", &v9, 0xCu);
  }

  v7 = [*(a1 + 40) providers];
  [v7 removeObject:*(a1 + 32)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_registerStateHandler
{
  objc_initWeak(&location, self);
  v3 = [(ULDiagnostics *)self queue];
  v4 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v5, &location);
  [(ULDiagnostics *)self setStateHandle:os_state_add_handler(), v4, 3221225472, __38__ULDiagnostics__registerStateHandler__block_invoke, &unk_2798D5680];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __38__ULDiagnostics__registerStateHandler__block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained queue];
  dispatch_assert_queue_V2(v4);

  if (*(a2 + 16) == 3)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __29__ULDiagnostics_addProvider___block_invoke_cold_1();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [WeakRetained label];
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Processing os_state handler for label: %@", &v14, 0xCu);
    }

    v8 = [WeakRetained _diagnosticsInfo];
    if (onceToken_MicroLocation_Default != -1)
    {
      __38__ULDiagnostics__registerStateHandler__block_invoke_cold_2();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [WeakRetained label];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_DEFAULT, "label: %@, os_state: %@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_diagnosticsInfo
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__32;
  v25 = __Block_byref_object_dispose__32;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __33__ULDiagnostics__diagnosticsInfo__block_invoke;
  v20[3] = &unk_2798D4BB0;
  v20[4] = self;
  v20[5] = &v21;
  [(ULDiagnostics *)self _withLock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v22[5];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v5)
  {
    v6 = *v17;
    v7 = MEMORY[0x277CBEC10];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) diagnosticInfo];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        [v3 setObject:v11 forKeyedSubscript:v13];
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

void __33__ULDiagnostics__diagnosticsInfo__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) providers];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (os_state_data_s)_stateDataForInfo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:a3 format:200 options:0 error:&v14];
  v5 = v14;
  v6 = [v4 length];
  if (v5)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      __38__ULDiagnostics__registerStateHandler__block_invoke_cold_2();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_ERROR, "Error in NSPropertyListSerialization: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = v6;
    v10 = v6;
    v8 = malloc_type_calloc(1uLL, v6 + 200, 0x1000040BEF03554uLL);
    v8->var0 = 1;
    v8->var1.var1 = v9;
    v11 = [(ULDiagnostics *)self label];
    [v11 UTF8String];
    __strlcpy_chk();

    memcpy(v8->var4, [v4 bytes], v10);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_providersLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_providersLock);
}

@end