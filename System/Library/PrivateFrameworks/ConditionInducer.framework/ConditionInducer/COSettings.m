@interface COSettings
- (BOOL)createSettingsFile;
- (BOOL)readSettings;
- (BOOL)startMonitoringForFileDeletion;
- (BOOL)writeSettings;
- (COSettings)initWithURL:(id)a3;
- (id)objectForKey:(id)a3;
- (void)createSettingsFile;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)startMonitoringForChanges:(id)a3;
- (void)stopMonitoringForFileDeletion;
@end

@implementation COSettings

- (COSettings)initWithURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = COSettings;
  v5 = [(COSettings *)&v13 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:objc_msgSend(@"/var/mobile/Library/Preferences/com.apple.ConditionInducer.plist" isDirectory:"UTF8String") relativeToURL:{0, 0}];
  }

  url = v5->_url;
  v5->_url = v6;

  source = v5->_source;
  v5->_source = 0;

  clientCallback = v5->_clientCallback;
  v5->_clientCallback = 0;

  settings = v5->_settings;
  v5->_settings = 0;

  v11 = 0;
  if ([(COSettings *)v5 createSettingsFile])
  {
LABEL_6:
    v11 = v5;
  }

  return v11;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(COSettings *)self settings];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(COSettings *)self settings];
  [v8 setObject:v7 forKeyedSubscript:v6];

  [(COSettings *)self writeSettings];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(COSettings *)self settings];
  [v5 removeObjectForKey:v4];

  [(COSettings *)self writeSettings];
}

- (void)startMonitoringForChanges:(id)a3
{
  [(COSettings *)self setClientCallback:a3];

  [(COSettings *)self startMonitoringForFileDeletion];
}

- (BOOL)createSettingsFile
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(COSettings *)self url];
  v5 = [v4 path];
  if ([v3 fileExistsAtPath:v5])
  {
    v6 = [(COSettings *)self readSettings];

    if (v6)
    {
      v7 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = [(COSettings *)self url];
  v9 = [v8 path];
  v10 = [v3 fileExistsAtPath:v9];

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(COSettings *)self createSettingsFile];
    }

    v7 = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CBEB38]);
    v12 = [v11 initWithDictionary:MEMORY[0x277CBEC10]];
    [(COSettings *)self setSettings:v12];

    v7 = [(COSettings *)self writeSettings];
  }

LABEL_10:

  return v7;
}

- (BOOL)writeSettings
{
  v3 = dispatch_get_global_queue(-2, 0);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__COSettings_writeSettings__block_invoke;
  v5[3] = &unk_278DF7EE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return self;
}

void __27__COSettings_writeSettings__block_invoke(uint64_t a1)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) settings];
  v4 = [*v2 url];
  v15 = 0;
  v5 = [v3 writeToURL:v4 error:&v15];
  v6 = v15;

  if (v5)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = *MEMORY[0x277CCA120];
    v16[0] = *MEMORY[0x277CCA160];
    v16[1] = v8;
    v17[0] = @"mobile";
    v17[1] = @"mobile";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v10 = [*v2 url];
    v11 = [v10 path];
    v14 = v6;
    [v7 setAttributes:v9 ofItemAtPath:v11 error:&v14];
    v12 = v14;

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __27__COSettings_writeSettings__block_invoke_cold_2(v2);
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __27__COSettings_writeSettings__block_invoke_cold_1(v2);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)readSettings
{
  v3 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__COSettings_readSettings__block_invoke;
  block[3] = &unk_278DF7E90;
  block[4] = self;
  dispatch_sync(v3, block);
  v4 = [(COSettings *)self settings];
  LOBYTE(self) = v4 != 0;

  return self;
}

void __26__COSettings_readSettings__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v3 = [*(a1 + 32) url];
  v4 = [v2 initWithContentsOfURL:v3];
  [*(a1 + 32) setSettings:v4];

  v5 = [*(a1 + 32) clientCallback];

  if (v5)
  {
    v7 = [*(a1 + 32) clientCallback];
    v6 = [*(a1 + 32) settings];
    v7[2](v7, v6);
  }
}

- (void)stopMonitoringForFileDeletion
{
  v3 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__COSettings_stopMonitoringForFileDeletion__block_invoke;
  block[3] = &unk_278DF7E90;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __43__COSettings_stopMonitoringForFileDeletion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) source];

  if (v2)
  {
    v3 = [*(a1 + 32) source];
    dispatch_source_cancel(v3);
  }
}

- (BOOL)startMonitoringForFileDeletion
{
  v3 = dispatch_get_global_queue(-2, 0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__COSettings_startMonitoringForFileDeletion__block_invoke;
  block[3] = &unk_278DF7F50;
  block[4] = self;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(v4, block);
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __44__COSettings_startMonitoringForFileDeletion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) url];
  v3 = open([v2 fileSystemRepresentation], 0x8000);

  if ((v3 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __44__COSettings_startMonitoringForFileDeletion__block_invoke_cold_1();
    }
  }

  else
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D48], v3, 1uLL, *(a1 + 40));
    [*(a1 + 32) setSource:v4];

    v5 = [*(a1 + 32) source];

    if (v5)
    {
      objc_initWeak(location, *(a1 + 32));
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44__COSettings_startMonitoringForFileDeletion__block_invoke_8;
      v12[3] = &unk_278DF7F08;
      objc_copyWeak(&v13, location);
      v14 = v3;
      v6 = MEMORY[0x245D53520](v12);
      v7 = [*(a1 + 32) source];
      dispatch_source_set_event_handler(v7, v6);

      v8 = [*(a1 + 32) source];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __44__COSettings_startMonitoringForFileDeletion__block_invoke_2;
      handler[3] = &__block_descriptor_36_e5_v8__0l;
      v11 = v3;
      dispatch_source_set_cancel_handler(v8, handler);

      v9 = [*(a1 + 32) source];
      dispatch_resume(v9);

      *(*(*(a1 + 48) + 8) + 24) = 1;
      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }

    else
    {
      close(v3);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Could Not Dispatch Source Create", location, 2u);
      }
    }
  }
}

void __44__COSettings_startMonitoringForFileDeletion__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    close(*(a1 + 40));
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 readSettings];

    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 startMonitoringForFileDeletion];
  }
}

- (void)createSettingsFile
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 url];
  v8 = [v1 path];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __27__COSettings_writeSettings__block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 url];
  v2 = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __27__COSettings_writeSettings__block_invoke_cold_2(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 url];
  v2 = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end