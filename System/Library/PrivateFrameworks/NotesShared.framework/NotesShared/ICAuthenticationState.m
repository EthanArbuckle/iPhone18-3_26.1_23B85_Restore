@interface ICAuthenticationState
+ (ICAuthenticationState)sharedState;
+ (double)defaultDeauthenticationTimeInterval;
- (BOOL)addMainKeyToKeychainForObject:(id)a3;
- (BOOL)authenticateAllNotesInAccount:(id)a3 withPassphrase:(id)a4;
- (BOOL)authenticateObject:(id)a3 withPassphrase:(id)a4;
- (BOOL)authenticateObjectWithKeychain:(id)a3;
- (BOOL)biometricsEnabledForAccount:(id)a3;
- (BOOL)checkSupportsBiometrics;
- (BOOL)hasAuthenticatedObject;
- (BOOL)isAuthenticated;
- (BOOL)isAuthenticatedWithDevicePassword;
- (BOOL)isBlockingDeauthentication;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeAllMainKeysFromKeychain;
- (BOOL)removeMainKeyFromKeychainForObject:(id)a3;
- (BOOL)removeMainKeysFromKeychainForAccount:(id)a3;
- (BOOL)setCachedMainKey:(id)a3 forObject:(id)a4;
- (BOOL)setMainKeyInKeychain:(id)a3 forObject:(id)a4;
- (ICAuthenticationState)init;
- (id)cachedMainKeyForIdentifier:(id)a3;
- (id)cachedMainKeyForKeyObject:(id)a3 decryptingObject:(id)a4;
- (id)cachedMainKeyForObject:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mainKeyFromKeychainForKeyObject:(id)a3 decryptingObject:(id)a4 cipherVersion:(int64_t)a5;
- (id)mainKeyFromKeychainForObject:(id)a3;
- (id)mainKeyIdentifierForKeyObject:(id)a3 cipherVersion:(int64_t)a4;
- (unint64_t)hash;
- (void)authenticateWithDevicePassword;
- (void)beginBlockingDeauthentication;
- (void)dealloc;
- (void)deauthenticate;
- (void)deauthenticateAllObjects;
- (void)deauthenticateWithDevicePassword;
- (void)endBlockingDeauthentication;
- (void)extendDeauthenticationTimer;
- (void)localAuthenticationDidChangeBiometricsPolicyState:(id)a3;
- (void)setBiometricsEnabled:(BOOL)a3 forAccount:(id)a4;
- (void)setCachedMainKey:(id)a3 forIdentifier:(id)a4;
- (void)setDeauthenticationTimerRunLoopModes:(id)a3;
@end

@implementation ICAuthenticationState

- (ICAuthenticationState)init
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = ICAuthenticationState;
  v2 = [(ICAuthenticationState *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    objectIDsToMainKey = v2->_objectIDsToMainKey;
    v2->_objectIDsToMainKey = v3;

    [objc_opt_class() defaultDeauthenticationTimeInterval];
    v2->_deauthenticationTimeInterval = v5;
    v21[0] = *MEMORY[0x277CBE640];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    deauthenticationTimerRunLoopModes = v2->_deauthenticationTimerRunLoopModes;
    v2->_deauthenticationTimerRunLoopModes = v6;

    objc_initWeak(&location, v2);
    v8 = +[ICNoteContext sharedContext];
    v9 = [v8 crossProcessChangeCoordinator];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __29__ICAuthenticationState_init__block_invoke;
    v17 = &unk_278194FB8;
    objc_copyWeak(&v18, &location);
    v10 = [v9 registerForCrossProcessNotificationName:@"ICAccountWillChangePassphraseNotification" block:&v14];
    passphraseChangeObserver = v2->_passphraseChangeObserver;
    v2->_passphraseChangeObserver = v10;

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v2 selector:sel_localAuthenticationDidChangeBiometricsPolicyState_ name:@"ICLocalAuthenticationDidChangeBiometricsPolicyStateNotification" object:objc_opt_class()];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (double)defaultDeauthenticationTimeInterval
{
  if (defaultDeauthenticationTimeInterval_onceToken != -1)
  {
    +[ICAuthenticationState defaultDeauthenticationTimeInterval];
  }

  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 doubleForKey:@"TimeIntervalBeforeClearingCachedKeys"];
  v4 = v3;

  return v4;
}

