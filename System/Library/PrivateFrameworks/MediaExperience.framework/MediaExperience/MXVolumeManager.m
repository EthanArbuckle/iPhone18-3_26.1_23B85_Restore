@interface MXVolumeManager
+ (id)sharedInstance;
+ (void)applyVolumeReductionToHeadphoneRoutes:(float)a3;
- (MXVolumeManager)init;
- (void)dealloc;
- (void)updateMediaVolumeForPersonalDevice:(id *)a3 oldRoute:(id *)a4;
@end

@implementation MXVolumeManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_16 != -1)
  {
    +[MXVolumeManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_14;
}

MXVolumeManager *__33__MXVolumeManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXVolumeManager);
  sharedInstance_sSharedInstance_14 = result;
  return result;
}

- (MXVolumeManager)init
{
  v3.receiver = self;
  v3.super_class = MXVolumeManager;
  return [(MXVolumeManager *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MXVolumeManager;
  [(MXVolumeManager *)&v2 dealloc];
}

+ (void)applyVolumeReductionToHeadphoneRoutes:(float)a3
{
  v4 = MXGetSerialQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MXVolumeManager_applyVolumeReductionToHeadphoneRoutes___block_invoke;
  v5[3] = &__block_descriptor_36_e5_v8__0l;
  v6 = a3;
  MXDispatchAsyncAndWait("+[MXVolumeManager applyVolumeReductionToHeadphoneRoutes:]", "MXVolumeManager.m", 81, 0, 0, v4, v5);
}

void __57__MXVolumeManager_applyVolumeReductionToHeadphoneRoutes___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  PVMApplyVolumeReductionToHeadphoneRoutes(*(a1 + 32));
  v3 = *MEMORY[0x1E69E9840];
}

- (void)updateMediaVolumeForPersonalDevice:(id *)a3 oldRoute:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = *&a4->var2;
  v22 = *&a4->var0;
  v23 = v7;
  var4 = a4->var4;
  v8 = *&a3->var2;
  v20[0] = *&a3->var0;
  v20[1] = v8;
  v21 = a3->var4;
  if ((PVMAreTwoRoutesIdentical(&v22, v20) & 1) == 0)
  {
    v9 = *&a4->var2;
    v22 = *&a4->var0;
    v23 = v9;
    var4 = a4->var4;
    if (PVMIsRoutedToAPersonalAudioDevice(&v22))
    {
      v10 = *&a4->var2;
      v22 = *&a4->var0;
      v23 = v10;
      var4 = a4->var4;
      PVMSaveEndpointDisconnectionTimeInfo(&v22, v6);
    }

    CurrentOutputPortAtIndex = CMSMUtility_GetCurrentOutputPortAtIndex(0);
    if (!vaeIsBTPortAdaptiveVolumeEnabled(CurrentOutputPortAtIndex))
    {
      v12 = *&a3->var2;
      v22 = *&a3->var0;
      v23 = v12;
      var4 = a3->var4;
      if (PVMIsRoutedToAPersonalAudioDevice(&v22))
      {
        v13 = *&a3->var2;
        v22 = *&a3->var0;
        v23 = v13;
        var4 = a3->var4;
        if (PVMGetVolumePreference(@"Audio/Video", @"Default", &v22) < 0.1)
        {
          v14 = *&a3->var2;
          v22 = *&a3->var0;
          v23 = v14;
          var4 = a3->var4;
          v15 = PVMCopyEndpointDisconnectionTimeInfo(&v22);
          if (v15)
          {
            [v6 timeIntervalSinceDate:v15];
            if (v16 > PVMGetPersonalAudioDevicesMediaVolumeResetTimerDuration())
            {
              if (dword_1EB75DE40)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v18 = *&a3->var2;
              v22 = *&a3->var0;
              v23 = v18;
              var4 = a3->var4;
              PVMSetVolumePreference(@"Audio/Video", 0, 1, &v22, 0, 0, 0.1, 0.0, 0.0);
            }
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end