@interface HMDHomeWalletDataSource
- (BOOL)isResidentCapable;
- (BOOL)registerForPasscodeChangeNotificationWithQueue:(id)a3 callback:(id)a4;
- (HMDHomeWalletDataSource)init;
- (double)accessoryWriteRetryInterval;
- (id)numberValueFromNoBackupStoreWithKey:(id)a3;
- (int64_t)accessoryWriteMaxRetryCount;
- (int64_t)walletKeyColor;
- (void)dealloc;
@end

@implementation HMDHomeWalletDataSource

- (id)numberValueFromNoBackupStoreWithKey:(id)a3
{
  v3 = CFPreferencesCopyAppValue(a3, *MEMORY[0x277CD0028]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)registerForPasscodeChangeNotificationWithQueue:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  out_token = -1;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __83__HMDHomeWalletDataSource_registerForPasscodeChangeNotificationWithQueue_callback___block_invoke;
  v14 = &unk_27867BAE8;
  objc_copyWeak(&v16, &location);
  v8 = v7;
  v15 = v8;
  v9 = notify_register_dispatch("com.apple.managedconfiguration.passcodechanged", &out_token, v6, &v11);
  if (!v9)
  {
    [(HMDHomeWalletDataSource *)self setPassCodeChangeNotificationToken:out_token, v11, v12, v13, v14];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v9 == 0;
}

void __83__HMDHomeWalletDataSource_registerForPasscodeChangeNotificationWithQueue_callback___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = [WeakRetained passCodeChangeNotificationToken] == a2;
    WeakRetained = v6;
    if (v5)
    {
      (*(*(a1 + 32) + 16))();
      WeakRetained = v6;
    }
  }
}

- (int64_t)walletKeyColor
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"walletKeyColor"];
  v4 = [v3 numberValue];

  v5 = [v4 integerValue];
  v6 = v5;
  if (v5 > 14935010)
  {
    v7 = v5 == 14935011;
    v8 = 15521450;
  }

  else
  {
    v7 = v5 == 0;
    v8 = 14341582;
  }

  if (!v7 && v5 != v8)
  {
    v6 = *MEMORY[0x277CD06D0];
  }

  return v6;
}

- (double)accessoryWriteRetryInterval
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"walletKeyAccessoryWriteRetryInterval"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (int64_t)accessoryWriteMaxRetryCount
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"walletKeyAccessoryWriteMaxRetryCount"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 isResidentCapable];

  return v3;
}

- (void)dealloc
{
  passCodeChangeNotificationToken = self->_passCodeChangeNotificationToken;
  if (passCodeChangeNotificationToken != -1)
  {
    notify_cancel(passCodeChangeNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = HMDHomeWalletDataSource;
  [(HMDHomeWalletDataSource *)&v4 dealloc];
}

- (HMDHomeWalletDataSource)init
{
  v3.receiver = self;
  v3.super_class = HMDHomeWalletDataSource;
  result = [(HMDHomeWalletDataSource *)&v3 init];
  if (result)
  {
    result->_passCodeChangeNotificationToken = -1;
  }

  return result;
}

@end