+ (ICAuthenticationState)sharedState
{
  if (sharedState_onceToken != -1)
  {
    +[ICAuthenticationState sharedState];
  }

  v3 = _sharedState;

  return v3;
}

void __36__ICAuthenticationState_sharedState__block_invoke()
{
  if (_sharedState)
  {
    v0 = _sharedState;
  }

  else
  {
    v0 = objc_alloc_init(ICAuthenticationState);
  }

  v1 = _sharedState;
  _sharedState = v0;
}

void __60__ICAuthenticationState_defaultDeauthenticationTimeInterval__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = @"TimeIntervalBeforeClearingCachedKeys";
  v3[0] = &unk_282747BB0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 registerDefaults:v1];
}

- (BOOL)isAuthenticated
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(ICAuthenticationState *)v2 hasAuthenticatedObject])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(ICAuthenticationState *)v2 isAuthenticatedWithDevicePassword];
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)hasAuthenticatedObject
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICAuthenticationState *)v2 objectIDsToMainKey];
  v4 = [v3 count] != 0;

  objc_sync_exit(v2);
  return v4;
}

- (BOOL)isAuthenticatedWithDevicePassword
{
  v2 = self;
  objc_sync_enter(v2);
  authenticatedWithDevicePassword = v2->_authenticatedWithDevicePassword;
  objc_sync_exit(v2);

  return authenticatedWithDevicePassword;
}

- (void)extendDeauthenticationTimer
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICAuthenticationState *)v2 deauthenticationTimer];
  [v3 invalidate];

  if ([(ICAuthenticationState *)v2 isAuthenticated])
  {
    [(ICAuthenticationState *)v2 deauthenticationTimeInterval];
    if (v4 != 0.0)
    {
      objc_initWeak(&location, v2);
      v5 = MEMORY[0x277CBEBB8];
      [(ICAuthenticationState *)v2 deauthenticationTimeInterval];
      v7 = v6;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52__ICAuthenticationState_extendDeauthenticationTimer__block_invoke;
      v20[3] = &unk_278196780;
      objc_copyWeak(&v21, &location);
      v8 = [v5 timerWithTimeInterval:0 repeats:v20 block:v7];
      [(ICAuthenticationState *)v2 setDeauthenticationTimer:v8];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = [(ICAuthenticationState *)v2 deauthenticationTimerRunLoopModes];
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
      if (v10)
      {
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            v14 = [MEMORY[0x277CBEB88] currentRunLoop];
            v15 = [(ICAuthenticationState *)v2 deauthenticationTimer];
            [v14 addTimer:v15 forMode:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v9 countByEnumeratingWithState:&v16 objects:v23 count:16];
        }

        while (v10);
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  objc_sync_exit(v2);
}

- (BOOL)authenticateObjectWithKeychain:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = a3;
  obj = self;
  objc_sync_enter(obj);
  v4 = +[ICAuthenticationState sharedState];
  v5 = [v4 mainKeyFromKeychainForObject:v23];

  if (v5 && (+[ICAuthenticationState sharedState](ICAuthenticationState, "sharedState"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 setCachedMainKey:v5 forObject:v23], v6, (v7 & 1) != 0))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v23 managedObjectContext];
    v9 = [ICAccount allActiveAccountsInContext:v8];

    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = +[ICAuthenticationState sharedState];
          v15 = [v14 mainKeyFromKeychainForObject:v13 cipherVersion:0];

          if (v15)
          {
            v16 = +[ICAuthenticationState sharedState];
            [v16 setCachedMainKey:v15 forObject:v13];
          }

          v17 = +[ICAuthenticationState sharedState];
          v18 = [v17 mainKeyFromKeychainForObject:v13 cipherVersion:2];

          if (v18)
          {
            v19 = +[ICAuthenticationState sharedState];
            [v19 setCachedMainKey:v18 forObject:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  objc_sync_exit(obj);
  return v20;
}

- (BOOL)checkSupportsBiometrics
{
  if (+[ICLocalAuthentication biometricsAvailable])
  {
    if (+[ICLocalAuthentication biometricsEnrolled])
    {
      return 1;
    }

    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 0;
      v5 = "Biometrics are not enrolled — deleting all Keychain items";
      v6 = &v7;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 0;
      v5 = "Biometrics are not available — deleting all Keychain items";
      v6 = &v8;
LABEL_8:
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
    }
  }

  [(ICAuthenticationState *)self removeAllMainKeysFromKeychain];
  return 0;
}

