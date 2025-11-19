@interface FMStateCapture
- (FMStateCapture)init;
- (os_state_data_s)_stateCapture;
- (os_state_data_s)stateDataForDictionary:(id)a3 title:(id)a4;
- (void)dealloc;
- (void)registerHandlerforStateCapture;
- (void)unregisterHandlerforStateCapture;
@end

@implementation FMStateCapture

- (FMStateCapture)init
{
  v3 = +[FMSystemInfo sharedInstance];
  if ([v3 isInternalBuild])
  {
    v7.receiver = self;
    v7.super_class = FMStateCapture;
    self = [(FMStateCapture *)&v7 init];
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    [(FMStateCapture *)v5 registerHandlerforStateCapture];
  }

  return v5;
}

- (void)dealloc
{
  [(FMStateCapture *)self unregisterHandlerforStateCapture];
  v3.receiver = self;
  v3.super_class = FMStateCapture;
  [(FMStateCapture *)&v3 dealloc];
}

- (void)registerHandlerforStateCapture
{
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "FMStateCapture: Registering State Capture Handler.", buf, 2u);
  }

  objc_initWeak(buf, self);
  v4 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v5, buf);
  [(FMStateCapture *)self setHandle:os_state_add_handler()];

  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

uint64_t __48__FMStateCapture_registerHandlerforStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _stateCapture];

  return v2;
}

- (void)unregisterHandlerforStateCapture
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [(FMStateCapture *)self handle];
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "FMStateCapture: Removing State Capture Handler %llu.", &v5, 0xCu);
  }

  if ([(FMStateCapture *)self handle])
  {
    [(FMStateCapture *)self handle];
    os_state_remove_handler();
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (os_state_data_s)_stateCapture
{
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "FMStateCapture: Starting State Capture...", buf, 2u);
  }

  v4 = [&unk_285D75DF0 mutableCopy];
  v5 = [(FMStateCapture *)self stateCaptureBlock];

  if (v5)
  {
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(FMStateCapture *)v6 _stateCapture];
    }

    v7 = [(FMStateCapture *)self stateCaptureBlock];
    v8 = v7[2]();
    [v4 setValuesForKeysWithDictionary:v8];
  }

  v9 = LogCategory_Unspecified();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_24A2EE000, v9, OS_LOG_TYPE_DEFAULT, "FMStateCapture: finished capturing state.", v16, 2u);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 bundleIdentifier];
  v13 = [v10 stringWithFormat:@"[%@] state", v12];
  v14 = [(FMStateCapture *)self stateDataForDictionary:v4 title:v13];

  return v14;
}

- (os_state_data_s)stateDataForDictionary:(id)a3 title:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(FMStateCapture *)v6 stateDataForDictionary:v5 title:v7];
  }

  if (v5)
  {
    v20 = 0;
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:&v20];
    v9 = v20;
    if (v9)
    {
      v10 = LogCategory_Unspecified();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_24A2EE000, v10, OS_LOG_TYPE_DEFAULT, "Error serializing dictionary for State Capture: %@", buf, 0xCu);
      }

      v11 = 0;
    }

    else
    {
      v12 = [v8 length];
      v13 = malloc_type_calloc(1uLL, v12 + 200, 0x1000040BEF03554uLL);
      v11 = v13;
      if (!v13)
      {
LABEL_17:

        goto LABEL_18;
      }

      v13->var0 = 1;
      v13->var1.var1 = v12;
      v14 = [v6 dataUsingEncoding:4];
      v10 = v14;
      if (v14)
      {
        v15 = [v14 bytes];
        v16 = [v10 length];
        if (v16 >= 0x3F)
        {
          v17 = 63;
        }

        else
        {
          v17 = v16;
        }

        memcpy(v11->var3, v15, v17);
      }

      memcpy(v11->var4, [v8 bytes], v12);
    }

    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)stateDataForDictionary:(os_log_t)log title:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_24A2EE000, log, OS_LOG_TYPE_DEBUG, "FMStateCapture: Persisting the state for %@ data: \n %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end