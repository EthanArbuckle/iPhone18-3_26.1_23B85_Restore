@interface CBFrameLink
- (CBFrameLink)init;
- (CBFrameLink)initWithDisplay:(__Display *)a3 andQueue:(id)a4;
- (void)dealloc;
- (void)frameSync:(id)a3;
- (void)pause;
- (void)resume;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)setFrameNotificationBlock:(id)a3;
@end

@implementation CBFrameLink

- (void)resume
{
  v10 = self;
  v9 = a2;
  if (self->_logHandle)
  {
    logHandle = v10->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v8 = logHandle;
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, "FrameLink resume", v6, 2u);
  }

  [(CADisplayLink *)v10->_displayLink setPaused:0];
}

- (void)pause
{
  v10 = self;
  v9 = a2;
  if (self->_logHandle)
  {
    logHandle = v10->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v8 = logHandle;
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, "FrameLink pause", v6, 2u);
  }

  [(CADisplayLink *)v10->_displayLink setPaused:1];
}

- (CBFrameLink)init
{
  v22 = self;
  v21 = a2;
  v20.receiver = self;
  v20.super_class = CBFrameLink;
  v22 = [(CBFrameLink *)&v20 init];
  if (v22)
  {
    v2 = os_log_create("com.apple.CoreBrightness.FrameLink", "default");
    v22->_logHandle = v2;
    v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:v22 selector:sel_frameSync_];
    v22->_displayLink = v3;
    if (!v22->_displayLink)
    {
      if (v22->_logHandle)
      {
        logHandle = v22->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      v19 = logHandle;
      v18 = 16;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        log = v19;
        type = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Cannot create CBFrameLink without CADisplayLink", v17, 2u);
      }

LABEL_23:
      MEMORY[0x1E69E5920](v22);
      v22 = 0;
      return 0;
    }

    [(CADisplayLink *)v22->_displayLink setPaused:1];
    v4 = [CBSharedFrameLinkRunLoop addDisplayLinkToRunLoop:v22->_displayLink forMode:*MEMORY[0x1E695D918]];
    v22->_runLoopRef = v4;
    if (!v22->_runLoopRef)
    {
      if (v22->_logHandle)
      {
        v9 = v22->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v8 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v8 = init_default_corebrightness_log();
        }

        v9 = v8;
      }

      v16 = v9;
      v15 = 16;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v6 = v16;
        v7 = v15;
        __os_log_helper_16_0_0(v14);
        _os_log_error_impl(&dword_1DE8E5000, v6, v7, "Failed to add CADisplayLink to shared runloop", v14, 2u);
      }

      goto LABEL_23;
    }
  }

  return v22;
}

- (CBFrameLink)initWithDisplay:(__Display *)a3 andQueue:(id)a4
{
  v54 = self;
  v53 = a2;
  v52 = a3;
  v51 = a4;
  v50.receiver = self;
  v50.super_class = CBFrameLink;
  v54 = [(CBFrameLink *)&v50 init];
  if (v54)
  {
    v4 = os_log_create("com.apple.CoreBrightness.FrameLink", "default");
    *(v54 + 1) = v4;
    if (!v52)
    {
      if (*(v54 + 1))
      {
        v28 = *(v54 + 1);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        v28 = inited;
      }

      v49 = v28;
      v48 = 16;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        log = v49;
        type = v48;
        __os_log_helper_16_0_0(v47);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Cannot create CBFrameLink without Display", v47, 2u);
      }

LABEL_53:
      MEMORY[0x1E69E5920](v54);
      v54 = 0;
      return 0;
    }

    *(v54 + 2) = v52;
    if (!v51)
    {
      if (*(v54 + 1))
      {
        v24 = *(v54 + 1);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v23 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v23 = init_default_corebrightness_log();
        }

        v24 = v23;
      }

      v46 = v24;
      v45 = 16;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v21 = v46;
        v22 = v45;
        __os_log_helper_16_0_0(v44);
        _os_log_error_impl(&dword_1DE8E5000, v21, v22, "Cannot create CBFrameLink without a queue", v44, 2u);
      }

      goto LABEL_53;
    }

    *(v54 + 3) = v51;
    dispatch_retain(*(v54 + 3));
    block = MEMORY[0x1E69E9820];
    v39 = -1073741824;
    v40 = 0;
    v41 = __40__CBFrameLink_initWithDisplay_andQueue___block_invoke;
    v42 = &unk_1E867B480;
    v43 = v54;
    v5 = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0, &block);
    *(v54 + 4) = v5;
    if (!*(v54 + 4))
    {
      if (*(v54 + 1))
      {
        v20 = *(v54 + 1);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v19 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v19 = init_default_corebrightness_log();
        }

        v20 = v19;
      }

      v37 = v20;
      v36 = 16;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v17 = v37;
        v18 = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_error_impl(&dword_1DE8E5000, v17, v18, "Cannot create CBFrameLink without high QOS dispatch block", v35, 2u);
      }

      goto LABEL_53;
    }

    v6 = [MEMORY[0x1E6979330] displayLinkWithTarget:v54 selector:sel_frameSync_];
    *(v54 + 5) = v6;
    if (!*(v54 + 5))
    {
      if (*(v54 + 1))
      {
        v16 = *(v54 + 1);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v15 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v15 = init_default_corebrightness_log();
        }

        v16 = v15;
      }

      v34 = v16;
      v33 = 16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v13 = v34;
        v14 = v33;
        __os_log_helper_16_0_0(v32);
        _os_log_error_impl(&dword_1DE8E5000, v13, v14, "Cannot create CBFrameLink without CADisplayLink", v32, 2u);
      }

      goto LABEL_53;
    }

    [*(v54 + 5) setPaused:1];
    v7 = [CBSharedFrameLinkRunLoop addDisplayLinkToRunLoop:*(v54 + 5) forMode:*MEMORY[0x1E695D918]];
    *(v54 + 7) = v7;
    if (!*(v54 + 7))
    {
      if (*(v54 + 1))
      {
        v12 = *(v54 + 1);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v11 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v11 = init_default_corebrightness_log();
        }

        v12 = v11;
      }

      v31 = v12;
      v30 = 16;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v9 = v31;
        v10 = v30;
        __os_log_helper_16_0_0(v29);
        _os_log_error_impl(&dword_1DE8E5000, v9, v10, "Failed to add CADisplayLink to shared runloop", v29, 2u);
      }

      goto LABEL_53;
    }
  }

  return v54;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_runLoopRef)
  {
    MEMORY[0x1E69E5920](v4->_runLoopRef);
    v4->_runLoopRef = 0;
  }

  if (v4->_displayLink)
  {
    [(CADisplayLink *)v4->_displayLink invalidate];
    v4->_displayLink = 0;
  }

  if (v4->_logHandle)
  {
    MEMORY[0x1E69E5920](v4->_logHandle);
  }

  if (v4->_queue)
  {
    dispatch_release(v4->_queue);
  }

  if (v4->_fadeCallbackBlock)
  {
    _Block_release(v4->_fadeCallbackBlock);
  }

  if (v4->_frameNotificationBlock)
  {
    _Block_release(v4->_frameNotificationBlock);
    v4->_frameNotificationBlock = 0;
  }

  v2.receiver = v4;
  v2.super_class = CBFrameLink;
  [(CBFrameLink *)&v2 dealloc];
}

