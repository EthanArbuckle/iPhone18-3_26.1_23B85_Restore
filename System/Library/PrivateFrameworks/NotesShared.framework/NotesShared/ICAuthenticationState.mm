@interface ICAuthenticationState
+ (ICAuthenticationState)sharedState;
+ (double)defaultDeauthenticationTimeInterval;
- (BOOL)addMainKeyToKeychainForObject:(id)object;
- (BOOL)authenticateAllNotesInAccount:(id)account withPassphrase:(id)passphrase;
- (BOOL)authenticateObject:(id)object withPassphrase:(id)passphrase;
- (BOOL)authenticateObjectWithKeychain:(id)keychain;
- (BOOL)biometricsEnabledForAccount:(id)account;
- (BOOL)checkSupportsBiometrics;
- (BOOL)hasAuthenticatedObject;
- (BOOL)isAuthenticated;
- (BOOL)isAuthenticatedWithDevicePassword;
- (BOOL)isBlockingDeauthentication;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllMainKeysFromKeychain;
- (BOOL)removeMainKeyFromKeychainForObject:(id)object;
- (BOOL)removeMainKeysFromKeychainForAccount:(id)account;
- (BOOL)setCachedMainKey:(id)key forObject:(id)object;
- (BOOL)setMainKeyInKeychain:(id)keychain forObject:(id)object;
- (ICAuthenticationState)init;
- (id)cachedMainKeyForIdentifier:(id)identifier;
- (id)cachedMainKeyForKeyObject:(id)object decryptingObject:(id)decryptingObject;
- (id)cachedMainKeyForObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mainKeyFromKeychainForKeyObject:(id)object decryptingObject:(id)decryptingObject cipherVersion:(int64_t)version;
- (id)mainKeyFromKeychainForObject:(id)object;
- (id)mainKeyIdentifierForKeyObject:(id)object cipherVersion:(int64_t)version;
- (unint64_t)hash;
- (void)authenticateWithDevicePassword;
- (void)beginBlockingDeauthentication;
- (void)dealloc;
- (void)deauthenticate;
- (void)deauthenticateAllObjects;
- (void)deauthenticateWithDevicePassword;
- (void)endBlockingDeauthentication;
- (void)extendDeauthenticationTimer;
- (void)localAuthenticationDidChangeBiometricsPolicyState:(id)state;
- (void)setBiometricsEnabled:(BOOL)enabled forAccount:(id)account;
- (void)setCachedMainKey:(id)key forIdentifier:(id)identifier;
- (void)setDeauthenticationTimerRunLoopModes:(id)modes;
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    objectIDsToMainKey = v2->_objectIDsToMainKey;
    v2->_objectIDsToMainKey = dictionary;

    [objc_opt_class() defaultDeauthenticationTimeInterval];
    v2->_deauthenticationTimeInterval = v5;
    v21[0] = *MEMORY[0x277CBE640];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    deauthenticationTimerRunLoopModes = v2->_deauthenticationTimerRunLoopModes;
    v2->_deauthenticationTimerRunLoopModes = v6;

    objc_initWeak(&location, v2);
    v8 = +[ICNoteContext sharedContext];
    crossProcessChangeCoordinator = [v8 crossProcessChangeCoordinator];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __29__ICAuthenticationState_init__block_invoke;
    v17 = &unk_278194FB8;
    objc_copyWeak(&v18, &location);
    v10 = [crossProcessChangeCoordinator registerForCrossProcessNotificationName:@"ICAccountWillChangePassphraseNotification" block:&v14];
    passphraseChangeObserver = v2->_passphraseChangeObserver;
    v2->_passphraseChangeObserver = v10;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_localAuthenticationDidChangeBiometricsPolicyState_ name:@"ICLocalAuthenticationDidChangeBiometricsPolicyStateNotification" object:objc_opt_class()];

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

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"TimeIntervalBeforeClearingCachedKeys"];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ICAuthenticationState *)selfCopy hasAuthenticatedObject])
  {
    isAuthenticatedWithDevicePassword = 1;
  }

  else
  {
    isAuthenticatedWithDevicePassword = [(ICAuthenticationState *)selfCopy isAuthenticatedWithDevicePassword];
  }

  objc_sync_exit(selfCopy);

  return isAuthenticatedWithDevicePassword;
}