- (BOOL)biometricsEnabledForAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 length])
  {
    v6 = [(ICAuthenticationState *)self touchIDEnabledKeyForAccountIdentifier:v5];
    v7 = [ICKeychain BOOLeanForIdentifier:v6 account:0];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v10 = [(ICAuthenticationState *)self faceIDEnabledKeyForAccountIdentifier:v5];
      v8 = [ICKeychain BOOLeanForIdentifier:v10 account:0];
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICAuthenticationState(Keychain) biometricsEnabledForAccount:v4];
    }

    v8 = 0;
  }

  return v8;
}

- (void)setBiometricsEnabled:(BOOL)a3 forAccount:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [v6 identifier];
  if ([v7 length])
  {
    v8 = [(ICAuthenticationState *)self touchIDEnabledKeyForAccountIdentifier:v7];
    [ICKeychain setBoolean:v4 forIdentifier:v8 account:0 shouldSync:0 error:0];

    v9 = [(ICAuthenticationState *)self faceIDEnabledKeyForAccountIdentifier:v7];
    [ICKeychain setBoolean:v4 forIdentifier:v9 account:0 shouldSync:0 error:0];
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICAuthenticationState(Keychain) setBiometricsEnabled:v6 forAccount:?];
    }
  }
}

- (BOOL)addMainKeyToKeychainForObject:(id)a3
{
  v4 = a3;
  v5 = [(ICAuthenticationState *)self cachedMainKeyForObject:v4];
  if (v5)
  {
    v6 = [(ICAuthenticationState *)self setMainKeyInKeychain:v5 forObject:v4];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthenticationState(Keychain) addMainKeyToKeychainForObject:v4];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)removeMainKeyFromKeychainForObject:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 shortLoggingDescription];
    v9 = 138412802;
    v10 = v6;
    v11 = 2080;
    v12 = "[ICAuthenticationState(Keychain) removeMainKeyFromKeychainForObject:]";
    v13 = 1024;
    v14 = 146;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Removing main key from Keychain… {object: %@}%s:%d", &v9, 0x1Cu);
  }

  v7 = [(ICAuthenticationState *)self setMainKeyInKeychain:0 forObject:v4];
  return v7;
}

- (BOOL)removeMainKeysFromKeychainForAccount:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  if ([v5 length])
  {
    [(ICAuthenticationState *)self setMainKeyInKeychain:0 forObject:v4];
    v6 = [v4 accountData];
    [(ICAuthenticationState *)self setMainKeyInKeychain:0 forObject:v6];

    v13 = 0;
    [ICKeychain deleteItemsOfType:1 account:v5 error:&v13];
    v7 = v13;
    v8 = v7;
    if (v7 && [v7 code]!= -25300)
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ICAuthenticationState(Keychain) removeMainKeysFromKeychainForAccount:v4];
      }

      v11 = 0;
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v4 shortLoggingDescription];
        *buf = 138412802;
        v15 = v10;
        v16 = 2080;
        v17 = "[ICAuthenticationState(Keychain) removeMainKeysFromKeychainForAccount:]";
        v18 = 1024;
        v19 = 170;
        _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "Removed main keys from Keychain {account: %@}%s:%d", buf, 0x1Cu);
      }

      v11 = 1;
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICAuthenticationState(Keychain) removeMainKeysFromKeychainForAccount:v4];
    }

    v11 = 0;
    v8 = v9;
  }

  return v11;
}

- (BOOL)removeAllMainKeysFromKeychain
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0;
  [ICKeychain deleteItemsOfType:1 account:0 error:&v7];
  v2 = v7;
  v3 = v2;
  if (v2 && [v2 code] != -25300)
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ICAuthenticationState(Keychain) *)v4 removeAllMainKeysFromKeychain];
    }

    v5 = 0;
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = "[ICAuthenticationState(Keychain) removeAllMainKeysFromKeychain]";
      v10 = 1024;
      v11 = 184;
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Removed main keys from Keychain%s:%d", buf, 0x12u);
    }

    v5 = 1;
  }

  return v5;
}

