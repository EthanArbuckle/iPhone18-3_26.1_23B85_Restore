@interface MSAuthenticationManager
+ (id)sharedManager;
- (MSAuthenticationManager)initWithAlertManager:(id)a3;
- (void)_didReceiveAccountConfigChangedNotification;
- (void)_renewCredentialsForAccount:(id)a3;
- (void)dealloc;
- (void)didEncounterAuthenticationFailureForPersonID:(id)a3;
- (void)rearmAuthenticationAlert;
- (void)waitForDeviceUnlock;
@end

@implementation MSAuthenticationManager

- (void)rearmAuthenticationAlert
{
  state = self->_state;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (state == 2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Resetting authentication state. No longer waiting for user to reauth.", buf, 2u);
    }

    self->_state = 0;
  }

  else if (v4)
  {
    *v5 = 0;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Not resetting authentication state as we're waiting for a server response.", v5, 2u);
  }
}

- (void)_didReceiveAccountConfigChangedNotification
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [MEMORY[0x277CCACC8] mainThread];

  if (v3 == v4)
  {
    if ((self->_state - 1) > 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received account change notification, but we weren't waiting for it. Ignoring.", v6, 2u);
      }
    }

    else
    {
      self->_state = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Received account change notification. Retrying activities.", buf, 2u);
      }

      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 postNotificationName:@"MSAuthenticationManagerDidReceiveAuthenticationChangeNotification" object:self];
    }
  }

  else
  {

    [(MSAuthenticationManager *)self performSelectorOnMainThread:sel__didReceiveAccountConfigChangedNotification withObject:0 waitUntilDone:0];
  }
}

- (void)didEncounterAuthenticationFailureForPersonID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Encountered authentication error for personID %@.", buf, 0xCu);
  }

  if (!self->_state)
  {
    v5 = [(ACAccountStore *)self->_acAccountStore aa_primaryAppleAccount];
    v6 = [v5 aa_personID];
    v7 = v6;
    if (!v5 || ![v6 isEqualToString:v4])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Cannot find primary account for personID %@. Ignoring authentication error.", buf, 0xCu);
      }

      goto LABEL_20;
    }

    if ([v5 aa_isPrimaryEmailVerified])
    {
      if (MKBDeviceUnlockedSinceBoot() == 1)
      {
        bagRefetchCount = self->_bagRefetchCount;
        self->_bagRefetchCount = bagRefetchCount + 1;
        if (bagRefetchCount > 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "We've refetched the bag too many times. Prompting user to change password.", buf, 2u);
          }

          [(MSAuthenticationManager *)self _renewCredentialsForAccount:v5];
        }

        else
        {
          self->_state = 1;
          acAccountStore = self->_acAccountStore;
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __72__MSAuthenticationManager_didEncounterAuthenticationFailureForPersonID___block_invoke;
          v11[3] = &unk_2798A4BD8;
          v12 = v4;
          v13 = self;
          v14 = v5;
          [(ACAccountStore *)acAccountStore aa_updatePropertiesForAppleAccount:v14 completion:v11];
        }

        goto LABEL_20;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "The device has not been unlocked yet. Waiting for unlock.", buf, 2u);
      }

      [(MSAuthenticationManager *)self waitForDeviceUnlock];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "The account for personID %@ is not yet vetted. Waiting for account change.", buf, 0xCu);
    }

    self->_bagRefetchCount = 0;
    self->_state = 2;
LABEL_20:

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Ignoring authentication failure as we are already handling a previous authentication error.", buf, 2u);
  }

LABEL_21:

  v10 = *MEMORY[0x277D85DE8];
}