- (BOOL)hasAuthenticatedObject
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objectIDsToMainKey = [(ICAuthenticationState *)selfCopy objectIDsToMainKey];
  v4 = [objectIDsToMainKey count] != 0;

  objc_sync_exit(selfCopy);
  return v4;
}

- (BOOL)isAuthenticatedWithDevicePassword
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  authenticatedWithDevicePassword = selfCopy->_authenticatedWithDevicePassword;
  objc_sync_exit(selfCopy);

  return authenticatedWithDevicePassword;
}

- (void)extendDeauthenticationTimer
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deauthenticationTimer = [(ICAuthenticationState *)selfCopy deauthenticationTimer];
  [deauthenticationTimer invalidate];

  if ([(ICAuthenticationState *)selfCopy isAuthenticated])
  {
    [(ICAuthenticationState *)selfCopy deauthenticationTimeInterval];
    if (v4 != 0.0)
    {
      objc_initWeak(&location, selfCopy);
      v5 = MEMORY[0x277CBEBB8];
      [(ICAuthenticationState *)selfCopy deauthenticationTimeInterval];
      v7 = v6;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __52__ICAuthenticationState_extendDeauthenticationTimer__block_invoke;
      v20[3] = &unk_278196780;
      objc_copyWeak(&v21, &location);
      v8 = [v5 timerWithTimeInterval:0 repeats:v20 block:v7];
      [(ICAuthenticationState *)selfCopy setDeauthenticationTimer:v8];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      deauthenticationTimerRunLoopModes = [(ICAuthenticationState *)selfCopy deauthenticationTimerRunLoopModes];
      v10 = [deauthenticationTimerRunLoopModes countByEnumeratingWithState:&v16 objects:v23 count:16];
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
              objc_enumerationMutation(deauthenticationTimerRunLoopModes);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
            deauthenticationTimer2 = [(ICAuthenticationState *)selfCopy deauthenticationTimer];
            [currentRunLoop addTimer:deauthenticationTimer2 forMode:v13];

            ++v12;
          }

          while (v10 != v12);
          v10 = [deauthenticationTimerRunLoopModes countByEnumeratingWithState:&v16 objects:v23 count:16];
        }

        while (v10);
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)authenticateObjectWithKeychain:(id)keychain
{
  v29 = *MEMORY[0x277D85DE8];
  keychainCopy = keychain;
  obj = self;
  objc_sync_enter(obj);
  v4 = +[ICAuthenticationState sharedState];
  v5 = [v4 mainKeyFromKeychainForObject:keychainCopy];

  if (v5 && (+[ICAuthenticationState sharedState](ICAuthenticationState, "sharedState"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 setCachedMainKey:v5 forObject:keychainCopy], v6, (v7 & 1) != 0))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    managedObjectContext = [keychainCopy managedObjectContext];
    v9 = [ICAccount allActiveAccountsInContext:managedObjectContext];

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

- (BOOL)biometricsEnabledForAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  if ([identifier length])
  {
    v6 = [(ICAuthenticationState *)self touchIDEnabledKeyForAccountIdentifier:identifier];
    v7 = [ICKeychain BOOLeanForIdentifier:v6 account:0];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v10 = [(ICAuthenticationState *)self faceIDEnabledKeyForAccountIdentifier:identifier];
      v8 = [ICKeychain BOOLeanForIdentifier:v10 account:0];
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICAuthenticationState(Keychain) biometricsEnabledForAccount:accountCopy];
    }

    v8 = 0;
  }

  return v8;
}