- (BOOL)setMainKeyInKeychain:(id)a3 forObject:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 metadata];
  v9 = -[ICAuthenticationState mainKeyIdentifierForKeyObject:cipherVersion:](self, "mainKeyIdentifierForKeyObject:cipherVersion:", v7, [v8 cipherVersion]);

  v10 = [v7 cloudAccount];
  v11 = [v10 identifier];

  if ([v9 length] && objc_msgSend(v11, "length"))
  {
    if (!-[ICAuthenticationState checkSupportsBiometrics](self, "checkSupportsBiometrics") || ([v7 cloudAccount], (v12 = objc_claimAutoreleasedReturnValue()) == 0) || (v13 = v12, objc_msgSend(v7, "cloudAccount"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[ICAuthenticationState biometricsEnabledForAccount:](self, "biometricsEnabledForAccount:", v14), v14, v13, !v15))
    {
      v23 = 0;
      goto LABEL_19;
    }

    [ICKeychain deleteItemsForIdentifier:v9 account:v11 error:0];
    if (!v6)
    {
      v21 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [ICAuthenticationState(Keychain) setMainKeyInKeychain:v7 forObject:?];
      }

      v23 = 1;
      goto LABEL_16;
    }

    v16 = [v7 cryptoStrategy];
    v17 = [v16 mainKeyDecryptsPrimaryData:v6];

    if (v17)
    {
      v18 = [v6 serializedData];
      v19 = ICGroupContainerIdentifier();
      v25 = 0;
      [ICKeychain setData:v18 forIdentifier:v9 account:v11 type:1 shouldSync:0 accessFlags:0 accessGroup:v19 error:&v25];
      v20 = v25;

      if (v20 && [v20 code]!= -25299)
      {
        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [ICAuthenticationState(Keychain) setMainKeyInKeychain:v7 forObject:?];
        }

        v23 = 0;
      }

      else
      {
        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v7 shortLoggingDescription];
          *buf = 138412802;
          v27 = v22;
          v28 = 2080;
          v29 = "[ICAuthenticationState(Keychain) setMainKeyInKeychain:forObject:]";
          v30 = 1024;
          v31 = 237;
          _os_log_impl(&dword_214D51000, v21, OS_LOG_TYPE_DEFAULT, "Added main key to Keychain {object: %@}%s:%d", buf, 0x1Cu);
        }

        v23 = 1;
      }

      goto LABEL_17;
    }

    v21 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ICAuthenticationState(Keychain) setMainKeyInKeychain:v7 forObject:?];
    }
  }

  else
  {
    v21 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ICAuthenticationState(Keychain) setMainKeyInKeychain:v7 forObject:?];
    }
  }

  v23 = 0;
LABEL_16:
  v20 = v21;
LABEL_17:

LABEL_19:
  return v23;
}

- (id)mainKeyFromKeychainForObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    while (1)
    {
      v7 = [(ICAuthenticationState *)self mainKeyFromKeychainForKeyObject:v6 decryptingObject:v5 cipherVersion:[ICCryptoStrategyFactory cipherVersionForObject:v5]];
      if (v7)
      {
        break;
      }

      v8 = [v6 parentEncryptableObject];

      v6 = v8;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_8:

  return v8;
}

