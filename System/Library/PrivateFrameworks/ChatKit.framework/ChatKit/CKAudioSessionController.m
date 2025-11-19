@interface CKAudioSessionController
+ (id)queue;
+ (id)shareInstance;
- (CKAudioSessionController)init;
- (void)audioSessionInterruption:(id)a3;
- (void)audioSessionMediaServicesWereLost:(id)a3;
- (void)audioSessionMediaServicesWereReset:(id)a3;
- (void)audioSessionRouteChange:(id)a3;
- (void)configureAudioSessionWithOptions:(unint64_t)a3;
- (void)dealloc;
- (void)setActive:(BOOL)a3 options:(unint64_t)a4 completion:(id)a5;
@end

@implementation CKAudioSessionController

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKAudioSessionController;
  [(CKAudioSessionController *)&v4 dealloc];
}

- (CKAudioSessionController)init
{
  v5.receiver = self;
  v5.super_class = CKAudioSessionController;
  v2 = [(CKAudioSessionController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_audioSessionInterruption_ name:*MEMORY[0x1E69580D8] object:0];
    [v3 addObserver:v2 selector:sel_audioSessionRouteChange_ name:*MEMORY[0x1E6958228] object:0];
    [v3 addObserver:v2 selector:sel_audioSessionMediaServicesWereLost_ name:*MEMORY[0x1E6958110] object:0];
    [v3 addObserver:v2 selector:sel_audioSessionMediaServicesWereReset_ name:*MEMORY[0x1E6958128] object:0];
  }

  return v2;
}

+ (id)shareInstance
{
  if (shareInstance_once != -1)
  {
    +[CKAudioSessionController shareInstance];
  }

  v3 = shareInstance_sAudioSessionController;

  return v3;
}

void __41__CKAudioSessionController_shareInstance__block_invoke()
{
  v0 = objc_alloc_init(CKAudioSessionController);
  v1 = shareInstance_sAudioSessionController;
  shareInstance_sAudioSessionController = v0;
}

+ (id)queue
{
  if (queue_once != -1)
  {
    +[CKAudioSessionController queue];
  }

  v3 = queue_sQueue;

  return v3;
}

void __33__CKAudioSessionController_queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("CKAudioSessionControllerQueue", v2);
  v1 = queue_sQueue;
  queue_sQueue = v0;
}

- (void)setActive:(BOOL)a3 options:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = _Block_copy(v8);
      *buf = 67109632;
      v19 = v6;
      v20 = 1024;
      v21 = a4 & 1;
      v22 = 2048;
      v23 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "setActive:%d shouldUseSpeaker:%d completion:%p", buf, 0x18u);
    }
  }

  v11 = +[CKAudioSessionController queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__CKAudioSessionController_setActive_options_completion___block_invoke;
  v13[3] = &unk_1E72F7AE0;
  v16 = v6;
  v17 = a4 & 1;
  v13[4] = self;
  v14 = v8;
  v15 = a4;
  v12 = v8;
  dispatch_async(v11, v13);
}

