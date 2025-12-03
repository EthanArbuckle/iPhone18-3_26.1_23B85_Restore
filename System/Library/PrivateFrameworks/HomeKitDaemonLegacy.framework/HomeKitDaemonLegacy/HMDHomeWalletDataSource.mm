@interface HMDHomeWalletDataSource
- (BOOL)isResidentCapable;
- (BOOL)registerForPasscodeChangeNotificationWithQueue:(id)queue callback:(id)callback;
- (HMDHomeWalletDataSource)init;
- (double)accessoryWriteRetryInterval;
- (id)numberValueFromNoBackupStoreWithKey:(id)key;
- (int64_t)accessoryWriteMaxRetryCount;
- (int64_t)walletKeyColor;
- (void)dealloc;
@end

@implementation HMDHomeWalletDataSource

- (id)numberValueFromNoBackupStoreWithKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, *MEMORY[0x277CD0028]);
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

- (BOOL)registerForPasscodeChangeNotificationWithQueue:(id)queue callback:(id)callback
{
  queueCopy = queue;
  callbackCopy = callback;
  out_token = -1;
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __83__HMDHomeWalletDataSource_registerForPasscodeChangeNotificationWithQueue_callback___block_invoke;
  v14 = &unk_27972AC38;
  objc_copyWeak(&v16, &location);
  v8 = callbackCopy;
  v15 = v8;
  v9 = notify_register_dispatch("com.apple.managedconfiguration.passcodechanged", &out_token, queueCopy, &v11);
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"walletKeyColor"];
  numberValue = [v3 numberValue];

  integerValue = [numberValue integerValue];
  v6 = integerValue;
  if (integerValue > 14935010)
  {
    v7 = integerValue == 14935011;
    v8 = 15521450;
  }

  else
  {
    v7 = integerValue == 0;
    v8 = 14341582;
  }

  if (!v7 && integerValue != v8)
  {
    v6 = *MEMORY[0x277CD06D0];
  }

  return v6;
}

- (double)accessoryWriteRetryInterval
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"walletKeyAccessoryWriteRetryInterval"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (int64_t)accessoryWriteMaxRetryCount
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"walletKeyAccessoryWriteMaxRetryCount"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (BOOL)isResidentCapable
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  isResidentCapable = [v2 isResidentCapable];

  return isResidentCapable;
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