- (id)mainKeyFromKeychainForKeyObject:(id)a3 decryptingObject:(id)a4 cipherVersion:(int64_t)a5
{
  v8 = a4;
  v9 = [(ICAuthenticationState *)self mainKeyIdentifierForKeyObject:a3 cipherVersion:a5];
  if (!v9)
  {
    v17 = 0;
    goto LABEL_14;
  }

  v10 = [ICKeychain dataForIdentifier:v9 account:0];
  if (!v10)
  {
    v16 = 0;
    goto LABEL_12;
  }

  if (+[ICCryptoStrategyFactory cipherVersionForObject:](ICCryptoStrategyFactory, "cipherVersionForObject:", v8) || [v10 length] != 16)
  {
    v16 = [[ICEncryptionKey alloc] initWithSerializedData:v10];
    if (!v16)
    {
LABEL_12:
      v17 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v11 = [v8 identifier];
    v12 = [v8 cryptoSalt];
    v13 = [v8 cryptoIterationCount];
    v14 = [v8 passwordHint];
    v15 = [ICEncryptionMetadata makeForV1CipherWithObjectIdentifier:v11 salt:v12 iterationCount:v13 hint:v14];

    if (v15)
    {
      v16 = [[ICEncryptionKey alloc] initWithKeyData:v10 metadata:v15];
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v18 = [v8 cryptoStrategy];
  v19 = [v18 mainKeyDecryptsPrimaryData:v16];

  if (!v19)
  {
    goto LABEL_12;
  }

  v16 = v16;
  v17 = v16;
LABEL_13:

LABEL_14:

  return v17;
}

void __29__ICAuthenticationState_init__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  performBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void __29__ICAuthenticationState_init__block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_214D51000, v2, OS_LOG_TYPE_INFO, "Deauthenticating because another process will change a passphrase", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deauthenticate];
}

- (void)dealloc
{
  v3 = [(ICAuthenticationState *)self deauthenticationTimer];
  [v3 invalidate];

  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 crossProcessChangeCoordinator];
  v6 = [(ICAuthenticationState *)self passphraseChangeObserver];
  [v5 removeCrossProcessNotificationObserver:v6];

  v7.receiver = self;
  v7.super_class = ICAuthenticationState;
  [(ICAuthenticationState *)&v7 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAuthenticationState isAuthenticated](self, "isAuthenticated")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAuthenticationState hasAuthenticatedObject](self, "hasAuthenticatedObject")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAuthenticationState isAuthenticatedWithDevicePassword](self, "isAuthenticatedWithDevicePassword")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAuthenticationState isBlockingDeauthentication](self, "isBlockingDeauthentication")}];
  v10 = [v3 stringWithFormat:@"<%@: %p, isAuthenticated: %@, hasAuthenticatedObject: %@, isAuthenticatedWithDevicePassword: %@, isBlockingDeauthentication: %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [(ICAuthenticationState *)self objectIDsToMainKey];
    v7 = [v5 objectIDsToMainKey];
    if ([v6 isEqual:v7])
    {
      v8 = [(ICAuthenticationState *)self isAuthenticatedWithDevicePassword];
      v9 = v8 ^ [v5 isAuthenticatedWithDevicePassword] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(ICAuthenticationState *)self objectIDsToMainKey];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = ICHashWithObject(v12);
        v6 = ICHashWithObject(v13) + v6 - v14 + 32 * v14;
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v15 = [(ICAuthenticationState *)self isAuthenticatedWithDevicePassword];
  v23 = ICHashWithHashKeys(v6, v16, v17, v18, v19, v20, v21, v22, v15);

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ICAuthenticationState allocWithZone:](ICAuthenticationState init];
  v6 = [(ICAuthenticationState *)self objectIDsToMainKey];
  v7 = [v6 mutableCopyWithZone:a3];
  [(ICAuthenticationState *)v5 setObjectIDsToMainKey:v7];

  [(ICAuthenticationState *)v5 setAuthenticatedWithDevicePassword:[(ICAuthenticationState *)self isAuthenticatedWithDevicePassword]];
  [(ICAuthenticationState *)v5 setBlockingDeauthenticationCount:[(ICAuthenticationState *)self blockingDeauthenticationCount]];
  [(ICAuthenticationState *)v5 setDidAttemptToDeauthenticateWhileBlocked:[(ICAuthenticationState *)self didAttemptToDeauthenticateWhileBlocked]];
  [(ICAuthenticationState *)self deauthenticationTimeInterval];
  [(ICAuthenticationState *)v5 setDeauthenticationTimeInterval:?];
  v8 = [(ICAuthenticationState *)self deauthenticationTimerRunLoopModes];
  [(ICAuthenticationState *)v5 setDeauthenticationTimerRunLoopModes:v8];

  return v5;
}

- (void)deauthenticate
{
  v2 = self;
  objc_sync_enter(v2);
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthenticationState deauthenticate]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if ([(ICAuthenticationState *)v2 isBlockingDeauthentication])
  {
    [(ICAuthenticationState *)v2 setDidAttemptToDeauthenticateWhileBlocked:1];
    v3 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_INFO, "Not deauthenticating because deauthentication is blocked", v5, 2u);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"ICAuthenticationStateWillDeauthenticateNotification" object:v2];

    [(ICAuthenticationState *)v2 deauthenticateAllObjects];
    [(ICAuthenticationState *)v2 deauthenticateWithDevicePassword];
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"ICAuthenticationStateDidDeauthenticateNotification" object:v2];
  }

  objc_sync_exit(v2);
}