- (void)setBiometricsEnabled:(BOOL)enabled forAccount:(id)account
{
  enabledCopy = enabled;
  accountCopy = account;
  identifier = [accountCopy identifier];
  if ([identifier length])
  {
    v8 = [(ICAuthenticationState *)self touchIDEnabledKeyForAccountIdentifier:identifier];
    [ICKeychain setBoolean:enabledCopy forIdentifier:v8 account:0 shouldSync:0 error:0];

    v9 = [(ICAuthenticationState *)self faceIDEnabledKeyForAccountIdentifier:identifier];
    [ICKeychain setBoolean:enabledCopy forIdentifier:v9 account:0 shouldSync:0 error:0];
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ICAuthenticationState(Keychain) setBiometricsEnabled:accountCopy forAccount:?];
    }
  }
}

- (BOOL)addMainKeyToKeychainForObject:(id)object
{
  objectCopy = object;
  v5 = [(ICAuthenticationState *)self cachedMainKeyForObject:objectCopy];
  if (v5)
  {
    v6 = [(ICAuthenticationState *)self setMainKeyInKeychain:v5 forObject:objectCopy];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthenticationState(Keychain) addMainKeyToKeychainForObject:objectCopy];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)removeMainKeyFromKeychainForObject:(id)object
{
  v15 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortLoggingDescription = [objectCopy shortLoggingDescription];
    v9 = 138412802;
    v10 = shortLoggingDescription;
    v11 = 2080;
    v12 = "[ICAuthenticationState(Keychain) removeMainKeyFromKeychainForObject:]";
    v13 = 1024;
    v14 = 146;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Removing main key from Keychain… {object: %@}%s:%d", &v9, 0x1Cu);
  }

  v7 = [(ICAuthenticationState *)self setMainKeyInKeychain:0 forObject:objectCopy];
  return v7;
}

- (BOOL)removeMainKeysFromKeychainForAccount:(id)account
{
  v20 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identifier = [accountCopy identifier];
  if ([identifier length])
  {
    [(ICAuthenticationState *)self setMainKeyInKeychain:0 forObject:accountCopy];
    accountData = [accountCopy accountData];
    [(ICAuthenticationState *)self setMainKeyInKeychain:0 forObject:accountData];

    v13 = 0;
    [ICKeychain deleteItemsOfType:1 account:identifier error:&v13];
    v7 = v13;
    v8 = v7;
    if (v7 && [v7 code]!= -25300)
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ICAuthenticationState(Keychain) removeMainKeysFromKeychainForAccount:accountCopy];
      }

      v11 = 0;
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        shortLoggingDescription = [accountCopy shortLoggingDescription];
        *buf = 138412802;
        v15 = shortLoggingDescription;
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
      [ICAuthenticationState(Keychain) removeMainKeysFromKeychainForAccount:accountCopy];
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

