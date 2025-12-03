@interface LACDeviceLifecycleManager
+ (LACDeviceLifecycleManager)sharedInstance;
- (void)rebootDeviceWithReason:(id)reason forced:(BOOL)forced completion:(id)completion;
@end

@implementation LACDeviceLifecycleManager

+ (LACDeviceLifecycleManager)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[LACDeviceLifecycleManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_8;

  return v3;
}

uint64_t __43__LACDeviceLifecycleManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_8 = objc_alloc_init(LACDeviceLifecycleManager);

  return MEMORY[0x1EEE66BB8]();
}

- (void)rebootDeviceWithReason:(id)reason forced:(BOOL)forced completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  completionCopy = completion;
  v9 = LACLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = reasonCopy;
    _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Rebooting device with reason: %@", &v17, 0xCu);
  }

  if (forced || !objc_opt_class())
  {
    v14 = reboot3();
    v15 = LACLogDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109120;
      LODWORD(v18) = v14;
      _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "Requested hard reboot with result: %d", &v17, 8u);
    }

    if (v14)
    {
      v13 = [LACError errorWithCode:-1000 debugDescription:@"Failed to reboot the device"];
      v10 = v13;
    }

    else
    {
      v13 = 0;
      v10 = 0;
    }
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x1E699FC98]) initWithReason:reasonCopy];
    [v10 setSource:1];
    [v10 setRebootType:1];
    mEMORY[0x1E699FCA8] = [MEMORY[0x1E699FCA8] sharedService];
    [mEMORY[0x1E699FCA8] shutdownWithOptions:v10];

    v12 = LACLogDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "Requested soft reboot", &v17, 2u);
    }

    v13 = 0;
  }

  completionCopy[2](completionCopy, v13);

  v16 = *MEMORY[0x1E69E9840];
}

@end