- (BOOL)isBlockingDeauthentication
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ICAuthenticationState *)v2 blockingDeauthenticationCount]> 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)beginBlockingDeauthentication
{
  obj = self;
  objc_sync_enter(obj);
  [(ICAuthenticationState *)obj setBlockingDeauthenticationCount:[(ICAuthenticationState *)obj blockingDeauthenticationCount]+ 1];
  objc_sync_exit(obj);
}

- (void)endBlockingDeauthentication
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(ICAuthenticationState *)v2 isBlockingDeauthentication])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isBlockingDeauthentication" functionName:"-[ICAuthenticationState endBlockingDeauthentication]" simulateCrash:1 showAlert:0 format:@"Unbalanced calls to begin/end blocking deauthentication"];
  }

  v3 = [(ICAuthenticationState *)v2 blockingDeauthenticationCount];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  [(ICAuthenticationState *)v2 setBlockingDeauthenticationCount:v4 - 1];
  objc_sync_exit(v2);

  performBlockOnMainThread();
}

uint64_t __52__ICAuthenticationState_endBlockingDeauthentication__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isBlockingDeauthentication];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) didAttemptToDeauthenticateWhileBlocked];
    if (result)
    {
      [*(a1 + 32) deauthenticate];
      v3 = *(a1 + 32);

      return [v3 setDidAttemptToDeauthenticateWhileBlocked:0];
    }
  }

  return result;
}

- (BOOL)authenticateObject:(id)a3 withPassphrase:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v6 isPassphraseCorrect:v7];
  v10 = [v6 cloudAccount];
  v11 = [v10 isPassphraseCorrect:v7];

  if ((v9 | v11))
  {
    if (v9)
    {
      v12 = [v6 cryptoStrategy];
      LOBYTE(v9) = [v12 authenticateWithPassphrase:v7];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [v6 managedObjectContext];
    v14 = [ICAccount allActiveAccountsInContext:v13];

    v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v15)
    {
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          if (([v18 isAuthenticated] & 1) == 0 && objc_msgSend(v18, "isPassphraseCorrect:", v7))
          {
            v19 = [v18 cryptoStrategy];
            [v19 authenticateWithPassphrase:v7];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    objc_sync_exit(v8);
    objc_opt_class();
    v20 = ICDynamicCast();
    v21 = [v20 objectID];

    if (v21)
    {
      v22 = objc_alloc_init(ICCryptoConvergenceControllerConfiguration);
      [(ICCryptoConvergenceControllerConfiguration *)v22 setPassphrase:v7];
      v23 = +[ICCryptoConvergenceController sharedController];
      [v23 convergeAttachmentsInNoteWithID:v21 configuration:v22];
    }

    objc_opt_class();
    v24 = ICDynamicCast();
    v25 = [v24 objectID];

    if (v25 && ([MEMORY[0x277D361D0] isRunningUnitTests] & 1) == 0)
    {
      v26 = dispatch_get_global_queue(-32768, 0);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __59__ICAuthenticationState_authenticateObject_withPassphrase___block_invoke;
      v28[3] = &unk_278194AD8;
      v29 = v7;
      v30 = v25;
      dispatch_async(v26, v28);
    }
  }

  else
  {
    objc_sync_exit(v8);

    LOBYTE(v9) = 0;
  }

  return v9;
}

void __59__ICAuthenticationState_authenticateObject_withPassphrase___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(ICCryptoConvergenceControllerConfiguration);
  [(ICCryptoConvergenceControllerConfiguration *)v3 setPassphrase:*(a1 + 32)];
  v2 = +[ICCryptoConvergenceController sharedController];
  [v2 convergeNotesInAccountWithID:*(a1 + 40) configuration:v3 progress:0];
}

- (BOOL)authenticateAllNotesInAccount:(id)a3 withPassphrase:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v6 shortLoggingDescription];
    [(ICAuthenticationState *)v10 authenticateAllNotesInAccount:buf withPassphrase:v9];
  }

  if ([v6 isPassphraseCorrect:v7])
  {
    [(ICAuthenticationState *)v8 authenticateObject:v6 withPassphrase:v7];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v6 passwordProtectedNotes];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (([v15 isAuthenticated] & 1) == 0 && objc_msgSend(v15, "isPassphraseCorrect:", v7))
        {
          v16 = [v15 cryptoStrategy];
          [v16 authenticateWithPassphrase:v7];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = [v6 isAuthenticated];
  objc_sync_exit(v8);

  return v17;
}

