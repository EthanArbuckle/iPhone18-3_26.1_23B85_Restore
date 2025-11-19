@interface OSADeviceRecoveryEnvHelper
+ (id)sharedInstance;
- (BOOL)overrideMountPath:(id)a3;
- (void)releaseSandboxExtensions;
@end

@implementation OSADeviceRecoveryEnvHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[OSADeviceRecoveryEnvHelper sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __44__OSADeviceRecoveryEnvHelper_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(OSADeviceRecoveryEnvHelper);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;

  v2 = objc_opt_new();
  v3 = *(sharedInstance__sharedInstance + 8);
  *(sharedInstance__sharedInstance + 8) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)overrideMountPath:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(OSADeviceRecoveryEnvHelper *)self releaseSandboxExtensions];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 sandboxExtensions];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = OSASandboxConsumeExtensionNoRelease();
        if (v11 < 0)
        {

          [(OSADeviceRecoveryEnvHelper *)self releaseSandboxExtensions];
          v15 = 0;
          goto LABEL_11;
        }

        sandboxExtensions = self->_sandboxExtensions;
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
        [(NSMutableArray *)sandboxExtensions addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = [MEMORY[0x277D36B80] sharedInstance];
  v15 = [v14 overrideMountPath];

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)releaseSandboxExtensions
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_sandboxExtensions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    v8 = MEMORY[0x277D86220];
    *&v5 = 136315394;
    v14 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v15 + 1) + 8 * v9) longLongValue];
        if ((sandbox_extension_release() & 0x80000000) != 0 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = __error();
          v11 = strerror(*v10);
          v12 = *__error();
          *buf = v14;
          v20 = v11;
          v21 = 1024;
          v22 = v12;
          _os_log_error_impl(&dword_25D12D000, v8, OS_LOG_TYPE_ERROR, "Failed to release sandbox extension: %s (%i)", buf, 0x12u);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_sandboxExtensions removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

@end