- (BOOL)setMainKeyInKeychain:(id)keychain forObject:(id)object
{
  v32 = *MEMORY[0x277D85DE8];
  keychainCopy = keychain;
  objectCopy = object;
  metadata = [keychainCopy metadata];
  v9 = -[ICAuthenticationState mainKeyIdentifierForKeyObject:cipherVersion:](self, "mainKeyIdentifierForKeyObject:cipherVersion:", objectCopy, [metadata cipherVersion]);

  cloudAccount = [objectCopy cloudAccount];
  identifier = [cloudAccount identifier];

  if ([v9 length] && objc_msgSend(identifier, "length"))
  {
    if (!-[ICAuthenticationState checkSupportsBiometrics](self, "checkSupportsBiometrics") || ([objectCopy cloudAccount], (v12 = objc_claimAutoreleasedReturnValue()) == 0) || (v13 = v12, objc_msgSend(objectCopy, "cloudAccount"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[ICAuthenticationState biometricsEnabledForAccount:](self, "biometricsEnabledForAccount:", v14), v14, v13, !v15))
    {
      v23 = 0;
      goto LABEL_19;
    }

    [ICKeychain deleteItemsForIdentifier:v9 account:identifier error:0];
    if (!keychainCopy)
    {
      v21 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [ICAuthenticationState(Keychain) setMainKeyInKeychain:objectCopy forObject:?];
      }

      v23 = 1;
      goto LABEL_16;
    }

    cryptoStrategy = [objectCopy cryptoStrategy];
    v17 = [cryptoStrategy mainKeyDecryptsPrimaryData:keychainCopy];

    if (v17)
    {
      serializedData = [keychainCopy serializedData];
      v19 = ICGroupContainerIdentifier();
      v25 = 0;
      [ICKeychain setData:serializedData forIdentifier:v9 account:identifier type:1 shouldSync:0 accessFlags:0 accessGroup:v19 error:&v25];
      v20 = v25;

      if (v20 && [v20 code]!= -25299)
      {
        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [ICAuthenticationState(Keychain) setMainKeyInKeychain:objectCopy forObject:?];
        }

        v23 = 0;
      }

      else
      {
        v21 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          shortLoggingDescription = [objectCopy shortLoggingDescription];
          *buf = 138412802;
          v27 = shortLoggingDescription;
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
      [ICAuthenticationState(Keychain) setMainKeyInKeychain:objectCopy forObject:?];
    }
  }

  else
  {
    v21 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ICAuthenticationState(Keychain) setMainKeyInKeychain:objectCopy forObject:?];
    }
  }

  v23 = 0;
LABEL_16:
  v20 = v21;
LABEL_17:

LABEL_19:
  return v23;
}

- (id)mainKeyFromKeychainForObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (objectCopy)
  {
    v6 = objectCopy;
    while (1)
    {
      v7 = [(ICAuthenticationState *)self mainKeyFromKeychainForKeyObject:v6 decryptingObject:v5 cipherVersion:[ICCryptoStrategyFactory cipherVersionForObject:v5]];
      if (v7)
      {
        break;
      }

      parentEncryptableObject = [v6 parentEncryptableObject];

      v6 = parentEncryptableObject;
      if (!parentEncryptableObject)
      {
        goto LABEL_8;
      }
    }

    parentEncryptableObject = v7;
  }

  else
  {
    parentEncryptableObject = 0;
  }

LABEL_8:

  return parentEncryptableObject;
}

