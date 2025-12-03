@interface MXDebugPlatform
+ (id)sharedInstance;
- (MXDebugPlatform)init;
- (void)dealloc;
- (void)executeSysdiagnoseBlocks;
- (void)installSysdiagnoseBlock:(id)block blockToRun:(id)run;
- (void)simulateCrash:(const char *)crash;
@end

@implementation MXDebugPlatform

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12 != -1)
  {
    +[MXDebugPlatform sharedInstance];
  }

  return sharedInstance_sSharedInstance_10;
}

MXDebugPlatform *__33__MXDebugPlatform_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXDebugPlatform);
  sharedInstance_sSharedInstance_10 = result;
  return result;
}

- (MXDebugPlatform)init
{
  v6.receiver = self;
  v6.super_class = MXDebugPlatform;
  v2 = [(MXDebugPlatform *)&v6 init];
  if (v2)
  {
    v5 = *byte_1F288C668;
    v2->_logger = MXGetSessionLog();
    v2->_sysdiagnoseBlockRegistry = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], &v5);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_sysdiagnoseBlockQueue = dispatch_queue_create("MXSysdiagnoseBlockRegistryQueue", v3);
    os_state_add_handler();
  }

  return v2;
}

uint64_t __23__MXDebugPlatform_init__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    [+[MXDebugPlatform sharedInstance](MXDebugPlatform executeSysdiagnoseBlocks:v2];
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->_sysdiagnoseBlockQueue);
  self->_sysdiagnoseBlockQueue = 0;

  self->_sysdiagnoseBlockRegistry = 0;
  v3.receiver = self;
  v3.super_class = MXDebugPlatform;
  [(MXDebugPlatform *)&v3 dealloc];
}

- (void)executeSysdiagnoseBlocks
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sysdiagnoseBlockRegistry = [(MXDebugPlatform *)self sysdiagnoseBlockRegistry];
  v4 = [(NSMutableDictionary *)sysdiagnoseBlockRegistry countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(sysdiagnoseBlockRegistry);
        }

        v8 = [(NSMutableDictionary *)[(MXDebugPlatform *)self sysdiagnoseBlockRegistry:v11] objectForKey:*(*(&v13 + 1) + 8 * i)];
        if (v8)
        {
          (*(v8 + 16))();
        }

        else
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v5 = [(NSMutableDictionary *)sysdiagnoseBlockRegistry countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)installSysdiagnoseBlock:(id)block blockToRun:(id)run
{
  if (run)
  {
    v6 = _Block_copy(run);
  }

  else
  {
    v6 = 0;
  }

  sysdiagnoseBlockQueue = [(MXDebugPlatform *)self sysdiagnoseBlockQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MXDebugPlatform_installSysdiagnoseBlock_blockToRun___block_invoke;
  v8[3] = &unk_1E7AEC788;
  v8[5] = block;
  v8[6] = v6;
  v8[4] = self;
  MXDispatchAsync("[MXDebugPlatform installSysdiagnoseBlock:blockToRun:]", "MXDebugPlatform.m", 215, 0, 0, sysdiagnoseBlockQueue, v8);
}

void __54__MXDebugPlatform_installSysdiagnoseBlock_blockToRun___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) sysdiagnoseBlockRegistry];
  if (v2)
  {
    [v3 setObject:*(a1 + 48) forKey:*(a1 + 40)];
    v4 = *(a1 + 48);

    _Block_release(v4);
  }

  else
  {
    v5 = *(a1 + 40);

    [v3 removeObjectForKey:v5];
  }
}

- (void)simulateCrash:(const char *)crash
{
  logger = [(MXDebugPlatform *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_FAULT))
  {
    [(MXDebugPlatform *)crash simulateCrash:logger];
  }
}

- (void)simulateCrash:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = a1;
  _os_log_fault_impl(&dword_1B17A2000, a2, OS_LOG_TYPE_FAULT, "%s (This is not a crash)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end