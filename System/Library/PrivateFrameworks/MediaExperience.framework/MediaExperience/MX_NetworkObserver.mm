@interface MX_NetworkObserver
- (BOOL)isCarrierNetworkReachable;
- (MX_NetworkObserver)init;
- (void)dealloc;
- (void)networkPathUpdate:(id)update;
@end

@implementation MX_NetworkObserver

- (MX_NetworkObserver)init
{
  v7.receiver = self;
  v7.super_class = MX_NetworkObserver;
  v2 = [(MX_NetworkObserver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.coremedia.networkobserver", v3);
    v2->mAccessQueue = v4;
    v2->mNetworkReachable = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__MX_NetworkObserver_init__block_invoke;
    block[3] = &unk_1E7AE7CE0;
    block[4] = v2;
    dispatch_async(v4, block);
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  mMonitor = self->mMonitor;
  if (mMonitor)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v5 = getnw_path_monitor_cancelSymbolLoc_ptr;
    v19 = getnw_path_monitor_cancelSymbolLoc_ptr;
    if (!getnw_path_monitor_cancelSymbolLoc_ptr)
    {
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __getnw_path_monitor_cancelSymbolLoc_block_invoke;
      v14 = &unk_1E7AE73A0;
      v15 = &v16;
      v6 = NetworkLibrary();
      v17[3] = dlsym(v6, "nw_path_monitor_cancel");
      getnw_path_monitor_cancelSymbolLoc_ptr = *(v15[1] + 24);
      v5 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v5)
    {
      v9 = __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
      _Block_object_dispose(&v16, 8);
      _Unwind_Resume(v9);
    }

    v5(mMonitor);
    soft_nw_release(self->mMonitor);
  }

  mCurrentPath = self->mCurrentPath;
  if (mCurrentPath)
  {
    soft_nw_release(mCurrentPath);
  }

  mAccessQueue = self->mAccessQueue;
  if (mAccessQueue)
  {
    dispatch_release(mAccessQueue);
  }

  v10.receiver = self;
  v10.super_class = MX_NetworkObserver;
  [(MX_NetworkObserver *)&v10 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (void)networkPathUpdate:(id)update
{
  v27 = *MEMORY[0x1E69E9840];
  if (update)
  {
    mNetworkReachable = self->mNetworkReachable;
    mCurrentPath = self->mCurrentPath;
    if (mCurrentPath)
    {
      soft_nw_release(mCurrentPath);
      self->mCurrentPath = 0;
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v7 = getnw_retainSymbolLoc_ptr;
    v21 = getnw_retainSymbolLoc_ptr;
    if (!getnw_retainSymbolLoc_ptr)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __getnw_retainSymbolLoc_block_invoke;
      v25 = &unk_1E7AE73A0;
      v26 = &v18;
      v8 = NetworkLibrary();
      v9 = dlsym(v8, "nw_retain");
      *(v26[1] + 24) = v9;
      getnw_retainSymbolLoc_ptr = *(v26[1] + 24);
      v7 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v7)
    {
      goto LABEL_16;
    }

    v10 = v7(update);
    self->mCurrentPath = v10;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v11 = getnw_path_get_statusSymbolLoc_ptr;
    v21 = getnw_path_get_statusSymbolLoc_ptr;
    if (!getnw_path_get_statusSymbolLoc_ptr)
    {
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __getnw_path_get_statusSymbolLoc_block_invoke;
      v25 = &unk_1E7AE73A0;
      v26 = &v18;
      v12 = NetworkLibrary();
      v13 = dlsym(v12, "nw_path_get_status");
      *(v26[1] + 24) = v13;
      getnw_path_get_statusSymbolLoc_ptr = *(v26[1] + 24);
      v11 = v19[3];
    }

    _Block_object_dispose(&v18, 8);
    if (!v11)
    {
LABEL_16:
      __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
      __break(1u);
    }

    v14 = (v11(v10) & 0xFFFFFFFD) == 1;
    self->mNetworkReachable = v14;
    if (mNetworkReachable != v14 && dword_1EB75DE40 != 0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCarrierNetworkReachable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mAccessQueue = self->mAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__MX_NetworkObserver_isCarrierNetworkReachable__block_invoke;
  v5[3] = &unk_1E7AEB210;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_barrier_async_and_wait(mAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end