- (id)mainKeyFromKeychainForKeyObject:(id)object decryptingObject:(id)decryptingObject cipherVersion:(int64_t)version
{
  decryptingObjectCopy = decryptingObject;
  v9 = [(ICAuthenticationState *)self mainKeyIdentifierForKeyObject:object cipherVersion:version];
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

  if (+[ICCryptoStrategyFactory cipherVersionForObject:](ICCryptoStrategyFactory, "cipherVersionForObject:", decryptingObjectCopy) || [v10 length] != 16)
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
    identifier = [decryptingObjectCopy identifier];
    cryptoSalt = [decryptingObjectCopy cryptoSalt];
    cryptoIterationCount = [decryptingObjectCopy cryptoIterationCount];
    passwordHint = [decryptingObjectCopy passwordHint];
    v15 = [ICEncryptionMetadata makeForV1CipherWithObjectIdentifier:identifier salt:cryptoSalt iterationCount:cryptoIterationCount hint:passwordHint];

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

  cryptoStrategy = [decryptingObjectCopy cryptoStrategy];
  v19 = [cryptoStrategy mainKeyDecryptsPrimaryData:v16];

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
  deauthenticationTimer = [(ICAuthenticationState *)self deauthenticationTimer];
  [deauthenticationTimer invalidate];

  v4 = +[ICNoteContext sharedContext];
  crossProcessChangeCoordinator = [v4 crossProcessChangeCoordinator];
  passphraseChangeObserver = [(ICAuthenticationState *)self passphraseChangeObserver];
  [crossProcessChangeCoordinator removeCrossProcessNotificationObserver:passphraseChangeObserver];

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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    objectIDsToMainKey = [(ICAuthenticationState *)self objectIDsToMainKey];
    objectIDsToMainKey2 = [v5 objectIDsToMainKey];
    if ([objectIDsToMainKey isEqual:objectIDsToMainKey2])
    {
      isAuthenticatedWithDevicePassword = [(ICAuthenticationState *)self isAuthenticatedWithDevicePassword];
      v9 = isAuthenticatedWithDevicePassword ^ [v5 isAuthenticatedWithDevicePassword] ^ 1;
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
  objectIDsToMainKey = [(ICAuthenticationState *)self objectIDsToMainKey];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = objectIDsToMainKey;
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

  isAuthenticatedWithDevicePassword = [(ICAuthenticationState *)self isAuthenticatedWithDevicePassword];
  v23 = ICHashWithHashKeys(v6, v16, v17, v18, v19, v20, v21, v22, isAuthenticatedWithDevicePassword);

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ICAuthenticationState allocWithZone:](ICAuthenticationState init];
  objectIDsToMainKey = [(ICAuthenticationState *)self objectIDsToMainKey];
  v7 = [objectIDsToMainKey mutableCopyWithZone:zone];
  [(ICAuthenticationState *)v5 setObjectIDsToMainKey:v7];

  [(ICAuthenticationState *)v5 setAuthenticatedWithDevicePassword:[(ICAuthenticationState *)self isAuthenticatedWithDevicePassword]];
  [(ICAuthenticationState *)v5 setBlockingDeauthenticationCount:[(ICAuthenticationState *)self blockingDeauthenticationCount]];
  [(ICAuthenticationState *)v5 setDidAttemptToDeauthenticateWhileBlocked:[(ICAuthenticationState *)self didAttemptToDeauthenticateWhileBlocked]];
  [(ICAuthenticationState *)self deauthenticationTimeInterval];
  [(ICAuthenticationState *)v5 setDeauthenticationTimeInterval:?];
  deauthenticationTimerRunLoopModes = [(ICAuthenticationState *)self deauthenticationTimerRunLoopModes];
  [(ICAuthenticationState *)v5 setDeauthenticationTimerRunLoopModes:deauthenticationTimerRunLoopModes];

  return v5;
}

- (void)deauthenticate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICAuthenticationState deauthenticate]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  if ([(ICAuthenticationState *)selfCopy isBlockingDeauthentication])
  {
    [(ICAuthenticationState *)selfCopy setDidAttemptToDeauthenticateWhileBlocked:1];
    defaultCenter2 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(defaultCenter2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_214D51000, defaultCenter2, OS_LOG_TYPE_INFO, "Not deauthenticating because deauthentication is blocked", v5, 2u);
    }
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICAuthenticationStateWillDeauthenticateNotification" object:selfCopy];

    [(ICAuthenticationState *)selfCopy deauthenticateAllObjects];
    [(ICAuthenticationState *)selfCopy deauthenticateWithDevicePassword];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"ICAuthenticationStateDidDeauthenticateNotification" object:selfCopy];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isBlockingDeauthentication
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(ICAuthenticationState *)selfCopy blockingDeauthenticationCount]> 0;
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(ICAuthenticationState *)selfCopy isBlockingDeauthentication])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.isBlockingDeauthentication" functionName:"-[ICAuthenticationState endBlockingDeauthentication]" simulateCrash:1 showAlert:0 format:@"Unbalanced calls to begin/end blocking deauthentication"];
  }

  blockingDeauthenticationCount = [(ICAuthenticationState *)selfCopy blockingDeauthenticationCount];
  if (blockingDeauthenticationCount <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = blockingDeauthenticationCount;
  }

  [(ICAuthenticationState *)selfCopy setBlockingDeauthenticationCount:v4 - 1];
  objc_sync_exit(selfCopy);

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