void __57__CKAudioSessionController_setActive_options_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 56);
      v4 = *(a1 + 57);
      v5 = _Block_copy(*(a1 + 40));
      *buf = 67109632;
      *v22 = v3;
      *&v22[4] = 1024;
      *&v22[6] = v4;
      v23 = 2048;
      v24 = v5;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "dispatching setActive:%d shouldUseSpeaker:%d completion:%p", buf, 0x18u);
    }
  }

  v6 = *(a1 + 56);
  if (v6 != [*(a1 + 32) isActive] || *(a1 + 56) == 1 && (v7 = *(a1 + 48), v7 != objc_msgSend(*(a1 + 32), "options")) || objc_msgSend(*(a1 + 32), "isDirty"))
  {
    v8 = [MEMORY[0x1E6958460] sharedInstance];
    v9 = v8;
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) configureAudioSessionWithOptions:*(a1 + 48)];
      v10 = *(a1 + 56);
      v20 = 0;
      v11 = [v9 setActive:v10 error:&v20];
      v12 = v20;
      if ((v11 & 1) == 0 && IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v22 = v12;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "AudioSessionController: Failed to activate audio session: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v19 = 0;
      v14 = [v8 setActive:0 withOptions:1 error:&v19];
      v15 = v19;
      if ((v14 & 1) == 0 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v22 = v15;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "AudioSessionController: Failed to deactivate audio session: %@", buf, 0xCu);
        }
      }
    }

    [*(a1 + 32) setActive:*(a1 + 56)];
    [*(a1 + 32) setOptions:*(a1 + 48)];
    [*(a1 + 32) setDirty:0];
  }

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__CKAudioSessionController_setActive_options_completion___block_invoke_25;
    block[3] = &unk_1E72EBDB8;
    v18 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)configureAudioSessionWithOptions:(unint64_t)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v31 = @"CKAudioSessionControllerSessionNotificationOptionsKey";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v32[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [v5 postNotificationName:@"CKAudioSessionControllerSessionOptionsWillChangeNotification" object:self userInfo:v7];

  v8 = [MEMORY[0x1E6958460] sharedInstance];
  v9 = *MEMORY[0x1E6958130];
  v28 = 0;
  LOBYTE(self) = [v8 setMode:v9 error:&v28];
  v10 = v28;
  if ((self & 1) == 0 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30[0] = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "AudioSessionController: Failed setting the mode:%@", buf, 0xCu);
    }
  }

  v12 = a3 & 1;
  v13 = 44;
  if ((a3 & 1) == 0)
  {
    v13 = 36;
  }

  if ((a3 & 2) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = MEMORY[0x1E6958038];
  if ((a3 & 2) == 0)
  {
    v15 = MEMORY[0x1E6958060];
  }

  v16 = *v15;
  if ((a3 & 8) != 0)
  {
    v17 = *MEMORY[0x1E6958068];

    v16 = v17;
  }

  v27 = 0;
  v18 = [v8 setCategory:v16 withOptions:v14 | (a3 >> 1) & 2 error:&v27];
  v19 = v27;
  if ((v18 & 1) == 0 && IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30[0] = v19;
      _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "AudioSessionController: Failed setting the category:%@", buf, 0xCu);
    }
  }

  v26 = 0;
  v21 = [v8 setActivationContext:MEMORY[0x1E695E0F8] error:&v26];
  v22 = v26;
  if ((v21 & 1) == 0 && IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30[0] = v22;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "AudioSessionController: Failed setting activation context:%@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v8 outputDataSources];
      *buf = 67109378;
      LODWORD(v30[0]) = v12;
      WORD2(v30[0]) = 2112;
      *(v30 + 6) = v25;
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "AudioSessionController: configureAudioSession using speaker = %d, %@", buf, 0x12u);
    }
  }
}

- (void)audioSessionRouteChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 userInfo];
      v7 = [v6 objectForKey:*MEMORY[0x1E6958230]];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "audioSessionRouteChange: %@", &v12, 0xCu);
    }
  }

  [(CKAudioSessionController *)self setDirty:1];
  if ([(CKAudioSessionController *)self isActive])
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKey:*MEMORY[0x1E6958238]];
    v10 = [v9 unsignedIntegerValue];

    if ((v10 - 1) <= 1)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Available audio routes changed", &v12, 2u);
        }
      }

      [(CKAudioSessionController *)self activateWithOptions:[(CKAudioSessionController *)self options] completion:0];
    }
  }
}

- (void)audioSessionInterruption:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "audioSessionInterruption: %@", &v6, 0xCu);
    }
  }

  [(CKAudioSessionController *)self setDirty:1];
}

- (void)audioSessionMediaServicesWereLost:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "audioSessionMediaServicesWereLost: %@", &v6, 0xCu);
    }
  }

  [(CKAudioSessionController *)self setDirty:1];
}

- (void)audioSessionMediaServicesWereReset:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "audioSessionMediaServicesWereReset: %@", &v6, 0xCu);
    }
  }

  [(CKAudioSessionController *)self setDirty:1];
}

@end