@interface MXBiomeStreams
+ (id)sharedInstance;
- (MXBiomeStreams)init;
- (void)dealloc;
- (void)updateBiomeSilentMode:(BOOL)mode clientType:(unsigned int)type untilTime:(id)time reason:(id)reason;
@end

@implementation MXBiomeStreams

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[MXBiomeStreams sharedInstance];
  }

  return sharedInstance_sSharedInstance_0;
}

MXBiomeStreams *__32__MXBiomeStreams_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXBiomeStreams);
  sharedInstance_sSharedInstance_0 = result;
  return result;
}

- (MXBiomeStreams)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MXBiomeStreams;
  v2 = [(MXBiomeStreams *)&v8 init];
  if (v2)
  {
    if (BiomeStreamsLibraryCore() && BiomeLibraryLibraryCore())
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->mAccessQueue = dispatch_queue_create("com.apple.mediaexperience.MXBiomeStreams", v5);
    }

    else
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v2 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  dispatch_release(self->mAccessQueue);
  self->mAccessQueue = 0;
  v3.receiver = self;
  v3.super_class = MXBiomeStreams;
  [(MXBiomeStreams *)&v3 dealloc];
}

- (void)updateBiomeSilentMode:(BOOL)mode clientType:(unsigned int)type untilTime:(id)time reason:(id)reason
{
  timeCopy = time;
  reasonCopy = reason;
  mAccessQueue = self->mAccessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke;
  v14[3] = &unk_1E7AE7348;
  modeCopy = mode;
  typeCopy = type;
  v14[4] = time;
  v14[5] = reason;
  MXDispatchAsync("[MXBiomeStreams updateBiomeSilentMode:clientType:untilTime:reason:]", "MXBiomeStreams.m", 93, 0, 0, mAccessQueue, v14);
}

void __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__0;
  v3 = getBMDeviceSilentModeClass_softClass;
  v21 = __Block_byref_object_dispose__0;
  v22 = getBMDeviceSilentModeClass_softClass;
  if (!getBMDeviceSilentModeClass_softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __getBMDeviceSilentModeClass_block_invoke;
    v15 = &unk_1E7AE73A0;
    v16 = &v17;
    __getBMDeviceSilentModeClass_block_invoke(&v12);
    v3 = *(v18 + 40);
  }

  _Block_object_dispose(&v17, 8);
  v4 = [v3 alloc];
  v5 = [v4 initWithStarting:objc_msgSend(MEMORY[0x1E696AD98] clientType:"numberWithBool:" untilTime:*(a1 + 52)) reason:{*(a1 + 48), *(a1 + 32), *(a1 + 40)}];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v6 = getBiomeLibrarySymbolLoc_ptr;
  v15 = getBiomeLibrarySymbolLoc_ptr;
  if (!getBiomeLibrarySymbolLoc_ptr)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getBiomeLibrarySymbolLoc_block_invoke;
    v20 = &unk_1E7AE73A0;
    v21 = &v12;
    v7 = BiomeLibraryLibrary();
    v8 = dlsym(v7, "BiomeLibrary");
    *(*(v21 + 1) + 24) = v8;
    getBiomeLibrarySymbolLoc_ptr = *(*(v21 + 1) + 24);
    v6 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);
  if (!v6)
  {
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    __break(1u);
  }

  [objc_msgSend(objc_msgSend(objc_msgSend(v6(v9 v10)];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getBMDeviceSilentModeClass_block_invoke_cold_1(v0);
}

@end