- (BOOL)authenticateObject:(id)object withPassphrase:(id)passphrase
{
  v36 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  passphraseCopy = passphrase;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [objectCopy isPassphraseCorrect:passphraseCopy];
  cloudAccount = [objectCopy cloudAccount];
  v11 = [cloudAccount isPassphraseCorrect:passphraseCopy];

  if ((v9 | v11))
  {
    if (v9)
    {
      cryptoStrategy = [objectCopy cryptoStrategy];
      LOBYTE(v9) = [cryptoStrategy authenticateWithPassphrase:passphraseCopy];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    managedObjectContext = [objectCopy managedObjectContext];
    v14 = [ICAccount allActiveAccountsInContext:managedObjectContext];

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
          if (([v18 isAuthenticated] & 1) == 0 && objc_msgSend(v18, "isPassphraseCorrect:", passphraseCopy))
          {
            cryptoStrategy2 = [v18 cryptoStrategy];
            [cryptoStrategy2 authenticateWithPassphrase:passphraseCopy];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    objc_sync_exit(selfCopy);
    objc_opt_class();
    v20 = ICDynamicCast();
    objectID = [v20 objectID];

    if (objectID)
    {
      v22 = objc_alloc_init(ICCryptoConvergenceControllerConfiguration);
      [(ICCryptoConvergenceControllerConfiguration *)v22 setPassphrase:passphraseCopy];
      v23 = +[ICCryptoConvergenceController sharedController];
      [v23 convergeAttachmentsInNoteWithID:objectID configuration:v22];
    }

    objc_opt_class();
    v24 = ICDynamicCast();
    objectID2 = [v24 objectID];

    if (objectID2 && ([MEMORY[0x277D361D0] isRunningUnitTests] & 1) == 0)
    {
      v26 = dispatch_get_global_queue(-32768, 0);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __59__ICAuthenticationState_authenticateObject_withPassphrase___block_invoke;
      v28[3] = &unk_278194AD8;
      v29 = passphraseCopy;
      v30 = objectID2;
      dispatch_async(v26, v28);
    }
  }

  else
  {
    objc_sync_exit(selfCopy);

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

- (BOOL)authenticateAllNotesInAccount:(id)account withPassphrase:(id)passphrase
{
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  passphraseCopy = passphrase;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    shortLoggingDescription = [accountCopy shortLoggingDescription];
    [(ICAuthenticationState *)shortLoggingDescription authenticateAllNotesInAccount:buf withPassphrase:v9];
  }

  if ([accountCopy isPassphraseCorrect:passphraseCopy])
  {
    [(ICAuthenticationState *)selfCopy authenticateObject:accountCopy withPassphrase:passphraseCopy];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  passwordProtectedNotes = [accountCopy passwordProtectedNotes];
  v12 = [passwordProtectedNotes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(passwordProtectedNotes);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if (([v15 isAuthenticated] & 1) == 0 && objc_msgSend(v15, "isPassphraseCorrect:", passphraseCopy))
        {
          cryptoStrategy = [v15 cryptoStrategy];
          [cryptoStrategy authenticateWithPassphrase:passphraseCopy];
        }
      }

      v12 = [passwordProtectedNotes countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  isAuthenticated = [accountCopy isAuthenticated];
  objc_sync_exit(selfCopy);

  return isAuthenticated;
}

- (void)deauthenticateAllObjects
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ICAuthenticationState *)selfCopy hasAuthenticatedObject])
  {
    objectIDsToMainKey = [(ICAuthenticationState *)selfCopy objectIDsToMainKey];
    [objectIDsToMainKey removeAllObjects];

    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthenticationState deauthenticateAllObjects];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)authenticateWithDevicePassword
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_authenticatedWithDevicePassword)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICAuthenticationStateWillAuthenticateNotification" object:selfCopy userInfo:0];

    selfCopy->_authenticatedWithDevicePassword = 1;
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"ICAuthenticationStateDidAuthenticateNotification" object:selfCopy userInfo:0];

    [(ICAuthenticationState *)selfCopy extendDeauthenticationTimer];
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthenticationState authenticateWithDevicePassword];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)deauthenticateWithDevicePassword
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_authenticatedWithDevicePassword)
  {
    selfCopy->_authenticatedWithDevicePassword = 0;
    v3 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [ICAuthenticationState deauthenticateWithDevicePassword];
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)mainKeyIdentifierForKeyObject:(id)object cipherVersion:(int64_t)version
{
  objectCopy = object;
  v6 = objectCopy;
  if (version == 2)
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    accountData = [v8 accountData];
    identifier = [accountData identifier];
    v11 = identifier;
    if (identifier)
    {
      identifier2 = identifier;
    }

    else
    {
      identifier2 = [v6 identifier];
    }

    identifier3 = identifier2;
  }

  else if (version)
  {
    identifier3 = 0;
  }

  else
  {
    identifier3 = [objectCopy identifier];
  }

  return identifier3;
}