- (void)deauthenticateAllObjects
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(ICAuthenticationState *)v2 hasAuthenticatedObject])
  {
    v3 = [(ICAuthenticationState *)v2 objectIDsToMainKey];
    [v3 removeAllObjects];

    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthenticationState deauthenticateAllObjects];
    }
  }

  objc_sync_exit(v2);
}

- (void)authenticateWithDevicePassword
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_authenticatedWithDevicePassword)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"ICAuthenticationStateWillAuthenticateNotification" object:v2 userInfo:0];

    v2->_authenticatedWithDevicePassword = 1;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"ICAuthenticationStateDidAuthenticateNotification" object:v2 userInfo:0];

    [(ICAuthenticationState *)v2 extendDeauthenticationTimer];
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthenticationState authenticateWithDevicePassword];
    }
  }

  objc_sync_exit(v2);
}

- (void)deauthenticateWithDevicePassword
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_authenticatedWithDevicePassword)
  {
    v2->_authenticatedWithDevicePassword = 0;
    v3 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthenticationState deauthenticateWithDevicePassword];
    }
  }

  objc_sync_exit(v2);
}

- (id)mainKeyIdentifierForKeyObject:(id)a3 cipherVersion:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 2)
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    v9 = [v8 accountData];
    v10 = [v9 identifier];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v6 identifier];
    }

    v7 = v12;
  }

  else if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 identifier];
  }

  return v7;
}

- (BOOL)setCachedMainKey:(id)a3 forObject:(id)a4
{
  v49[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v6 metadata];
  v10 = -[ICAuthenticationState mainKeyIdentifierForKeyObject:cipherVersion:](v8, "mainKeyIdentifierForKeyObject:cipherVersion:", v7, [v9 cipherVersion]);

  if ([v10 length])
  {
    if (v6)
    {
      v11 = [v7 cryptoStrategy];
      v12 = [v11 mainKeyDecryptsPrimaryData:v6];

      if ((v12 & 1) == 0)
      {
        v22 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [v7 shortLoggingDescription];
          [(ICAuthenticationState *)v23 setCachedMainKey:v22 forObject:?];
        }

        v21 = 0;
        v13 = v22;
        goto LABEL_34;
      }
    }

    v13 = [(ICAuthenticationState *)v8 cachedMainKeyForIdentifier:v10];
    v14 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == v6)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6;
    }

    v16 = v15;
    if (v14 == v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13;
    }

    v18 = v17;
    if (v16 | v18)
    {
      v19 = v18;
      if (v16 && v18)
      {
        v20 = [v16 isEqual:v18];

        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }

      v24 = [MEMORY[0x277CCAB98] defaultCenter];
      if (v6)
      {
        v48 = @"ICAuthenticationStateKeyObjectID";
        v25 = [v7 objectID];
        v49[0] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
        [v24 postNotificationName:@"ICAuthenticationStateWillAuthenticateNotification" object:v8 userInfo:v26];
      }

      else
      {
        v46 = @"ICAuthenticationStateKeyObjectID";
        v25 = [v7 objectID];
        v47 = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        [v24 postNotificationName:@"ICAuthenticationStateWillDeauthenticateNotification" object:v8 userInfo:v26];
      }

      [(ICAuthenticationState *)v8 setCachedMainKey:v6 forIdentifier:v10];
      [(ICAuthenticationState *)v8 setMainKeyInKeychain:v6 forObject:v7];
      v27 = [MEMORY[0x277CCAB98] defaultCenter];
      if (v6)
      {
        v44 = @"ICAuthenticationStateKeyObjectID";
        v28 = [v7 objectID];
        v45 = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        [v27 postNotificationName:@"ICAuthenticationStateDidAuthenticateNotification" object:v8 userInfo:v29];
      }

      else
      {
        v42 = @"ICAuthenticationStateKeyObjectID";
        v28 = [v7 objectID];
        v43 = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        [v27 postNotificationName:@"ICAuthenticationStateDidDeauthenticateNotification" object:v8 userInfo:v29];
      }
    }