void __72__MSAuthenticationManager_didEncounterAuthenticationFailureForPersonID___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__MSAuthenticationManager_didEncounterAuthenticationFailureForPersonID___block_invoke_2;
  block[3] = &unk_2798A4BB0;
  v15 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__MSAuthenticationManager_didEncounterAuthenticationFailureForPersonID___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 32);
      *buf = 138412290;
      v12 = v2;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "The account for personID %@ has been successfully reauthenticated.", buf, 0xCu);
    }

    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(v3 + 24);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__MSAuthenticationManager_didEncounterAuthenticationFailureForPersonID___block_invoke_14;
    v9[3] = &unk_2798A4B88;
    v9[4] = v3;
    v10 = v4;
    [v5 saveVerifiedAccount:v10 withCompletionHandler:v9];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      *buf = 138412546;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not reauthenticate personID %@. Error: %{public}@", buf, 0x16u);
    }

    [*(a1 + 40) _renewCredentialsForAccount:*(a1 + 48)];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __72__MSAuthenticationManager_didEncounterAuthenticationFailureForPersonID___block_invoke_14(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__MSAuthenticationManager_didEncounterAuthenticationFailureForPersonID___block_invoke_2_15;
  block[3] = &unk_2798A4F10;
  v5 = a2;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__MSAuthenticationManager_didEncounterAuthenticationFailureForPersonID___block_invoke_2_15(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    [v2 _didReceiveAccountConfigChangedNotification];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to save account %@ after authentication.", &v6, 0xCu);
    }

    v4 = *MEMORY[0x277D85DE8];
  }
}

- (void)waitForDeviceUnlock
{
  if (![(MSAuthenticationManager *)self isListeningToKeybagChanges])
  {
    v3 = *MEMORY[0x277D28B30];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __46__MSAuthenticationManager_waitForDeviceUnlock__block_invoke;
    handler[3] = &unk_2798A4DF8;
    handler[4] = self;
    if (!notify_register_dispatch(v3, &self->_keybagChangeNotifyToken, MEMORY[0x277D85CD0], handler))
    {
      [(MSAuthenticationManager *)self setIsListeningToKeybagChanges:1];
    }
  }
}

uint64_t __46__MSAuthenticationManager_waitForDeviceUnlock__block_invoke(uint64_t a1, int a2)
{
  result = MKBGetDeviceLockState();
  if (result == 3 || !result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Device unlocked.", v5, 2u);
    }

    [*(a1 + 32) _didReceiveAccountConfigChangedNotification];
    notify_cancel(a2);
    return [*(a1 + 32) setIsListeningToKeybagChanges:0];
  }

  return result;
}

- (void)_renewCredentialsForAccount:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Renewing credential for %@", buf, 0xCu);
  }

  self->_state = 2;
  acAccountStore = self->_acAccountStore;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__MSAuthenticationManager__renewCredentialsForAccount___block_invoke;
  v8[3] = &unk_2798A4B60;
  v9 = v4;
  v10 = self;
  v6 = v4;
  [(ACAccountStore *)acAccountStore renewCredentialsForAccount:v6 force:0 reason:@"Photo Stream" completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __55__MSAuthenticationManager__renewCredentialsForAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v5;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to renew credentials for account %@: %@.", &v9, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Successfully renewed credentials for account %@", &v9, 0xCu);
    }

    [*(a1 + 40) _didReceiveAccountConfigChangedNotification];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CB8B78] object:self->_acAccountStore];

  if ([(MSAuthenticationManager *)self isListeningToKeybagChanges])
  {
    notify_cancel([(MSAuthenticationManager *)self keybagChangeNotifyToken]);
  }

  v4.receiver = self;
  v4.super_class = MSAuthenticationManager;
  [(MSAuthenticationManager *)&v4 dealloc];
}

- (MSAuthenticationManager)initWithAlertManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MSAuthenticationManager;
  v6 = [(MSAuthenticationManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alertManager, a3);
    v8 = objc_alloc_init(MEMORY[0x277CB8F48]);
    acAccountStore = v7->_acAccountStore;
    v7->_acAccountStore = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v7 selector:sel__didReceiveAccountConfigChangedNotification name:*MEMORY[0x277CB8B78] object:v7->_acAccountStore];
  }

  return v7;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_78 != -1)
  {
    dispatch_once(&sharedManager_onceToken_78, &__block_literal_global_79);
  }

  v3 = sharedManager_mgr_80;

  return v3;
}

void __40__MSAuthenticationManager_sharedManager__block_invoke()
{
  v0 = [MSAuthenticationManager alloc];
  v3 = +[MSAlertManager sharedAlertManager];
  v1 = [(MSAuthenticationManager *)v0 initWithAlertManager:v3];
  v2 = sharedManager_mgr_80;
  sharedManager_mgr_80 = v1;
}

@end