- (BOOL)setCachedMainKey:(id)key forObject:(id)object
{
  v49[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metadata = [keyCopy metadata];
  v10 = -[ICAuthenticationState mainKeyIdentifierForKeyObject:cipherVersion:](selfCopy, "mainKeyIdentifierForKeyObject:cipherVersion:", objectCopy, [metadata cipherVersion]);

  if ([v10 length])
  {
    if (keyCopy)
    {
      cryptoStrategy = [objectCopy cryptoStrategy];
      v12 = [cryptoStrategy mainKeyDecryptsPrimaryData:keyCopy];

      if ((v12 & 1) == 0)
      {
        v22 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          shortLoggingDescription = [objectCopy shortLoggingDescription];
          [(ICAuthenticationState *)shortLoggingDescription setCachedMainKey:v22 forObject:?];
        }

        v21 = 0;
        v13 = v22;
        goto LABEL_34;
      }
    }

    v13 = [(ICAuthenticationState *)selfCopy cachedMainKeyForIdentifier:v10];
    v14 = *MEMORY[0x277CBEEE8];
    if (*MEMORY[0x277CBEEE8] == keyCopy)
    {
      v15 = 0;
    }

    else
    {
      v15 = keyCopy;
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

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      if (keyCopy)
      {
        v48 = @"ICAuthenticationStateKeyObjectID";
        objectID = [objectCopy objectID];
        v49[0] = objectID;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
        [defaultCenter postNotificationName:@"ICAuthenticationStateWillAuthenticateNotification" object:selfCopy userInfo:v26];
      }

      else
      {
        v46 = @"ICAuthenticationStateKeyObjectID";
        objectID = [objectCopy objectID];
        v47 = objectID;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        [defaultCenter postNotificationName:@"ICAuthenticationStateWillDeauthenticateNotification" object:selfCopy userInfo:v26];
      }

      [(ICAuthenticationState *)selfCopy setCachedMainKey:keyCopy forIdentifier:v10];
      [(ICAuthenticationState *)selfCopy setMainKeyInKeychain:keyCopy forObject:objectCopy];
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      if (keyCopy)
      {
        v44 = @"ICAuthenticationStateKeyObjectID";
        objectID2 = [objectCopy objectID];
        v45 = objectID2;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        [defaultCenter2 postNotificationName:@"ICAuthenticationStateDidAuthenticateNotification" object:selfCopy userInfo:v29];
      }

      else
      {
        v42 = @"ICAuthenticationStateKeyObjectID";
        objectID2 = [objectCopy objectID];
        v43 = objectID2;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        [defaultCenter2 postNotificationName:@"ICAuthenticationStateDidDeauthenticateNotification" object:selfCopy userInfo:v29];
      }
    }

LABEL_27:
    parentEncryptableObject = [objectCopy parentEncryptableObject];
    v22 = parentEncryptableObject;
    if (keyCopy)
    {
      if (parentEncryptableObject)
      {
        cryptoStrategy2 = [parentEncryptableObject cryptoStrategy];
        v32 = [cryptoStrategy2 mainKeyDecryptsPrimaryData:keyCopy];

        if (v32)
        {
          [(ICAuthenticationState *)selfCopy setCachedMainKey:keyCopy forObject:v22];
        }
      }
    }

    [(ICAuthenticationState *)selfCopy extendDeauthenticationTimer];
    v33 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      shortLoggingDescription2 = [objectCopy shortLoggingDescription];
      v36 = 138412802;
      v37 = shortLoggingDescription2;
      v38 = 2112;
      v39 = v13;
      v40 = 2112;
      v41 = keyCopy;
      _os_log_debug_impl(&dword_214D51000, v33, OS_LOG_TYPE_DEBUG, "Set cached main key for object {object: %@, oldMainKey: %@, newMainKey: %@}", &v36, 0x20u);
    }

    v21 = 1;
LABEL_34:

    goto LABEL_35;
  }

  v21 = 0;