LABEL_27:
    v30 = [v7 parentEncryptableObject];
    v22 = v30;
    if (v6)
    {
      if (v30)
      {
        v31 = [v30 cryptoStrategy];
        v32 = [v31 mainKeyDecryptsPrimaryData:v6];

        if (v32)
        {
          [(ICAuthenticationState *)v8 setCachedMainKey:v6 forObject:v22];
        }
      }
    }

    [(ICAuthenticationState *)v8 extendDeauthenticationTimer];
    v33 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v7 shortLoggingDescription];
      v36 = 138412802;
      v37 = v35;
      v38 = 2112;
      v39 = v13;
      v40 = 2112;
      v41 = v6;
      _os_log_debug_impl(&dword_214D51000, v33, OS_LOG_TYPE_DEBUG, "Set cached main key for object {object: %@, oldMainKey: %@, newMainKey: %@}", &v36, 0x20u);
    }

    v21 = 1;
LABEL_34:

    goto LABEL_35;
  }

  v21 = 0;
LABEL_35:

  objc_sync_exit(v8);
  return v21;
}

- (id)cachedMainKeyForObject:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    do
    {
      v9 = [(ICAuthenticationState *)v5 cachedMainKeyForKeyObject:v8 decryptingObject:v7];
      if (v9)
      {
        goto LABEL_9;
      }

      v10 = [v8 parentEncryptableObject];

      v8 = v10;
    }

    while (v10);
  }

  v11 = [v7 primaryEncryptedData];
  if (v11)
  {

LABEL_8:
    v8 = [(ICAuthenticationState *)v5 objectIDsToMainKey];
    v13 = [v8 allValues];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__ICAuthenticationState_cachedMainKeyForObject___block_invoke;
    v15[3] = &unk_278196758;
    v16 = v7;
    v9 = [v13 ic_objectPassingTest:v15];

LABEL_9:
    goto LABEL_10;
  }

  v12 = [v7 unappliedEncryptedRecord];

  if (v12)
  {
    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:
  objc_sync_exit(v5);

  return v9;
}

uint64_t __48__ICAuthenticationState_cachedMainKeyForObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 cryptoStrategy];
  v5 = [v4 mainKeyDecryptsPrimaryData:v3];

  return v5;
}

- (id)cachedMainKeyForKeyObject:(id)a3 decryptingObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(ICAuthenticationState *)v8 mainKeyIdentifierForKeyObject:v6 cipherVersion:[ICCryptoStrategyFactory cipherVersionForObject:v7]];
  if ([v9 length])
  {
    v10 = [(ICAuthenticationState *)v8 cachedMainKeyForIdentifier:v9];
    if (v10 && ([v7 cryptoStrategy], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "mainKeyDecryptsPrimaryData:", v10), v11, (v12 & 1) != 0))
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  objc_sync_exit(v8);

  return v13;
}

- (void)setCachedMainKey:(id)a3 forIdentifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(ICAuthenticationState *)v7 objectIDsToMainKey];
  [v8 setObject:v9 forKeyedSubscript:v6];

  objc_sync_exit(v7);
}

- (id)cachedMainKeyForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(ICAuthenticationState *)v5 objectIDsToMainKey];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)setDeauthenticationTimerRunLoopModes:(id)a3
{
  objc_storeStrong(&self->_deauthenticationTimerRunLoopModes, a3);

  [(ICAuthenticationState *)self extendDeauthenticationTimer];
}

void __52__ICAuthenticationState_extendDeauthenticationTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__ICAuthenticationState_extendDeauthenticationTimer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deauthenticate];

  [v3 invalidate];
}

- (void)localAuthenticationDidChangeBiometricsPolicyState:(id)a3
{
  v4 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Cached biometrics policy state became invalid — deleting all Keychain items", v5, 2u);
  }

  [(ICAuthenticationState *)self removeAllMainKeysFromKeychain];
}

- (void)authenticateAllNotesInAccount:(os_log_t)log withPassphrase:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Authenticating all notes… {account: %@}", buf, 0xCu);
}

- (void)setCachedMainKey:(os_log_t)log forObject:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Cannot set main key because it doesn't decrypt object {object: %@}", buf, 0xCu);
}

@end