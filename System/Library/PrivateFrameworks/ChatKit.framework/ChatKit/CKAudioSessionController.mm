@interface CKAudioSessionController
+ (id)queue;
+ (id)shareInstance;
- (CKAudioSessionController)init;
- (void)audioSessionInterruption:(id)interruption;
- (void)audioSessionMediaServicesWereLost:(id)lost;
- (void)audioSessionMediaServicesWereReset:(id)reset;
- (void)audioSessionRouteChange:(id)change;
- (void)configureAudioSessionWithOptions:(unint64_t)options;
- (void)dealloc;
- (void)setActive:(BOOL)active options:(unint64_t)options completion:(id)completion;
@end

@implementation CKAudioSessionController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_audioSessionInterruption_ name:*MEMORY[0x1E69580D8] object:0];
    [defaultCenter addObserver:v2 selector:sel_audioSessionRouteChange_ name:*MEMORY[0x1E6958228] object:0];
    [defaultCenter addObserver:v2 selector:sel_audioSessionMediaServicesWereLost_ name:*MEMORY[0x1E6958110] object:0];
    [defaultCenter addObserver:v2 selector:sel_audioSessionMediaServicesWereReset_ name:*MEMORY[0x1E6958128] object:0];
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

- (void)setActive:(BOOL)active options:(unint64_t)options completion:(id)completion
{
  activeCopy = active;
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = _Block_copy(completionCopy);
      *buf = 67109632;
      v19 = activeCopy;
      v20 = 1024;
      v21 = options & 1;
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
  v16 = activeCopy;
  v17 = options & 1;
  v13[4] = self;
  v14 = completionCopy;
  optionsCopy = options;
  v12 = completionCopy;
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

- (void)configureAudioSessionWithOptions:(unint64_t)options
{
  v32[1] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v31 = @"CKAudioSessionControllerSessionNotificationOptionsKey";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  v32[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [defaultCenter postNotificationName:@"CKAudioSessionControllerSessionOptionsWillChangeNotification" object:self userInfo:v7];

  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  v9 = *MEMORY[0x1E6958130];
  v28 = 0;
  LOBYTE(self) = [mEMORY[0x1E6958460] setMode:v9 error:&v28];
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

  v12 = options & 1;
  v13 = 44;
  if ((options & 1) == 0)
  {
    v13 = 36;
  }

  if ((options & 2) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  v15 = MEMORY[0x1E6958038];
  if ((options & 2) == 0)
  {
    v15 = MEMORY[0x1E6958060];
  }

  v16 = *v15;
  if ((options & 8) != 0)
  {
    v17 = *MEMORY[0x1E6958068];

    v16 = v17;
  }

  v27 = 0;
  v18 = [mEMORY[0x1E6958460] setCategory:v16 withOptions:v14 | (options >> 1) & 2 error:&v27];
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
  v21 = [mEMORY[0x1E6958460] setActivationContext:MEMORY[0x1E695E0F8] error:&v26];
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
      outputDataSources = [mEMORY[0x1E6958460] outputDataSources];
      *buf = 67109378;
      LODWORD(v30[0]) = v12;
      WORD2(v30[0]) = 2112;
      *(v30 + 6) = outputDataSources;
      _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "AudioSessionController: configureAudioSession using speaker = %d, %@", buf, 0x12u);
    }
  }
}

- (void)audioSessionRouteChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      userInfo = [changeCopy userInfo];
      v7 = [userInfo objectForKey:*MEMORY[0x1E6958230]];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "audioSessionRouteChange: %@", &v12, 0xCu);
    }
  }

  [(CKAudioSessionController *)self setDirty:1];
  if ([(CKAudioSessionController *)self isActive])
  {
    userInfo2 = [changeCopy userInfo];
    v9 = [userInfo2 objectForKey:*MEMORY[0x1E6958238]];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    if ((unsignedIntegerValue - 1) <= 1)
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

- (void)audioSessionInterruption:(id)interruption
{
  v8 = *MEMORY[0x1E69E9840];
  interruptionCopy = interruption;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = interruptionCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "audioSessionInterruption: %@", &v6, 0xCu);
    }
  }

  [(CKAudioSessionController *)self setDirty:1];
}

- (void)audioSessionMediaServicesWereLost:(id)lost
{
  v8 = *MEMORY[0x1E69E9840];
  lostCopy = lost;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = lostCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "audioSessionMediaServicesWereLost: %@", &v6, 0xCu);
    }
  }

  [(CKAudioSessionController *)self setDirty:1];
}

- (void)audioSessionMediaServicesWereReset:(id)reset
{
  v8 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = resetCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "audioSessionMediaServicesWereReset: %@", &v6, 0xCu);
    }
  }

  [(CKAudioSessionController *)self setDirty:1];
}

@end