LABEL_35:

  objc_sync_exit(selfCopy);
  return v21;
}

- (id)cachedMainKeyForObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objectCopy;
  v7 = v6;
  if (v6)
  {
    objectIDsToMainKey = v6;
    do
    {
      v9 = [(ICAuthenticationState *)selfCopy cachedMainKeyForKeyObject:objectIDsToMainKey decryptingObject:v7];
      if (v9)
      {
        goto LABEL_9;
      }

      parentEncryptableObject = [objectIDsToMainKey parentEncryptableObject];

      objectIDsToMainKey = parentEncryptableObject;
    }

    while (parentEncryptableObject);
  }

  primaryEncryptedData = [v7 primaryEncryptedData];
  if (primaryEncryptedData)
  {

LABEL_8:
    objectIDsToMainKey = [(ICAuthenticationState *)selfCopy objectIDsToMainKey];
    allValues = [objectIDsToMainKey allValues];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__ICAuthenticationState_cachedMainKeyForObject___block_invoke;
    v15[3] = &unk_278196758;
    v16 = v7;
    v9 = [allValues ic_objectPassingTest:v15];

LABEL_9:
    goto LABEL_10;
  }

  unappliedEncryptedRecord = [v7 unappliedEncryptedRecord];

  if (unappliedEncryptedRecord)
  {
    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:
  objc_sync_exit(selfCopy);

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

- (id)cachedMainKeyForKeyObject:(id)object decryptingObject:(id)decryptingObject
{
  objectCopy = object;
  decryptingObjectCopy = decryptingObject;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(ICAuthenticationState *)selfCopy mainKeyIdentifierForKeyObject:objectCopy cipherVersion:[ICCryptoStrategyFactory cipherVersionForObject:decryptingObjectCopy]];
  if ([v9 length])
  {
    v10 = [(ICAuthenticationState *)selfCopy cachedMainKeyForIdentifier:v9];
    if (v10 && ([decryptingObjectCopy cryptoStrategy], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "mainKeyDecryptsPrimaryData:", v10), v11, (v12 & 1) != 0))
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

  objc_sync_exit(selfCopy);

  return v13;
}

- (void)setCachedMainKey:(id)key forIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objectIDsToMainKey = [(ICAuthenticationState *)selfCopy objectIDsToMainKey];
  [objectIDsToMainKey setObject:keyCopy forKeyedSubscript:identifierCopy];

  objc_sync_exit(selfCopy);
}

- (id)cachedMainKeyForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objectIDsToMainKey = [(ICAuthenticationState *)selfCopy objectIDsToMainKey];
  v7 = [objectIDsToMainKey objectForKeyedSubscript:identifierCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setDeauthenticationTimerRunLoopModes:(id)modes
{
  objc_storeStrong(&self->_deauthenticationTimerRunLoopModes, modes);

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

- (void)localAuthenticationDidChangeBiometricsPolicyState:(id)state
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