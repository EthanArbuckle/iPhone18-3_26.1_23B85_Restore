@interface HPSAppleConnectController
+ (id)sharedInstance;
- (BOOL)isCarryOrLiveOnUser;
- (BOOL)isEnabled;
- (HPSAppleConnectController)init;
- (NSString)accountID;
- (NSString)password;
- (void)_readCachedCredentials;
- (void)_saveCredentials;
- (void)clearCredentialsSyncToKeychain:(BOOL)keychain;
- (void)dealloc;
- (void)setAccountID:(id)d;
- (void)setAccountID:(id)d password:(id)password syncToKeychain:(BOOL)keychain;
- (void)setPassword:(id)password;
- (void)tokenWithError:(id)error;
- (void)validateWithCompletionHandler:(id)handler;
@end

@implementation HPSAppleConnectController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HPSAppleConnectController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __43__HPSAppleConnectController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (HPSAppleConnectController)init
{
  v6.receiver = self;
  v6.super_class = HPSAppleConnectController;
  v2 = [(HPSAppleConnectController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(HPSAppleConnectController *)v2 _readCachedCredentials];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _settingsChanged, @"com.apple.hps.appleconnect.didchange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.hps.appleconnect.didchange", 0);
  v4.receiver = self;
  v4.super_class = HPSAppleConnectController;
  [(HPSAppleConnectController *)&v4 dealloc];
}

- (BOOL)isEnabled
{
  accountID = [(HPSAppleConnectController *)self accountID];
  if ([accountID length])
  {
    password = [(HPSAppleConnectController *)self password];
    v5 = [password length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setAccountID:(id)d password:(id)password syncToKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  passwordCopy = password;
  v8 = MEMORY[0x277CBEAF8];
  dCopy = d;
  currentLocale = [v8 currentLocale];
  v11 = [dCopy lowercaseStringWithLocale:currentLocale];

  accountID = [(HPSAppleConnectController *)self accountID];
  if ([v11 isEqualToString:accountID])
  {
    password = [(HPSAppleConnectController *)self password];
    v14 = [passwordCopy isEqualToString:password];

    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  [(HPSAppleConnectController *)self setAccountID:v11];
  [(HPSAppleConnectController *)self setPassword:passwordCopy];
  if (keychainCopy)
  {
    [(HPSAppleConnectController *)self _saveCredentials];
  }

LABEL_7:
}

- (void)clearCredentialsSyncToKeychain:(BOOL)keychain
{
  keychainCopy = keychain;
  [(HPSAppleConnectController *)self setAccountID:0];
  [(HPSAppleConnectController *)self setPassword:0];
  if (keychainCopy)
  {

    [(HPSAppleConnectController *)self _saveCredentials];
  }
}

- (BOOL)isCarryOrLiveOnUser
{
  isEnabled = [(HPSAppleConnectController *)self isEnabled];
  accountID = [(HPSAppleConnectController *)self accountID];
  password = [(HPSAppleConnectController *)self password];
  if (isEnabled)
  {
    if ([accountID length])
    {
      LOBYTE(isEnabled) = [password length] != 0;
    }

    else
    {
      LOBYTE(isEnabled) = 0;
    }
  }

  return isEnabled;
}

- (void)validateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HPSAppleConnectController_validateWithCompletionHandler___block_invoke;
  v6[3] = &unk_279773F78;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __59__HPSAppleConnectController_validateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accountID];
  if (![v2 length])
  {

    goto LABEL_5;
  }

  v3 = [*(a1 + 32) password];
  v4 = [v3 length];

  if (!v4)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HPSAppleConnectControllerErrorDomain" code:-1100 userInfo:0];
    goto LABEL_9;
  }

  [*(a1 + 32) accountID];
  [*(a1 + 32) password];
  v5 = ACMobileShimCopyTicket();
  v7 = HPSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v10 = v5;
    v11 = 2112;
    v12 = 0;
    _os_log_impl(&dword_2542B7000, v7, OS_LOG_TYPE_DEFAULT, "AppleConnect credentials invalid: status:%d error:%@", buf, 0x12u);
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HPSAppleConnectControllerErrorDomain" code:-1101 userInfo:0];

LABEL_9:
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)tokenWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HPSAppleConnectController_tokenWithError___block_invoke;
  v6[3] = &unk_279773F78;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __44__HPSAppleConnectController_tokenWithError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v2 = [*(a1 + 32) accountID];
  v3 = [*(a1 + 32) password];
  v4 = ACMobileShimCopyTicket();
  v5 = HPSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v12 = v4;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "copyTicket returned %d %@", buf, 0x12u);
  }

  v6 = HPSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __44__HPSAppleConnectController_tokenWithError___block_invoke_cold_1(&v10, v4, v6);
  }

  v7 = v10;
  if (v10)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HPSAppleConnectControllerErrorDomain" code:-1101 userInfo:v10];
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_readCachedCredentials
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveCredentials
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setAccountID:(id)d
{
  dCopy = d;
  obj = self;
  objc_sync_enter(obj);
  accountID = obj->_accountID;
  obj->_accountID = dCopy;

  objc_sync_exit(obj);
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  obj = self;
  objc_sync_enter(obj);
  password = obj->_password;
  obj->_password = passwordCopy;

  objc_sync_exit(obj);
}

- (NSString)accountID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_accountID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)password
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_password;
  objc_sync_exit(selfCopy);

  return v3;
}

void __44__HPSAppleConnectController_tokenWithError___block_invoke_cold_1(uint64_t *a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_2542B7000, log, OS_LOG_TYPE_ERROR, "AppleConnect credentials invalid: status:%d error:%@", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end