- (void)scheduleWithDispatchQueue:(id)a3
{
  if (self->_queue)
  {
    dispatch_release(self->_queue);
    self->_queue = 0;
  }

  if (a3)
  {
    self->_queue = a3;
    dispatch_retain(self->_queue);
  }
}

- (void)frameSync:(id)a3
{
  v28 = self;
  v27 = a2;
  v26 = a3;
  if (self->_logHandle)
  {
    logHandle = v28->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v25 = logHandle;
  v24 = OS_SIGNPOST_EVENT;
  v23 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v25))
  {
    log = v25;
    type = v24;
    spid = v23;
    __os_log_helper_16_0_0(v22);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "FrameSync", &unk_1DEAD656F, v22, 2u);
  }

  if (v28->_fadeCallbackBlock)
  {
    queue = v28->_queue;
    block = MEMORY[0x1E69E9820];
    v17 = -1073741824;
    v18 = 0;
    v19 = __25__CBFrameLink_frameSync___block_invoke;
    v20 = &unk_1E867B480;
    v21 = v28;
    dispatch_async(queue, &block);
  }

  if (v28->_frameNotificationBlock)
  {
    v4 = v28->_queue;
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __25__CBFrameLink_frameSync___block_invoke_23;
    v14 = &unk_1E867B480;
    v15 = v28;
    dispatch_async(v4, &v10);
  }
}

void __25__CBFrameLink_frameSync___block_invoke(uint64_t a1)
{
  v21 = a1;
  v20 = a1;
  if (*(*(a1 + 32) + 8))
  {
    v10 = *(*(a1 + 32) + 8);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v10 = inited;
  }

  v19 = v10;
  v18 = 1;
  v17 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v10))
  {
    log = v19;
    type = v18;
    spid = v17;
    __os_log_helper_16_0_0(v16);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "FrameSyncFadeCallbackBlock", &unk_1DEAD656F, v16, 2u);
  }

  (*(*(*(a1 + 32) + 32) + 16))();
  if (*(*(a1 + 32) + 8))
  {
    v5 = *(*(a1 + 32) + 8);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v4 = init_default_corebrightness_log();
    }

    v5 = v4;
  }

  v15 = v5;
  v14 = 2;
  v13 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v5))
  {
    v1 = v15;
    v2 = v14;
    v3 = v13;
    __os_log_helper_16_0_0(v12);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v1, v2, v3, "FrameSyncFadeCallbackBlock", &unk_1DEAD656F, v12, 2u);
  }
}

void __25__CBFrameLink_frameSync___block_invoke_23(uint64_t a1)
{
  v22 = a1;
  v21 = a1;
  if (*(*(a1 + 32) + 8))
  {
    v11 = *(*(a1 + 32) + 8);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v11 = inited;
  }

  v20 = v11;
  v19 = 1;
  v18 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v11))
  {
    log = v20;
    type = v19;
    spid = v18;
    __os_log_helper_16_0_0(v17);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "FrameSyncFrameNotificationBlock", &unk_1DEAD656F, v17, 2u);
  }

  v1 = *(a1 + 32);
  (*(*(v1 + 48) + 16))();
  if (*(*(a1 + 32) + 8))
  {
    v6 = *(*(a1 + 32) + 8);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v5 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v5 = init_default_corebrightness_log();
    }

    v6 = v5;
  }

  v16 = v6;
  v15 = 2;
  v14 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(v6))
  {
    v2 = v16;
    v3 = v15;
    v4 = v14;
    __os_log_helper_16_0_0(v13);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v2, v3, v4, "FrameSyncFrameNotificationBlock", &unk_1DEAD656F, v13, 2u);
  }
}

- (void)setFrameNotificationBlock:(id)a3
{
  if (self->_frameNotificationBlock)
  {
    _Block_release(self->_frameNotificationBlock);
    self->_frameNotificationBlock = 0;
  }

  if (a3)
  {
    self->_frameNotificationBlock = _Block_copy(a3);
  }
}

@end