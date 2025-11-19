@interface MDMFindMyUtilities
+ (BOOL)isActivationLockOn;
+ (BOOL)isManagedLostModeActive;
+ (id)lockDeviceWithMessage:(id)a3 phoneNumber:(id)a4;
+ (void)enableActivationLockWithCompletion:(id)a3;
+ (void)enableManagedLostModeWithMessage:(id)a3 phoneNumber:(id)a4 footnoteText:(id)a5 completion:(id)a6;
+ (void)lockDevice;
@end

@implementation MDMFindMyUtilities

+ (void)lockDevice
{
  SBSSpringBoardServerPort();

  JUMPOUT(0x259C5F210);
}

+ (id)lockDeviceWithMessage:(id)a3 phoneNumber:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [a1 lockDevice];
  v8 = [MEMORY[0x277D77BF8] sharedManager];
  v9 = [v8 isMultiUser];

  if ((v9 & 1) != 0 || !(v6 | v7))
  {
    v16 = @"Success";
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setMessage:v6];
    [v10 setPhoneNumber:v7];
    [v10 setLostModeEnabled:1];
    v11 = [MEMORY[0x277D08F78] sharedInstance];
    v12 = [v11 enableLostModeWithInfo:v10];

    if (v12)
    {
      v13 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [v12 DMCVerboseDescription];
        v19 = 138543362;
        v20 = v15;
        _os_log_impl(&dword_2561F5000, v14, OS_LOG_TYPE_ERROR, "MDMFindMyUtilities failed to set lock screen message with error: %{public}@", &v19, 0xCu);
      }

      if ([v12 code] == 7)
      {
        v16 = @"NoPasscodeSet";
      }

      else if ([v12 code] == 8)
      {
        v16 = @"DeviceInLostMode";
      }

      else
      {
        v16 = @"Unknown";
      }
    }

    else
    {
      v16 = @"Success";
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)isManagedLostModeActive
{
  v2 = [MEMORY[0x277D08F78] sharedInstance];
  v3 = [v2 isManagedLostModeActive];

  return v3;
}

+ (void)enableManagedLostModeWithMessage:(id)a3 phoneNumber:(id)a4 footnoteText:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x277D08F78];
  v14 = a6;
  v15 = [v13 sharedInstance];
  v16 = [v15 isManagedLostModeActive];

  if (v16)
  {
    v17 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_DEFAULT, "MDMFindMyUtilities ignoring MDM Lost Mode request because Lost Mode is already enabled", v20, 2u);
    }

    v14[2](v14, 0);
  }

  else
  {
    [a1 lockDevice];
    v18 = objc_opt_new();
    [v18 setLostModeEnabled:1];
    [v18 setMessage:v10];
    [v18 setPhoneNumber:v11];
    [v18 setFootnoteText:v12];
    [v18 setDisableSlideToUnlock:1];
    v19 = [MEMORY[0x277D08F78] sharedInstance];
    [v19 enableManagedLostModeWithInfo:v18 completion:v14];
  }
}

+ (BOOL)isActivationLockOn
{
  v2 = dispatch_semaphore_create(0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = [MEMORY[0x277D08F78] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__MDMFindMyUtilities_isActivationLockOn__block_invoke;
  v6[3] = &unk_27982BCD8;
  v8 = &v9;
  v4 = v2;
  v7 = v4;
  [v3 isActivationLockedWithCompletion:v6];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v3;
}

void __40__MDMFindMyUtilities_isActivationLockOn__block_invoke(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "MDMFindMyUtilities failed to get activation lock state with error: %{public}@", &v8, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)enableActivationLockWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D08F78] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__MDMFindMyUtilities_enableActivationLockWithCompletion___block_invoke;
  v6[3] = &unk_27982BD28;
  v7 = v3;
  v5 = v3;
  [v4 fmipStateWithCompletion:v6];
}

void __57__MDMFindMyUtilities_enableActivationLockWithCompletion___block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "Could not get device locator state. Error: %{public}@", buf, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
LABEL_10:
    v7();
    goto LABEL_11;
  }

  if (a2 >= 2)
  {
    v9 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_ERROR, "FindMy is off. returning...", buf, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
    goto LABEL_10;
  }

  v8 = [MEMORY[0x277D08F78] sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__MDMFindMyUtilities_enableActivationLockWithCompletion___block_invoke_19;
  v11[3] = &unk_27982BA30;
  v12 = *(a1 + 32);
  [v8 isActivationLockedWithCompletion:v11];

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
}

void __57__MDMFindMyUtilities_enableActivationLockWithCompletion___block_invoke_19(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(DMCLogObjects() + 8);
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_ERROR, "Could not get activation lock state. Error: %{public}@", buf, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
LABEL_9:
    v7();
    goto LABEL_10;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Device is activation locked already. Returning...", buf, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v6, OS_LOG_TYPE_DEFAULT, "Enabling activation lock...", buf, 2u);
  }

  v10 = [MEMORY[0x277D08F78] sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__MDMFindMyUtilities_enableActivationLockWithCompletion___block_invoke_20;
  v11[3] = &unk_27982BD00;
  v12 = *(a1 + 32);
  [v10 enableActivationLockWithCompletion:v11];

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

void __57__MDMFindMyUtilities_enableActivationLockWithCompletion___block_invoke_20(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v3;
      _os_log_impl(&dword_2561F5000, v4, OS_LOG_TYPE_ERROR, "Could not enable activation lock. Error: %{public}@", &v7, 0xCu);
    }
  }

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Activation lock enabled.", &v7, 2u);
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

@end